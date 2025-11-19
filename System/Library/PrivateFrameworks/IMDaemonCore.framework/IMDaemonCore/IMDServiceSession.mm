@interface IMDServiceSession
+ (id)__allServiceSessionsWeakReferenceArray;
+ (id)existingServiceSessionForService:(id)a3;
+ (void)__registerNewServiceSession:(id)a3;
+ (void)initialize;
- (BOOL)_alwaysAllowMarkingSent;
- (BOOL)_canHandleTransferAccept:(id)a3;
- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)a3;
- (BOOL)_canMarkMessageAsSent:(id)a3;
- (BOOL)_canUpgradeExistingMessageItem:(id)a3 replacementReplicatedMessageItem:(id)a4;
- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)a3 attempts:(int64_t)a4 date:(id)a5 account:(id)a6;
- (BOOL)_isMessageSWYSpamMessage:(id)a3 inChat:(id)a4;
- (BOOL)_processesNetworkEvents;
- (BOOL)_shouldConvergeChatParticipants:(id)a3 withHandleInfo:(id)a4;
- (BOOL)_shouldDropSendingMessage;
- (BOOL)_shouldShowSWYQuickActionForMessage:(id)a3 outAppName:(id *)a4 outBundleID:(id *)a5;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)a3 toIdentifier:(id)a4 isSOS:(BOOL)a5;
- (BOOL)accountNeedsLogin;
- (BOOL)accountNeedsPassword;
- (BOOL)accountShouldBeAlwaysLoggedIn;
- (BOOL)allowedAsChild;
- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)a3 date:(id)a4;
- (BOOL)equalID:(id)a3 andID:(id)a4;
- (BOOL)hasValidDowngradeRequestForHandleID:(id)a3;
- (BOOL)isActive;
- (BOOL)isAwaitingStorageTimer;
- (BOOL)isReplicating;
- (BOOL)messageServiceNamed:(id)a3 canProcessMessagesFromServiceNamed:(id)a4;
- (BOOL)networkConditionsAllowLogin;
- (BOOL)readReceiptsGloballyEnabled;
- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)a3;
- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3;
- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)sendNicknameUpdatesToPeerDevices:(id)a3 toDestinations:(id)a4;
- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)a3 handles:(id)a4;
- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)a3;
- (Class)spotlightItemRecorderClass;
- (IMDAccount)replicationAccount;
- (IMDService)replicationService;
- (IMDServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (IMDServiceSession)mainSession;
- (IMDServiceSession)replicationProxy;
- (NSArray)allBuddies;
- (NSArray)replicationSessions;
- (NSDictionary)buddyProperties;
- (NSDictionary)registrationAlertInfo;
- (NSString)displayName;
- (id)_autoReplier;
- (id)_chatForMemberStatusChange:(id)a3;
- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)a3;
- (id)_collaborationMessageProcessingQueue;
- (id)_determineResultMessageForInput:(id)a3 output:(id)a4 original:(id)a5;
- (id)_downgradableServiceNames;
- (id)_fetchMessagesFromChat:(id)a3 onService:(id)a4 numberOfMessages:(unint64_t)a5;
- (id)_guidForChat:(id)a3 style:(unsigned __int8)a4;
- (id)_predominantServiceForChat:(id)a3 usingMessageThreshold:(unint64_t)a4;
- (id)_revokeSiblingMessagesForReplication:(id)a3;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7 originalGroupID:(id)a8;
- (id)broadcaster;
- (id)broadcasterForACConferenceListeners;
- (id)broadcasterForAVConferenceListeners;
- (id)broadcasterForChatListeners;
- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)a3;
- (id)broadcasterForChatObserverListeners;
- (id)broadcasterForCollaborationListeners;
- (id)broadcasterForNotificationsListeners;
- (id)broadcasterForVCConferenceListeners;
- (id)canonicalFormOfID:(id)a3;
- (id)canonicalFormOfID:(id)a3 withIDSensitivity:(int)a4;
- (id)chatForChatIdentifier:(id)a3 style:(unsigned __int8)a4 account:(id)a5 updatingAccount:(BOOL)a6;
- (id)chatForItemWithGUID:(id)a3;
- (id)deleteCommandDictionaryWithIncomingDictionary:(id)a3 inferredRecoverableDeleteForLegacyCommandsWithDate:(id)a4;
- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)a3;
- (id)didChangeMemberStatus:(id)a3;
- (id)existingChatForID:(id)a3;
- (id)existingChatsForGroupID:(id)a3;
- (id)groupIDForChat:(id)a3;
- (id)itemWithGUID:(id)a3;
- (id)localPropertiesOfBuddy:(id)a3;
- (id)localProperty:(id)a3 ofBuddy:(id)a4;
- (id)loginID;
- (id)otcUtilities;
- (id)outgoingReplicationCallerIDForChat:(id)a3;
- (id)preferredAccountForReplicationOnService:(id)a3 eligibleAccounts:(id)a4;
- (id)property:(id)a3 ofBuddy:(id)a4;
- (id)sessionSpecificTransferIDForTransferID:(id)a3;
- (int)registrationError;
- (int64_t)_incomingMessageIndexReason;
- (int64_t)registrationStatus;
- (unint64_t)capabilities;
- (unint64_t)pendingReadReceiptFromStorageCount;
- (void)_abandonPWFetcher;
- (void)_abandonSystemProxySettingsFetcher;
- (void)_autoReconnectTimer:(id)a3;
- (void)_blastDoorProcessingWithIMMessageItem:(id)a3 chat:(id)a4 account:(id)a5 fromToken:(id)a6 fromIDSID:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 participants:(id)a10 groupName:(id)a11 groupID:(id)a12 isFromMe:(BOOL)a13 isLastFromStorage:(BOOL)a14 isFromStorage:(BOOL)a15 batchID:(id)a16 hideLockScreenNotification:(BOOL)a17 wantsCheckpointing:(BOOL)a18 needsDeliveryReceipt:(id)a19 messageBalloonPayloadAttachmentDictionary:(id)a20 inlineAttachments:(id)a21 attributionInfoArray:(id)a22 nicknameDictionary:(id)a23 availabilityVerificationRecipientChannelIDPrefix:(id)a24 availabilityVerificationRecipientEncryptionValidationToken:(id)a25 availabilityOffGridRecipientSubscriptionValidationToken:(id)a26 availabilityOffGridRecipientEncryptionValidationToken:(id)a27 idsService:(id)a28 messageContext:(id)a29 isFromTrustedSender:(BOOL)a30 isFromSnapTrustedSender:(BOOL)a31 wasContextUsed:(BOOL)a32 isBlackholed:(BOOL)a33 shouldTrackForRequery:(BOOL)a34 isFiltered:(int64_t)a35 spamDetectionSource:(int64_t)a36 completionBlock:(id)a37;
- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)a3 style:(unsigned __int8)a4 completion:(id)a5;
- (void)_callMonitorStateChanged:(id)a3;
- (void)_checkMessageForENURL:(id)a3;
- (void)_clearAutoReconnectTimer;
- (void)_clearDowngradeMarkersForChat:(id)a3;
- (void)_clearNetworkMonitor;
- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)a3 account:(id)a4;
- (void)_configureAccountInformationOnItem:(id)a3 withAccount:(id)a4;
- (void)_configureIdentifierForOutgoingItem:(id)a3 withIdentifier:(id)a4 withStyle:(unsigned __int8)a5;
- (void)_configureSyndicationRangesForMessage:(id)a3 forChat:(id)a4 withSyndicationStatus:(int64_t)a5;
- (void)_configureTimeOnOutgoingItem:(id)a3;
- (void)_data_connection_readyWithAccount:(id)a3;
- (void)_didReceiveMessagePlayedForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6;
- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6;
- (void)_didReceiveMessageReadForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6;
- (void)_didReceiveMessageReadReceiptForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6;
- (void)_didReceiveMessageSavedForMessageID:(id)a3 ofType:(int64_t)a4 forChat:(id)a5 fromHandle:(id)a6 fromMe:(BOOL)a7 date:(id)a8 attempts:(int64_t)a9 account:(id)a10 completionBlock:(id)a11;
- (void)_didReceivePotentialCollaborationMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6;
- (void)_doLoginIgnoringProxy:(BOOL)a3 withAccount:(id)a4;
- (void)_expireStateTimerFired;
- (void)_handleExpireStateDictionary:(id)a3;
- (void)_handleFileTransferAccepted:(id)a3;
- (void)_handleFileTransferBatchAccepted:(id)a3;
- (void)_handleRoutingWithDictionary:(id)a3;
- (void)_handleScheduledMessageFailure:(id)a3;
- (void)_handleWatchdogWithDictionary:(id)a3;
- (void)_login_checkUsernameAndPasswordWithAccount:(id)a3;
- (void)_login_serverSettingsReadyWithAccount:(id)a3;
- (void)_login_usernameAndPasswordReadyWithAccount:(id)a3;
- (void)_managedPrefsNotification:(id)a3;
- (void)_mapRoomChatToGroupChat:(id *)a3 style:(unsigned __int8 *)a4;
- (void)_markChatAsDowngraded:(id)a3;
- (void)_markFromStorageIfNeeded:(id)a3 messageGUID:(id)a4;
- (void)_messageStoreCompletion:(BOOL)a3 inputMessage:(id)a4 outputMessage:(id)a5 originalMessage:(id)a6 completionBlock:(id)a7;
- (void)_networkChanged:(id)a3;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)a3;
- (void)_processNetworkMonitorUpdate;
- (void)_processPotentialNetworkChange;
- (void)_reconnectIfNecessary;
- (void)_reconnectIfNecessaryWithAccount:(id)a3;
- (void)_removeChatGuidFromCoreDuet:(id)a3;
- (void)_replicationSessionsChanged;
- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5;
- (void)_resetTransferToTapDownloadState:(id)a3;
- (void)_routingTimerFired;
- (void)_setAutoReconnectTimer;
- (void)_setOutgoingFlagsOnMessage:(id)a3;
- (void)_setPendingNetworkMonitorUpdate;
- (void)_setReplyGUIDOnMessage:(id)a3 forChat:(id)a4;
- (void)_setSortIDForMessage:(id)a3 forChat:(id)a4;
- (void)_storeTranscriptItem:(id)a3 inChat:(id)a4 account:(id)a5;
- (void)_updateExpireStateForMessageGUID:(id)a3;
- (void)_updateExpireStateTimerWithInterval:(double)a3;
- (void)_updateInputMessage:(id)a3 forExistingMessage:(id)a4;
- (void)_updateLastMessageTimeStampForChat:(id)a3 broadcaster:(id)a4;
- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)a3;
- (void)_updateNetworkMonitorWithRemoteHost:(id)a3;
- (void)_updateRoutingForMessageGUID:(id)a3 chatGUID:(id)a4 error:(unsigned int)a5 account:(id)a6;
- (void)_updateRoutingTimerWithInterval:(double)a3;
- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)a3 account:(id)a4;
- (void)_updateWatchdogForMessageGUID:(id)a3;
- (void)_updateWatchdogTimerWithInterval:(double)a3;
- (void)_watchdogTimerFired;
- (void)_wentOfflineWithAccount:(id)a3;
- (void)addAccount:(id)a3;
- (void)addDelegate:(id)a3;
- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 partIndex:(int64_t)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)autoLogin;
- (void)autoReconnect;
- (void)autoReconnectWithAccount:(id)a3;
- (void)autoReplier:(id)a3 generatedAutoReplyText:(id)a4 forChat:(id)a5;
- (void)autoReplier:(id)a3 receivedUrgentRequestForMessages:(id)a4;
- (void)autoReplier:(id)a3 sendDeliveredQuietlyReceiptForMessages:(id)a4 forIncomingMessageFromIDSID:(id)a5 inChat:(id)a6 withWillSendToDestinationsHandler:(id)a7;
- (void)autoReplier:(id)a3 sendNotifyRecipientCommandForMessages:(id)a4 inChat:(id)a5;
- (void)beginBuddyChanges;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)cancelScheduledMessageWithGUID:(id)a3;
- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5;
- (void)canonicalizeChatIdentifier:(id *)a3 style:(unsigned __int8 *)a4;
- (void)changeLocalProperty:(id)a3 ofBuddy:(id)a4 to:(id)a5;
- (void)changeProperty:(id)a3 ofBuddy:(id)a4 to:(id)a5;
- (void)clearDowngradeRequestForHandleID:(id)a3;
- (void)clearLocalProperties;
- (void)clearPropertiesOfBuddy:(id)a3;
- (void)closeSessionForChat:(id)a3 chatGUID:(id)a4 didDeleteConversation:(BOOL)a5 style:(unsigned __int8)a6;
- (void)dealloc;
- (void)decrementPendingReadReceiptFromStorageCount;
- (void)deleteAllDataWithCompletionHandler:(id)a3;
- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)a3 chatIdentifier:(id)a4;
- (void)didReceiveBalloonPayload:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 messageGUID:(id)a6 account:(id)a7;
- (void)didReceiveDisplayNameChange:(id)a3 guid:(id)a4 fromID:(id)a5 toIdentifier:(id)a6 forChat:(id)a7 style:(unsigned __int8)a8 account:(id)a9;
- (void)didReceiveErrorMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5;
- (void)didReceiveMessageEditingSendFailure:(unsigned int)a3 forMessageGUID:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6;
- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)a3 forMessageGUID:(id)a4 partIndex:(int64_t)a5 previousMessage:(id)a6 backwardCompatibilityMessageGUID:(id)a7;
- (void)didReceiveMessagePlayedReceiptForMessageID:(id)a3 date:(id)a4 completionBlock:(id)a5;
- (void)didReceiveMessageReadReceiptForMessageID:(id)a3 date:(id)a4 completionBlock:(id)a5;
- (void)didReceiveMessages:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 fromIDSID:(id)a7 completion:(id)a8;
- (void)didSendBalloonPayload:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 messageGUID:(id)a6 account:(id)a7 completionBlock:(id)a8;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)a3;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)a3 account:(id)a4;
- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8;
- (void)didSendMessageEditForMessageGUID:(id)a3;
- (void)didSendMessagePlayedReceiptForMessageID:(id)a3;
- (void)didSendMessagePlayedReceiptForMessageID:(id)a3 account:(id)a4;
- (void)didSendMessageReadReceiptForMessageID:(id)a3;
- (void)didSendMessageReadReceiptForMessageID:(id)a3 account:(id)a4;
- (void)didSendMessageSavedReceiptForMessageID:(id)a3;
- (void)didSendMessageSavedReceiptForMessageID:(id)a3 account:(id)a4;
- (void)didSendNotifyRecipientCommandForMessageID:(id)a3;
- (void)didSendNotifyRecipientCommandForMessageID:(id)a3 account:(id)a4;
- (void)didSendSyndicationActionItem:(id)a3 forChat:(id)a4;
- (void)didStartSendingMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6;
- (void)didUpdateChatStatus:(int)a3 chat:(id)a4 style:(unsigned __int8)a5 displayName:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 lastAddressedHandle:(id)a9 lastAddressedSIMID:(id)a10 handleInfo:(id)a11 account:(id)a12 category:(int64_t)a13 spamExtensionName:(id)a14 isBlackholed:(BOOL)a15 spamDetectionSource:(int64_t)a16;
- (void)didUpdateChatStatusWithContext:(id)a3;
- (void)disallowReconnection;
- (void)downgradeRequestedForHandleID:(id)a3 expirationDate:(id)a4 preferredService:(id)a5;
- (void)downloadTranslationAssetsForLanguageCodes:(id)a3 messageItemsToTranslateLocally:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)endBuddyChanges;
- (void)fallbackToDownloadIfPossible:(id)a3 transfer:(id)a4;
- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)a3;
- (void)incrementPendingReadReceiptFromStorageCount;
- (void)login;
- (void)loginWithAccount:(id)a3;
- (void)logout;
- (void)logoutServiceSessionWithAccount:(id)a3;
- (void)logoutWithAccount:(id)a3;
- (void)markBuddiesAsChanged:(id)a3;
- (void)markItemForOffGridRelay:(id)a3 inChat:(id)a4;
- (void)networkMonitorDidUpdate:(id)a3;
- (void)noteBadPassword;
- (void)noteItemFromStorage:(id)a3;
- (void)noteLastItemFromStorage:(id)a3;
- (void)noteLastItemProcessed;
- (void)noteSuppressedMessageUpdate:(id)a3;
- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)a3;
- (void)processMessageForSending:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 allowWatchdog:(BOOL)a6 account:(id)a7 didReplaceMessageBlock:(id)a8 completionBlock:(id)a9;
- (void)receiveIncomingBlastdoorBackgroundCommand:(id)a3 for:(id)a4 sender:(id)a5 senderContext:(id)a6;
- (void)recoverChatsForCommandDictionary:(id)a3;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4;
- (void)refreshServiceCapabilities;
- (void)registerChat:(id)a3 style:(unsigned __int8)a4 displayName:(id)a5 groupID:(id)a6 originalGroupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 handleInfo:(id)a10 account:(id)a11 isBlackholed:(BOOL)a12;
- (void)relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5;
- (void)removeAccount:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)renewTTLForScheduledAttachmentTransfer:(id)a3;
- (void)requestGroupPhotoIfNecessary:(id)a3 incomingParticipantVersion:(int64_t)a4 incomingGroupPhotoCreationTime:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 messageIsFromStorage:(BOOL)a8;
- (void)requestTranscriptBackgroundIfNecessary:(id)a3 incomingVersion:(unint64_t)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 messageIsFromStorage:(BOOL)a7;
- (void)requestTranscriptBackgroundIfNecessary:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6;
- (void)retryGroupPhotoUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8;
- (void)retryTranscriptBackgroundUpload:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 transferID:(id)a6;
- (void)revokeSentMessage:(id)a3 inChat:(id)a4;
- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)a3 forIncomingMessageFromIDSID:(id)a4 toChatGuid:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 withWillSendToDestinationsHandler:(id)a8;
- (void)sendDeliveryReceiptForMessageID:(id)a3 toID:(id)a4 deliveryContext:(id)a5 needsDeliveryReceipt:(id)a6 callerID:(id)a7 account:(id)a8;
- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10;
- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9;
- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 retractingPartIndexes:(id)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8;
- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendHQAttachmentsForMessage:(id)a3 toChatID:(id)a4 style:(unsigned __int8)a5;
- (void)sendIncomingRelayMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5;
- (void)sendLazuliSpamReport:(id)a3 isBot:(BOOL)a4 spamType:(unint64_t)a5;
- (void)sendLocationSharingInfo:(id)a3 toID:(id)a4 completionBlock:(id)a5;
- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6;
- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 destinationHandles:(id)a6;
- (void)sendNicknameInfoToChatID:(id)a3;
- (void)sendNotifyRecipientCommandForMessage:(id)a3 toChatGuid:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7;
- (void)sendRelayDeliveryReceiptForMessageID:(id)a3 toChat:(id)a4;
- (void)sendRelayMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5;
- (void)sendReportNotJunkMessageGUID:(id)a3;
- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4;
- (void)sentDowngradeRequestToHandleID:(id)a3 fromID:(id)a4;
- (void)serviceSessionDidLoginWithAccount:(id)a3;
- (void)serviceSessionDidLogoutWithAccount:(id)a3;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)a3;
- (void)setPendingReadReceiptFromStorageCount:(unint64_t)a3;
- (void)setTranscriptBackground:(id)a3 andSendToChatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 transferID:(id)a6 isRefresh:(BOOL)a7;
- (void)storeMessage:(id)a3 context:(id)a4 didReplaceBlock:(id)a5 shouldStoreBlock:(id)a6 didStoreBlock:(id)a7 block:(id)a8;
- (void)storeMessages:(id)a3 messagesToWithdraw:(id)a4 messagesToPost:(id)a5 chatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8 fromIDSID:(id)a9;
- (void)systemProxySettingsFetcher:(id)a3 retrievedAccount:(id)a4 password:(id)a5;
- (void)systemProxySettingsFetcher:(id)a3 retrievedHost:(id)a4 port:(unsigned __int16)a5 protocol:(int64_t)a6;
- (void)trackTimeSensitiveContentInMessageItem:(id)a3 chat:(id)a4;
- (void)updateBalloonPayload:(id)a3 attachments:(id)a4 bundleID:(id)a5 forMessage:(id)a6;
- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9;
- (void)useChatRoom:(id)a3 forGroupChatIdentifier:(id)a4;
- (void)userNotificationDidFinish:(id)a3;
- (void)willMoveChatToRecentlyDeleted:(id)a3;
- (void)willRemoveChat:(id)a3;
@end

@implementation IMDServiceSession

- (unint64_t)capabilities
{
  v3 = [(IMDServiceSession *)self service];
  v4 = [v3 supportsCapability:*MEMORY[0x277D1A548]];

  if (v4)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(IMDServiceSession *)self service];
  v7 = [v6 supportsCapability:*MEMORY[0x277D1A580]];

  if (v7)
  {
    v5 |= 0x400uLL;
  }

  v8 = [(IMDServiceSession *)self service];
  v9 = [v8 supportsCapability:*MEMORY[0x277D1A598]];

  if (v9)
  {
    v5 |= 0x100uLL;
  }

  v10 = [(IMDServiceSession *)self service];
  v11 = [v10 supportsCapability:*MEMORY[0x277D1A538]];

  if (v11)
  {
    v5 |= 0x30uLL;
  }

  v12 = [(IMDServiceSession *)self service];
  v13 = [v12 supportsCapability:*MEMORY[0x277D1A550]];

  if (v13)
  {
    v5 |= 0x400000000000uLL;
  }

  v14 = [(IMDServiceSession *)self service];
  v15 = [v14 supportsCapability:*MEMORY[0x277D1A5A8]];

  if (v15)
  {
    v16 = v5 | 0x800000000000;
  }

  else
  {
    v16 = v5;
  }

  v17 = [(IMDServiceSession *)self service];
  v18 = [v17 supportsCapability:*MEMORY[0x277D1A588]];

  if (v18)
  {
    return v16 | 4;
  }

  else
  {
    return v16;
  }
}

- (NSDictionary)buddyProperties
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_buddies copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

+ (id)__allServiceSessionsWeakReferenceArray
{
  if (qword_281421408 != -1)
  {
    sub_22B7D0258();
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = qword_281421410;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B50EC44;
  v8[3] = &unk_2787032E8;
  v4 = v2;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  if ([v4 count])
  {
    [qword_281421410 removeObjectsInArray:v4];
  }

  v5 = qword_281421410;
  v6 = qword_281421410;

  return v5;
}

+ (void)__registerNewServiceSession:(id)a3
{
  v4 = a3;
  v6 = [a1 __allServiceSessionsWeakReferenceArray];
  v5 = [MEMORY[0x277CFB990] weakRefWithObject:v4];

  [v6 addObject:v5];
}

+ (id)existingServiceSessionForService:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7630;
  v16 = sub_22B4D7870;
  v17 = 0;
  v5 = [a1 allServiceSessions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B50EE84;
  v9[3] = &unk_278703330;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (IMDServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v47.receiver = self;
  v47.super_class = IMDServiceSession;
  v12 = [(IMDServiceSession *)&v47 init];
  if (v12)
  {
    [MEMORY[0x277D192E8] enableNotifications];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    objc_storeWeak(&v12->_mainSession, v13);
    pwRequestID = v12->_pwRequestID;
    v12->_pwRequestID = 0;

    v12->_buddyChangeLevel = 0;
    v12->_saveKeychainPassword = 0;
    v12->_badPass = 0;
    v15 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v12->_lock;
    v12->_lock = v15;

    [(NSRecursiveLock *)v12->_lock lock];
    reconnectTimer = v12->_reconnectTimer;
    v12->_reconnectTimer = 0;

    if (v11)
    {
      v18 = [(IMDServiceSession *)v11 account];
      p_account = &v12->_account;
      account = v12->_account;
      v12->_account = v18;

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      accounts = v12->_accounts;
      v12->_accounts = v21;

      [(NSMutableArray *)v12->_accounts addObject:v9];
      v23 = [(IMDServiceSession *)v11 service];
      service = v12->_service;
      v12->_service = v23;

      v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      buddies = v12->_buddies;
      v12->_buddies = v25;

      objc_storeWeak(&v12->_replicationAccount, v9);
      objc_storeWeak(&v12->_replicationService, v10);
    }

    else
    {
      p_account = &v12->_account;
      objc_storeStrong(&v12->_account, a3);
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = v12->_accounts;
      v12->_accounts = v27;

      [(NSMutableArray *)v12->_accounts addObject:v9];
      objc_storeStrong(&v12->_service, a4);
      v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      v30 = v12->_buddies;
      v12->_buddies = v29;
    }

    v31 = [(IMDServiceSession *)v12 service];
    v12->_shouldReconnect = [v31 wantsNullHostReachability];

    if (v12->_shouldReconnect)
    {
      [(IMDServiceSession *)v12 _setAutoReconnectTimer];
    }

    [(NSRecursiveLock *)v12->_lock unlock];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v12 selector:sel__managedPrefsNotification_ name:@"__kIMDManagedPreferencesChangedNotification" object:0];

    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v12 selector:sel__networkChanged_ name:*MEMORY[0x277D19178] object:0];

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v12 selector:sel__callMonitorStateChanged_ name:*MEMORY[0x277D190D8] object:0];

    v35 = [MEMORY[0x277D192A8] sharedInstance];
    [v35 setWatchesSystemLockState:1];

    v36 = [MEMORY[0x277D192A8] sharedInstance];
    [v36 addListener:v12];

    if (((v11 == 0) & [v10 supportsOneSessionForAllAccounts]) == 1)
    {
      [objc_opt_class() __registerNewServiceSession:v12];
    }

    v37 = [[IMDServiceAttachmentController alloc] initWithSession:v12];
    baseAttachmentController = v12->_baseAttachmentController;
    v12->_baseAttachmentController = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serviceSessionDelegates = v12->_serviceSessionDelegates;
    v12->_serviceSessionDelegates = v39;

    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [*p_account accountID];
        v43 = [v10 internalName];
        v44 = [v9 accountDefaults];
        *buf = 138412802;
        v49 = v42;
        v50 = 2112;
        v51 = v43;
        v52 = 2112;
        v53 = v44;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "initWithAccount: %@       service:%@  defaults: %@", buf, 0x20u);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self serviceSessionDelegates];
  [v5 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self serviceSessionDelegates];
  [v5 removeObject:v4];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "DEALLOC: %@", buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x277D192D8] sharedInstance];
  [v4 removeListener:self];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:0 object:0];

  v6 = [MEMORY[0x277D192A8] sharedInstance];
  [v6 removeListener:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
  [(IMDServiceSession *)self _abandonPWFetcher];
  [(IMDServiceSession *)self _clearAutoReconnectTimer];
  [(IMDServiceSession *)self _clearNetworkMonitor];
  [(NSRecursiveLock *)self->_lock lock];
  [(IMTimer *)self->_messageRoutingTimer invalidate];
  [(IMTimer *)self->_messageExpireStateTimer invalidate];
  [(IMTimer *)self->_messageWatchdogTimer invalidate];
  [(IMDAutoReplying *)self->_messageAutoReplier setReplyDelegate:0];
  [(NSRecursiveLock *)self->_lock unlock];
  v8.receiver = self;
  v8.super_class = IMDServiceSession;
  [(IMDServiceSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)accountNeedsLogin
{
  v2 = [(IMDServiceSession *)self service];
  v3 = [v2 needsLogin];

  return v3;
}

- (BOOL)accountNeedsPassword
{
  v2 = [(IMDServiceSession *)self service];
  v3 = [v2 needsPassword];

  return v3;
}

- (BOOL)accountShouldBeAlwaysLoggedIn
{
  v2 = [(IMDServiceSession *)self service];
  v3 = [v2 shouldBeAlwaysLoggedIn];

  return v3;
}

- (void)addAccount:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ addAccount:%@]", &v7, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts addObject:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ removeAccount:%@]", &v7, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts removeObject:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_accounts;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        if ([*(*(&v8 + 1) + 8 * i) isActive])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (NSString)displayName
{
  v2 = [(IMDServiceSession *)self service];
  v3 = [v2 serviceProperties];
  v4 = [v3 objectForKey:*MEMORY[0x277D19058]];

  return v4;
}

- (void)markItemForOffGridRelay:(id)a3 inChat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 setNeedsRelay:1];
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 storeMessage:v5 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

  v9 = [v5 service];
  v10 = [v9 isEqualToString:*MEMORY[0x277D1A628]];
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v5 guid];
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Marking iMessage Lite message as needing relay, guid: %@", &v17, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v5 guid];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Marking SMS Satellite message as needing relay, guid: %@", &v17, 0xCu);
    }
  }

  IMSetDomainBoolForKey();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)a3
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Subclasses should implement.", v4, 2u);
    }
  }
}

- (BOOL)isReplicating
{
  v2 = self;
  v3 = [(IMDServiceSession *)self mainSession];
  LOBYTE(v2) = v3 != v2;

  return v2;
}

- (NSArray)replicationSessions
{
  if ([(IMDServiceSession *)self isReplicating])
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [(IMDServiceSession *)self account];
    v3 = [v4 replicationSessions];
  }

  return v3;
}

- (IMDServiceSession)replicationProxy
{
  if ([(IMDServiceSession *)self isOutgoingReplicationEnabled])
  {
    replicationProxy = self->_replicationProxy;
    if (!replicationProxy)
    {
      v4 = [(IMDServiceSession *)self replicationSessions];
      if ([v4 count])
      {
        v5 = [objc_alloc(MEMORY[0x277D1A9B0]) initWithTargets:v4];
        v6 = self->_replicationProxy;
        self->_replicationProxy = v5;
      }

      replicationProxy = self->_replicationProxy;
    }

    v7 = replicationProxy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_replicationSessionsChanged
{
  replicationProxy = self->_replicationProxy;
  self->_replicationProxy = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)messageServiceNamed:(id)a3 canProcessMessagesFromServiceNamed:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:v5])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[IMDServiceController sharedController];
    v9 = [v8 serviceWithName:v6];

    v10 = [v9 relayMessageDelegates];
    v7 = [v10 containsObject:v5];
  }

  return v7;
}

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)a3 toIdentifier:(id)a4 isSOS:(BOOL)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Rejecting incoming replicated messages from account: %@, service session not configured for replicated messages", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)outgoingReplicationCallerIDForChat:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Returning nil outgoing replication caller ID for chat %@, service session not configured for replicated messages", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)preferredAccountForReplicationOnService:(id)a3 eligibleAccounts:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Returning nil preferred account for replication for %@, service session not configured for replicated messages", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)sessionSpecificTransferIDForTransferID:(id)a3
{
  v4 = a3;
  if ([(IMDServiceSession *)self isReplicating])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(IMDServiceSession *)self service];
    v7 = [v6 internalName];
    v8 = [(IMDServiceSession *)self accountID];
    v9 = [v5 stringWithFormat:@"Replication/%@/%@/%@", v7, v8, v4];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (void)sessionDidBecomeActive
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[%@ sessionDidBecomeActive]", &v10, 0xCu);
    }
  }

  self->_activated = 1;
  [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:0];
  v4 = [MEMORY[0x277D1ACB8] sharedInstance];
  v5 = [v4 isUnderFirstDataProtectionLock];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Not scheduling routing, expire, watchdog timer before first unlock", &v10, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Scheduling watchdog after first unlock", &v10, 2u);
      }
    }

    [(IMDServiceSession *)self _updateWatchdogTimerWithInterval:60.0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionWillBecomeInactiveWithAccount:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ sessionWillBecomeInactiveWithAccount:%@]", &v7, 0x16u);
    }
  }

  if (![(IMDServiceSession *)self isActive])
  {
    self->_activated = 0;
    [(IMDServiceSession *)self _clearAutoReconnectTimer];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearNetworkMonitor
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      networkMonitor = self->_networkMonitor;
      v9 = 138412546;
      v10 = networkMonitor;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "[IMDServiceSession _networkMonitor] monitor: %@:%@", &v9, 0x16u);
    }
  }

  v6 = self->_networkMonitor;
  p_networkMonitor = &self->_networkMonitor;
  [(IMNetworkMonitor *)v6 clear];
  v7 = *p_networkMonitor;
  *p_networkMonitor = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkMonitorWithRemoteHost:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v25 = v4;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_updateNetworkMonitorWithRemoteHost: %@:%@", buf, 0x16u);
      }
    }

    v7 = [(IMDServiceSession *)self service];
    v8 = [v7 supportsCapability:*MEMORY[0x277D1A5E0]];

    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 wantsNullHostReachability];

    networkMonitor = self->_networkMonitor;
    if (v10)
    {
      if (networkMonitor)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = self->_networkMonitor;
            *buf = 138412290;
            v25 = v13;
            _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Already have connection monitor to global reachability: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v17 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:v4 delegate:self allowsUltraConstrainedNetwork:v8];
        v18 = self->_networkMonitor;
        self->_networkMonitor = v17;

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = self->_networkMonitor;
            *buf = 138412290;
            v25 = v20;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEBUG, "Creating connection monitor to global reachability: %@", buf, 0xCu);
          }
        }

        v21 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B510A3C;
        block[3] = &unk_278702FF0;
        block[4] = self;
        dispatch_after(v21, MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      v14 = [(IMNetworkMonitor *)networkMonitor remoteHost];
      if ((v4 != 0) != (v14 != 0) || ([(IMNetworkMonitor *)v4 isEqual:v14]& 1) == 0)
      {
        [(IMDServiceSession *)self _clearNetworkMonitor];
        v15 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:v4 delegate:self allowsUltraConstrainedNetwork:v8];
        v16 = self->_networkMonitor;
        self->_networkMonitor = v15;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)a3
{
  if (self->_activated)
  {
    v25 = [(IMDServiceSession *)self accountDefaults];
    v6 = [v25 objectForKey:*MEMORY[0x277D194B0]];
    v7 = [v6 BOOLValue];

    v8 = [v25 objectForKey:*MEMORY[0x277D194A0]];
    v9 = [v8 BOOLValue];

    v10 = [v25 objectForKey:*MEMORY[0x277D194A8]];
    v11 = [v10 BOOLValue];

    v12 = MEMORY[0x277D19490];
    if (v7)
    {
      v13 = MEMORY[0x277D19498];
    }

    else
    {
      v12 = MEMORY[0x277D19480];
      v13 = MEMORY[0x277D19488];
    }

    v14 = [v25 objectForKey:*v12];
    v15 = [v25 objectForKey:*v13];
    v16 = [v15 intValue];

    if (!a3 && v9)
    {
      if (v11)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v17 = objc_alloc(MEMORY[0x277D192B0]);
        v18 = [(IMDServiceSession *)self server];
        v19 = [v17 initWithHost:v18 port:v16 delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v19;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
        v21 = 0;
      }

      else
      {
        v21 = [v25 objectForKey:*MEMORY[0x277D19440]];
      }

      v14 = v21;
    }

    v22 = [v14 stringByRemovingWhitespace];
    v23 = [v22 length];

    if (!v23)
    {
      v24 = [(IMDServiceSession *)self server];

      v14 = v24;
    }

    [(IMDServiceSession *)self _updateNetworkMonitorWithRemoteHost:v14];
  }
}

- (void)_reconnectIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(IMDServiceSession *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reconnectIfNecessaryWithAccount:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_activated)
  {
    goto LABEL_34;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(IMDServiceSession *)self loginID];
      v7 = [(IMDAccount *)self->_account accountID];
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_reconnectIfNecessary: %@:%@", &v21, 0x16u);
    }
  }

  v8 = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
  if ([v4 loginStatus] == 1)
  {
    v9 = [v4 serviceDisconnectReason];
    if ((v9 + 1) <= 8)
    {
      v10 = 0xCAu >> (v9 + 1);
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  LOBYTE(v10) = 0;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = v10 | self->_shouldReconnect;
LABEL_14:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (self->_shouldReconnect)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v10)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = [v4 loginStatus];
      v17 = [v4 serviceDisconnectReason];
      v21 = 138413314;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "  shouldAlwaysBeLoggedIn: %@    shouldReconnect: %@   wasLikelyNetworkError: %@  loginStatus: %lu  disconnectReason: %d", &v21, 0x30u);
    }
  }

  if ((v11 & 1) != 0 && [v4 loginStatus] != 4)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(IMDServiceSession *)self loginID];
        v21 = 138412290;
        v22 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "%@: we're disconnected properly - and we're supposed to try to reconnect now, ", &v21, 0xCu);
      }
    }

    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:v4];
  }

LABEL_34:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_processNetworkMonitorUpdate
{
  v39 = *MEMORY[0x277D85DE8];
  if (!self->_activated || ![(IMDServiceSession *)self _processesNetworkEvents])
  {
    goto LABEL_43;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(IMDServiceSession *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 |= [*(*(&v28 + 1) + 8 * i) loginStatus] > 2;
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v4);

    if ((v5 & 1) == 0 || ([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability])
    {
      goto LABEL_29;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = self;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@       forcing disconnect", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(IMDServiceSession *)self server];
        *buf = 138412546;
        v35 = self;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@: Network connection to %@ is down -- disconnecting", buf, 0x16u);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = [(IMDServiceSession *)self accounts];
    v11 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v3);
          }

          [(IMDServiceSession *)self logoutServiceSessionWithAccount:*(*(&v24 + 1) + 8 * j)];
        }

        v11 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v11);
    }
  }

LABEL_29:
  if (([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "%@       I can be reached", buf, 0xCu);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [(IMDServiceSession *)self accounts];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v20 + 1) + 8 * k)];
        }

        v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v16);
    }
  }

LABEL_43:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setPendingNetworkMonitorUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  if (self->_activated)
  {

    [(IMDServiceSession *)self performSelector:sel__processNetworkMonitorUpdate withObject:0 afterDelay:2.0];
  }
}

- (BOOL)_processesNetworkEvents
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self isReplicating]&& (IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        networkMonitor = self->_networkMonitor;
        v9 = 138412546;
        v10 = self;
        v11 = 2112;
        v12 = networkMonitor;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ refuses to process network changes - networkMonitor: %@", &v9, 0x16u);
      }
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = [(IMDServiceSession *)self service];
    v4 = [v3 ignoresNetworkConnectivity] ^ 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_processPotentialNetworkChange
{
  v52 = *MEMORY[0x277D85DE8];
  if (![(IMDServiceSession *)self _processesNetworkEvents]|| !self->_activated)
  {
    goto LABEL_80;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [(IMDServiceSession *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v4)
  {
    v5 = *v36;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v35 + 1) + 8 * i) loginStatus] > 2)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v35 objects:v51 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  v8 = ([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability];
  v9 = [MEMORY[0x277D19230] sharedInstance];
  v10 = [v9 isOnTelephonyCall];

  v11 = [MEMORY[0x277D07DB0] sharedInstance];
  v12 = [v11 supportsSimultaneousVoiceAndDataRightNow];

  if ((v8 & (v10 ^ 1 | v12)) == 1)
  {
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:1];
    v13 = 1;
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = [(IMDServiceSession *)self overrideNetworkAvailability];
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:0];
    if (v7 == v13)
    {
LABEL_18:
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          *buf = 138413570;
          v40 = self;
          if (v7)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v41 = 2112;
          v42 = v16;
          if (v13)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v43 = 2112;
          if (v10)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v44 = v17;
          if (v12)
          {
            v15 = @"YES";
          }

          v45 = 2112;
          v46 = v18;
          v47 = 2112;
          v48 = v15;
          v49 = 2112;
          v50 = v17;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@ networkMonitorDidUpdate: Currently connected: %@   (Reachable: %@  On Call: %@  Data+Voice: %@   Result: %@)", buf, 0x3Eu);
        }

LABEL_48:

        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413570;
      v40 = self;
      if (v7)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v41 = 2112;
      v42 = v20;
      if (v13)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v43 = 2112;
      if (v10)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v44 = v21;
      if (v12)
      {
        v19 = @"YES";
      }

      v45 = 2112;
      v46 = v22;
      v47 = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = v21;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@ networkMonitorDidUpdate: Currently connected: %@   (Reachable: %@  On Call: %@  Data+Voice: %@   Result: %@)", buf, 0x3Eu);
    }

    goto LABEL_48;
  }

LABEL_49:
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(IMNetworkMonitor *)self->_networkMonitor remoteHost];
      *buf = 138412290;
      v40 = v24;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEBUG, "                                        remoteHost: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = @"NO";
      if (v8)
      {
        v26 = @"YES";
      }

      *buf = 138412290;
      v40 = v26;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEBUG, "                                       isReachable: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = @"NO";
      if (v10)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v40 = v28;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "                                          isOnCall: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = @"NO";
      if (v12)
      {
        v30 = @"YES";
      }

      *buf = 138412290;
      v40 = v30;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEBUG, "                  supportsSimultaneousDataAndVoice: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable];
      v33 = @"NO";
      if (v32)
      {
        v33 = @"YES";
      }

      *buf = 138412290;
      v40 = v33;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEBUG, "                            isImmediatelyReachable: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    [(IMDServiceSession *)self _setPendingNetworkMonitorUpdate];
  }

  else
  {
    [(IMDServiceSession *)self _processNetworkMonitorUpdate];
  }

LABEL_80:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorDidUpdate:(id)a3
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_callMonitorStateChanged:(id)a3
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_networkChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v4 = [MEMORY[0x277D192E8] sharedInstance];
    if ([v4 isNetworkUp])
    {
    }

    else
    {
      v5 = [(IMDServiceSession *)self overrideNetworkAvailability];

      if (!v5)
      {
        goto LABEL_13;
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(IMDServiceSession *)self accounts];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:v11];
          [(IMDServiceSession *)self autoReconnectWithAccount:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)networkConditionsAllowLogin
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self overrideNetworkAvailability])
  {
    goto LABEL_2;
  }

  if (!self->_activated)
  {
    result = 0;
    goto LABEL_18;
  }

  v4 = [(IMDServiceSession *)self service];
  v5 = [v4 ignoresNetworkConnectivity];

  if (v5)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_2:
      result = 1;
      goto LABEL_18;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 138412546;
      *&v13[4] = @"YES";
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   (Ignoring network)", v13, 0x16u);
    }

LABEL_8:

    goto LABEL_2;
  }

  networkMonitor = self->_networkMonitor;
  if (!networkMonitor)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 138412546;
      *&v13[4] = @"YES";
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   (Fallback)", v13, 0x16u);
    }

    goto LABEL_8;
  }

  v8 = [(IMNetworkMonitor *)networkMonitor immediatelyReachable];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      v11 = self->_networkMonitor;
      *v13 = 138412802;
      if (v8)
      {
        v10 = @"YES";
      }

      *&v13[4] = v10;
      v14 = 2112;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   ([[%@]_networkMonitor immediatelyReachable])", v13, 0x20u);
    }
  }

  result = [(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable];
LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)allowedAsChild
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  v4 = [v3 parentalControls];
  LOBYTE(self) = [v4 disableServiceSession:self];

  return self ^ 1;
}

- (void)_managedPrefsNotification:(id)a3
{
  if (self->_activated)
  {
    v4 = +[IMDLocalDaemon sharedDaemon];
    v5 = [v4 parentalControls];
    v6 = [v5 active];

    if (v6)
    {
      if (![(IMDServiceSession *)self allowedAsChild])
      {

        [(IMDServiceSession *)self logout];
      }
    }
  }
}

- (id)canonicalFormOfID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self service];
  v6 = -[IMDServiceSession canonicalFormOfID:withIDSensitivity:](self, "canonicalFormOfID:withIDSensitivity:", v4, [v5 idSensitivity]);

  return v6;
}

- (id)canonicalFormOfID:(id)a3 withIDSensitivity:(int)a4
{
  v5 = a3;
  v6 = [(IMDServiceSession *)self service];
  [v6 caseInsensitivityByHandleType];
  v7 = IMCanonicalFormOfIDWithSensitivity();

  return v7;
}

- (BOOL)equalID:(id)a3 andID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v10 = [(IMDServiceSession *)self canonicalFormOfID:v6];
      v11 = [(IMDServiceSession *)self canonicalFormOfID:v8];
      v9 = [v10 isEqualToString:v11];
    }
  }

  return v9;
}

- (void)refreshServiceCapabilities
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IMDServiceSession *)self capabilities];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = _IMStringFromFZCapabilities();
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Refreshing capabilities: %@", &v9, 0xCu);
    }
  }

  v6 = [(IMDServiceSession *)self broadcaster];
  v7 = [(IMDServiceSession *)self accountID];
  [v6 account:v7 capabilitiesChanged:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)broadcaster
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForChatListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForChatListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)a3
{
  if (a3)
  {
    v4 = +[IMDBroadcastController sharedProvider];
    v5 = [(IMDServiceSession *)self service];
    v6 = [v4 broadcasterForBlackholeChatListenersSupportingService:v5];
  }

  else
  {
    v6 = [(IMDServiceSession *)self broadcasterForChatListeners];
  }

  return v6;
}

- (id)broadcasterForChatObserverListeners
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(IMDServiceSession *)self broadcasterForChatListeners];
  v4 = +[IMDBroadcastController sharedProvider];
  v5 = [(IMDServiceSession *)self service];
  v6 = [v4 broadcasterForSentMessageListenersSupportingService:v5];

  v7 = [IMDInvocationForwarder alloc];
  v12[0] = v3;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [(IMDInvocationForwarder *)v7 initWithTargets:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)broadcasterForAVConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForAVConferenceListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForACConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForACConferenceListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForVCConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForVCConferenceListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForNotificationsListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForNotificationListenersSupportingService:v4];

  return v5;
}

- (id)broadcasterForCollaborationListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForCollaborationListenersSupportingService:v4];

  return v5;
}

- (void)_clearDowngradeMarkersForChat:(id)a3
{
  v4 = a3;
  if (self->_activated)
  {
    v17 = v4;
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [MEMORY[0x277CBEB68] null];
    v7 = *MEMORY[0x277D19300];
    v8 = [MEMORY[0x277CBEB68] null];
    v9 = *MEMORY[0x277D19308];
    v10 = [MEMORY[0x277CBEB68] null];
    v11 = [v5 initWithObjectsAndKeys:{v6, v7, v8, v9, v10, *MEMORY[0x277D19310], 0}];

    v12 = +[IMDChatRegistry sharedInstance];
    LODWORD(v8) = [v12 updateProperties:v11 chat:v17 style:45];

    if (v8)
    {
      v13 = [(IMDServiceSession *)self chatForChatIdentifier:v17 style:45 updatingAccount:1];
      if (v13)
      {
        v14 = [(IMDServiceSession *)self broadcasterForChatListeners];
        v15 = [v13 guid];
        v16 = [v13 properties];
        [v14 chat:v15 propertiesUpdated:v16];
      }
    }

    v4 = v17;
  }
}

- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"isPermanentDelete"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"recoverableDeleteDate"];
    v6 = v7 == 0;
  }

  return v6;
}

- (id)deleteCommandDictionaryWithIncomingDictionary:(id)a3 inferredRecoverableDeleteForLegacyCommandsWithDate:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
  [v6 removeObjectForKey:@"permanentDeleteChatMetadataArray"];
  [v6 setObject:v7 forKeyedSubscript:@"chat"];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isPermanentDelete"];
  [v6 setObject:v5 forKeyedSubscript:@"recoverableDeleteDate"];

  v8 = [v6 copy];

  return v8;
}

- (void)recoverChatsForCommandDictionary:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v17 = a3;
  [v17 objectForKeyedSubscript:@"recoverChatMetadataArray"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v6 = [(IMDServiceSession *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v5];
        if ([v6 count])
        {
          v7 = [v6 arrayByApplyingSelector:sel_guid];
          v8 = [(IMDServiceSession *)self broadcasterForChatListenersWithBlackholeStatus:0];
          v9 = [(IMDServiceSession *)self chatRegistry];
          [v9 recoverMessagesWithChatGUIDs:v7];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = v6;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = *v22;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v21 + 1) + 8 * j);
                [(IMDServiceSession *)self _updateLastMessageTimeStampForChat:v14 broadcaster:v8];
                [v14 setDeletingIncomingMessages:0];
              }

              v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          [v8 recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:v7];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v5;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IMDServiceSession | Recovery: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = [v4 objectForKeyedSubscript:@"guid"];
  v34 = [v4 objectForKeyedSubscript:@"groupID"];
  v37 = [v4 objectForKeyedSubscript:@"ptcpts"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v45 = v35;
      v46 = 2112;
      v47 = v34;
      v48 = 2112;
      v49 = v37;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finding chats for delete or recovery using guid %@ groupID %@ participants %@", buf, 0x20u);
    }
  }

  v7 = [(IMDServiceSession *)self chatRegistry];
  v36 = [v7 existingChatWithGUID:v35];

  if (v36)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v36 guid];
        *buf = 138412290;
        v45 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found chat with specific guid %@ for chat metadata", buf, 0xCu);
      }
    }

    v10 = [v36 guid];
    [v5 addObject:v10];
  }

  v11 = [(IMDServiceSession *)self chatRegistry];
  v12 = [v11 existingChatsWithGroupID:v34];

  if ([v12 count])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 count];
        *buf = 134218498;
        v45 = v14;
        v46 = 2112;
        v47 = v34;
        v48 = 2112;
        v49 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %llu chats with specific group ID %@ for chat metadata: %@", buf, 0x20u);
      }
    }

    v15 = [v12 arrayByApplyingSelector:sel_guid];
    [v5 addObjectsFromArray:v15];
  }

  if ([v37 count] >= 2)
  {
    v16 = [(IMDServiceSession *)self chatRegistry];
    v17 = [(IMDServiceSession *)self service];
    v18 = [v16 existingChatsForIDs:v37 onService:v17 style:43];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_22B5138E4;
    v42[3] = &unk_278703100;
    v42[4] = self;
    v19 = [v18 __imArrayByFilteringWithBlock:v42];

    if ([v19 count])
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v19 count];
          *buf = 134218498;
          v45 = v21;
          v46 = 2112;
          v47 = v37;
          v48 = 2112;
          v49 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %llu chats with handles: %@ chats: %@", buf, 0x20u);
        }
      }

      v22 = [v19 arrayByApplyingSelector:sel_guid];
      [v5 addObjectsFromArray:v22];
    }
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v5;
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v25)
  {
    v26 = *v39;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v38 + 1) + 8 * i);
        v29 = [(IMDServiceSession *)self chatRegistry];
        v30 = [v29 existingChatWithGUID:v28];

        if (v30)
        {
          [v23 addObject:v30];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v25);
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v45 = v23;
      v46 = 2112;
      v47 = v35;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Found %llu chats for delete command with guid %@", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_updateLastMessageTimeStampForChat:(id)a3 broadcaster:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 lastMessageForChatWithRowID:{objc_msgSend(v5, "rowID")}];
    [v5 setLastMessage:v8];

    v9 = [v5 lastMessage];

    if (v9)
    {
      v10 = [v5 lastMessage];
      v11 = [v10 time];
      [v11 timeIntervalSinceReferenceDate];
      [v5 setLastMessageTimeStampOnLoad:v12];
    }

    else
    {
      [v5 setLastMessageTimeStampOnLoad:0];
    }

    v14 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v15 = [v14 isAVLessSharePlayEnabled];

    if (v15)
    {
      v16 = +[IMDMessageStore sharedInstance];
      v17 = [v16 lastTUConversationItemForChat:v5];

      if (v17)
      {
        v18 = [v17 time];

        if (v18)
        {
          v19 = [v17 time];
          [v5 setLastTUConversationCreatedDate:v19];
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_22B7CFDFC(v17, v20);
          }
        }
      }

      else
      {
        [v5 setLastTUConversationCreatedDate:0];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v5 guid];
        v23 = MEMORY[0x277CCABB0];
        v24 = [v5 lastMessage];
        v25 = [v24 time];
        [v25 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:?];
        v29 = 138412546;
        v30 = v22;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | IMDChat: %@, updating last message timestamp on load: %@", &v29, 0x16u);
      }
    }

    v27 = [v5 guid];
    [v6 chat:v27 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(v5, "lastMessageTimeStampOnLoad")}];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | _updateLastMessageTimeStampForChat received nil chat", &v29, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)sendHQAttachmentsForMessage:(id)a3 toChatID:(id)a4 style:(unsigned __int8)a5
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D026C();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)a3
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9
{
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02D4();
  }
}

- (void)sendEditedScheduledMessage:(id)a3 previousMessage:(id)a4 retractingPartIndexes:(id)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0308();
  }
}

- (void)renewTTLForScheduledAttachmentTransfer:(id)a3
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D033C();
  }
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a4;
  v7 = [MEMORY[0x277CBEBD0] messagesDomain];
  v8 = MEMORY[0x277CCACA8];
  v36 = self;
  v9 = [(IMDServiceSession *)self service];
  v10 = [v9 internalName];
  v11 = [v8 stringWithFormat:@"%@-ReachableHandles", v10];
  v12 = [v7 arrayForKey:v11];

  v13 = [MEMORY[0x277D19268] sharedInstance];
  v34 = v12;
  if ([v13 isInternalInstall])
  {
    v14 = [v12 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v6 handleIDs];
  v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v33 = v6;
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    LODWORD(v19) = v14;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = objc_alloc(MEMORY[0x277D1ABA0]);
        v23 = [(IMDServiceSession *)v36 service];
        v24 = [v23 internalName];
        v25 = [v22 initWithHandleID:v21 service:v24 isReachable:1 supportsEncryption:0];

        if (v14)
        {
          [v25 setReachable:{objc_msgSend(v34, "containsObject:", v21)}];
        }

        v19 = v19 & [v25 isReachable];
        [v15 setObject:v25 forKeyedSubscript:v21];
      }

      v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = v14;
  }

  v26 = objc_alloc(MEMORY[0x277D1ABB0]);
  v27 = [(IMDServiceSession *)v36 service];
  v28 = [v27 internalName];
  LOBYTE(v31) = 0;
  v29 = [v26 initWithService:v28 error:0 handleResults:v15 isFinal:1 allAreReachable:v19 allSupportEncryption:0 didCheckServer:v31];

  [v32 reachabilityRequest:v33 updatedWithResult:v29];
  v30 = *MEMORY[0x277D85DE8];
}

- (IMDServiceSession)mainSession
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSession);

  return WeakRetained;
}

- (IMDAccount)replicationAccount
{
  WeakRetained = objc_loadWeakRetained(&self->_replicationAccount);

  return WeakRetained;
}

- (IMDService)replicationService
{
  WeakRetained = objc_loadWeakRetained(&self->_replicationService);

  return WeakRetained;
}

- (BOOL)readReceiptsGloballyEnabled
{
  if (IMGetDomainBoolForKey())
  {
    return 1;
  }

  return IMGetDomainBoolForKey();
}

- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)a3
{
  v26 = a3;
  v44 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Updating read receipt setting for local chats", buf, 2u);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = +[IMDChatRegistry sharedInstance];
  obj = [v4 chats];

  v5 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v5)
  {
    v29 = *v32;
    v7 = *MEMORY[0x277D19910];
    v30 = *MEMORY[0x277D197F8];
    v25 = v26;
    *&v6 = 134218754;
    v24 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 properties];
        v11 = [v10 mutableCopy];

        v12 = [v11 valueForKey:v7];
        if ([v12 integerValue])
        {
          v13 = [v9 isOscarChat];
          v14 = v13;
          if (v13 && IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Read receipt is not going to be sent, chat filtered as junk", buf, 2u);
            }
          }

          v16 = [v11 valueForKey:v30];
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              if (v16)
              {
                v18 = [v16 longValue];
              }

              else
              {
                v18 = -1;
              }

              v19 = [v12 longValue];
              *buf = v24;
              v36 = v25;
              v37 = 2048;
              v38 = v18;
              v39 = 2048;
              v40 = v19;
              v41 = 2112;
              v42 = v9;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Global read receipt value set to [%ld], local chat read receipt value is [%ld] with versionID [%ld] for chat: %@", buf, 0x2Au);
            }
          }

          if ((v14 & 1) != 0 || [v16 BOOLValue] != v26)
          {
            [v11 removeObjectForKey:v30];
            [v11 removeObjectForKey:v7];
            [v9 updateProperties:v11];
            v20 = [(IMDServiceSession *)self broadcasterForChatListeners];
            v21 = [v9 guid];
            v22 = [v9 properties];
            [v20 chat:v21 propertiesUpdated:v22];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canHandleTransferAccept:(id)a3
{
  v4 = [a3 serviceFromUserInfo];
  v5 = [v4 length];
  v6 = [(IMDServiceSession *)self service];
  v7 = [v6 internalName];
  v8 = v7;
  if (v5)
  {
    v7 = v4;
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x277D1A620];
  }

  v10 = [v7 isEqualToString:v9];

  return v10;
}

- (void)_handleFileTransferAccepted:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 serviceFromUserInfo];
  if ([(IMDServiceSession *)self _canHandleTransferAccept:v4])
  {
    v6 = [v4 guid];
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(IMDServiceSession *)self service];
      v9 = [v8 internalName];
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Service(%@) File transfer accepted for: %@", buf, 0x16u);
    }

    if (v6)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B5BF3BC;
      aBlock[3] = &unk_278702B20;
      v10 = v6;
      v27 = v10;
      v11 = _Block_copy(aBlock);
      v12 = [v4 transferState];
      v13 = IMLogHandleForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12 > 1)
      {
        if (v14)
        {
          *buf = 138412290;
          v29 = v4;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** This was already accepted, ignoring request to fetch %@", buf, 0xCu);
        }

        if (IMIsRunningInAutomation())
        {
          v11[2](v11, 0);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 138412290;
          v29 = v4;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** Accepting %@", buf, 0xCu);
        }

        [v4 _setNeedsWrapper:0];
        if (IMFileTransferGUIDIsTemporary())
        {
          [(IMDServiceSession *)self fallbackToDownloadIfPossible:v10 transfer:v4];
        }

        else
        {
          v18 = IMLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " ** Transfer attempting download via CloudKit", buf, 2u);
          }

          v19 = +[IMDFileTransferCenter sharedInstance];
          [v19 startTransfer:v10];

          v20 = +[IMDCKAttachmentSyncController sharedInstance];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = sub_22B5BF41C;
          v22[3] = &unk_278705BB8;
          v22[4] = self;
          v23 = v10;
          v24 = v4;
          v25 = v11;
          [v20 acceptFileTransfer:v24 completion:v22];
        }
      }

      v15 = v27;
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "**** Not accepting transfer. Did not find a guid", buf, 2u);
      }
    }

    goto LABEL_22;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = [(IMDServiceSession *)self service];
    v16 = [v15 internalName];
    v17 = [v4 guid];
    *buf = 138412802;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Service(%@) Ignoring File transfer accept for: %@ transferSession %@", buf, 0x20u);

LABEL_22:
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransferBatchAccepted:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [a3 object];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v3;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "File transfers batch accepted for: %@", buf, 0xCu);
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 guid];
        if (!v11)
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v10;
            v15 = v13;
            v16 = "**** Not accepting transfer. Did not find a guid in %@";
            goto LABEL_17;
          }

LABEL_18:

          goto LABEL_19;
        }

        v12 = [v10 transferState];
        v13 = IMLogHandleForCategory();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (v12 > 1)
        {
          if (v14)
          {
            *buf = 138412290;
            v45 = v10;
            v15 = v13;
            v16 = " ** This transfer %@ was already accepted, ignoring";
LABEL_17:
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
          }

          goto LABEL_18;
        }

        if (v14)
        {
          *buf = 138412290;
          v45 = v10;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** Accepting into batch %@", buf, 0xCu);
        }

        [v10 _setNeedsWrapper:0];
        [v30 addObject:v10];
LABEL_19:
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, " ** Transfers attempting download via CloudKit", buf, 2u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v30;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        v24 = +[IMDFileTransferCenter sharedInstance];
        v25 = [v23 guid];
        [v24 startTransfer:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  v26 = +[IMDCKAttachmentSyncController sharedInstance];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B5BF8CC;
  v31[3] = &unk_278703068;
  v32 = v18;
  v33 = self;
  v27 = v18;
  [v26 acceptFileTransfers:v27 completion:v31];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)fallbackToDownloadIfPossible:(id)a3 transfer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDServiceSession *)self _isTransferAvailableForDownload:v7];
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** Transfer has been synced to CloudKit, but we don't have the asset -- however we can download from MMCS", buf, 2u);
    }

    [v7 _setTransferState:0];
    v11 = [(IMDServiceSession *)self baseAttachmentController];
    [v11 acceptFileTransfer:v7];
  }

  else
  {
    if (v10)
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " *** Not accepting transfer -- Transfer created Date is > 30 days old and we need to upload the asset to CloudKit", v12, 2u);
    }

    [(IMDServiceSession *)self _resetTransferToTapDownloadState:v6];
  }
}

- (void)_resetTransferToTapDownloadState:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resetting transfer %@ to Tap To Download state", &v11, 0xCu);
  }

  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 transferForGUID:v3];

  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MessageServiceSession" code:1 userInfo:0];
  [v7 resetTransfer:v3 andPostError:v8];

  [v6 _setTransferState:0];
  [v6 _setError:-1];
  v9 = +[IMDMessageStore sharedInstance];
  [v9 updateFileTransfer:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)storeMessage:(id)a3 context:(id)a4 didReplaceBlock:(id)a5 shouldStoreBlock:(id)a6 didStoreBlock:(id)a7 block:(id)a8
{
  v76 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v71 = a4;
  v70 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (!v16)
  {
    goto LABEL_85;
  }

  v17 = [v13 scheduleType];
  v72 = v17 != 1;
  if (v17 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not storing scheduled message %@", buf, 0xCu);
      }
    }

    v18 = v13;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v18 = 0;
  if (v14)
  {
LABEL_10:
    v20 = v14[2](v14, v13);
    v21 = v20;
    if (v13)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = !v22 && v17 != 1;
    v72 = v23;

    v13 = v21;
  }

LABEL_17:
  v24 = [v13 criticalMessagingAppName];
  v25 = [v24 length];

  if (v25)
  {
    if (v72 && ([MEMORY[0x277D1A900] sharedManager], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isMessagesTheDefaultTextApp"), v26, (v27 & 1) != 0))
    {
      v72 = 1;
    }

    else
    {
      v28 = v13;

      v72 = 0;
      v18 = v28;
    }
  }

  if (([v13 isTypingMessage] & 1) == 0)
  {
    v29 = [v13 scheduleType] == 1 || v25 != 0;
    if (!v29 && IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Storing message: %@", buf, 0xCu);
      }
    }
  }

  if (v72)
  {
    [v71 setUpdateMessageCache:1];
    v31 = +[IMDMessageStore sharedInstance];
    v32 = [v31 storeMessage:v13 context:v71 didReplaceBlock:v70];

    v18 = v32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *buf = xmmword_2787075F8;
    v74 = *off_278707608;
    v75 = 188;
    v33 = MEMORY[0x277CCACA8];
    v34 = IMFileLocationTrimFileName();
    v35 = v75;
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = [v36 stringWithFormat:@"input and output message types are not the same. input message has type %@. output message has type %@", v37, objc_opt_class()];
    v39 = [v33 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"[resultMessage isKindOfClass:[message class]]", "-[IMDServiceSession(IMDServiceSession_Chat_Private) storeMessage:context:didReplaceBlock:shouldStoreBlock:didStoreBlock:block:]", v34, v35, v38];

    v40 = IMGetAssertionFailureHandler();
    if (v40)
    {
      v40(v39);
    }

    else
    {
      v41 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }
  }

  if ([v13 isTapToRetry])
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = [v18 guid];
        *buf = 138412290;
        *&buf[4] = v43;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Set tap to retry for message %@", buf, 0xCu);
      }
    }

    [v18 setIsTapToRetry:1];
  }

  if (([v13 isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "  => Result message: %@", buf, 0xCu);
    }
  }

  v45 = [v13 contactsAvatarRecipeData];
  if (v45)
  {
    v46 = [v18 contactsAvatarRecipeData];
    v47 = v46 == 0;

    if (v47)
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = v49;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Set avatar likeness data for message %@", buf, 0xCu);
        }
      }

      v50 = [v13 contactsAvatarRecipeData];
      [v18 setContactsAvatarRecipeData:v50];
    }
  }

  v51 = [v13 bizIntent];
  if (v51)
  {
    v52 = [v18 bizIntent];
    v53 = v52 == 0;

    if (v53)
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = v55;
          _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Set biz intent data for message %@", buf, 0xCu);
        }
      }

      v56 = [v13 bizIntent];
      [v18 setBizIntent:v56];
    }
  }

  v57 = [v13 locale];
  if (v57)
  {
    v58 = [v18 locale];
    v59 = v58 == 0;

    if (v59)
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = v61;
          _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Set locale data for message %@", buf, 0xCu);
        }
      }

      v62 = [v13 locale];
      [v18 setLocale:v62];
    }
  }

  v63 = [v13 collaborationInitiationRequestInfo];

  if (v63)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = [v13 collaborationInitiationRequestInfo];
        *buf = 138412290;
        *&buf[4] = v65;
        _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Set collaborationInitiationRequestInfo %@", buf, 0xCu);
      }
    }

    v66 = [v13 collaborationInitiationRequestInfo];
    [v18 setCollaborationInitiationRequestInfo:v66];
  }

  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = [v18 guid];
      *buf = 138412290;
      *&buf[4] = v68;
      _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Set meCard sharing preferences data for message %@", buf, 0xCu);
    }
  }

  [v18 setShouldSendMeCard:{objc_msgSend(v13, "shouldSendMeCard")}];
  if (v15)
  {
    v15[2](v15, v18);
  }

  (v16)[2](v16, v72, v13, v18);

LABEL_85:
  v69 = *MEMORY[0x277D85DE8];
}

- (void)useChatRoom:(id)a3 forGroupChatIdentifier:(id)a4
{
  v6 = a4;
  v11 = [(IMDServiceSession *)self canonicalFormOfChatRoom:a3];
  if (!self->_groupChatIdentifierToChatRoomMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groupChatIdentifierToChatRoomMap = self->_groupChatIdentifierToChatRoomMap;
    self->_groupChatIdentifierToChatRoomMap = v7;
  }

  if (!self->_chatRoomToGroupChatIdentifierMap)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatRoomToGroupChatIdentifierMap = self->_chatRoomToGroupChatIdentifierMap;
    self->_chatRoomToGroupChatIdentifierMap = v9;
  }

  [(NSMutableDictionary *)self->_groupChatIdentifierToChatRoomMap setObject:v11 forKey:v6];
  [(NSMutableDictionary *)self->_chatRoomToGroupChatIdentifierMap setObject:v6 forKey:v11];
}

- (id)_guidForChat:(id)a3 style:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [(IMDServiceSession *)self service];
  v7 = [v6 internalName];
  v8 = IMCopyAnyServiceGUIDForChat();

  return v8;
}

- (void)_markFromStorageIfNeeded:(id)a3 messageGUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Storage context present for message with GUID %@", &v11, 0xCu);
      }
    }

    v9 = [v6 unsignedIntValue];
    if (([v6 unsignedIntValue] & 2) != 0)
    {
      [(IMDServiceSession *)self noteLastItemFromStorage:v7];
    }

    else if (v9)
    {
      [(IMDServiceSession *)self noteItemFromStorage:v7];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277D193A8];
    v10 = *MEMORY[0x277D1A490];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 _stringForKey:{v9, v20}];
        if (v13)
        {
          v14 = [v12 _stringForKey:v10];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [MEMORY[0x277CCACA8] stringGUID];
          }

          v17 = v16;

          [v4 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)registerChat:(id)a3 style:(unsigned __int8)a4 displayName:(id)a5 groupID:(id)a6 originalGroupID:(id)a7 lastAddressedHandle:(id)a8 lastAddressedSIMID:(id)a9 handleInfo:(id)a10 account:(id)a11 isBlackholed:(BOOL)a12
{
  v162 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v146 = a4;
  v110 = a5;
  v111 = a6;
  v112 = a7;
  v114 = a8;
  v115 = a9;
  v116 = a10;
  v18 = a11;
  if (v17)
  {
    v19 = v18;
    if (!v18)
    {
      v19 = [(IMDServiceSession *)self account];
    }

    [(NSRecursiveLock *)self->_lock lock];
    v145 = v17;
    [(IMDServiceSession *)self canonicalizeChatIdentifier:&v145 style:&v146];
    v20 = v145;

    v109 = [(IMDServiceSession *)self _guidForChat:v20 style:v146];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v151 = v20;
        v152 = 1024;
        v153 = v146;
        v154 = 2112;
        v155 = v109;
        v156 = 2112;
        v157 = v116;
        v158 = 2112;
        v159 = v114;
        v160 = 2112;
        v161 = v115;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Registering chat identifier: %@   style: %d  guid: %@ handleInfo: %@ lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x3Au);
      }
    }

    v22 = v146;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_22B6796F0;
    v135[3] = &unk_278707628;
    v135[4] = self;
    v136 = v20;
    v143 = v146;
    v105 = v110;
    v137 = v105;
    v106 = v111;
    v138 = v106;
    v107 = v112;
    v139 = v107;
    v103 = v114;
    v140 = v103;
    v102 = v115;
    v141 = v102;
    v108 = v19;
    v142 = v108;
    v144 = a12;
    v121 = v136;
    [(IMDServiceSession *)self _calculateHandleInfoOverrideIfPermittedForChatIdentifier:v136 style:v22 completion:v135];
    v23 = +[IMDChatRegistry sharedInstance];
    v113 = [v23 existingChatWithGUID:v109];

    if (v113)
    {
      v24 = [v113 participants];
      if ([v24 count])
      {
      }

      else
      {
        v51 = [v116 count] == 0;

        if (!v51)
        {
          if (IMOSLoggingEnabled())
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v151 = v116;
              _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, " => Found chat, but it had no particpants. Updating with handleInfo: %@", buf, 0xCu);
            }
          }

          goto LABEL_44;
        }
      }

      v25 = [(IMDServiceSession *)self _shouldConvergeChatParticipants:v113 withHandleInfo:v116];
      v26 = IMOSLoggingEnabled();
      if (!v25)
      {
        if (v26)
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v151 = v113;
            _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, " => We already have one, nothing to do here. Chat: [%@]", buf, 0xCu);
          }
        }

        goto LABEL_98;
      }

      if (v26)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v151 = v116;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, " => Found chat, but it had a different set of participants. Updating with handleInfo: %@", buf, 0xCu);
        }
      }

      v28 = objc_alloc(MEMORY[0x277CBEB58]);
      v29 = [v113 participantHandles];
      v30 = [v28 initWithArray:v29];

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      obj = v116;
      v31 = [obj countByEnumeratingWithState:&v131 objects:v149 count:16];
      if (v31)
      {
        v32 = *v132;
        v33 = *MEMORY[0x277D193A8];
        v34 = *MEMORY[0x277D192F8];
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v132 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v131 + 1) + 8 * i);
            v37 = [v36 objectForKeyedSubscript:v33];
            [v30 removeObject:v37];
            v38 = objc_alloc_init(IMDChatMemberStatusChangeContext);
            v39 = [v36 objectForKeyedSubscript:v34];
            v40 = [v39 intValue];
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = 2;
            }

            [(IMDChatMemberStatusChangeContext *)v38 setStatus:v41];

            [(IMDChatMemberStatusChangeContext *)v38 setHandleID:v37];
            [(IMDChatMemberStatusChangeContext *)v38 setChatIdentifier:v121];
            [(IMDChatMemberStatusChangeContext *)v38 setStyle:v146];
            [(IMDChatMemberStatusChangeContext *)v38 setUnattributed:1];
            v42 = [(IMDServiceSession *)self didChangeMemberStatus:v38];
          }

          v31 = [obj countByEnumeratingWithState:&v131 objects:v149 count:16];
        }

        while (v31);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v43 = v30;
      v44 = [v43 countByEnumeratingWithState:&v127 objects:v148 count:16];
      if (v44)
      {
        v45 = *v128;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v128 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v127 + 1) + 8 * j);
            v48 = objc_alloc_init(IMDChatMemberStatusChangeContext);
            [(IMDChatMemberStatusChangeContext *)v48 setStatus:3];
            [(IMDChatMemberStatusChangeContext *)v48 setHandleID:v47];
            [(IMDChatMemberStatusChangeContext *)v48 setChatIdentifier:v121];
            [(IMDChatMemberStatusChangeContext *)v48 setStyle:v146];
            [(IMDChatMemberStatusChangeContext *)v48 setUnattributed:1];
            v49 = [(IMDServiceSession *)self didChangeMemberStatus:v48];
          }

          v44 = [v43 countByEnumeratingWithState:&v127 objects:v148 count:16];
        }

        while (v44);
      }
    }

LABEL_44:
    v53 = v146;
    v54 = v121;
    if (v146 == 45)
    {
      v54 = 0;
    }

    v104 = v54;
    if (v53 == 43)
    {
      v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v117 = v116;
      v63 = [v117 countByEnumeratingWithState:&v123 objects:v147 count:16];
      if (v63)
      {
        obja = *v124;
        v64 = *MEMORY[0x277D193A8];
        v65 = *MEMORY[0x277D193C0];
        v66 = *MEMORY[0x277D193A0];
        do
        {
          for (k = 0; k != v63; ++k)
          {
            if (*v124 != obja)
            {
              objc_enumerationMutation(v117);
            }

            v68 = *(*(&v123 + 1) + 8 * k);
            v69 = [v68 objectForKey:v64];
            v70 = [v68 objectForKey:v65];
            v71 = [v68 objectForKey:v66];
            if (v69)
            {
              if (MEMORY[0x231897A50](v69))
              {
                v72 = IMChatCanonicalIDSIDsForAddress();
                v73 = [v72 _stripFZIDPrefix];
              }

              else
              {
                v73 = [v69 _stripFZIDPrefix];
                v72 = v69;
              }

              v74 = [[IMDHandle alloc] initWithID:v73 unformattedID:v70 countryCode:v71];
              [v118 addObject:v74];
            }
          }

          v63 = [v117 countByEnumeratingWithState:&v123 objects:v147 count:16];
        }

        while (v63);
      }

      v75 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v101) = a12;
      v76 = [v75 chatForHandles:v118 account:v108 chatIdentifier:v121 style:43 groupID:v106 originalGroupID:v107 displayName:v105 guid:v109 lastAddressedHandle:v103 lastAddressedSIMID:v102 isBlackholed:v101];
    }

    else if (v53 == 45)
    {
      v118 = [v116 __imFirstObject];
      v55 = [v118 objectForKey:*MEMORY[0x277D193A8]];
      v56 = [v118 objectForKey:*MEMORY[0x277D193C0]];
      v57 = [v118 objectForKey:*MEMORY[0x277D193A0]];
      v58 = [v118 objectForKey:*MEMORY[0x277D19CE8]];
      v59 = [v118 objectForKey:*MEMORY[0x277D19778]];
      if (!v55)
      {
        v55 = v121;
      }

      v60 = [v58 BOOLValue];
      v61 = [IMDHandle alloc];
      if (v60)
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57 personCentricID:v59];
      }

      else
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57];
      }

      v77 = v62;
      v78 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v100) = a12;
      v76 = [v78 chatForHandle:v77 account:v108 chatIdentifier:v121 guid:v109 lastAddressedHandle:v103 lastAddressedSIMID:v102 isBlackholed:v100];
    }

    else
    {
      v118 = +[IMDChatRegistry sharedInstance];
      v76 = [v118 chatForRoom:v104 account:v108 chatIdentifier:v121 guid:v109];
    }

    v79 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v80 = [v79 isMissingMessagesEnabled];

    if (v80)
    {
      if ([v76 style] == 43)
      {
        [v76 assignIdentifier:v106 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        v81 = [v108 service];
        v82 = [v81 internalName];

        v83 = IMChatLookupDomainForServiceName();
        v84 = [v108 service];
        [v76 assignIdentifier:v106 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(v84, "groupIDIsHistoricalIdentifier")}];

        v85 = [v108 service];
        [v76 assignIdentifier:v107 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(v85, "groupIDIsHistoricalIdentifier") ^ 1}];
      }
    }

    else
    {
      [v76 setGroupID:v106];
      if (v107)
      {
        [v76 setOriginalGroupID:v107];
      }
    }

    [v76 setDisplayName:v105];
    if ([MEMORY[0x277D192C8] isEngramEnabled])
    {
      [v76 setCreateEngramGroupOnMessageSend:1];
    }

    v86 = +[IMDChatStore sharedInstance];
    [v86 storeChat:v76];

    if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] && objc_msgSend(v76, "isBlackholed"))
    {
      v87 = [v76 participants];
      v88 = [v87 count] == 1;

      v89 = [MEMORY[0x277D1AAA8] sharedInstance];
      v90 = v89;
      if (v88)
      {
        v91 = 15;
      }

      else
      {
        v91 = 16;
      }

      if (v88)
      {
        v92 = 13;
      }

      else
      {
        v92 = 14;
      }

      [v89 trackSpamEvent:v91];

      v93 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v93 trackSpamEvent:v92];
    }

    if (v146 != 45)
    {
      goto LABEL_93;
    }

    v94 = [MEMORY[0x277D19268] sharedInstance];
    if ([v94 isInternalInstall])
    {
      v95 = [v121 hasPrefix:@"chat"];

      if (!v95)
      {
LABEL_93:
        if (IMOSLoggingEnabled())
        {
          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v151 = v76;
            _os_log_impl(&dword_22B4CC000, v98, OS_LOG_TYPE_INFO, "Created chat: %@", buf, 0xCu);
          }
        }

LABEL_98:
        [(NSRecursiveLock *)self->_lock unlock];

        v18 = v108;
        goto LABEL_99;
      }

      if (IMOSLoggingEnabled())
      {
        v96 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v151 = v76;
          _os_log_impl(&dword_22B4CC000, v96, OS_LOG_TYPE_INFO, "********** Created bad chat: %@ *************", buf, 0xCu);
        }
      }

      IMLogBacktrace();
      v94 = [MEMORY[0x277CCAC38] processInfo];
      v97 = [v94 processName];
      IMLogSimulateCrashForProcess();
    }

    goto LABEL_93;
  }

  v121 = 0;
LABEL_99:

  v99 = *MEMORY[0x277D85DE8];
}

- (void)canonicalizeChatIdentifier:(id *)a3 style:(unsigned __int8 *)a4
{
  v7 = *a3;
  v8 = *a4;
  if (v8 == 35)
  {
    v9 = [(IMDServiceSession *)self canonicalFormOfChatRoom:v7];
LABEL_8:
    *a3 = v9;
    goto LABEL_9;
  }

  if (v8 != 43)
  {
    if (v8 != 45)
    {
      goto LABEL_9;
    }

    v9 = [(IMDServiceSession *)self canonicalFormOfID:v7];
    goto LABEL_8;
  }

  v11 = v7;
  if ([(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms])
  {
    v10 = [(IMDServiceSession *)self chatRoomForGroupChatIdentifier:v11];
    *a3 = [(IMDServiceSession *)self canonicalFormOfChatRoom:v10];
    *a4 = 35;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_mapRoomChatToGroupChat:(id *)a3 style:(unsigned __int8 *)a4
{
  if ([(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms]&& *a4 == 35)
  {
    v7 = [(IMDServiceSession *)self groupChatIdentifierForChatRoom:*a3];
    if (v7)
    {
      v7 = v7;
      *a3 = v7;
      *a4 = 43;
    }
  }
}

- (id)existingChatsForGroupID:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v3 UUIDString];

  v6 = [v4 existingChatsWithGroupID:v5];

  return v6;
}

- (id)existingChatForID:(id)a3
{
  v4 = a3;
  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [(IMDServiceSession *)self account];
  v7 = [v5 existingChatForID:v4 account:v6];

  return v7;
}

- (id)chatForChatIdentifier:(id)a3 style:(unsigned __int8)a4 account:(id)a5 updatingAccount:(BOOL)a6
{
  v6 = a6;
  v33 = *MEMORY[0x277D85DE8];
  v26 = a4;
  v9 = a5;
  v25 = a3;
  v10 = a3;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&v25 style:&v26];
  v11 = v25;

  if (v11)
  {
    v12 = [(IMDServiceSession *)self _guidForChat:v11 style:v26];
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:v12];

    if (v14)
    {
      v15 = [v14 account];
      if (v15 == v9)
      {
        v6 = 0;
      }

      if (v6)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v14 accountID];
            v18 = [v9 accountID];
            *buf = 138412546;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updating account ID from: %@ => %@", buf, 0x16u);
          }
        }

        v19 = [v9 accountID];
        [v14 setAccountID:v19];

        v20 = +[IMDChatStore sharedInstance];
        [v20 storeChat:v14];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v28 = v12;
        v29 = 2112;
        v30 = v11;
        v31 = 1024;
        v32 = v26;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Failed to find chat for guid %@ with chatIdentifier: %@, style: %c", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Failed to canonicalize chat identifier", buf, 2u);
      }
    }

    v14 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[IMDChatRegistry sharedInstance];
  v18 = [(IMDServiceSession *)self service];
  v19 = [v18 internalName];
  v20 = [v17 bestCandidateGroupChatWithFromIdentifier:v16 toIdentifier:v15 displayName:v14 participants:v13 groupID:v12 serviceName:v19];

  return v20;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7 originalGroupID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[IMDChatRegistry sharedInstance];
  v21 = [(IMDServiceSession *)self service];
  v22 = [v21 internalName];
  v23 = [v20 bestCandidateGroupChatWithFromIdentifier:v19 toIdentifier:v18 displayName:v17 participants:v16 groupID:v15 originalGroupID:v14 serviceName:v22];

  return v23;
}

- (void)processMessageForSending:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 allowWatchdog:(BOOL)a6 account:(id)a7 didReplaceMessageBlock:(id)a8 completionBlock:(id)a9
{
  v11 = a6;
  v59 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v50 = a5;
  v17 = a7;
  v42 = a8;
  v18 = a9;
  if (v15)
  {
    if (!v17)
    {
      v17 = [(IMDServiceSession *)self account];
    }

    v49 = v16;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v49 style:&v50];
    v41 = v49;

    if (v11 && ([v15 isTypingMessage] & 1) == 0 && (objc_msgSend(v15, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v15, "isRCSEncryptionTest") & 1) == 0)
    {
      v19 = [v15 guid];
      [(IMDServiceSession *)self _updateWatchdogForMessageGUID:v19];
    }

    [(IMDServiceSession *)self _configureSessionInformationOnItem:v15 toChat:v41 withStyle:v50 forAccount:v17];
    [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:v15];
    [v15 setErrorCode:0];
    v20 = [v15 isBeingRetried];
    v48 = 0;
    v21 = MEMORY[0x277D1AAB0];
    v22 = [v15 balloonBundleID];
    v23 = [v15 body];
    v24 = [v15 payloadData];
    v40 = [v21 photoShareURLFromPluginBundleID:v22 contentString:v23 payload:v24 shouldAccept:&v48];

    v25 = [(IMDServiceSession *)self existingChatForID:v41];
    v26 = v25;
    if (v40 && v48 == 1)
    {
      if (v25)
      {
        v27 = +[IMDMomentShareManager sharedInstance];
        [v27 registerAndAcceptMomentShareForMessage:v15 inChat:v26 resetAssetTransfers:1];
      }

      else if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v15 guid];
          *buf = 138412290;
          v52 = v30;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Failed to accept moment share for message guid: %@", buf, 0xCu);
        }
      }
    }

    if ([v15 containsRichLink])
    {
      v31 = [(IMDServiceSession *)self _isMessageSWYSpamMessage:v15 inChat:v26];
      v46 = 0;
      v47 = 0;
      v32 = [(IMDServiceSession *)self _shouldShowSWYQuickActionForMessage:v15 outAppName:&v47 outBundleID:&v46];
      v33 = v47;
      v34 = v46;
      if (v31 || v32)
      {
        [(IMDServiceSession *)self _configureSyndicationRangesForMessage:v15 forChat:v26 withSyndicationStatus:2];
        [v15 setWasDetectedAsSWYSpam:v31];
        [v15 setSwyAppName:v33];
        [v15 setSwyBundleID:v34];
        if (IMOSLoggingEnabled())
        {
          log = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v35 = @"NO";
            *buf = 138413058;
            v52 = v15;
            if (v31)
            {
              v36 = @"YES";
            }

            else
            {
              v36 = @"NO";
            }

            v53 = 2112;
            v54 = v36;
            if (v32)
            {
              v35 = @"YES";
            }

            v55 = 2112;
            v56 = v35;
            v57 = 2112;
            v58 = v33;
            _os_log_impl(&dword_22B4CC000, log, OS_LOG_TYPE_INFO, "Configuring Syndication Ranges for Message: %@. isSWYSpam %@, showQuickAction: %@ swyAppName: %@", buf, 0x2Au);
          }
        }
      }
    }

    if ([v26 isChatBot])
    {
      [v15 setBalloonBundleID:*MEMORY[0x277D196D8]];
    }

    v37 = objc_alloc_init(IMDMessageStorageContext);
    [(IMDMessageStorageContext *)v37 setForceReplace:v20 ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyError:v20 ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyFlags:v20 ^ 1u];
    [(IMDMessageStorageContext *)v37 setFlagMask:557068];
    [(IMDMessageStorageContext *)v37 setChat:v26];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_22B67A764;
    v43[3] = &unk_278707650;
    v43[4] = self;
    v44 = v15;
    v45 = v18;
    [(IMDServiceSession *)self storeMessage:v44 context:v37 didReplaceBlock:v42 shouldStoreBlock:0 didStoreBlock:0 block:v43];

    v16 = v41;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No message in prepare", buf, 2u);
      }
    }

    (*(v18 + 2))(v18, 0);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_configureAccountInformationOnItem:(id)a3 withAccount:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 service];
  v8 = [v7 internalName];
  [v6 setService:v8];

  v9 = [v5 accountID];
  [v6 setAccountID:v9];

  v10 = [v5 loginID];

  [v6 setAccount:v10];
}

- (void)_configureTimeOnOutgoingItem:(id)a3
{
  v5 = a3;
  v3 = [v5 time];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v5 setTime:v4];
  }
}

- (void)_configureIdentifierForOutgoingItem:(id)a3 withIdentifier:(id)a4 withStyle:(unsigned __int8)a5
{
  if (a5 == 45)
  {
    [a3 setHandle:a4];
  }

  else
  {
    [a3 setRoomName:a4];
  }
}

- (void)_setOutgoingFlagsOnMessage:(id)a3
{
  v3 = a3;
  [v3 setFlags:{objc_msgSend(v3, "flags") & 0xFFFFFFFFFFFF7FFBLL | 4}];
}

- (void)_messageStoreCompletion:(BOOL)a3 inputMessage:(id)a4 outputMessage:(id)a5 originalMessage:(id)a6 completionBlock:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a3 || [v12 scheduleType] == 1 || (objc_msgSend(v12, "criticalMessagingAppName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
  {
    if (([v12 isTypingMessage] & 1) == 0 && objc_msgSend(v12, "scheduleType") != 1 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "  => Message was stored. Input: %@   Output: %@", &v22, 0x16u);
      }
    }

    v19 = [(IMDServiceSession *)self _determineResultMessageForInput:v12 output:v13 original:v14];
    v20 = [v14 consumedSessionPayloads];
    if (![(IMDServiceSession *)self _shouldDropSendingMessage])
    {
      if (v20)
      {
        [v19 setConsumedSessionPayloads:v20];
      }

      [v19 setShouldNotifyOnSend:{objc_msgSend(v14, "shouldNotifyOnSend")}];
      [v19 setSentViaRemoteIntent:{objc_msgSend(v14, "sentViaRemoteIntent")}];
      if (v15)
      {
        v15[2](v15, v19);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_determineResultMessageForInput:(id)a3 output:(id)a4 original:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  if (v8)
  {
LABEL_2:
    v11 = v10;
    goto LABEL_4;
  }

  v11 = v7;
  if (!v11)
  {
    v16 = IMOSLoggingEnabled();
    v10 = v9;
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "  => No result? Using the requested message: %@", &v18, 0xCu);
      }

      v10 = v9;
    }

    goto LABEL_2;
  }

LABEL_4:
  if ([v9 isBeingRetried])
  {
    [v11 setIsBeingRetried:1];
  }

  v12 = [v9 retryToParticipant];

  if (v12)
  {
    v13 = [v9 retryToParticipant];
    [v11 setRetryToParticipant:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_shouldDropSendingMessage
{
  v2 = IMGetCachedDomainBoolForKey();
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, " ** DropSendingMessage is enabled, failing send message", v5, 2u);
    }
  }

  return v2;
}

- (id)itemWithGUID:(id)a3
{
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 itemWithGUID:v3];

  return v5;
}

- (id)chatForItemWithGUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDServiceSession *)self _sharedMessageStore];
  v6 = [v5 chatForMessageGUID:v4];

  if (!v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for itemGUID: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int64_t)_incomingMessageIndexReason
{
  if ([(IMDServiceSession *)self isAwaitingStorageTimer])
  {
    return 1012;
  }

  else
  {
    return 1000;
  }
}

- (void)sendRelayMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendIncomingRelayMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendRelayDeliveryReceiptForMessageID:(id)a3 toChat:(id)a4
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D89A0(self);
  }
}

- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 destinationHandles:(id)a6
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A3C();
  }
}

- (void)sendMessage:(id)a3 toChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v30 = a5;
  v12 = a6;
  if (v10)
  {
    if ([v10 isBeingRetried])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v10 guid];
          *buf = 138412290;
          v32 = v14;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not sending message up to client because this message is being retried. Guid %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!v12)
      {
        v12 = [(IMDServiceSession *)self account];
      }

      v29 = v11;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v29 style:&v30];
      v15 = v29;

      [(IMDServiceSession *)self _configureSessionInformationOnItem:v10 toChat:v15 withStyle:v30 forAccount:v12];
      [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:v10];
      v16 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:v30 account:v12 updatingAccount:1];
      if ([v10 scheduleType] == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v10 guid];
            *buf = 138412290;
            v32 = v18;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Not storing scheduled message or notifying client about message with GUID: %@ ", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v19 setForceReplace:1];
        [(IMDMessageStorageContext *)v19 setModifyError:1];
        [(IMDMessageStorageContext *)v19 setModifyFlags:1];
        [(IMDMessageStorageContext *)v19 setFlagMask:0x2000000800CLL];
        [(IMDMessageStorageContext *)v19 setChat:v16];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_22B67B8F4;
        v27[3] = &unk_278707678;
        v28 = v16;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_22B67BB4C;
        v21[3] = &unk_2787076A0;
        v22 = v28;
        v23 = self;
        v24 = v12;
        v25 = v15;
        v26 = v30;
        [(IMDServiceSession *)self storeMessage:v10 context:v19 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:v27 block:v21];
      }

      v11 = v15;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)revokeSentMessage:(id)a3 inChat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(IMDServiceSession *)self displayName];
      v10 = [v6 guid];
      v11 = [v7 guid];
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@ Service session does not support message revocation for %@ in chat %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Service session does not support legacy satellite relay", v9, 2u);
    }
  }
}

- (void)downgradeRequestedForHandleID:(id)a3 expirationDate:(id)a4 preferredService:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138413058;
      v25 = v13;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ setting downgrade flag for %@ (expiration: %@) to %@", buf, 0x2Au);
    }
  }

  v14 = [(IMDServiceSession *)self chatForChatIdentifier:v8 style:45 updatingAccount:1];
  if (!v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " => No chat for %@, joining chat", buf, 0xCu);
      }
    }

    v16 = *MEMORY[0x277D192F8];
    v22[0] = *MEMORY[0x277D193A8];
    v22[1] = v16;
    v23[0] = v8;
    v23[1] = &unk_283F4ECA8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v21 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [(IMDServiceSession *)self didJoinChat:v8 style:45 displayName:0 groupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v18];

    v14 = [(IMDServiceSession *)self chatForChatIdentifier:v8 style:45];
  }

  [v14 setRequestedDowngradeService:v10];
  if (v9)
  {
    [v14 setRequestedDowngradeExpirationDate:v9];
  }

  else
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v14 setRequestedDowngradeExpirationDate:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearDowngradeRequestForHandleID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ clearing downgrade flag for %@", &v12, 0x16u);
    }
  }

  v8 = [(IMDServiceSession *)self chatForChatIdentifier:v4 style:45 updatingAccount:1];
  v9 = v8;
  if (v8)
  {
    [v8 setRequestedDowngradeService:0];
    [v9 setRequestedDowngradeExpirationDate:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, " => No existing chat, no change to downgrade flag", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasValidDowngradeRequestForHandleID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDServiceSession *)self chatForChatIdentifier:v4 style:45 updatingAccount:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 requestedDowngradeService];
    v8 = [v6 requestedDowngradeExpirationDate];
    v9 = 0;
    if ([v7 length] && v8)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = [v8 laterDate:v10];

      if (v11 == v10)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v24 = 138412546;
            v25 = v7;
            v26 = 2112;
            v27 = v8;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Previous downgrade request to %@ expired on %@, clearing", &v24, 0x16u);
          }
        }

        [v6 setRequestedDowngradeService:0];
        [v6 setRequestedDowngradeExpirationDate:0];
        v9 = 0;
      }

      else
      {
        v12 = +[IMDMessageStore sharedInstance];
        v13 = [(IMDServiceSession *)self service];
        v14 = [v13 internalName];
        v15 = [v12 lastIncomingMessageForChatWithIdentifier:v4 chatStyle:45 onService:v14];

        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 lastIncomingMessageForChatWithIdentifier:v4 chatStyle:45 onService:v7];

        v18 = [v15 time];
        v19 = [v17 time];
        if (v17)
        {
          if (v15)
          {
            v20 = [v18 laterDate:v19];
            v9 = v20 != v18;
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)sentDowngradeRequestToHandleID:(id)a3 fromID:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Downgrade request was sent to %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7
{
  v9 = [a3 guid];
  v8 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:v9 account:v8];
}

- (void)sendDeliveredQuietlyReceiptForMessage:(id)a3 forIncomingMessageFromIDSID:(id)a4 toChatGuid:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 withWillSendToDestinationsHandler:(id)a8
{
  v10 = [a3 guid];
  v9 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:v10 account:v9];
}

- (void)sendNotifyRecipientCommandForMessage:(id)a3 toChatGuid:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v8 = [a3 guid];
  v7 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:v8 account:v7];
}

- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v8 = [a3 guid];
  v7 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:v8 account:v7];
}

- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v9 = a7;
  v10 = [a3 guid];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:v10 account:v9];
}

- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v8 = [a3 guid];
  v7 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:v8 account:v7];
}

- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A7C();
  }
}

- (void)sendDeliveryReceiptForMessageID:(id)a3 toID:(id)a4 deliveryContext:(id)a5 needsDeliveryReceipt:(id)a6 callerID:(id)a7 account:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not sending delivery receipt", v20, 2u);
    }
  }
}

- (void)_blastDoorProcessingWithIMMessageItem:(id)a3 chat:(id)a4 account:(id)a5 fromToken:(id)a6 fromIDSID:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 participants:(id)a10 groupName:(id)a11 groupID:(id)a12 isFromMe:(BOOL)a13 isLastFromStorage:(BOOL)a14 isFromStorage:(BOOL)a15 batchID:(id)a16 hideLockScreenNotification:(BOOL)a17 wantsCheckpointing:(BOOL)a18 needsDeliveryReceipt:(id)a19 messageBalloonPayloadAttachmentDictionary:(id)a20 inlineAttachments:(id)a21 attributionInfoArray:(id)a22 nicknameDictionary:(id)a23 availabilityVerificationRecipientChannelIDPrefix:(id)a24 availabilityVerificationRecipientEncryptionValidationToken:(id)a25 availabilityOffGridRecipientSubscriptionValidationToken:(id)a26 availabilityOffGridRecipientEncryptionValidationToken:(id)a27 idsService:(id)a28 messageContext:(id)a29 isFromTrustedSender:(BOOL)a30 isFromSnapTrustedSender:(BOOL)a31 wasContextUsed:(BOOL)a32 isBlackholed:(BOOL)a33 shouldTrackForRequery:(BOOL)a34 isFiltered:(int64_t)a35 spamDetectionSource:(int64_t)a36 completionBlock:(id)a37
{
  v73 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v42 = a9;
  v43 = a10;
  v61 = a11;
  v62 = a12;
  v63 = a16;
  v64 = a19;
  v65 = a20;
  v66 = a21;
  v67 = a22;
  v68 = a23;
  v69 = a24;
  v70 = a25;
  v44 = a26;
  v45 = a27;
  v46 = a28;
  v47 = a29;
  v48 = a37;
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = v43;
      v51 = [(IMDServiceSession *)self service];
      v52 = [v51 internalName];
      *buf = 138543362;
      v72 = v52;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Not handling, blastdoor not supported in %{public}@ yet", buf, 0xCu);

      v43 = v50;
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)requestGroupPhotoIfNecessary:(id)a3 incomingParticipantVersion:(int64_t)a4 incomingGroupPhotoCreationTime:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 messageIsFromStorage:(BOOL)a8
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not requesting group photo, subclass for iMessage should handle", v16, 2u);
    }
  }
}

- (void)setTranscriptBackground:(id)a3 andSendToChatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 transferID:(id)a6 isRefresh:(BOOL)a7
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not setting transcript background, subclass for iMessage should handle.", v13, 2u);
    }
  }
}

- (void)requestTranscriptBackgroundIfNecessary:(id)a3 incomingVersion:(unint64_t)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 messageIsFromStorage:(BOOL)a7
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not requesting transcript background, subclass for iMessage should handle.", v13, 2u);
    }
  }
}

- (void)requestTranscriptBackgroundIfNecessary:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not requesting transcript background, subclass for iMessage should handle.", v12, 2u);
    }
  }
}

- (void)receiveIncomingBlastdoorBackgroundCommand:(id)a3 for:(id)a4 sender:(id)a5 senderContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not handling incoming transcript background command, subclass for iMessage should handle.", v14, 2u);
    }
  }
}

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not re-fetching transcript background, subclass for iMessage should handle.", v6, 2u);
    }
  }
}

- (void)sendLocationSharingInfo:(id)a3 toID:(id)a4 completionBlock:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Service session %@ does not support message fetching", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)trackTimeSensitiveContentInMessageItem:(id)a3 chat:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDServiceSession *)self otcUtilities];
  v9 = [v6 body];
  v10 = [v6 sender];
  v11 = [v6 guid];
  v12 = [v8 createOTCFromMessageBody:v9 sender:v10 guid:v11];

  if (v12)
  {
    v13 = +[IMDOneTimeCodeManager sharedInstance];
    [v13 startTrackingCode:v12];

    v14 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v14 trackEvent:*MEMORY[0x277D1A238]];
  }

  v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v16 = [v15 isPriorityMessagesEnabled];

  if (v16)
  {
    if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled])
    {
      if (v12 && (([MEMORY[0x277D1AB08] timeSensitivePriorityEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D1AB08], "verificationCodesPriorityEnabled")))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v6 guid];
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: onetime pass code", buf, 0xCu);
        }

        goto LABEL_35;
      }

      v19 = [v7 filterCategory];
      if (v19 == 4)
      {
        if ([MEMORY[0x277D1AB08] transactionsPriorityEnabled])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_36;
          }

          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v22 = [v6 guid];
            *buf = 138412290;
            v35 = v22;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category transactional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (v19 == 3)
      {
        if ([MEMORY[0x277D1AB08] promotionsPriorityEnabled])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_36;
          }

          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v21 = [v6 guid];
            *buf = 138412290;
            v35 = v21;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category promotional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (v19 == 1 && [MEMORY[0x277D1AB08] personalPriorityEnabled])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = [v6 guid];
          *buf = 138412290;
          v35 = v20;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category unknown sender", buf, 0xCu);
        }

        goto LABEL_35;
      }
    }

    v23 = [MEMORY[0x277D19268] sharedInstance];
    if ([v23 isInternalInstall])
    {
      v24 = [MEMORY[0x277CBEBD0] messagesAppDomain];
      v25 = [v24 BOOLForKey:@"ForcePriorityMessage"];

      if (v25)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v26 = [v6 guid];
          *buf = 138412290;
          v35 = v26;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: internal bypass", buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        v27 = [v6 time];
        if (v27)
        {
          [v6 setIsTimeSensitive:1];
          v28 = +[IMDMessageStore sharedInstance];
          LOBYTE(v33) = 0;
          v29 = [v28 storeMessage:v6 forceReplace:1 modifyError:0 modifyFlags:1 flagMask:0 updateMessageCache:1 calculateUnreadCount:v33];

          [v7 updateTimeSensitiveExpirationDateWithMessageTime:v27 hasOneTimeCode:v12 != 0];
        }

        else
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D8ABC(v6);
          }
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = [v6 guid];
        *buf = 138412290;
        v35 = v30;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "No time sensitive content found for message.guid: %@", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

LABEL_47:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveErrorMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5
{
  v17 = a5;
  v16 = a4;
  v7 = a4;
  v8 = a3;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v16 style:&v17];
  v9 = v16;

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = [v10 initWithObjectsAndKeys:{v8, *MEMORY[0x277CCA450], 0}];

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = [v12 initWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v11];
  if (![(IMDServiceSession *)self isAwaitingStorageTimer])
  {
    v14 = [(IMDServiceSession *)self broadcasterForChatListeners];
    v15 = [(IMDServiceSession *)self accountID];
    [v14 account:v15 chat:v9 style:v17 chatProperties:0 error:v13];
  }
}

- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)a3 account:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  v37 = v6;
  v38 = [(IMDServiceSession *)self chatForChatIdentifier:v6 style:45 updatingAccount:1];
  if (v38)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [(IMDServiceSession *)self service];
    v9 = [v8 internalName];
    v36 = [v7 lastIncomingMessageForChatWithIdentifier:v6 chatStyle:45 onService:v9];

    v10 = [v36 time];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v13 = v12;

    v33 = v13;
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", *MEMORY[0x277D19F88], v13];
    v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC38]];
    v14 = objc_alloc(MEMORY[0x277D18ED8]);
    v15 = [v38 guid];
    v16 = [v14 initWithAssociatedChatGUID:v15];

    v17 = MEMORY[0x277CCA920];
    v47[0] = v35;
    v47[1] = v34;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];
    [v16 setPredicate:v19];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v21)
    {
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v40 + 1) + 8 * i), 0);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
            if ([v25 expectedOffGridCapableDeliveries] && (objc_msgSend(v25, "isRead") & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = [v25 guid];
                  *buf = 138412290;
                  v45 = v28;
                  _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Updating pending flag for %@", buf, 0xCu);
                }
              }

              [v25 setIsPendingSatelliteSend:1];
              v29 = +[IMDMessageStore sharedInstance];
              v26 = [v29 storeMessage:v25 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

              v30 = [(IMDServiceSession *)self broadcasterForChatListeners];
              v31 = [v39 accountID];
              [v30 account:v31 chat:0 style:0 messageUpdated:v26];
            }

            else
            {
              v26 = v25;
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v21);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)a3 account:(id)a4
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = a4;
  v29 = v6;
  v30 = [(IMDServiceSession *)self chatForChatIdentifier:v6 style:45 updatingAccount:1];
  if (v30)
  {
    v7 = MEMORY[0x277CBEC38];
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19FB0], MEMORY[0x277CBEC38]];
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], v7];
    v8 = objc_alloc(MEMORY[0x277D18ED8]);
    v9 = [v30 guid];
    v10 = [v8 initWithAssociatedChatGUID:v9];

    v11 = MEMORY[0x277CCA920];
    v39[0] = v28;
    v39[1] = v27;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];
    [v10 setPredicate:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v15)
    {
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v32 + 1) + 8 * i), 0);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = [v19 guid];
                *buf = 138412290;
                v37 = v21;
                _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Clearing pending flag for %@", buf, 0xCu);
              }
            }

            [v19 setIsPendingSatelliteSend:0];
            [v19 setExpectedOffGridCapableDeliveries:0];
            v22 = +[IMDMessageStore sharedInstance];
            v23 = [v22 storeMessage:v19 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

            v24 = [(IMDServiceSession *)self broadcasterForChatListeners];
            v25 = [v31 accountID];
            [v24 account:v25 chat:0 style:0 messageUpdated:v23];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v15);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)a3 forMessageGUID:(id)a4 partIndex:(int64_t)a5 previousMessage:(id)a6 backwardCompatibilityMessageGUID:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  if ([v10 count])
  {
    v13 = +[IMDMessageStore sharedInstance];
    v14 = [v13 messageWithGUID:v11];
    if (v14)
    {
      v15 = v14;
      v49 = a5;
      v16 = [v14 messageSummaryInfo];
      v17 = v16;
      v18 = MEMORY[0x277CBEC10];
      if (v16)
      {
        v18 = v16;
      }

      v19 = v18;

      v20 = [v19 mutableCopy];
      v21 = *MEMORY[0x277D1A018];
      v22 = [v19 objectForKeyedSubscript:*MEMORY[0x277D1A018]];

      v23 = MEMORY[0x277CBEBF8];
      if (v22)
      {
        v23 = v22;
      }

      v24 = v23;

      v25 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v24];
      [v25 addObjectsFromArray:v10];
      v26 = [v25 array];
      [v20 setObject:v26 forKeyedSubscript:v21];
      v48 = v20;
      v27 = [v20 copy];
      [v15 setMessageSummaryInfo:v27];

      if ([v12 length])
      {
        v47 = v26;
        v28 = [v15 historyForMessagePart:v49];
        if ([v28 count])
        {
          v29 = [v28 mutableCopy];
          v30 = [v29 lastObject];
          v44 = v25;
          v31 = objc_alloc(MEMORY[0x277D1AA90]);
          [v30 messagePartText];
          v32 = v45 = v13;
          v33 = [v30 messagePartTranslation];
          [v30 dateSent];
          v34 = v46 = v12;
          v35 = [v31 initWithMessagePartText:v32 messagePartTranslation:v33 dateSent:v34 backwardCompatibleMessageGUID:v46];

          v13 = v45;
          [v29 removeLastObject];
          [v29 addObject:v35];
          v36 = [v29 copy];
          [v15 setHistory:v36 forMessagePart:v49];

          v12 = v46;
          v25 = v44;
        }

        v26 = v47;
      }

      v37 = [v13 storeMessage:v15 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

      if ([(IMDServiceSession *)self isAwaitingStorageTimer])
      {
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:v11];
      }

      else
      {
        [(IMDServiceSession *)self account];
        v39 = v38 = v12;
        [v39 accountID];
        v40 = v25;
        v42 = v41 = v13;
        v43 = [(IMDServiceSession *)self broadcasterForChatListeners];
        [v43 account:v42 chat:0 style:0 messageUpdated:v37];

        v13 = v41;
        v25 = v40;

        v12 = v38;
      }

      sub_22B67EEDC(v11);
    }

    else
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8B44();
      }
    }
  }
}

- (void)didReceiveMessageEditingSendFailure:(unsigned int)a3 forMessageGUID:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6
{
  v9 = a4;
  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:v9];
  if (v11)
  {
    v12 = v11;
    if (a6 == 2)
    {
      [v11 addFailedRetractPartIndex:a5];
    }

    else if (a6 == 1)
    {
      [v11 addFailedEditPartIndex:a5];
    }

    v13 = [v10 storeMessage:v12 forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

    if ([(IMDServiceSession *)self isAwaitingStorageTimer])
    {
      [(IMDServiceSession *)self noteSuppressedMessageUpdate:v9];
    }

    else
    {
      v14 = [(IMDServiceSession *)self account];
      v15 = [v14 accountID];
      v16 = [(IMDServiceSession *)self broadcasterForChatListeners];
      [v16 account:v15 chat:0 style:0 messageUpdated:v13];
    }

    sub_22B67EEDC(v9);
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8BB4();
    }
  }
}

- (void)didSendMessageEditForMessageGUID:(id)a3
{
  v4 = a3;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:v4];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 messageSummaryInfo];
    v9 = v8;
    v10 = MEMORY[0x277CBEC10];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = *MEMORY[0x277D1A010];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D1A010]];
    v14 = *MEMORY[0x277D1A038];
    v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D1A038]];
    if ([v13 count] || objc_msgSend(v15, "count"))
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8C24();
      }

      v17 = [v11 mutableCopy];
      [v17 removeObjectForKey:v12];
      [v17 removeObjectForKey:v14];
      v18 = [v17 copy];
      [v7 setMessageSummaryInfo:v18];

      v19 = [v5 storeMessage:v7 forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

      if ([(IMDServiceSession *)self isAwaitingStorageTimer])
      {
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:v4];
      }

      else
      {
        v20 = [(IMDServiceSession *)self account];
        v21 = [v20 accountID];
        v22 = [(IMDServiceSession *)self broadcasterForChatListeners];
        [v22 account:v21 chat:0 style:0 messageUpdated:v19];
      }

      sub_22B67EEDC(v4);
    }

    else
    {
      v19 = v7;
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8C94();
    }
  }
}

- (void)didSendMessageReadReceiptForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:v4 account:v5];
}

- (void)didSendMessageReadReceiptForMessageID:(id)a3 account:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v28, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 supportsDatabase];

    if (v10)
    {
      if (!v7)
      {
        v7 = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:v6];

      v13 = [v12 service];
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];

      if (!v12 || !v13 || !v15)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v28 = 138412290;
            v29 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for read receipt: %@", &v28, 0xCu);
          }
        }

        v17 = [v12 timeRead];
        v18 = v17 == 0;

        if (v18)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          v19 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          [v12 setTimeRead:v19];

          v20 = +[IMDMessageStore sharedInstance];
          v21 = [v20 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x2000];

          v12 = v21;
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v28 = 138412290;
            v29 = v12;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Updated message: %@", &v28, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          v23 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:v23];
        }

        else
        {
          v23 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v25 = [v7 accountID];
          [v23 account:v25 chat:0 style:0 messageUpdated:v12];
        }

        v26 = [v12 guid];
        sub_22B67EEDC(v26);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v28 = 138412546;
          v29 = v13;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to mark send of read receipt, message is on a different service: %@ vs %@", &v28, 0x16u);
        }
      }

      else
      {
LABEL_26:
        if (!IMOSLoggingEnabled())
        {
LABEL_36:

          goto LABEL_37;
        }

        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = v6;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to mark send of read receipt, no messages found for guid: %@", &v28, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:v4 account:v5];
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)a3 account:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v27, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 supportsDatabase];

    if (v10)
    {
      if (!v7)
      {
        v7 = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:v6];

      v13 = [v12 service];
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];

      if (!v12 || !v13 || !v15)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for delivered quietly receipt: %@", &v27, 0xCu);
          }
        }

        if (([v12 isFromMe] & 1) == 0 && (objc_msgSend(v12, "wasDeliveredQuietly") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v12 guid];
              v27 = 138412290;
              v28 = v18;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting was delivered quietly flag on local device for message: %@", &v27, 0xCu);
            }
          }

          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x400000000}];
          v19 = +[IMDMessageStore sharedInstance];
          v20 = [v19 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x400000000];

          v12 = v20;
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Updated message: %@", &v27, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          v22 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:v22];
        }

        else
        {
          v22 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v24 = [v7 accountID];
          [v22 account:v24 chat:0 style:0 messageUpdated:v12];
        }

        v25 = [v12 guid];
        sub_22B67EEDC(v25);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = v13;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly, message is on a different service: %@ vs %@", &v27, 0x16u);
        }
      }

      else
      {
LABEL_31:
        if (!IMOSLoggingEnabled())
        {
LABEL_41:

          goto LABEL_42;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v6;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly, no messages found for guid: %@", &v27, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:v4 account:v5];
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)a3 account:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v27, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 supportsDatabase];

    if (v10)
    {
      if (!v7)
      {
        v7 = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:v6];

      v13 = [v12 service];
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];

      if (!v12 || !v13 || !v15)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for notify recipient command: %@", &v27, 0xCu);
          }
        }

        if (([v12 isFromMe] & 1) == 0 && (objc_msgSend(v12, "didNotifyRecipient") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v12 guid];
              v27 = 138412290;
              v28 = v18;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting did notify recipient flag on local device for message: %@", &v27, 0xCu);
            }
          }

          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x800000000}];
          v19 = +[IMDMessageStore sharedInstance];
          v20 = [v19 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x800000000];

          v12 = v20;
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Updated message: %@", &v27, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          v22 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:v22];
        }

        else
        {
          v22 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v24 = [v7 accountID];
          [v22 account:v24 chat:0 style:0 messageUpdated:v12];
        }

        v25 = [v12 guid];
        sub_22B67EEDC(v25);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = v13;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message notified command, message is on a different service: %@ vs %@", &v27, 0x16u);
        }
      }

      else
      {
LABEL_31:
        if (!IMOSLoggingEnabled())
        {
LABEL_41:

          goto LABEL_42;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v6;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message notified command, no messages found for guid: %@", &v27, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:v4 account:v5];
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)a3 account:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v32, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 supportsDatabase];

    if (v10)
    {
      if (!v7)
      {
        v7 = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:v6];

      v13 = [v12 service];
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];

      if (!v12 || !v13 || !v15)
      {
        goto LABEL_25;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v32 = 138412290;
            v33 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for played receipt: %@", &v32, 0xCu);
          }
        }

        if ([v12 isExpirable] && (objc_msgSend(v12, "isFromMe") & 1) == 0 && objc_msgSend(v12, "expireState") <= 0)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v12 guid];
              v32 = 138412290;
              v33 = v31;
              _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Expire received message played on local device: %@", &v32, 0xCu);
            }
          }

          [v12 setExpireState:1];
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 = [v12 timePlayed];
        v19 = v18 == 0;

        if (v19)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x400000}];
          v21 = [MEMORY[0x277CBEAA8] date];
          [v12 setTimePlayed:v21];
        }

        else if (!v17)
        {
          goto LABEL_35;
        }

        v22 = +[IMDMessageStore sharedInstance];
        v23 = [v22 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x400000];

        v12 = v23;
LABEL_35:
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v32 = 138412290;
            v33 = v12;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Updated message: %@", &v32, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          v25 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:v25];
        }

        else
        {
          v25 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v26 = [v7 accountID];
          [v25 account:v26 chat:0 style:0 messageUpdated:v12];
        }

        if (v17)
        {
          v27 = [v12 guid];
          [(IMDServiceSession *)self _updateExpireStateForMessageGUID:v27];
        }

        v28 = [v12 guid];
        sub_22B67EEDC(v28);

        goto LABEL_45;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_45;
        }

        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v32 = 138412546;
          v33 = v13;
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to mark send of played receipt, message is on a different service: %@ vs %@", &v32, 0x16u);
        }
      }

      else
      {
LABEL_25:
        if (!IMOSLoggingEnabled())
        {
LABEL_45:

          goto LABEL_46;
        }

        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v32 = 138412290;
          v33 = v6;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to mark send of played receipt, no messages found for guid: %@", &v32, 0xCu);
        }
      }

      goto LABEL_45;
    }
  }

LABEL_46:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessageSavedReceiptForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:v4 account:v5];
}

- (void)didSendMessageSavedReceiptForMessageID:(id)a3 account:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v25, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 supportsDatabase];

    if (v10)
    {
      if (!v7)
      {
        v7 = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:v6];

      v13 = [v12 service];
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];

      if (!v12 || !v13 || !v15)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v25 = 138412290;
            v26 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for saved receipt: %@", &v25, 0xCu);
          }
        }

        if ([v12 expireState] != 3)
        {
          [v12 setExpireState:3];
          v17 = +[IMDMessageStore sharedInstance];
          v18 = [v17 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0];

          v12 = v18;
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v25 = 138412290;
            v26 = v12;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Updated message: %@", &v25, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          v20 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:v20];
        }

        else
        {
          v20 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v22 = [v7 accountID];
          [v20 account:v22 chat:0 style:0 messageUpdated:v12];
        }

        v23 = [v12 guid];
        sub_22B67EEDC(v23);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:v15 canProcessMessagesFromServiceNamed:v13])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v25 = 138412546;
          v26 = v13;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Unable to mark send of saved receipt, message is on a different service: %@ vs %@", &v25, 0x16u);
        }
      }

      else
      {
LABEL_26:
        if (!IMOSLoggingEnabled())
        {
LABEL_36:

          goto LABEL_37;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = v6;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Unable to mark send of saved receipt, no messages found for guid: %@", &v25, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)didSendSyndicationActionItem:(id)a3 forChat:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(IMDServiceSession *)self service];
    v9 = [v8 supportsDatabase];

    if (v9)
    {
      if (!v7)
      {
        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D8D04();
        }

        goto LABEL_32;
      }

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v7 guid];
          v31 = 138412546;
          v32 = v6;
          v33 = 2112;
          v34 = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received didSendSyndicationAction: %@ for Chat: %@", &v31, 0x16u);
        }
      }

      v12 = [v6 syndicatedItemType];
      if (v12 == 2)
      {
        v13 = v6;
        v22 = [v7 updateDonationStateWithSyndicationAction:v13];
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v13 isAutoDonatingMessages];
            v25 = [v13 chatGUID];
            v26 = v25;
            v27 = @"NO";
            if (v22)
            {
              v28 = @"YES";
            }

            else
            {
              v28 = @"NO";
            }

            v31 = 138412802;
            if (v24)
            {
              v27 = @"YES";
            }

            v32 = v27;
            v33 = 2112;
            v34 = v28;
            v35 = 2112;
            v36 = v25;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Updated syndication state to: %@ was successful: %@ for chat with GUID: %@", &v31, 0x20u);
          }
        }

        goto LABEL_32;
      }

      if (v12 == 1)
      {
        v13 = v6;
        v14 = +[IMDMessageStore sharedInstance];
        v15 = [v14 updateSyndicatedMessageWithSyndicationMessageAction:v13];

        v16 = IMOSLoggingEnabled();
        if (v15)
        {
          if (v16)
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v13 messagePartGUID];
              v31 = 138412546;
              v32 = v18;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Updated message: %@ with action item: %@", &v31, 0x16u);
            }
          }

          v19 = [(IMDServiceSession *)self broadcasterForChatListeners];
          v20 = [v7 accountID];
          v21 = [v7 chatIdentifier];
          [v19 account:v20 chat:v21 style:objc_msgSend(v7 messageUpdated:{"style"), v15}];
        }

        else if (v16)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v13;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Message not update updated for SyndicationAction - doing nothing with syndication action: %@", &v31, 0xCu);
          }
        }

LABEL_32:
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMDServiceSession *)self account];
  LOBYTE(self) = [(IMDServiceSession *)self _didReceiveMessageDeliveryReceiptForMessageID:v7 attempts:0 date:v6 account:v8];

  return self;
}

- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)a3 attempts:(int64_t)a4 date:(id)a5 account:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v10;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "message: %@", buf, 0xCu);
    }
  }

  if (v10 && (-[IMDServiceSession service](self, "service"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 supportsDatabase], v14, v15))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B68277C;
    aBlock[3] = &unk_2787076C8;
    v16 = v10;
    v34 = v16;
    v35 = self;
    v28 = v11;
    v36 = v28;
    v17 = v12;
    v37 = v17;
    v29 = _Block_copy(aBlock);
    v18 = +[IMDMessageStore sharedInstance];
    v19 = [v18 hasStoredMessageWithGUID:v16];

    if (v19)
    {
      v20 = v29[2]();
    }

    else
    {
      v21 = IMOSLoggingEnabled();
      if (a4 >= 6)
      {
        if (v21)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v16;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v21)
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v16;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as delivered, trying again in a bit", buf, 0xCu);
          }
        }

        if (a4 == 5)
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
            }
          }
        }

        else if (a4 == 4 && IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
          }
        }

        v30 = v16;
        v31 = v28;
        v32 = v17;
        im_dispatch_after();
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_handleScheduledMessageFailure:(id)a3
{
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v3 guid];
  v6 = [v4 messageWithGUID:v5];

  if ([v6 scheduleType] == 2)
  {
    v7 = [v6 scheduleState];
    switch(v7)
    {
      case 3:
        [v3 setScheduleType:{objc_msgSend(v6, "scheduleType")}];
        [v3 setScheduleState:{objc_msgSend(v6, "scheduleState")}];
        v17 = [v6 messageSummaryInfo];
        [v3 setMessageSummaryInfo:v17];

        v18 = [v6 body];
        [v3 setBody:v18];

        [v3 setErrorCode:{objc_msgSend(v6, "errorCode")}];
        break;
      case 2:
        [v3 setErrorCode:0];
        v10 = [v3 editedPartIndexes];
        [v3 setFailedEditPartIndexes:v10];

        v11 = [v3 retractedPartIndexes];
        [v3 setFailedRetractPartIndexes:v11];

        v12 = [v3 retractedPartIndexes];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = sub_22B683360;
        v19[3] = &unk_278707718;
        v13 = v3;
        v20 = v13;
        [v12 enumerateIndexesUsingBlock:v19];

        v14 = [v13 retractedPartIndexes];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [v13 scheduledMessageOriginalTransferGUIDs];
          [v13 setFileTransferGUIDs:v16];
        }

        break;
      case 1:
        [v3 setScheduleState:4];
        v8 = [v3 guid];
        [IMDScheduledMessageCoordinator notifyPeersWithScheduledMessageUpdate:v8 scheduleState:4];

        break;
    }
  }

  else
  {
    [v3 setScheduleType:{objc_msgSend(v6, "scheduleType")}];
    [v3 setScheduleState:{objc_msgSend(v6, "scheduleState")}];
    [v3 setErrorCode:{objc_msgSend(v6, "errorCode")}];
    v9 = [v6 messageSummaryInfo];
    [v3 setMessageSummaryInfo:v9];
  }
}

- (void)_didReceiveMessageReadForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v10;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v10 && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B683DB0;
      aBlock[3] = &unk_278702F50;
      v17 = v10;
      v42 = v17;
      v43 = self;
      v36 = v11;
      v44 = v36;
      v18 = v13;
      v45 = v18;
      v38 = _Block_copy(aBlock);
      v19 = +[IMDMessageStore sharedInstance];
      v20 = [v19 hasStoredMessageWithGUID:v17];

      if (v20)
      {
        v38[2](v38);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (a5 >= 6)
        {
          if (v22)
          {
            v26 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v17;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
            }
          }

          v27 = [(IMDServiceSession *)self _IDSService];
          [v27 _IMDTrackMetric:10401 ForMessageGUID:v17];
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as read, trying again in a bit", buf, 0xCu);
            }
          }

          v24 = [(IMDServiceSession *)self _IDSService];
          [v24 _IMDTrackMetric:10401 ForMessageGUID:v17];

          if (a5 == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (a5 == 4 && IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v39 = v17;
          v40 = v37;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else
    {
      if (v13)
      {
        v13[2](v13);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [(IMDServiceSession *)self service];
          v31 = [v30 supportsDatabase];
          v32 = [(IMDServiceSession *)self service];
          v33 = v32;
          v34 = @"NO";
          *buf = 138412802;
          v47 = v10;
          v48 = 2112;
          if (v31)
          {
            v34 = @"YES";
          }

          v49 = v34;
          v50 = 2112;
          v51 = v32;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Returning early in _didReceiveMessageReadForMessageID because messageID: %@, [[self service] supportsDatabase]: %@, service: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    if (v12)
    {
      v12[2](v12);
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Returning early in _didReceiveMessageReadForMessageID because !_activated", buf, 2u);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveMessageReadReceiptForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v10 && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B684D2C;
      aBlock[3] = &unk_278702F50;
      v17 = v10;
      v32 = v17;
      v33 = self;
      v28 = v11;
      v34 = v28;
      v18 = v13;
      v35 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (a5 >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as read, trying again in a bit", buf, 0xCu);
            }
          }

          if (a5 == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (a5 == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v29 = v17;
          v30 = v28;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (v12)
  {
    v12[2](v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessageReadReceiptForMessageID:(id)a3 date:(id)a4 completionBlock:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (self->_activated)
  {
    [(IMDServiceSession *)self _didReceiveMessageReadReceiptForMessageID:v11 date:v8 attempts:0 completionBlock:v9];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

- (void)_didReceiveMessagePlayedForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v10 && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6857B8;
      aBlock[3] = &unk_278702F50;
      v17 = v10;
      v32 = v17;
      v33 = self;
      v28 = v11;
      v34 = v28;
      v18 = v13;
      v35 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (a5 >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as played, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as played, trying again in a bit", buf, 0xCu);
            }
          }

          if (a5 == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (a5 == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v29 = v17;
          v30 = v28;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (v12)
  {
    v12[2](v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)a3 date:(id)a4 attempts:(int64_t)a5 completionBlock:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v10 && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6867AC;
      aBlock[3] = &unk_278702F50;
      v17 = v10;
      v32 = v17;
      v33 = self;
      v28 = v11;
      v34 = v28;
      v18 = v13;
      v35 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (a5 >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as played, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as played, trying again in a bit", buf, 0xCu);
            }
          }

          if (a5 == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (a5 == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v29 = v17;
          v30 = v28;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (v12)
  {
    v12[2](v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessagePlayedReceiptForMessageID:(id)a3 date:(id)a4 completionBlock:(id)a5
{
  if (self->_activated)
  {
    MEMORY[0x2821F9670](self, sel__didReceiveMessagePlayedReceiptForMessageID_date_attempts_completionBlock_);
  }
}

- (void)_didReceiveMessageSavedForMessageID:(id)a3 ofType:(int64_t)a4 forChat:(id)a5 fromHandle:(id)a6 fromMe:(BOOL)a7 date:(id)a8 attempts:(int64_t)a9 account:(id)a10 completionBlock:(id)a11
{
  v47 = a7;
  v74 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v48 = a5;
  v50 = a6;
  v49 = a8;
  v51 = a10;
  v16 = a11;
  v17 = v16;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v15;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v15 && (-[IMDServiceSession service](self, "service"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 supportsDatabase], v19, (v20 & 1) != 0))
    {
      if (!v51)
      {
        v51 = [(IMDServiceSession *)self account];
      }

      v21 = [v50 _stripFZIDPrefix];
      v22 = v47;
      if (!v47)
      {
        v23 = +[IMDMessageStore sharedInstance];
        v24 = [v23 messageActionItemsForOriginalMessageGUID:v15];

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v26)
        {
          v27 = *v68;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v68 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = [*(*(&v67 + 1) + 8 * i) sender];
              v30 = [v29 isEqualToString:v21];

              if (v30)
              {

                if (IMOSLoggingEnabled())
                {
                  v39 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "   Message was already marked as saved, ignoring", buf, 2u);
                  }
                }

                if (v17)
                {
                  v17[2](v17);
                }

                goto LABEL_54;
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v67 objects:v71 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v22 = v47;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B687370;
      aBlock[3] = &unk_278707768;
      v31 = v15;
      v66 = v22;
      v58 = v31;
      v59 = self;
      v43 = v48;
      v60 = v43;
      v61 = v21;
      v45 = v49;
      v62 = v45;
      v65 = a4;
      v44 = v51;
      v63 = v44;
      v32 = v17;
      v64 = v32;
      v33 = _Block_copy(aBlock);
      v34 = +[IMDMessageStore sharedInstance];
      v35 = [v34 hasStoredMessageWithGUID:v31];

      if (v35 | !v47)
      {
        v33[2](v33);
      }

      else
      {
        v36 = IMOSLoggingEnabled();
        if (a9 >= 6)
        {
          if (v36)
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v73 = v31;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as saved, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v36)
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v73 = v31;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as saved, trying again in a bit", buf, 0xCu);
            }
          }

          if (a9 == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v41 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (a9 == 4 && IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v52 = v31;
          v53 = v43;
          v54 = v50;
          v55 = v45;
          v56 = v44;
          im_dispatch_after();
        }

        if (v32)
        {
          v32[2](v32);
        }
      }

LABEL_54:
    }

    else if (v17)
    {
      v17[2](v17);
    }
  }

  else if (v16)
  {
    v16[2](v16);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)didStartSendingMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v49 = a5;
  v12 = a6;
  v13 = v12;
  if (!self->_activated)
  {
    goto LABEL_69;
  }

  if (!v12)
  {
    v13 = [(IMDServiceSession *)self account];
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v10;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
    }
  }

  if (!v10)
  {
LABEL_69:
    v15 = v11;
    goto LABEL_70;
  }

  v48 = v11;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v48 style:&v49];
  v15 = v48;

  v16 = [(IMDServiceSession *)self service];
  v47 = [v16 supportsDatabase];

  v45 = [v10 isTypingMessage];
  v44 = [v10 isSuggestedActionResponse];
  v46 = [v10 isRCSEncryptionTest];
  v17 = [v10 errorCode];
  if (v47)
  {
    v18 = +[IMDMessageStore sharedInstance];
    v19 = [v10 guid];
    v20 = [v18 messageWithGUID:v19];
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v10;
  }

  v22 = v21;
  if (![(IMDServiceSession *)self isReplicating]|| ![(IMDServiceSession *)self _canUpgradeExistingMessageItem:v20 replacementReplicatedMessageItem:v10])
  {
    goto LABEL_22;
  }

  v23 = +[IMDMessageStore sharedInstance];
  v24 = [v20 guid];
  v25 = [v23 wasMessageDeduplicatedWithGUID:v24];

  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v10 guid];
        *buf = 138412290;
        v51 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade but existing message was already marked as deduplicated", buf, 0xCu);
      }
    }

LABEL_22:
    v29 = v22;
    goto LABEL_23;
  }

  if (v26)
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v10 guid];
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
    }
  }

  v29 = v10;

  v36 = +[IMDMessageStore sharedInstance];
  [v36 markMessageAsDeduplicated:v29];

LABEL_23:
  if (!v17 && v20 && [v20 isFinished] && (objc_msgSend(v10, "isFinished") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v33 = [v10 guid];
        *buf = 138412290;
        v51 = v33;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

  else if ([v10 isSuggestedActionResponse])
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "[didStartSendingMessage] Not notifying for suggested action response.", buf, 2u);
      }

LABEL_51:
    }
  }

  else if (v46)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "[didStartSendingMessage] Not notifying for RCS Encryption test messages.", buf, 2u);
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (!v17 || ![v10 isTypingMessage])
    {
      [v29 setErrorCode:{objc_msgSend(v10, "errorCode")}];
      if (v20 || ((v45 | v44) & 1) == 0) && (v47)
      {
        v32 = [v20 scheduleType] == 2 && objc_msgSend(v20, "scheduleState") != 0;
        v38 = +[IMDMessageStore sharedInstance];
        v37 = [v38 storeMessage:v29 forceReplace:v32 modifyError:-[IMDServiceSession _shouldBroadcastSendFailures](self modifyFlags:"_shouldBroadcastSendFailures") flagMask:{1, 12}];
      }

      else
      {
        v37 = v29;
      }

      if ([v10 isBeingRetried])
      {
        [v37 setIsBeingRetried:1];
      }

      v39 = [v10 retryToParticipant];

      if (v39)
      {
        v40 = [v10 retryToParticipant];
        [v37 setRetryToParticipant:v40];
      }

      v41 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:v49 account:v13 updatingAccount:1];
      if (((v45 | v44) & (v20 == 0)) == 0 && ((v47 ^ 1) & 1) == 0)
      {
        v42 = +[IMDChatRegistry sharedInstance];
        [v42 addMessage:v10 toChat:v41 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
      }

      goto LABEL_68;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v10 guid];
        *buf = 138412290;
        v51 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

LABEL_68:

LABEL_70:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8
{
  v155 = a8;
  v186[2] = *MEMORY[0x277D85DE8];
  v159 = a3;
  v13 = a4;
  v173 = a5;
  v14 = a6;
  v156 = a7;
  if (self->_activated)
  {
    if (!v14)
    {
      v14 = [(IMDServiceSession *)self account];
    }

    v158 = v14;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v176 = v159;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (v159)
    {
      v172 = v13;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v172 style:&v173];
      v157 = v172;

      v16 = [(IMDServiceSession *)self service];
      v151 = [v16 supportsDatabase];

      v17 = [(__CFString *)v159 isTypingMessage];
      v149 = [(__CFString *)v159 isSuggestedActionResponse];
      v18 = [(__CFString *)v159 isRCSEncryptionTest];
      v152 = [(__CFString *)v159 errorCode];
      v19 = [(__CFString *)v159 flags];
      if (v151)
      {
        v20 = +[IMDMessageStore sharedInstance];
        v21 = [(__CFString *)v159 guid];
        v22 = [v20 messageWithGUID:v21];
      }

      else
      {
        v22 = 0;
      }

      v23 = v159;
      v154 = v22;
      if (v22)
      {
        v23 = v22;
      }

      v24 = v23;
      if ([(IMDServiceSession *)self isReplicating]&& [(IMDServiceSession *)self _canUpgradeExistingMessageItem:v22 replacementReplicatedMessageItem:v159])
      {
        v25 = +[IMDMessageStore sharedInstance];
        v26 = [(__CFString *)v22 guid];
        v27 = [v25 wasMessageDeduplicatedWithGUID:v26];

        v28 = IMOSLoggingEnabled();
        if ((v27 & 1) == 0)
        {
          if (v28)
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = [(__CFString *)v159 guid];
              *buf = 138412290;
              v176 = v46;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
            }
          }

          v31 = v159;

          v47 = +[IMDMessageStore sharedInstance];
          [v47 markMessageAsDeduplicated:v31];

LABEL_24:
          if ([(__CFString *)v22 scheduleType]== 2 && [(__CFString *)v22 scheduleState])
          {
            v153 = v159;

            v32 = [(__CFString *)v22 cloudKitRecordID];
            if (v32)
            {
              v33 = [(__CFString *)v153 scheduleType]== 2;

              if (!v33)
              {
                [(__CFString *)v153 setCloudKitSyncState:0];
                v34 = [MEMORY[0x277D18EB0] synchronousDatabase];
                v35 = [(__CFString *)v154 guid];
                v36 = [(__CFString *)v154 cloudKitRecordID];
                [v34 addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:v35 recordID:v36];
              }
            }
          }

          else
          {
            v153 = v31;
          }

          if (!v152 && v154 && [(__CFString *)v154 isFinished]&& ([(__CFString *)v159 isFinished]& 1) == 0)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v48 = [(__CFString *)v159 guid];
              *buf = 138412290;
              v176 = v48;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
            }

            goto LABEL_49;
          }

          if ([(__CFString *)v159 isSuggestedActionResponse])
          {
            if (!IMOSLoggingEnabled())
            {
LABEL_221:

              goto LABEL_222;
            }

            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "[didSendMessage] Not notifying for suggested action response.", buf, 2u);
            }

LABEL_38:

            goto LABEL_221;
          }

          if (v18)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "[didSendMessage] Not notifying for RCS encryption test messages.", buf, 2u);
            }

            goto LABEL_38;
          }

          if (v152 && [(__CFString *)v159 isTypingMessage])
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = [(__CFString *)v159 guid];
              *buf = 138412290;
              v176 = v39;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
            }

LABEL_49:

            goto LABEL_221;
          }

          v147 = [(__CFString *)v153 time];
          v145 = [MEMORY[0x277CBEAA8] date];
          if (v147)
          {
            [v145 timeIntervalSinceDate:v147];
            v41 = v40;
            if (v40 > 0.0)
            {
              v42 = [MEMORY[0x277D1AAA8] sharedInstance];
              v43 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
              [v42 trackEvent:*MEMORY[0x277D1A348] withStatistic:v43];
            }
          }

          if (v152)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v153 toChat:v157 withStyle:v173 forAccount:v158];
            v44 = 4;
          }

          else
          {
            if (([(__CFString *)v153 flags]& 0x8000) == 0)
            {
              v49 = [(IMDServiceSession *)self service];
              v50 = [v49 internalName];
              v51 = [v50 isEqualToString:*MEMORY[0x277D1A610]];

              if (v51)
              {
                [(__CFString *)v153 setTime:v145];
              }
            }

            [(IMDServiceSession *)self _configureSessionInformationOnItem:v153 toChat:v157 withStyle:v173 forAccount:v158];
            if ([(IMDServiceSession *)self isReplicating])
            {
              v44 = 4;
            }

            else
            {
              v44 = 32772;
            }
          }

          [(__CFString *)v153 setFlags:[(__CFString *)v153 flags]| v44];
          if ((v19 & 0x80000000000) != 0)
          {
            [(__CFString *)v153 setFlags:[(__CFString *)v153 flags]| 0x80000000000];
          }

          if (!v152 && [(__CFString *)v153 isExpirable]&& [(__CFString *)v153 isFromMe]&& [(__CFString *)v153 expireState]<= 0)
          {
            HIDWORD(v144) = IMMessageItemShouldAutomaticallySave();
            v75 = IMOSLoggingEnabled();
            if (HIDWORD(v144))
            {
              if (v75)
              {
                v76 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                {
                  v77 = [(__CFString *)v153 guid];
                  *buf = 138412290;
                  v176 = v77;
                  _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "Automatically saving message sent from local device: %@", buf, 0xCu);
                }
              }

              v78 = 3;
            }

            else
            {
              if (v75)
              {
                v80 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                {
                  v81 = [(__CFString *)v153 guid];
                  *buf = 138412290;
                  v176 = v81;
                  _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "Expire message sent from local device: %@", buf, 0xCu);
                }
              }

              v78 = 1;
            }

            [(__CFString *)v153 setExpireState:v78];
            LODWORD(v144) = HIDWORD(v144) ^ 1;
          }

          else
          {
            v144 = 0;
          }

          [(__CFString *)v153 setErrorCode:[(__CFString *)v159 errorCode]];
          v146 = [(__CFString *)v159 consumedSessionPayloads];
          if (v156)
          {
            if (IMOSLoggingEnabled())
            {
              v52 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = [(__CFString *)v153 guid];
                *buf = 138412546;
                v176 = v53;
                v177 = 2112;
                v178 = v156;
                _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Updating date on message guid %@ to be: %@", buf, 0x16u);
              }
            }

            [(__CFString *)v153 setTime:v156];
          }

          v148 = [(IMDServiceSession *)self chatForChatIdentifier:v157 style:v173 account:v158 updatingAccount:1];
          v54 = [(__CFString *)v153 criticalMessagingAppName];
          v55 = [v54 length] == 0;

          v56 = [MEMORY[0x277D1A900] sharedManager];
          v57 = [v56 isMessagesTheDefaultTextApp];

          v58 = v17 | v149;
          if (v154 != 0 || ((v17 | v149) & 1) == 0) && ((v55 | v57) & 1) != 0 && (v151)
          {
            v59 = 0x2786FF000uLL;
            if ([(IMDServiceSession *)self isReplicating])
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = [(__CFString *)v154 isSent];
                  v62 = [(__CFString *)v153 isSent];
                  v63 = @"NO";
                  if (v61)
                  {
                    v64 = @"YES";
                  }

                  else
                  {
                    v64 = @"NO";
                  }

                  if (v62)
                  {
                    v63 = @"YES";
                  }

                  *buf = 138412546;
                  v176 = v64;
                  v177 = 2112;
                  v178 = v63;
                  _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "This is the replicating session. It should not modify sent state. Existing message sent: %@, messageToUpdate sent: %@", buf, 0x16u);
                }
              }

              v65 = 12;
            }

            else
            {
              v65 = 32780;
            }

            v66 = objc_alloc_init(IMDMessageStorageContext);
            [(IMDMessageStorageContext *)v66 setForceReplace:1];
            [(IMDMessageStorageContext *)v66 setModifyError:[(IMDServiceSession *)self _shouldBroadcastSendFailures]];
            [(IMDMessageStorageContext *)v66 setModifyFlags:1];
            [(IMDMessageStorageContext *)v66 setFlagMask:v65];
            [(IMDMessageStorageContext *)v66 setUpdateMessageCache:1];
            [(IMDMessageStorageContext *)v66 setChat:v148];
            v67 = +[IMDMessageStore sharedInstance];
            v171[0] = MEMORY[0x277D85DD0];
            v171[1] = 3221225472;
            v171[2] = sub_22B68A214;
            v171[3] = &unk_2787077B8;
            v171[4] = self;
            v150 = [v67 storeMessage:v153 context:v66 didReplaceBlock:v171];
          }

          else
          {
            v150 = v153;
            v59 = 0x2786FF000;
          }

          if ([(__CFString *)v159 isBeingRetried])
          {
            [(__CFString *)v150 setIsBeingRetried:1];
          }

          v68 = [(__CFString *)v159 retryToParticipant];

          if (v68)
          {
            v69 = [(__CFString *)v159 retryToParticipant];
            [(__CFString *)v150 setRetryToParticipant:v69];
          }

          if ((v58 & (v154 == 0)) == 0 && ((v151 ^ 1) & 1) == 0)
          {
            v70 = +[IMDChatRegistry sharedInstance];
            [v70 addMessage:v159 toChat:v148 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
          }

          if (!v148 || ![(__CFString *)v159 isFromMe]|| ([(__CFString *)v159 isTypingMessage]& 1) != 0 || ([(__CFString *)v159 isSuggestedActionResponse]& 1) != 0 || ([(__CFString *)v159 isRCSEncryptionTest]& 1) != 0)
          {
LABEL_142:
            if (IMOSLoggingEnabled())
            {
              v83 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v176 = v150;
                _os_log_impl(&dword_22B4CC000, v83, OS_LOG_TYPE_INFO, "Posting sent message: %@", buf, 0xCu);
              }
            }

            if (v146)
            {
              [(__CFString *)v150 setConsumedSessionPayloads:v146];
            }

            if (!v155 || ![(IMDServiceSession *)self isAwaitingStorageTimer])
            {
              v84 = [*(v59 + 2728) sharedInstance];
              v85 = [(__CFString *)v150 guid];
              v86 = [v84 messageWithGUID:v85];
              v87 = v86;
              v88 = v150;
              if (v86)
              {
                v88 = v86;
              }

              v89 = v88;

              v90 = [(IMDServiceSession *)self broadcasterForChatListeners];
              v91 = [v158 accountID];
              v92 = v173;
              v93 = [v148 groupID];
              v94 = [v148 personCentricID];
              [v90 account:v91 chat:v157 style:v92 chatProperties:0 groupID:v93 chatPersonCentricID:v94 messageSent:v89];
            }

            if ([(__CFString *)v159 isFinished])
            {
              v95 = [(__CFString *)v159 service];
              v96 = [v95 isEqual:*MEMORY[0x277D1A620]];

              if (v96)
              {
                v97 = [(__CFString *)v159 guid];
                v98 = [(__CFString *)v159 fileTransferGUIDs];
                [v98 count];
                _signpostSendMessage();
              }
            }

            if ([(__CFString *)v159 shouldNotifyOnSend])
            {
              if (IMOSLoggingEnabled())
              {
                v99 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  v100 = [(__CFString *)v159 guid];
                  if (v152)
                  {
                    v101 = @"NO";
                  }

                  else
                  {
                    v101 = @"YES";
                  }

                  v102 = v100;
                  *buf = 138412546;
                  v176 = v101;
                  v177 = 2112;
                  v178 = v102;
                  _os_log_impl(&dword_22B4CC000, v99, OS_LOG_TYPE_INFO, "Posting distributed notification of send result %@ for message %@", buf, 0x16u);
                }
              }

              v185[0] = *MEMORY[0x277D19FE8];
              v103 = [(__CFString *)v159 guid];
              v186[0] = v103;
              v185[1] = *MEMORY[0x277D19FF0];
              v104 = [MEMORY[0x277CCABB0] numberWithInt:v152 == 0];
              v186[1] = v104;
              v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];

              DistributedCenter = CFNotificationCenterGetDistributedCenter();
              CFNotificationCenterPostNotification(DistributedCenter, *MEMORY[0x277D19FE0], 0, v105, 1u);
            }

            if ([(__CFString *)v159 sentViaRemoteIntent])
            {
              v107 = [(__CFString *)v159 guid];
              IMMessageSoundStartSuppressingSendSoundForMessageGUID();
            }

            if (v144)
            {
              v108 = [(__CFString *)v159 guid];
              [(IMDServiceSession *)self _updateExpireStateForMessageGUID:v108];
            }

            if (HIDWORD(v144))
            {
              [(IMDServiceSession *)self sendSavedReceiptForMessage:v159 toChatID:0 identifier:v157 style:v173 account:v158];
            }

            v109 = ([(__CFString *)v159 isTypingMessage]& 1) == 0 && ([(__CFString *)v159 isDelivered]& 1) == 0 && [(__CFString *)v159 scheduleType]!= 2;
            v110 = ([v158 canMakeDowngradeRoutingChecks] & 1) != 0 || -[__CFString errorCode](v159, "errorCode") == 22;
            if (IMOSLoggingEnabled())
            {
              v111 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                v112 = [v158 service];
                v113 = v112;
                v114 = @"NO";
                *buf = 138413314;
                if (v110)
                {
                  v115 = @"YES";
                }

                else
                {
                  v115 = @"NO";
                }

                if (v109)
                {
                  v114 = @"YES";
                }

                v176 = v114;
                v177 = 2112;
                v178 = v115;
                v179 = 2112;
                v180 = v159;
                v181 = 2112;
                v182 = v158;
                v183 = 2112;
                v184 = v112;
                _os_log_impl(&dword_22B4CC000, v111, OS_LOG_TYPE_INFO, "Determining routing eligibilityisRoutableMessage: %@, canMakeDowngradeRoutingCheck: %@\nmessage: %@\naccount: %@\naccount.service: %@\n", buf, 0x34u);
              }
            }

            if (v109 && v110)
            {
              if (IMOSLoggingEnabled())
              {
                v116 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v116, OS_LOG_TYPE_INFO, "Routable message can make downgrade check", buf, 2u);
                }
              }

              v117 = [(__CFString *)v159 guid];
              v118 = [v148 guid];
              [(IMDServiceSession *)self _updateRoutingForMessageGUID:v117 chatGUID:v118 error:[(__CFString *)v159 errorCode] account:v158];
            }

            else
            {
              if (v110 || !v109)
              {
                goto LABEL_197;
              }

              v117 = IMLogHandleForCategory();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D8D74();
              }
            }

LABEL_197:
            if (!v17 || v154)
            {
              v119 = [(__CFString *)v159 guid];
              sub_22B67EEDC(v119);
            }

            if ([(__CFString *)v159 isAssociatedMessageItem])
            {
              v120 = [(__CFString *)v159 associatedMessageType]& 0xFFFFFFFFFFFFFFF8;
              if (v120 == 3000 || v120 == 2000)
              {
                v121 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  v122 = [(__CFString *)v159 guid];
                  v123 = [(__CFString *)v159 associatedMessageGUID];
                  *buf = 138412546;
                  v176 = v122;
                  v177 = 2112;
                  v178 = v123;
                  _os_log_impl(&dword_22B4CC000, v121, OS_LOG_TYPE_INFO, "Replacing previous message acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
                }

                v124 = [*(v59 + 2728) sharedInstance];
                v125 = [(__CFString *)v159 guid];
                v126 = [(__CFString *)v159 associatedMessageGUID];
                v127 = [v124 replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:v125 associatedMessageGUID:v126 sender:0];
              }
            }

            if ([(__CFString *)v159 isAssociatedMessageItem]&& [(__CFString *)v159 associatedMessageType]== 4000)
            {
              v128 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                v129 = [(__CFString *)v159 guid];
                v130 = [(__CFString *)v159 associatedMessageGUID];
                *buf = 138412546;
                v176 = v129;
                v177 = 2112;
                v178 = v130;
                _os_log_impl(&dword_22B4CC000, v128, OS_LOG_TYPE_INFO, "Replacing previous custom acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
              }

              v131 = [*(v59 + 2728) sharedInstance];
              v132 = [(__CFString *)v159 guid];
              v133 = [(__CFString *)v159 associatedMessageGUID];
              v134 = [v131 replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:v132 associatedMessageGUID:v133 sender:0];
            }

            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v135 = [(IMDServiceSession *)self serviceSessionDelegates];
            v136 = [v135 countByEnumeratingWithState:&v167 objects:v174 count:16];
            if (v136)
            {
              v137 = *v168;
              v138 = MEMORY[0x277D85CD0];
              do
              {
                for (i = 0; i != v136; ++i)
                {
                  if (*v168 != v137)
                  {
                    objc_enumerationMutation(v135);
                  }

                  v140 = *(*(&v167 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v141 = v138;
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = sub_22B68A224;
                    block[3] = &unk_2787077E0;
                    block[4] = v140;
                    v161 = v159;
                    v162 = v157;
                    v165 = v173;
                    v163 = v158;
                    v164 = v156;
                    v166 = v155;
                    dispatch_async(v138, block);
                  }
                }

                v136 = [v135 countByEnumeratingWithState:&v167 objects:v174 count:16];
              }

              while (v136);
            }

            v142 = +[IMDChatRegistry sharedInstance];
            [v142 updateLastMessageForChat:v148 hintMessage:v150];

            goto LABEL_221;
          }

          [v148 updateNumberOfTimesRespondedToThread];
          v71 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          v72 = [v71 isIntroductionsEnabled];

          if (v72)
          {
            if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled])
            {
              goto LABEL_142;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_141;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = v74;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          else if ([v148 isFiltered] > 1 || (objc_msgSend(v148, "isSMSSpam") & 1) != 0)
          {
            if (![v148 isOscarChat])
            {
              goto LABEL_142;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_141;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v79 = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = v79;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "iMessage junk chat, updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
LABEL_141:
              [v148 updateIsFiltered:0];
              goto LABEL_142;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v82 = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = v82;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          goto LABEL_141;
        }

        if (v28)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [(__CFString *)v159 guid];
            *buf = 138412290;
            v176 = v30;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade but existing message was already marked as deduplicated", buf, 0xCu);
          }
        }
      }

      v31 = v24;
      goto LABEL_24;
    }
  }

  else
  {
    v158 = v14;
  }

  v157 = v13;
LABEL_222:

  v143 = *MEMORY[0x277D85DE8];
}

- (BOOL)_alwaysAllowMarkingSent
{
  v2 = [MEMORY[0x277D19268] sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = IMGetDomainBoolForKey();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canMarkMessageAsSent:(id)a3
{
  if (([a3 isSent] & 1) == 0 && !-[IMDServiceSession isReplicating](self, "isReplicating"))
  {
    return 1;
  }

  return [(IMDServiceSession *)self _alwaysAllowMarkingSent];
}

- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Can't delete on this service %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDisplayNameChange:(id)a3 guid:(id)a4 fromID:(id)a5 toIdentifier:(id)a6 forChat:(id)a7 style:(unsigned __int8)a8 account:(id)a9
{
  v9 = a8;
  v70 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v50 = a4;
  v16 = a5;
  v51 = a6;
  v52 = a7;
  v49 = a9;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v61 = v16;
      v62 = 2112;
      v63 = v15;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "didReceiveDisplayNameChange from: %@, toName: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v61 = v15;
      v62 = 2112;
      v63 = v16;
      v64 = 2112;
      v65 = v51;
      v66 = 2112;
      v67 = v52;
      v68 = 1024;
      v69 = v9;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "name: %@   fromID: %@  toIdentifier:%@  identifier: %@ style: %d", buf, 0x30u);
    }
  }

  if (v9 != 45 && self->_activated)
  {
    v58 = v9;
    v57 = v52;
    v19 = v52;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v57 style:&v58];
    v48 = v57;

    v20 = [(IMDServiceSession *)self chatForChatIdentifier:v48 style:v58 updatingAccount:1];
    if (!v20)
    {
      v21 = v15;
LABEL_50:

      goto LABEL_51;
    }

    v21 = IMSharedHelperTruncatedGroupDisplayName();

    v22 = [v20 displayName];
    v23 = IMSharedHelperAreObjectsLogicallySame();

    if (v23)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Ignoring name update, already the current name", buf, 2u);
        }
      }

      goto LABEL_50;
    }

    v25 = [v20 displayName];
    v47 = v25;
    if (v25)
    {
      v46 = [v25 length] == 0;
      if (v21)
      {
LABEL_21:
        v45 = [v21 length] == 0;
LABEL_24:
        v26 = +[IMDChatRegistry sharedInstance];
        v27 = [v26 allExistingChatsWithIdentifier:v48 style:v58];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v28 = v27;
        v29 = [v28 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v29)
        {
          v30 = *v54;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v54 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v53 + 1) + 8 * i);
              v33 = [v32 style];
              if (v33 == [v20 style])
              {
                [v32 updateDisplayName:v21 sender:v16];
                v34 = [v32 isFiltered];
                v35 = [v32 participants];
                LOBYTE(v34) = [(IMDServiceSession *)self shouldDisplayGroupNameAndPhotoWith:v34 handles:v35];

                if (v34)
                {
                  v36 = 1;
                  goto LABEL_35;
                }
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v53 objects:v59 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v36 = 0;
LABEL_35:

        v37 = IMOSLoggingEnabled();
        if (v21 == 0 && v46 || v47 == 0 && v45)
        {
          if (v37)
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Don't create a change stamp, since the name hasn't meaningfully changed.", buf, 2u);
            }
          }
        }

        else
        {
          if (v37)
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v61 = v21;
              _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Generating group name change item with new group name: %@", buf, 0xCu);
            }
          }

          v40 = +[IMDMessageStore sharedInstance];
          v41 = [v40 itemWithGUID:v50];

          if (v41)
          {
            v42 = [MEMORY[0x277CCACA8] stringGUID];

            v50 = v42;
          }

          v43 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:v16 time:0 guid:v50 type:2];
          if (v36)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v43 toChat:v48 withStyle:v58 forAccount:v49];
            [v43 setSender:v16];
            [v43 setDestinationCallerID:v51];
            [v43 setTitle:v21];
            [(IMDServiceSession *)self _storeTranscriptItem:v43 inChat:v20 account:v49];
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      v46 = 0;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v45 = 0;
    goto LABEL_24;
  }

  v21 = v15;
LABEL_51:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_updateInputMessage:(id)a3 forExistingMessage:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 isRead])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "The existing message was read, let's mark the new one is read", &v14, 2u);
      }
    }

    [v5 setFlags:{objc_msgSend(v5, "flags") | 0x2000}];
  }

  v8 = [v6 time];
  v9 = v8 == 0;

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v6 time];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "The existing message has a time: %@, so lets set the new message to have the same time", &v14, 0xCu);
      }
    }

    v12 = [v6 time];
    [v5 setTime:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setReplyGUIDOnMessage:(id)a3 forChat:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 replyToGUID];
  if (!v7 || ([v5 replyToGUID], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = [v6 lastMessage];
    v10 = [v9 guid];

    if ([v10 length])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v5 guid];
          v14 = 138412546;
          v15 = v12;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We are setting the reply to guid for message %@ to be %@ as a reply to guid has not been set", &v14, 0x16u);
        }
      }

      [v5 setReplyToGUID:v10];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setSortIDForMessage:(id)a3 forChat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMSharedHelperSortUsingReplyToGUIDAlgorithm())
  {
    v7 = objc_alloc_init(IMDMessageSortOrderAssigner);
    [(IMDMessageSortOrderAssigner *)v7 assignSortIDToIncomingMessage:v5 onChat:v6];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "sortID")}];
        v10 = [v5 guid];
        v11 = [v6 guid];
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Assigning sort id %@ to message %@ for chat %@", &v13, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_collaborationMessageProcessingQueue
{
  if (qword_27D8D0018 != -1)
  {
    sub_22B7D8DB4();
  }

  v3 = qword_27D8D0010;

  return v3;
}

- (void)_didReceivePotentialCollaborationMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277D1A988]);
  v14 = [v10 payloadData];
  [v13 setData:v14];

  v15 = [v10 guid];
  [v13 setMessageGUID:v15];

  [v13 setIsFromMe:{objc_msgSend(v10, "isFromMe")}];
  v16 = MEMORY[0x277CBEBC0];
  v17 = [v10 body];
  v18 = [v17 string];
  v19 = [v16 URLWithString:v18];
  [v13 setUrl:v19];

  v20 = [v10 fileTransferGUIDs];
  v21 = [v20 __imArrayByApplyingBlock:&unk_283F1AC08];
  [v13 setAttachments:v21];

  v22 = [(IMDServiceSession *)self _collaborationMessageProcessingQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B68BD88;
  v27[3] = &unk_278707828;
  v28 = v13;
  v29 = v10;
  v30 = self;
  v31 = v11;
  v33 = a5;
  v32 = v12;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v13;
  dispatch_async(v22, v27);
}

- (id)_revokeSiblingMessagesForReplication:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277D18ED8]);
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D19F90], v3];
  [v5 setPredicate:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) guid];
        [v4 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 deleteMessageGUIDs:v4];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "   deleted messages: %@", buf, 0xCu);
    }
  }

  v15 = [v4 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)didReceiveMessages:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 fromIDSID:(id)a7 completion:(id)a8
{
  v131 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v71 = a4;
  v78 = a6;
  v70 = a7;
  v72 = a8;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v118 = v73;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "messages: %@", buf, 0xCu);
    }
  }

  if ([v73 count] && -[IMDServiceSession _isActivated](self, "_isActivated"))
  {
    v115 = a5;
    v114 = v71;
    v14 = v71;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v114 style:&v115];
    v80 = v114;

    v112[0] = 0;
    v112[1] = v112;
    v112[2] = 0x2020000000;
    v113 = 1;
    if ([(IMDServiceSession *)self isReplicating])
    {
      v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v77 = 0;
    }

    v84 = [(IMDServiceSession *)self chatForChatIdentifier:v80 style:v115 updatingAccount:1];
    v81 = [[IMDIncomingMessageTranslator alloc] initWithChat:v84];
    v76 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v73, "count")}];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v73;
    v79 = [obj countByEnumeratingWithState:&v108 objects:v130 count:16];
    if (v79)
    {
      v75 = *v109;
      *&v15 = 138412546;
      v69 = v15;
      do
      {
        for (i = 0; i != v79; ++i)
        {
          if (*v109 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v108 + 1) + 8 * i);
          [(IMDIncomingMessageTranslator *)v81 beginProcessingMessage:v69, v70];
          if ([v85 isFromMe] && objc_msgSend(v84, "state") != 3)
          {
            v16 = +[IMDChatRegistry sharedInstance];
            v17 = [v16 allExistingChatsWithIdentifier:v80 style:v115];

            v18 = [MEMORY[0x277CBEB18] array];
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v104 objects:v129 count:16];
            if (v20)
            {
              v21 = *v105;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v105 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v104 + 1) + 8 * j);
                  if ([v23 state] != 3)
                  {
                    [v23 setState:3];
                    [v23 setCloudKitSyncState:0];
                    v24 = [v23 guid];
                    v25 = v24;
                    if (v24)
                    {
                      v26 = v24;
                    }

                    else
                    {
                      v26 = @"<nil>";
                    }

                    v27 = v26;

                    [v18 addObject:v27];
                    v28 = +[IMDChatStore sharedInstance];
                    [v28 storeChat:v23];
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v104 objects:v129 count:16];
              }

              while (v20);
            }

            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [v18 componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v118 = v30;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Fixed chat join states for chats with guids: %@", buf, 0xCu);
              }
            }
          }

          v31 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v84, "lastReadMessageTimeStamp")}];
          v32 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          v33 = [v85 time];
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v84, "lastReadMessageTimeStamp")}];
              v36 = [v84 lastSeenMessageGuid];
              v37 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v33, "__im_nanosecondTimeInterval")}];
              *buf = 138413570;
              v118 = v35;
              v119 = 2112;
              v120 = v36;
              v121 = 2112;
              v122 = v31;
              v123 = 2112;
              v124 = v33;
              v125 = 2112;
              v126 = v37;
              v127 = 2112;
              v128 = v32;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Chat's last read message time date (%@) guid (%@) timestamp: (%@) Messages time date (%@) timestamp: (%@) Server timestamp: (%@)", buf, 0x3Eu);
            }
          }

          if ([v31 compare:v33] == 1)
          {
            v38 = [v32 dateByAddingTimeInterval:60.0];
            if ([v31 compare:v38] == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v40 = [v85 guid];
                  *buf = 138412290;
                  v118 = v40;
                  _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Last read message time is in the future. Not marking incoming message %@ as read", buf, 0xCu);
                }
              }
            }

            else
            {
              if ([v85 sentOrReceivedOffGrid])
              {
                v41 = [v32 dateByAddingTimeInterval:3600.0];
                if ([v31 compare:v41] == -1)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v62 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                    {
                      v63 = [v85 guid];
                      *buf = v69;
                      v118 = v41;
                      v119 = 2112;
                      v120 = v63;
                      _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "Satellite message time for GUID %@ is within grace period (%@). Not marking it as read.", buf, 0x16u);
                    }
                  }

                  goto LABEL_58;
                }

                if (IMOSLoggingEnabled())
                {
                  v42 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    v43 = [v85 guid];
                    *buf = 138412290;
                    v118 = v43;
                    _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Satellite message with GUID %@ will be marked as read because it's time is older than the chat's last read message time including the grace period.", buf, 0xCu);
                  }
                }
              }

              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  v45 = [v85 guid];
                  *buf = 138412290;
                  v118 = v45;
                  _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Setting message %@ as read as incoming message is older than the chat's last read message time", buf, 0xCu);
                }
              }

              [v85 setFlags:{objc_msgSend(v85, "flags") | 0x2000}];
            }

LABEL_58:
          }

          [(IMDServiceSession *)self _setReplyGUIDOnMessage:v85 forChat:v84];
          [(IMDServiceSession *)self _setSortIDForMessage:v85 forChat:v84];
          if ([(IMDServiceSession *)self isReplicating])
          {
            v46 = +[IMDMessageStore sharedInstance];
            v47 = [v85 guid];
            v48 = [v46 messageWithGUID:v47];

            v49 = [v48 service];
            v50 = [(IMDServiceSession *)self service];
            v51 = [v50 internalName];
            v52 = [v49 isEqualToString:v51];

            if (v52)
            {
              v53 = [v85 replicatedFallbackGUIDs];
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 0;
          }

          v54 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          v55 = [v54 isIntroductionsEnabled];

          if (v55)
          {
            if ([v84 isFiltered])
            {
              v56 = MEMORY[0x277D1AC58];
              v57 = [v85 sender];
              LODWORD(v56) = [v56 isKnownContact:v57];

              if (v56)
              {
                [v84 updateIsFiltered:0 fromContact:1];
              }
            }

            if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] && (objc_msgSend(v85, "isRead") & 1) == 0 && (objc_msgSend(v85, "isTypingMessage") & 1) == 0 && objc_msgSend(v84, "isFiltered") && objc_msgSend(v84, "isFiltered") != 2)
            {
              v58 = [v84 guid];

              if (v58)
              {
                v59 = +[IMDChatRegistry sharedInstance];
                v60 = [v84 guid];
                v116 = v60;
                v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
                [v59 updatePendingReviewForChatsWithGUIDs:v61 pendingReview:1];
              }

              else
              {
                v59 = IMLogHandleForCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v118 = v84;
                  _os_log_error_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_ERROR, "Couldn't get chat guid from local chat %@", buf, 0xCu);
                }
              }
            }
          }

          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = sub_22B68D14C;
          v95[3] = &unk_278707850;
          v95[4] = self;
          v95[5] = v85;
          v96 = v80;
          v97 = v84;
          v103 = v115;
          v98 = v78;
          v99 = v76;
          v102 = v112;
          v100 = v77;
          v64 = v53;
          v101 = v64;
          [(IMDIncomingMessageTranslator *)v81 finishProcessingMessage:v85 completion:v95];
        }

        v79 = [obj countByEnumeratingWithState:&v108 objects:v130 count:16];
      }

      while (v79);
    }

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_22B68D1CC;
    v86[3] = &unk_278707878;
    v93 = v72;
    v94 = v112;
    v86[4] = self;
    v87 = obj;
    v65 = v77;
    v88 = v65;
    v66 = v76;
    v89 = v66;
    v67 = v84;
    v90 = v67;
    v91 = v78;
    v92 = v70;
    [(IMDIncomingMessageTranslator *)v81 processedAllMessagesWithCompletion:v86];

    _Block_object_dispose(v112, 8);
  }

  else
  {
    (*(v72 + 2))(v72, 0);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)storeMessages:(id)a3 messagesToWithdraw:(id)a4 messagesToPost:(id)a5 chatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8 fromIDSID:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B68D464;
    v21[3] = &unk_2787078A0;
    v22 = v16;
    v23 = self;
    v24 = v18;
    v29 = a7;
    v25 = v17;
    v26 = v19;
    v27 = v15;
    v28 = v20;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }
}

- (BOOL)_canUpgradeExistingMessageItem:(id)a3 replacementReplicatedMessageItem:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(IMDServiceSession *)self isReplicating])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = [v6 guid];
        v26 = 138412290;
        v27 = v15;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of message %@, session is not replicating", &v26, 0xCu);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (v6 && v7)
  {
    v9 = [v6 guid];
    v10 = [v7 guid];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [v6 isFromMe];
      if (v12 == [v7 isFromMe])
      {
        if ([v6 isFromMe] & 1) != 0 || (objc_msgSend(v6, "sender"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "sender"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, (v22))
        {
          v8 = 1;
          goto LABEL_19;
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_18;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v23 = [v6 guid];
          v24 = [v6 sender];
          v25 = [v7 sender];
          v26 = 138412802;
          v27 = v23;
          v28 = 2112;
          v29 = v24;
          v30 = 2112;
          v31 = v25;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of %@, different senders (%@ and %@)", &v26, 0x20u);
        }

        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v6 guid];
          v26 = 138412290;
          v27 = v14;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of %@", &v26, 0xCu);
        }

LABEL_17:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = [v6 guid];
        v17 = [v7 guid];
        v26 = 138412546;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of message %@, replacement has guid %@", &v26, 0x16u);
      }

      goto LABEL_17;
    }

LABEL_18:
    v8 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)didUpdateChatStatus:(int)a3 chat:(id)a4 style:(unsigned __int8)a5 displayName:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 lastAddressedHandle:(id)a9 lastAddressedSIMID:(id)a10 handleInfo:(id)a11 account:(id)a12 category:(int64_t)a13 spamExtensionName:(id)a14 isBlackholed:(BOOL)a15 spamDetectionSource:(int64_t)a16
{
  v31 = a5;
  v20 = a14;
  v21 = a12;
  v22 = a11;
  v23 = a10;
  v24 = a9;
  v25 = a8;
  v26 = a7;
  v27 = a6;
  v28 = a4;
  v32 = objc_alloc_init(IMDChatStatusChangeContext);
  [(IMDChatStatusChangeContext *)v32 setDisplayName:v27];

  [(IMDChatStatusChangeContext *)v32 setGroupID:v26];
  [(IMDChatStatusChangeContext *)v32 setOriginalGroupID:v25];

  [(IMDChatStatusChangeContext *)v32 setLastAddressedHandle:v24];
  [(IMDChatStatusChangeContext *)v32 setLastAddressedSIMID:v23];

  [(IMDChatStatusChangeContext *)v32 setHandleInfo:v22];
  [(IMDChatStatusChangeContext *)v32 setAccount:v21];

  [(IMDChatStatusChangeContext *)v32 setCategory:a13];
  [(IMDChatStatusChangeContext *)v32 setExtensionName:v20];

  [(IMDChatStatusChangeContext *)v32 setIsBlackholed:a15];
  [(IMDChatStatusChangeContext *)v32 setSpamDetectionSource:a16];
  [(IMDServiceSession *)self didUpdateChatStatus:a3 chat:v28 style:v31 context:v32];
}

- (void)didUpdateChatStatusWithContext:(id)a3
{
  v121 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v3 = [v94 chatIdentifier];
  v108 = [v94 chatStyle];
  if ([v3 length])
  {
    if (!self->_activated)
    {
      goto LABEL_89;
    }

    v4 = [v94 account];
    if (v4)
    {
      [v94 setAccount:v4];
    }

    else
    {
      v6 = [(IMDServiceSession *)self account];
      [v94 setAccount:v6];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v94 chatStatus];
        v9 = [v94 lastAddressedHandle];
        v10 = [v94 lastAddressedSIMID];
        *buf = 138413314;
        v112 = v3;
        v113 = 1024;
        v114 = v8;
        v115 = 1024;
        v116 = v108;
        v117 = 2112;
        v118 = v9;
        v119 = 2112;
        v120 = v10;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat: %@  status update: %d  style: %c lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x2Cu);
      }
    }

    v107 = v3;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v107 style:&v108];
    v93 = v107;

    v86 = 0;
    v11 = [v94 chatStatus] + 1;
    if (v11 > 8)
    {
      v85 = 0;
      goto LABEL_55;
    }

    if (((1 << v11) & 0x73) != 0)
    {
      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:v108 updatingAccount:1];
      v12 = [v88 state];
      v85 = (v12 & 0xFFFFFFFFFFFFFFFELL) == 2;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v13 = [MEMORY[0x277D1AB78] sharedCoordinator];
        v14 = [v88 groupID];
        [v13 informOfKickFromGroup:v14];
      }

      [v88 setState:0];
      v15 = [v88 guid];
      [(IMDServiceSession *)self _removeChatGuidFromCoreDuet:v15];

      v86 = v85;
LABEL_54:
      if (v88)
      {
LABEL_56:
        v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v108 == 45)
        {
          v39 = MEMORY[0x277CBEAC0];
          obj = [MEMORY[0x277CCABB0] numberWithInt:2];
          v40 = [v39 dictionaryWithObjectsAndKeys:{v93, *MEMORY[0x277D193A8], obj, *MEMORY[0x277D192F8], 0}];
          [v91 addObject:v40];
        }

        else
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          obj = [v94 handleInfo];
          v41 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
          if (v41)
          {
            v92 = *v104;
            v42 = *MEMORY[0x277D193A8];
            v43 = *MEMORY[0x277D193C0];
            v44 = *MEMORY[0x277D193A0];
            v90 = *MEMORY[0x277D192F8];
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v104 != v92)
                {
                  objc_enumerationMutation(obj);
                }

                v46 = *(*(&v103 + 1) + 8 * i);
                v47 = [v46 objectForKey:v42];
                v48 = [v46 objectForKey:v43];
                v49 = [v46 objectForKey:v44];
                if (v47)
                {
                  v50 = MEMORY[0x277CBEAC0];
                  v51 = [MEMORY[0x277CCABB0] numberWithInt:2];
                  v52 = [v50 dictionaryWithObjectsAndKeys:{v47, v42, v51, v90, v48, v43, v49, v44, 0}];
                  [v91 addObject:v52];
                }
              }

              v41 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
            }

            while (v41);
          }
        }

        v53 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v88 isBlackholed]);
        v54 = [v94 account];
        v55 = [v54 accountID];
        v56 = v108;
        v57 = [v88 chatProperties];
        v58 = [v88 groupID];
        v59 = [v88 personCentricID];
        LODWORD(v83) = [v94 chatStatus];
        [v53 account:v55 chat:v93 style:v56 chatProperties:v57 groupID:v58 chatPersonCentricID:v59 statusChanged:v83 handleInfo:v91];

        if (v108 != 45 && v86)
        {
          v61 = [v94 messageID];
          v62 = v61;
          if (v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = [MEMORY[0x277CCACA8] stringGUID];
          }

          v64 = v63;

          v65 = +[IMDMessageStore sharedInstance];
          v66 = [v65 itemWithGUID:v64];

          if (v66)
          {
            v67 = [MEMORY[0x277CCACA8] stringGUID];

            v64 = v67;
          }

          v68 = [objc_alloc(MEMORY[0x277D1A9E0]) initWithSender:0 time:0 guid:v64 type:3];
          v69 = v108;
          v70 = [v94 account];
          [(IMDServiceSession *)self _configureSessionInformationOnItem:v68 toChat:v93 withStyle:v69 forAccount:v70];

          [v68 setSender:0];
          [v68 setActionType:0];
          v71 = [v88 account];
          v72 = [v71 loginID];
          v73 = [v72 _stripFZIDPrefix];

          [v68 setDestinationCallerID:v73];
          v74 = [v94 account];
          [(IMDServiceSession *)self _storeTranscriptItem:v68 inChat:v88 account:v74];
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v75 = [(IMDServiceSession *)self serviceSessionDelegates];
        v76 = [v75 countByEnumeratingWithState:&v99 objects:v109 count:16];
        if (v76)
        {
          v77 = *v100;
          v78 = MEMORY[0x277D85CD0];
          do
          {
            for (j = 0; j != v76; ++j)
            {
              if (*v100 != v77)
              {
                objc_enumerationMutation(v75);
              }

              v80 = *(*(&v99 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = sub_22B691EA0;
                block[3] = &unk_2787073E8;
                block[4] = v80;
                v96 = v94;
                v97 = v93;
                v98 = v108;
                dispatch_async(v78, block);
              }
            }

            v76 = [v75 countByEnumeratingWithState:&v99 objects:v109 count:16];
          }

          while (v76);
        }

        if (v85)
        {
          [v88 setCloudKitSyncState:0];
          v81 = +[IMDChatStore sharedInstance];
          [v81 storeChat:v88];
        }

        v3 = v93;
        goto LABEL_89;
      }

LABEL_55:
      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:v108];
      goto LABEL_56;
    }

    if (((1 << v11) & 0x108) == 0)
    {
      v85 = 0;
      if (v11 != 2)
      {
        goto LABEL_55;
      }

      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:v108];
      if ([v88 state] != 2)
      {
        [v88 setState:2];
LABEL_53:
        v85 = 1;
        v86 = 0;
        goto LABEL_54;
      }

      v85 = 0;
LABEL_50:
      v86 = 0;
      goto LABEL_54;
    }

    v16 = v108;
    v17 = [v94 displayName];
    v18 = [v94 groupID];
    v19 = [v94 originalGroupID];
    v20 = [v94 lastAddressedHandle];
    v21 = [v94 lastAddressedSIMID];
    v22 = [v94 handleInfo];
    v23 = [v94 account];
    LOBYTE(v84) = [v94 isBlackholed];
    [(IMDServiceSession *)self registerChat:v93 style:v16 displayName:v17 groupID:v18 originalGroupID:v19 lastAddressedHandle:v20 lastAddressedSIMID:v21 handleInfo:v22 account:v23 isBlackholed:v84];

    v24 = v108;
    v25 = [v94 account];
    v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:v24 account:v25 updatingAccount:1];

    v26 = [v88 isFiltered];
    if (v26 == [v94 category] || objc_msgSend(v94, "category") != 2)
    {
      v85 = 0;
    }

    else
    {
      [v88 setSpamDetectionSource:{objc_msgSend(v94, "spamDetectionSource")}];
      [v88 updateIsFiltered:{objc_msgSend(v94, "category")}];
      v85 = 1;
    }

    v27 = [v94 chatStatus] == 2;
    v28 = [v88 state];
    if (v27)
    {
      if (v28 != 3)
      {
        [v88 setState:3];
        v85 = 1;
      }

      v29 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v30 = [v29 isIntroductionsEnabled];

      if (!v30 || ![v94 isMessageSentFromMe])
      {
        goto LABEL_37;
      }

      v31 = [v88 isFiltered];
      v32 = v94;
      if (!v31)
      {
        goto LABEL_38;
      }

      [v88 updateIsFiltered:0];
    }

    else
    {
      v32 = v94;
      if (v28 == 4)
      {
        goto LABEL_38;
      }

      [v88 setState:4];
    }

    v85 = 1;
LABEL_37:
    v32 = v94;
LABEL_38:
    if ([v32 category] == 2 || objc_msgSend(v94, "category") == 3 || objc_msgSend(v94, "category") == 4)
    {
      v33 = [v88 spamExtensionName];
      v34 = [v94 extensionName];
      v35 = [v33 isEqualToString:v34];

      if ((v35 & 1) == 0)
      {
        v36 = [v94 extensionName];
        [v88 updateSMSSpamExtensionNameChatProperty:v36];

        v85 = 1;
      }
    }

    if (MEMORY[0x231897A20](v93) && [v88 isFiltered])
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v88 chatIdentifier];
          *buf = 138412290;
          v112 = v38;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, chat ID is a business chat: %@", buf, 0xCu);
        }
      }

      [v88 updateIsFiltered:0];
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Invalid chat identifier, ignoring", buf, 2u);
    }
  }

LABEL_89:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)willRemoveChat:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being removed.", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willRemoveChat:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)willMoveChatToRecentlyDeleted:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being moved to recently deleted.", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willMoveChatToRecentlyDeleted:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v37 = a4;
  v36 = a5;
  v39 = a6;
  v35 = a7;
  v38 = a9;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v37;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Asked to update display name from %@ to %@", buf, 0x16u);
    }
  }

  v16 = IMGetCachedDomainBoolForKey();
  v17 = +[IMDChatRegistry sharedInstance];
  v18 = [v17 existingChatWithGUID:v39];

  v19 = [v18 displayName];
  if ((v16 & 1) == 0)
  {
    [v18 updateDisplayName:v14];
  }

  if (![(IMDServiceSession *)self _canInsertDisplayNameUpdateItemForChat:v18])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_33;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Cannot insert display name update item for chat. Bailing. %@", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_33;
  }

  v20 = +[IMDMessageStore sharedInstance];
  v21 = [v20 hasStoredMessageWithGUID:v38];

  if (v21)
  {
    goto LABEL_33;
  }

  if (v19)
  {
    v22 = [v19 length] == 0;
    if (v14)
    {
LABEL_11:
      v23 = [v14 length] != 0;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v23 = 1;
LABEL_18:
  v25 = IMAreObjectsLogicallySame();
  v26 = IMOSLoggingEnabled();
  if ((((v25 | (v14 == 0 && v22)) ^ 1) & (v19 != 0 || v23) & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_33;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v14;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Asked to update display name to existing name. Bailing. Name: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v26)
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v14;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Creating stamp item for new name: %@ on chat: %@", buf, 0x16u);
    }
  }

  v28 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:0 time:0 guid:v38 type:2];
  [v28 setTitle:v14];
  v29 = [(IMDServiceSession *)self account];
  v30 = [v29 service];
  v31 = [v30 internalName];
  [v28 setService:v31];

  [v28 setDestinationCallerID:v36];
  if (v16)
  {
    [v28 setErrorCode:4];
  }

  v32 = [v18 account];
  if (v32)
  {
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:v32];
  }

  else
  {
    v33 = [(IMDServiceSession *)self account];
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:v33];
  }

LABEL_33:
  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)a3
{
  v3 = a3;
  if ([v3 style] == 45 || (objc_msgSend(v3, "isBusinessChat") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isStewieChat] ^ 1;
  }

  return v4;
}

- (id)_chatForMemberStatusChange:(id)a3
{
  v4 = a3;
  v5 = [v4 chatIdentifier];
  v14 = [v4 style];
  v13 = v5;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v13 style:&v14];
  v6 = v13;

  v7 = [v4 chatIdentifier];
  v8 = [v4 style];

  v9 = [(IMDServiceSession *)self _guidForChat:v7 style:v8];

  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v9];

  return v11;
}

- (id)didChangeMemberStatus:(id)a3
{
  v131 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v105 = self;
  if (!self->_activated)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v6 = [v4 account];
  v7 = v6;
  if (v6)
  {
    v103 = v6;
  }

  else
  {
    v103 = [(IMDServiceSession *)v105 account];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v5 chatIdentifier];
      v11 = [v5 handleID];
      v12 = [v5 fromHandleID];
      v13 = [v5 unformattedNumber];
      v14 = [v5 countryCode];
      *buf = 138413826;
      v118 = v10;
      v119 = 2112;
      v120 = v11;
      v121 = 2112;
      v122 = v12;
      v123 = 2112;
      v124 = v13;
      v125 = 2112;
      v126 = v14;
      v127 = 1024;
      v128 = [v5 status];
      v129 = 1024;
      v130 = [v5 style];
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat: %@  member: %@ from member: %@ unformated: %@ country: %@ status update: %d  style: %c", buf, 0x40u);
    }
  }

  v15 = [(IMDServiceSession *)v105 _chatForMemberStatusChange:v5];
  v16 = [IMDHandle alloc];
  v17 = [v5 handleID];
  v18 = [v5 unformattedNumber];
  v19 = [v5 countryCode];
  v20 = [(IMDHandle *)v16 initWithID:v17 unformattedID:v18 countryCode:v19];

  v104 = [v15 participantHandles];
  v21 = [v5 handleID];
  v101 = [v104 containsObject:v21];

  v22 = [v15 participants];
  v100 = [v22 __imArrayByApplyingBlock:&unk_283F1AC28];

  v23 = [v5 status] + 1;
  if (v23 > 6)
  {
    v101 = 0;
LABEL_36:
    HIDWORD(v99) = 1;
    goto LABEL_37;
  }

  if (v23 == 3)
  {
    v34 = +[IMDChatRegistry sharedInstance];
    v35 = [v15 chatIdentifier];
    v36 = [v34 allExistingChatsWithIdentifier:v35 style:{objc_msgSend(v15, "style")}];

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v110 objects:v116 count:16];
    if (v38)
    {
      v39 = *v111;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v111 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v110 + 1) + 8 * i);
          v42 = [v41 style];
          if (v42 == [v15 style])
          {
            [v41 addParticipant:v20];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v110 objects:v116 count:16];
      }

      while (v38);
    }

    v101 ^= 1u;
    goto LABEL_36;
  }

  v24 = +[IMDChatRegistry sharedInstance];
  v25 = [v15 chatIdentifier];
  v26 = [v24 allExistingChatsWithIdentifier:v25 style:{objc_msgSend(v15, "style")}];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (!v28)
  {

    if ((v101 & 1) == 0)
    {
      goto LABEL_43;
    }

    HIDWORD(v99) = 0;
    goto LABEL_41;
  }

  v29 = 0;
  v30 = *v107;
  do
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v107 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v106 + 1) + 8 * j);
      v33 = [v32 style];
      if (v33 == [v15 style])
      {
        v29 |= [v32 removeParticipant:v20];
      }
    }

    v28 = [v27 countByEnumeratingWithState:&v106 objects:v115 count:16];
  }

  while (v28);

  HIDWORD(v99) = 0;
  if ((v29 & 1) == 0)
  {
LABEL_40:
    if (!v101)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

LABEL_37:
  v43 = [(IMDServiceSession *)v105 broadcasterForChatListeners];
  v44 = [v103 accountID];
  v45 = [v15 chatIdentifier];
  v46 = [v15 style];
  v47 = [v15 chatProperties];
  v48 = [v15 personCentricID];
  v49 = [(IMDHandle *)v20 handleInfo];
  LODWORD(v99) = [v5 status];
  [v43 account:v44 chat:v45 style:v46 chatProperties:v47 chatPersonCentricID:v48 member:v49 statusChanged:v99];

  if ([v15 style] != 43)
  {
    goto LABEL_40;
  }

  v50 = [v15 participants];
  v51 = [v50 __imArrayByApplyingBlock:&unk_283F1AC48];

  v52 = +[IMDChatRegistry sharedInstance];
  v114[0] = v100;
  v114[1] = v51;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
  [v52 _remergeChatsWithParticipantIDsSets:v53];

  if ((v101 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  if ([v15 style] != 45 && (objc_msgSend(v5, "silently") & 1) == 0)
  {
    if ((v99 & 0x100000000) != 0)
    {
      v56 = 0;
    }

    else
    {
      v57 = [v5 fromHandleID];
      v58 = [v5 handleID];
      v56 = [v57 isEqualToIgnoringCase:v58];
    }

    v59 = [v5 messageID];
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = [MEMORY[0x277CCACA8] stringGUID];
    }

    v62 = v61;

    v63 = +[IMDMessageStore sharedInstance];
    v102 = [v63 itemWithGUID:v62];

    if (v102)
    {
      v64 = [MEMORY[0x277CCACA8] stringGUID];

      v62 = v64;
    }

    if (v56)
    {
      v65 = objc_alloc(MEMORY[0x277D1A9E0]);
      v66 = [v5 fromHandleID];
      v67 = [v65 initWithSender:v66 time:0 guid:v62 type:3];

      v68 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](v105, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v67, v68, [v15 style], v103);

      v69 = [v5 unformattedNumber];
      [v67 setOtherUnformattedID:v69];

      v70 = [v5 countryCode];
      [v67 setOtherCountryCode:v70];

      [v67 setActionType:0];
      if (IMOSLoggingEnabled())
      {
        v71 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = [v67 otherHandle];
          *buf = 138412290;
          v118 = v72;
          _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "Storing participant leave: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v73 = objc_alloc(MEMORY[0x277D1AB28]);
      v74 = [v5 fromHandleID];
      v75 = [v5 messageTime];
      v76 = [v73 initWithSender:v74 time:v75 guid:v62 type:1];

      v77 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](v105, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v76, v77, [v15 style], v103);

      v78 = [v5 handleID];
      [v76 setOtherHandle:v78];

      v79 = [v5 unformattedNumber];
      [v76 setOtherUnformattedID:v79];

      v80 = [v5 countryCode];
      [v76 setOtherCountryCode:v80];

      [v76 setUnattributed:{objc_msgSend(v5, "unattributed")}];
      [v76 setChangeType:HIDWORD(v99) ^ 1u];
      if (IMOSLoggingEnabled())
      {
        v81 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          if (HIDWORD(v99))
          {
            v82 = @"invite";
          }

          else
          {
            v82 = @"remove";
          }

          v83 = [v76 sender];
          v84 = [v76 otherHandle];
          *buf = 138412802;
          v118 = v82;
          v119 = 2112;
          v120 = v83;
          v121 = 2112;
          v122 = v84;
          _os_log_impl(&dword_22B4CC000, v81, OS_LOG_TYPE_INFO, "Storing %@ participant change item  %@ => %@", buf, 0x20u);
        }
      }

      v67 = v76;
      if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] && objc_msgSend(v15, "isBlackholed") && objc_msgSend(v5, "status") == 2)
      {
        v85 = MEMORY[0x277D1AC58];
        v86 = [v5 handleID];
        LODWORD(v85) = [v85 isKnownContact:v86];

        v87 = IMOSLoggingEnabled();
        if (v85)
        {
          if (v87)
          {
            v88 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              v89 = [v5 handleID];
              v90 = [v15 guid];
              *buf = 138412546;
              v118 = v89;
              v119 = 2112;
              v120 = v90;
              _os_log_impl(&dword_22B4CC000, v88, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is a known contact.", buf, 0x16u);
            }
          }

          [v15 updateIsBlackholed:0];
          v91 = [v15 participants];
          v92 = [v91 count] == 1;

          v93 = [MEMORY[0x277D1AAA8] sharedInstance];
          v94 = v93;
          if (v92)
          {
            [v93 trackSpamEvent:24];
          }

          else
          {
            [v93 trackSpamEvent:25];
          }
        }

        else if (v87)
        {
          v95 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = [v15 guid];
            v97 = [v5 handleID];
            *buf = 138412546;
            v118 = v96;
            v119 = 2112;
            v120 = v97;
            _os_log_impl(&dword_22B4CC000, v95, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is not a known contact.", buf, 0x16u);
          }
        }
      }
    }

    v98 = [v5 destinationCallerID];
    [v67 setDestinationCallerID:v98];

    [(IMDServiceSession *)v105 _storeTranscriptItem:v67 inChat:v15 account:v103];
    v8 = [v67 guid];

    goto LABEL_44;
  }

LABEL_43:
  v8 = 0;
LABEL_44:

LABEL_45:
  v54 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_storeTranscriptItem:(id)a3 inChat:(id)a4 account:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDServiceSession *)self service];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = sub_22B694464;
  v33 = &unk_278707968;
  v34 = v9;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v25 = sub_22B6944F8;
  v26 = &unk_278707990;
  v27 = v8;
  v28 = self;
  v12 = v34;
  v29 = v12;
  v13 = v10;
  v30 = v13;
  v14 = v11;
  v15 = v27;
  v16 = v31;
  v17 = v24;
  v18 = v15;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v18;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Storing item: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDMessageStore sharedInstance];
  v21 = [v20 storeItem:v18 forceReplace:0];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "  => Result item: %@", buf, 0xCu);
    }
  }

  v32(v16, v21);
  v25(v17, 1, v18, v21);

  v23 = *MEMORY[0x277D85DE8];
}

- (Class)spotlightItemRecorderClass
{
  if (qword_27D8D0028 != -1)
  {
    sub_22B7D8DC8();
  }

  v3 = qword_27D8D0020;

  return v3;
}

- (void)_removeChatGuidFromCoreDuet:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Going to remove chat guid from core duet %@", buf, 0xCu);
    }
  }

  if ([v4 length])
  {
    v6 = [(objc_class *)[(IMDServiceSession *)self spotlightItemRecorderClass] spotlightItemRecorder];
    v11 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B694A10;
    v9[3] = &unk_278704138;
    v10 = v4;
    [v6 deleteSearchableItemsWithDomainIdentifiers:v7 bundleID:@"com.apple.MobileSMS" withCompletion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_markChatAsDowngraded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 properties];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = MEMORY[0x277CCABB0];
    [v8 timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [v7 setObject:v10 forKey:*MEMORY[0x277D19308]];
    v11 = *MEMORY[0x277D19300];
    v12 = [v6 objectForKey:*MEMORY[0x277D19300]];
    v13 = v12;
    if (v12 && ([v12 isNull] & 1) == 0)
    {
      v14 = [v13 unsignedIntegerValue] + 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v14];
    [v7 setObject:v15 forKey:v11];

    v16 = +[IMDChatRegistry sharedInstance];
    v17 = [v5 chatIdentifier];
    v18 = [v16 updateProperties:v7 chat:v17 style:{objc_msgSend(v5, "style")}];

    if (v18)
    {
      v19 = [(IMDServiceSession *)self broadcasterForChatListeners];
      v20 = [v5 guid];
      v21 = [v5 properties];
      [v19 chat:v20 propertiesUpdated:v21];
    }

LABEL_12:
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "No chat to update downgrade properties for.", v22, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_handleRoutingWithDictionary:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling routing dictionary: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B694EA8;
  v7[3] = &unk_278706958;
  v7[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_downgradableServiceNames
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceNamesSupportingCapability:*MEMORY[0x277D1A5D0]];
  v4 = [v3 allObjects];

  return v4;
}

- (void)_updateRoutingForMessageGUID:(id)a3 chatGUID:(id)a4 error:(unsigned int)a5 account:(id)a6
{
  v10 = a3;
  v11 = a4;
  if (self->_activated)
  {
    v12 = [a6 canMakeDowngradeRoutingChecks];
    if (a5 == 22 || v12)
    {
      v13 = v10;
      v14 = v11;
      im_dispatch_after();
    }
  }
}

- (void)_updateRoutingTimerWithInterval:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > 0.0 && self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        v12 = a3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Scheduling a routing check with interval: %f", &v11, 0xCu);
      }
    }

    messageRoutingTimer = self->_messageRoutingTimer;
    if (messageRoutingTimer)
    {
      [(IMTimer *)messageRoutingTimer invalidate];
      v7 = self->_messageRoutingTimer;
      self->_messageRoutingTimer = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-routing-timer" name:1 shouldWake:self target:sel__routingTimerFired selector:0 userInfo:a3];
    v9 = self->_messageRoutingTimer;
    self->_messageRoutingTimer = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_routingTimerFired
{
  [(IMTimer *)self->_messageRoutingTimer invalidate];
  messageRoutingTimer = self->_messageRoutingTimer;
  self->_messageRoutingTimer = 0;

  if (self->_activated)
  {
    v4 = [MEMORY[0x277D18E40] sharedInstance];
    v5 = [(IMDServiceSession *)self _downgradableServiceNames];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B696310;
    v6[3] = &unk_2787079E0;
    v6[4] = self;
    [v4 requestRoutingWithDowngradableServices:v5 completion:v6];
  }
}

- (void)_handleExpireStateDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling expire state dictionary: %@", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_22B69662C;
  v17 = &unk_278707A58;
  v18 = self;
  v7 = v6;
  v19 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:&v14];
  if ([v7 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "   delete expired messages: %@", buf, 0xCu);
      }
    }

    v9 = [(IMDServiceSession *)self _sharedMessageStore];
    v10 = [v9 deleteMessageGUIDs:v7];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "   deleted expired messages: %@", buf, 0xCu);
      }
    }

    if ([v10 count])
    {
      v12 = [(IMDServiceSession *)self broadcasterForChatListeners];
      [v12 historicalMessageGUIDsDeleted:v10 chatGUIDs:0 queryID:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateExpireStateForMessageGUID:(id)a3
{
  v4 = a3;
  if (self->_activated && [(IMDServiceSession *)self canMakeExpireStateChecks])
  {
    v5 = v4;
    im_dispatch_after();
  }
}

- (void)_updateExpireStateTimerWithInterval:(double)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageExpireStateTimer = self->_messageExpireStateTimer;
    if (messageExpireStateTimer && (v7 = v5, -[IMTimer fireDate](messageExpireStateTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + a3, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(IMTimer *)self->_messageExpireStateTimer fireDate];
          [v13 timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v23 = 134218240;
          v24 = a3;
          v25 = 2048;
          v26 = v15 - v16;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Don't schedule expire state check with interval: %f, one is already scheduled with interval: %f", &v23, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v23 = 134217984;
          v24 = a3;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Scheduling an expire state check with interval: %f", &v23, 0xCu);
        }
      }

      v18 = self->_messageExpireStateTimer;
      if (v18)
      {
        [(IMTimer *)v18 invalidate];
        v19 = self->_messageExpireStateTimer;
        self->_messageExpireStateTimer = 0;
      }

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-expire-state-timer" name:1 shouldWake:self target:sel__expireStateTimerFired selector:0 userInfo:a3];
      v21 = self->_messageExpireStateTimer;
      self->_messageExpireStateTimer = v20;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_expireStateTimerFired
{
  [(IMTimer *)self->_messageExpireStateTimer invalidate];
  messageExpireStateTimer = self->_messageExpireStateTimer;
  self->_messageExpireStateTimer = 0;

  if (self->_activated)
  {
    v4 = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697118;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [v4 requestExpireStateWithCompletion:v5];
  }
}

- (void)_handleWatchdogWithDictionary:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling watchdog dictionary: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6972BC;
  v7[3] = &unk_278707A80;
  v7[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateWatchdogForMessageGUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activated)
  {
    v6 = v4;
    im_dispatch_after();
  }
}

- (void)_updateWatchdogTimerWithInterval:(double)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageWatchdogTimer = self->_messageWatchdogTimer;
    if (messageWatchdogTimer && (v7 = v5, -[IMTimer fireDate](messageWatchdogTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + a3, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(IMTimer *)self->_messageWatchdogTimer fireDate];
          [v13 timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v23 = 134218240;
          v24 = a3;
          v25 = 2048;
          v26 = v15 - v16;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Don't schedule watchdog check with interval: %f, one is already scheduled with interval: %f", &v23, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v23 = 134217984;
          v24 = a3;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Scheduling a watchdog check with interval: %f", &v23, 0xCu);
        }
      }

      v18 = self->_messageWatchdogTimer;
      if (v18)
      {
        [(IMTimer *)v18 invalidate];
        v19 = self->_messageWatchdogTimer;
        self->_messageWatchdogTimer = 0;
      }

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-watchdog-timer" name:1 shouldWake:self target:sel__watchdogTimerFired selector:0 userInfo:a3];
      v21 = self->_messageWatchdogTimer;
      self->_messageWatchdogTimer = v20;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_watchdogTimerFired
{
  [(IMTimer *)self->_messageWatchdogTimer invalidate];
  messageWatchdogTimer = self->_messageWatchdogTimer;
  self->_messageWatchdogTimer = 0;

  if (self->_activated)
  {
    v4 = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697864;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [v4 requestWatchdogWithCompletion:v5];
  }
}

- (id)_autoReplier
{
  messageAutoReplier = self->_messageAutoReplier;
  if (!messageAutoReplier)
  {
    v4 = objc_alloc_init(IMDAvailabilityAutoReplier);
    v5 = self->_messageAutoReplier;
    self->_messageAutoReplier = v4;

    [(IMDAutoReplying *)self->_messageAutoReplier setReplyDelegate:self];
    messageAutoReplier = self->_messageAutoReplier;
  }

  return messageAutoReplier;
}

- (void)autoReplier:(id)a3 generatedAutoReplyText:(id)a4 forChat:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6979FC;
  block[3] = &unk_2787038F8;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)a3 receivedUrgentRequestForMessages:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B697B5C;
  v7[3] = &unk_278702FA0;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)autoReplier:(id)a3 sendDeliveredQuietlyReceiptForMessages:(id)a4 forIncomingMessageFromIDSID:(id)a5 inChat:(id)a6 withWillSendToDestinationsHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B697DAC;
  block[3] = &unk_278702F78;
  v20 = v13;
  v21 = v11;
  v22 = self;
  v23 = v12;
  v24 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)a3 sendNotifyRecipientCommandForMessages:(id)a4 inChat:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B698070;
  block[3] = &unk_2787038F8;
  v12 = v8;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)otcUtilities
{
  otcUtilities = self->_otcUtilities;
  if (!otcUtilities)
  {
    v4 = objc_alloc_init(MEMORY[0x277D1AB18]);
    v5 = self->_otcUtilities;
    self->_otcUtilities = v4;

    otcUtilities = self->_otcUtilities;
  }

  return otcUtilities;
}

- (void)_checkMessageForENURL:(id)a3
{
  v4 = a3;
  v5 = +[IMDExposureNotificationManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B698384;
  v7[3] = &unk_278707AA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 processMessageItemForENURL:v6 withCompletionHandler:v7];
}

- (void)didSendBalloonPayload:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 messageGUID:(id)a6 account:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v34 = a5;
  v16 = a7;
  v17 = a8;
  if (v14)
  {
    if (a6)
    {
      v18 = a6;
      v19 = [(IMDServiceSession *)self _sharedMessageStore];
      v20 = [v19 messageWithGUID:v18];

      if (v20)
      {
        v33 = v15;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v33 style:&v34];
        v21 = v33;

        v22 = [(IMDServiceSession *)self chatForChatIdentifier:v21 style:v34 updatingAccount:1];
        v23 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v23 setForceReplace:1];
        [(IMDMessageStorageContext *)v23 setModifyError:1];
        [(IMDMessageStorageContext *)v23 setModifyFlags:1];
        [(IMDMessageStorageContext *)v23 setCalculateUnreadCount:1];
        [(IMDMessageStorageContext *)v23 setReindexMessage:1];
        [(IMDMessageStorageContext *)v23 setReindexReason:1014];
        [(IMDMessageStorageContext *)v23 setFlagMask:32780];
        [(IMDMessageStorageContext *)v23 setChat:v22];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22B698918;
        v25[3] = &unk_278707AD0;
        v26 = v22;
        v27 = v14;
        v28 = self;
        v29 = v16;
        v15 = v21;
        v30 = v15;
        v32 = v34;
        v31 = v17;
        v24 = v22;
        [(IMDServiceSession *)self storeMessage:v27 context:v23 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v25];
      }
    }
  }
}

- (void)didReceiveBalloonPayload:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 messageGUID:(id)a6 account:(id)a7
{
  v12 = a3;
  v13 = a4;
  v30 = a5;
  v14 = a7;
  if (v12)
  {
    if (a6)
    {
      v15 = a6;
      v16 = [(IMDServiceSession *)self _sharedMessageStore];
      v17 = [v16 messageWithGUID:v15];

      if (v17)
      {
        v29 = v13;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v29 style:&v30];
        v18 = v29;

        v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:v30 updatingAccount:1];
        v20 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v20 setForceReplace:1];
        [(IMDMessageStorageContext *)v20 setModifyError:1];
        [(IMDMessageStorageContext *)v20 setModifyFlags:1];
        [(IMDMessageStorageContext *)v20 setCalculateUnreadCount:1];
        [(IMDMessageStorageContext *)v20 setFlagMask:32780];
        [(IMDMessageStorageContext *)v20 setReindexMessage:1];
        [(IMDMessageStorageContext *)v20 setReindexReason:1014];
        [(IMDMessageStorageContext *)v20 setChat:v19];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_22B698C54;
        v22[3] = &unk_278707940;
        v23 = v19;
        v24 = v12;
        v25 = self;
        v26 = v14;
        v13 = v18;
        v27 = v13;
        v28 = v30;
        v21 = v19;
        [(IMDServiceSession *)self storeMessage:v24 context:v20 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v22];
      }
    }
  }
}

- (void)noteItemFromStorage:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self storageController];
  [v5 noteItemFromStorage:v4];
}

- (void)noteSuppressedMessageUpdate:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self storageController];
  [v5 noteSuppressedMessageUpdate:v4];
}

- (void)noteLastItemFromStorage:(id)a3
{
  v4 = a3;
  v5 = [(IMDServiceSession *)self storageController];
  [v5 noteLastItemFromStorage:v4];
}

- (void)noteLastItemProcessed
{
  v2 = [(IMDServiceSession *)self storageController];
  [v2 noteLastItemProcessed];
}

- (BOOL)isAwaitingStorageTimer
{
  v2 = [(IMDServiceSession *)self storageController];
  v3 = [v2 isAwaitingStorageTimer];

  return v3;
}

- (void)incrementPendingReadReceiptFromStorageCount
{
  v2 = [(IMDServiceSession *)self storageController];
  [v2 incrementPendingReadReceiptFromStorageCount];
}

- (void)decrementPendingReadReceiptFromStorageCount
{
  v2 = [(IMDServiceSession *)self storageController];
  [v2 decrementPendingReadReceiptFromStorageCount];
}

- (unint64_t)pendingReadReceiptFromStorageCount
{
  v2 = [(IMDServiceSession *)self storageController];
  v3 = [v2 pendingReadReceiptFromStorageCount];

  return v3;
}

- (void)setPendingReadReceiptFromStorageCount:(unint64_t)a3
{
  v4 = [(IMDServiceSession *)self storageController];
  [v4 setPendingReadReceiptFromStorageCount:a3];
}

- (BOOL)_isMessageSWYSpamMessage:(id)a3 inChat:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 service];
  v9 = [v8 isEqualToString:*MEMORY[0x277D1A610]];

  if (v9 && [v6 containsRichLink] && (objc_msgSend(v6, "body"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "string"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "im_matchesSOSMapURL"), v11, v10, (v12 & 1) == 0))
  {
    v16 = [(IMDServiceSession *)self _predominantServiceForChat:v7 usingMessageThreshold:50];
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Predominant service check for incoming message:%@ in chat:%@ was determined to be %@", &v18, 0x20u);
      }
    }

    v13 = [v16 isEqualToString:*MEMORY[0x277D1A620]];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_shouldShowSWYQuickActionForMessage:(id)a3 outAppName:(id *)a4 outBundleID:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v32 = v7;
  if ([v7 containsRichLink])
  {
    v30 = a5;
    v31 = a4;
    [v7 richLinkURLs];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [MEMORY[0x277D1AC40] sharedManager];
          v16 = [v15 lsAppRecordForURL:v14 checkInstalledAppsOnly:1];

          if (!v16 || ([v16 localizedName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length") == 0, v17, v18))
          {
            v23 = [v16 localizedName];
            v24 = [v23 length] == 0;

            if (v24 && IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Not showing quick action since we did not get an AppName", buf, 2u);
              }
            }
          }

          else
          {
            v19 = [MEMORY[0x277D1AC40] sharedManager];
            v20 = [v16 bundleIdentifier];
            v10 = [v19 showPinningStatusTextForBundleID:v20];

            v21 = [v16 localizedName];

            v22 = [v16 bundleIdentifier];

            v8 = v22;
            v9 = v21;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }

    if (v31 && v9)
    {
      v26 = v9;
      *v31 = v9;
    }

    if (v30 && v8)
    {
      v27 = v8;
      *v30 = v8;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (id)_predominantServiceForChat:(id)a3 usingMessageThreshold:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v6 && a4)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 guid];
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Identifying the predominant service for chat: %@", &v20, 0xCu);
      }
    }

    v10 = MEMORY[0x277D1A610];
    v11 = [(IMDServiceSession *)self _fetchMessagesFromChat:v6 onService:*MEMORY[0x277D1A610] numberOfMessages:50];
    v12 = MEMORY[0x277D1A620];
    v13 = [(IMDServiceSession *)self _fetchMessagesFromChat:v6 onService:*MEMORY[0x277D1A620] numberOfMessages:50];
    v14 = [v11 count];
    if (v14 <= [v13 count])
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }

    v16 = *v15;
  }

  else
  {
    if (v7)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Invalid chat or incorrect number of messages", &v20, 2u);
      }
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_fetchMessagesFromChat:(id)a3 onService:(id)a4 numberOfMessages:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v35 = v7;
  if (v7 && a5 && [v8 length])
  {
    v34 = v9;
    if ([v7 style] == 45)
    {
      v10 = [v7 participants];
      if ([v10 count] == 1)
      {
        v11 = [v7 participants];
        v12 = [v11 firstObject];

        if (v12)
        {
          v13 = +[IMDChatStore sharedInstance];
          v14 = [v12 ID];
          v15 = [v13 chatsWithHandle:v14 onService:v34];
LABEL_16:
          v19 = v15;

LABEL_18:
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          obj = v19;
          v17 = 0;
          v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v20)
          {
            v21 = *v38;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v37 + 1) + 8 * i);
                v24 = objc_alloc(MEMORY[0x277D18ED8]);
                v25 = [v23 guid];
                v26 = [v24 initWithAssociatedChatGUID:v25];

                [v26 setBatchSize:a5];
                v27 = [v26 nextBatch];
                if (!v27 && IMOSLoggingEnabled())
                {
                  v28 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    v29 = [v23 guid];
                    *buf = 134218242;
                    v43 = a5;
                    v44 = 2112;
                    v45 = v29;
                    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to fetch %lu number of messages from chat %@", buf, 0x16u);
                  }
                }

                if (!v17)
                {
                  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
                }

                [v17 addObjectsFromArray:{v27, v34}];
              }

              v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
            }

            while (v20);
          }

          goto LABEL_44;
        }
      }

      else
      {
      }

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v35;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Incorrect chat %@, has more than the number of participants we expected!", buf, 0xCu);
        }
      }
    }

    else
    {
      if ([v7 style] != 43)
      {
        v19 = 0;
        goto LABEL_18;
      }

      v18 = [v7 participants];
      v12 = [v18 __imArrayByApplyingBlock:&unk_283F1AC88];

      if ([v12 count] > 1)
      {
        v13 = +[IMDChatStore sharedInstance];
        v14 = [v7 groupID];
        v15 = [v13 chatsWithHandles:v12 onService:v34 displayName:0 groupID:v14 style:43];
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v7;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Chat %@, has the wrong number of participants than what was expected!", buf, 0xCu);
        }
      }
    }

    v17 = 0;
LABEL_44:
    v9 = v34;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v43 = v7;
      v44 = 2112;
      v45 = v9;
      v46 = 2048;
      v47 = a5;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Invalid parameter. chatGUID: %@ service: %@ number of messages:%lu", buf, 0x20u);
    }
  }

  v17 = 0;
LABEL_45:

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_configureSyndicationRangesForMessage:(id)a3 forChat:(id)a4 withSyndicationStatus:(int64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v29 = a4;
  v6 = [v29 autoDonationBehavior];
  v7 = IMOSLoggingEnabled();
  if (v6 == 2)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Chat opted out of Auto donation. Not configuring syndication ranges", buf, 2u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v30 guid];
        v11 = [v29 guid];
        *buf = 138412546;
        v39 = v10;
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Configuring syndication ranges for incoming message:%@ in chat:%@", buf, 0x16u);
      }
    }

    v12 = objc_alloc(MEMORY[0x277D1AA58]);
    v13 = [v30 body];
    v14 = [v30 guid];
    v28 = [v12 initWithMessageBody:v13 messageGUID:v14];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v28 messageParts];
    v15 = 0;
    v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x277D1AA98]);
          v21 = [v19 messagePartRange];
          v23 = v22;
          v24 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          v25 = [v20 initWithSyndicationType:0 messagePartRange:v21 syndicationStartDate:v23 syndicationStatus:v24 assetDescriptor:{a5, 0}];

          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v15 addObject:v25];

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v26 = [v15 copy];
    [v30 setSyndicationRanges:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateBalloonPayload:(id)a3 attachments:(id)a4 bundleID:(id)a5 forMessage:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 length])
  {
    v14 = +[IMDMessageStore sharedInstance];
    v15 = [v14 chatForMessage:v13];

    if (v15)
    {
      if (v12)
      {
        [v13 setBalloonBundleID:v12];
      }

      [v13 setPayloadData:v10];
      if ([v11 count])
      {
        v16 = +[IMDFileTransferCenter sharedInstance];
        v17 = [v13 guid];
        v18 = [v16 guidsForStoredAttachmentPayloadData:v11 messageGUID:v17];
        [v13 setFileTransferGUIDs:v18];
      }

      v19 = [v15 chatIdentifier];
      v20 = [v15 style];
      v21 = [v13 guid];
      v22 = [v15 accountID];
      [(IMDServiceSession *)self didReceiveBalloonPayload:v13 forChat:v19 style:v20 messageGUID:v21 account:v22];
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v13;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", &v26, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = [v13 guid];
      v26 = 138412290;
      v27 = v23;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Chat: Could not update balloon payload for missing payload: %@", &v26, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)a3 chatIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingiMessageChatForID:v6];

  v9 = +[IMDMessageStore sharedInstance];
  v10 = [v9 sortedMessageItemsWithFallbackHash:v5 inChat:v8 limit:1];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 guid];
    v13 = [v11 expectedServiceForCrossServiceReplacement];
    v14 = [v13 isEqualToString:*MEMORY[0x277D1A628]];

    if (v14)
    {
      v15 = +[IMDMessageStore sharedInstance];
      v25 = v12;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v17 = [v15 deleteMessageGUIDs:v16 inChat:v8];

      if ([v17 count])
      {
        v18 = +[IMDBroadcastController sharedProvider];
        v19 = [v18 broadcasterForChatListeners];
        [v19 historicalMessageGUIDsDeleted:v17 chatGUIDs:0 queryID:0];

        v20 = +[IMDChatRegistry sharedInstance];
        [v20 updateNotificationUnreadCountForChat:v8];
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v12;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Failed to delete message with GUID %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Message with GUID %@ not awaiting cross service replacement for iMessageLite", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Failed to find message with fallback hash %@ to delete", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldConvergeChatParticipants:(id)a3 withHandleInfo:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D19268] sharedInstance];
  if ([v7 isInternalInstall])
  {
    v8 = IMGetDomainBoolForKeyWithDefaultValue();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (![v6 count])
  {
LABEL_16:
    LOBYTE(v13) = 0;
    goto LABEL_21;
  }

  v9 = [v6 __imArrayByApplyingBlock:&unk_283F1ACA8];
  v10 = [v5 participantHandles];
  v11 = [v9 count];
  if (v11 == [v10 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (![v9 containsObject:{*(*(&v18 + 1) + 8 * i), v18}])
          {
            LOBYTE(v13) = 1;
            goto LABEL_19;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    LOBYTE(v13) = 1;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)a3 style:(unsigned __int8)a4 completion:(id)a5
{
  v6 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v36 = a5;
  v7 = [MEMORY[0x277D19268] sharedInstance];
  v8 = [v7 isInternalInstall];

  if (v6 == 43 && v8)
  {
    v35 = IMGetCachedDomainValueForKey();
    IMSetDomainValueForKey();
    objc_opt_class();
    v9 = v35;
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v35;
      v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v11)
      {
        v12 = *v45;
        v13 = *MEMORY[0x277D193A8];
        v14 = *MEMORY[0x277D193C0];
        v15 = *MEMORY[0x277D192F8];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v44 + 1) + 8 * i);
            v50[0] = v13;
            v50[1] = v14;
            v51[0] = v17;
            v51[1] = v17;
            v50[2] = v15;
            v51[2] = &unk_283F4ECA8;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
            [v10 addObject:v18];
          }

          v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v11);
      }

      v19 = [MEMORY[0x277D192D8] sharedInstance];
      v20 = MEMORY[0x277D192D0];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];
      v23 = MEMORY[0x277CCACA8];
      v24 = [obj componentsJoinedByString:{@", "}];
      v25 = [v23 stringWithFormat:@"I am overriding chat participants for %@ to %@. This was triggered by a regression test.", v37, v24];
      v26 = [v20 userNotificationWithIdentifier:v22 title:@"I am doing something sneaky." message:v25 defaultButton:@"I did it!" alternateButton:@"I did not do that." otherButton:0];

      *v40 = 0;
      v41 = v40;
      v42 = 0x2020000000;
      v43 = 0;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_22B69ADD4;
      v39[3] = &unk_278707B18;
      v39[4] = v40;
      [v19 addUserNotification:v26 listener:0 completionHandler:v39];
      while ((v41[24] & 1) == 0)
      {
        v27 = [MEMORY[0x277CBEB88] mainRunLoop];
        v28 = [MEMORY[0x277CBEAA8] now];
        v29 = [v28 dateByAddingTimeInterval:0.5];
        [v27 runUntilDate:v29];
      }

      if ([v26 response])
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, " => rejected participant override", buf, 2u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [obj componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v49 = v33;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, " => !!! Overriding participants to %@ !!!", buf, 0xCu);
          }
        }

        v36[2](v36, v10);
      }

      _Block_object_dispose(v40, 8);
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_29:

        goto LABEL_30;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v40 = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => invalid chat override defaults set, ignoring", v40, 2u);
      }
    }

    v9 = v35;
    goto LABEL_29;
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
}

- (NSArray)allBuddies
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_buddies allKeys];
  v4 = [v3 copy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (void)markBuddiesAsChanged:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [(IMDServiceSession *)self beginBuddyChanges];
  [(NSMutableSet *)self->_changedBuddies addObjectsFromArray:v5];

  [(IMDServiceSession *)self endBuddyChanges];
  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)beginBuddyChanges
{
  [(NSRecursiveLock *)self->_lock lock];
  buddyChangeLevel = self->_buddyChangeLevel;
  self->_buddyChangeLevel = buddyChangeLevel + 1;
  if (!buddyChangeLevel)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedBuddies = self->_changedBuddies;
    self->_changedBuddies = v4;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)changeProperty:(id)a3 ofBuddy:(id)a4 to:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDServiceSession *)self canonicalFormOfID:v9];
  if ([v9 length])
  {
    if ([v8 length])
    {
      v12 = *MEMORY[0x277D193A8];
      if ([v8 isEqualToString:*MEMORY[0x277D193A8]])
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v18 = 138412290;
            v19 = v9;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change IDProperty for buddy ID: %@   bailing", &v18, 0xCu);
          }

LABEL_15:
        }
      }

      else
      {
        [(NSRecursiveLock *)self->_lock lock];
        v14 = [(NSMutableDictionary *)self->_buddies objectForKey:v11];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 objectForKey:v8];
        }

        else
        {
          if (!v10)
          {
            [(NSRecursiveLock *)self->_lock unlock];
            goto LABEL_28;
          }

          v15 = [MEMORY[0x277CBEB38] dictionary];
          [v15 setObject:v9 forKey:v12];
          [(NSMutableDictionary *)self->_buddies setObject:v15 forKey:v11];
          v16 = 0;
        }

        if (v16 != v10 && ([v10 isEqual:v16] & 1) == 0)
        {
          if (v10)
          {
            [v15 setObject:v10 forKey:v8];
          }

          else
          {
            [v15 removeObjectForKey:v8];
          }

          [(IMDServiceSession *)self beginBuddyChanges];
          [(NSMutableSet *)self->_changedBuddies addObject:v11];
          [(IMDServiceSession *)self endBuddyChanges];
        }

        [(NSRecursiveLock *)self->_lock unlock];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change empty property for buddy ID: %@", &v18, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change property %@ with nil buddy ID", &v18, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_28:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearPropertiesOfBuddy:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(IMDServiceSession *)self canonicalFormOfID:v4];
  v6 = [(NSMutableDictionary *)self->_buddies objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 allKeys];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v17 = 8;
      v18 = v4;
      v11 = 0;
      v12 = *v20;
      v13 = *MEMORY[0x277D193A8];
      do
      {
        v14 = 0;
        v15 = v11;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v19 + 1) + 8 * v14);

          if (v11 != v13)
          {
            [v7 removeObjectForKey:v11];
          }

          ++v14;
          v15 = v11;
        }

        while (v10 != v14);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      v4 = v18;
    }

    [(IMDServiceSession *)self beginBuddyChanges:v17];
    [(NSMutableSet *)self->_changedBuddies addObject:v5];
    [(IMDServiceSession *)self endBuddyChanges];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)endBuddyChanges
{
  v23 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  buddyChangeLevel = self->_buddyChangeLevel;
  if (buddyChangeLevel <= 0)
  {
    sub_22B7D9794(a2, self, &self->_buddyChangeLevel, &v21);
    buddyChangeLevel = v21;
  }

  v5 = buddyChangeLevel - 1;
  self->_buddyChangeLevel = v5;
  if (!v5)
  {
    if ([(NSMutableSet *)self->_changedBuddies count])
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(NSMutableSet *)self->_changedBuddies allObjects];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(NSMutableDictionary *)self->_buddies objectForKey:*(*(&v17 + 1) + 8 * i)];
            if (v12)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }

      v13 = [(IMDServiceSession *)self broadcaster];
      v14 = [(IMDServiceSession *)self accountID];
      [v13 account:v14 buddyPropertiesChanged:v6];
    }

    changedBuddies = self->_changedBuddies;
    self->_changedBuddies = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)property:(id)a3 ofBuddy:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  buddies = self->_buddies;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:v7];

  v11 = [(NSMutableDictionary *)buddies objectForKey:v10];
  v12 = [v11 objectForKey:v8];

  [(NSRecursiveLock *)self->_lock unlock];

  return v12;
}

- (id)localProperty:(id)a3 ofBuddy:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  localProperties = self->_localProperties;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:v7];

  v11 = [(NSMutableDictionary *)localProperties objectForKey:v10];
  v12 = [v11 objectForKey:v8];

  [(NSRecursiveLock *)self->_lock unlock];

  return v12;
}

- (void)clearLocalProperties
{
  [(NSRecursiveLock *)self->_lock lock];
  localProperties = self->_localProperties;
  self->_localProperties = 0;

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (id)localPropertiesOfBuddy:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  v6 = [(IMDServiceSession *)self canonicalFormOfID:v5];

  localProperties = self->_localProperties;
  if (!localProperties)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_localProperties;
    self->_localProperties = v8;

    localProperties = self->_localProperties;
  }

  v10 = [(NSMutableDictionary *)localProperties objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_localProperties setObject:v10 forKey:v6];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (void)changeLocalProperty:(id)a3 ofBuddy:(id)a4 to:(id)a5
{
  v12 = a5;
  lock = self->_lock;
  v9 = a4;
  v10 = a3;
  [(NSRecursiveLock *)lock lock];
  v11 = [(IMDServiceSession *)self localPropertiesOfBuddy:v9];

  if (v12)
  {
    [v11 setObject:v12 forKey:v10];
  }

  else
  {
    [v11 removeObjectForKey:v10];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (int64_t)registrationStatus
{
  v2 = [(IMDServiceSession *)self account];
  v3 = [v2 registrationStatus];

  return v3;
}

- (int)registrationError
{
  v2 = [(IMDServiceSession *)self account];
  v3 = [v2 registrationError];

  return v3;
}

- (NSDictionary)registrationAlertInfo
{
  v2 = [(IMDServiceSession *)self account];
  v3 = [v2 registrationAlertInfo];

  return v3;
}

- (id)loginID
{
  v3 = [(IMDServiceSession *)self account];
  v4 = [v3 accountDefaults];
  v5 = [v4 objectForKey:*MEMORY[0x277D19420]];
  v6 = [(IMDServiceSession *)self canonicalFormOfID:v5];

  return v6;
}

- (void)noteBadPassword
{
  self->_badPass = 1;
  password = self->_password;
  self->_password = 0;

  [(IMDServiceSession *)self disallowReconnection];
}

- (void)_abandonPWFetcher
{
  v17 = *MEMORY[0x277D85DE8];
  pwRequestID = self->_pwRequestID;
  v4 = IMOSLoggingEnabled();
  if (pwRequestID)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = self->_pwRequestID;
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Abandoning password fetcher with request ID: %@  session: %@", &v13, 0x16u);
      }
    }

    v7 = [MEMORY[0x277D07DE0] sharedInstance];
    v8 = self->_pwRequestID;
    v9 = [(IMDServiceSession *)self displayName];
    [v7 cancelRequestID:v8 serviceIdentifier:v9];

    v10 = self->_pwRequestID;
    self->_pwRequestID = 0;
  }

  else if (v4)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No pending password fetch requests for session: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_abandonSystemProxySettingsFetcher
{
  [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher setDelegate:0];
  systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
  self->_systemProxySettingsFetcher = 0;
}

- (void)appendTranslation:(id)a3 toMessageItem:(id)a4 partIndex:(int64_t)a5 toChatIdentifier:(id)a6 style:(unsigned __int8)a7 account:(id)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v29 = a7;
  v16 = a8;
  v28 = a6;
  v17 = a6;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&v28 style:&v29];
  v18 = v28;

  v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:v29 updatingAccount:1];
  if (v19)
  {
    v20 = +[IMDMessageStore sharedInstance];
    [v20 storeTranslation:v14 onMessage:v15 partIndex:a5 chat:v19];

    v30 = v15;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v22 = IMCreateSerializedItemsFromArray();

    v23 = [(IMDServiceSession *)self broadcasterForChatListeners];
    v24 = [(IMDServiceSession *)self account];
    v25 = [v24 accountID];
    [v23 account:v25 chat:v18 style:v29 messagesUpdated:v22];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = v15;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not find chat for translated message. message: %@ chat: %@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "/*-------calling into sendGroupPhotoUpdate from legacy service session, please file a radar-------*/", v15, 2u);
    }
  }
}

- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "/*-------calling into _requestGroupPhotoResendForChatGUID from legacy service session, please file a radar-------*/", v11, 2u);
    }
  }
}

- (void)retryGroupPhotoUpload:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "/*-------calling into retryGroupPhotoUpload from legacy service session, please file a radar-------*/", v16, 2u);
    }
  }
}

- (void)retryTranscriptBackgroundUpload:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 transferID:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "/*-------calling into retryTranscriptBackgroundUpload from legacy service session, please file a radar-------*/", v12, 2u);
    }
  }
}

- (void)sendLazuliSpamReport:(id)a3 isBot:(BOOL)a4 spamType:(unint64_t)a5
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "/*-------calling into sendLazuliSpamReport from legacy service session, please file a radar-------*/", v7, 2u);
    }
  }
}

- (void)closeSessionForChat:(id)a3 chatGUID:(id)a4 didDeleteConversation:(BOOL)a5 style:(unsigned __int8)a6
{
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "/*-------calling into closeSessionForChat from legacy service session, please file a radar-------*/", v10, 2u);
    }
  }
}

- (void)sendReportNotJunkMessageGUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IMDSpamMessageCreator);
  [(IMDSpamMessageCreator *)v4 reportNotJunkToTrustKitForMessageGUID:v3];
}

- (BOOL)sendNicknameUpdatesToPeerDevices:(id)a3 toDestinations:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "/*-------calling into sendNicknameUpdatesToPeerDevices: from service that doesn't support it. File a radar-------*/", v9, 2u);
    }
  }

  return 0;
}

- (void)sendNicknameInfoToChatID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into sendNicknameInfoToChatID: from service that doesn't support it. File a radar-------*/", v5, 2u);
    }
  }
}

- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectMarkUnreadToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectRecoverChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into acceptChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectMarkAsReviewedToPeerDevicesForChatGUIDs: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into junkChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into priorityMessageToPeerDevicesForMessageGUIDs: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a9;
  v16 = a10;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "/*-------calling into sendEditedMessage: from service that doesn't support it. File a radar-------*/", v18, 2u);
    }
  }
}

- (id)groupIDForChat:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDServiceSession *)self isReplicating])
  {
    v5 = [(IMDServiceSession *)self mainSession];
    v6 = [v5 groupIDForChat:v4];

    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isOneChatEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = [v4 groupID];
      v10 = [v6 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        v11 = +[IMDChatRegistry sharedInstance];
        [v11 _setGroupID:v6 forChatAndAllSiblings:v4];
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v13 = [v12 isMissingMessagesEnabled];

    if (!v13 || ([v4 latestIdentifierForDomain:*MEMORY[0x277D19780]], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [v4 groupID];

      if (v14)
      {
        v6 = [v4 groupID];
      }

      else
      {
        v6 = [v4 generateNewGroupID];
        [v4 assignIdentifier:v6 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v4 guid];
            v19 = 138412546;
            v20 = v16;
            v21 = 2112;
            v22 = v6;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "The chat with guid %@ has no iMessageGroupID and therefore, a new groupID must be created. This could fork the chat. New GroupID: %@", &v19, 0x16u);
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)userNotificationDidFinish:(id)a3
{
  v5 = a3;
  v4 = [v5 identifier];
  if ([v4 isEqual:@"__ksFirewallUserNotificationIdentifier"])
  {
    [(IMDServiceSession *)self _handleFirewallUserNotificationDidFinish:v5];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = qword_2814212B8;
    qword_2814212B8 = @"Not Connected";

    v3 = qword_2814212C0;
    qword_2814212C0 = @"Unexpectedly disconnected";

    v4 = qword_2814212C8;
    qword_2814212C8 = @"Disconnecting...";

    v5 = qword_2814212D0;
    qword_2814212D0 = @"Connecting...";

    v6 = qword_2814212D8;
    qword_2814212D8 = @"Connecfted";
  }
}

- (void)disallowReconnection
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(IMDAccount *)self->_account accountID];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[IMDServiceSession disallowReconnection] %@", &v6, 0xCu);
    }
  }

  self->_shouldReconnect = 0;
  [(IMDServiceSession *)self _clearAutoReconnectTimer];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)autoReconnect
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(IMDServiceSession *)self accounts];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(IMDServiceSession *)self autoReconnectWithAccount:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)autoReconnectWithAccount:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [v4 loginID];
        v7 = [v4 accountID];
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Auto-Reconnect Request: %@:%@", &v15, 0x16u);
      }
    }

    if ([(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn])
    {
      if ([(IMDServiceSession *)self networkConditionsAllowLogin])
      {
        if ([v4 loginStatus] <= 2)
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v9 = [v4 loginID];
              v10 = [v4 accountID];
              v15 = 138412546;
              v16 = v9;
              v17 = 2112;
              v18 = v10;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Reconnecting account: %@:%@", &v15, 0x16u);
            }
          }

          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
          [(IMDServiceSession *)self performSelector:sel_loginWithAccount_ withObject:v4 afterDelay:1.0];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v4 loginID];
          v13 = [v4 accountID];
          v15 = 138412546;
          v16 = v12;
          v17 = 2112;
          v18 = v13;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "Auto-Reconnect failed (Network conditions don't allow it): %@:%@", &v15, 0x16u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_doLoginIgnoringProxy:(BOOL)a3 withAccount:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_activated)
  {
    v70 = a3;
    [(NSRecursiveLock *)self->_lock lock];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [v6 loginID];
        v9 = [v6 accountID];
        *buf = 138412802;
        v73 = v8;
        v74 = 2112;
        v75 = v9;
        v76 = 2048;
        v77 = [v6 loginStatus];
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Do Login: %@:%@  (serviceLoginStatus: %lu)", buf, 0x20u);
      }
    }

    if ([v6 loginStatus] > 1)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [(IMDServiceSession *)self loginID];
          v25 = [(IMDAccount *)self->_account accountID];
          v26 = [(IMDAccount *)self->_account loginStatus];
          *buf = 138412802;
          v73 = v24;
          v74 = 2112;
          v75 = v25;
          v76 = 2048;
          v77 = v26;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEBUG, "Ignoring Login: %@:%@  (serviceLoginStatus: %lu)", buf, 0x20u);
        }
      }

      goto LABEL_61;
    }

    [(IMDServiceSession *)self refreshServiceCapabilities];
    loginID = self->_loginID;
    self->_loginID = 0;

    serverHost = self->_serverHost;
    self->_serverHost = 0;

    proxyHost = self->_proxyHost;
    self->_proxyHost = 0;

    proxyAccount = self->_proxyAccount;
    self->_proxyAccount = 0;

    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = 0;

    v15 = [(IMDServiceSession *)self accountDefaults];
    v16 = [(IMDServiceSession *)self loginID];
    v17 = self->_loginID;
    self->_loginID = v16;

    v18 = [v15 objectForKey:*MEMORY[0x277D194B0]];
    self->_useSSL = [v18 BOOLValue];

    if (self->_useSSL)
    {
      v69 = *MEMORY[0x277D19490];
      v19 = [v15 objectForKey:?];
      v20 = [v19 stringByRemovingWhitespace];

      v68 = *MEMORY[0x277D19498];
      v21 = [v15 objectForKey:?];
      v71 = [(IMDServiceSession *)self service];
      if ([v20 length])
      {
        v22 = 0;
      }

      else
      {
        v33 = [v71 defaultAccountSettings];
        v34 = [v33 objectForKey:v69];
        v35 = [v34 stringByRemovingWhitespace];

        v22 = [v35 length] != 0;
        v20 = v35;
      }

      if ([v20 length])
      {
        v36 = v20;
      }

      else
      {
        v41 = [v15 objectForKey:*MEMORY[0x277D19480]];
        v36 = [v41 stringByRemovingWhitespace];

        if ([v36 length])
        {
          v22 = 1;
        }
      }

      if ([v36 length])
      {
        v29 = v36;
      }

      else
      {
        v45 = [v71 defaultAccountSettings];
        v46 = [v45 objectForKey:*MEMORY[0x277D19480]];
        v29 = [v46 stringByRemovingWhitespace];

        if ([v29 length])
        {
          v22 = 1;
        }
      }

      if ([v21 intValue])
      {
        v47 = v21;
      }

      else
      {
        v48 = [v71 defaultAccountSettings];
        v47 = [v48 objectForKey:v68];

        if ([v47 intValue])
        {
          v22 = 1;
        }
      }

      if ([v47 intValue])
      {
        v49 = v47;
      }

      else
      {
        v49 = [v15 objectForKey:*MEMORY[0x277D19488]];

        if ([v49 intValue])
        {
          v22 = 1;
        }
      }

      if ([v49 intValue])
      {
        v40 = v49;
      }

      else
      {
        v50 = [v71 defaultAccountSettings];
        v40 = [v50 objectForKey:*MEMORY[0x277D19488]];

        if ([v40 intValue])
        {
          v22 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, v29);
      self->_serverPort = [v40 intValue];
      if (v29)
      {
        v51 = v22;
      }

      else
      {
        v51 = 0;
      }

      if (!v51 || !v40)
      {
        goto LABEL_55;
      }

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v29, v69, v40, v68, 0}];
    }

    else
    {
      v27 = *MEMORY[0x277D19480];
      v28 = [v15 objectForKey:*MEMORY[0x277D19480]];
      v29 = [v28 stringByRemovingWhitespace];

      v30 = *MEMORY[0x277D19488];
      v31 = [v15 objectForKey:*MEMORY[0x277D19488]];
      v71 = [(IMDServiceSession *)self service];
      if ([v29 length])
      {
        v32 = 0;
      }

      else
      {
        v37 = [v71 defaultAccountSettings];
        v38 = [v37 objectForKey:v27];
        v39 = [v38 stringByRemovingWhitespace];

        v32 = [v39 length] != 0;
        v29 = v39;
      }

      if ([v31 intValue])
      {
        v40 = v31;
      }

      else
      {
        v42 = [v71 defaultAccountSettings];
        v40 = [v42 objectForKey:v30];

        if ([v40 intValue])
        {
          v32 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, v29);
      self->_serverPort = [v40 intValue];
      if (v29)
      {
        v43 = v32;
      }

      else
      {
        v43 = 0;
      }

      if (!v43 || !v40)
      {
        goto LABEL_55;
      }

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v29, v27, v40, v30, 0}];
    }

    v52 = v44;
    v53 = [(IMDServiceSession *)self account];
    [v53 writeAccountDefaults:v52];

LABEL_55:
    if (v70 || ([v15 objectForKey:*MEMORY[0x277D194A0]], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "BOOLValue"), v54, !v55))
    {
      self->_proxyType = 4;
      [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:v6];
    }

    else
    {
      v56 = [v15 objectForKey:*MEMORY[0x277D194A8]];
      v57 = [v56 BOOLValue];

      if (v57)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v58 = objc_alloc(MEMORY[0x277D192B0]);
        v59 = [(IMDServiceSession *)self server];
        v60 = [v58 initWithHost:v59 port:self->_serverPort delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v60;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
      }

      else
      {
        v63 = [v15 objectForKey:*MEMORY[0x277D19450]];
        self->_proxyType = [v63 intValue];

        v64 = [v15 objectForKey:*MEMORY[0x277D19440]];
        v65 = [v64 stringByRemovingWhitespace];
        v66 = self->_proxyHost;
        self->_proxyHost = v65;

        v67 = [v15 objectForKey:*MEMORY[0x277D19448]];
        self->_proxyPort = [v67 intValue];

        [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:v6];
      }
    }

LABEL_61:
    [(NSRecursiveLock *)self->_lock unlock];
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_login_serverSettingsReadyWithAccount:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(IMDServiceSession *)self loginID];
        v7 = [(IMDAccount *)self->_account accountID];
        v21 = 138412546;
        v22 = v6;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_serverSettingsReadyWithAccount: %@:%@", &v21, 0x16u);
      }
    }

    v8 = [(IMDServiceSession *)self server];
    v9 = [(IMDServiceSession *)self service];
    v10 = [v9 requiresHost];

    if ((([v8 length] == 0) & v10) == 1)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"The account name or server is not valid." value:&stru_283F23018 table:@"DaemonCoreLocalizable"];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "  setting service status to disconnected, account or server is invalid", &v21, 2u);
        }
      }

      [v4 _forceSetLoginStatus:1 message:v12 reason:0 properties:0];
      [(IMDServiceSession *)self disallowReconnection];

      goto LABEL_22;
    }

    networkMonitor = self->_networkMonitor;
    if (!networkMonitor)
    {
      goto LABEL_16;
    }

    if (([(IMNetworkMonitor *)networkMonitor immediatelyReachable]& 1) == 0 && ![(IMDServiceSession *)self overrideNetworkAvailability])
    {
      v19 = IMDaemonCoreBundle();
      v20 = [v19 localizedStringForKey:@"A network error occurred.\n" value:&stru_283F23018 table:@"DaemonCoreLocalizable"];

      [v4 _forceSetLoginStatus:0 message:v20 reason:0 properties:0];
      goto LABEL_22;
    }

    if (!self->_networkMonitor)
    {
LABEL_16:
      v15 = [(IMDServiceSession *)self service];
      v16 = [v15 ignoresNetworkConnectivity];

      if ((v16 & 1) == 0 && IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = self;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "****** No IMNetworkMonitor for login of account: %@", &v21, 0xCu);
        }
      }
    }

    [(IMDServiceSession *)self _data_connection_readyWithAccount:v4];
LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_data_connection_readyWithAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(IMDServiceSession *)self loginID];
        v7 = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_data_connection_ready: %@:%@", buf, 0x16u);
      }
    }

    if (!self->_shouldReconnect)
    {
      password = self->_password;
      self->_password = 0;
    }

    if ([(IMDServiceSession *)self accountNeedsPassword]&& !self->_password)
    {
      [(IMDServiceSession *)self _abandonPWFetcher];
      v10 = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      v12 = [(IMDServiceSession *)self service];
      v13 = [v12 internalName];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B6D6704;
      v14[3] = &unk_2787085D0;
      v14[4] = self;
      v15 = v4;
      [v10 fetchPasswordForProfileID:0 username:loginID service:v13 outRequestID:0 completionBlock:v14];
    }

    else
    {
      [(IMDServiceSession *)self _login_usernameAndPasswordReadyWithAccount:v4];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_login_usernameAndPasswordReadyWithAccount:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [v4 loginID];
        v7 = [v4 accountID];
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_usernameAndPasswordReady: %@:%@", &v12, 0x16u);
      }
    }

    if (self->_proxyType == 4)
    {
      [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:v4];
    }

    else
    {
      systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      if (!systemProxySettingsFetcher)
      {
        v9 = [objc_alloc(MEMORY[0x277D192B0]) initWithProxyProtocol:self->_proxyType proxyHost:self->_proxyHost proxyPort:self->_proxyPort delegate:self];
        v10 = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v9;

        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      }

      [(IMSystemProxySettingsFetcher *)systemProxySettingsFetcher retrieveProxyAccountSettings];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_login_checkUsernameAndPasswordWithAccount:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [(IMDServiceSession *)self loginID];
        v7 = [(IMDAccount *)self->_account accountID];
        v8 = [(NSString *)self->_password length];
        v9 = @"YES";
        badPass = self->_badPass;
        if (v8)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138413058;
        if (!badPass)
        {
          v9 = @"NO";
        }

        v34 = v6;
        v35 = 2112;
        v36 = v7;
        v37 = 2112;
        v38 = v11;
        v39 = 2112;
        v40 = v9;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_checkUsernameAndPassword: %@:%@  has pass: %@   bad pass: %@", buf, 0x2Au);
      }
    }

    if (([(NSString *)self->_password length]|| ![(IMDServiceSession *)self accountNeedsPassword]) && ([(NSString *)self->_loginID length]|| ![(IMDServiceSession *)self accountNeedsLogin]) && !self->_badPass)
    {
      if ([(IMDServiceSession *)self networkConditionsAllowLogin])
      {
        if ([v4 loginStatus] > 3)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_30;
          }

          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEBUG, "Strange, we're here, but already logged in", buf, 2u);
          }
        }

        else
        {
          if (self->_activated)
          {
            [v4 setLoginStatus:3 message:0];
            [(IMDServiceSession *)self loginServiceSessionWithAccount:v4];
            goto LABEL_30;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_30;
          }

          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEBUG, "Skipping login, we're not activated", buf, 2u);
          }
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_30;
        }

        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEBUG, "_login_checkUsernameAndPassword: networkMonitor says we're not reachable", buf, 2u);
        }
      }

      goto LABEL_30;
    }

    if ([(IMDServiceSession *)self accountNeedsPassword])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(NSString *)self->_password length];
          v14 = [(NSString *)self->_loginID length];
          v15 = @"YES";
          v16 = self->_badPass;
          if (v13)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          *buf = 138413058;
          if (v14)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v34 = self;
          v35 = 2112;
          if (!v16)
          {
            v15 = @"NO";
          }

          v36 = v17;
          v37 = 2112;
          v38 = v18;
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Building password notification dialog for: %@   (has pass: %@   has login: %@  bad pass: %@)", buf, 0x2Au);
        }
      }

      v19 = [(IMDServiceSession *)self capabilities];
      v29 = [(IMDServiceSession *)self displayName];
      v20 = self->_pwRequestID;
      [(IMDServiceSession *)self _abandonPWFetcher];
      v21 = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      v23 = self->_badPass;
      v32 = v20;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_22B6D6F88;
      v30[3] = &unk_2787085F8;
      v30[4] = self;
      v31 = v4;
      [v21 requestPasswordForUsername:loginID service:v29 badPassword:v23 showForgotPassword:(v19 >> 31) & 1 shouldRememberPassword:1 outRequestID:&v32 completionBlock:v30];
      v24 = v32;

      pwRequestID = self->_pwRequestID;
      self->_pwRequestID = v24;
      v26 = v24;

      self->_badPass = 0;
    }
  }

LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)systemProxySettingsFetcher:(id)a3 retrievedHost:(id)a4 port:(unsigned __int16)a5 protocol:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (self->_activated)
  {
    if (a6 == 4)
    {
      systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      self->_systemProxySettingsFetcher = 0;

      [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:1];
    }

    else
    {
      [(IMDServiceSession *)self _updateNetworkMonitorWithRemoteHost:v11];
    }

    self->_proxyType = a6;
    objc_storeStrong(&self->_proxyHost, a4);
    self->_proxyPort = a5;
    im_dispatch_after();
  }
}

- (void)systemProxySettingsFetcher:(id)a3 retrievedAccount:(id)a4 password:(id)a5
{
  v12 = a4;
  v8 = a5;
  if (self->_activated)
  {
    objc_storeStrong(&self->_proxyAccount, a4);
    objc_storeStrong(&self->_proxyPassword, a5);
    systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
    self->_systemProxySettingsFetcher = 0;

    v10 = +[IMDAccountController sharedAccountController];
    v11 = [v10 accountForAccountID:v12];

    if (!v11)
    {
      v11 = [(IMDServiceSession *)self account];
    }

    [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:v11];
  }
}

- (void)autoLogin
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [(IMDServiceSession *)self loginID];
        v5 = [(IMDAccount *)self->_account accountID];
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "autoLogin: %@:%@", &v11, 0x16u);
      }
    }

    v6 = [(IMDServiceSession *)self accountID];
    if ([v6 length])
    {
      v7 = [(IMDServiceSession *)self accountDefaults];
      v8 = [v7 objectForKey:*MEMORY[0x277D193F8]];
      if ([v8 BOOLValue])
      {

LABEL_11:
        [(IMDServiceSession *)self login];
        goto LABEL_12;
      }

      v9 = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)login
{
  v3 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self loginWithAccount:v3];
}

- (void)loginWithAccount:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(IMDServiceSession *)self loginID];
        v7 = [(IMDAccount *)self->_account accountID];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Login request: %@:%@ (Setting should reconnect flag = YES)", &v9, 0x16u);
      }
    }

    self->_shouldReconnect = 1;
    [(IMDServiceSession *)self _setAutoReconnectTimer];
    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logoutServiceSessionWithAccount:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession logoutServiceSession]: %@, account:%@", &v13, 0x16u);
      }
    }

    if (self->_systemProxySettingsFetcher)
    {
      [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
      [v4 _forceSetLoginStatus:0 message:0 reason:0 properties:0];
    }

    [(IMDServiceSession *)self _abandonPWFetcher];
    if ([v4 loginStatus])
    {
      [v4 _forceSetLoginStatus:0 message:0 reason:0 properties:0];
    }

    if (!self->_shouldReconnect)
    {
      password = self->_password;
      self->_password = 0;

      serverHost = self->_serverHost;
      self->_serverHost = 0;
    }

    loginID = self->_loginID;
    self->_loginID = 0;

    proxyHost = self->_proxyHost;
    self->_proxyHost = 0;

    proxyAccount = self->_proxyAccount;
    self->_proxyAccount = 0;

    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = 0;

    self->_saveKeychainPassword = 0;
    if ([(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn])
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
      [(IMDServiceSession *)self performSelector:sel_login withObject:0 afterDelay:1.0];
    }

    if (self->_shouldReconnect)
    {
      [(IMDServiceSession *)self _setAutoReconnectTimer];
    }

    else
    {
      [(IMDServiceSession *)self _clearAutoReconnectTimer];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logout
{
  v3 = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self logoutWithAccount:v3];
}

- (void)logoutWithAccount:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      activated = self->_activated;
      *v17 = 138412802;
      if (activated)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *&v17[4] = self;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ logoutWithAccount:%@] (activated = %@)", v17, 0x20u);
    }
  }

  if (self->_activated)
  {
    v8 = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(IMDServiceSession *)self loginID];
          *v17 = 138412290;
          *&v17[4] = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Tried to logout: %@  but we're not supposed to, reflecting this!", v17, 0xCu);
        }
      }

      if ([v4 loginStatus])
      {
        v12 = [(IMDServiceSession *)self broadcaster];
        v13 = [v4 accountID];
        [v12 account:v13 loginStatusChanged:4 message:@"<<Connected>>" reason:0xFFFFFFFFLL properties:0];
      }
    }

    else
    {
      if (v9)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [(IMDServiceSession *)self loginID];
          *v17 = 138412290;
          *&v17[4] = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "** %@: clearing _shouldReconnectFlag at logout", v17, 0xCu);
        }
      }

      [(IMDServiceSession *)self disallowReconnection];
      [(IMDServiceSession *)self logoutServiceSessionWithAccount:v4];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)serviceSessionDidLoginWithAccount:(id)a3
{
  if (self->_activated)
  {
    [a3 _forceSetLoginStatus:4 message:0 reason:0xFFFFFFFFLL properties:0];
    [(IMDServiceSession *)self _clearAutoReconnectTimer];

    [(IMDServiceSession *)self _abandonPWFetcher];
  }
}

- (void)serviceSessionDidLogoutWithAccount:(id)a3
{
  if (self->_activated)
  {
    [a3 _forceSetLoginStatus:0 message:0 reason:0xFFFFFFFFLL properties:0];

    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_wentOfflineWithAccount:(id)a3
{
  if (self->_activated)
  {
    lock = self->_lock;
    v6 = a3;
    [(NSRecursiveLock *)lock lock];
    [(NSMutableDictionary *)self->_buddies removeAllObjects];
    [(NSMutableDictionary *)self->_localProperties removeAllObjects];
    [(NSRecursiveLock *)self->_lock unlock];
    [(IMDServiceSession *)self autoReconnectWithAccount:v6];
  }
}

- (void)_setAutoReconnectTimer
{
  if (!self->_activated)
  {
    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_autoReconnectTimer:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession _autoReconnectTimer]: %@", &v11, 0xCu);
      }
    }

    v6 = [(IMDServiceSession *)self networkConditionsAllowLogin];
    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, " => Network appears to be up, we'll try to auto reconnect", &v11, 2u);
        }
      }

      [(IMDServiceSession *)self autoReconnect];
      [(IMDServiceSession *)self _reconnectIfNecessary];
    }

    else if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** Network does not appear to be up, we'll skip this attempt", &v11, 2u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_clearAutoReconnectTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[IMDServiceSession _clearAutoReconnectTimer]: %@", &v6, 0xCu);
    }
  }

  [(NSTimer *)self->_reconnectTimer invalidate];
  reconnectTimer = self->_reconnectTimer;
  self->_reconnectTimer = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllDataWithCompletionHandler:(id)a3
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B7F8D00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B7F8D08;
  v13[5] = v12;
  v14 = self;
  sub_22B7C0EFC(0, 0, v8, &unk_22B7F8D10, v13);
}

- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)a3 handles:(id)a4
{
  sub_22B6EFD80();
  sub_22B7DB918();
  sub_22B7DAF08();
  v4 = sub_22B7DAEF8();

  return v4 & 1;
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)a3 messageItemsToTranslateLocally:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_22B7DB918();
  sub_22B733994();
  v14 = sub_22B7DB918();
  v15 = sub_22B7DB6A8();
  v17 = v16;
  v18 = sub_22B7DBA58();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_22B7DBA18();
  v19 = self;
  v20 = sub_22B7DBA08();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v17;
  *(v21 + 56) = a6;
  *(v21 + 64) = v19;
  *(v21 + 72) = v14;
  sub_22B722F28(0, 0, v12, &unk_22B7FA6B0, v21);
}

@end