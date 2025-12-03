@interface IMDServiceSession
+ (id)__allServiceSessionsWeakReferenceArray;
+ (id)existingServiceSessionForService:(id)service;
+ (void)__registerNewServiceSession:(id)session;
+ (void)initialize;
- (BOOL)_alwaysAllowMarkingSent;
- (BOOL)_canHandleTransferAccept:(id)accept;
- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)chat;
- (BOOL)_canMarkMessageAsSent:(id)sent;
- (BOOL)_canUpgradeExistingMessageItem:(id)item replacementReplicatedMessageItem:(id)messageItem;
- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)d attempts:(int64_t)attempts date:(id)date account:(id)account;
- (BOOL)_isMessageSWYSpamMessage:(id)message inChat:(id)chat;
- (BOOL)_processesNetworkEvents;
- (BOOL)_shouldConvergeChatParticipants:(id)participants withHandleInfo:(id)info;
- (BOOL)_shouldDropSendingMessage;
- (BOOL)_shouldShowSWYQuickActionForMessage:(id)message outAppName:(id *)name outBundleID:(id *)d;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s;
- (BOOL)accountNeedsLogin;
- (BOOL)accountNeedsPassword;
- (BOOL)accountShouldBeAlwaysLoggedIn;
- (BOOL)allowedAsChild;
- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)d date:(id)date;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)hasValidDowngradeRequestForHandleID:(id)d;
- (BOOL)isActive;
- (BOOL)isAwaitingStorageTimer;
- (BOOL)isReplicating;
- (BOOL)messageServiceNamed:(id)named canProcessMessagesFromServiceNamed:(id)serviceNamed;
- (BOOL)networkConditionsAllowLogin;
- (BOOL)readReceiptsGloballyEnabled;
- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds;
- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations;
- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles;
- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary;
- (Class)spotlightItemRecorderClass;
- (IMDAccount)replicationAccount;
- (IMDService)replicationService;
- (IMDServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (IMDServiceSession)mainSession;
- (IMDServiceSession)replicationProxy;
- (NSArray)allBuddies;
- (NSArray)replicationSessions;
- (NSDictionary)buddyProperties;
- (NSDictionary)registrationAlertInfo;
- (NSString)displayName;
- (id)_autoReplier;
- (id)_chatForMemberStatusChange:(id)change;
- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary;
- (id)_collaborationMessageProcessingQueue;
- (id)_determineResultMessageForInput:(id)input output:(id)output original:(id)original;
- (id)_downgradableServiceNames;
- (id)_fetchMessagesFromChat:(id)chat onService:(id)service numberOfMessages:(unint64_t)messages;
- (id)_guidForChat:(id)chat style:(unsigned __int8)style;
- (id)_predominantServiceForChat:(id)chat usingMessageThreshold:(unint64_t)threshold;
- (id)_revokeSiblingMessagesForReplication:(id)replication;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD;
- (id)broadcaster;
- (id)broadcasterForACConferenceListeners;
- (id)broadcasterForAVConferenceListeners;
- (id)broadcasterForChatListeners;
- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)status;
- (id)broadcasterForChatObserverListeners;
- (id)broadcasterForCollaborationListeners;
- (id)broadcasterForNotificationsListeners;
- (id)broadcasterForVCConferenceListeners;
- (id)canonicalFormOfID:(id)d;
- (id)canonicalFormOfID:(id)d withIDSensitivity:(int)sensitivity;
- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account updatingAccount:(BOOL)updatingAccount;
- (id)chatForItemWithGUID:(id)d;
- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date;
- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)info;
- (id)didChangeMemberStatus:(id)status;
- (id)existingChatForID:(id)d;
- (id)existingChatsForGroupID:(id)d;
- (id)groupIDForChat:(id)chat;
- (id)itemWithGUID:(id)d;
- (id)localPropertiesOfBuddy:(id)buddy;
- (id)localProperty:(id)property ofBuddy:(id)buddy;
- (id)loginID;
- (id)otcUtilities;
- (id)outgoingReplicationCallerIDForChat:(id)chat;
- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts;
- (id)property:(id)property ofBuddy:(id)buddy;
- (id)sessionSpecificTransferIDForTransferID:(id)d;
- (int)registrationError;
- (int64_t)_incomingMessageIndexReason;
- (int64_t)registrationStatus;
- (unint64_t)capabilities;
- (unint64_t)pendingReadReceiptFromStorageCount;
- (void)_abandonPWFetcher;
- (void)_abandonSystemProxySettingsFetcher;
- (void)_autoReconnectTimer:(id)timer;
- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchID:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)context isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7;
- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)identifier style:(unsigned __int8)style completion:(id)completion;
- (void)_callMonitorStateChanged:(id)changed;
- (void)_checkMessageForENURL:(id)l;
- (void)_clearAutoReconnectTimer;
- (void)_clearDowngradeMarkersForChat:(id)chat;
- (void)_clearNetworkMonitor;
- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)identifier account:(id)account;
- (void)_configureAccountInformationOnItem:(id)item withAccount:(id)account;
- (void)_configureIdentifierForOutgoingItem:(id)item withIdentifier:(id)identifier withStyle:(unsigned __int8)style;
- (void)_configureSyndicationRangesForMessage:(id)message forChat:(id)chat withSyndicationStatus:(int64_t)status;
- (void)_configureTimeOnOutgoingItem:(id)item;
- (void)_data_connection_readyWithAccount:(id)account;
- (void)_didReceiveMessagePlayedForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageReadForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageSavedForMessageID:(id)d ofType:(int64_t)type forChat:(id)chat fromHandle:(id)handle fromMe:(BOOL)me date:(id)date attempts:(int64_t)attempts account:(id)self0 completionBlock:(id)self1;
- (void)_didReceivePotentialCollaborationMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)_doLoginIgnoringProxy:(BOOL)proxy withAccount:(id)account;
- (void)_expireStateTimerFired;
- (void)_handleExpireStateDictionary:(id)dictionary;
- (void)_handleFileTransferAccepted:(id)accepted;
- (void)_handleFileTransferBatchAccepted:(id)accepted;
- (void)_handleRoutingWithDictionary:(id)dictionary;
- (void)_handleScheduledMessageFailure:(id)failure;
- (void)_handleWatchdogWithDictionary:(id)dictionary;
- (void)_login_checkUsernameAndPasswordWithAccount:(id)account;
- (void)_login_serverSettingsReadyWithAccount:(id)account;
- (void)_login_usernameAndPasswordReadyWithAccount:(id)account;
- (void)_managedPrefsNotification:(id)notification;
- (void)_mapRoomChatToGroupChat:(id *)chat style:(unsigned __int8 *)style;
- (void)_markChatAsDowngraded:(id)downgraded;
- (void)_markFromStorageIfNeeded:(id)needed messageGUID:(id)d;
- (void)_messageStoreCompletion:(BOOL)completion inputMessage:(id)message outputMessage:(id)outputMessage originalMessage:(id)originalMessage completionBlock:(id)block;
- (void)_networkChanged:(id)changed;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success;
- (void)_processNetworkMonitorUpdate;
- (void)_processPotentialNetworkChange;
- (void)_reconnectIfNecessary;
- (void)_reconnectIfNecessaryWithAccount:(id)account;
- (void)_removeChatGuidFromCoreDuet:(id)duet;
- (void)_replicationSessionsChanged;
- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (void)_resetTransferToTapDownloadState:(id)state;
- (void)_routingTimerFired;
- (void)_setAutoReconnectTimer;
- (void)_setOutgoingFlagsOnMessage:(id)message;
- (void)_setPendingNetworkMonitorUpdate;
- (void)_setReplyGUIDOnMessage:(id)message forChat:(id)chat;
- (void)_setSortIDForMessage:(id)message forChat:(id)chat;
- (void)_storeTranscriptItem:(id)item inChat:(id)chat account:(id)account;
- (void)_updateExpireStateForMessageGUID:(id)d;
- (void)_updateExpireStateTimerWithInterval:(double)interval;
- (void)_updateInputMessage:(id)message forExistingMessage:(id)existingMessage;
- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster;
- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)proxy;
- (void)_updateNetworkMonitorWithRemoteHost:(id)host;
- (void)_updateRoutingForMessageGUID:(id)d chatGUID:(id)iD error:(unsigned int)error account:(id)account;
- (void)_updateRoutingTimerWithInterval:(double)interval;
- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)identifier account:(id)account;
- (void)_updateWatchdogForMessageGUID:(id)d;
- (void)_updateWatchdogTimerWithInterval:(double)interval;
- (void)_watchdogTimerFired;
- (void)_wentOfflineWithAccount:(id)account;
- (void)addAccount:(id)account;
- (void)addDelegate:(id)delegate;
- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)autoLogin;
- (void)autoReconnect;
- (void)autoReconnectWithAccount:(id)account;
- (void)autoReplier:(id)replier generatedAutoReplyText:(id)text forChat:(id)chat;
- (void)autoReplier:(id)replier receivedUrgentRequestForMessages:(id)messages;
- (void)autoReplier:(id)replier sendDeliveredQuietlyReceiptForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat withWillSendToDestinationsHandler:(id)handler;
- (void)autoReplier:(id)replier sendNotifyRecipientCommandForMessages:(id)messages inChat:(id)chat;
- (void)beginBuddyChanges;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)cancelScheduledMessageWithGUID:(id)d;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)canonicalizeChatIdentifier:(id *)identifier style:(unsigned __int8 *)style;
- (void)changeLocalProperty:(id)property ofBuddy:(id)buddy to:(id)to;
- (void)changeProperty:(id)property ofBuddy:(id)buddy to:(id)to;
- (void)clearDowngradeRequestForHandleID:(id)d;
- (void)clearLocalProperties;
- (void)clearPropertiesOfBuddy:(id)buddy;
- (void)closeSessionForChat:(id)chat chatGUID:(id)d didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style;
- (void)dealloc;
- (void)decrementPendingReadReceiptFromStorageCount;
- (void)deleteAllDataWithCompletionHandler:(id)handler;
- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)hash chatIdentifier:(id)identifier;
- (void)didReceiveBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account;
- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)didReceiveErrorMessage:(id)message forChat:(id)chat style:(unsigned __int8)style;
- (void)didReceiveMessageEditingSendFailure:(unsigned int)failure forMessageGUID:(id)d partIndex:(int64_t)index editType:(unint64_t)type;
- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)ds forMessageGUID:(id)d partIndex:(int64_t)index previousMessage:(id)message backwardCompatibilityMessageGUID:(id)iD;
- (void)didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block;
- (void)didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block;
- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion;
- (void)didSendBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account completionBlock:(id)block;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage;
- (void)didSendMessageEditForMessageGUID:(id)d;
- (void)didSendMessagePlayedReceiptForMessageID:(id)d;
- (void)didSendMessagePlayedReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessageReadReceiptForMessageID:(id)d;
- (void)didSendMessageReadReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessageSavedReceiptForMessageID:(id)d;
- (void)didSendMessageSavedReceiptForMessageID:(id)d account:(id)account;
- (void)didSendNotifyRecipientCommandForMessageID:(id)d;
- (void)didSendNotifyRecipientCommandForMessageID:(id)d account:(id)account;
- (void)didSendSyndicationActionItem:(id)item forChat:(id)chat;
- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1 account:(id)self2 category:(int64_t)self3 spamExtensionName:(id)self4 isBlackholed:(BOOL)self5 spamDetectionSource:(int64_t)self6;
- (void)didUpdateChatStatusWithContext:(id)context;
- (void)disallowReconnection;
- (void)downgradeRequestedForHandleID:(id)d expirationDate:(id)date preferredService:(id)service;
- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)endBuddyChanges;
- (void)fallbackToDownloadIfPossible:(id)possible transfer:(id)transfer;
- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds;
- (void)incrementPendingReadReceiptFromStorageCount;
- (void)login;
- (void)loginWithAccount:(id)account;
- (void)logout;
- (void)logoutServiceSessionWithAccount:(id)account;
- (void)logoutWithAccount:(id)account;
- (void)markBuddiesAsChanged:(id)changed;
- (void)markItemForOffGridRelay:(id)relay inChat:(id)chat;
- (void)networkMonitorDidUpdate:(id)update;
- (void)noteBadPassword;
- (void)noteItemFromStorage:(id)storage;
- (void)noteLastItemFromStorage:(id)storage;
- (void)noteLastItemProcessed;
- (void)noteSuppressedMessageUpdate:(id)update;
- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)value;
- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account didReplaceMessageBlock:(id)block completionBlock:(id)completionBlock;
- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context;
- (void)recoverChatsForCommandDictionary:(id)dictionary;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (void)refreshServiceCapabilities;
- (void)registerChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0 account:(id)self1 isBlackholed:(BOOL)self2;
- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only;
- (void)removeAccount:(id)account;
- (void)removeDelegate:(id)delegate;
- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer;
- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationTime:(id)time toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh;
- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d;
- (void)revokeSentMessage:(id)message inChat:(id)chat;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler;
- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account;
- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendHQAttachmentsForMessage:(id)message toChatID:(id)d style:(unsigned __int8)style;
- (void)sendIncomingRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendLazuliSpamReport:(id)report isBot:(BOOL)bot spamType:(unint64_t)type;
- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style destinationHandles:(id)handles;
- (void)sendNicknameInfoToChatID:(id)d;
- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only;
- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat;
- (void)sendRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendReportNotJunkMessageGUID:(id)d;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers;
- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD;
- (void)serviceSessionDidLoginWithAccount:(id)account;
- (void)serviceSessionDidLogoutWithAccount:(id)account;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
- (void)setPendingReadReceiptFromStorageCount:(unint64_t)count;
- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh;
- (void)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block shouldStoreBlock:(id)storeBlock didStoreBlock:(id)didStoreBlock block:(id)a8;
- (void)storeMessages:(id)messages messagesToWithdraw:(id)withdraw messagesToPost:(id)post chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account fromIDSID:(id)d;
- (void)systemProxySettingsFetcher:(id)fetcher retrievedAccount:(id)account password:(id)password;
- (void)systemProxySettingsFetcher:(id)fetcher retrievedHost:(id)host port:(unsigned __int16)port protocol:(int64_t)protocol;
- (void)trackTimeSensitiveContentInMessageItem:(id)item chat:(id)chat;
- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessage:(id)message;
- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID;
- (void)useChatRoom:(id)room forGroupChatIdentifier:(id)identifier;
- (void)userNotificationDidFinish:(id)finish;
- (void)willMoveChatToRecentlyDeleted:(id)deleted;
- (void)willRemoveChat:(id)chat;
@end

@implementation IMDServiceSession

- (unint64_t)capabilities
{
  service = [(IMDServiceSession *)self service];
  v4 = [service supportsCapability:*MEMORY[0x277D1A548]];

  if (v4)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  service2 = [(IMDServiceSession *)self service];
  v7 = [service2 supportsCapability:*MEMORY[0x277D1A580]];

  if (v7)
  {
    v5 |= 0x400uLL;
  }

  service3 = [(IMDServiceSession *)self service];
  v9 = [service3 supportsCapability:*MEMORY[0x277D1A598]];

  if (v9)
  {
    v5 |= 0x100uLL;
  }

  service4 = [(IMDServiceSession *)self service];
  v11 = [service4 supportsCapability:*MEMORY[0x277D1A538]];

  if (v11)
  {
    v5 |= 0x30uLL;
  }

  service5 = [(IMDServiceSession *)self service];
  v13 = [service5 supportsCapability:*MEMORY[0x277D1A550]];

  if (v13)
  {
    v5 |= 0x400000000000uLL;
  }

  service6 = [(IMDServiceSession *)self service];
  v15 = [service6 supportsCapability:*MEMORY[0x277D1A5A8]];

  if (v15)
  {
    v16 = v5 | 0x800000000000;
  }

  else
  {
    v16 = v5;
  }

  service7 = [(IMDServiceSession *)self service];
  v18 = [service7 supportsCapability:*MEMORY[0x277D1A588]];

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

  array = [MEMORY[0x277CBEB18] array];
  v3 = qword_281421410;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B50EC44;
  v8[3] = &unk_2787032E8;
  v4 = array;
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

+ (void)__registerNewServiceSession:(id)session
{
  sessionCopy = session;
  __allServiceSessionsWeakReferenceArray = [self __allServiceSessionsWeakReferenceArray];
  v5 = [MEMORY[0x277CFB990] weakRefWithObject:sessionCopy];

  [__allServiceSessionsWeakReferenceArray addObject:v5];
}

+ (id)existingServiceSessionForService:(id)service
{
  serviceCopy = service;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7630;
  v16 = sub_22B4D7870;
  v17 = 0;
  allServiceSessions = [self allServiceSessions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B50EE84;
  v9[3] = &unk_278703330;
  v6 = serviceCopy;
  v10 = v6;
  v11 = &v12;
  [allServiceSessions enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (IMDServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  v54 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  v47.receiver = self;
  v47.super_class = IMDServiceSession;
  v12 = [(IMDServiceSession *)&v47 init];
  if (v12)
  {
    [MEMORY[0x277D192E8] enableNotifications];
    if (sessionCopy)
    {
      v13 = sessionCopy;
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

    if (sessionCopy)
    {
      account = [(IMDServiceSession *)sessionCopy account];
      p_account = &v12->_account;
      account = v12->_account;
      v12->_account = account;

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      accounts = v12->_accounts;
      v12->_accounts = v21;

      [(NSMutableArray *)v12->_accounts addObject:accountCopy];
      service = [(IMDServiceSession *)sessionCopy service];
      service = v12->_service;
      v12->_service = service;

      v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      buddies = v12->_buddies;
      v12->_buddies = v25;

      objc_storeWeak(&v12->_replicationAccount, accountCopy);
      objc_storeWeak(&v12->_replicationService, serviceCopy);
    }

    else
    {
      p_account = &v12->_account;
      objc_storeStrong(&v12->_account, account);
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = v12->_accounts;
      v12->_accounts = v27;

      [(NSMutableArray *)v12->_accounts addObject:accountCopy];
      objc_storeStrong(&v12->_service, service);
      v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      v30 = v12->_buddies;
      v12->_buddies = v29;
    }

    service2 = [(IMDServiceSession *)v12 service];
    v12->_shouldReconnect = [service2 wantsNullHostReachability];

    if (v12->_shouldReconnect)
    {
      [(IMDServiceSession *)v12 _setAutoReconnectTimer];
    }

    [(NSRecursiveLock *)v12->_lock unlock];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__managedPrefsNotification_ name:@"__kIMDManagedPreferencesChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__networkChanged_ name:*MEMORY[0x277D19178] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__callMonitorStateChanged_ name:*MEMORY[0x277D190D8] object:0];

    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] setWatchesSystemLockState:1];

    mEMORY[0x277D192A8]2 = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8]2 addListener:v12];

    if (((sessionCopy == 0) & [serviceCopy supportsOneSessionForAllAccounts]) == 1)
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
        accountID = [*p_account accountID];
        internalName = [serviceCopy internalName];
        accountDefaults = [accountCopy accountDefaults];
        *buf = 138412802;
        v49 = accountID;
        v50 = 2112;
        v51 = internalName;
        v52 = 2112;
        v53 = accountDefaults;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "initWithAccount: %@       service:%@  defaults: %@", buf, 0x20u);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  [serviceSessionDelegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  [serviceSessionDelegates removeObject:delegateCopy];
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
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "DEALLOC: %@", buf, 0xCu);
    }
  }

  mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
  [mEMORY[0x277D192D8] removeListener:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

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
  service = [(IMDServiceSession *)self service];
  needsLogin = [service needsLogin];

  return needsLogin;
}

- (BOOL)accountNeedsPassword
{
  service = [(IMDServiceSession *)self service];
  needsPassword = [service needsPassword];

  return needsPassword;
}

- (BOOL)accountShouldBeAlwaysLoggedIn
{
  service = [(IMDServiceSession *)self service];
  shouldBeAlwaysLoggedIn = [service shouldBeAlwaysLoggedIn];

  return shouldBeAlwaysLoggedIn;
}

- (void)addAccount:(id)account
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ addAccount:%@]", &v7, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts addObject:accountCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAccount:(id)account
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ removeAccount:%@]", &v7, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts removeObject:accountCopy];

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
  service = [(IMDServiceSession *)self service];
  serviceProperties = [service serviceProperties];
  v4 = [serviceProperties objectForKey:*MEMORY[0x277D19058]];

  return v4;
}

- (void)markItemForOffGridRelay:(id)relay inChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  chatCopy = chat;
  [relayCopy setNeedsRelay:1];
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 storeMessage:relayCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

  service = [relayCopy service];
  v10 = [service isEqualToString:*MEMORY[0x277D1A628]];
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [relayCopy guid];
        v17 = 138412290;
        v18 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Marking iMessage Lite message as needing relay, guid: %@", &v17, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid2 = [relayCopy guid];
      v17 = 138412290;
      v18 = guid2;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Marking SMS Satellite message as needing relay, guid: %@", &v17, 0xCu);
    }
  }

  IMSetDomainBoolForKey();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success
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
  selfCopy = self;
  mainSession = [(IMDServiceSession *)self mainSession];
  LOBYTE(selfCopy) = mainSession != selfCopy;

  return selfCopy;
}

- (NSArray)replicationSessions
{
  if ([(IMDServiceSession *)self isReplicating])
  {
    replicationSessions = MEMORY[0x277CBEBF8];
  }

  else
  {
    account = [(IMDServiceSession *)self account];
    replicationSessions = [account replicationSessions];
  }

  return replicationSessions;
}

- (IMDServiceSession)replicationProxy
{
  if ([(IMDServiceSession *)self isOutgoingReplicationEnabled])
  {
    replicationProxy = self->_replicationProxy;
    if (!replicationProxy)
    {
      replicationSessions = [(IMDServiceSession *)self replicationSessions];
      if ([replicationSessions count])
      {
        v5 = [objc_alloc(MEMORY[0x277D1A9B0]) initWithTargets:replicationSessions];
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

- (BOOL)messageServiceNamed:(id)named canProcessMessagesFromServiceNamed:(id)serviceNamed
{
  namedCopy = named;
  serviceNamedCopy = serviceNamed;
  if ([serviceNamedCopy isEqualToString:namedCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[IMDServiceController sharedController];
    v9 = [v8 serviceWithName:serviceNamedCopy];

    relayMessageDelegates = [v9 relayMessageDelegates];
    v7 = [relayMessageDelegates containsObject:namedCopy];
  }

  return v7;
}

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s
{
  v13 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Rejecting incoming replicated messages from account: %@, service session not configured for replicated messages", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)outgoingReplicationCallerIDForChat:(id)chat
{
  v9 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Returning nil outgoing replication caller ID for chat %@, service session not configured for replicated messages", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Returning nil preferred account for replication for %@, service session not configured for replicated messages", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)sessionSpecificTransferIDForTransferID:(id)d
{
  dCopy = d;
  if ([(IMDServiceSession *)self isReplicating])
  {
    v5 = MEMORY[0x277CCACA8];
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    accountID = [(IMDServiceSession *)self accountID];
    dCopy = [v5 stringWithFormat:@"Replication/%@/%@/%@", internalName, accountID, dCopy];
  }

  else
  {
    dCopy = dCopy;
  }

  return dCopy;
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
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[%@ sessionDidBecomeActive]", &v10, 0xCu);
    }
  }

  self->_activated = 1;
  [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:0];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  v6 = IMOSLoggingEnabled();
  if (isUnderFirstDataProtectionLock)
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

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = accountCopy;
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
      selfCopy = self;
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

- (void)_updateNetworkMonitorWithRemoteHost:(id)host
{
  v28 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        accountID = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v25 = hostCopy;
        v26 = 2112;
        v27 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_updateNetworkMonitorWithRemoteHost: %@:%@", buf, 0x16u);
      }
    }

    service = [(IMDServiceSession *)self service];
    v8 = [service supportsCapability:*MEMORY[0x277D1A5E0]];

    service2 = [(IMDServiceSession *)self service];
    wantsNullHostReachability = [service2 wantsNullHostReachability];

    networkMonitor = self->_networkMonitor;
    if (wantsNullHostReachability)
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
        v17 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:hostCopy delegate:self allowsUltraConstrainedNetwork:v8];
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
      remoteHost = [(IMNetworkMonitor *)networkMonitor remoteHost];
      if ((hostCopy != 0) != (remoteHost != 0) || ([(IMNetworkMonitor *)hostCopy isEqual:remoteHost]& 1) == 0)
      {
        [(IMDServiceSession *)self _clearNetworkMonitor];
        v15 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:hostCopy delegate:self allowsUltraConstrainedNetwork:v8];
        v16 = self->_networkMonitor;
        self->_networkMonitor = v15;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)proxy
{
  if (self->_activated)
  {
    accountDefaults = [(IMDServiceSession *)self accountDefaults];
    v6 = [accountDefaults objectForKey:*MEMORY[0x277D194B0]];
    bOOLValue = [v6 BOOLValue];

    v8 = [accountDefaults objectForKey:*MEMORY[0x277D194A0]];
    bOOLValue2 = [v8 BOOLValue];

    v10 = [accountDefaults objectForKey:*MEMORY[0x277D194A8]];
    bOOLValue3 = [v10 BOOLValue];

    v12 = MEMORY[0x277D19490];
    if (bOOLValue)
    {
      v13 = MEMORY[0x277D19498];
    }

    else
    {
      v12 = MEMORY[0x277D19480];
      v13 = MEMORY[0x277D19488];
    }

    v14 = [accountDefaults objectForKey:*v12];
    v15 = [accountDefaults objectForKey:*v13];
    intValue = [v15 intValue];

    if (!proxy && bOOLValue2)
    {
      if (bOOLValue3)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v17 = objc_alloc(MEMORY[0x277D192B0]);
        server = [(IMDServiceSession *)self server];
        v19 = [v17 initWithHost:server port:intValue delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v19;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
        v21 = 0;
      }

      else
      {
        v21 = [accountDefaults objectForKey:*MEMORY[0x277D19440]];
      }

      v14 = v21;
    }

    stringByRemovingWhitespace = [v14 stringByRemovingWhitespace];
    v23 = [stringByRemovingWhitespace length];

    if (!v23)
    {
      server2 = [(IMDServiceSession *)self server];

      v14 = server2;
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
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(accounts);
        }

        [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reconnectIfNecessaryWithAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (!self->_activated)
  {
    goto LABEL_34;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      loginID = [(IMDServiceSession *)self loginID];
      accountID = [(IMDAccount *)self->_account accountID];
      v21 = 138412546;
      v22 = loginID;
      v23 = 2112;
      v24 = accountID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_reconnectIfNecessary: %@:%@", &v21, 0x16u);
    }
  }

  accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
  if ([accountCopy loginStatus] == 1)
  {
    serviceDisconnectReason = [accountCopy serviceDisconnectReason];
    if ((serviceDisconnectReason + 1) <= 8)
    {
      v10 = 0xCAu >> (serviceDisconnectReason + 1);
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    if (!accountShouldBeAlwaysLoggedIn)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  LOBYTE(v10) = 0;
  if (accountShouldBeAlwaysLoggedIn)
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
      if (accountShouldBeAlwaysLoggedIn)
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

      loginStatus = [accountCopy loginStatus];
      serviceDisconnectReason2 = [accountCopy serviceDisconnectReason];
      v21 = 138413314;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2048;
      v28 = loginStatus;
      v29 = 1024;
      v30 = serviceDisconnectReason2;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "  shouldAlwaysBeLoggedIn: %@    shouldReconnect: %@   wasLikelyNetworkError: %@  loginStatus: %lu  disconnectReason: %d", &v21, 0x30u);
    }
  }

  if ((v11 & 1) != 0 && [accountCopy loginStatus] != 4)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        loginID2 = [(IMDServiceSession *)self loginID];
        v21 = 138412290;
        v22 = loginID2;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "%@: we're disconnected properly - and we're supposed to try to reconnect now, ", &v21, 0xCu);
      }
    }

    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:accountCopy];
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
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v28 objects:v38 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v5 |= [*(*(&v28 + 1) + 8 * i) loginStatus] > 2;
      }

      v4 = [accounts countByEnumeratingWithState:&v28 objects:v38 count:16];
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
        selfCopy3 = self;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@       forcing disconnect", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        server = [(IMDServiceSession *)self server];
        *buf = 138412546;
        selfCopy3 = self;
        v36 = 2112;
        v37 = server;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@: Network connection to %@ is down -- disconnecting", buf, 0x16u);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v11 = [accounts countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(accounts);
          }

          [(IMDServiceSession *)self logoutServiceSessionWithAccount:*(*(&v24 + 1) + 8 * j)];
        }

        v11 = [accounts countByEnumeratingWithState:&v24 objects:v33 count:16];
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
        selfCopy3 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "%@       I can be reached", buf, 0xCu);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    accounts2 = [(IMDServiceSession *)self accounts];
    v16 = [accounts2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(accounts2);
          }

          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v20 + 1) + 8 * k)];
        }

        v16 = [accounts2 countByEnumeratingWithState:&v20 objects:v32 count:16];
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
        selfCopy = self;
        v11 = 2112;
        v12 = networkMonitor;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ refuses to process network changes - networkMonitor: %@", &v9, 0x16u);
      }
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    service = [(IMDServiceSession *)self service];
    v4 = [service ignoresNetworkConnectivity] ^ 1;
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
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v4)
  {
    v5 = *v36;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v35 + 1) + 8 * i) loginStatus] > 2)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v35 objects:v51 count:16];
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
  mEMORY[0x277D19230] = [MEMORY[0x277D19230] sharedInstance];
  isOnTelephonyCall = [mEMORY[0x277D19230] isOnTelephonyCall];

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSimultaneousVoiceAndDataRightNow = [mEMORY[0x277D07DB0] supportsSimultaneousVoiceAndDataRightNow];

  if ((v8 & (isOnTelephonyCall ^ 1 | supportsSimultaneousVoiceAndDataRightNow)) == 1)
  {
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:1];
    overrideNetworkAvailability = 1;
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    overrideNetworkAvailability = [(IMDServiceSession *)self overrideNetworkAvailability];
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:0];
    if (v7 == overrideNetworkAvailability)
    {
LABEL_18:
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          *buf = 138413570;
          selfCopy2 = self;
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
          if (overrideNetworkAvailability)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v43 = 2112;
          if (isOnTelephonyCall)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v44 = v17;
          if (supportsSimultaneousVoiceAndDataRightNow)
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
      selfCopy2 = self;
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
      if (overrideNetworkAvailability)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v43 = 2112;
      if (isOnTelephonyCall)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v44 = v21;
      if (supportsSimultaneousVoiceAndDataRightNow)
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
      remoteHost = [(IMNetworkMonitor *)self->_networkMonitor remoteHost];
      *buf = 138412290;
      selfCopy2 = remoteHost;
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
      selfCopy2 = v26;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEBUG, "                                       isReachable: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = @"NO";
      if (isOnTelephonyCall)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v28;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "                                          isOnCall: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = @"NO";
      if (supportsSimultaneousVoiceAndDataRightNow)
      {
        v30 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v30;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEBUG, "                  supportsSimultaneousDataAndVoice: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      immediatelyReachable = [(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable];
      v33 = @"NO";
      if (immediatelyReachable)
      {
        v33 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v33;
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

- (void)networkMonitorDidUpdate:(id)update
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_callMonitorStateChanged:(id)changed
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_networkChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    mEMORY[0x277D192E8] = [MEMORY[0x277D192E8] sharedInstance];
    if ([mEMORY[0x277D192E8] isNetworkUp])
    {
    }

    else
    {
      overrideNetworkAvailability = [(IMDServiceSession *)self overrideNetworkAvailability];

      if (!overrideNetworkAvailability)
      {
        goto LABEL_13;
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v7 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:v11];
          [(IMDServiceSession *)self autoReconnectWithAccount:v11];
        }

        v8 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  service = [(IMDServiceSession *)self service];
  ignoresNetworkConnectivity = [service ignoresNetworkConnectivity];

  if (ignoresNetworkConnectivity)
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
      selfCopy3 = self;
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
      selfCopy3 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   (Fallback)", v13, 0x16u);
    }

    goto LABEL_8;
  }

  immediatelyReachable = [(IMNetworkMonitor *)networkMonitor immediatelyReachable];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      v11 = self->_networkMonitor;
      *v13 = 138412802;
      if (immediatelyReachable)
      {
        v10 = @"YES";
      }

      *&v13[4] = v10;
      v14 = 2112;
      selfCopy3 = self;
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
  parentalControls = [v3 parentalControls];
  LOBYTE(self) = [parentalControls disableServiceSession:self];

  return self ^ 1;
}

- (void)_managedPrefsNotification:(id)notification
{
  if (self->_activated)
  {
    v4 = +[IMDLocalDaemon sharedDaemon];
    parentalControls = [v4 parentalControls];
    active = [parentalControls active];

    if (active)
    {
      if (![(IMDServiceSession *)self allowedAsChild])
      {

        [(IMDServiceSession *)self logout];
      }
    }
  }
}

- (id)canonicalFormOfID:(id)d
{
  dCopy = d;
  service = [(IMDServiceSession *)self service];
  v6 = -[IMDServiceSession canonicalFormOfID:withIDSensitivity:](self, "canonicalFormOfID:withIDSensitivity:", dCopy, [service idSensitivity]);

  return v6;
}

- (id)canonicalFormOfID:(id)d withIDSensitivity:(int)sensitivity
{
  dCopy = d;
  service = [(IMDServiceSession *)self service];
  [service caseInsensitivityByHandleType];
  v7 = IMCanonicalFormOfIDWithSensitivity();

  return v7;
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy == iDCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (dCopy && iDCopy)
    {
      v10 = [(IMDServiceSession *)self canonicalFormOfID:dCopy];
      v11 = [(IMDServiceSession *)self canonicalFormOfID:v8];
      v9 = [v10 isEqualToString:v11];
    }
  }

  return v9;
}

- (void)refreshServiceCapabilities
{
  v11 = *MEMORY[0x277D85DE8];
  capabilities = [(IMDServiceSession *)self capabilities];
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

  broadcaster = [(IMDServiceSession *)self broadcaster];
  accountID = [(IMDServiceSession *)self accountID];
  [broadcaster account:accountID capabilitiesChanged:capabilities];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)broadcaster
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForChatListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForChatListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)status
{
  if (status)
  {
    v4 = +[IMDBroadcastController sharedProvider];
    service = [(IMDServiceSession *)self service];
    broadcasterForChatListeners = [v4 broadcasterForBlackholeChatListenersSupportingService:service];
  }

  else
  {
    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
  }

  return broadcasterForChatListeners;
}

- (id)broadcasterForChatObserverListeners
{
  v12[2] = *MEMORY[0x277D85DE8];
  broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
  v4 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v6 = [v4 broadcasterForSentMessageListenersSupportingService:service];

  v7 = [IMDInvocationForwarder alloc];
  v12[0] = broadcasterForChatListeners;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [(IMDInvocationForwarder *)v7 initWithTargets:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)broadcasterForAVConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForAVConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForACConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForACConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForVCConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForVCConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForNotificationsListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForNotificationListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForCollaborationListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForCollaborationListenersSupportingService:service];

  return v5;
}

- (void)_clearDowngradeMarkersForChat:(id)chat
{
  chatCopy = chat;
  if (self->_activated)
  {
    v17 = chatCopy;
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    null = [MEMORY[0x277CBEB68] null];
    v7 = *MEMORY[0x277D19300];
    null2 = [MEMORY[0x277CBEB68] null];
    v9 = *MEMORY[0x277D19308];
    null3 = [MEMORY[0x277CBEB68] null];
    v11 = [v5 initWithObjectsAndKeys:{null, v7, null2, v9, null3, *MEMORY[0x277D19310], 0}];

    v12 = +[IMDChatRegistry sharedInstance];
    LODWORD(null2) = [v12 updateProperties:v11 chat:v17 style:45];

    if (null2)
    {
      v13 = [(IMDServiceSession *)self chatForChatIdentifier:v17 style:45 updatingAccount:1];
      if (v13)
      {
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        guid = [v13 guid];
        properties = [v13 properties];
        [broadcasterForChatListeners chat:guid propertiesUpdated:properties];
      }
    }

    chatCopy = v17;
  }
}

- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0;
  }

  else
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
    v6 = v7 == 0;
  }

  return v6;
}

- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date
{
  dateCopy = date;
  v6 = [dictionary mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
  [v6 removeObjectForKey:@"permanentDeleteChatMetadataArray"];
  [v6 setObject:v7 forKeyedSubscript:@"chat"];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isPermanentDelete"];
  [v6 setObject:dateCopy forKeyedSubscript:@"recoverableDeleteDate"];

  v8 = [v6 copy];

  return v8;
}

- (void)recoverChatsForCommandDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"recoverChatMetadataArray"];
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
          chatRegistry = [(IMDServiceSession *)self chatRegistry];
          [chatRegistry recoverMessagesWithChatGUIDs:v7];

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

- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary
{
  v50 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v35 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
  v34 = [dictionaryCopy objectForKeyedSubscript:@"groupID"];
  v37 = [dictionaryCopy objectForKeyedSubscript:@"ptcpts"];
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

  chatRegistry = [(IMDServiceSession *)self chatRegistry];
  v36 = [chatRegistry existingChatWithGUID:v35];

  if (v36)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [v36 guid];
        *buf = 138412290;
        v45 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found chat with specific guid %@ for chat metadata", buf, 0xCu);
      }
    }

    guid2 = [v36 guid];
    [v5 addObject:guid2];
  }

  chatRegistry2 = [(IMDServiceSession *)self chatRegistry];
  v12 = [chatRegistry2 existingChatsWithGroupID:v34];

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
    chatRegistry3 = [(IMDServiceSession *)self chatRegistry];
    service = [(IMDServiceSession *)self service];
    v18 = [chatRegistry3 existingChatsForIDs:v37 onService:service style:43];

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
        chatRegistry4 = [(IMDServiceSession *)self chatRegistry];
        v30 = [chatRegistry4 existingChatWithGUID:v28];

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

- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster
{
  v33 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  broadcasterCopy = broadcaster;
  if (chatCopy)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];
    [chatCopy setLastMessage:v8];

    lastMessage = [chatCopy lastMessage];

    if (lastMessage)
    {
      lastMessage2 = [chatCopy lastMessage];
      time = [lastMessage2 time];
      [time timeIntervalSinceReferenceDate];
      [chatCopy setLastMessageTimeStampOnLoad:v12];
    }

    else
    {
      [chatCopy setLastMessageTimeStampOnLoad:0];
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isAVLessSharePlayEnabled = [mEMORY[0x277D1A9B8] isAVLessSharePlayEnabled];

    if (isAVLessSharePlayEnabled)
    {
      v16 = +[IMDMessageStore sharedInstance];
      v17 = [v16 lastTUConversationItemForChat:chatCopy];

      if (v17)
      {
        time2 = [v17 time];

        if (time2)
        {
          time3 = [v17 time];
          [chatCopy setLastTUConversationCreatedDate:time3];
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
        [chatCopy setLastTUConversationCreatedDate:0];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v23 = MEMORY[0x277CCABB0];
        lastMessage3 = [chatCopy lastMessage];
        time4 = [lastMessage3 time];
        [time4 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:?];
        v29 = 138412546;
        v30 = guid;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | IMDChat: %@, updating last message timestamp on load: %@", &v29, 0x16u);
      }
    }

    guid2 = [chatCopy guid];
    [broadcasterCopy chat:guid2 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(chatCopy, "lastMessageTimeStampOnLoad")}];
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

- (void)sendHQAttachmentsForMessage:(id)message toChatID:(id)d style:(unsigned __int8)style
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D026C();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02D4();
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0308();
  }
}

- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D033C();
  }
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  messagesDomain = [MEMORY[0x277CBEBD0] messagesDomain];
  v8 = MEMORY[0x277CCACA8];
  selfCopy = self;
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v11 = [v8 stringWithFormat:@"%@-ReachableHandles", internalName];
  v12 = [messagesDomain arrayForKey:v11];

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  v34 = v12;
  if ([mEMORY[0x277D19268] isInternalInstall])
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
  obj = [requestCopy handleIDs];
  v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v33 = requestCopy;
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
        service2 = [(IMDServiceSession *)selfCopy service];
        internalName2 = [service2 internalName];
        v25 = [v22 initWithHandleID:v21 service:internalName2 isReachable:1 supportsEncryption:0];

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
  service3 = [(IMDServiceSession *)selfCopy service];
  internalName3 = [service3 internalName];
  LOBYTE(v31) = 0;
  v29 = [v26 initWithService:internalName3 error:0 handleResults:v15 isFinal:1 allAreReachable:v19 allSupportEncryption:0 didCheckServer:v31];

  [handlerCopy reachabilityRequest:v33 updatedWithResult:v29];
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

- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)value
{
  valueCopy = value;
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
    v25 = valueCopy;
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
        properties = [v9 properties];
        v11 = [properties mutableCopy];

        v12 = [v11 valueForKey:v7];
        if ([v12 integerValue])
        {
          isOscarChat = [v9 isOscarChat];
          v14 = isOscarChat;
          if (isOscarChat && IMOSLoggingEnabled())
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
                longValue = [v16 longValue];
              }

              else
              {
                longValue = -1;
              }

              longValue2 = [v12 longValue];
              *buf = v24;
              v36 = v25;
              v37 = 2048;
              v38 = longValue;
              v39 = 2048;
              v40 = longValue2;
              v41 = 2112;
              v42 = v9;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Global read receipt value set to [%ld], local chat read receipt value is [%ld] with versionID [%ld] for chat: %@", buf, 0x2Au);
            }
          }

          if ((v14 & 1) != 0 || [v16 BOOLValue] != valueCopy)
          {
            [v11 removeObjectForKey:v30];
            [v11 removeObjectForKey:v7];
            [v9 updateProperties:v11];
            broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
            guid = [v9 guid];
            properties2 = [v9 properties];
            [broadcasterForChatListeners chat:guid propertiesUpdated:properties2];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canHandleTransferAccept:(id)accept
{
  serviceFromUserInfo = [accept serviceFromUserInfo];
  v5 = [serviceFromUserInfo length];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v8 = internalName;
  if (v5)
  {
    internalName = serviceFromUserInfo;
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x277D1A620];
  }

  v10 = [internalName isEqualToString:v9];

  return v10;
}

- (void)_handleFileTransferAccepted:(id)accepted
{
  v34 = *MEMORY[0x277D85DE8];
  object = [accepted object];
  serviceFromUserInfo = [object serviceFromUserInfo];
  if ([(IMDServiceSession *)self _canHandleTransferAccept:object])
  {
    guid = [object guid];
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412546;
      v29 = internalName;
      v30 = 2112;
      v31 = object;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Service(%@) File transfer accepted for: %@", buf, 0x16u);
    }

    if (guid)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B5BF3BC;
      aBlock[3] = &unk_278702B20;
      v10 = guid;
      v27 = v10;
      v11 = _Block_copy(aBlock);
      transferState = [object transferState];
      v13 = IMLogHandleForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (transferState > 1)
      {
        if (v14)
        {
          *buf = 138412290;
          v29 = object;
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
          v29 = object;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** Accepting %@", buf, 0xCu);
        }

        [object _setNeedsWrapper:0];
        if (IMFileTransferGUIDIsTemporary())
        {
          [(IMDServiceSession *)self fallbackToDownloadIfPossible:v10 transfer:object];
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
          v24 = object;
          v25 = v11;
          [v20 acceptFileTransfer:v24 completion:v22];
        }
      }

      service2 = v27;
    }

    else
    {
      service2 = IMLogHandleForCategory();
      if (os_log_type_enabled(service2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, service2, OS_LOG_TYPE_INFO, "**** Not accepting transfer. Did not find a guid", buf, 2u);
      }
    }

    goto LABEL_22;
  }

  guid = IMLogHandleForCategory();
  if (os_log_type_enabled(guid, OS_LOG_TYPE_INFO))
  {
    service2 = [(IMDServiceSession *)self service];
    internalName2 = [service2 internalName];
    guid2 = [object guid];
    *buf = 138412802;
    v29 = internalName2;
    v30 = 2112;
    v31 = guid2;
    v32 = 2112;
    v33 = serviceFromUserInfo;
    _os_log_impl(&dword_22B4CC000, guid, OS_LOG_TYPE_INFO, "Service(%@) Ignoring File transfer accept for: %@ transferSession %@", buf, 0x20u);

LABEL_22:
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransferBatchAccepted:(id)accepted
{
  v46 = *MEMORY[0x277D85DE8];
  object = [accepted object];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = object;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "File transfers batch accepted for: %@", buf, 0xCu);
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = object;
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
        guid = [v10 guid];
        if (!guid)
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

        transferState = [v10 transferState];
        v13 = IMLogHandleForCategory();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (transferState > 1)
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
        guid2 = [v23 guid];
        [v24 startTransfer:guid2];
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
  selfCopy = self;
  v27 = v18;
  [v26 acceptFileTransfers:v27 completion:v31];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)fallbackToDownloadIfPossible:(id)possible transfer:(id)transfer
{
  possibleCopy = possible;
  transferCopy = transfer;
  v8 = [(IMDServiceSession *)self _isTransferAvailableForDownload:transferCopy];
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** Transfer has been synced to CloudKit, but we don't have the asset -- however we can download from MMCS", buf, 2u);
    }

    [transferCopy _setTransferState:0];
    baseAttachmentController = [(IMDServiceSession *)self baseAttachmentController];
    [baseAttachmentController acceptFileTransfer:transferCopy];
  }

  else
  {
    if (v10)
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " *** Not accepting transfer -- Transfer created Date is > 30 days old and we need to upload the asset to CloudKit", v12, 2u);
    }

    [(IMDServiceSession *)self _resetTransferToTapDownloadState:possibleCopy];
  }
}

- (void)_resetTransferToTapDownloadState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = stateCopy;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resetting transfer %@ to Tap To Download state", &v11, 0xCu);
  }

  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 transferForGUID:stateCopy];

  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MessageServiceSession" code:1 userInfo:0];
  [v7 resetTransfer:stateCopy andPostError:v8];

  [v6 _setTransferState:0];
  [v6 _setError:-1];
  v9 = +[IMDMessageStore sharedInstance];
  [v9 updateFileTransfer:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block shouldStoreBlock:(id)storeBlock didStoreBlock:(id)didStoreBlock block:(id)a8
{
  v76 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  storeBlockCopy = storeBlock;
  didStoreBlockCopy = didStoreBlock;
  v16 = a8;
  if (!v16)
  {
    goto LABEL_85;
  }

  scheduleType = [messageCopy scheduleType];
  v72 = scheduleType != 1;
  if (scheduleType == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = messageCopy;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not storing scheduled message %@", buf, 0xCu);
      }
    }

    v18 = messageCopy;
    if (!storeBlockCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v18 = 0;
  if (storeBlockCopy)
  {
LABEL_10:
    v20 = storeBlockCopy[2](storeBlockCopy, messageCopy);
    v21 = v20;
    if (messageCopy)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = !v22 && scheduleType != 1;
    v72 = v23;

    messageCopy = v21;
  }

LABEL_17:
  criticalMessagingAppName = [messageCopy criticalMessagingAppName];
  v25 = [criticalMessagingAppName length];

  if (v25)
  {
    if (v72 && ([MEMORY[0x277D1A900] sharedManager], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isMessagesTheDefaultTextApp"), v26, (v27 & 1) != 0))
    {
      v72 = 1;
    }

    else
    {
      v28 = messageCopy;

      v72 = 0;
      v18 = v28;
    }
  }

  if (([messageCopy isTypingMessage] & 1) == 0)
  {
    v29 = [messageCopy scheduleType] == 1 || v25 != 0;
    if (!v29 && IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = messageCopy;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Storing message: %@", buf, 0xCu);
      }
    }
  }

  if (v72)
  {
    [contextCopy setUpdateMessageCache:1];
    v31 = +[IMDMessageStore sharedInstance];
    v32 = [v31 storeMessage:messageCopy context:contextCopy didReplaceBlock:blockCopy];

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
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }
  }

  if ([messageCopy isTapToRetry])
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        guid = [v18 guid];
        *buf = 138412290;
        *&buf[4] = guid;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Set tap to retry for message %@", buf, 0xCu);
      }
    }

    [v18 setIsTapToRetry:1];
  }

  if (([messageCopy isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "  => Result message: %@", buf, 0xCu);
    }
  }

  contactsAvatarRecipeData = [messageCopy contactsAvatarRecipeData];
  if (contactsAvatarRecipeData)
  {
    contactsAvatarRecipeData2 = [v18 contactsAvatarRecipeData];
    v47 = contactsAvatarRecipeData2 == 0;

    if (v47)
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          guid2 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid2;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Set avatar likeness data for message %@", buf, 0xCu);
        }
      }

      contactsAvatarRecipeData3 = [messageCopy contactsAvatarRecipeData];
      [v18 setContactsAvatarRecipeData:contactsAvatarRecipeData3];
    }
  }

  bizIntent = [messageCopy bizIntent];
  if (bizIntent)
  {
    bizIntent2 = [v18 bizIntent];
    v53 = bizIntent2 == 0;

    if (v53)
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          guid3 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid3;
          _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Set biz intent data for message %@", buf, 0xCu);
        }
      }

      bizIntent3 = [messageCopy bizIntent];
      [v18 setBizIntent:bizIntent3];
    }
  }

  locale = [messageCopy locale];
  if (locale)
  {
    locale2 = [v18 locale];
    v59 = locale2 == 0;

    if (v59)
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          guid4 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid4;
          _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Set locale data for message %@", buf, 0xCu);
        }
      }

      locale3 = [messageCopy locale];
      [v18 setLocale:locale3];
    }
  }

  collaborationInitiationRequestInfo = [messageCopy collaborationInitiationRequestInfo];

  if (collaborationInitiationRequestInfo)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        collaborationInitiationRequestInfo2 = [messageCopy collaborationInitiationRequestInfo];
        *buf = 138412290;
        *&buf[4] = collaborationInitiationRequestInfo2;
        _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Set collaborationInitiationRequestInfo %@", buf, 0xCu);
      }
    }

    collaborationInitiationRequestInfo3 = [messageCopy collaborationInitiationRequestInfo];
    [v18 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo3];
  }

  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      guid5 = [v18 guid];
      *buf = 138412290;
      *&buf[4] = guid5;
      _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Set meCard sharing preferences data for message %@", buf, 0xCu);
    }
  }

  [v18 setShouldSendMeCard:{objc_msgSend(messageCopy, "shouldSendMeCard")}];
  if (didStoreBlockCopy)
  {
    didStoreBlockCopy[2](didStoreBlockCopy, v18);
  }

  (v16)[2](v16, v72, messageCopy, v18);

LABEL_85:
  v69 = *MEMORY[0x277D85DE8];
}

- (void)useChatRoom:(id)room forGroupChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = [(IMDServiceSession *)self canonicalFormOfChatRoom:room];
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

  [(NSMutableDictionary *)self->_groupChatIdentifierToChatRoomMap setObject:v11 forKey:identifierCopy];
  [(NSMutableDictionary *)self->_chatRoomToGroupChatIdentifierMap setObject:identifierCopy forKey:v11];
}

- (id)_guidForChat:(id)chat style:(unsigned __int8)style
{
  chatCopy = chat;
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v8 = IMCopyAnyServiceGUIDForChat();

  return v8;
}

- (void)_markFromStorageIfNeeded:(id)needed messageGUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  dCopy = d;
  if (neededCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = dCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Storage context present for message with GUID %@", &v11, 0xCu);
      }
    }

    unsignedIntValue = [neededCopy unsignedIntValue];
    if (([neededCopy unsignedIntValue] & 2) != 0)
    {
      [(IMDServiceSession *)self noteLastItemFromStorage:dCopy];
    }

    else if (unsignedIntValue)
    {
      [(IMDServiceSession *)self noteItemFromStorage:dCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(infoCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = infoCopy;
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
            stringGUID = v14;
          }

          else
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          }

          v17 = stringGUID;

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

- (void)registerChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0 account:(id)self1 isBlackholed:(BOOL)self2
{
  v162 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  styleCopy = style;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  mIDCopy = mID;
  infoCopy = info;
  accountCopy = account;
  if (chatCopy)
  {
    account = accountCopy;
    if (!accountCopy)
    {
      account = [(IMDServiceSession *)self account];
    }

    [(NSRecursiveLock *)self->_lock lock];
    v145 = chatCopy;
    [(IMDServiceSession *)self canonicalizeChatIdentifier:&v145 style:&styleCopy];
    v20 = v145;

    v109 = [(IMDServiceSession *)self _guidForChat:v20 style:styleCopy];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v151 = v20;
        v152 = 1024;
        v153 = styleCopy;
        v154 = 2112;
        v155 = v109;
        v156 = 2112;
        v157 = infoCopy;
        v158 = 2112;
        v159 = handleCopy;
        v160 = 2112;
        v161 = mIDCopy;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Registering chat identifier: %@   style: %d  guid: %@ handleInfo: %@ lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x3Au);
      }
    }

    v22 = styleCopy;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_22B6796F0;
    v135[3] = &unk_278707628;
    v135[4] = self;
    v136 = v20;
    v143 = styleCopy;
    v105 = nameCopy;
    v137 = v105;
    v106 = dCopy;
    v138 = v106;
    v107 = iDCopy;
    v139 = v107;
    v103 = handleCopy;
    v140 = v103;
    v102 = mIDCopy;
    v141 = v102;
    v108 = account;
    v142 = v108;
    blackholedCopy = blackholed;
    v121 = v136;
    [(IMDServiceSession *)self _calculateHandleInfoOverrideIfPermittedForChatIdentifier:v136 style:v22 completion:v135];
    v23 = +[IMDChatRegistry sharedInstance];
    v113 = [v23 existingChatWithGUID:v109];

    if (v113)
    {
      participants = [v113 participants];
      if ([participants count])
      {
      }

      else
      {
        v51 = [infoCopy count] == 0;

        if (!v51)
        {
          if (IMOSLoggingEnabled())
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v151 = infoCopy;
              _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, " => Found chat, but it had no particpants. Updating with handleInfo: %@", buf, 0xCu);
            }
          }

          goto LABEL_44;
        }
      }

      v25 = [(IMDServiceSession *)self _shouldConvergeChatParticipants:v113 withHandleInfo:infoCopy];
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
          v151 = infoCopy;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, " => Found chat, but it had a different set of participants. Updating with handleInfo: %@", buf, 0xCu);
        }
      }

      v28 = objc_alloc(MEMORY[0x277CBEB58]);
      participantHandles = [v113 participantHandles];
      v30 = [v28 initWithArray:participantHandles];

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      obj = infoCopy;
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
            intValue = [v39 intValue];
            if (intValue)
            {
              v41 = intValue;
            }

            else
            {
              v41 = 2;
            }

            [(IMDChatMemberStatusChangeContext *)v38 setStatus:v41];

            [(IMDChatMemberStatusChangeContext *)v38 setHandleID:v37];
            [(IMDChatMemberStatusChangeContext *)v38 setChatIdentifier:v121];
            [(IMDChatMemberStatusChangeContext *)v38 setStyle:styleCopy];
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
            [(IMDChatMemberStatusChangeContext *)v48 setStyle:styleCopy];
            [(IMDChatMemberStatusChangeContext *)v48 setUnattributed:1];
            v49 = [(IMDServiceSession *)self didChangeMemberStatus:v48];
          }

          v44 = [v43 countByEnumeratingWithState:&v127 objects:v148 count:16];
        }

        while (v44);
      }
    }

LABEL_44:
    v53 = styleCopy;
    v54 = v121;
    if (styleCopy == 45)
    {
      v54 = 0;
    }

    v104 = v54;
    if (v53 == 43)
    {
      __imFirstObject = objc_alloc_init(MEMORY[0x277CBEB18]);
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v117 = infoCopy;
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
                _stripFZIDPrefix = [v72 _stripFZIDPrefix];
              }

              else
              {
                _stripFZIDPrefix = [v69 _stripFZIDPrefix];
                v72 = v69;
              }

              v74 = [[IMDHandle alloc] initWithID:_stripFZIDPrefix unformattedID:v70 countryCode:v71];
              [__imFirstObject addObject:v74];
            }
          }

          v63 = [v117 countByEnumeratingWithState:&v123 objects:v147 count:16];
        }

        while (v63);
      }

      v75 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v101) = blackholed;
      v76 = [v75 chatForHandles:__imFirstObject account:v108 chatIdentifier:v121 style:43 groupID:v106 originalGroupID:v107 displayName:v105 guid:v109 lastAddressedHandle:v103 lastAddressedSIMID:v102 isBlackholed:v101];
    }

    else if (v53 == 45)
    {
      __imFirstObject = [infoCopy __imFirstObject];
      v55 = [__imFirstObject objectForKey:*MEMORY[0x277D193A8]];
      v56 = [__imFirstObject objectForKey:*MEMORY[0x277D193C0]];
      v57 = [__imFirstObject objectForKey:*MEMORY[0x277D193A0]];
      v58 = [__imFirstObject objectForKey:*MEMORY[0x277D19CE8]];
      v59 = [__imFirstObject objectForKey:*MEMORY[0x277D19778]];
      if (!v55)
      {
        v55 = v121;
      }

      bOOLValue = [v58 BOOLValue];
      v61 = [IMDHandle alloc];
      if (bOOLValue)
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57 personCentricID:v59];
      }

      else
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57];
      }

      v77 = v62;
      v78 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v100) = blackholed;
      v76 = [v78 chatForHandle:v77 account:v108 chatIdentifier:v121 guid:v109 lastAddressedHandle:v103 lastAddressedSIMID:v102 isBlackholed:v100];
    }

    else
    {
      __imFirstObject = +[IMDChatRegistry sharedInstance];
      v76 = [__imFirstObject chatForRoom:v104 account:v108 chatIdentifier:v121 guid:v109];
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

    if (isMissingMessagesEnabled)
    {
      if ([v76 style] == 43)
      {
        [v76 assignIdentifier:v106 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        service = [v108 service];
        internalName = [service internalName];

        v83 = IMChatLookupDomainForServiceName();
        service2 = [v108 service];
        [v76 assignIdentifier:v106 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(service2, "groupIDIsHistoricalIdentifier")}];

        service3 = [v108 service];
        [v76 assignIdentifier:v107 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(service3, "groupIDIsHistoricalIdentifier") ^ 1}];
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
      participants2 = [v76 participants];
      v88 = [participants2 count] == 1;

      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      v90 = mEMORY[0x277D1AAA8];
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

      [mEMORY[0x277D1AAA8] trackSpamEvent:v91];

      mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]2 trackSpamEvent:v92];
    }

    if (styleCopy != 45)
    {
      goto LABEL_93;
    }

    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    if ([mEMORY[0x277D19268] isInternalInstall])
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

        accountCopy = v108;
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
      mEMORY[0x277D19268] = [MEMORY[0x277CCAC38] processInfo];
      processName = [mEMORY[0x277D19268] processName];
      IMLogSimulateCrashForProcess();
    }

    goto LABEL_93;
  }

  v121 = 0;
LABEL_99:

  v99 = *MEMORY[0x277D85DE8];
}

- (void)canonicalizeChatIdentifier:(id *)identifier style:(unsigned __int8 *)style
{
  v7 = *identifier;
  v8 = *style;
  if (v8 == 35)
  {
    v9 = [(IMDServiceSession *)self canonicalFormOfChatRoom:v7];
LABEL_8:
    *identifier = v9;
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
    *identifier = [(IMDServiceSession *)self canonicalFormOfChatRoom:v10];
    *style = 35;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_mapRoomChatToGroupChat:(id *)chat style:(unsigned __int8 *)style
{
  if ([(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms]&& *style == 35)
  {
    v7 = [(IMDServiceSession *)self groupChatIdentifierForChatRoom:*chat];
    if (v7)
    {
      v7 = v7;
      *chat = v7;
      *style = 43;
    }
  }
}

- (id)existingChatsForGroupID:(id)d
{
  dCopy = d;
  v4 = +[IMDChatRegistry sharedInstance];
  uUIDString = [dCopy UUIDString];

  v6 = [v4 existingChatsWithGroupID:uUIDString];

  return v6;
}

- (id)existingChatForID:(id)d
{
  dCopy = d;
  v5 = +[IMDChatRegistry sharedInstance];
  account = [(IMDServiceSession *)self account];
  v7 = [v5 existingChatForID:dCopy account:account];

  return v7;
}

- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account updatingAccount:(BOOL)updatingAccount
{
  updatingAccountCopy = updatingAccount;
  v33 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  accountCopy = account;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v11 = identifierCopy;

  if (v11)
  {
    v12 = [(IMDServiceSession *)self _guidForChat:v11 style:styleCopy];
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:v12];

    if (v14)
    {
      account = [v14 account];
      if (account == accountCopy)
      {
        updatingAccountCopy = 0;
      }

      if (updatingAccountCopy)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            accountID = [v14 accountID];
            accountID2 = [accountCopy accountID];
            *buf = 138412546;
            v28 = accountID;
            v29 = 2112;
            v30 = accountID2;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updating account ID from: %@ => %@", buf, 0x16u);
          }
        }

        accountID3 = [accountCopy accountID];
        [v14 setAccountID:accountID3];

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
        v32 = styleCopy;
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

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d
{
  dCopy = d;
  participantsCopy = participants;
  nameCopy = name;
  toIdentifierCopy = toIdentifier;
  identifierCopy = identifier;
  v17 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v20 = [v17 bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy groupID:dCopy serviceName:internalName];

  return v20;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  participantsCopy = participants;
  nameCopy = name;
  toIdentifierCopy = toIdentifier;
  identifierCopy = identifier;
  v20 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v23 = [v20 bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy groupID:dCopy originalGroupID:iDCopy serviceName:internalName];

  return v23;
}

- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account didReplaceMessageBlock:(id)block completionBlock:(id)completionBlock
{
  watchdogCopy = watchdog;
  v59 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (sendingCopy)
  {
    if (!accountCopy)
    {
      accountCopy = [(IMDServiceSession *)self account];
    }

    v49 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v49 style:&styleCopy];
    v41 = v49;

    if (watchdogCopy && ([sendingCopy isTypingMessage] & 1) == 0 && (objc_msgSend(sendingCopy, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(sendingCopy, "isRCSEncryptionTest") & 1) == 0)
    {
      guid = [sendingCopy guid];
      [(IMDServiceSession *)self _updateWatchdogForMessageGUID:guid];
    }

    [(IMDServiceSession *)self _configureSessionInformationOnItem:sendingCopy toChat:v41 withStyle:styleCopy forAccount:accountCopy];
    [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:sendingCopy];
    [sendingCopy setErrorCode:0];
    isBeingRetried = [sendingCopy isBeingRetried];
    v48 = 0;
    v21 = MEMORY[0x277D1AAB0];
    balloonBundleID = [sendingCopy balloonBundleID];
    body = [sendingCopy body];
    payloadData = [sendingCopy payloadData];
    v40 = [v21 photoShareURLFromPluginBundleID:balloonBundleID contentString:body payload:payloadData shouldAccept:&v48];

    v25 = [(IMDServiceSession *)self existingChatForID:v41];
    v26 = v25;
    if (v40 && v48 == 1)
    {
      if (v25)
      {
        v27 = +[IMDMomentShareManager sharedInstance];
        [v27 registerAndAcceptMomentShareForMessage:sendingCopy inChat:v26 resetAssetTransfers:1];
      }

      else if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          guid2 = [sendingCopy guid];
          *buf = 138412290;
          v52 = guid2;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Failed to accept moment share for message guid: %@", buf, 0xCu);
        }
      }
    }

    if ([sendingCopy containsRichLink])
    {
      v31 = [(IMDServiceSession *)self _isMessageSWYSpamMessage:sendingCopy inChat:v26];
      v46 = 0;
      v47 = 0;
      v32 = [(IMDServiceSession *)self _shouldShowSWYQuickActionForMessage:sendingCopy outAppName:&v47 outBundleID:&v46];
      v33 = v47;
      v34 = v46;
      if (v31 || v32)
      {
        [(IMDServiceSession *)self _configureSyndicationRangesForMessage:sendingCopy forChat:v26 withSyndicationStatus:2];
        [sendingCopy setWasDetectedAsSWYSpam:v31];
        [sendingCopy setSwyAppName:v33];
        [sendingCopy setSwyBundleID:v34];
        if (IMOSLoggingEnabled())
        {
          log = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v35 = @"NO";
            *buf = 138413058;
            v52 = sendingCopy;
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
      [sendingCopy setBalloonBundleID:*MEMORY[0x277D196D8]];
    }

    v37 = objc_alloc_init(IMDMessageStorageContext);
    [(IMDMessageStorageContext *)v37 setForceReplace:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyError:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyFlags:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setFlagMask:557068];
    [(IMDMessageStorageContext *)v37 setChat:v26];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_22B67A764;
    v43[3] = &unk_278707650;
    v43[4] = self;
    v44 = sendingCopy;
    v45 = completionBlockCopy;
    [(IMDServiceSession *)self storeMessage:v44 context:v37 didReplaceBlock:blockCopy shouldStoreBlock:0 didStoreBlock:0 block:v43];

    chatCopy = v41;
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

    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_configureAccountInformationOnItem:(id)item withAccount:(id)account
{
  accountCopy = account;
  itemCopy = item;
  service = [accountCopy service];
  internalName = [service internalName];
  [itemCopy setService:internalName];

  accountID = [accountCopy accountID];
  [itemCopy setAccountID:accountID];

  loginID = [accountCopy loginID];

  [itemCopy setAccount:loginID];
}

- (void)_configureTimeOnOutgoingItem:(id)item
{
  itemCopy = item;
  time = [itemCopy time];

  if (!time)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [itemCopy setTime:date];
  }
}

- (void)_configureIdentifierForOutgoingItem:(id)item withIdentifier:(id)identifier withStyle:(unsigned __int8)style
{
  if (style == 45)
  {
    [item setHandle:identifier];
  }

  else
  {
    [item setRoomName:identifier];
  }
}

- (void)_setOutgoingFlagsOnMessage:(id)message
{
  messageCopy = message;
  [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") & 0xFFFFFFFFFFFF7FFBLL | 4}];
}

- (void)_messageStoreCompletion:(BOOL)completion inputMessage:(id)message outputMessage:(id)outputMessage originalMessage:(id)originalMessage completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  outputMessageCopy = outputMessage;
  originalMessageCopy = originalMessage;
  blockCopy = block;
  if (completion || [messageCopy scheduleType] == 1 || (objc_msgSend(messageCopy, "criticalMessagingAppName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
  {
    if (([messageCopy isTypingMessage] & 1) == 0 && objc_msgSend(messageCopy, "scheduleType") != 1 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = messageCopy;
        v24 = 2112;
        v25 = outputMessageCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "  => Message was stored. Input: %@   Output: %@", &v22, 0x16u);
      }
    }

    v19 = [(IMDServiceSession *)self _determineResultMessageForInput:messageCopy output:outputMessageCopy original:originalMessageCopy];
    consumedSessionPayloads = [originalMessageCopy consumedSessionPayloads];
    if (![(IMDServiceSession *)self _shouldDropSendingMessage])
    {
      if (consumedSessionPayloads)
      {
        [v19 setConsumedSessionPayloads:consumedSessionPayloads];
      }

      [v19 setShouldNotifyOnSend:{objc_msgSend(originalMessageCopy, "shouldNotifyOnSend")}];
      [v19 setSentViaRemoteIntent:{objc_msgSend(originalMessageCopy, "sentViaRemoteIntent")}];
      if (blockCopy)
      {
        blockCopy[2](blockCopy, v19);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_determineResultMessageForInput:(id)input output:(id)output original:(id)original
{
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  originalCopy = original;
  v10 = outputCopy;
  if (outputCopy)
  {
LABEL_2:
    v11 = v10;
    goto LABEL_4;
  }

  v11 = inputCopy;
  if (!v11)
  {
    v16 = IMOSLoggingEnabled();
    v10 = originalCopy;
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = originalCopy;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "  => No result? Using the requested message: %@", &v18, 0xCu);
      }

      v10 = originalCopy;
    }

    goto LABEL_2;
  }

LABEL_4:
  if ([originalCopy isBeingRetried])
  {
    [v11 setIsBeingRetried:1];
  }

  retryToParticipant = [originalCopy retryToParticipant];

  if (retryToParticipant)
  {
    retryToParticipant2 = [originalCopy retryToParticipant];
    [v11 setRetryToParticipant:retryToParticipant2];
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

- (id)itemWithGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 itemWithGUID:dCopy];

  return v5;
}

- (id)chatForItemWithGUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
  v6 = [_sharedMessageStore chatForMessageGUID:dCopy];

  if (!v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dCopy;
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

- (void)sendRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendIncomingRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D89A0(self);
  }
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style destinationHandles:(id)handles
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A3C();
  }
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  if (messageCopy)
  {
    if ([messageCopy isBeingRetried])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid = [messageCopy guid];
          *buf = 138412290;
          v32 = guid;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not sending message up to client because this message is being retried. Guid %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v29 = chatCopy;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v29 style:&styleCopy];
      v15 = v29;

      [(IMDServiceSession *)self _configureSessionInformationOnItem:messageCopy toChat:v15 withStyle:styleCopy forAccount:accountCopy];
      [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:messageCopy];
      v16 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:styleCopy account:accountCopy updatingAccount:1];
      if ([messageCopy scheduleType] == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            guid2 = [messageCopy guid];
            *buf = 138412290;
            v32 = guid2;
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
        selfCopy = self;
        v24 = accountCopy;
        v25 = v15;
        v26 = styleCopy;
        [(IMDServiceSession *)self storeMessage:messageCopy context:v19 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:v27 block:v21];
      }

      chatCopy = v15;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)revokeSentMessage:(id)message inChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      displayName = [(IMDServiceSession *)self displayName];
      guid = [messageCopy guid];
      guid2 = [chatCopy guid];
      v13 = 138412802;
      v14 = displayName;
      v15 = 2112;
      v16 = guid;
      v17 = 2112;
      v18 = guid2;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@ Service session does not support message revocation for %@ in chat %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only
{
  messageCopy = message;
  chatCopy = chat;
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

- (void)downgradeRequestedForHandleID:(id)d expirationDate:(id)date preferredService:(id)service
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  serviceCopy = service;
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
      v27 = dCopy;
      v28 = 2112;
      v29 = dateCopy;
      v30 = 2112;
      v31 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ setting downgrade flag for %@ (expiration: %@) to %@", buf, 0x2Au);
    }
  }

  v14 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:1];
  if (!v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = dCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " => No chat for %@, joining chat", buf, 0xCu);
      }
    }

    v16 = *MEMORY[0x277D192F8];
    v22[0] = *MEMORY[0x277D193A8];
    v22[1] = v16;
    v23[0] = dCopy;
    v23[1] = &unk_283F4ECA8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v21 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [(IMDServiceSession *)self didJoinChat:dCopy style:45 displayName:0 groupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v18];

    v14 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45];
  }

  [v14 setRequestedDowngradeService:serviceCopy];
  if (dateCopy)
  {
    [v14 setRequestedDowngradeExpirationDate:dateCopy];
  }

  else
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v14 setRequestedDowngradeExpirationDate:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearDowngradeRequestForHandleID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
      v15 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ clearing downgrade flag for %@", &v12, 0x16u);
    }
  }

  v8 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:1];
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

- (BOOL)hasValidDowngradeRequestForHandleID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:0];
  v6 = v5;
  if (v5)
  {
    requestedDowngradeService = [v5 requestedDowngradeService];
    requestedDowngradeExpirationDate = [v6 requestedDowngradeExpirationDate];
    v9 = 0;
    if ([requestedDowngradeService length] && requestedDowngradeExpirationDate)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = [requestedDowngradeExpirationDate laterDate:v10];

      if (v11 == v10)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v24 = 138412546;
            v25 = requestedDowngradeService;
            v26 = 2112;
            v27 = requestedDowngradeExpirationDate;
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
        service = [(IMDServiceSession *)self service];
        internalName = [service internalName];
        v15 = [v12 lastIncomingMessageForChatWithIdentifier:dCopy chatStyle:45 onService:internalName];

        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 lastIncomingMessageForChatWithIdentifier:dCopy chatStyle:45 onService:requestedDowngradeService];

        time = [v15 time];
        time2 = [v17 time];
        if (v17)
        {
          if (v15)
          {
            v20 = [time laterDate:time2];
            v9 = v20 != time;
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

- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Downgrade request was sent to %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:guid account:account];
}

- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:guid account:account];
}

- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:guid account:account];
}

- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid account:account];
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  accountCopy = account;
  guid = [message guid];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:guid account:accountCopy];
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:guid account:account];
}

- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A7C();
  }
}

- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  receiptCopy = receipt;
  callerIDCopy = callerID;
  accountCopy = account;
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

- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchID:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)context isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7
{
  v73 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  accountCopy = account;
  tokenCopy = token;
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  participantsCopy = participants;
  nameCopy = name;
  iDCopy = iD;
  batchIDCopy = batchID;
  receiptCopy = receipt;
  dictionaryCopy = dictionary;
  attachmentsCopy = attachments;
  arrayCopy = array;
  nicknameDictionaryCopy = nicknameDictionary;
  prefixCopy = prefix;
  validationTokenCopy = validationToken;
  subscriptionValidationTokenCopy = subscriptionValidationToken;
  encryptionValidationTokenCopy = encryptionValidationToken;
  serviceCopy = service;
  contextCopy = context;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = participantsCopy;
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138543362;
      v72 = internalName;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Not handling, blastdoor not supported in %{public}@ yet", buf, 0xCu);

      participantsCopy = v50;
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationTime:(id)time toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  timeCopy = time;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
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

- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh
{
  backgroundCopy = background;
  identifierCopy = identifier;
  dCopy = d;
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

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
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

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
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

- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context
{
  commandCopy = command;
  forCopy = for;
  senderCopy = sender;
  contextCopy = context;
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

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  identifierCopy = identifier;
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

- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0);
  }
}

- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds
{
  v9 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Service session %@ does not support message fetching", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)trackTimeSensitiveContentInMessageItem:(id)item chat:(id)chat
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  otcUtilities = [(IMDServiceSession *)self otcUtilities];
  body = [itemCopy body];
  sender = [itemCopy sender];
  guid = [itemCopy guid];
  v12 = [otcUtilities createOTCFromMessageBody:body sender:sender guid:guid];

  if (v12)
  {
    v13 = +[IMDOneTimeCodeManager sharedInstance];
    [v13 startTrackingCode:v12];

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A238]];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

  if (isPriorityMessagesEnabled)
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
          guid2 = [itemCopy guid];
          *buf = 138412290;
          v35 = guid2;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: onetime pass code", buf, 0xCu);
        }

        goto LABEL_35;
      }

      filterCategory = [chatCopy filterCategory];
      if (filterCategory == 4)
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
            guid3 = [itemCopy guid];
            *buf = 138412290;
            v35 = guid3;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category transactional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (filterCategory == 3)
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
            guid4 = [itemCopy guid];
            *buf = 138412290;
            v35 = guid4;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category promotional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (filterCategory == 1 && [MEMORY[0x277D1AB08] personalPriorityEnabled])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          guid5 = [itemCopy guid];
          *buf = 138412290;
          v35 = guid5;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category unknown sender", buf, 0xCu);
        }

        goto LABEL_35;
      }
    }

    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    if ([mEMORY[0x277D19268] isInternalInstall])
    {
      messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
      v25 = [messagesAppDomain BOOLForKey:@"ForcePriorityMessage"];

      if (v25)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          guid6 = [itemCopy guid];
          *buf = 138412290;
          v35 = guid6;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: internal bypass", buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        time = [itemCopy time];
        if (time)
        {
          [itemCopy setIsTimeSensitive:1];
          v28 = +[IMDMessageStore sharedInstance];
          LOBYTE(v33) = 0;
          v29 = [v28 storeMessage:itemCopy forceReplace:1 modifyError:0 modifyFlags:1 flagMask:0 updateMessageCache:1 calculateUnreadCount:v33];

          [chatCopy updateTimeSensitiveExpirationDateWithMessageTime:time hasOneTimeCode:v12 != 0];
        }

        else
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D8ABC(itemCopy);
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
      time = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(time, OS_LOG_TYPE_INFO))
      {
        guid7 = [itemCopy guid];
        *buf = 138412290;
        v35 = guid7;
        _os_log_impl(&dword_22B4CC000, time, OS_LOG_TYPE_INFO, "No time sensitive content found for message.guid: %@", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

LABEL_47:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveErrorMessage:(id)message forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  chatCopy = chat;
  chatCopy2 = chat;
  messageCopy = message;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&chatCopy style:&styleCopy];
  v9 = chatCopy;

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = [v10 initWithObjectsAndKeys:{messageCopy, *MEMORY[0x277CCA450], 0}];

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = [v12 initWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v11];
  if (![(IMDServiceSession *)self isAwaitingStorageTimer])
  {
    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
    accountID = [(IMDServiceSession *)self accountID];
    [broadcasterForChatListeners account:accountID chat:v9 style:styleCopy chatProperties:0 error:v13];
  }
}

- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)identifier account:(id)account
{
  v47[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  v37 = identifierCopy;
  v38 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:45 updatingAccount:1];
  if (v38)
  {
    v7 = +[IMDMessageStore sharedInstance];
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    v36 = [v7 lastIncomingMessageForChatWithIdentifier:identifierCopy chatStyle:45 onService:internalName];

    time = [v36 time];
    v11 = time;
    if (time)
    {
      distantPast = time;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v13 = distantPast;

    v33 = v13;
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", *MEMORY[0x277D19F88], v13];
    v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC38]];
    v14 = objc_alloc(MEMORY[0x277D18ED8]);
    guid = [v38 guid];
    v16 = [v14 initWithAssociatedChatGUID:guid];

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
                  guid2 = [v25 guid];
                  *buf = 138412290;
                  v45 = guid2;
                  _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Updating pending flag for %@", buf, 0xCu);
                }
              }

              [v25 setIsPendingSatelliteSend:1];
              v29 = +[IMDMessageStore sharedInstance];
              v26 = [v29 storeMessage:v25 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

              broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
              accountID = [accountCopy accountID];
              [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v26];
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

- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)identifier account:(id)account
{
  v39[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  v29 = identifierCopy;
  v30 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:45 updatingAccount:1];
  if (v30)
  {
    v7 = MEMORY[0x277CBEC38];
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19FB0], MEMORY[0x277CBEC38]];
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], v7];
    v8 = objc_alloc(MEMORY[0x277D18ED8]);
    guid = [v30 guid];
    v10 = [v8 initWithAssociatedChatGUID:guid];

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
                guid2 = [v19 guid];
                *buf = 138412290;
                v37 = guid2;
                _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Clearing pending flag for %@", buf, 0xCu);
              }
            }

            [v19 setIsPendingSatelliteSend:0];
            [v19 setExpectedOffGridCapableDeliveries:0];
            v22 = +[IMDMessageStore sharedInstance];
            v23 = [v22 storeMessage:v19 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

            broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
            accountID = [accountCopy accountID];
            [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v23];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v15);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)ds forMessageGUID:(id)d partIndex:(int64_t)index previousMessage:(id)message backwardCompatibilityMessageGUID:(id)iD
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if ([dsCopy count])
  {
    v13 = +[IMDMessageStore sharedInstance];
    v14 = [v13 messageWithGUID:dCopy];
    if (v14)
    {
      v15 = v14;
      indexCopy = index;
      messageSummaryInfo = [v14 messageSummaryInfo];
      v17 = messageSummaryInfo;
      v18 = MEMORY[0x277CBEC10];
      if (messageSummaryInfo)
      {
        v18 = messageSummaryInfo;
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
      [v25 addObjectsFromArray:dsCopy];
      array = [v25 array];
      [v20 setObject:array forKeyedSubscript:v21];
      v48 = v20;
      v27 = [v20 copy];
      [v15 setMessageSummaryInfo:v27];

      if ([iDCopy length])
      {
        v47 = array;
        v28 = [v15 historyForMessagePart:indexCopy];
        if ([v28 count])
        {
          v29 = [v28 mutableCopy];
          lastObject = [v29 lastObject];
          v44 = v25;
          v31 = objc_alloc(MEMORY[0x277D1AA90]);
          [lastObject messagePartText];
          v32 = v45 = v13;
          messagePartTranslation = [lastObject messagePartTranslation];
          [lastObject dateSent];
          v34 = v46 = iDCopy;
          v35 = [v31 initWithMessagePartText:v32 messagePartTranslation:messagePartTranslation dateSent:v34 backwardCompatibleMessageGUID:v46];

          v13 = v45;
          [v29 removeLastObject];
          [v29 addObject:v35];
          v36 = [v29 copy];
          [v15 setHistory:v36 forMessagePart:indexCopy];

          iDCopy = v46;
          v25 = v44;
        }

        array = v47;
      }

      v37 = [v13 storeMessage:v15 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

      if ([(IMDServiceSession *)self isAwaitingStorageTimer])
      {
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
      }

      else
      {
        [(IMDServiceSession *)self account];
        v39 = v38 = iDCopy;
        [v39 accountID];
        v40 = v25;
        v42 = v41 = v13;
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        [broadcasterForChatListeners account:v42 chat:0 style:0 messageUpdated:v37];

        v13 = v41;
        v25 = v40;

        iDCopy = v38;
      }

      sub_22B67EEDC(dCopy);
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

- (void)didReceiveMessageEditingSendFailure:(unsigned int)failure forMessageGUID:(id)d partIndex:(int64_t)index editType:(unint64_t)type
{
  dCopy = d;
  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:dCopy];
  if (v11)
  {
    v12 = v11;
    if (type == 2)
    {
      [v11 addFailedRetractPartIndex:index];
    }

    else if (type == 1)
    {
      [v11 addFailedEditPartIndex:index];
    }

    v13 = [v10 storeMessage:v12 forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

    if ([(IMDServiceSession *)self isAwaitingStorageTimer])
    {
      [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
    }

    else
    {
      account = [(IMDServiceSession *)self account];
      accountID = [account accountID];
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v13];
    }

    sub_22B67EEDC(dCopy);
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

- (void)didSendMessageEditForMessageGUID:(id)d
{
  dCopy = d;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:dCopy];
  if (v6)
  {
    v7 = v6;
    messageSummaryInfo = [v6 messageSummaryInfo];
    v9 = messageSummaryInfo;
    v10 = MEMORY[0x277CBEC10];
    if (messageSummaryInfo)
    {
      v10 = messageSummaryInfo;
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
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
      }

      else
      {
        account = [(IMDServiceSession *)self account];
        accountID = [account accountID];
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v19];
      }

      sub_22B67EEDC(dCopy);
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

- (void)didSendMessageReadReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessageReadReceiptForMessageID:(id)d account:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v28, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
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

        timeRead = [v12 timeRead];
        v18 = timeRead == 0;

        if (v18)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          [v12 setTimeRead:__im_dateWithCurrentServerTime];

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
          guid = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid];
        }

        else
        {
          guid = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid2 = [v12 guid];
        sub_22B67EEDC(guid2);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v28 = 138412546;
          v29 = service2;
          v30 = 2112;
          v31 = internalName;
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
          v29 = dCopy;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to mark send of read receipt, no messages found for guid: %@", &v28, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:dCopy account:account];
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d account:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v27, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
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
              guid = [v12 guid];
              v27 = 138412290;
              v28 = guid;
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
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid3 = [v12 guid];
        sub_22B67EEDC(guid3);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = service2;
          v29 = 2112;
          v30 = internalName;
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
          v28 = dCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly, no messages found for guid: %@", &v27, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:dCopy account:account];
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)d account:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v27, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
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
              guid = [v12 guid];
              v27 = 138412290;
              v28 = guid;
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
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid3 = [v12 guid];
        sub_22B67EEDC(guid3);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = service2;
          v29 = 2112;
          v30 = internalName;
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
          v28 = dCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message notified command, no messages found for guid: %@", &v27, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)d account:(id)account
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v32, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_25;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
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
              guid = [v12 guid];
              v32 = 138412290;
              v33 = guid;
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

        timePlayed = [v12 timePlayed];
        v19 = timePlayed == 0;

        if (v19)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x400000}];
          date = [MEMORY[0x277CBEAA8] date];
          [v12 setTimePlayed:date];
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
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        if (v17)
        {
          guid3 = [v12 guid];
          [(IMDServiceSession *)self _updateExpireStateForMessageGUID:guid3];
        }

        guid4 = [v12 guid];
        sub_22B67EEDC(guid4);

        goto LABEL_45;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_45;
        }

        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v32 = 138412546;
          v33 = service2;
          v34 = 2112;
          v35 = internalName;
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
          v33 = dCopy;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to mark send of played receipt, no messages found for guid: %@", &v32, 0xCu);
        }
      }

      goto LABEL_45;
    }
  }

LABEL_46:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessageSavedReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessageSavedReceiptForMessageID:(id)d account:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412290;
      v26 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v25, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
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
          guid = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid];
        }

        else
        {
          guid = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid2 = [v12 guid];
        sub_22B67EEDC(guid2);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v25 = 138412546;
          v26 = service2;
          v27 = 2112;
          v28 = internalName;
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
          v26 = dCopy;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Unable to mark send of saved receipt, no messages found for guid: %@", &v25, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)didSendSyndicationActionItem:(id)item forChat:(id)chat
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  if (itemCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!chatCopy)
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
          guid = [chatCopy guid];
          v31 = 138412546;
          v32 = itemCopy;
          v33 = 2112;
          v34 = guid;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received didSendSyndicationAction: %@ for Chat: %@", &v31, 0x16u);
        }
      }

      syndicatedItemType = [itemCopy syndicatedItemType];
      if (syndicatedItemType == 2)
      {
        v13 = itemCopy;
        v22 = [chatCopy updateDonationStateWithSyndicationAction:v13];
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            isAutoDonatingMessages = [v13 isAutoDonatingMessages];
            chatGUID = [v13 chatGUID];
            v26 = chatGUID;
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
            if (isAutoDonatingMessages)
            {
              v27 = @"YES";
            }

            v32 = v27;
            v33 = 2112;
            v34 = v28;
            v35 = 2112;
            v36 = chatGUID;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Updated syndication state to: %@ was successful: %@ for chat with GUID: %@", &v31, 0x20u);
          }
        }

        goto LABEL_32;
      }

      if (syndicatedItemType == 1)
      {
        v13 = itemCopy;
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
              messagePartGUID = [v13 messagePartGUID];
              v31 = 138412546;
              v32 = messagePartGUID;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Updated message: %@ with action item: %@", &v31, 0x16u);
            }
          }

          broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [chatCopy accountID];
          chatIdentifier = [chatCopy chatIdentifier];
          [broadcasterForChatListeners account:accountID chat:chatIdentifier style:objc_msgSend(chatCopy messageUpdated:{"style"), v15}];
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

- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)d date:(id)date
{
  dateCopy = date;
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  LOBYTE(self) = [(IMDServiceSession *)self _didReceiveMessageDeliveryReceiptForMessageID:dCopy attempts:0 date:dateCopy account:account];

  return self;
}

- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)d attempts:(int64_t)attempts date:(id)date account:(id)account
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = dCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "message: %@", buf, 0xCu);
    }
  }

  if (dCopy && (-[IMDServiceSession service](self, "service"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 supportsDatabase], v14, v15))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B68277C;
    aBlock[3] = &unk_2787076C8;
    v16 = dCopy;
    v34 = v16;
    selfCopy = self;
    v28 = dateCopy;
    v36 = v28;
    v17 = accountCopy;
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
      if (attempts >= 6)
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

        if (attempts == 5)
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

        else if (attempts == 4 && IMOSLoggingEnabled())
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

- (void)_handleScheduledMessageFailure:(id)failure
{
  failureCopy = failure;
  v4 = +[IMDMessageStore sharedInstance];
  guid = [failureCopy guid];
  v6 = [v4 messageWithGUID:guid];

  if ([v6 scheduleType] == 2)
  {
    scheduleState = [v6 scheduleState];
    switch(scheduleState)
    {
      case 3:
        [failureCopy setScheduleType:{objc_msgSend(v6, "scheduleType")}];
        [failureCopy setScheduleState:{objc_msgSend(v6, "scheduleState")}];
        messageSummaryInfo = [v6 messageSummaryInfo];
        [failureCopy setMessageSummaryInfo:messageSummaryInfo];

        body = [v6 body];
        [failureCopy setBody:body];

        [failureCopy setErrorCode:{objc_msgSend(v6, "errorCode")}];
        break;
      case 2:
        [failureCopy setErrorCode:0];
        editedPartIndexes = [failureCopy editedPartIndexes];
        [failureCopy setFailedEditPartIndexes:editedPartIndexes];

        retractedPartIndexes = [failureCopy retractedPartIndexes];
        [failureCopy setFailedRetractPartIndexes:retractedPartIndexes];

        retractedPartIndexes2 = [failureCopy retractedPartIndexes];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = sub_22B683360;
        v19[3] = &unk_278707718;
        v13 = failureCopy;
        v20 = v13;
        [retractedPartIndexes2 enumerateIndexesUsingBlock:v19];

        retractedPartIndexes3 = [v13 retractedPartIndexes];
        v15 = [retractedPartIndexes3 count];

        if (v15)
        {
          scheduledMessageOriginalTransferGUIDs = [v13 scheduledMessageOriginalTransferGUIDs];
          [v13 setFileTransferGUIDs:scheduledMessageOriginalTransferGUIDs];
        }

        break;
      case 1:
        [failureCopy setScheduleState:4];
        guid2 = [failureCopy guid];
        [IMDScheduledMessageCoordinator notifyPeersWithScheduledMessageUpdate:guid2 scheduleState:4];

        break;
    }
  }

  else
  {
    [failureCopy setScheduleType:{objc_msgSend(v6, "scheduleType")}];
    [failureCopy setScheduleState:{objc_msgSend(v6, "scheduleState")}];
    [failureCopy setErrorCode:{objc_msgSend(v6, "errorCode")}];
    messageSummaryInfo2 = [v6 messageSummaryInfo];
    [failureCopy setMessageSummaryInfo:messageSummaryInfo2];
  }
}

- (void)_didReceiveMessageReadForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B683DB0;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v42 = v17;
      selfCopy = self;
      v36 = dateCopy;
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
        if (attempts >= 6)
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

          _IDSService = [(IMDServiceSession *)self _IDSService];
          [_IDSService _IMDTrackMetric:10401 ForMessageGUID:v17];
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

          _IDSService2 = [(IMDServiceSession *)self _IDSService];
          [_IDSService2 _IMDTrackMetric:10401 ForMessageGUID:v17];

          if (attempts == 5)
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

          else if (attempts == 4 && IMOSLoggingEnabled())
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
          service = [(IMDServiceSession *)self service];
          supportsDatabase = [service supportsDatabase];
          service2 = [(IMDServiceSession *)self service];
          v33 = service2;
          v34 = @"NO";
          *buf = 138412802;
          v47 = dCopy;
          v48 = 2112;
          if (supportsDatabase)
          {
            v34 = @"YES";
          }

          v49 = v34;
          v50 = 2112;
          v51 = service2;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Returning early in _didReceiveMessageReadForMessageID because messageID: %@, [[self service] supportsDatabase]: %@, service: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
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

- (void)_didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B684D2C;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v32 = v17;
      selfCopy = self;
      v28 = dateCopy;
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
        if (attempts >= 6)
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

          if (attempts == 5)
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

          else if (attempts == 4 && IMOSLoggingEnabled())
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

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block
{
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v10 = blockCopy;
  if (self->_activated)
  {
    [(IMDServiceSession *)self _didReceiveMessageReadReceiptForMessageID:dCopy date:dateCopy attempts:0 completionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
  }
}

- (void)_didReceiveMessagePlayedForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6857B8;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v32 = v17;
      selfCopy = self;
      v28 = dateCopy;
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
        if (attempts >= 6)
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

          if (attempts == 5)
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

          else if (attempts == 4 && IMOSLoggingEnabled())
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

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6867AC;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v32 = v17;
      selfCopy = self;
      v28 = dateCopy;
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
        if (attempts >= 6)
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

          if (attempts == 5)
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

          else if (attempts == 4 && IMOSLoggingEnabled())
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

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block
{
  if (self->_activated)
  {
    MEMORY[0x2821F9670](self, sel__didReceiveMessagePlayedReceiptForMessageID_date_attempts_completionBlock_);
  }
}

- (void)_didReceiveMessageSavedForMessageID:(id)d ofType:(int64_t)type forChat:(id)chat fromHandle:(id)handle fromMe:(BOOL)me date:(id)date attempts:(int64_t)attempts account:(id)self0 completionBlock:(id)self1
{
  meCopy = me;
  v74 = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  handleCopy = handle;
  dateCopy = date;
  accountCopy = account;
  blockCopy = block;
  v17 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = dCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 supportsDatabase], v19, (v20 & 1) != 0))
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      _stripFZIDPrefix = [handleCopy _stripFZIDPrefix];
      v22 = meCopy;
      if (!meCopy)
      {
        v23 = +[IMDMessageStore sharedInstance];
        v24 = [v23 messageActionItemsForOriginalMessageGUID:dCopy];

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

              sender = [*(*(&v67 + 1) + 8 * i) sender];
              v30 = [sender isEqualToString:_stripFZIDPrefix];

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

        v22 = meCopy;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B687370;
      aBlock[3] = &unk_278707768;
      v31 = dCopy;
      v66 = v22;
      v58 = v31;
      selfCopy = self;
      v43 = chatCopy;
      v60 = v43;
      v61 = _stripFZIDPrefix;
      v45 = dateCopy;
      v62 = v45;
      typeCopy = type;
      v44 = accountCopy;
      v63 = v44;
      v32 = v17;
      v64 = v32;
      v33 = _Block_copy(aBlock);
      v34 = +[IMDMessageStore sharedInstance];
      v35 = [v34 hasStoredMessageWithGUID:v31];

      if (v35 | !meCopy)
      {
        v33[2](v33);
      }

      else
      {
        v36 = IMOSLoggingEnabled();
        if (attempts >= 6)
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

          if (attempts == 5)
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

          else if (attempts == 4 && IMOSLoggingEnabled())
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
          v54 = handleCopy;
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

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  v52 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  account = accountCopy;
  if (!self->_activated)
  {
    goto LABEL_69;
  }

  if (!accountCopy)
  {
    account = [(IMDServiceSession *)self account];
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
    }
  }

  if (!messageCopy)
  {
LABEL_69:
    v15 = chatCopy;
    goto LABEL_70;
  }

  v48 = chatCopy;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v48 style:&styleCopy];
  v15 = v48;

  service = [(IMDServiceSession *)self service];
  supportsDatabase = [service supportsDatabase];

  isTypingMessage = [messageCopy isTypingMessage];
  isSuggestedActionResponse = [messageCopy isSuggestedActionResponse];
  isRCSEncryptionTest = [messageCopy isRCSEncryptionTest];
  errorCode = [messageCopy errorCode];
  if (supportsDatabase)
  {
    v18 = +[IMDMessageStore sharedInstance];
    guid = [messageCopy guid];
    v20 = [v18 messageWithGUID:guid];
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
    v21 = messageCopy;
  }

  v22 = v21;
  if (![(IMDServiceSession *)self isReplicating]|| ![(IMDServiceSession *)self _canUpgradeExistingMessageItem:v20 replacementReplicatedMessageItem:messageCopy])
  {
    goto LABEL_22;
  }

  v23 = +[IMDMessageStore sharedInstance];
  guid2 = [v20 guid];
  v25 = [v23 wasMessageDeduplicatedWithGUID:guid2];

  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        guid3 = [messageCopy guid];
        *buf = 138412290;
        v51 = guid3;
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
      guid4 = [messageCopy guid];
      *buf = 138412290;
      v51 = guid4;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
    }
  }

  v29 = messageCopy;

  v36 = +[IMDMessageStore sharedInstance];
  [v36 markMessageAsDeduplicated:v29];

LABEL_23:
  if (!errorCode && v20 && [v20 isFinished] && (objc_msgSend(messageCopy, "isFinished") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        guid5 = [messageCopy guid];
        *buf = 138412290;
        v51 = guid5;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

  else if ([messageCopy isSuggestedActionResponse])
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

  else if (isRCSEncryptionTest)
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
    if (!errorCode || ![messageCopy isTypingMessage])
    {
      [v29 setErrorCode:{objc_msgSend(messageCopy, "errorCode")}];
      if (v20 || ((isTypingMessage | isSuggestedActionResponse) & 1) == 0) && (supportsDatabase)
      {
        v32 = [v20 scheduleType] == 2 && objc_msgSend(v20, "scheduleState") != 0;
        v38 = +[IMDMessageStore sharedInstance];
        v37 = [v38 storeMessage:v29 forceReplace:v32 modifyError:-[IMDServiceSession _shouldBroadcastSendFailures](self modifyFlags:"_shouldBroadcastSendFailures") flagMask:{1, 12}];
      }

      else
      {
        v37 = v29;
      }

      if ([messageCopy isBeingRetried])
      {
        [v37 setIsBeingRetried:1];
      }

      retryToParticipant = [messageCopy retryToParticipant];

      if (retryToParticipant)
      {
        retryToParticipant2 = [messageCopy retryToParticipant];
        [v37 setRetryToParticipant:retryToParticipant2];
      }

      v41 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:styleCopy account:account updatingAccount:1];
      if (((isTypingMessage | isSuggestedActionResponse) & (v20 == 0)) == 0 && ((supportsDatabase ^ 1) & 1) == 0)
      {
        v42 = +[IMDChatRegistry sharedInstance];
        [v42 addMessage:messageCopy toChat:v41 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
      }

      goto LABEL_68;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        guid6 = [messageCopy guid];
        *buf = 138412290;
        v51 = guid6;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

LABEL_68:

LABEL_70:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage
{
  storageCopy = storage;
  v186[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  dateCopy = date;
  if (self->_activated)
  {
    if (!accountCopy)
    {
      accountCopy = [(IMDServiceSession *)self account];
    }

    v158 = accountCopy;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v176 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (messageCopy)
    {
      v172 = chatCopy;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v172 style:&styleCopy];
      v157 = v172;

      service = [(IMDServiceSession *)self service];
      supportsDatabase = [service supportsDatabase];

      isTypingMessage = [(__CFString *)messageCopy isTypingMessage];
      isSuggestedActionResponse = [(__CFString *)messageCopy isSuggestedActionResponse];
      isRCSEncryptionTest = [(__CFString *)messageCopy isRCSEncryptionTest];
      errorCode = [(__CFString *)messageCopy errorCode];
      flags = [(__CFString *)messageCopy flags];
      if (supportsDatabase)
      {
        v20 = +[IMDMessageStore sharedInstance];
        guid = [(__CFString *)messageCopy guid];
        v22 = [v20 messageWithGUID:guid];
      }

      else
      {
        v22 = 0;
      }

      v23 = messageCopy;
      v154 = v22;
      if (v22)
      {
        v23 = v22;
      }

      v24 = v23;
      if ([(IMDServiceSession *)self isReplicating]&& [(IMDServiceSession *)self _canUpgradeExistingMessageItem:v22 replacementReplicatedMessageItem:messageCopy])
      {
        v25 = +[IMDMessageStore sharedInstance];
        guid2 = [(__CFString *)v22 guid];
        v27 = [v25 wasMessageDeduplicatedWithGUID:guid2];

        v28 = IMOSLoggingEnabled();
        if ((v27 & 1) == 0)
        {
          if (v28)
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              guid3 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v176 = guid3;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
            }
          }

          v31 = messageCopy;

          v47 = +[IMDMessageStore sharedInstance];
          [v47 markMessageAsDeduplicated:v31];

LABEL_24:
          if ([(__CFString *)v22 scheduleType]== 2 && [(__CFString *)v22 scheduleState])
          {
            v153 = messageCopy;

            cloudKitRecordID = [(__CFString *)v22 cloudKitRecordID];
            if (cloudKitRecordID)
            {
              v33 = [(__CFString *)v153 scheduleType]== 2;

              if (!v33)
              {
                [(__CFString *)v153 setCloudKitSyncState:0];
                synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
                guid4 = [(__CFString *)v154 guid];
                cloudKitRecordID2 = [(__CFString *)v154 cloudKitRecordID];
                [synchronousDatabase addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:guid4 recordID:cloudKitRecordID2];
              }
            }
          }

          else
          {
            v153 = v31;
          }

          if (!errorCode && v154 && [(__CFString *)v154 isFinished]&& ([(__CFString *)messageCopy isFinished]& 1) == 0)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              guid5 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v176 = guid5;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
            }

            goto LABEL_49;
          }

          if ([(__CFString *)messageCopy isSuggestedActionResponse])
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

          if (isRCSEncryptionTest)
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

          if (errorCode && [(__CFString *)messageCopy isTypingMessage])
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              guid6 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v176 = guid6;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
            }

LABEL_49:

            goto LABEL_221;
          }

          time = [(__CFString *)v153 time];
          date = [MEMORY[0x277CBEAA8] date];
          if (time)
          {
            [date timeIntervalSinceDate:time];
            v41 = v40;
            if (v40 > 0.0)
            {
              mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
              v43 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
              [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A348] withStatistic:v43];
            }
          }

          if (errorCode)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v153 toChat:v157 withStyle:styleCopy forAccount:v158];
            v44 = 4;
          }

          else
          {
            if (([(__CFString *)v153 flags]& 0x8000) == 0)
            {
              service2 = [(IMDServiceSession *)self service];
              internalName = [service2 internalName];
              v51 = [internalName isEqualToString:*MEMORY[0x277D1A610]];

              if (v51)
              {
                [(__CFString *)v153 setTime:date];
              }
            }

            [(IMDServiceSession *)self _configureSessionInformationOnItem:v153 toChat:v157 withStyle:styleCopy forAccount:v158];
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
          if ((flags & 0x80000000000) != 0)
          {
            [(__CFString *)v153 setFlags:[(__CFString *)v153 flags]| 0x80000000000];
          }

          if (!errorCode && [(__CFString *)v153 isExpirable]&& [(__CFString *)v153 isFromMe]&& [(__CFString *)v153 expireState]<= 0)
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
                  guid7 = [(__CFString *)v153 guid];
                  *buf = 138412290;
                  v176 = guid7;
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
                  guid8 = [(__CFString *)v153 guid];
                  *buf = 138412290;
                  v176 = guid8;
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

          [(__CFString *)v153 setErrorCode:[(__CFString *)messageCopy errorCode]];
          consumedSessionPayloads = [(__CFString *)messageCopy consumedSessionPayloads];
          if (dateCopy)
          {
            if (IMOSLoggingEnabled())
            {
              v52 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                guid9 = [(__CFString *)v153 guid];
                *buf = 138412546;
                v176 = guid9;
                v177 = 2112;
                v178 = dateCopy;
                _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Updating date on message guid %@ to be: %@", buf, 0x16u);
              }
            }

            [(__CFString *)v153 setTime:dateCopy];
          }

          v148 = [(IMDServiceSession *)self chatForChatIdentifier:v157 style:styleCopy account:v158 updatingAccount:1];
          criticalMessagingAppName = [(__CFString *)v153 criticalMessagingAppName];
          v55 = [criticalMessagingAppName length] == 0;

          mEMORY[0x277D1A900] = [MEMORY[0x277D1A900] sharedManager];
          isMessagesTheDefaultTextApp = [mEMORY[0x277D1A900] isMessagesTheDefaultTextApp];

          v58 = isTypingMessage | isSuggestedActionResponse;
          if (v154 != 0 || ((isTypingMessage | isSuggestedActionResponse) & 1) == 0) && ((v55 | isMessagesTheDefaultTextApp) & 1) != 0 && (supportsDatabase)
          {
            v59 = 0x2786FF000uLL;
            if ([(IMDServiceSession *)self isReplicating])
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  isSent = [(__CFString *)v154 isSent];
                  isSent2 = [(__CFString *)v153 isSent];
                  v63 = @"NO";
                  if (isSent)
                  {
                    v64 = @"YES";
                  }

                  else
                  {
                    v64 = @"NO";
                  }

                  if (isSent2)
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

          if ([(__CFString *)messageCopy isBeingRetried])
          {
            [(__CFString *)v150 setIsBeingRetried:1];
          }

          retryToParticipant = [(__CFString *)messageCopy retryToParticipant];

          if (retryToParticipant)
          {
            retryToParticipant2 = [(__CFString *)messageCopy retryToParticipant];
            [(__CFString *)v150 setRetryToParticipant:retryToParticipant2];
          }

          if ((v58 & (v154 == 0)) == 0 && ((supportsDatabase ^ 1) & 1) == 0)
          {
            v70 = +[IMDChatRegistry sharedInstance];
            [v70 addMessage:messageCopy toChat:v148 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
          }

          if (!v148 || ![(__CFString *)messageCopy isFromMe]|| ([(__CFString *)messageCopy isTypingMessage]& 1) != 0 || ([(__CFString *)messageCopy isSuggestedActionResponse]& 1) != 0 || ([(__CFString *)messageCopy isRCSEncryptionTest]& 1) != 0)
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

            if (consumedSessionPayloads)
            {
              [(__CFString *)v150 setConsumedSessionPayloads:consumedSessionPayloads];
            }

            if (!storageCopy || ![(IMDServiceSession *)self isAwaitingStorageTimer])
            {
              sharedInstance = [*(v59 + 2728) sharedInstance];
              guid10 = [(__CFString *)v150 guid];
              v86 = [sharedInstance messageWithGUID:guid10];
              v87 = v86;
              v88 = v150;
              if (v86)
              {
                v88 = v86;
              }

              v89 = v88;

              broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
              accountID = [v158 accountID];
              v92 = styleCopy;
              groupID = [v148 groupID];
              personCentricID = [v148 personCentricID];
              [broadcasterForChatListeners account:accountID chat:v157 style:v92 chatProperties:0 groupID:groupID chatPersonCentricID:personCentricID messageSent:v89];
            }

            if ([(__CFString *)messageCopy isFinished])
            {
              service3 = [(__CFString *)messageCopy service];
              v96 = [service3 isEqual:*MEMORY[0x277D1A620]];

              if (v96)
              {
                guid11 = [(__CFString *)messageCopy guid];
                fileTransferGUIDs = [(__CFString *)messageCopy fileTransferGUIDs];
                [fileTransferGUIDs count];
                _signpostSendMessage();
              }
            }

            if ([(__CFString *)messageCopy shouldNotifyOnSend])
            {
              if (IMOSLoggingEnabled())
              {
                v99 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  guid12 = [(__CFString *)messageCopy guid];
                  if (errorCode)
                  {
                    v101 = @"NO";
                  }

                  else
                  {
                    v101 = @"YES";
                  }

                  v102 = guid12;
                  *buf = 138412546;
                  v176 = v101;
                  v177 = 2112;
                  v178 = v102;
                  _os_log_impl(&dword_22B4CC000, v99, OS_LOG_TYPE_INFO, "Posting distributed notification of send result %@ for message %@", buf, 0x16u);
                }
              }

              v185[0] = *MEMORY[0x277D19FE8];
              guid13 = [(__CFString *)messageCopy guid];
              v186[0] = guid13;
              v185[1] = *MEMORY[0x277D19FF0];
              v104 = [MEMORY[0x277CCABB0] numberWithInt:errorCode == 0];
              v186[1] = v104;
              v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];

              DistributedCenter = CFNotificationCenterGetDistributedCenter();
              CFNotificationCenterPostNotification(DistributedCenter, *MEMORY[0x277D19FE0], 0, v105, 1u);
            }

            if ([(__CFString *)messageCopy sentViaRemoteIntent])
            {
              guid14 = [(__CFString *)messageCopy guid];
              IMMessageSoundStartSuppressingSendSoundForMessageGUID();
            }

            if (v144)
            {
              guid15 = [(__CFString *)messageCopy guid];
              [(IMDServiceSession *)self _updateExpireStateForMessageGUID:guid15];
            }

            if (HIDWORD(v144))
            {
              [(IMDServiceSession *)self sendSavedReceiptForMessage:messageCopy toChatID:0 identifier:v157 style:styleCopy account:v158];
            }

            v109 = ([(__CFString *)messageCopy isTypingMessage]& 1) == 0 && ([(__CFString *)messageCopy isDelivered]& 1) == 0 && [(__CFString *)messageCopy scheduleType]!= 2;
            v110 = ([v158 canMakeDowngradeRoutingChecks] & 1) != 0 || -[__CFString errorCode](messageCopy, "errorCode") == 22;
            if (IMOSLoggingEnabled())
            {
              v111 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                service4 = [v158 service];
                v113 = service4;
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
                v180 = messageCopy;
                v181 = 2112;
                v182 = v158;
                v183 = 2112;
                v184 = service4;
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

              guid16 = [(__CFString *)messageCopy guid];
              guid17 = [v148 guid];
              [(IMDServiceSession *)self _updateRoutingForMessageGUID:guid16 chatGUID:guid17 error:[(__CFString *)messageCopy errorCode] account:v158];
            }

            else
            {
              if (v110 || !v109)
              {
                goto LABEL_197;
              }

              guid16 = IMLogHandleForCategory();
              if (os_log_type_enabled(guid16, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D8D74();
              }
            }

LABEL_197:
            if (!isTypingMessage || v154)
            {
              guid18 = [(__CFString *)messageCopy guid];
              sub_22B67EEDC(guid18);
            }

            if ([(__CFString *)messageCopy isAssociatedMessageItem])
            {
              v120 = [(__CFString *)messageCopy associatedMessageType]& 0xFFFFFFFFFFFFFFF8;
              if (v120 == 3000 || v120 == 2000)
              {
                v121 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  guid19 = [(__CFString *)messageCopy guid];
                  associatedMessageGUID = [(__CFString *)messageCopy associatedMessageGUID];
                  *buf = 138412546;
                  v176 = guid19;
                  v177 = 2112;
                  v178 = associatedMessageGUID;
                  _os_log_impl(&dword_22B4CC000, v121, OS_LOG_TYPE_INFO, "Replacing previous message acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
                }

                sharedInstance2 = [*(v59 + 2728) sharedInstance];
                guid20 = [(__CFString *)messageCopy guid];
                associatedMessageGUID2 = [(__CFString *)messageCopy associatedMessageGUID];
                v127 = [sharedInstance2 replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:guid20 associatedMessageGUID:associatedMessageGUID2 sender:0];
              }
            }

            if ([(__CFString *)messageCopy isAssociatedMessageItem]&& [(__CFString *)messageCopy associatedMessageType]== 4000)
            {
              v128 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                guid21 = [(__CFString *)messageCopy guid];
                associatedMessageGUID3 = [(__CFString *)messageCopy associatedMessageGUID];
                *buf = 138412546;
                v176 = guid21;
                v177 = 2112;
                v178 = associatedMessageGUID3;
                _os_log_impl(&dword_22B4CC000, v128, OS_LOG_TYPE_INFO, "Replacing previous custom acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
              }

              sharedInstance3 = [*(v59 + 2728) sharedInstance];
              guid22 = [(__CFString *)messageCopy guid];
              associatedMessageGUID4 = [(__CFString *)messageCopy associatedMessageGUID];
              v134 = [sharedInstance3 replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:guid22 associatedMessageGUID:associatedMessageGUID4 sender:0];
            }

            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
            v136 = [serviceSessionDelegates countByEnumeratingWithState:&v167 objects:v174 count:16];
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
                    objc_enumerationMutation(serviceSessionDelegates);
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
                    v161 = messageCopy;
                    v162 = v157;
                    v165 = styleCopy;
                    v163 = v158;
                    v164 = dateCopy;
                    v166 = storageCopy;
                    dispatch_async(v138, block);
                  }
                }

                v136 = [serviceSessionDelegates countByEnumeratingWithState:&v167 objects:v174 count:16];
              }

              while (v136);
            }

            v142 = +[IMDChatRegistry sharedInstance];
            [v142 updateLastMessageForChat:v148 hintMessage:v150];

            goto LABEL_221;
          }

          [v148 updateNumberOfTimesRespondedToThread];
          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

          if (isIntroductionsEnabled)
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
              chatIdentifier = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = chatIdentifier;
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
              chatIdentifier2 = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = chatIdentifier2;
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
              chatIdentifier3 = [v148 chatIdentifier];
              *buf = 138412290;
              v176 = chatIdentifier3;
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
            guid23 = [(__CFString *)messageCopy guid];
            *buf = 138412290;
            v176 = guid23;
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
    v158 = accountCopy;
  }

  v157 = chatCopy;
LABEL_222:

  v143 = *MEMORY[0x277D85DE8];
}

- (BOOL)_alwaysAllowMarkingSent
{
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v3 = IMGetDomainBoolForKey();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canMarkMessageAsSent:(id)sent
{
  if (([sent isSent] & 1) == 0 && !-[IMDServiceSession isReplicating](self, "isReplicating"))
  {
    return 1;
  }

  return [(IMDServiceSession *)self _alwaysAllowMarkingSent];
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = commandCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Can't delete on this service %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  v70 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  guidCopy = guid;
  dCopy = d;
  identifierCopy = identifier;
  chatCopy = chat;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v61 = dCopy;
      v62 = 2112;
      v63 = changeCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "didReceiveDisplayNameChange from: %@, toName: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v61 = changeCopy;
      v62 = 2112;
      v63 = dCopy;
      v64 = 2112;
      v65 = identifierCopy;
      v66 = 2112;
      v67 = chatCopy;
      v68 = 1024;
      v69 = styleCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "name: %@   fromID: %@  toIdentifier:%@  identifier: %@ style: %d", buf, 0x30u);
    }
  }

  if (styleCopy != 45 && self->_activated)
  {
    v58 = styleCopy;
    v57 = chatCopy;
    v19 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v57 style:&v58];
    v48 = v57;

    v20 = [(IMDServiceSession *)self chatForChatIdentifier:v48 style:v58 updatingAccount:1];
    if (!v20)
    {
      v21 = changeCopy;
LABEL_50:

      goto LABEL_51;
    }

    v21 = IMSharedHelperTruncatedGroupDisplayName();

    displayName = [v20 displayName];
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

    displayName2 = [v20 displayName];
    v47 = displayName2;
    if (displayName2)
    {
      v46 = [displayName2 length] == 0;
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
              style = [v32 style];
              if (style == [v20 style])
              {
                [v32 updateDisplayName:v21 sender:dCopy];
                isFiltered = [v32 isFiltered];
                participants = [v32 participants];
                LOBYTE(isFiltered) = [(IMDServiceSession *)self shouldDisplayGroupNameAndPhotoWith:isFiltered handles:participants];

                if (isFiltered)
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
          v41 = [v40 itemWithGUID:guidCopy];

          if (v41)
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];

            guidCopy = stringGUID;
          }

          v43 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:dCopy time:0 guid:guidCopy type:2];
          if (v36)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v43 toChat:v48 withStyle:v58 forAccount:accountCopy];
            [v43 setSender:dCopy];
            [v43 setDestinationCallerID:identifierCopy];
            [v43 setTitle:v21];
            [(IMDServiceSession *)self _storeTranscriptItem:v43 inChat:v20 account:accountCopy];
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

  v21 = changeCopy;
LABEL_51:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_updateInputMessage:(id)message forExistingMessage:(id)existingMessage
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  existingMessageCopy = existingMessage;
  if ([existingMessageCopy isRead])
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

    [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") | 0x2000}];
  }

  time = [existingMessageCopy time];
  v9 = time == 0;

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        time2 = [existingMessageCopy time];
        v14 = 138412290;
        v15 = time2;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "The existing message has a time: %@, so lets set the new message to have the same time", &v14, 0xCu);
      }
    }

    time3 = [existingMessageCopy time];
    [messageCopy setTime:time3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setReplyGUIDOnMessage:(id)message forChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  replyToGUID = [messageCopy replyToGUID];
  if (!replyToGUID || ([messageCopy replyToGUID], v8 = objc_claimAutoreleasedReturnValue(), v8, replyToGUID, !v8))
  {
    lastMessage = [chatCopy lastMessage];
    guid = [lastMessage guid];

    if ([guid length])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          guid2 = [messageCopy guid];
          v14 = 138412546;
          v15 = guid2;
          v16 = 2112;
          v17 = guid;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We are setting the reply to guid for message %@ to be %@ as a reply to guid has not been set", &v14, 0x16u);
        }
      }

      [messageCopy setReplyToGUID:guid];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setSortIDForMessage:(id)message forChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMSharedHelperSortUsingReplyToGUIDAlgorithm())
  {
    v7 = objc_alloc_init(IMDMessageSortOrderAssigner);
    [(IMDMessageSortOrderAssigner *)v7 assignSortIDToIncomingMessage:messageCopy onChat:chatCopy];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "sortID")}];
        guid = [messageCopy guid];
        guid2 = [chatCopy guid];
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = guid;
        v17 = 2112;
        v18 = guid2;
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

- (void)_didReceivePotentialCollaborationMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  messageCopy = message;
  chatCopy = chat;
  accountCopy = account;
  v13 = objc_alloc_init(MEMORY[0x277D1A988]);
  payloadData = [messageCopy payloadData];
  [v13 setData:payloadData];

  guid = [messageCopy guid];
  [v13 setMessageGUID:guid];

  [v13 setIsFromMe:{objc_msgSend(messageCopy, "isFromMe")}];
  v16 = MEMORY[0x277CBEBC0];
  body = [messageCopy body];
  string = [body string];
  v19 = [v16 URLWithString:string];
  [v13 setUrl:v19];

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v21 = [fileTransferGUIDs __imArrayByApplyingBlock:&unk_283F1AC08];
  [v13 setAttachments:v21];

  _collaborationMessageProcessingQueue = [(IMDServiceSession *)self _collaborationMessageProcessingQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B68BD88;
  v27[3] = &unk_278707828;
  v28 = v13;
  v29 = messageCopy;
  selfCopy = self;
  v31 = chatCopy;
  styleCopy = style;
  v32 = accountCopy;
  v23 = accountCopy;
  v24 = chatCopy;
  v25 = messageCopy;
  v26 = v13;
  dispatch_async(_collaborationMessageProcessingQueue, v27);
}

- (id)_revokeSiblingMessagesForReplication:(id)replication
{
  v25 = *MEMORY[0x277D85DE8];
  replicationCopy = replication;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(replicationCopy, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277D18ED8]);
  replicationCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D19F90], replicationCopy];
  [v5 setPredicate:replicationCopy];

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

        guid = [*(*(&v18 + 1) + 8 * i) guid];
        [v4 addObject:guid];
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

- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion
{
  v131 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v118 = messagesCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "messages: %@", buf, 0xCu);
    }
  }

  if ([messagesCopy count] && -[IMDServiceSession _isActivated](self, "_isActivated"))
  {
    styleCopy = style;
    v114 = chatCopy;
    v14 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v114 style:&styleCopy];
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

    v84 = [(IMDServiceSession *)self chatForChatIdentifier:v80 style:styleCopy updatingAccount:1];
    v81 = [[IMDIncomingMessageTranslator alloc] initWithChat:v84];
    v76 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = messagesCopy;
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
          [(IMDIncomingMessageTranslator *)v81 beginProcessingMessage:v69, dCopy];
          if ([v85 isFromMe] && objc_msgSend(v84, "state") != 3)
          {
            v16 = +[IMDChatRegistry sharedInstance];
            v17 = [v16 allExistingChatsWithIdentifier:v80 style:styleCopy];

            array = [MEMORY[0x277CBEB18] array];
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
                    guid = [v23 guid];
                    v25 = guid;
                    if (guid)
                    {
                      v26 = guid;
                    }

                    else
                    {
                      v26 = @"<nil>";
                    }

                    v27 = v26;

                    [array addObject:v27];
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
                v30 = [array componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v118 = v30;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Fixed chat join states for chats with guids: %@", buf, 0xCu);
              }
            }
          }

          v31 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v84, "lastReadMessageTimeStamp")}];
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          time = [v85 time];
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v84, "lastReadMessageTimeStamp")}];
              lastSeenMessageGuid = [v84 lastSeenMessageGuid];
              v37 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(time, "__im_nanosecondTimeInterval")}];
              *buf = 138413570;
              v118 = v35;
              v119 = 2112;
              v120 = lastSeenMessageGuid;
              v121 = 2112;
              v122 = v31;
              v123 = 2112;
              v124 = time;
              v125 = 2112;
              v126 = v37;
              v127 = 2112;
              v128 = __im_dateWithCurrentServerTime;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Chat's last read message time date (%@) guid (%@) timestamp: (%@) Messages time date (%@) timestamp: (%@) Server timestamp: (%@)", buf, 0x3Eu);
            }
          }

          if ([v31 compare:time] == 1)
          {
            v38 = [__im_dateWithCurrentServerTime dateByAddingTimeInterval:60.0];
            if ([v31 compare:v38] == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  guid2 = [v85 guid];
                  *buf = 138412290;
                  v118 = guid2;
                  _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Last read message time is in the future. Not marking incoming message %@ as read", buf, 0xCu);
                }
              }
            }

            else
            {
              if ([v85 sentOrReceivedOffGrid])
              {
                v41 = [__im_dateWithCurrentServerTime dateByAddingTimeInterval:3600.0];
                if ([v31 compare:v41] == -1)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v62 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                    {
                      guid3 = [v85 guid];
                      *buf = v69;
                      v118 = v41;
                      v119 = 2112;
                      v120 = guid3;
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
                    guid4 = [v85 guid];
                    *buf = 138412290;
                    v118 = guid4;
                    _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Satellite message with GUID %@ will be marked as read because it's time is older than the chat's last read message time including the grace period.", buf, 0xCu);
                  }
                }
              }

              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  guid5 = [v85 guid];
                  *buf = 138412290;
                  v118 = guid5;
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
            guid6 = [v85 guid];
            v48 = [v46 messageWithGUID:guid6];

            service = [v48 service];
            service2 = [(IMDServiceSession *)self service];
            internalName = [service2 internalName];
            v52 = [service isEqualToString:internalName];

            if (v52)
            {
              replicatedFallbackGUIDs = [v85 replicatedFallbackGUIDs];
            }

            else
            {
              replicatedFallbackGUIDs = 0;
            }
          }

          else
          {
            replicatedFallbackGUIDs = 0;
          }

          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

          if (isIntroductionsEnabled)
          {
            if ([v84 isFiltered])
            {
              v56 = MEMORY[0x277D1AC58];
              sender = [v85 sender];
              LODWORD(v56) = [v56 isKnownContact:sender];

              if (v56)
              {
                [v84 updateIsFiltered:0 fromContact:1];
              }
            }

            if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] && (objc_msgSend(v85, "isRead") & 1) == 0 && (objc_msgSend(v85, "isTypingMessage") & 1) == 0 && objc_msgSend(v84, "isFiltered") && objc_msgSend(v84, "isFiltered") != 2)
            {
              guid7 = [v84 guid];

              if (guid7)
              {
                v59 = +[IMDChatRegistry sharedInstance];
                guid8 = [v84 guid];
                v116 = guid8;
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
          v103 = styleCopy;
          v98 = accountCopy;
          v99 = v76;
          v102 = v112;
          v100 = v77;
          v64 = replicatedFallbackGUIDs;
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
    v93 = completionCopy;
    v94 = v112;
    v86[4] = self;
    v87 = obj;
    v65 = v77;
    v88 = v65;
    v66 = v76;
    v89 = v66;
    v67 = v84;
    v90 = v67;
    v91 = accountCopy;
    v92 = dCopy;
    [(IMDIncomingMessageTranslator *)v81 processedAllMessagesWithCompletion:v86];

    _Block_object_dispose(v112, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)storeMessages:(id)messages messagesToWithdraw:(id)withdraw messagesToPost:(id)post chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account fromIDSID:(id)d
{
  messagesCopy = messages;
  withdrawCopy = withdraw;
  postCopy = post;
  identifierCopy = identifier;
  accountCopy = account;
  dCopy = d;
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B68D464;
    v21[3] = &unk_2787078A0;
    v22 = withdrawCopy;
    selfCopy = self;
    v24 = identifierCopy;
    styleCopy = style;
    v25 = postCopy;
    v26 = accountCopy;
    v27 = messagesCopy;
    v28 = dCopy;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }
}

- (BOOL)_canUpgradeExistingMessageItem:(id)item replacementReplicatedMessageItem:(id)messageItem
{
  v32 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  messageItemCopy = messageItem;
  if (![(IMDServiceSession *)self isReplicating])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        v26 = 138412290;
        v27 = guid;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of message %@, session is not replicating", &v26, 0xCu);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (itemCopy && messageItemCopy)
  {
    guid2 = [itemCopy guid];
    guid3 = [messageItemCopy guid];
    v11 = [guid2 isEqualToString:guid3];

    if (v11)
    {
      isFromMe = [itemCopy isFromMe];
      if (isFromMe == [messageItemCopy isFromMe])
      {
        if ([itemCopy isFromMe] & 1) != 0 || (objc_msgSend(itemCopy, "sender"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(messageItemCopy, "sender"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToString:", v21), v21, v20, (v22))
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
          guid4 = [itemCopy guid];
          sender = [itemCopy sender];
          sender2 = [messageItemCopy sender];
          v26 = 138412802;
          v27 = guid4;
          v28 = 2112;
          v29 = sender;
          v30 = 2112;
          v31 = sender2;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of %@, different senders (%@ and %@)", &v26, 0x20u);
        }

        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid5 = [itemCopy guid];
          v26 = 138412290;
          v27 = guid5;
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
        guid6 = [itemCopy guid];
        guid7 = [messageItemCopy guid];
        v26 = 138412546;
        v27 = guid6;
        v28 = 2112;
        v29 = guid7;
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

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1 account:(id)self2 category:(int64_t)self3 spamExtensionName:(id)self4 isBlackholed:(BOOL)self5 spamDetectionSource:(int64_t)self6
{
  styleCopy = style;
  extensionNameCopy = extensionName;
  accountCopy = account;
  infoCopy = info;
  mIDCopy = mID;
  handleCopy = handle;
  iDCopy = iD;
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  v32 = objc_alloc_init(IMDChatStatusChangeContext);
  [(IMDChatStatusChangeContext *)v32 setDisplayName:nameCopy];

  [(IMDChatStatusChangeContext *)v32 setGroupID:dCopy];
  [(IMDChatStatusChangeContext *)v32 setOriginalGroupID:iDCopy];

  [(IMDChatStatusChangeContext *)v32 setLastAddressedHandle:handleCopy];
  [(IMDChatStatusChangeContext *)v32 setLastAddressedSIMID:mIDCopy];

  [(IMDChatStatusChangeContext *)v32 setHandleInfo:infoCopy];
  [(IMDChatStatusChangeContext *)v32 setAccount:accountCopy];

  [(IMDChatStatusChangeContext *)v32 setCategory:category];
  [(IMDChatStatusChangeContext *)v32 setExtensionName:extensionNameCopy];

  [(IMDChatStatusChangeContext *)v32 setIsBlackholed:blackholed];
  [(IMDChatStatusChangeContext *)v32 setSpamDetectionSource:source];
  [(IMDServiceSession *)self didUpdateChatStatus:status chat:chatCopy style:styleCopy context:v32];
}

- (void)didUpdateChatStatusWithContext:(id)context
{
  v121 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  chatIdentifier = [contextCopy chatIdentifier];
  chatStyle = [contextCopy chatStyle];
  if ([chatIdentifier length])
  {
    if (!self->_activated)
    {
      goto LABEL_89;
    }

    account = [contextCopy account];
    if (account)
    {
      [contextCopy setAccount:account];
    }

    else
    {
      account2 = [(IMDServiceSession *)self account];
      [contextCopy setAccount:account2];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        chatStatus = [contextCopy chatStatus];
        lastAddressedHandle = [contextCopy lastAddressedHandle];
        lastAddressedSIMID = [contextCopy lastAddressedSIMID];
        *buf = 138413314;
        v112 = chatIdentifier;
        v113 = 1024;
        v114 = chatStatus;
        v115 = 1024;
        v116 = chatStyle;
        v117 = 2112;
        v118 = lastAddressedHandle;
        v119 = 2112;
        v120 = lastAddressedSIMID;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat: %@  status update: %d  style: %c lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x2Cu);
      }
    }

    v107 = chatIdentifier;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v107 style:&chatStyle];
    v93 = v107;

    v86 = 0;
    v11 = [contextCopy chatStatus] + 1;
    if (v11 > 8)
    {
      v85 = 0;
      goto LABEL_55;
    }

    if (((1 << v11) & 0x73) != 0)
    {
      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:chatStyle updatingAccount:1];
      state = [v88 state];
      v85 = (state & 0xFFFFFFFFFFFFFFFELL) == 2;
      if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
        groupID = [v88 groupID];
        [mEMORY[0x277D1AB78] informOfKickFromGroup:groupID];
      }

      [v88 setState:0];
      guid = [v88 guid];
      [(IMDServiceSession *)self _removeChatGuidFromCoreDuet:guid];

      v86 = v85;
LABEL_54:
      if (v88)
      {
LABEL_56:
        v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (chatStyle == 45)
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
          obj = [contextCopy handleInfo];
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
        account3 = [contextCopy account];
        accountID = [account3 accountID];
        v56 = chatStyle;
        chatProperties = [v88 chatProperties];
        groupID2 = [v88 groupID];
        personCentricID = [v88 personCentricID];
        LODWORD(v83) = [contextCopy chatStatus];
        [v53 account:accountID chat:v93 style:v56 chatProperties:chatProperties groupID:groupID2 chatPersonCentricID:personCentricID statusChanged:v83 handleInfo:v91];

        if (chatStyle != 45 && v86)
        {
          messageID = [contextCopy messageID];
          v62 = messageID;
          if (messageID)
          {
            stringGUID = messageID;
          }

          else
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          }

          v64 = stringGUID;

          v65 = +[IMDMessageStore sharedInstance];
          v66 = [v65 itemWithGUID:v64];

          if (v66)
          {
            stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];

            v64 = stringGUID2;
          }

          v68 = [objc_alloc(MEMORY[0x277D1A9E0]) initWithSender:0 time:0 guid:v64 type:3];
          v69 = chatStyle;
          account4 = [contextCopy account];
          [(IMDServiceSession *)self _configureSessionInformationOnItem:v68 toChat:v93 withStyle:v69 forAccount:account4];

          [v68 setSender:0];
          [v68 setActionType:0];
          account5 = [v88 account];
          loginID = [account5 loginID];
          _stripFZIDPrefix = [loginID _stripFZIDPrefix];

          [v68 setDestinationCallerID:_stripFZIDPrefix];
          account6 = [contextCopy account];
          [(IMDServiceSession *)self _storeTranscriptItem:v68 inChat:v88 account:account6];
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
        v76 = [serviceSessionDelegates countByEnumeratingWithState:&v99 objects:v109 count:16];
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
                objc_enumerationMutation(serviceSessionDelegates);
              }

              v80 = *(*(&v99 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = sub_22B691EA0;
                block[3] = &unk_2787073E8;
                block[4] = v80;
                v96 = contextCopy;
                v97 = v93;
                v98 = chatStyle;
                dispatch_async(v78, block);
              }
            }

            v76 = [serviceSessionDelegates countByEnumeratingWithState:&v99 objects:v109 count:16];
          }

          while (v76);
        }

        if (v85)
        {
          [v88 setCloudKitSyncState:0];
          v81 = +[IMDChatStore sharedInstance];
          [v81 storeChat:v88];
        }

        chatIdentifier = v93;
        goto LABEL_89;
      }

LABEL_55:
      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:chatStyle];
      goto LABEL_56;
    }

    if (((1 << v11) & 0x108) == 0)
    {
      v85 = 0;
      if (v11 != 2)
      {
        goto LABEL_55;
      }

      v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:chatStyle];
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

    v16 = chatStyle;
    displayName = [contextCopy displayName];
    groupID3 = [contextCopy groupID];
    originalGroupID = [contextCopy originalGroupID];
    lastAddressedHandle2 = [contextCopy lastAddressedHandle];
    lastAddressedSIMID2 = [contextCopy lastAddressedSIMID];
    handleInfo = [contextCopy handleInfo];
    account7 = [contextCopy account];
    LOBYTE(v84) = [contextCopy isBlackholed];
    [(IMDServiceSession *)self registerChat:v93 style:v16 displayName:displayName groupID:groupID3 originalGroupID:originalGroupID lastAddressedHandle:lastAddressedHandle2 lastAddressedSIMID:lastAddressedSIMID2 handleInfo:handleInfo account:account7 isBlackholed:v84];

    v24 = chatStyle;
    account8 = [contextCopy account];
    v88 = [(IMDServiceSession *)self chatForChatIdentifier:v93 style:v24 account:account8 updatingAccount:1];

    isFiltered = [v88 isFiltered];
    if (isFiltered == [contextCopy category] || objc_msgSend(contextCopy, "category") != 2)
    {
      v85 = 0;
    }

    else
    {
      [v88 setSpamDetectionSource:{objc_msgSend(contextCopy, "spamDetectionSource")}];
      [v88 updateIsFiltered:{objc_msgSend(contextCopy, "category")}];
      v85 = 1;
    }

    v27 = [contextCopy chatStatus] == 2;
    state2 = [v88 state];
    if (v27)
    {
      if (state2 != 3)
      {
        [v88 setState:3];
        v85 = 1;
      }

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

      if (!isIntroductionsEnabled || ![contextCopy isMessageSentFromMe])
      {
        goto LABEL_37;
      }

      isFiltered2 = [v88 isFiltered];
      v32 = contextCopy;
      if (!isFiltered2)
      {
        goto LABEL_38;
      }

      [v88 updateIsFiltered:0];
    }

    else
    {
      v32 = contextCopy;
      if (state2 == 4)
      {
        goto LABEL_38;
      }

      [v88 setState:4];
    }

    v85 = 1;
LABEL_37:
    v32 = contextCopy;
LABEL_38:
    if ([v32 category] == 2 || objc_msgSend(contextCopy, "category") == 3 || objc_msgSend(contextCopy, "category") == 4)
    {
      spamExtensionName = [v88 spamExtensionName];
      extensionName = [contextCopy extensionName];
      v35 = [spamExtensionName isEqualToString:extensionName];

      if ((v35 & 1) == 0)
      {
        extensionName2 = [contextCopy extensionName];
        [v88 updateSMSSpamExtensionNameChatProperty:extensionName2];

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
          chatIdentifier2 = [v88 chatIdentifier];
          *buf = 138412290;
          v112 = chatIdentifier2;
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

- (void)willRemoveChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being removed.", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [serviceSessionDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(serviceSessionDelegates);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willRemoveChat:chatCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [serviceSessionDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)willMoveChatToRecentlyDeleted:(id)deleted
{
  v19 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = deletedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being moved to recently deleted.", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [serviceSessionDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(serviceSessionDelegates);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willMoveChatToRecentlyDeleted:deletedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [serviceSessionDelegates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  messageIDCopy = messageID;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = displayNameCopy;
      v42 = 2112;
      v43 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Asked to update display name from %@ to %@", buf, 0x16u);
    }
  }

  v16 = IMGetCachedDomainBoolForKey();
  v17 = +[IMDChatRegistry sharedInstance];
  v18 = [v17 existingChatWithGUID:iDCopy];

  displayName = [v18 displayName];
  if ((v16 & 1) == 0)
  {
    [v18 updateDisplayName:nameCopy];
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
  v21 = [v20 hasStoredMessageWithGUID:messageIDCopy];

  if (v21)
  {
    goto LABEL_33;
  }

  if (displayName)
  {
    v22 = [displayName length] == 0;
    if (nameCopy)
    {
LABEL_11:
      v23 = [nameCopy length] != 0;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
    if (nameCopy)
    {
      goto LABEL_11;
    }
  }

  v23 = 1;
LABEL_18:
  v25 = IMAreObjectsLogicallySame();
  v26 = IMOSLoggingEnabled();
  if ((((v25 | (nameCopy == 0 && v22)) ^ 1) & (displayName != 0 || v23) & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_33;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = nameCopy;
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
      v41 = nameCopy;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Creating stamp item for new name: %@ on chat: %@", buf, 0x16u);
    }
  }

  v28 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:0 time:0 guid:messageIDCopy type:2];
  [v28 setTitle:nameCopy];
  account = [(IMDServiceSession *)self account];
  service = [account service];
  internalName = [service internalName];
  [v28 setService:internalName];

  [v28 setDestinationCallerID:dCopy];
  if (v16)
  {
    [v28 setErrorCode:4];
  }

  account2 = [v18 account];
  if (account2)
  {
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:account2];
  }

  else
  {
    account3 = [(IMDServiceSession *)self account];
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:account3];
  }

LABEL_33:
  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)chat
{
  chatCopy = chat;
  if ([chatCopy style] == 45 || (objc_msgSend(chatCopy, "isBusinessChat") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [chatCopy isStewieChat] ^ 1;
  }

  return v4;
}

- (id)_chatForMemberStatusChange:(id)change
{
  changeCopy = change;
  chatIdentifier = [changeCopy chatIdentifier];
  style = [changeCopy style];
  v13 = chatIdentifier;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v13 style:&style];
  v6 = v13;

  chatIdentifier2 = [changeCopy chatIdentifier];
  style2 = [changeCopy style];

  v9 = [(IMDServiceSession *)self _guidForChat:chatIdentifier2 style:style2];

  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v9];

  return v11;
}

- (id)didChangeMemberStatus:(id)status
{
  v131 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  selfCopy = self;
  if (!self->_activated)
  {
    guid3 = 0;
    goto LABEL_45;
  }

  account = [statusCopy account];
  v7 = account;
  if (account)
  {
    account2 = account;
  }

  else
  {
    account2 = [(IMDServiceSession *)selfCopy account];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      chatIdentifier = [v5 chatIdentifier];
      handleID = [v5 handleID];
      fromHandleID = [v5 fromHandleID];
      unformattedNumber = [v5 unformattedNumber];
      countryCode = [v5 countryCode];
      *buf = 138413826;
      v118 = chatIdentifier;
      v119 = 2112;
      v120 = handleID;
      v121 = 2112;
      v122 = fromHandleID;
      v123 = 2112;
      v124 = unformattedNumber;
      v125 = 2112;
      v126 = countryCode;
      v127 = 1024;
      status = [v5 status];
      v129 = 1024;
      style = [v5 style];
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat: %@  member: %@ from member: %@ unformated: %@ country: %@ status update: %d  style: %c", buf, 0x40u);
    }
  }

  v15 = [(IMDServiceSession *)selfCopy _chatForMemberStatusChange:v5];
  v16 = [IMDHandle alloc];
  handleID2 = [v5 handleID];
  unformattedNumber2 = [v5 unformattedNumber];
  countryCode2 = [v5 countryCode];
  v20 = [(IMDHandle *)v16 initWithID:handleID2 unformattedID:unformattedNumber2 countryCode:countryCode2];

  participantHandles = [v15 participantHandles];
  handleID3 = [v5 handleID];
  v101 = [participantHandles containsObject:handleID3];

  participants = [v15 participants];
  v100 = [participants __imArrayByApplyingBlock:&unk_283F1AC28];

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
    chatIdentifier2 = [v15 chatIdentifier];
    v36 = [v34 allExistingChatsWithIdentifier:chatIdentifier2 style:{objc_msgSend(v15, "style")}];

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
          style2 = [v41 style];
          if (style2 == [v15 style])
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
  chatIdentifier3 = [v15 chatIdentifier];
  v26 = [v24 allExistingChatsWithIdentifier:chatIdentifier3 style:{objc_msgSend(v15, "style")}];

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
      style3 = [v32 style];
      if (style3 == [v15 style])
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
  broadcasterForChatListeners = [(IMDServiceSession *)selfCopy broadcasterForChatListeners];
  accountID = [account2 accountID];
  chatIdentifier4 = [v15 chatIdentifier];
  style4 = [v15 style];
  chatProperties = [v15 chatProperties];
  personCentricID = [v15 personCentricID];
  handleInfo = [(IMDHandle *)v20 handleInfo];
  LODWORD(v99) = [v5 status];
  [broadcasterForChatListeners account:accountID chat:chatIdentifier4 style:style4 chatProperties:chatProperties chatPersonCentricID:personCentricID member:handleInfo statusChanged:v99];

  if ([v15 style] != 43)
  {
    goto LABEL_40;
  }

  participants2 = [v15 participants];
  v51 = [participants2 __imArrayByApplyingBlock:&unk_283F1AC48];

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
      fromHandleID2 = [v5 fromHandleID];
      handleID4 = [v5 handleID];
      v56 = [fromHandleID2 isEqualToIgnoringCase:handleID4];
    }

    messageID = [v5 messageID];
    v60 = messageID;
    if (messageID)
    {
      stringGUID = messageID;
    }

    else
    {
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    }

    v62 = stringGUID;

    v63 = +[IMDMessageStore sharedInstance];
    v102 = [v63 itemWithGUID:v62];

    if (v102)
    {
      stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];

      v62 = stringGUID2;
    }

    if (v56)
    {
      v65 = objc_alloc(MEMORY[0x277D1A9E0]);
      fromHandleID3 = [v5 fromHandleID];
      v67 = [v65 initWithSender:fromHandleID3 time:0 guid:v62 type:3];

      chatIdentifier5 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](selfCopy, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v67, chatIdentifier5, [v15 style], account2);

      unformattedNumber3 = [v5 unformattedNumber];
      [v67 setOtherUnformattedID:unformattedNumber3];

      countryCode3 = [v5 countryCode];
      [v67 setOtherCountryCode:countryCode3];

      [v67 setActionType:0];
      if (IMOSLoggingEnabled())
      {
        v71 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          otherHandle = [v67 otherHandle];
          *buf = 138412290;
          v118 = otherHandle;
          _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "Storing participant leave: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v73 = objc_alloc(MEMORY[0x277D1AB28]);
      fromHandleID4 = [v5 fromHandleID];
      messageTime = [v5 messageTime];
      v76 = [v73 initWithSender:fromHandleID4 time:messageTime guid:v62 type:1];

      chatIdentifier6 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](selfCopy, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v76, chatIdentifier6, [v15 style], account2);

      handleID5 = [v5 handleID];
      [v76 setOtherHandle:handleID5];

      unformattedNumber4 = [v5 unformattedNumber];
      [v76 setOtherUnformattedID:unformattedNumber4];

      countryCode4 = [v5 countryCode];
      [v76 setOtherCountryCode:countryCode4];

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

          sender = [v76 sender];
          otherHandle2 = [v76 otherHandle];
          *buf = 138412802;
          v118 = v82;
          v119 = 2112;
          v120 = sender;
          v121 = 2112;
          v122 = otherHandle2;
          _os_log_impl(&dword_22B4CC000, v81, OS_LOG_TYPE_INFO, "Storing %@ participant change item  %@ => %@", buf, 0x20u);
        }
      }

      v67 = v76;
      if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] && objc_msgSend(v15, "isBlackholed") && objc_msgSend(v5, "status") == 2)
      {
        v85 = MEMORY[0x277D1AC58];
        handleID6 = [v5 handleID];
        LODWORD(v85) = [v85 isKnownContact:handleID6];

        v87 = IMOSLoggingEnabled();
        if (v85)
        {
          if (v87)
          {
            v88 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              handleID7 = [v5 handleID];
              guid = [v15 guid];
              *buf = 138412546;
              v118 = handleID7;
              v119 = 2112;
              v120 = guid;
              _os_log_impl(&dword_22B4CC000, v88, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is a known contact.", buf, 0x16u);
            }
          }

          [v15 updateIsBlackholed:0];
          participants3 = [v15 participants];
          v92 = [participants3 count] == 1;

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          v94 = mEMORY[0x277D1AAA8];
          if (v92)
          {
            [mEMORY[0x277D1AAA8] trackSpamEvent:24];
          }

          else
          {
            [mEMORY[0x277D1AAA8] trackSpamEvent:25];
          }
        }

        else if (v87)
        {
          v95 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            guid2 = [v15 guid];
            handleID8 = [v5 handleID];
            *buf = 138412546;
            v118 = guid2;
            v119 = 2112;
            v120 = handleID8;
            _os_log_impl(&dword_22B4CC000, v95, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is not a known contact.", buf, 0x16u);
          }
        }
      }
    }

    destinationCallerID = [v5 destinationCallerID];
    [v67 setDestinationCallerID:destinationCallerID];

    [(IMDServiceSession *)selfCopy _storeTranscriptItem:v67 inChat:v15 account:account2];
    guid3 = [v67 guid];

    goto LABEL_44;
  }

LABEL_43:
  guid3 = 0;
LABEL_44:

LABEL_45:
  v54 = *MEMORY[0x277D85DE8];

  return guid3;
}

- (void)_storeTranscriptItem:(id)item inChat:(id)chat account:(id)account
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  accountCopy = account;
  service = [(IMDServiceSession *)self service];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = sub_22B694464;
  v33 = &unk_278707968;
  v34 = chatCopy;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v25 = sub_22B6944F8;
  v26 = &unk_278707990;
  v27 = itemCopy;
  selfCopy = self;
  v12 = v34;
  v29 = v12;
  v13 = accountCopy;
  v30 = v13;
  v14 = service;
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

- (void)_removeChatGuidFromCoreDuet:(id)duet
{
  v14 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = duetCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Going to remove chat guid from core duet %@", buf, 0xCu);
    }
  }

  if ([duetCopy length])
  {
    spotlightItemRecorder = [(objc_class *)[(IMDServiceSession *)self spotlightItemRecorderClass] spotlightItemRecorder];
    v11 = duetCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B694A10;
    v9[3] = &unk_278704138;
    v10 = duetCopy;
    [spotlightItemRecorder deleteSearchableItemsWithDomainIdentifiers:v7 bundleID:@"com.apple.MobileSMS" withCompletion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_markChatAsDowngraded:(id)downgraded
{
  downgradedCopy = downgraded;
  v5 = downgradedCopy;
  if (downgradedCopy)
  {
    properties = [downgradedCopy properties];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = MEMORY[0x277CCABB0];
    [date timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [v7 setObject:v10 forKey:*MEMORY[0x277D19308]];
    v11 = *MEMORY[0x277D19300];
    v12 = [properties objectForKey:*MEMORY[0x277D19300]];
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
    chatIdentifier = [v5 chatIdentifier];
    v18 = [v16 updateProperties:v7 chat:chatIdentifier style:{objc_msgSend(v5, "style")}];

    if (v18)
    {
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      guid = [v5 guid];
      properties2 = [v5 properties];
      [broadcasterForChatListeners chat:guid propertiesUpdated:properties2];
    }

LABEL_12:
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    properties = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(properties, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, properties, OS_LOG_TYPE_INFO, "No chat to update downgrade properties for.", v22, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_handleRoutingWithDictionary:(id)dictionary
{
  v10 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling routing dictionary: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B694EA8;
  v7[3] = &unk_278706958;
  v7[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_downgradableServiceNames
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceNamesSupportingCapability:*MEMORY[0x277D1A5D0]];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)_updateRoutingForMessageGUID:(id)d chatGUID:(id)iD error:(unsigned int)error account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  if (self->_activated)
  {
    canMakeDowngradeRoutingChecks = [account canMakeDowngradeRoutingChecks];
    if (error == 22 || canMakeDowngradeRoutingChecks)
    {
      v13 = dCopy;
      v14 = iDCopy;
      im_dispatch_after();
    }
  }
}

- (void)_updateRoutingTimerWithInterval:(double)interval
{
  v13 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        intervalCopy = interval;
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

    v8 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-routing-timer" name:1 shouldWake:self target:sel__routingTimerFired selector:0 userInfo:interval];
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
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    _downgradableServiceNames = [(IMDServiceSession *)self _downgradableServiceNames];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B696310;
    v6[3] = &unk_2787079E0;
    v6[4] = self;
    [mEMORY[0x277D18E40] requestRoutingWithDowngradableServices:_downgradableServiceNames completion:v6];
  }
}

- (void)_handleExpireStateDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling expire state dictionary: %@", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_22B69662C;
  v17 = &unk_278707A58;
  selfCopy = self;
  v7 = v6;
  v19 = v7;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&v14];
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

    _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
    v10 = [_sharedMessageStore deleteMessageGUIDs:v7];

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
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      [broadcasterForChatListeners historicalMessageGUIDsDeleted:v10 chatGUIDs:0 queryID:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateExpireStateForMessageGUID:(id)d
{
  dCopy = d;
  if (self->_activated && [(IMDServiceSession *)self canMakeExpireStateChecks])
  {
    v5 = dCopy;
    im_dispatch_after();
  }
}

- (void)_updateExpireStateTimerWithInterval:(double)interval
{
  v27 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageExpireStateTimer = self->_messageExpireStateTimer;
    if (messageExpireStateTimer && (v7 = v5, -[IMTimer fireDate](messageExpireStateTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + interval, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          fireDate = [(IMTimer *)self->_messageExpireStateTimer fireDate];
          [fireDate timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v23 = 134218240;
          intervalCopy2 = interval;
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
          intervalCopy2 = interval;
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

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-expire-state-timer" name:1 shouldWake:self target:sel__expireStateTimerFired selector:0 userInfo:interval];
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
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697118;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [mEMORY[0x277D18E40] requestExpireStateWithCompletion:v5];
  }
}

- (void)_handleWatchdogWithDictionary:(id)dictionary
{
  v10 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling watchdog dictionary: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6972BC;
  v7[3] = &unk_278707A80;
  v7[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateWatchdogForMessageGUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_activated)
  {
    v6 = dCopy;
    im_dispatch_after();
  }
}

- (void)_updateWatchdogTimerWithInterval:(double)interval
{
  v27 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageWatchdogTimer = self->_messageWatchdogTimer;
    if (messageWatchdogTimer && (v7 = v5, -[IMTimer fireDate](messageWatchdogTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + interval, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          fireDate = [(IMTimer *)self->_messageWatchdogTimer fireDate];
          [fireDate timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v23 = 134218240;
          intervalCopy2 = interval;
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
          intervalCopy2 = interval;
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

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-watchdog-timer" name:1 shouldWake:self target:sel__watchdogTimerFired selector:0 userInfo:interval];
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
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697864;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [mEMORY[0x277D18E40] requestWatchdogWithCompletion:v5];
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

- (void)autoReplier:(id)replier generatedAutoReplyText:(id)text forChat:(id)chat
{
  textCopy = text;
  chatCopy = chat;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6979FC;
  block[3] = &unk_2787038F8;
  v12 = textCopy;
  selfCopy = self;
  v14 = chatCopy;
  v9 = chatCopy;
  v10 = textCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)replier receivedUrgentRequestForMessages:(id)messages
{
  messagesCopy = messages;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B697B5C;
  v7[3] = &unk_278702FA0;
  v8 = messagesCopy;
  selfCopy = self;
  v6 = messagesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)autoReplier:(id)replier sendDeliveredQuietlyReceiptForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat withWillSendToDestinationsHandler:(id)handler
{
  messagesCopy = messages;
  dCopy = d;
  chatCopy = chat;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B697DAC;
  block[3] = &unk_278702F78;
  v20 = chatCopy;
  v21 = messagesCopy;
  selfCopy = self;
  v23 = dCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = messagesCopy;
  v18 = chatCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)replier sendNotifyRecipientCommandForMessages:(id)messages inChat:(id)chat
{
  messagesCopy = messages;
  chatCopy = chat;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B698070;
  block[3] = &unk_2787038F8;
  v12 = chatCopy;
  v13 = messagesCopy;
  selfCopy = self;
  v9 = messagesCopy;
  v10 = chatCopy;
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

- (void)_checkMessageForENURL:(id)l
{
  lCopy = l;
  v5 = +[IMDExposureNotificationManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B698384;
  v7[3] = &unk_278707AA8;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  [v5 processMessageItemForENURL:v6 withCompletionHandler:v7];
}

- (void)didSendBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account completionBlock:(id)block
{
  payloadCopy = payload;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  blockCopy = block;
  if (payloadCopy)
  {
    if (d)
    {
      dCopy = d;
      _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
      v20 = [_sharedMessageStore messageWithGUID:dCopy];

      if (v20)
      {
        v33 = chatCopy;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v33 style:&styleCopy];
        v21 = v33;

        v22 = [(IMDServiceSession *)self chatForChatIdentifier:v21 style:styleCopy updatingAccount:1];
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
        v27 = payloadCopy;
        selfCopy = self;
        v29 = accountCopy;
        chatCopy = v21;
        v30 = chatCopy;
        v32 = styleCopy;
        v31 = blockCopy;
        v24 = v22;
        [(IMDServiceSession *)self storeMessage:v27 context:v23 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v25];
      }
    }
  }
}

- (void)didReceiveBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account
{
  payloadCopy = payload;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  if (payloadCopy)
  {
    if (d)
    {
      dCopy = d;
      _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
      v17 = [_sharedMessageStore messageWithGUID:dCopy];

      if (v17)
      {
        v29 = chatCopy;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v29 style:&styleCopy];
        v18 = v29;

        v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:styleCopy updatingAccount:1];
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
        v24 = payloadCopy;
        selfCopy = self;
        v26 = accountCopy;
        chatCopy = v18;
        v27 = chatCopy;
        v28 = styleCopy;
        v21 = v19;
        [(IMDServiceSession *)self storeMessage:v24 context:v20 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v22];
      }
    }
  }
}

- (void)noteItemFromStorage:(id)storage
{
  storageCopy = storage;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteItemFromStorage:storageCopy];
}

- (void)noteSuppressedMessageUpdate:(id)update
{
  updateCopy = update;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteSuppressedMessageUpdate:updateCopy];
}

- (void)noteLastItemFromStorage:(id)storage
{
  storageCopy = storage;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteLastItemFromStorage:storageCopy];
}

- (void)noteLastItemProcessed
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteLastItemProcessed];
}

- (BOOL)isAwaitingStorageTimer
{
  storageController = [(IMDServiceSession *)self storageController];
  isAwaitingStorageTimer = [storageController isAwaitingStorageTimer];

  return isAwaitingStorageTimer;
}

- (void)incrementPendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController incrementPendingReadReceiptFromStorageCount];
}

- (void)decrementPendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController decrementPendingReadReceiptFromStorageCount];
}

- (unint64_t)pendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  pendingReadReceiptFromStorageCount = [storageController pendingReadReceiptFromStorageCount];

  return pendingReadReceiptFromStorageCount;
}

- (void)setPendingReadReceiptFromStorageCount:(unint64_t)count
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController setPendingReadReceiptFromStorageCount:count];
}

- (BOOL)_isMessageSWYSpamMessage:(id)message inChat:(id)chat
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  service = [messageCopy service];
  v9 = [service isEqualToString:*MEMORY[0x277D1A610]];

  if (v9 && [messageCopy containsRichLink] && (objc_msgSend(messageCopy, "body"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "string"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "im_matchesSOSMapURL"), v11, v10, (v12 & 1) == 0))
  {
    v16 = [(IMDServiceSession *)self _predominantServiceForChat:chatCopy usingMessageThreshold:50];
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        v19 = messageCopy;
        v20 = 2112;
        v21 = chatCopy;
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

- (BOOL)_shouldShowSWYQuickActionForMessage:(id)message outAppName:(id *)name outBundleID:(id *)d
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v32 = messageCopy;
  if ([messageCopy containsRichLink])
  {
    dCopy = d;
    nameCopy = name;
    [messageCopy richLinkURLs];
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
          mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
          v16 = [mEMORY[0x277D1AC40] lsAppRecordForURL:v14 checkInstalledAppsOnly:1];

          if (!v16 || ([v16 localizedName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length") == 0, v17, v18))
          {
            localizedName = [v16 localizedName];
            v24 = [localizedName length] == 0;

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
            mEMORY[0x277D1AC40]2 = [MEMORY[0x277D1AC40] sharedManager];
            bundleIdentifier = [v16 bundleIdentifier];
            v10 = [mEMORY[0x277D1AC40]2 showPinningStatusTextForBundleID:bundleIdentifier];

            localizedName2 = [v16 localizedName];

            bundleIdentifier2 = [v16 bundleIdentifier];

            v8 = bundleIdentifier2;
            v9 = localizedName2;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }

    if (nameCopy && v9)
    {
      v26 = v9;
      *nameCopy = v9;
    }

    if (dCopy && v8)
    {
      v27 = v8;
      *dCopy = v8;
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

- (id)_predominantServiceForChat:(id)chat usingMessageThreshold:(unint64_t)threshold
{
  v22 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v7 = IMOSLoggingEnabled();
  if (chatCopy && threshold)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v20 = 138412290;
        v21 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Identifying the predominant service for chat: %@", &v20, 0xCu);
      }
    }

    v10 = MEMORY[0x277D1A610];
    v11 = [(IMDServiceSession *)self _fetchMessagesFromChat:chatCopy onService:*MEMORY[0x277D1A610] numberOfMessages:50];
    v12 = MEMORY[0x277D1A620];
    v13 = [(IMDServiceSession *)self _fetchMessagesFromChat:chatCopy onService:*MEMORY[0x277D1A620] numberOfMessages:50];
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

- (id)_fetchMessagesFromChat:(id)chat onService:(id)service numberOfMessages:(unint64_t)messages
{
  v48 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  serviceCopy = service;
  v9 = serviceCopy;
  v35 = chatCopy;
  if (chatCopy && messages && [serviceCopy length])
  {
    v34 = v9;
    if ([chatCopy style] == 45)
    {
      participants = [chatCopy participants];
      if ([participants count] == 1)
      {
        participants2 = [chatCopy participants];
        firstObject = [participants2 firstObject];

        if (firstObject)
        {
          v13 = +[IMDChatStore sharedInstance];
          groupID = [firstObject ID];
          v15 = [v13 chatsWithHandle:groupID onService:v34];
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
                guid = [v23 guid];
                v26 = [v24 initWithAssociatedChatGUID:guid];

                [v26 setBatchSize:messages];
                nextBatch = [v26 nextBatch];
                if (!nextBatch && IMOSLoggingEnabled())
                {
                  v28 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    guid2 = [v23 guid];
                    *buf = 134218242;
                    messagesCopy = messages;
                    v44 = 2112;
                    v45 = guid2;
                    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to fetch %lu number of messages from chat %@", buf, 0x16u);
                  }
                }

                if (!v17)
                {
                  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nextBatch, "count")}];
                }

                [v17 addObjectsFromArray:{nextBatch, v34}];
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
          messagesCopy = v35;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Incorrect chat %@, has more than the number of participants we expected!", buf, 0xCu);
        }
      }
    }

    else
    {
      if ([chatCopy style] != 43)
      {
        v19 = 0;
        goto LABEL_18;
      }

      participants3 = [chatCopy participants];
      firstObject = [participants3 __imArrayByApplyingBlock:&unk_283F1AC88];

      if ([firstObject count] > 1)
      {
        v13 = +[IMDChatStore sharedInstance];
        groupID = [chatCopy groupID];
        v15 = [v13 chatsWithHandles:firstObject onService:v34 displayName:0 groupID:groupID style:43];
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messagesCopy = chatCopy;
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
      messagesCopy = chatCopy;
      v44 = 2112;
      v45 = v9;
      v46 = 2048;
      messagesCopy2 = messages;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Invalid parameter. chatGUID: %@ service: %@ number of messages:%lu", buf, 0x20u);
    }
  }

  v17 = 0;
LABEL_45:

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_configureSyndicationRangesForMessage:(id)message forChat:(id)chat withSyndicationStatus:(int64_t)status
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  autoDonationBehavior = [chatCopy autoDonationBehavior];
  v7 = IMOSLoggingEnabled();
  if (autoDonationBehavior == 2)
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
        guid = [messageCopy guid];
        guid2 = [chatCopy guid];
        *buf = 138412546;
        v39 = guid;
        v40 = 2112;
        v41 = guid2;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Configuring syndication ranges for incoming message:%@ in chat:%@", buf, 0x16u);
      }
    }

    v12 = objc_alloc(MEMORY[0x277D1AA58]);
    body = [messageCopy body];
    guid3 = [messageCopy guid];
    v28 = [v12 initWithMessageBody:body messageGUID:guid3];

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
          messagePartRange = [v19 messagePartRange];
          v23 = v22;
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          v25 = [v20 initWithSyndicationType:0 messagePartRange:messagePartRange syndicationStartDate:v23 syndicationStatus:__im_dateWithCurrentServerTime assetDescriptor:{status, 0}];

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
    [messageCopy setSyndicationRanges:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  dCopy = d;
  messageCopy = message;
  if ([payloadCopy length])
  {
    v14 = +[IMDMessageStore sharedInstance];
    v15 = [v14 chatForMessage:messageCopy];

    if (v15)
    {
      if (dCopy)
      {
        [messageCopy setBalloonBundleID:dCopy];
      }

      [messageCopy setPayloadData:payloadCopy];
      if ([attachmentsCopy count])
      {
        v16 = +[IMDFileTransferCenter sharedInstance];
        guid = [messageCopy guid];
        v18 = [v16 guidsForStoredAttachmentPayloadData:attachmentsCopy messageGUID:guid];
        [messageCopy setFileTransferGUIDs:v18];
      }

      chatIdentifier = [v15 chatIdentifier];
      style = [v15 style];
      guid2 = [messageCopy guid];
      accountID = [v15 accountID];
      [(IMDServiceSession *)self didReceiveBalloonPayload:messageCopy forChat:chatIdentifier style:style messageGUID:guid2 account:accountID];
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = messageCopy;
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
      guid3 = [messageCopy guid];
      v26 = 138412290;
      v27 = guid3;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Chat: Could not update balloon payload for missing payload: %@", &v26, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)hash chatIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  identifierCopy = identifier;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingiMessageChatForID:identifierCopy];

  v9 = +[IMDMessageStore sharedInstance];
  v10 = [v9 sortedMessageItemsWithFallbackHash:hashCopy inChat:v8 limit:1];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    guid = [firstObject guid];
    expectedServiceForCrossServiceReplacement = [firstObject expectedServiceForCrossServiceReplacement];
    v14 = [expectedServiceForCrossServiceReplacement isEqualToString:*MEMORY[0x277D1A628]];

    if (v14)
    {
      v15 = +[IMDMessageStore sharedInstance];
      v25 = guid;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v17 = [v15 deleteMessageGUIDs:v16 inChat:v8];

      if ([v17 count])
      {
        v18 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v18 broadcasterForChatListeners];
        [broadcasterForChatListeners historicalMessageGUIDsDeleted:v17 chatGUIDs:0 queryID:0];

        v20 = +[IMDChatRegistry sharedInstance];
        [v20 updateNotificationUnreadCountForChat:v8];
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = guid;
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
        v27 = guid;
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
      v27 = hashCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Failed to find message with fallback hash %@ to delete", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldConvergeChatParticipants:(id)participants withHandleInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  infoCopy = info;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
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

  if (![infoCopy count])
  {
LABEL_16:
    LOBYTE(v13) = 0;
    goto LABEL_21;
  }

  v9 = [infoCopy __imArrayByApplyingBlock:&unk_283F1ACA8];
  participantHandles = [participantsCopy participantHandles];
  v11 = [v9 count];
  if (v11 == [participantHandles count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = participantHandles;
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

- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)identifier style:(unsigned __int8)style completion:(id)completion
{
  styleCopy = style;
  v53 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (styleCopy == 43 && isInternalInstall)
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

      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v20 = MEMORY[0x277D192D0];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v23 = MEMORY[0x277CCACA8];
      v24 = [obj componentsJoinedByString:{@", "}];
      v25 = [v23 stringWithFormat:@"I am overriding chat participants for %@ to %@. This was triggered by a regression test.", identifierCopy, v24];
      v26 = [v20 userNotificationWithIdentifier:uUIDString title:@"I am doing something sneaky." message:v25 defaultButton:@"I did it!" alternateButton:@"I did not do that." otherButton:0];

      *v40 = 0;
      v41 = v40;
      v42 = 0x2020000000;
      v43 = 0;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_22B69ADD4;
      v39[3] = &unk_278707B18;
      v39[4] = v40;
      [mEMORY[0x277D192D8] addUserNotification:v26 listener:0 completionHandler:v39];
      while ((v41[24] & 1) == 0)
      {
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        v28 = [MEMORY[0x277CBEAA8] now];
        v29 = [v28 dateByAddingTimeInterval:0.5];
        [mainRunLoop runUntilDate:v29];
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

        completionCopy[2](completionCopy, v10);
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
  allKeys = [(NSMutableDictionary *)self->_buddies allKeys];
  v4 = [allKeys copy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (void)markBuddiesAsChanged:(id)changed
{
  lock = self->_lock;
  changedCopy = changed;
  [(NSRecursiveLock *)lock lock];
  [(IMDServiceSession *)self beginBuddyChanges];
  [(NSMutableSet *)self->_changedBuddies addObjectsFromArray:changedCopy];

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

- (void)changeProperty:(id)property ofBuddy:(id)buddy to:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  buddyCopy = buddy;
  toCopy = to;
  v11 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];
  if ([buddyCopy length])
  {
    if ([propertyCopy length])
    {
      v12 = *MEMORY[0x277D193A8];
      if ([propertyCopy isEqualToString:*MEMORY[0x277D193A8]])
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v18 = 138412290;
            v19 = buddyCopy;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change IDProperty for buddy ID: %@   bailing", &v18, 0xCu);
          }

LABEL_15:
        }
      }

      else
      {
        [(NSRecursiveLock *)self->_lock lock];
        v14 = [(NSMutableDictionary *)self->_buddies objectForKey:v11];
        dictionary = v14;
        if (v14)
        {
          v16 = [v14 objectForKey:propertyCopy];
        }

        else
        {
          if (!toCopy)
          {
            [(NSRecursiveLock *)self->_lock unlock];
            goto LABEL_28;
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:buddyCopy forKey:v12];
          [(NSMutableDictionary *)self->_buddies setObject:dictionary forKey:v11];
          v16 = 0;
        }

        if (v16 != toCopy && ([toCopy isEqual:v16] & 1) == 0)
        {
          if (toCopy)
          {
            [dictionary setObject:toCopy forKey:propertyCopy];
          }

          else
          {
            [dictionary removeObjectForKey:propertyCopy];
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
        v19 = buddyCopy;
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
      v19 = propertyCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change property %@ with nil buddy ID", &v18, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_28:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearPropertiesOfBuddy:(id)buddy
{
  v24 = *MEMORY[0x277D85DE8];
  buddyCopy = buddy;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];
  v6 = [(NSMutableDictionary *)self->_buddies objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    allKeys = [v6 allKeys];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v17 = 8;
      v18 = buddyCopy;
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
            objc_enumerationMutation(allKeys);
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
        v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);

      buddyCopy = v18;
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
      allObjects = [(NSMutableSet *)self->_changedBuddies allObjects];
      v8 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
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
              objc_enumerationMutation(allObjects);
            }

            v12 = [(NSMutableDictionary *)self->_buddies objectForKey:*(*(&v17 + 1) + 8 * i)];
            if (v12)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [allObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }

      broadcaster = [(IMDServiceSession *)self broadcaster];
      accountID = [(IMDServiceSession *)self accountID];
      [broadcaster account:accountID buddyPropertiesChanged:v6];
    }

    changedBuddies = self->_changedBuddies;
    self->_changedBuddies = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)property:(id)property ofBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  buddies = self->_buddies;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

  v11 = [(NSMutableDictionary *)buddies objectForKey:v10];
  v12 = [v11 objectForKey:propertyCopy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v12;
}

- (id)localProperty:(id)property ofBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  localProperties = self->_localProperties;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

  v11 = [(NSMutableDictionary *)localProperties objectForKey:v10];
  v12 = [v11 objectForKey:propertyCopy];

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

- (id)localPropertiesOfBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  [(NSRecursiveLock *)lock lock];
  v6 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

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

- (void)changeLocalProperty:(id)property ofBuddy:(id)buddy to:(id)to
{
  toCopy = to;
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  v11 = [(IMDServiceSession *)self localPropertiesOfBuddy:buddyCopy];

  if (toCopy)
  {
    [v11 setObject:toCopy forKey:propertyCopy];
  }

  else
  {
    [v11 removeObjectForKey:propertyCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (int64_t)registrationStatus
{
  account = [(IMDServiceSession *)self account];
  registrationStatus = [account registrationStatus];

  return registrationStatus;
}

- (int)registrationError
{
  account = [(IMDServiceSession *)self account];
  registrationError = [account registrationError];

  return registrationError;
}

- (NSDictionary)registrationAlertInfo
{
  account = [(IMDServiceSession *)self account];
  registrationAlertInfo = [account registrationAlertInfo];

  return registrationAlertInfo;
}

- (id)loginID
{
  account = [(IMDServiceSession *)self account];
  accountDefaults = [account accountDefaults];
  v5 = [accountDefaults objectForKey:*MEMORY[0x277D19420]];
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
        selfCopy2 = v6;
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Abandoning password fetcher with request ID: %@  session: %@", &v13, 0x16u);
      }
    }

    mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
    v8 = self->_pwRequestID;
    displayName = [(IMDServiceSession *)self displayName];
    [mEMORY[0x277D07DE0] cancelRequestID:v8 serviceIdentifier:displayName];

    v10 = self->_pwRequestID;
    self->_pwRequestID = 0;
  }

  else if (v4)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      selfCopy2 = self;
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

- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  translationCopy = translation;
  itemCopy = item;
  styleCopy = style;
  accountCopy = account;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v18 = identifierCopy;

  v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:styleCopy updatingAccount:1];
  if (v19)
  {
    v20 = +[IMDMessageStore sharedInstance];
    [v20 storeTranslation:translationCopy onMessage:itemCopy partIndex:index chat:v19];

    v30 = itemCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v22 = IMCreateSerializedItemsFromArray();

    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
    account = [(IMDServiceSession *)self account];
    accountID = [account accountID];
    [broadcasterForChatListeners account:accountID chat:v18 style:styleCopy messagesUpdated:v22];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = itemCopy;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not find chat for translated message. message: %@ chat: %@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
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

- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
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

- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh
{
  uploadCopy = upload;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
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

- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d
{
  uploadCopy = upload;
  identifierCopy = identifier;
  dCopy = d;
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

- (void)sendLazuliSpamReport:(id)report isBot:(BOOL)bot spamType:(unint64_t)type
{
  reportCopy = report;
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

- (void)closeSessionForChat:(id)chat chatGUID:(id)d didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style
{
  chatCopy = chat;
  dCopy = d;
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

- (void)sendReportNotJunkMessageGUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(IMDSpamMessageCreator);
  [(IMDSpamMessageCreator *)v4 reportNotJunkToTrustKitForMessageGUID:dCopy];
}

- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations
{
  devicesCopy = devices;
  destinationsCopy = destinations;
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

- (void)sendNicknameInfoToChatID:(id)d
{
  dCopy = d;
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

- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
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

- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
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

- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
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

- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds
{
  dsCopy = ds;
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

- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
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

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  dsCopy = ds;
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

- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0
{
  messageCopy = message;
  previousMessageCopy = previousMessage;
  identifierCopy = identifier;
  accountCopy = account;
  textCopy = text;
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

- (id)groupIDForChat:(id)chat
{
  v23 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if ([(IMDServiceSession *)self isReplicating])
  {
    mainSession = [(IMDServiceSession *)self mainSession];
    groupID3 = [mainSession groupIDForChat:chatCopy];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if ((isOneChatEnabled & 1) == 0)
    {
      groupID = [chatCopy groupID];
      v10 = [groupID3 isEqualToString:groupID];

      if ((v10 & 1) == 0)
      {
        v11 = +[IMDChatRegistry sharedInstance];
        [v11 _setGroupID:groupID3 forChatAndAllSiblings:chatCopy];
      }
    }
  }

  else
  {
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if (!isMissingMessagesEnabled || ([chatCopy latestIdentifierForDomain:*MEMORY[0x277D19780]], (groupID3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      groupID2 = [chatCopy groupID];

      if (groupID2)
      {
        groupID3 = [chatCopy groupID];
      }

      else
      {
        groupID3 = [chatCopy generateNewGroupID];
        [chatCopy assignIdentifier:groupID3 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            guid = [chatCopy guid];
            v19 = 138412546;
            v20 = guid;
            v21 = 2112;
            v22 = groupID3;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "The chat with guid %@ has no iMessageGroupID and therefore, a new groupID must be created. This could fork the chat. New GroupID: %@", &v19, 0x16u);
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return groupID3;
}

- (void)userNotificationDidFinish:(id)finish
{
  finishCopy = finish;
  identifier = [finishCopy identifier];
  if ([identifier isEqual:@"__ksFirewallUserNotificationIdentifier"])
  {
    [(IMDServiceSession *)self _handleFirewallUserNotificationDidFinish:finishCopy];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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
      accountID = [(IMDAccount *)self->_account accountID];
      v6 = 138412290;
      v7 = accountID;
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
    accounts = [(IMDServiceSession *)self accounts];
    v4 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(accounts);
          }

          [(IMDServiceSession *)self autoReconnectWithAccount:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)autoReconnectWithAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        v15 = 138412546;
        v16 = loginID;
        v17 = 2112;
        v18 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Auto-Reconnect Request: %@:%@", &v15, 0x16u);
      }
    }

    if ([(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn])
    {
      if ([(IMDServiceSession *)self networkConditionsAllowLogin])
      {
        if ([accountCopy loginStatus] <= 2)
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              loginID2 = [accountCopy loginID];
              accountID2 = [accountCopy accountID];
              v15 = 138412546;
              v16 = loginID2;
              v17 = 2112;
              v18 = accountID2;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Reconnecting account: %@:%@", &v15, 0x16u);
            }
          }

          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
          [(IMDServiceSession *)self performSelector:sel_loginWithAccount_ withObject:accountCopy afterDelay:1.0];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          loginID3 = [accountCopy loginID];
          accountID3 = [accountCopy accountID];
          v15 = 138412546;
          v16 = loginID3;
          v17 = 2112;
          v18 = accountID3;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "Auto-Reconnect failed (Network conditions don't allow it): %@:%@", &v15, 0x16u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_doLoginIgnoringProxy:(BOOL)proxy withAccount:(id)account
{
  v78 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    proxyCopy = proxy;
    [(NSRecursiveLock *)self->_lock lock];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        *buf = 138412802;
        v73 = loginID;
        v74 = 2112;
        v75 = accountID;
        v76 = 2048;
        loginStatus = [accountCopy loginStatus];
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Do Login: %@:%@  (serviceLoginStatus: %lu)", buf, 0x20u);
      }
    }

    if ([accountCopy loginStatus] > 1)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          loginID2 = [(IMDServiceSession *)self loginID];
          accountID2 = [(IMDAccount *)self->_account accountID];
          loginStatus2 = [(IMDAccount *)self->_account loginStatus];
          *buf = 138412802;
          v73 = loginID2;
          v74 = 2112;
          v75 = accountID2;
          v76 = 2048;
          loginStatus = loginStatus2;
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

    accountDefaults = [(IMDServiceSession *)self accountDefaults];
    loginID3 = [(IMDServiceSession *)self loginID];
    v17 = self->_loginID;
    self->_loginID = loginID3;

    v18 = [accountDefaults objectForKey:*MEMORY[0x277D194B0]];
    self->_useSSL = [v18 BOOLValue];

    if (self->_useSSL)
    {
      v69 = *MEMORY[0x277D19490];
      v19 = [accountDefaults objectForKey:?];
      stringByRemovingWhitespace = [v19 stringByRemovingWhitespace];

      v68 = *MEMORY[0x277D19498];
      v21 = [accountDefaults objectForKey:?];
      service = [(IMDServiceSession *)self service];
      if ([stringByRemovingWhitespace length])
      {
        v22 = 0;
      }

      else
      {
        defaultAccountSettings = [service defaultAccountSettings];
        v34 = [defaultAccountSettings objectForKey:v69];
        stringByRemovingWhitespace2 = [v34 stringByRemovingWhitespace];

        v22 = [stringByRemovingWhitespace2 length] != 0;
        stringByRemovingWhitespace = stringByRemovingWhitespace2;
      }

      if ([stringByRemovingWhitespace length])
      {
        stringByRemovingWhitespace3 = stringByRemovingWhitespace;
      }

      else
      {
        v41 = [accountDefaults objectForKey:*MEMORY[0x277D19480]];
        stringByRemovingWhitespace3 = [v41 stringByRemovingWhitespace];

        if ([stringByRemovingWhitespace3 length])
        {
          v22 = 1;
        }
      }

      if ([stringByRemovingWhitespace3 length])
      {
        stringByRemovingWhitespace4 = stringByRemovingWhitespace3;
      }

      else
      {
        defaultAccountSettings2 = [service defaultAccountSettings];
        v46 = [defaultAccountSettings2 objectForKey:*MEMORY[0x277D19480]];
        stringByRemovingWhitespace4 = [v46 stringByRemovingWhitespace];

        if ([stringByRemovingWhitespace4 length])
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
        defaultAccountSettings3 = [service defaultAccountSettings];
        v47 = [defaultAccountSettings3 objectForKey:v68];

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
        v49 = [accountDefaults objectForKey:*MEMORY[0x277D19488]];

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
        defaultAccountSettings4 = [service defaultAccountSettings];
        v40 = [defaultAccountSettings4 objectForKey:*MEMORY[0x277D19488]];

        if ([v40 intValue])
        {
          v22 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, stringByRemovingWhitespace4);
      self->_serverPort = [v40 intValue];
      if (stringByRemovingWhitespace4)
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

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{stringByRemovingWhitespace4, v69, v40, v68, 0}];
    }

    else
    {
      v27 = *MEMORY[0x277D19480];
      v28 = [accountDefaults objectForKey:*MEMORY[0x277D19480]];
      stringByRemovingWhitespace4 = [v28 stringByRemovingWhitespace];

      v30 = *MEMORY[0x277D19488];
      v31 = [accountDefaults objectForKey:*MEMORY[0x277D19488]];
      service = [(IMDServiceSession *)self service];
      if ([stringByRemovingWhitespace4 length])
      {
        v32 = 0;
      }

      else
      {
        defaultAccountSettings5 = [service defaultAccountSettings];
        v38 = [defaultAccountSettings5 objectForKey:v27];
        stringByRemovingWhitespace5 = [v38 stringByRemovingWhitespace];

        v32 = [stringByRemovingWhitespace5 length] != 0;
        stringByRemovingWhitespace4 = stringByRemovingWhitespace5;
      }

      if ([v31 intValue])
      {
        v40 = v31;
      }

      else
      {
        defaultAccountSettings6 = [service defaultAccountSettings];
        v40 = [defaultAccountSettings6 objectForKey:v30];

        if ([v40 intValue])
        {
          v32 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, stringByRemovingWhitespace4);
      self->_serverPort = [v40 intValue];
      if (stringByRemovingWhitespace4)
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

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{stringByRemovingWhitespace4, v27, v40, v30, 0}];
    }

    v52 = v44;
    account = [(IMDServiceSession *)self account];
    [account writeAccountDefaults:v52];

LABEL_55:
    if (proxyCopy || ([accountDefaults objectForKey:*MEMORY[0x277D194A0]], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "BOOLValue"), v54, !v55))
    {
      self->_proxyType = 4;
      [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:accountCopy];
    }

    else
    {
      v56 = [accountDefaults objectForKey:*MEMORY[0x277D194A8]];
      bOOLValue = [v56 BOOLValue];

      if (bOOLValue)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v58 = objc_alloc(MEMORY[0x277D192B0]);
        server = [(IMDServiceSession *)self server];
        v60 = [v58 initWithHost:server port:self->_serverPort delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v60;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
      }

      else
      {
        v63 = [accountDefaults objectForKey:*MEMORY[0x277D19450]];
        self->_proxyType = [v63 intValue];

        v64 = [accountDefaults objectForKey:*MEMORY[0x277D19440]];
        stringByRemovingWhitespace6 = [v64 stringByRemovingWhitespace];
        v66 = self->_proxyHost;
        self->_proxyHost = stringByRemovingWhitespace6;

        v67 = [accountDefaults objectForKey:*MEMORY[0x277D19448]];
        self->_proxyPort = [v67 intValue];

        [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:accountCopy];
      }
    }

LABEL_61:
    [(NSRecursiveLock *)self->_lock unlock];
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_login_serverSettingsReadyWithAccount:(id)account
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v21 = 138412546;
        selfCopy = loginID;
        v23 = 2112;
        v24 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_serverSettingsReadyWithAccount: %@:%@", &v21, 0x16u);
      }
    }

    server = [(IMDServiceSession *)self server];
    service = [(IMDServiceSession *)self service];
    requiresHost = [service requiresHost];

    if ((([server length] == 0) & requiresHost) == 1)
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

      [accountCopy _forceSetLoginStatus:1 message:v12 reason:0 properties:0];
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

      [accountCopy _forceSetLoginStatus:0 message:v20 reason:0 properties:0];
      goto LABEL_22;
    }

    if (!self->_networkMonitor)
    {
LABEL_16:
      service2 = [(IMDServiceSession *)self service];
      ignoresNetworkConnectivity = [service2 ignoresNetworkConnectivity];

      if ((ignoresNetworkConnectivity & 1) == 0 && IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "****** No IMNetworkMonitor for login of account: %@", &v21, 0xCu);
        }
      }
    }

    [(IMDServiceSession *)self _data_connection_readyWithAccount:accountCopy];
LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_data_connection_readyWithAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v17 = loginID;
        v18 = 2112;
        v19 = accountID;
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
      mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B6D6704;
      v14[3] = &unk_2787085D0;
      v14[4] = self;
      v15 = accountCopy;
      [mEMORY[0x277D07DE0] fetchPasswordForProfileID:0 username:loginID service:internalName outRequestID:0 completionBlock:v14];
    }

    else
    {
      [(IMDServiceSession *)self _login_usernameAndPasswordReadyWithAccount:accountCopy];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_login_usernameAndPasswordReadyWithAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        v12 = 138412546;
        v13 = loginID;
        v14 = 2112;
        v15 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_usernameAndPasswordReady: %@:%@", &v12, 0x16u);
      }
    }

    if (self->_proxyType == 4)
    {
      [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:accountCopy];
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

- (void)_login_checkUsernameAndPasswordWithAccount:(id)account
{
  v41 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
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

        selfCopy = loginID;
        v35 = 2112;
        v36 = accountID;
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
        if ([accountCopy loginStatus] > 3)
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
            [accountCopy setLoginStatus:3 message:0];
            [(IMDServiceSession *)self loginServiceSessionWithAccount:accountCopy];
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

          selfCopy = self;
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

      capabilities = [(IMDServiceSession *)self capabilities];
      displayName = [(IMDServiceSession *)self displayName];
      v20 = self->_pwRequestID;
      [(IMDServiceSession *)self _abandonPWFetcher];
      mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      v23 = self->_badPass;
      v32 = v20;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_22B6D6F88;
      v30[3] = &unk_2787085F8;
      v30[4] = self;
      v31 = accountCopy;
      [mEMORY[0x277D07DE0] requestPasswordForUsername:loginID service:displayName badPassword:v23 showForgotPassword:(capabilities >> 31) & 1 shouldRememberPassword:1 outRequestID:&v32 completionBlock:v30];
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

- (void)systemProxySettingsFetcher:(id)fetcher retrievedHost:(id)host port:(unsigned __int16)port protocol:(int64_t)protocol
{
  fetcherCopy = fetcher;
  hostCopy = host;
  if (self->_activated)
  {
    if (protocol == 4)
    {
      systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      self->_systemProxySettingsFetcher = 0;

      [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:1];
    }

    else
    {
      [(IMDServiceSession *)self _updateNetworkMonitorWithRemoteHost:hostCopy];
    }

    self->_proxyType = protocol;
    objc_storeStrong(&self->_proxyHost, host);
    self->_proxyPort = port;
    im_dispatch_after();
  }
}

- (void)systemProxySettingsFetcher:(id)fetcher retrievedAccount:(id)account password:(id)password
{
  accountCopy = account;
  passwordCopy = password;
  if (self->_activated)
  {
    objc_storeStrong(&self->_proxyAccount, account);
    objc_storeStrong(&self->_proxyPassword, password);
    systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
    self->_systemProxySettingsFetcher = 0;

    v10 = +[IMDAccountController sharedAccountController];
    account = [v10 accountForAccountID:accountCopy];

    if (!account)
    {
      account = [(IMDServiceSession *)self account];
    }

    [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:account];
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
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v11 = 138412546;
        v12 = loginID;
        v13 = 2112;
        v14 = accountID;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "autoLogin: %@:%@", &v11, 0x16u);
      }
    }

    accountID2 = [(IMDServiceSession *)self accountID];
    if ([accountID2 length])
    {
      accountDefaults = [(IMDServiceSession *)self accountDefaults];
      v8 = [accountDefaults objectForKey:*MEMORY[0x277D193F8]];
      if ([v8 BOOLValue])
      {

LABEL_11:
        [(IMDServiceSession *)self login];
        goto LABEL_12;
      }

      accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];

      if (accountShouldBeAlwaysLoggedIn)
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
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self loginWithAccount:account];
}

- (void)loginWithAccount:(id)account
{
  v13 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v9 = 138412546;
        v10 = loginID;
        v11 = 2112;
        v12 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Login request: %@:%@ (Setting should reconnect flag = YES)", &v9, 0x16u);
      }
    }

    self->_shouldReconnect = 1;
    [(IMDServiceSession *)self _setAutoReconnectTimer];
    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:accountCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logoutServiceSessionWithAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = accountCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession logoutServiceSession]: %@, account:%@", &v13, 0x16u);
      }
    }

    if (self->_systemProxySettingsFetcher)
    {
      [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
      [accountCopy _forceSetLoginStatus:0 message:0 reason:0 properties:0];
    }

    [(IMDServiceSession *)self _abandonPWFetcher];
    if ([accountCopy loginStatus])
    {
      [accountCopy _forceSetLoginStatus:0 message:0 reason:0 properties:0];
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
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self logoutWithAccount:account];
}

- (void)logoutWithAccount:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
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
      v19 = accountCopy;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ logoutWithAccount:%@] (activated = %@)", v17, 0x20u);
    }
  }

  if (self->_activated)
  {
    accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
    v9 = IMOSLoggingEnabled();
    if (accountShouldBeAlwaysLoggedIn)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          loginID = [(IMDServiceSession *)self loginID];
          *v17 = 138412290;
          *&v17[4] = loginID;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Tried to logout: %@  but we're not supposed to, reflecting this!", v17, 0xCu);
        }
      }

      if ([accountCopy loginStatus])
      {
        broadcaster = [(IMDServiceSession *)self broadcaster];
        accountID = [accountCopy accountID];
        [broadcaster account:accountID loginStatusChanged:4 message:@"<<Connected>>" reason:0xFFFFFFFFLL properties:0];
      }
    }

    else
    {
      if (v9)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          loginID2 = [(IMDServiceSession *)self loginID];
          *v17 = 138412290;
          *&v17[4] = loginID2;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "** %@: clearing _shouldReconnectFlag at logout", v17, 0xCu);
        }
      }

      [(IMDServiceSession *)self disallowReconnection];
      [(IMDServiceSession *)self logoutServiceSessionWithAccount:accountCopy];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)serviceSessionDidLoginWithAccount:(id)account
{
  if (self->_activated)
  {
    [account _forceSetLoginStatus:4 message:0 reason:0xFFFFFFFFLL properties:0];
    [(IMDServiceSession *)self _clearAutoReconnectTimer];

    [(IMDServiceSession *)self _abandonPWFetcher];
  }
}

- (void)serviceSessionDidLogoutWithAccount:(id)account
{
  if (self->_activated)
  {
    [account _forceSetLoginStatus:0 message:0 reason:0xFFFFFFFFLL properties:0];

    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_wentOfflineWithAccount:(id)account
{
  if (self->_activated)
  {
    lock = self->_lock;
    accountCopy = account;
    [(NSRecursiveLock *)lock lock];
    [(NSMutableDictionary *)self->_buddies removeAllObjects];
    [(NSMutableDictionary *)self->_localProperties removeAllObjects];
    [(NSRecursiveLock *)self->_lock unlock];
    [(IMDServiceSession *)self autoReconnectWithAccount:accountCopy];
  }
}

- (void)_setAutoReconnectTimer
{
  if (!self->_activated)
  {
    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_autoReconnectTimer:(id)timer
{
  v13 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession _autoReconnectTimer]: %@", &v11, 0xCu);
      }
    }

    networkConditionsAllowLogin = [(IMDServiceSession *)self networkConditionsAllowLogin];
    v7 = IMOSLoggingEnabled();
    if (networkConditionsAllowLogin)
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
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[IMDServiceSession _clearAutoReconnectTimer]: %@", &v6, 0xCu);
    }
  }

  [(NSTimer *)self->_reconnectTimer invalidate];
  reconnectTimer = self->_reconnectTimer;
  self->_reconnectTimer = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllDataWithCompletionHandler:(id)handler
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v8, &unk_22B7F8D10, v13);
}

- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles
{
  sub_22B6EFD80();
  sub_22B7DB918();
  sub_22B7DAF08();
  v4 = sub_22B7DAEF8();

  return v4 & 1;
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
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
  selfCopy = self;
  v20 = sub_22B7DBA08();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v17;
  *(v21 + 56) = style;
  *(v21 + 64) = selfCopy;
  *(v21 + 72) = v14;
  sub_22B722F28(0, 0, v12, &unk_22B7FA6B0, v21);
}

@end