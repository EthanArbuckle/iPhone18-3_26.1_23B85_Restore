@interface IDSDaemon
+ (BOOL)_commandIsSessionCommand:(int64_t)command;
+ (BOOL)_commandIsSessionGroupSessionCommand:(int64_t)command;
+ (BOOL)_shouldReplaceLocalDestination:(id)destination;
+ (BOOL)_topicAllowsNoEncryption:(id)encryption fromURI:(id)i;
+ (BOOL)entitlementDictionary:(id)dictionary isEntitledToAccessService:(id)service forEntitlement:(id)entitlement forAccount:(id)account shouldWarn:(BOOL)warn;
+ (id)progressBlockForSendParameters:(id)parameters messageContext:(id)context topic:(id)topic forObject:(id)object;
+ (id)sharedInstance;
+ (void)_forwardSendMessageToAccountWithSendParameters:(id)parameters service:(id)service threadContext:(id)context guid:(id)guid dataProtectionClass:(unsigned int)class willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)self0;
+ (void)_performDuetCheckAndSendForServiceIdentifier:(id)identifier serviceDuetIdentifiers:(id)identifiers sendParameters:(id)parameters logString:(id)string fromQueue:(id)queue completionBlock:(id)block;
+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)d threadContext:(id)context priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)d threadContext:(id)context priority:(int64_t)priority messageTypes:(id)types dataProtectionClass:(unsigned int)class;
+ (void)_sendMessageWithSendParameters:(id)parameters threadContext:(id)context onObject:(id)object willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)completionBlock;
+ (void)logAccessWarningForAccount:(id)account withService:(id)service entitlement:(id)entitlement clientEntitlements:(id)entitlements logMessage:(id)message;
+ (void)sendMessageWithIDSSendParameters:(id)parameters messageContext:(id)context threadContext:(id)threadContext progressBlock:(id)block onObject:(id)object;
- (BOOL)_canBulkMessageWithParameters:(id)parameters;
- (BOOL)_canSendMessageWithAccount:(id)account toDestination:(id)destination;
- (BOOL)_canSendNonUrgentInternetMessageForTopic:(id)topic;
- (BOOL)_checkContinuityEntitlementForMessageContext:(id)context;
- (BOOL)_checkEntitlement:(id)entitlement forAccountWithID:(id)d messageContext:(id)context;
- (BOOL)_checkIfDupeAndNoteGuid:(id)guid local:(BOOL)local topic:(id)topic forceNoteGuid:(BOOL)noteGuid;
- (BOOL)_doesNiceMessageContainValidCombination:(id)combination;
- (BOOL)_hasNonUrgentInternetSendingBudget;
- (BOOL)_isBulkingStorageMessagesForService:(id)service;
- (BOOL)_isDeviceInAccountRegistration:(id)registration forService:(id)service;
- (BOOL)_isSpamReportingV1ServerDisabled;
- (BOOL)_isUnderFirstDataProtectionLock;
- (BOOL)_isUnlistenedCommand:(id)command;
- (BOOL)_primaryAccountExistsForService:(id)service withURI:(id)i;
- (BOOL)_processMessagingPayloadWithCommand:(id)command dictionaryPayload:(id)payload senderPushToken:(id)token topic:(id)topic toURI:(id)i fromURI:(id)rI peerResponseIdentifier:(id)identifier guid:(id)self0 service:(id)self1 idsMessageContext:(id)self2 messageContext:(id)self3;
- (BOOL)_processNonMessagingPayloadWithCommand:(id)command dictionaryPayload:(id)payload senderPushToken:(id)token topic:(id)topic toURI:(id)i fromURI:(id)rI peerResponseIdentifier:(id)identifier guid:(id)self0 service:(id)self1 idsMessageContext:(id)self2 messageContext:(id)self3;
- (BOOL)_processQueuedBroadcastsForServices:(id)services priority:(int64_t)priority forceRetry:(BOOL)retry;
- (BOOL)_rollDieForNonUrgentInternetSend;
- (BOOL)_setupListenerConnection:(id)connection listenerID:(id)d pid:(int)pid setupInfo:(id)info entitlements:(id)entitlements setupCompletionBlock:(id)block;
- (BOOL)_shouldDropCommand:(int64_t)command senderURI:(id)i forService:(id)service;
- (BOOL)_shouldForgetCachedPeerTokensForDecryptionErrorType:(int64_t)type withOriginalDecryptionError:(id)error;
- (BOOL)_shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:(int64_t)type;
- (BOOL)_shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)params service:(id)service;
- (BOOL)_shouldMessageBeProxied:(id)proxied service:(id)service;
- (BOOL)_shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:(int64_t)type withOriginalDecryptionError:(id)error fromURI:(id)i toURI:(id)rI service:(id)service;
- (BOOL)_shouldRejectMessageOnCrossAccountService:(id)service fromSenderURI:(id)i;
- (BOOL)_shouldRejectMessageOnFamilyService:(id)service fromSenderURI:(id)i;
- (BOOL)_shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:(int64_t)type;
- (BOOL)_shouldRetryForDecryptionErrorType:(int64_t)type;
- (BOOL)_shouldStoreBeforeFirstUnlockIncomingLocalMessage:(id)message from:(id)from forTopic:(id)topic;
- (BOOL)client:(id)client isEntitledToAccessService:(id)service forAnyOfEntitlements:(id)entitlements shouldWarn:(BOOL)warn;
- (BOOL)client:(id)client isEntitledToAccessService:(id)service forEntitlement:(id)entitlement shouldWarn:(BOOL)warn;
- (BOOL)daemonInterface:(id)interface shouldGrantAccessForPID:(int)d auditToken:(id *)token portName:(id)name listenerConnection:(id)connection setupInfo:(id)info setupResponse:(id *)response;
- (BOOL)deferMessageForBatchDelivery:(id)delivery service:(id)service;
- (BOOL)dropMessageIfDropPointIsDetectedWithSendParameters:(id)parameters;
- (BOOL)firewallDatabaseAllowsFromURI:(id)i mergeID:(id)d isDonated:(BOOL)donated service:(id)service;
- (BOOL)firewallDatabaseAllowsFromURI:(id)i mergeID:(id)d service:(id)service;
- (BOOL)isFirewallEnabledForService:(id)service;
- (BOOL)isFirewallOnForService:(id)service;
- (BOOL)isMessageFromSelfForFromURI:(id)i service:(id)service;
- (BOOL)shouldDropMessageIfOutOfFamilyPhoneNumber:(id)number forService:(id)service withAppleIDAccount:(id)account;
- (BOOL)shouldFirewallDropMessageForFromURI:(id)i mergeID:(id)d service:(id)service;
- (BOOL)shouldProxyMessageForService:(id)service toIdentifier:(id)identifier;
- (BOOL)validateListenerForLocalObject:(id)object;
- (BOOL)validateListenerForLocalObject:(id)object andCheckEntitlement:(id)entitlement forAccessToServiceWithIdentifier:(id)identifier;
- (BOOL)validateLocalObjectForPseudonym:(id)pseudonym andCheckEntitlement:(id)entitlement forAccessToAnyOneOfServices:(id)services;
- (BOOL)validateLocalObjectForPseudonym:(id)pseudonym andCheckEntitlement:(id)entitlement forAccessToServices:(id)services;
- (IDSDaemon)init;
- (double)_decryptionRetryIntervalForError:(id)error;
- (double)_nonUrgentInternetSendProbabilityForCurrentWindow;
- (id)_IMTransferServiceController;
- (id)_commands;
- (id)_copyDirectMessagingMetadataForRemoteObject:(id)object;
- (id)_decryptAOverCMessage:(id)message topic:(id)topic fromDeviceID:(id)d error:(id *)error;
- (id)_errorForMissingEntitlement:(id)entitlement;
- (id)_failureReasonMessageFromSecondaryError:(id)error ECError:(id)cError andLegacyError:(id)legacyError;
- (id)_incomingMessageStorageDictionaryForPayload:(id)payload topic:(id)topic deviceID:(id)d btUUID:(id)iD command:(id)command messageUUID:(id)uID sequenceNumber:(id)number wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2;
- (id)_localPushTopics;
- (id)_lockedRemoteObjectsWithService:(id)service entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities ignoreService:(BOOL)ignoreService useNotificationServices:(BOOL)services;
- (id)_lockedRemoteObjectsWithService:(id)service entitlements:(id)entitlements command:(id)command capabilities:(unsigned int)capabilities ignoreService:(BOOL)ignoreService useNotificationServices:(BOOL)services;
- (id)_newSetupInfoWithContext:(id)context;
- (id)_payloadFromDecryptedData:(id)data;
- (id)_populateDictionaryWithSenderKeyCheck:(id)check remoteURI:(id)i localURI:(id)rI originalGUID:(id)d;
- (id)_processNameToServiceName:(id)name;
- (id)_pushTopics;
- (id)_replayKeyForNiceMessage:(id)message encryptedData:(id)data;
- (id)_sessionWithInstanceID:(id)d messageContext:(id)context requiredEntitlement:(id)entitlement;
- (id)_sessionWithUniqueID:(id)d messageContext:(id)context requiredEntitlement:(id)entitlement;
- (id)_ultraConstrainedPushTopicsForTopics:(id)topics;
- (id)_updateDirectMessagingMetadataForRemoteObject:(id)object shouldBroadcastForRemoteObject:(BOOL)remoteObject;
- (id)_validAccountForIncomingMessageSentToURI:(id)i service:(id)service outPseudonym:(id *)pseudonym;
- (id)accountWithIdentifier:(id)identifier localObject:(id)object requiredEntitlement:(id)entitlement;
- (id)batchMemberMessageFromIncomingNiceMessage:(id)message;
- (id)broadcastAttemptQueueFromPriority:(int64_t)priority;
- (id)broadcasterForEntitlement:(id)entitlement messageContext:(id)context;
- (id)broadcasterForLocalObject:(id)object messageContext:(id)context;
- (id)broadcasterForTopic:(id)topic entitlement:(id)entitlement command:(id)command messageContext:(id)context;
- (id)broadcasterForTopic:(id)topic ignoreServiceListener:(BOOL)listener messageContext:(id)context;
- (id)broadcasterWithMessageContext:(id)context;
- (id)cloudRelayRegisteredAccountWithError:(id *)error;
- (id)copyDirectMessagingInfo;
- (id)deliveryControllerQueuedIncomingMessageDictionary:(id)dictionary;
- (id)dequeueBroadcastWithID:(int64_t)d forMessageUUID:(id)iD service:(id)service priority:(int64_t)priority;
- (id)listenerForLocalObject:(id)object;
- (id)listenerRemoteObjectForLocalObject:(id)object;
- (id)messageStoreForDataProtectionClass:(unsigned int)class;
- (id)registrationBroadcasterForTopic:(id)topic messageContext:(id)context;
- (int64_t)_cleanupFrequencyForRestrictedMessages;
- (int64_t)_currentSecondsIntoDay;
- (int64_t)_expirationTimeForRestrictedMessages;
- (int64_t)_messageTypeForConnection:(int64_t)connection;
- (int64_t)_signatureTypeForSigningAlgorithm:(int64_t)algorithm;
- (int64_t)_subscriptionSourceNumberForContext:(id)context;
- (unint64_t)_maxMessagesForRunawayClientConsideration;
- (unint64_t)_maxOutgoingDatabasesSizeInMB;
- (unsigned)_dedupBehaviorForNiceMessage:(id)message;
- (unsigned)commandGroupForCommand:(int64_t)command;
- (void)_ackMessageWithSequenceNumber:(unsigned int)number forDeviceID:(id)d priority:(int64_t)priority dataProtectionClass:(unsigned int)class connectionType:(int64_t)type guid:(id)guid;
- (void)_addIncomingGUIDsWithGuid:(id)guid isLocal:(BOOL)local hasLock:(BOOL)lock;
- (void)_broadcastPendingMessageUpdateForNiceMessage:(id)message fromURI:(id)i toURI:(id)rI forTopic:(id)topic messageContext:(id)context;
- (void)_callReplayCommitBlockForIncomingMessages:(id)messages;
- (void)_cleanUpOutgoingMessageDatabaseAndClearStatementCache;
- (void)_cleanupExpiredIncomingMessages;
- (void)_cleanupIncomingFilesDirectories;
- (void)_cleanupIncomingFilesDirectory:(id)directory;
- (void)_cleanupIncomingMessageDatabase;
- (void)_cleanupListenerWithPid:(int)pid;
- (void)_cleanupOutgoingExpiredMessages;
- (void)_cleanupOutgoingMessageDatabase;
- (void)_cleanupOutgoingMessages;
- (void)_cleanupOutgoingQWSMessages;
- (void)_cleanupRunawayClientOutgoingMessages;
- (void)_clearIDSState;
- (void)_dropQueuedBroadcastsForServices:(id)services priority:(int64_t)priority;
- (void)_enqueueBlock:(id)block identifier:(id)identifier withTimeout:(double)timeout forKey:(id)key;
- (void)_failSavedMessageCleanly:(id)cleanly withResponseCode:(int64_t)code;
- (void)_failSavedMessagesCleanly:(id)cleanly withResponseCode:(int64_t)code;
- (void)_fetchAccountEntitlements:(id *)entitlements listenerID:(id *)d inContext:(id)context;
- (void)_flushBroadcastQueuesForServices:(id)services existingServices:(id)existingServices;
- (void)_handleDeliveryReceiptForSenderKeyCheck:(id)check remoteURI:(id)i remotePushToken:(id)token localURI:(id)rI originalGUID:(id)d;
- (void)_handleIncomingNiceAttachmentMessage:(id)message forTopic:(id)topic fromURI:(id)i certifiedDeliveryContext:(id)context completionBlock:(id)block;
- (void)_handleIncomingPushNiceMessage:(id)message forTopic:(id)topic fromURI:(id)i messageContext:(id)context;
- (void)_handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:(id)classes withMessageTypes:(id)types;
- (void)_iterateOverConnectedListeners:(id)listeners;
- (void)_launchServiceOnDemand:(id)demand;
- (void)_locked_printBroadcastAttemptMapForPriority:(int64_t)priority service:(id)service;
- (void)_nonUrgentInternetSendTimerFired;
- (void)_noteItemFromStorage:(id)storage;
- (void)_noteLastItemFromStorage:(id)storage;
- (void)_notifyTinkerServicesOfPairedDevice:(id)device withBlock:(id)block;
- (void)_optionallyDecryptNiceMessage:(id)message encryptedData:(id)data forGroupID:(id)d forTopic:(id)topic fromURI:(id)i certifiedDeliveryContext:(id)context isLiveRetry:(BOOL)retry incomingMetric:(id)self0 completionBlock:(id)self1;
- (void)_performDuetCheckAndSendForAccount:(id)account sendParameters:(id)parameters logString:(id)string fromQueue:(id)queue completionBlock:(id)block;
- (void)_performSetup;
- (void)_pidSuspended:(int)suspended;
- (void)_postAliveNotification;
- (void)_processCertifiedDeliveryReceiptForSenderKeyDistribution:(id)distribution service:(id)service;
- (void)_processDeletingMessagesWithPriority:(int64_t)priority reason:(id)reason responseCode:(int64_t)code allowedTrafficClasses:(id)classes;
- (void)_processDisallowedMessages;
- (void)_processIncomingLocalMessage:(id)message topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD context:(id)context storedGUID:(id)uID priority:(id)self0 connectionType:(int64_t)self1 didWakeHint:(BOOL)self2;
- (void)_processIncomingRemoteNiceMessage:(id)message forTopic:(id)topic fromURI:(id)i storedGuid:(id)guid messageContext:(id)context;
- (void)_processIncomingRemoteResourceTransferMessage:(id)message forceDownload:(BOOL)download guid:(id)guid context:(id)context specificOriginatorURI:(id)i broadcastTopic:(id)topic toURI:(id)rI topic:(id)self0 messageContext:(id)self1;
- (void)_processKTPeerUpdateMessageForService:(id)service localURI:(id)i remoteURI:(id)rI;
- (void)_processLocalMessagesWithAccountUUIDs:(id)ds priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (void)_processLocalMessagesWithAccountUUIDs:(id)ds priority:(int64_t)priority dataProtectionClass:(unsigned int)class messageTypes:(id)types;
- (void)_processMessageError:(BOOL)error topLevelMessage:(id)message error:(id)a5 messageID:(id)d failureReasonMessage:(id)reasonMessage service:(id)service serviceType:(id)type pushToken:(id)self0 fromURI:(id)self1 toURI:(id)self2 groupID:(id)self3 completionBlock:(id)self4;
- (void)_processMessagesUponUnpairing;
- (void)_processOutgoingNonUrgentInternetMessages;
- (void)_processStoredIncomingLocalMessage:(id)message;
- (void)_processStoredIncomingLocalMessages;
- (void)_processStoredIncomingMessages;
- (void)_processStoredIncomingRemoteMessagesWithGUIDs:(id)ds ignoringGUIDs:(id)iDs controlCategory:(unsigned int)category lastTimeInterval:(double)interval repeatedAttempt:(BOOL)attempt;
- (void)_processStoredMessagesIncludingClassD:(BOOL)d;
- (void)_processStoredOutgoingUrgentMessagesProcessLocalAccounts:(BOOL)accounts;
- (void)_registerForCheckpointAndVacuumDB;
- (void)_registerForDailyMetricReporting;
- (void)_registerForNetworkAvailableNotification;
- (void)_registerSysdiagnoseBlock;
- (void)_removeAccount:(id)account messageContext:(id)context;
- (void)_removeAndDeregisterAccount:(id)account messageContext:(id)context;
- (void)_removeListener:(id)listener;
- (void)_removeListenerWithRemoteXPCObject:(id)object;
- (void)_removeLocalListenerObject:(id)object;
- (void)_reregisterAndReidentify:(id)reidentify account:(id)account messageContext:(id)context;
- (void)_resetBroadcastQueuesForServices:(id)services;
- (void)_resetPreferences;
- (void)_resetQueuedBroadcastsForServices:(id)services priority:(int64_t)priority;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priorities:(id)priorities dataProtectionClasses:(id)classes;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priorities:(id)priorities dataProtectionClasses:(id)classes messageTypes:(id)types;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priority:(int64_t)priority dataProtectionClass:(unsigned int)class messageTypes:(id)types;
- (void)_respondToAppleCareRequestID:(id)d withMessageContext:(id)context error:(id)error;
- (void)_respondToRegistrationControlWithRequestID:(id)d status:(int64_t)status messageContext:(id)context error:(id)error;
- (void)_respondToVMDataRequestWithData:(id)data requestID:(id)d error:(id)error messageContext:(id)context;
- (void)_restrictedMessageCleanupTimerFired;
- (void)_sendCertifiedDeliveryReceiptForSenderKeyDistributionMessage:(id)message service:(id)service keyIDs:(id)ds;
- (void)_sendCertifiedDeliveryReceiptIfNeededForNiceMessage:(id)message service:(id)service failureReason:(id)reason failureReasonMessage:(id)reasonMessage generateDeliveryReceipt:(BOOL)receipt;
- (void)_sendErrorMessage:(id)message originalCommand:(id)command fromURI:(id)i toDestinations:(id)destinations usingAccountWithUniqueID:(id)d useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)encrypt wantsResponse:(BOOL)self0 timeout:(double)self1 command:(id)self2 priority:(int64_t)self3 sendReasonPathID:(int64_t)self4 completionBlock:(id)self5;
- (void)_sendNiceMessageCheckpointIfNecessary:(id)necessary checkpoint:(int64_t)checkpoint service:(id)service additionalInformation:(id)information;
- (void)_setupRestrictedMessageCleanupTimer;
- (void)_startPushHandlingLocked;
- (void)_stopPushHandling;
- (void)_storageTimerFired;
- (void)_submitLastResortCacheMetricForGUID:(id)d service:(id)service;
- (void)_submitRegistrationAccountStatusMetric;
- (void)_terminate;
- (void)_updateNonUrgentInternetSendTimer;
- (void)_updatePushCommandsLocked;
- (void)_updateStorageTimerWithInterval:(double)interval;
- (void)acceptInvitation:(id)invitation messageContext:(id)context;
- (void)acceptInvitation:(id)invitation withData:(id)data messageContext:(id)context;
- (void)acknowledgeMessageWithGUID:(id)d forAccountWithUniqueID:(id)iD broadcastTime:(id)time messageSize:(id)size priority:(id)priority messageContext:(id)context;
- (void)acknowledgeMessageWithStorageGUID:(id)d realGUID:(id)iD forAccountWithUniqueID:(id)uniqueID broadcastTime:(id)time messageSize:(id)size priority:(id)priority broadcastID:(int64_t)broadcastID connectionType:(int64_t)self0 messageContext:(id)self1;
- (void)acknowledgeOutgoingMessageWithGUID:(id)d alternateCallbackID:(id)iD forAccountWithUniqueID:(id)uniqueID messageContext:(id)context;
- (void)acknowledgeSessionID:(id)d clientID:(id)iD messageContext:(id)context;
- (void)addAccountWithLoginID:(id)d serviceName:(id)name uniqueID:(id)iD accountType:(int)type accountInfo:(id)info messageContext:(id)context;
- (void)addAliases:(id)aliases toAccount:(id)account messageContext:(id)context;
- (void)appleCareSignInUserName:(id)name DSID:(id)d authToken:(id)token requestID:(id)iD messageContext:(id)context;
- (void)appleCareSignOutUserWithRequestID:(id)d messageContext:(id)context;
- (void)authTokenChanged:(id)changed forAccount:(id)account messageContext:(id)context;
- (void)authenticateAccount:(id)account messageContext:(id)context;
- (void)authenticatePhoneWithRequestUUID:(id)d messageContext:(id)context;
- (void)broadcastBatchMessage:(id)message topic:(id)topic;
- (void)cancelInvitation:(id)invitation messageContext:(id)context;
- (void)cancelInvitation:(id)invitation withData:(id)data messageContext:(id)context;
- (void)cancelInvitation:(id)invitation withRemoteEndedReasonOverride:(unsigned int)override messageContext:(id)context;
- (void)cancelItemWithIdentifier:(id)identifier service:(id)service messageContext:(id)context;
- (void)cancelMessageWithQueueOneIdentifier:(id)identifier fromID:(id)d service:(id)service accountUniqueID:(id)iD messageIdentifier:(id)messageIdentifier messageContext:(id)context;
- (void)cancelOpportunisticDataOnService:(id)service withIdentifier:(id)identifier messageContext:(id)context;
- (void)cleanupSession:(id)session messageContext:(id)context;
- (void)cleanupSessionWithInstanceID:(id)d messageContext:(id)context;
- (void)clearIDSStateWithMessageContext:(id)context;
- (void)closeSocketWithOptions:(id)options messageContext:(id)context;
- (void)continuityClientInstanceCreatedWithMessageContext:(id)context;
- (void)continuityStartAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options messageContext:(id)context;
- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask boostedScan:(BOOL)scan duplicates:(BOOL)duplicates messageContext:(id)context;
- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask messageContext:(id)context;
- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan duplicates:(BOOL)duplicates messageContext:(id)context;
- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers messageContext:(id)context;
- (void)continuityStartTrackingPeer:(id)peer forType:(int64_t)type messageContext:(id)context;
- (void)continuityStopAdvertisingOfType:(int64_t)type messageContext:(id)context;
- (void)continuityStopScanningForType:(int64_t)type messageContext:(id)context;
- (void)continuityStopTrackingPeer:(id)peer forType:(int64_t)type messageContext:(id)context;
- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt sessionID:(id)iD messageContext:(id)context;
- (void)createSocketDescriptorFromNWConnection:(id)connection options:(id)options messageContext:(id)context error:(id)error;
- (void)deactivateAndPurgeIdentifyForAccount:(id)account messageContext:(id)context;
- (void)dealloc;
- (void)declineInvitation:(id)invitation messageContext:(id)context;
- (void)declineInvitation:(id)invitation withData:(id)data messageContext:(id)context;
- (void)deletePendingResourceWithMessageGUID:(id)d messageContext:(id)context;
- (void)deliveryController:(id)controller dataReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7;
- (void)deliveryController:(id)controller device:(id)device supportsDirectMessaging:(BOOL)messaging isObliterating:(BOOL)obliterating;
- (void)deliveryController:(id)controller didReceiveMessage:(id)message topic:(id)topic command:(id)command deviceID:(id)d messageID:(id)iD;
- (void)deliveryController:(id)controller messageReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7;
- (void)deliveryController:(id)controller protobufReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7;
- (void)deliveryController:(id)controller receivedAppLevelAckWithTopic:(id)topic deviceID:(id)d btUUID:(id)iD messageID:(id)messageID peerResponseIdentifier:(id)identifier priority:(int64_t)priority connectionType:(int64_t)self0;
- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class;
- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class ofTypes:(id)types;
- (void)deliveryControllerHasSpaceforUrgentMessages:(id)messages dataProtectionClass:(unsigned int)class ofTypes:(id)types;
- (void)didAddPairedDevice:(id)device;
- (void)didRemovePairedDevice:(id)device;
- (void)didUpdatePairedDevice:(id)device;
- (void)didUpdateProtocolForPairedDevice:(id)device;
- (void)disableAccount:(id)account messageContext:(id)context;
- (void)downloadPendingResourceWithMessageGUID:(id)d messageContext:(id)context;
- (void)dropQueuedBroadcastsForServices:(id)services;
- (void)duetInterface:(id)interface resourceAvailabilityChangedForIdentifiers:(id)identifiers;
- (void)enableAccount:(id)account messageContext:(id)context;
- (void)enableP2PlinksForSession:(id)session messageContext:(id)context;
- (void)endSession:(id)session messageContext:(id)context;
- (void)endSession:(id)session withData:(id)data messageContext:(id)context;
- (void)enqueueBroadcast:(id)broadcast forTopic:(id)topic entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities messageContext:(id)context;
- (void)enqueueIncomingMessageBroadcast:(id)broadcast broadcastData:(id)data forTopic:(id)topic entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities messageContext:(id)context;
- (void)failedDecryptingMessage:(id)message reason:(int64_t)reason forGroupID:(id)d onService:(id)service messageContext:(id)context;
- (void)fetchPhoneUserSubscriptionSourceWithRequestUUID:(id)d messageContext:(id)context;
- (void)forceDisableAccount:(id)account messageContext:(id)context;
- (void)forceRemoveAccount:(id)account messageContext:(id)context;
- (void)gameCenterModifyForUserName:(id)name messageContext:(id)context;
- (void)gameCenterSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context;
- (void)gameCenterSignOutWithMessageContext:(id)context;
- (void)generatePhoneAuthenticationSignatureOverData:(id)data withRequestUUID:(id)d messageContext:(id)context;
- (void)getDeliveryStatsWithMessageContext:(id)context;
- (void)getLocalIncomingPowerAssertion:(id)assertion queue:(id)queue;
- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt sessionID:(id)d messageContext:(id)context;
- (void)getProgressUpdateForIdentifier:(id)identifier service:(id)service messageContext:(id)context;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
- (void)handler:(id)handler didReceiveMessage:(id)message forUnknownTopic:(id)topic messageContext:(id)context;
- (void)handler:(id)handler isConnectedChanged:(BOOL)changed;
- (void)handler:(id)handler receivedNoStorageResponseForTopic:(id)topic identifier:(id)identifier messageContext:(id)context;
- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context;
- (void)hardDeregisterWithMessageContext:(id)context;
- (void)homeKitGetAdminAccessTokensWithServiceUserID:(id)d accessoryID:(id)iD pairingToken:(id)token messageContext:(id)context;
- (void)homeKitGetConsentTokensWithServiceUserID:(id)d accessoryIDs:(id)ds adminID:(id)iD messageContext:(id)context;
- (void)homeKitGetServiceUserIDsWithMessageContext:(id)context;
- (void)homeKitGetUserAccessTokensWithServiceUserID:(id)d userID:(id)iD userHandle:(id)handle accessoryRequests:(id)requests messageContext:(id)context;
- (void)iCloudModifyForUserName:(id)name messageContext:(id)context;
- (void)iCloudSignInHackWithUserName:(id)name password:(id)password messageContext:(id)context;
- (void)iCloudSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context;
- (void)iCloudSignOutHackWithMessageContext:(id)context;
- (void)iCloudSignOutWithMessageContext:(id)context;
- (void)iCloudUpdateForUserName:(id)name accountInfo:(id)info messageContext:(id)context;
- (void)iTunesSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context;
- (void)iTunesSignOutWithMessageContext:(id)context;
- (void)incomingAccountSyncMessage:(id)message fromID:(id)d messageContext:(id)context;
- (void)initialLocalSyncCompletedForServices:(id)services messageContext:(id)context;
- (void)initialLocalSyncStartedForServices:(id)services messageContext:(id)context;
- (void)joinGroupSession:(id)session withOptions:(id)options messageContext:(id)context;
- (void)kickGetDependentForAccount:(id)account messageContext:(id)context;
- (void)launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged;
- (void)launchOnDemandServicesForQueuedBroadcastAttempts;
- (void)leaveGroupSession:(id)session participantInfo:(id)info options:(id)options messageContext:(id)context;
- (void)localObjectDiedNotification:(id)notification;
- (void)logState;
- (void)manageDesignatedMembers:(id)members forGroup:(id)group sessionID:(id)d withType:(unsigned __int16)type messageContext:(id)context;
- (void)networkStateChangedForLogTransportHint:(id)hint;
- (void)noteBlockedMessageFromURI:(id)i service:(id)service;
- (void)noteMetricOfType:(int64_t)type context:(id)context serviceName:(id)name messageContext:(id)messageContext;
- (void)notifyClients:(unint64_t)clients;
- (void)openSocketWithOptions:(id)options messageContext:(id)context;
- (void)passwordChanged:(id)changed forAccount:(id)account messageContext:(id)context;
- (void)passwordUpdatedForAccount:(id)account messageContext:(id)context;
- (void)persistPendingInvitation:(id)invitation forService:(id)service withUniqueID:(id)d messageContext:(id)context;
- (void)persistReceivedInvitation:(id)invitation forService:(id)service withUniqueID:(id)d messageContext:(id)context;
- (void)processDirectMessagingCapability:(BOOL)capability;
- (void)processDirectMessagingInfo:(id)info;
- (void)provisionPseudonymForURI:(id)i onAccount:(id)account withProperties:(id)properties requestProperties:(id)requestProperties requestUUID:(id)d messageContext:(id)context;
- (void)queryHashForceUpdate:(id)update fromURI:(id)i messageUUID:(id)d updateHash:(id)hash toURI:(id)rI service:(id)service;
- (void)reRegisterWithUserID:(id)d action:(id)action service:(id)service messageContext:(id)context;
- (void)receivedDirectMsgSocketRequestForService:(id)service stream:(id)stream flags:(unint64_t)flags;
- (void)reconnectSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)refreshBundleIDs;
- (void)regenerateRegisteredIdentityWithMessageContext:(id)context;
- (void)registerAccount:(id)account messageContext:(id)context;
- (void)registerForNotificationsOnServices:(id)services messageContext:(id)context;
- (void)registerForQueryDBCleanup;
- (void)registerForRegistrationAccountStatusMetric;
- (void)registerForRegistrationEventTrackCleanup;
- (void)registerForSenderKeyCleanup;
- (void)registerPluginForGroup:(id)group options:(id)options messageContext:(id)context;
- (void)registrationControlGetRegistrationStateForRegistrationType:(int64_t)type requestID:(id)d messageContext:(id)context;
- (void)registrationControlSetRegistrationStateForRegistrationType:(int64_t)type toState:(int64_t)state requestID:(id)d messageContext:(id)context;
- (void)registrationHashProcessor:(id)processor didFlushCacheForService:(id)service remoteURI:(id)i localURI:(id)rI guid:(id)guid;
- (void)releaseBroadcastAttemptQueue:(int64_t)queue;
- (void)remoteObjectDiedNotification:(id)notification;
- (void)removeAliases:(id)aliases fromAccount:(id)account messageContext:(id)context;
- (void)removeParticipantIDs:(id)ds forGroup:(id)group sessionID:(id)d messageContext:(id)context;
- (void)removePendingInvitation:(id)invitation forService:(id)service messageContext:(id)context;
- (void)removeReceivedInvitation:(id)invitation forService:(id)service messageContext:(id)context;
- (void)removeWakingPushPriorityForServices:(id)services;
- (void)renewPseudonym:(id)pseudonym onAccount:(id)account forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties requestUUID:(id)d messageContext:(id)context;
- (void)repairAccountsWithMessageContext:(id)context;
- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI onAccount:(id)account requestUUID:(id)d messageContext:(id)context;
- (void)reportDailyMetrics;
- (void)reportSpamMessage:(id)message serviceIdentifier:(id)identifier messageContext:(id)context;
- (void)reportiMessageSpam:(id)spam toURI:(id)i messageContext:(id)context;
- (void)reportiMessageSpamCheckUnknown:(id)unknown count:(id)count requestID:(id)d messageContext:(id)context;
- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i messageContext:(id)context;
- (void)requestActiveParticipantsForGroupSession:(id)session messageContext:(id)context;
- (void)requestCarrierTokenForSubscriptionSource:(id)source IMEI:(id)i carrierNonce:(id)nonce requestUUID:(id)d messageContext:(id)context;
- (void)requestEncryptionKeyForGroup:(id)group participants:(id)participants messageContext:(id)context;
- (void)requestPublicKeysForRealTimeEncryption:(id)encryption forAccountWithID:(id)d messageContext:(id)context;
- (void)requestRealTimeEncryptionMasterKeyMaterial:(id)material forGroup:(id)group messageContext:(id)context;
- (void)requestURIsForParticipantIDs:(id)ds withRequestID:(id)d forGroupSession:(id)session messageContext:(id)context;
- (void)requestVMData:(id)data requestID:(id)d messageContext:(id)context;
- (void)resetRealTimeEncryptionKeys:(id)keys forGroup:(id)group messageContext:(id)context;
- (void)respondToRegistrationControlActionWithRequestID:(id)d messageContext:(id)context error:(id)error;
- (void)revokePseudonym:(id)pseudonym onAccount:(id)account requestProperties:(id)properties requestUUID:(id)d messageContext:(id)context;
- (void)sendAllocationRequest:(id)request options:(id)options messageContext:(id)context;
- (void)sendAppAckWithGUID:(id)d toDestination:(id)destination forAccountWithUniqueID:(id)iD connectionType:(int64_t)type messageContext:(id)context;
- (void)sendBatchMessageProcessedContext:(id)context serviceName:(id)name;
- (void)sendCertifiedDeliveryReceipt:(id)receipt serviceName:(id)name messageContext:(id)context;
- (void)sendInvitation:(id)invitation withData:(id)data declineOnError:(BOOL)error messageContext:(id)context;
- (void)sendInvitation:(id)invitation withOptions:(id)options messageContext:(id)context;
- (void)sendMessageWithSendParameters:(id)parameters messageContext:(id)context;
- (void)sendOpportunisticData:(id)data onService:(id)service usingAccountWithUniqueID:(id)d withIdentifier:(id)identifier options:(id)options messageContext:(id)context;
- (void)sendRealTimeEncryptionMKMRecoveryRequest:(id)request toGroup:(id)group;
- (void)sendRealTimeEncryptionMasterKeyMaterial:(id)material toGroup:(id)group messageContext:(id)context;
- (void)sendRealTimeMediaPrekey:(id)prekey toGroup:(id)group messageContext:(id)context;
- (void)sendServerMessage:(id)message command:(id)command usingAccountWithUniqueID:(id)d messageContext:(id)context;
- (void)sendSessionMessage:(id)message toDestinations:(id)destinations forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)sendSocketDescriptorOverXPC:(id)c messageContext:(id)context socketDescriptor:(int)descriptor error:(id)error;
- (void)setAudioEnabled:(BOOL)enabled forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setInviteTimetout:(int64_t)timetout forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setLinkPreferences:(id)preferences service:(id)service messageContext:(id)context;
- (void)setLinkSelectionStrategyWithData:(id)data forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setListenerServices:(id)services commands:(id)commands capabilities:(unsigned int)capabilities messageContext:(id)context;
- (void)setMuted:(BOOL)muted forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setNSUUID:(id)d onDeviceWithUniqueID:(id)iD forService:(id)service messageContext:(id)context;
- (void)setPairedDeviceInfo:(id)info messageContext:(id)context;
- (void)setPassword:(id)password forUsername:(id)username onService:(id)service messageContext:(id)context;
- (void)setPhoneUserSubscriptionSource:(id)source withRequestUUID:(id)d messageContext:(id)context;
- (void)setPreferInfraWiFi:(BOOL)fi service:(id)service messageContext:(id)context;
- (void)setPreferences:(id)preferences forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setQuickRelayUserTypeForSession:(id)session withUserType:(unsigned __int16)type messageContext:(id)context;
- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities forSessionWithUniqueID:(id)d messageContext:(id)context;
- (void)setWakingPushPriority:(int64_t)priority forTopic:(id)topic messageContext:(id)context;
- (void)setupAccountWithLoginID:(id)d serviceName:(id)name accountType:(int)type accountConfig:(id)config authToken:(id)token password:(id)password transactionID:(id)iD messageContext:(id)self0;
- (void)setupNewSessionWithConfiguration:(id)configuration messageContext:(id)context;
- (void)setupRealtimeEncryptionController:(id)controller forAccountWithID:(id)d messageContext:(id)context;
- (void)shutdown;
- (void)signData:(id)data withAlgorithm:(int64_t)algorithm onService:(id)service options:(id)options requestUUID:(id)d messageContext:(id)context;
- (void)startOTRTest:(id)test priority:(int64_t)priority messageContext:(id)context;
- (void)systemDidLeaveDataProtectionLock;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidLock;
- (void)systemDidUnlock;
- (void)testCloudQRConnection:(id)connection messageContext:(id)context;
- (void)triggerFinalDeregisterWithMessageContext:(id)context;
- (void)tryForceFamilyFetchWithMessageContext:(id)context;
- (void)unregisterAccount:(id)account messageContext:(id)context;
- (void)unregisterPluginForGroup:(id)group options:(id)options messageContext:(id)context;
- (void)unvalidateAliases:(id)aliases forAccount:(id)account messageContext:(id)context;
- (void)updateAccount:(id)account withAccountInfo:(id)info messageContext:(id)context;
- (void)updateAuthorizationCredentials:(id)credentials token:(id)token forAccount:(id)account messageContext:(id)context;
- (void)updateMembers:(id)members forGroup:(id)group sessionID:(id)d withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally lightweightStatusDict:(id)dict messageContext:(id)self0;
- (void)updateParticipantData:(id)data forGroup:(id)group sessionID:(id)d withContext:(id)context messageContext:(id)messageContext;
- (void)updateParticipantInfo:(id)info forGroup:(id)group sessionID:(id)d messageContext:(id)context;
- (void)updateParticipantType:(unsigned __int16)type forGroup:(id)group sessionID:(id)d members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict messageContext:(id)self0;
- (void)updateParticipantType:(unsigned __int16)type forGroup:(id)group sessionID:(id)d members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict timestamp:(double)self0 identifier:(unint64_t)self1 messageContext:(id)self2;
- (void)updateSubServices:(id)services forService:(id)service deviceUniqueID:(id)d messageContext:(id)context;
- (void)updateTopics;
- (void)updateUserWithOldUserName:(id)name newUserName:(id)userName messageContext:(id)context;
- (void)validateAliases:(id)aliases forAccount:(id)account messageContext:(id)context;
- (void)validateListenerForLocalObject:(id)object andPerformBlock:(id)block;
- (void)validateProfileForAccount:(id)account messageContext:(id)context;
- (void)verifySignedData:(id)data matchesData:(id)matchesData forAlgorithm:(int64_t)algorithm onService:(id)service tokenUri:(id)uri options:(id)options requestUUID:(id)d messageContext:(id)self0;
- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm onService:(id)service options:(id)options requestUUID:(id)d messageContext:(id)context;
- (void)wakeClientForService:(id)service stream:(id)stream flags:(unint64_t)flags;
- (void)xpcObject:(id)object objectContext:(id)context messageContext:(id)messageContext;
@end

@implementation IDSDaemon

- (void)updateTopics
{
  _pushTopics = [(IDSDaemon *)self _pushTopics];
  v3 = [NSMutableSet setWithSet:_pushTopics];
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableSet);
  copyDictionaryRepresentation = [(IDSPersistentMap *)self->_wakingPushPriorityStore copyDictionaryRepresentation];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = copyDictionaryRepresentation;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v8)
  {
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v7 objectForKey:v11];
        integerValue = [v12 integerValue];
        v14 = v4;
        if (integerValue != 2)
        {
          if (integerValue)
          {
            goto LABEL_10;
          }

          v14 = v5;
        }

        [v14 addObject:v11];
        [v3 removeObject:v11];
LABEL_10:
      }

      v8 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v8);
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    listenerCachedServices = self->_listenerCachedServices;
    *buf = 138413058;
    v39 = listenerCachedServices;
    v40 = 2112;
    v41 = v4;
    v42 = 2112;
    v43 = v3;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating push handling with services %@ waking topics: %@ opportunistic topics: %@ nonwaking topics: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v31 = v3;
    v32 = v5;
    v28 = self->_listenerCachedServices;
    v30 = v4;
    _IDSLogV();
  }

  v17 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort:v28];
  [v17 setWakingTopics:v4 opportunisticTopics:v3 nonWakingTopics:v5 forListener:self];

  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v19 = [(IDSDaemon *)self _ultraConstrainedPushTopicsForTopics:_pushTopics];
  [pushHandlerForAPSDelegatePort setUltraConstrainedTopics:v19 forListener:self];

  _localPushTopics = [(IDSDaemon *)self _localPushTopics];
  v21 = [_localPushTopics mutableCopy];

  [(NSMutableSet *)v21 unionSet:v3];
  [(NSMutableSet *)v21 unionSet:v4];
  [(NSMutableSet *)v21 unionSet:v5];
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Updating local push handling with topics: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v29 = v21;
    _IDSLogV();
  }

  v23 = +[IDSUTunDeliveryController sharedInstance];
  [v23 setTopics:v21];

  v24 = [v3 count];
  v25 = [v4 count];
  v26 = &v24[v25 + [v5 count]] != 0;
  v27 = +[IDSQuickRelayAllocator sharedInstance];
  [v27 enablePushHandler:v26];
}

- (id)_pushTopics
{
  v37 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  serviceController = [(IDSDaemon *)self serviceController];
  allServices = [serviceController allServices];

  v6 = [allServices countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(allServices);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 adHocServiceType] != 5)
        {
          launchDarwinNotification = [v10 launchDarwinNotification];
          if ([launchDarwinNotification length])
          {

LABEL_11:
            [v3 addObject:v10];
            goto LABEL_12;
          }

          launchMachServiceNotification = [v10 launchMachServiceNotification];
          v14 = [launchMachServiceNotification length];

          if (v14)
          {
            goto LABEL_11;
          }

          listenerCachedServices = selfCopy->_listenerCachedServices;
          identifier = [v10 identifier];
          LODWORD(listenerCachedServices) = [(NSMutableSet *)listenerCachedServices containsObject:identifier];

          if (listenerCachedServices)
          {
            goto LABEL_11;
          }
        }

LABEL_12:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [allServices countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v17 = objc_autoreleasePoolPush();
  v18 = +[IDSDAccountController sharedInstance];
  accounts = [v18 accounts];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = accounts;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        v26 = objc_autoreleasePoolPush();
        if ([v25 isRegistered])
        {
          service = [v25 service];
          v28 = [v3 containsObject:service];

          if (v28)
          {
            service2 = [v25 service];
            pushTopic = [service2 pushTopic];
            [v37 addObject:pushTopic];
          }
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v22);
  }

  objc_autoreleasePoolPop(v17);
  stewieCoordinator = [(IDSRegistrationConductor *)selfCopy->_registrationConductor stewieCoordinator];
  if ([stewieCoordinator isStewieEnabled])
  {
    v47[0] = IDSStewieT911Topic;
    v47[1] = IDSStewieT911RSATopic;
    v32 = [NSArray arrayWithObjects:v47 count:2];
    [v37 addObjectsFromArray:v32];

    if (_os_feature_enabled_impl())
    {
      v46[0] = IDSStewieT911ParakeetTopic;
      v46[1] = IDSStewieT911ParakeetIPTopic;
      v33 = [NSArray arrayWithObjects:v46 count:2];
      [v37 addObjectsFromArray:v33];
    }
  }

  return v37;
}

- (id)_localPushTopics
{
  v2 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [v3 accountsWithType:2];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        service = [*(*(&v12 + 1) + 8 * i) service];
        pushTopic = [service pushTopic];
        [v2 addObject:pushTopic];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)refreshBundleIDs
{
  v3 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_listeners;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleID = [*(*(&v17 + 1) + 8 * v8) bundleID];
        [v3 addObject:bundleID];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = [NSPredicate predicateWithBlock:&stru_100BDC240];
  v11 = [v3 filteredArrayUsingPredicate:v10];

  if (v11)
  {
    objc_initWeak(&location, self);
    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006C24;
    block[3] = &unk_100BDA6B0;
    objc_copyWeak(&v15, &location);
    v14 = v11;
    dispatch_async(internalQueue, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_updatePushCommandsLocked
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    listenerCachedCommands = self->_listenerCachedCommands;
    *buf = 138412290;
    v9 = listenerCachedCommands;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Updating push handling with commands %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = self->_listenerCachedCommands;
    _IDSLogV();
  }

  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  _commands = [(IDSDaemon *)self _commands];
  [pushHandlerForAPSDelegatePort setCommands:_commands forListener:self];
}

- (id)_commands
{
  v3 = [[NSMutableSet alloc] initWithObjects:{&off_100C3C0D0, &off_100C3C0E8, &off_100C3C100, &off_100C3C118, &off_100C3C130, &off_100C3C148, &off_100C3C160, &off_100C3C178, &off_100C3C190, &off_100C3C1A8, &off_100C3C1C0, &off_100C3C1D8, &off_100C3C1F0, &off_100C3C208, &off_100C3C220, &off_100C3C238, &off_100C3C250, &off_100C3C268, &off_100C3C280, &off_100C3C298, &off_100C3C2B0, &off_100C3C2C8, &off_100C3C2E0, &off_100C3C2F8, &off_100C3C310, &off_100C3C328, &off_100C3C340, &off_100C3C358, &off_100C3C370, &off_100C3C388, &off_100C3C3A0, &off_100C3C3B8, &off_100C3C3D0, &off_100C3C3E8, &off_100C3C400, &off_100C3C418, &off_100C3C430, &off_100C3C448, &off_100C3C460, &off_100C3C478, &off_100C3C490, &off_100C3C4A8, &off_100C3C4C0, &off_100C3C4D8, &off_100C3C4F0, &off_100C3C508, &off_100C3C520, &off_100C3C538, &off_100C3C550, &off_100C3C568, &off_100C3C580, &off_100C3C598, &off_100C3C5B0, &off_100C3C5C8, &off_100C3C5E0, &off_100C3C5F8, &off_100C3C610, &off_100C3C628, &off_100C3C640, &off_100C3C658, &off_100C3C670}];
  if (_os_feature_enabled_impl())
  {
    [v3 addObject:&off_100C3C6B8];
  }

  if (self->_listenerCachedCommands)
  {
    [v3 unionSet:?];
  }

  return v3;
}

- (void)systemDidLeaveDataProtectionLock
{
  if (!self->_hasProcessedMessagesAfterFirstUnlock)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System has left data protection lock: Checking Migration Status", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = +[IDSDMessageStoreMigrator sharedInstance];
    [v4 migrateClassA];

    v5 = +[IDSDMessageStoreMigrator sharedInstance];
    [v5 migrateClassC];

    if (+[IMUserDefaults isFakingEveryUnlockAsFirstUnlock])
    {
      self->_hasProcessedMessagesAfterFirstUnlock = 0;
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Faking data protection lock as first unlock: Processing stored messages.", v7, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [(IDSDaemon *)self _processStoredMessagesIncludingClassD:0];
    }

    else
    {
      self->_hasProcessedMessagesAfterFirstUnlock = 1;
    }
  }

  [(IDSDaemon *)self _processStoredIncomingLocalMessages];
}

- (void)_processStoredIncomingLocalMessages
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[IDSDaemon(Messaging) _processStoredIncomingLocalMessages]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = "[IDSDaemon(Messaging) _processStoredIncomingLocalMessages]";
    _IDSLogV();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [IDSDMessageStore incomingMessagesUpToLimit:5000 messageTransportType:1 success:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSDaemon *)self _processStoredIncomingLocalMessage:*(*(&v10 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)systemDidUnlock
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System did unlock", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_cleanUpOutgoingMessageDatabaseAndClearStatementCache
{
  [(IDSDaemon *)self _cleanupOutgoingMessageDatabase];

  +[IDSDMessageStore clearStatementCache];
}

- (void)_cleanupOutgoingMessageDatabase
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = objc_autoreleasePoolPush();
  [(IDSDaemon *)self _cleanupOutgoingMessages];
  [(IDSDaemon *)self _cleanupOutgoingQWSMessages];
  [(IDSDaemon *)self _cleanupOutgoingExpiredMessages];
  [(IDSDaemon *)self _cleanupRunawayClientOutgoingMessages];

  objc_autoreleasePoolPop(v4);
}

- (void)_cleanupOutgoingMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning cleanup of outgoing message database", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

  v5 = [IDSDMessageStore allExpiredOutgoingMessages:2500];
  [(IDSDaemon *)self _failSavedMessagesCleanly:v5 withResponseCode:12];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaned up %lu expired messages", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = [v5 count];
    _IDSLogTransport();
  }

  v8 = [IDSDMessageStore uniqueAccountGUIDsForUnsentOutgoingMessages:5000, v11];
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010B80;
  v12[3] = &unk_100BD6E40;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  [v9 performBlockMainQueue:v12];
}

- (void)_cleanupOutgoingQWSMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning cleanup of outgoing message database for quickswitched messages", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

  v5 = [IDSDMessageStore allOutgoingMessagesPendingDeleteWithLimit:2500];
  [(IDSDaemon *)self _failSavedMessagesCleanly:v5 withResponseCode:24];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending cleanup of outgoing message database for quickswitched messages", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }
}

- (unint64_t)_maxOutgoingDatabasesSizeInMB
{
  im_assert_primary_base_queue();
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"max-ids-database-size"];

  if (v3)
  {
    intValue = [v3 intValue];
    if (intValue <= 30)
    {
      v5 = 30;
    }

    else
    {
      v5 = intValue;
    }
  }

  else
  {
    v5 = 50;
  }

  return v5;
}

- (void)_cleanupOutgoingExpiredMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning cleanup of outgoing message database for messages older than 2 days past enqueue date", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-172800.0];
  v7 = IMGetCachedDomainIntForKey();
  if (v7 >= 1)
  {
    v8 = [v5 dateByAddingTimeInterval:-v7];

    v6 = v8;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [v6 timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using Time Interval %f", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    [v6 timeIntervalSinceReferenceDate];
    v19 = v11;
    _IDSLogTransport();
  }

  [v6 timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v14 pairedDeviceUniqueID];
  v16 = [IDSDMessageStore outgoingMessagesWithEnqueueDateOlderThan:v13 notToDestinationDeviceID:pairedDeviceUniqueID andLimit:2500];

  [(IDSDaemon *)self _failSavedMessagesCleanly:v16 withResponseCode:25];
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ending cleanup of %lu outgoing message database for older than 2 days past enqueue date", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    [v16 count];
    _IDSLogTransport();
  }
}

- (void)_cleanupRunawayClientOutgoingMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011130;
  v5[3] = &unk_100BD6ED0;
  v5[4] = self;
  [v4 performBlockMainQueue:v5];
}

- (unint64_t)_maxMessagesForRunawayClientConsideration
{
  im_assert_primary_base_queue();
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"max-ids-database-client-enqueued"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 2000;
  }

  return intValue;
}

- (void)_cleanupIncomingMessageDatabase
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:100];

  v4 = objc_autoreleasePoolPush();
  [(IDSDaemon *)self _cleanupExpiredIncomingMessages];

  objc_autoreleasePoolPop(v4);
}

- (void)_cleanupExpiredIncomingMessages
{
  v2 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v2 assertRunningWithPriority:100];

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning cleanup of outgoing message database", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = +[IDSServerBag sharedInstance];
  v7 = [v6 objectForKey:@"incoming-message-cleanup-threshold"];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 2592000.0;
  }

  [IDSDMessageStore deleteExpiredIncomingMessagesOlderThan:500 withLimit:v5 - v9];
}

+ (id)sharedInstance
{
  if (qword_100CBD340 != -1)
  {
    sub_100019E34();
  }

  v3 = qword_100CBD348;

  return v3;
}

- (BOOL)_isUnderFirstDataProtectionLock
{
  if (CUTIsInternalInstall() && +[IMUserDefaults isFakingEveryUnlockAsFirstUnlock])
  {
    v2 = +[IMSystemMonitor sharedInstance];
    isUnderDataProtectionLock = [v2 isUnderDataProtectionLock];
  }

  else
  {
    v2 = +[IMSystemMonitor sharedInstance];
    isUnderDataProtectionLock = [v2 isUnderFirstDataProtectionLock];
  }

  v4 = isUnderDataProtectionLock;

  return v4;
}

- (void)setupRealtimeEncryptionController:(id)controller forAccountWithID:(id)d messageContext:(id)context
{
  controllerCopy = controller;
  dCopy = d;
  contextCopy = context;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting up the realtime encryption controller for the unique ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = controllerCopy;
    _IDSLogV();
  }

  v10 = +[IDSGroupEncryptionController sharedInstance];
  if (!v10)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = @"IDSDaemon";
      v31 = 2112;
      v32 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not initialize the realtime encryption controller for the unique ID: %@, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v26 = @"IDSDaemon";
      v27 = controllerCopy;
      _IDSLogTransport();
    }
  }

  v12 = [IDSDAccountController sharedInstance:v26];
  v13 = [v12 accountWithUniqueID:dCopy];

  primaryRegistration = [v13 primaryRegistration];
  pushToken = [primaryRegistration pushToken];
  service = [v13 service];
  identifier = [service identifier];
  v18 = [IDSPushToken pushTokenWithData:pushToken withServiceLoggingHint:identifier];

  prefixedURIStringsFromRegistration = [v13 prefixedURIStringsFromRegistration];
  firstObject = [prefixedURIStringsFromRegistration firstObject];
  service2 = [v13 service];
  identifier2 = [service2 identifier];
  v23 = [IDSURI URIWithPrefixedURI:firstObject withServiceLoggingHint:identifier2];
  [v10 setAccount:dCopy fromURI:v23 forGroup:controllerCopy];

  v24 = [v10 createRealTimeEncryptionFullIdentityForDevice:v18 completionBlock:0];
}

- (void)sendRealTimeMediaPrekey:(id)prekey toGroup:(id)group messageContext:(id)context
{
  prekeyCopy = prekey;
  groupCopy = group;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = prekeyCopy;
    v25 = 2112;
    v26 = groupCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending the device prekey for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = prekeyCopy;
    v22 = groupCopy;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v21];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:groupCopy];

    if (v13)
    {
      destinations = [v13 destinations];
      allObjects = [destinations allObjects];
      uniqueID = [v13 uniqueID];
      destinationsLightweightStatus = [v13 destinationsLightweightStatus];
      [v11 setMembers:allObjects forGroup:groupCopy sessionID:uniqueID lightweightStatusDict:destinationsLightweightStatus];

      uniqueID2 = [v13 uniqueID];
      [v11 sendPublicKeyToGroup:groupCopy sessionID:uniqueID2];
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = @"IDSDaemon";
        v25 = 2112;
        v26 = groupCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ - Could not find the session for the group: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = @"IDSDaemon";
      v25 = 2112;
      v26 = prekeyCopy;
      v27 = 2112;
      v28 = groupCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller for the unique ID: %@, failing to send the prekey to group %@...", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)requestPublicKeysForRealTimeEncryption:(id)encryption forAccountWithID:(id)d messageContext:(id)context
{
  encryptionCopy = encryption;
  dCopy = d;
  contextCopy = context;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getting public keys for the real-time encryption...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v10 = +[IDSGroupEncryptionController sharedInstance];
  if (v10)
  {
    v11 = +[IDSDAccountController sharedInstance];
    v12 = [v11 accountWithUniqueID:dCopy];

    v13 = objc_alloc_init(IMMessageContext);
    [v13 setShouldBoost:1];
    v14 = +[IDSDaemon sharedInstance];
    service = [v12 service];
    pushTopic = [service pushTopic];
    v17 = [v14 broadcasterForTopic:pushTopic entitlement:kIDSTestToolEntitlement command:0 messageContext:v13];

    publicKeys = [v10 publicKeys];
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19)
    {
      v20 = xpc_int64_create(0);
      xpc_dictionary_set_value(v19, "object", v20);

      IMInsertBoolsToXPCDictionary();
      v21 = [NSMutableDictionary dictionary:1];
      CFDictionarySetValue(v21, @"object-type", @"public-keys");
      if (publicKeys)
      {
        CFDictionarySetValue(v21, @"public-keys", publicKeys);
      }

      v23 = [(__CFDictionary *)v21 copy];
      IMInsertKeyedCodableObjectsToXPCDictionary();

      [v17 sendXPCObject:{v19, v23, 0}];
    }
  }

  else
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = @"IDSDaemon";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)sendRealTimeEncryptionMasterKeyMaterial:(id)material toGroup:(id)group messageContext:(id)context
{
  materialCopy = material;
  groupCopy = group;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = materialCopy;
    v25 = 2112;
    v26 = groupCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending the master key material for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = materialCopy;
    v18 = groupCopy;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v17];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:groupCopy];

    if (v13)
    {
      v14 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A0D0;
      block[3] = &unk_100BD6E18;
      v20 = v11;
      v21 = groupCopy;
      v22 = v13;
      dispatch_async(v14, block);
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = @"IDSDaemon";
        v25 = 2112;
        v26 = groupCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ - Could not find the session for the group: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = @"IDSDaemon";
      v25 = 2112;
      v26 = materialCopy;
      v27 = 2112;
      v28 = groupCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller for the unique ID: %@, failing to send the master key material to group: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)sendRealTimeEncryptionMKMRecoveryRequest:(id)request toGroup:(id)group
{
  requestCopy = request;
  groupCopy = group;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = requestCopy;
    v21 = 2112;
    v22 = groupCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sending the master key material recovery request for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = requestCopy;
    v15 = groupCopy;
    _IDSLogV();
  }

  v8 = [IDSGroupEncryptionController sharedInstance:v14];
  if (v8)
  {
    v9 = +[IDSDSessionController sharedInstance];
    v10 = [v9 sessionWithUniqueID:groupCopy];

    if (v10)
    {
      v11 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A530;
      block[3] = &unk_100BD6E40;
      v17 = v8;
      v18 = groupCopy;
      dispatch_async(v11, block);
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = @"IDSDaemon";
        v21 = 2112;
        v22 = groupCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ - Could not find the session for the group: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = @"IDSDaemon";
      v21 = 2112;
      v22 = requestCopy;
      v23 = 2112;
      v24 = groupCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller for the unique ID: %@, failing to send the master key material to group: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)requestRealTimeEncryptionMasterKeyMaterial:(id)material forGroup:(id)group messageContext:(id)context
{
  materialCopy = material;
  groupCopy = group;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = materialCopy;
    v25 = 2112;
    v26 = groupCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request the master key material(MKM) for unique ID: %@ group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = materialCopy;
    v18 = groupCopy;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v17];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:groupCopy];

    if (v13)
    {
      v14 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A964;
      block[3] = &unk_100BD6E18;
      v20 = v11;
      v21 = groupCopy;
      v22 = v13;
      dispatch_async(v14, block);
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = @"IDSDaemon";
        v25 = 2112;
        v26 = groupCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ - Could not find the session for the group: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = @"IDSDaemon";
      v25 = 2112;
      v26 = materialCopy;
      v27 = 2112;
      v28 = groupCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller for the unique ID: %@, failing to send the master key material to group: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)resetRealTimeEncryptionKeys:(id)keys forGroup:(id)group messageContext:(id)context
{
  keysCopy = keys;
  groupCopy = group;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = keysCopy;
    v20 = 2112;
    v21 = groupCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resetting all keys for the unique ID: %@ group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = keysCopy;
    v17 = groupCopy;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v16];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:groupCopy];

    if (v13)
    {
      [v11 resetKeysForGroup:groupCopy shouldRemoveCurrentParticipants:1];
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = @"IDSDaemon";
        v20 = 2112;
        v21 = groupCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find the session for the group: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = keysCopy;
      v22 = 2112;
      v23 = groupCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not get the realtime encryption controller for the unique ID: %@, failing to send the master key material to group: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (id)cloudRelayRegisteredAccountWithError:(id *)error
{
  v4 = +[IDSDAccountController sharedInstance];
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithIdentifier:@"com.apple.private.alloy.multiplex1"];
  v7 = [v4 appleIDAccountOnService:v6];

  if (v7 && ([v7 isRegistered] & 1) != 0)
  {
    v8 = v7;
  }

  else if (error)
  {
    v9 = [NSError alloc];
    v8 = 0;
    *error = [v9 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)homeKitGetServiceUserIDsWithMessageContext:(id)context
{
  contextCopy = context;
  v17 = 0;
  v5 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v17];
  v6 = v17;
  if (v6)
  {
    localObject = [contextCopy localObject];
    registration = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

    if (registration)
    {
      [registration serviceUserIDs:0 error:v6];
    }
  }

  else
  {
    registration = [v5 registration];
    v9 = objc_alloc_init(IDSHomeKitCloudRelayServiceUserIDsMessage);
    v10 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayServiceUserIDsMessage setIdentityPrivateKey:](v9, "setIdentityPrivateKey:", [v10 identityPrivateKey]);

    registrationCert = [registration registrationCert];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setIDCertificate:registrationCert];

    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setSubService:@"com.apple.private.alloy.willow"];
    dsHandle = [registration dsHandle];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setUserID:dsHandle];

    v13 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    pushToken = [v13 pushToken];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setPushToken:pushToken];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003278F8;
    v15[3] = &unk_100BD7598;
    v15[4] = self;
    v16 = contextCopy;
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setCompletionBlock:v15];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v9];
  }
}

- (void)homeKitGetAdminAccessTokensWithServiceUserID:(id)d accessoryID:(id)iD pairingToken:(id)token messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  contextCopy = context;
  v30 = 0;
  v14 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v30];
  v15 = v30;
  if (v15)
  {
    localObject = [contextCopy localObject];
    registration = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

    if (registration)
    {
      [registration adminAccessTokens:0 error:v15];
    }
  }

  else
  {
    registration = [v14 registration];
    v18 = objc_alloc_init(IDSHomeKitCloudRelayAdminAccessTokenMessage);
    v19 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayAdminAccessTokenMessage setIdentityPrivateKey:](v18, "setIdentityPrivateKey:", [v19 identityPrivateKey]);

    registrationCert = [registration registrationCert];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setIDCertificate:registrationCert];

    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setServiceUserID:dCopy];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setAccessoryID:iDCopy];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setPairingToken:tokenCopy];
    v21 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v21 pushToken];
    v22 = contextCopy;
    v23 = v14;
    v24 = tokenCopy;
    v25 = iDCopy;
    v27 = v26 = dCopy;
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setPushToken:v27];

    dCopy = v26;
    iDCopy = v25;
    tokenCopy = v24;
    v14 = v23;
    contextCopy = v22;
    v15 = 0;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100327D2C;
    v28[3] = &unk_100BD7598;
    v28[4] = self;
    v29 = contextCopy;
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setCompletionBlock:v28];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v18];
  }
}

- (void)homeKitGetConsentTokensWithServiceUserID:(id)d accessoryIDs:(id)ds adminID:(id)iD messageContext:(id)context
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  contextCopy = context;
  v30 = 0;
  v14 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v30];
  v15 = v30;
  if (v15)
  {
    localObject = [contextCopy localObject];
    registration = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

    if (registration)
    {
      [registration consentTokens:0 error:v15];
    }
  }

  else
  {
    registration = [v14 registration];
    v18 = objc_alloc_init(IDSHomeKitCloudRelayConsentTokensMessage);
    v19 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayConsentTokensMessage setIdentityPrivateKey:](v18, "setIdentityPrivateKey:", [v19 identityPrivateKey]);

    registrationCert = [registration registrationCert];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setIDCertificate:registrationCert];

    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setServiceUserID:dCopy];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setAdminID:iDCopy];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setAccessoryIDs:dsCopy];
    v21 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v21 pushToken];
    v22 = contextCopy;
    v23 = v14;
    v24 = iDCopy;
    v25 = dsCopy;
    v27 = v26 = dCopy;
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setPushToken:v27];

    dCopy = v26;
    dsCopy = v25;
    iDCopy = v24;
    v14 = v23;
    contextCopy = v22;
    v15 = 0;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100328280;
    v28[3] = &unk_100BD7598;
    v28[4] = self;
    v29 = contextCopy;
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setCompletionBlock:v28];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v18];
  }
}

- (void)homeKitGetUserAccessTokensWithServiceUserID:(id)d userID:(id)iD userHandle:(id)handle accessoryRequests:(id)requests messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  requestsCopy = requests;
  contextCopy = context;
  v33 = 0;
  v17 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v33];
  v18 = v33;
  if (v18)
  {
    localObject = [contextCopy localObject];
    registration = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

    if (registration)
    {
      [registration userAccessTokens:0 error:v18];
    }
  }

  else
  {
    registration = [v17 registration];
    v21 = objc_alloc_init(IDSHomeKitCloudRelayUserAccessTokensMessage);
    +[IDSRegistrationKeyManager sharedInstance];
    v29 = dCopy;
    v22 = v30 = handleCopy;
    -[IDSHomeKitCloudRelayUserAccessTokensMessage setIdentityPrivateKey:](v21, "setIdentityPrivateKey:", [v22 identityPrivateKey]);

    registrationCert = [registration registrationCert];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setIDCertificate:registrationCert];

    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setServiceUserID:v29];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setUserID:iDCopy];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setUserHandle:handleCopy];
    v24 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v24 pushToken];
    v25 = v17;
    v26 = requestsCopy;
    v28 = v27 = iDCopy;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setPushToken:v28];

    iDCopy = v27;
    requestsCopy = v26;
    v17 = v25;

    dCopy = v29;
    handleCopy = v30;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setAccessoryRequests:requestsCopy];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003286BC;
    v31[3] = &unk_100BD7598;
    v31[4] = self;
    v32 = contextCopy;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setCompletionBlock:v31];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v21];
  }
}

- (void)requestVMData:(id)data requestID:(id)d messageContext:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSVMEntitlement];

  if (v12)
  {
    v13 = [[IDSVMRequest alloc] initWithDataRepresentation:dataCopy];
    v14 = v13;
    if (v13)
    {
      if ([(IDSVMRequest *)v13 purpose]== 1)
      {
        v15 = objc_alloc_init(IDSVMRegistrationResponse);
        dataRepresentation = [(IDSVMRegistrationResponse *)v15 dataRepresentation];

        [(IDSDaemon *)self _respondToVMDataRequestWithData:dataRepresentation requestID:dCopy error:0 messageContext:contextCopy];
        goto LABEL_13;
      }

      v18 = [NSError errorWithDomain:IDSVMErrorDomain code:2 userInfo:0];
      v19 = +[IMRGLog vm];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = [NSError errorWithDomain:IDSVMErrorDomain code:2 userInfo:0];
      v19 = +[IMRGLog vm];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v20 = 138412546;
        v21 = dCopy;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RequestID %@ client gave an unsupported request to the daemon. Returning error %@", &v20, 0x16u);
      }
    }

    [(IDSDaemon *)self _respondToVMDataRequestWithData:0 requestID:dCopy error:v18 messageContext:contextCopy];
    goto LABEL_13;
  }

  v14 = [NSError errorWithDomain:IDSVMErrorDomain code:1 userInfo:0];
  v17 = +[IMRGLog vm];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = dCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "RequestID %@ client is unentitled. Returning error %@", &v20, 0x16u);
  }

  [(IDSDaemon *)self _respondToVMDataRequestWithData:0 requestID:dCopy error:v14 messageContext:contextCopy];
LABEL_13:
}

- (void)_respondToVMDataRequestWithData:(id)data requestID:(id)d error:(id)error messageContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  dataCopy = data;
  [contextCopy setReply:1];
  localObject = [contextCopy localObject];
  v13 = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

  [v13 vmDataResponse:dataCopy forRequestID:dCopy withError:0];
}

- (void)appleCareSignInUserName:(id)name DSID:(id)d authToken:(id)token requestID:(id)iD messageContext:(id)context
{
  nameCopy = name;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v18 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSAppleCareServicesEntitlement];

  if (v18)
  {
    _stripFZIDPrefix = [dCopy _stripFZIDPrefix];

    v20 = [NSString stringWithFormat:@"D:%@", _stripFZIDPrefix];
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v20, kIDSServiceDefaultsAuthorizationIDKey, nameCopy, kIDSServiceDefaultsSelfHandleKey, 0];

    v22 = +[IDSDRegistrationListener sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1003FD3D4;
    v26[3] = &unk_100BDB148;
    v26[4] = self;
    v27 = iDCopy;
    v28 = contextCopy;
    v23 = [v22 addBlockForRegistrationCompletion:v26];

    registrationConductor = [(IDSDaemon *)self registrationConductor];
    [registrationConductor setShouldSupressRepairLogic:1];

    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignInWithUsername:nameCopy authToken:tokenCopy password:0 accountInfo:v21 accountStatus:0 handles:0];

    dCopy = _stripFZIDPrefix;
  }
}

- (void)appleCareSignOutUserWithRequestID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSAppleCareServicesEntitlement];

  if (v8)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignOut];

    [(IDSDaemon *)self _respondToAppleCareRequestID:dCopy withMessageContext:contextCopy error:0];
  }
}

- (void)_respondToAppleCareRequestID:(id)d withMessageContext:(id)context error:(id)error
{
  errorCopy = error;
  dCopy = d;
  localObject = [context localObject];
  v11 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];

  [v11 applecareResponseForRequestID:dCopy withError:errorCopy];
}

- (void)reportSpamMessage:(id)message serviceIdentifier:(id)identifier messageContext:(id)context
{
  messageCopy = message;
  identifierCopy = identifier;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412546;
    v33 = localObject;
    v34 = 2112;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Told to report spam with localObject %@ for service: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject2 = [contextCopy localObject];
    v30 = identifierCopy;
    _IDSLogV();
  }

  localObject3 = [contextCopy localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSReportSpamEntitlement];

  if (v14)
  {
    if ([(IDSDaemon *)self _isSpamReportingV1ServerDisabled])
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDS Server reports that general spam reporting v1 is disabled.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
LABEL_12:
        _IDSLogV();
      }
    }

    else
    {
      v17 = [messageCopy objectForKey:kIDSGeneralSpamReportRecipientURIKey];
      _stripFZIDPrefix = [v17 _stripFZIDPrefix];
      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      v19 = identifierCopy;
      v20 = +[IDSDServiceController sharedInstance];
      v21 = [v20 serviceWithIdentifier:v19];

      identifier = v19;
      if ([v21 adHocServiceType])
      {
        v23 = +[IDSDServiceController sharedInstance];
        v24 = [v23 primaryServiceForAdhocServiceType:{objc_msgSend(v21, "adHocServiceType")}];

        identifier = [v24 identifier];
      }

      v25 = [[NSMutableDictionary alloc] initWithDictionary:messageCopy];
      [v25 setObject:v19 forKey:kIDSGeneralSpamReportSubServiceKey];
      [v25 setObject:identifier forKey:kIDSGeneralSpamReportTopLevelServiceKey];
      v26 = +[IDSDAccountController sharedInstance];
      v27 = [v26 accountWithServiceName:v19 aliasURI:_bestGuessURI];

      if (v27)
      {
        [v27 reportMessage:v25 toURI:_bestGuessURI];
      }

      else
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v19;
          v34 = 2112;
          v35 = _bestGuessURI;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Couldn't find account with alias for service {serviceIdentifier: %@, alias: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Process not entitled to report spam", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_12;
    }
  }
}

- (BOOL)_isSpamReportingV1ServerDisabled
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"ids-general-spam-report-v1-is-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (bOOLValue)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with v1 spam reporting value isDisabled: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (IDSDaemon)init
{
  v10.receiver = self;
  v10.super_class = IDSDaemon;
  v2 = [(IDSDaemon *)&v10 init];
  v3 = v2;
  if (v2)
  {
    systemMonitor = [(IDSDaemon *)v2 systemMonitor];
    systemIsShuttingDown = [systemMonitor systemIsShuttingDown];

    if (!systemIsShuttingDown)
    {
      [(IDSDaemon *)v3 _performSetup];
      v7 = v3;
      goto LABEL_9;
    }

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "System is shutting down, not creating daemon", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_performSetup
{
  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [pushHandlerForAPSDelegatePort setShouldWaitToSetTopics:1];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[FTDeviceSupport sharedInstance];
    deviceInformationString = [v5 deviceInformationString];
    *buf = 138412546;
    *&buf[4] = deviceInformationString;
    *&buf[12] = 1024;
    *&buf[14] = geteuid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "identityservicesd launched (%@) user: %d", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = +[FTDeviceSupport sharedInstance];
      deviceInformationString2 = [v7 deviceInformationString];
      v139 = geteuid();
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v8 = [FTDeviceSupport sharedInstance:deviceInformationString2];
        deviceInformationString2 = [v8 deviceInformationString];
        v139 = geteuid();
        _IDSLogV();
      }
    }
  }

  v9 = [IMRGLog registration:deviceInformationString2];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[FTDeviceSupport sharedInstance];
    deviceInformationString3 = [v10 deviceInformationString];
    v12 = geteuid();
    *buf = 138412546;
    *&buf[4] = deviceInformationString3;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "identityservicesd launched: (%@) user: %d", buf, 0x12u);
  }

  v13 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v13 isInternalInstall];

  if (isInternalInstall)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Oct 11 2025";
      *&buf[12] = 2080;
      *&buf[14] = "00:26:36";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    (build time %s %s)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v138 = "Oct 11 2025";
        v140 = "00:26:36";
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v138 = "Oct 11 2025";
          v140 = "00:26:36";
          _IDSLogV();
        }
      }
    }

    v16 = [IMRGLog registration:v138];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Oct 11 2025";
      *&buf[12] = 2080;
      *&buf[14] = "00:26:36";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "    (build time %s %s)", buf, 0x16u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Opening up the grant MIG port", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    daemonMIGInterface = [(IDSDaemon *)self daemonMIGInterface];
    [daemonMIGInterface setDelegate:self];
    [daemonMIGInterface acceptIncomingGrantRequests];
    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      [daemonMIGInterface launchSim2HostServer];
    }

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Opening up the NSXPC Interface", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    daemonXPCInterface = [(IDSDaemon *)self daemonXPCInterface];
    daemonMIGQueryInterface = [(IDSDaemon *)self daemonMIGQueryInterface];
    [daemonMIGQueryInterface setDelegate:self];
    [daemonMIGQueryInterface acceptIncomingGrantRequests];
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Now accepting query grants, setup complete", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Loading services", buf, 2u);
  }

  serviceController = [(IDSDaemon *)self serviceController];
  v25 = +[IMRGLog registration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Done loading services", buf, 2u);
  }

  v26 = +[IMRGLog registration];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Bringing up capabilities", buf, 2u);
  }

  daemonCapabilities = [(IDSDaemon *)self daemonCapabilities];
  v28 = +[IMRGLog registration];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Bringing up restrictions", buf, 2u);
  }

  restrictions = [(IDSDaemon *)self restrictions];
  [IMLocalObject _setExceptionHandlingDisabled:1];
  v30 = objc_alloc_init(NSDate);
  birthDate = self->_birthDate;
  self->_birthDate = v30;

  objc_initWeak(&location, self);
  v32 = objc_alloc_init(BKSApplicationStateMonitor);
  stateMonitor = self->_stateMonitor;
  self->_stateMonitor = v32;

  v34 = self->_stateMonitor;
  v144[0] = _NSConcreteStackBlock;
  v144[1] = 3221225472;
  v144[2] = sub_100006380;
  v144[3] = &unk_100BDBEB8;
  objc_copyWeak(&v145, &location);
  [v34 setHandler:v144];
  v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v36 = im_primary_base_queue();
  v37 = dispatch_queue_create_with_target_V2("IDSDaemon internal queue", v35, v36);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v37;

  v39 = objc_alloc_init(IDSIPCBroadcaster);
  notifier = self->_notifier;
  self->_notifier = v39;

  memset(buf, 170, 16);
  pthread_mutexattr_init(buf);
  pthread_mutexattr_settype(buf, 2);
  pthread_mutex_init(&self->_listenerLock, buf);
  pthread_mutexattr_destroy(buf);
  v41 = [[NSMutableArray alloc] initWithCapacity:2];
  listeners = self->_listeners;
  self->_listeners = v41;

  v43 = objc_alloc_init(NSMutableDictionary);
  directDataPathSockets = self->_directDataPathSockets;
  self->_directDataPathSockets = v43;

  v45 = [IDSRateLimiter alloc];
  v46 = [IDSServerBag sharedInstanceForBagType:0];
  v47 = [v46 objectForKey:@"reg-update-limit"];

  if (v47)
  {
    integerValue = [v47 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  v49 = [IDSServerBag sharedInstanceForBagType:0];
  v50 = [v49 objectForKey:@"reg-update-time-limit"];

  if (v50)
  {
    [v50 doubleValue];
    v52 = v51;
  }

  else
  {
    v52 = 3600.0;
  }

  v53 = [v45 initWithLimit:integerValue timeLimit:v52];
  v54 = [IDSRateLimiter alloc];
  v55 = [IDSServerBag sharedInstanceForBagType:0];
  v56 = [v55 objectForKey:@"did-flush-cache-limit"];

  if (v56)
  {
    integerValue2 = [v56 integerValue];
  }

  else
  {
    integerValue2 = 1;
  }

  v58 = [IDSServerBag sharedInstanceForBagType:0];
  v59 = [v58 objectForKey:@"did-flush-cache-time-limit"];

  if (v59)
  {
    [v59 doubleValue];
    v61 = v60;
  }

  else
  {
    v61 = 3600.0;
  }

  v62 = [v54 initWithLimit:integerValue2 timeLimit:v61];
  v63 = [IDSRegistrationHashProcessor alloc];
  accountController = [(IDSDaemon *)self accountController];
  v65 = +[IDSPeerIDManager sharedInstance];
  v66 = +[IDSRegistrationKeyManager sharedInstance];
  v67 = [(IDSRegistrationHashProcessor *)v63 initWithAccountController:accountController peerIDManager:v65 negativeRegistrationUpdateCache:v53 notifyDidFlushCacheRateLimiter:v62 registrationKeyManager:v66];
  queryUpdateNotifier = self->_queryUpdateNotifier;
  self->_queryUpdateNotifier = v67;

  v69 = NSHomeDirectory();
  v147[0] = v69;
  v147[1] = @"/Library/IdentityServices/";
  v70 = [NSArray arrayWithObjects:v147 count:2];
  v71 = [NSURL fileURLWithPathComponents:v70];
  path = [v71 path];

  v73 = [IDSQuerySDPersistenceManager alloc];
  v74 = +[IDSDServiceController sharedInstance];
  v75 = [(IDSQuerySDPersistenceManager *)v73 initWithFilePath:path serviceController:v74];
  persistenceManager = self->_persistenceManager;
  self->_persistenceManager = v75;

  if (_os_feature_enabled_impl())
  {
    v77 = +[IDSPeerIDManager sharedInstance];
    [v77 setPersistenceManager:self->_persistenceManager];
  }

  if (_os_feature_enabled_impl())
  {
    v78 = [IDSSenderKeyDistributionManager alloc];
    v79 = [(IDSSenderKeyDistributionManager *)v78 initWithPersistenceManager:self->_persistenceManager service:IDSServiceNameiMessage];
    senderKeyDistributionManager = self->_senderKeyDistributionManager;
    self->_senderKeyDistributionManager = v79;

    v81 = +[IDSDeliveryController sharedInstance];
    [v81 setSenderKeyDistributionManager:self->_senderKeyDistributionManager];
  }

  v82 = objc_alloc_init(IDSServerRateLimitConfiguration);
  serverRateLimitConfiguration = self->_serverRateLimitConfiguration;
  self->_serverRateLimitConfiguration = v82;

  v84 = +[IDSDeliveryController sharedInstance];
  [v84 setServerRateLimitConfiguration:self->_serverRateLimitConfiguration];

  v85 = objc_alloc_init(IDSCloudTelemetryMetricReporter);
  cloudTelemetryMetricReporter = self->_cloudTelemetryMetricReporter;
  self->_cloudTelemetryMetricReporter = v85;

  [(IDSRegistrationHashProcessor *)self->_queryUpdateNotifier setDelegate:self];
  v87 = objc_alloc_init(IDSCertifiedDeliveryReplayCommitter);
  replayStateCommitter = self->_replayStateCommitter;
  self->_replayStateCommitter = v87;

  v89 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  homeKitMessageDelivery = self->_homeKitMessageDelivery;
  self->_homeKitMessageDelivery = v89;

  [(FTMessageDelivery *)self->_homeKitMessageDelivery setUserAgent:@"com.apple.homeKit-cloud-relay"];
  v91 = self->_homeKitMessageDelivery;
  v92 = +[IDSRegistrationRequestTracker sharedInstance];
  [(FTMessageDelivery *)v91 addRequestObserver:v92];

  v93 = objc_alloc_init(IDSOpportunisticDeliveryController);
  opportunisticDeliveryController = self->_opportunisticDeliveryController;
  self->_opportunisticDeliveryController = v93;

  systemMonitor = [(IDSDaemon *)self systemMonitor];
  [systemMonitor setActive:1];

  systemMonitor2 = [(IDSDaemon *)self systemMonitor];
  [systemMonitor2 setReceivesMemoryWarnings:1];

  systemMonitor3 = [(IDSDaemon *)self systemMonitor];
  [systemMonitor3 setWatchesSystemLockState:1];

  systemMonitor4 = [(IDSDaemon *)self systemMonitor];
  [systemMonitor4 addListener:self];

  systemMonitor5 = [(IDSDaemon *)self systemMonitor];
  [systemMonitor5 setWatchesDataProtectionLockState:1];

  uTunController = [(IDSDaemon *)self uTunController];
  pthread_mutex_init(&self->_localIncomingGUIDsLock, 0);
  pthread_mutex_init(&self->_incomingLocalPowerAssertionLock, 0);
  v101 = objc_alloc_init(IDSRegistrationConductor);
  registrationConductor = self->_registrationConductor;
  self->_registrationConductor = v101;

  [(IDSRegistrationConductor *)self->_registrationConductor setup];
  v103 = objc_alloc_init(IDSTransparentEndpointViewer);
  transparentEndpointViewer = self->_transparentEndpointViewer;
  self->_transparentEndpointViewer = v103;

  v105 = [IDSRateLimiter alloc];
  v106 = [IDSServerBag sharedInstanceForBagType:0];
  v107 = [v106 objectForKey:@"clear-cache-on-ratchet-errors-limit"];

  if (v107)
  {
    integerValue3 = [v107 integerValue];
  }

  else
  {
    integerValue3 = 1;
  }

  v109 = [IDSServerBag sharedInstanceForBagType:0];
  v110 = [v109 objectForKey:@"clear-cache-on-ratchet-errors-time-limit"];

  if (v110)
  {
    [v110 doubleValue];
    v112 = v111;
  }

  else
  {
    v112 = 1800.0;
  }

  v113 = [v105 initWithLimit:integerValue3 timeLimit:v112];
  decryptionErrorCacheClearRateLimiter = self->_decryptionErrorCacheClearRateLimiter;
  self->_decryptionErrorCacheClearRateLimiter = v113;

  v115 = [IDSRateLimiter alloc];
  v116 = [IDSServerBag sharedInstanceForBagType:0];
  v117 = [v116 objectForKey:@"listener-logging-limit"];

  if (v117)
  {
    integerValue4 = [v117 integerValue];
  }

  else
  {
    integerValue4 = 1;
  }

  v119 = [IDSServerBag sharedInstanceForBagType:0];
  v120 = [v119 objectForKey:@"listener-logging-time-limit"];

  if (v120)
  {
    [v120 doubleValue];
    v122 = v121;
  }

  else
  {
    v122 = 3600.0;
  }

  v123 = [v115 initWithLimit:integerValue4 timeLimit:v122];
  listenerLoggingRateLimiter = self->_listenerLoggingRateLimiter;
  self->_listenerLoggingRateLimiter = v123;

  v125 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100427998;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v125, block);

  v126 = +[IDSDaemonPriorityQueueController sharedInstance];
  v127 = [v126 queueForPriority:100];
  v128 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v127);
  v129 = qword_100CBD350;
  qword_100CBD350 = v128;

  v130 = qword_100CBD350;
  if (qword_100CBD350)
  {
    v131 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v130, v131, 0x8BB2C97000uLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004288C8;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(qword_100CBD350, handler);
    dispatch_resume(qword_100CBD350);
  }

  if (_os_feature_enabled_impl())
  {
    v132 = +[IDSDiagnosticInfoHandler sharedInstance];
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_100428A30;
    v141[3] = &unk_100BDBF58;
    v141[4] = self;
    v133 = im_primary_queue();
    [v132 registerDiagnosticInfoBlock:v141 title:@"IDS-Pref-List" queue:v133];
  }

  else
  {
    v134 = im_primary_queue();
    sub_1006085C4(&stru_100BDBF98, @"IDS-Pref-List", v134);
  }

  if (_os_feature_enabled_impl())
  {
    v135 = +[IDSDiagnosticInfoHandler sharedInstance];
    v136 = im_primary_queue();
    [v135 registerDiagnosticInfoBlock:&stru_100BDBFD8 title:@"IDS-Registration-State-Dump" queue:v136];
  }

  objc_destroyWeak(&v145);
  objc_destroyWeak(&location);
}

- (void)_resetPreferences
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting preferences to 0 for all services", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = +[IDSLinkPreferencesManager sharedInstance];
  [v3 resetPreferencesForAllServices];

  v4 = im_primary_queue();
  dispatch_async(v4, &stru_100BDBFF8);
}

- (void)_cleanupIncomingFilesDirectories
{
  v3 = +[IDSSocketPairResourceTransferReceiver incomingFilePath];
  [(IDSDaemon *)self _cleanupIncomingFilesDirectory:v3];

  v4 = +[IDSSocketPairResourceTransferReceiver modernIncomingFilePath];
  [(IDSDaemon *)self _cleanupIncomingFilesDirectory:v4];
}

- (void)_cleanupIncomingFilesDirectory:(id)directory
{
  v3 = COERCE_DOUBLE(directory);
  ids_monotonic_time();
  v5 = v4;
  v6 = NSHomeDirectory();
  v7 = [NSArray arrayWithObjects:v6, @"/Library/IdentityServices/delete/", 0];
  [NSString pathWithComponents:v7];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v9 = +[NSFileManager defaultManager];
  v40 = 0;
  LOBYTE(v7) = [v9 createDirectoryAtPath:*&v8 withIntermediateDirectories:1 attributes:0 error:&v40];
  v10 = v40;

  if ((v7 & 1) == 0)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v8;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create to-be-deleted directory %@ error %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v12 = StringGUID();
  v13 = NSHomeDirectory();
  v14 = [NSArray arrayWithObjects:v13, @"/Library/IdentityServices/delete/", v12, 0];
  v15 = [NSString pathWithComponents:v14];

  v16 = +[NSFileManager defaultManager];
  v39 = 0;
  v17 = [v16 moveItemAtPath:*&v3 toPath:v15 error:&v39];
  v18 = v39;

  if ((v17 & 1) == 0)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v8;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to move incoming files to to-be-deleted directory %@ error %@ -- delete anyway", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    ids_monotonic_time();
    v21 = v20;
    v22 = +[NSFileManager defaultManager];
    [v22 removeItemAtPath:*&v3 error:0];

    ids_monotonic_time();
    v24 = v23;
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v24 - v21;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Last resort file removal took %0.6lf seconds", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  v26 = dispatch_time(0, 60000000000);
  v27 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100429C64;
  block[3] = &unk_100BD6ED0;
  v28 = *&v8;
  v38 = v28;
  dispatch_after(v26, v27, block);

  v29 = +[NSFileManager defaultManager];
  v36 = 0;
  v30 = [v29 createDirectoryAtPath:*&v3 withIntermediateDirectories:1 attributes:0 error:&v36];
  v31 = v36;

  if ((v30 & 1) == 0)
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v3;
      v43 = 2112;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to create incoming files directory %@ error %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  ids_monotonic_time();
  v34 = v33;
  v35 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = v34 - v5;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "IDS incoming files directory cleanup-on-init took %0.6lf seconds", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (id)broadcastAttemptQueueFromPriority:(int64_t)priority
{
  switch(priority)
  {
    case 100:
      p_syncQueuedBroadcastAttempts = &self->_syncQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_syncQueuedBroadcastAttempts;
      if (!syncQueuedBroadcastAttempts)
      {
        goto LABEL_7;
      }

      break;
    case 200:
      p_syncQueuedBroadcastAttempts = &self->_defaultQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_defaultQueuedBroadcastAttempts;
      if (syncQueuedBroadcastAttempts)
      {
        break;
      }

      goto LABEL_7;
    case 300:
      p_syncQueuedBroadcastAttempts = &self->_urgentQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_urgentQueuedBroadcastAttempts;
      if (syncQueuedBroadcastAttempts)
      {
        break;
      }

      goto LABEL_7;
    default:
      p_syncQueuedBroadcastAttempts = &self->_queuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_queuedBroadcastAttempts;
      if (!syncQueuedBroadcastAttempts)
      {
LABEL_7:
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v6 = *p_syncQueuedBroadcastAttempts;
        *p_syncQueuedBroadcastAttempts = Mutable;

        syncQueuedBroadcastAttempts = *p_syncQueuedBroadcastAttempts;
      }

      break;
  }

  return syncQueuedBroadcastAttempts;
}

- (void)releaseBroadcastAttemptQueue:(int64_t)queue
{
  switch(queue)
  {
    case 100:
      p_syncQueuedBroadcastAttempts = &self->_syncQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_syncQueuedBroadcastAttempts;
      break;
    case 200:
      p_syncQueuedBroadcastAttempts = &self->_defaultQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_defaultQueuedBroadcastAttempts;
      break;
    case 300:
      p_syncQueuedBroadcastAttempts = &self->_urgentQueuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_urgentQueuedBroadcastAttempts;
      break;
    default:
      p_syncQueuedBroadcastAttempts = &self->_queuedBroadcastAttempts;
      syncQueuedBroadcastAttempts = self->_queuedBroadcastAttempts;
      break;
  }

  if (![(NSMutableDictionary *)syncQueuedBroadcastAttempts count])
  {
    v5 = *p_syncQueuedBroadcastAttempts;
    *p_syncQueuedBroadcastAttempts = 0;
  }
}

- (void)_postAliveNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = kIDSDaemonLaunchedDistNotification;

  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, v3, 0, 0, 0);
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_terminate" object:0];
  idStatusQueryController = [(IDSDaemon *)self idStatusQueryController];
  [idStatusQueryController removeCompletionBlockForUniqueIdentifier:@"IDSDaemon"];

  pairingManager = [(IDSDaemon *)self pairingManager];
  [pairingManager removeDelegate:self];

  [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer invalidate];
  nonUrgentInternetSendTimer = self->_nonUrgentInternetSendTimer;
  self->_nonUrgentInternetSendTimer = 0;

  [(IMDispatchTimer *)self->_storageTimer invalidate];
  storageTimer = self->_storageTimer;
  self->_storageTimer = 0;

  restrictedMessageCleanupTimer = self->_restrictedMessageCleanupTimer;
  if (restrictedMessageCleanupTimer)
  {
    [(IMDispatchTimer *)restrictedMessageCleanupTimer invalidate];
    v8 = self->_restrictedMessageCleanupTimer;
    self->_restrictedMessageCleanupTimer = 0;
  }

  pthread_mutex_destroy(&self->_listenerLock);
  pthread_mutex_destroy(&self->_localIncomingGUIDsLock);
  pthread_mutex_destroy(&self->_incomingLocalPowerAssertionLock);
  [(FTMessageDelivery *)self->_homeKitMessageDelivery invalidate];
  v9.receiver = self;
  v9.super_class = IDSDaemon;
  [(IDSDaemon *)&v9 dealloc];
}

- (void)systemDidLock
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System did lock", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSDaemon *)self _processOutgoingNonUrgentInternetMessages];
}

- (void)duetInterface:(id)interface resourceAvailabilityChangedForIdentifiers:(id)identifiers
{
  interfaceCopy = interface;
  identifiersCopy = identifiers;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Alerted that duet resource availability has changed.", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v9 = +[IDSUTunDeliveryController sharedInstance];
  [v9 admissionPolicyChangedForTopic:0 allowed:1];

  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:identifiersCopy priorities:0 dataProtectionClasses:0];
}

- (void)_terminate
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No more listeners terminating", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v3 = +[IDSDaemonMIGInterface sharedInstance];
  [v3 denyIncomingGrantRequests];

  v4 = +[IDSDaemonMIGQueryInterface sharedInstance];
  [v4 denyIncomingGrantRequests];

  IMSyncronizeAppPreferences();
  exit(0);
}

- (void)shutdown
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSDaemon *)self _terminate];
}

- (void)logState
{
  pthread_mutex_lock(&self->_listenerLock);
  _IMLog();
  _IMLog();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  obj = self->_listeners;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    v6 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if (![v8 type])
        {
          remoteObject = [v8 remoteObject];
          v10 = [v8 ID];
          v11 = v6;
          v12 = v4;
          v13 = v5;
          v14 = [remoteObject pid];
          [remoteObject processName];
          v23 = v22 = v14;
          v5 = v13;
          v4 = v12;
          v6 = v11;
          v16 = v10;
          _IMLog();
        }

        remoteObject2 = [v8 remoteObject];
        _IMLog();

        localObject = [v8 localObject];
        _IMLog();

        entitlements = [v8 entitlements];
        _IMLog();

        commands = [v8 commands];
        _IMLog();

        v21 = [v6[476] numberWithUnsignedInt:{objc_msgSend(v8, "capabilities", commands)}];
        _IMLog();

        bundleID = [v8 bundleID];
        _IMLog();

        _IMLog();
        _IMLog();
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16, bundleID];
    }

    while (v4);
  }

  _IMLog();
  pthread_mutex_unlock(&selfCopy->_listenerLock);
}

- (id)_newSetupInfoWithContext:(id)context
{
  contextCopy = context;
  im_assert_primary_base_queue();
  v96 = objc_autoreleasePoolPush();
  v3 = +[IMRGLog timing];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = [contextCopy objectForKey:@"agentRequested"];
    if (v5)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = +[NSDate date];
        [v7 timeIntervalSinceDate:v5];
        *buf = 134217984;
        v158 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSAgent took %f seconds to launch", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:v5];
        v95 = v10;
        _IDSLogV();
      }
    }
  }

  v99 = [[NSMutableDictionary alloc] initWithCapacity:6];
  serviceController = [(IDSDaemon *)self serviceController];
  allServices = [serviceController allServices];

  v123 = [allServices count];
  v108 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v107 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v136 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v105 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v109 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v118 = objc_alloc_init(NSMutableArray);
  v122 = objc_alloc_init(NSMutableArray);
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v12 = +[IDSPairingManager sharedInstance];
  obj = [v12 allPairedDevicesWithType:1];

  v132 = [obj countByEnumeratingWithState:&v149 objects:v156 count:16];
  if (v132)
  {
    v130 = *v150;
    v134 = IDSDevicePropertyIdentities;
    v128 = IDSDeviceDefaultPairedDeviceUniqueID;
    do
    {
      for (i = 0; i != v132; i = i + 1)
      {
        if (*v150 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v149 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        localIdentities = [v14 localIdentities];
        iCloudIdentities = [v14 iCloudIdentities];
        dictionaryRepresentation = [v14 dictionaryRepresentation];
        v19 = [dictionaryRepresentation mutableCopy];

        [v19 setObject:localIdentities forKey:v134];
        dictionaryRepresentation2 = [v14 dictionaryRepresentation];
        v21 = [dictionaryRepresentation2 mutableCopy];

        [v21 setObject:iCloudIdentities forKey:v134];
        uniqueID = [v14 uniqueID];
        if (uniqueID)
        {
          uniqueID2 = [v14 uniqueID];
          v24 = [uniqueID2 isEqualToString:v128];

          if ((v24 & 1) == 0)
          {
            [v118 addObject:v19];
          }
        }

        pushToken = [v14 pushToken];
        if (pushToken)
        {
          v26 = [iCloudIdentities count] == 0;

          if (!v26)
          {
            [v122 addObject:v21];
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v132 = [obj countByEnumeratingWithState:&v149 objects:v156 count:16];
    }

    while (v132);
  }

  v106 = objc_alloc_init(NSMutableDictionary);
  v104 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v103 = [[NSMutableDictionary alloc] initWithCapacity:v123];
  v133 = objc_alloc_init(NSMutableSet);
  familyManager = [(IDSDaemon *)self familyManager];
  familyHandles = [familyManager familyHandles];
  v98 = [familyHandles copy];

  v102 = objc_alloc_init(NSMutableSet);
  v101 = objc_alloc_init(NSMutableDictionary);
  v100 = objc_alloc_init(NSMutableDictionary);
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  familyManager2 = [(IDSDaemon *)self familyManager];
  familyMembers = [familyManager2 familyMembers];

  v31 = [familyMembers countByEnumeratingWithState:&v145 objects:v155 count:16];
  if (v31)
  {
    v32 = *v146;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v146 != v32)
        {
          objc_enumerationMutation(familyMembers);
        }

        v34 = *(*(&v145 + 1) + 8 * j);
        v35 = objc_autoreleasePoolPush();
        dictionaryRepresentation3 = [v34 dictionaryRepresentation];
        [v133 addObject:dictionaryRepresentation3];

        objc_autoreleasePoolPop(v35);
      }

      v31 = [familyMembers countByEnumeratingWithState:&v145 objects:v155 count:16];
    }

    while (v31);
  }

  [v106 setObject:v98 forKey:IDSFamilyHandlesKey];
  [v106 setObject:v133 forKey:IDSFamilyMembersKey];
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v110 = allServices;
  v116 = [v110 countByEnumeratingWithState:&v141 objects:v154 count:16];
  if (v116)
  {
    v111 = 0;
    v115 = *v142;
    v114 = kIDSRegistrationEntitlement;
    v113 = kIDSMessagingEntitlement;
    v112 = kIDSSessionEntitlement;
    do
    {
      for (k = 0; k != v116; k = k + 1)
      {
        if (*v142 != v115)
        {
          objc_enumerationMutation(v110);
        }

        v131 = *(*(&v141 + 1) + 8 * k);
        context = objc_autoreleasePoolPush();
        obja = [(NSMutableArray *)self->_listeners lastObject];
        identifier = [v131 identifier];
        v119 = [(IDSDaemon *)self client:obja isEntitledToAccessService:identifier forEntitlement:v114 shouldWarn:0];
        v121 = [(IDSDaemon *)self client:obja isEntitledToAccessService:identifier forEntitlement:v113 shouldWarn:0];
        if ((v119 | v121 | [(IDSDaemon *)self client:obja isEntitledToAccessService:identifier forEntitlement:v112 shouldWarn:0]))
        {
          v37 = +[IDSDAccountController sharedInstance];
          v38 = [v37 accountsOnService:v131];

          v39 = [v38 count];
          v40 = [[NSMutableArray alloc] initWithCapacity:v39];
          v135 = [[NSMutableArray alloc] initWithCapacity:v39];
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v41 = v38;
          v42 = [v41 countByEnumeratingWithState:&v137 objects:v153 count:16];
          if (v42)
          {
            v43 = *v138;
            do
            {
              for (m = 0; m != v42; m = m + 1)
              {
                if (*v138 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v137 + 1) + 8 * m);
                v46 = objc_autoreleasePoolPush();
                accountSetupInfo = [v45 accountSetupInfo];
                [v40 addObject:accountSetupInfo];

                v48 = +[IDSDAccountController sharedInstance];
                uniqueID3 = [v45 uniqueID];
                v50 = [v48 isEnabledAccount:uniqueID3];

                if (v50)
                {
                  uniqueID4 = [v45 uniqueID];
                  [v135 addObject:uniqueID4];
                }

                dependentRegistrations = [v45 dependentRegistrations];
                v53 = [dependentRegistrations mutableCopy];

                if ([v53 count])
                {
                  uniqueID5 = [v45 uniqueID];
                  [v136 setObject:v53 forKey:uniqueID5];
                }

                objc_autoreleasePoolPop(v46);
              }

              v42 = [v41 countByEnumeratingWithState:&v137 objects:v153 count:16];
            }

            while (v42);
          }

          if ([v131 wantsTinkerDevices])
          {
            if ([v131 adHocServiceType] == 2)
            {
              v55 = v118;
            }

            else
            {
              v55 = v122;
            }

            v56 = [v55 copy];
            [v105 setObject:v56 forKey:identifier];
          }

          if ([v131 isFamilyService])
          {
            v57 = [v106 copy];
            [v104 setObject:v57 forKey:identifier];

            v58 = [v102 copy];
            [v103 setObject:v58 forKey:identifier];
          }

          if (v121)
          {
            v59 = +[IDSDeliveryController sharedInstance];
            v60 = [v59 effectiveMaxPayloadSizeIfCanUseLargePayload:{objc_msgSend(v131, "canUseLargePayload")}];

            v61 = [NSNumber numberWithInteger:v60];
            [v109 setObject:v61 forKey:identifier];
          }

          else
          {
            [v109 setObject:&off_100C3C0A0 forKey:identifier];
          }

          if (v119)
          {
            v62 = +[IDSRestrictions sharedInstance];
            v63 = [v62 restrictionReasonForService:v131];

            if (!v111)
            {
              v111 = objc_alloc_init(NSMutableDictionary);
            }

            v64 = [NSNumber numberWithUnsignedInteger:v63];
            [v111 setObject:v64 forKey:identifier];
          }

          identifier2 = [v131 identifier];
          [v108 setObject:v40 forKey:identifier2];

          identifier3 = [v131 identifier];
          [v107 setObject:v135 forKey:identifier3];

          if ([v131 isInvitationService])
          {
            invitationStore = self->_invitationStore;
            identifier4 = [v131 identifier];
            v69 = [(IDSInvitationStore *)invitationStore persistedPendingInvitationsForService:identifier4];

            if (v69)
            {
              identifier5 = [v131 identifier];
              [v101 setObject:v69 forKey:identifier5];
            }

            v71 = self->_invitationStore;
            identifier6 = [v131 identifier];
            v73 = [(IDSInvitationStore *)v71 persistedReceivedInvitationsForService:identifier6];

            if (v73)
            {
              identifier7 = [v131 identifier];
              [v100 setObject:v73 forKey:identifier7];
            }
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v116 = [v110 countByEnumeratingWithState:&v141 objects:v154 count:16];
    }

    while (v116);
  }

  else
  {
    v111 = 0;
  }

  v75 = objc_autoreleasePoolPush();
  v76 = +[IMRGLog registration];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    sub_10091E848();
  }

  [v99 setObject:v108 forKey:@"serviceInfo"];
  v77 = +[IMRGLog registration];
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    sub_10091E8B0();
  }

  [v99 setObject:v107 forKey:@"enabledAccountsInfo"];
  v78 = +[IMRGLog registration];
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
  {
    sub_10091E918();
  }

  [v99 setObject:v136 forKey:@"dependentDevices"];
  v79 = +[IMRGLog registration];
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    sub_10091E980();
  }

  [v99 setObject:v105 forKey:@"linkedDevices"];
  v80 = +[IMRGLog registration];
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    sub_10091E9E8();
  }

  [v99 setObject:v104 forKey:@"familyInfo"];
  v81 = +[IMRGLog registration];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    sub_10091EA50();
  }

  [v99 setObject:v103 forKey:@"familyDevices"];
  v82 = +[IMRGLog registration];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    sub_10091EAB8();
  }

  [v99 setObject:v109 forKey:@"maxMessageSizes"];
  v83 = +[IMRGLog registration];
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
  {
    sub_10091EB20();
  }

  if (v111)
  {
    [v99 setObject:v111 forKey:@"restrictionReasons"];
  }

  v84 = +[IMRGLog registration];
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    sub_10091EB88();
  }

  [v99 setObject:v101 forKey:@"pendingInvitationMap"];
  v85 = +[IMRGLog registration];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    sub_10091EBF0();
  }

  [v99 setObject:v100 forKey:@"receivedInvitationMap"];
  v86 = IDSLoggableDescriptionSalt();
  [v99 setObject:v86 forKey:@"privateLoggingHash"];

  v87 = [NSNumber numberWithInteger:sub_100006374()];
  [v99 setObject:v87 forKey:@"maxIMLSize"];

  v88 = +[IDSCurrentDevice sharedInstance];
  deviceIdentifier = [v88 deviceIdentifier];

  if (deviceIdentifier)
  {
    [v99 setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  objc_autoreleasePoolPop(v75);
  v90 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v90 pairedDeviceUniqueID];

  v92 = +[IMRGLog registration];
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v158 = pairedDeviceUniqueID;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Active device uniqueID: %@", buf, 0xCu);
  }

  if (pairedDeviceUniqueID)
  {
    [v99 setObject:pairedDeviceUniqueID forKey:@"activeDeviceUniqueID"];
  }

  objc_autoreleasePoolPop(v96);
  v93 = v99;

  return v93;
}

- (void)_cleanupListenerWithPid:(int)pid
{
  v3 = *&pid;
  pthread_mutex_lock(&self->_listenerLock);
  v5 = [(NSMutableArray *)self->_listeners count];
  if ((v5 - 1) >= 0)
  {
    do
    {
      v6 = [(NSMutableArray *)self->_listeners objectAtIndex:--v5];
      if (![v6 type])
      {
        remoteObject = [v6 remoteObject];
        if ([remoteObject pid] == v3)
        {
          v8 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v12 = remoteObject;
            v13 = 1024;
            v14 = v3;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found existing listener %@ for pid %d, cleaning up", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v9 = remoteObject;
            v10 = v3;
            _IDSLogV();
          }

          [(IDSDaemon *)self removeListenerWithRemoteXPCObject:remoteObject, v9, v10];
          [remoteObject invalidate];
        }
      }
    }

    while (v5 > 0);
  }

  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)_resetBroadcastQueuesForServices:(id)services
{
  servicesCopy = services;
  [(IDSDaemon *)self _resetQueuedBroadcastsForServices:servicesCopy priority:0];
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10042BC64;
  v15[3] = &unk_100BD6E40;
  v15[4] = self;
  v6 = servicesCopy;
  v16 = v6;
  [v5 performBlockUrgentPriority:v15];

  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10042BC74;
  v13[3] = &unk_100BD6E40;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  [v7 performBlockDefaultPriority:v13];

  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10042BC84;
  v11[3] = &unk_100BD6E40;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 performBlockSyncPriority:v11];
}

- (void)_flushBroadcastQueuesForServices:(id)services existingServices:(id)existingServices
{
  existingServicesCopy = existingServices;
  servicesCopy = services;
  im_assert_primary_base_queue();
  v8 = [servicesCopy mutableCopy];

  [v8 intersectSet:existingServicesCopy];
  if ([v8 count])
  {
    [(IDSDaemon *)self _processQueuedBroadcastsForServices:v8 priority:0 forceRetry:1];
    v9 = +[IDSDaemonPriorityQueueController sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10042BE84;
    v18[3] = &unk_100BD6E40;
    v18[4] = self;
    v10 = v8;
    v19 = v10;
    [v9 performBlockUrgentPriority:v18];

    v11 = +[IDSDaemonPriorityQueueController sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10042BE98;
    v16[3] = &unk_100BD6E40;
    v16[4] = self;
    v12 = v10;
    v17 = v12;
    [v11 performBlockDefaultPriority:v16];

    v13 = +[IDSDaemonPriorityQueueController sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10042BEAC;
    v14[3] = &unk_100BD6E40;
    v14[4] = self;
    v15 = v12;
    [v13 performBlockSyncPriority:v14];
  }
}

- (void)dropQueuedBroadcastsForServices:(id)services
{
  servicesCopy = services;
  [(IDSDaemon *)self _dropQueuedBroadcastsForServices:servicesCopy priority:0];
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10042C070;
  v15[3] = &unk_100BD6E40;
  v15[4] = self;
  v6 = servicesCopy;
  v16 = v6;
  [v5 performBlockUrgentPriority:v15];

  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10042C080;
  v13[3] = &unk_100BD6E40;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  [v7 performBlockDefaultPriority:v13];

  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10042C090;
  v11[3] = &unk_100BD6E40;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 performBlockSyncPriority:v11];
}

- (BOOL)_setupListenerConnection:(id)connection listenerID:(id)d pid:(int)pid setupInfo:(id)info entitlements:(id)entitlements setupCompletionBlock:(id)block
{
  v11 = *&pid;
  connectionCopy = connection;
  dCopy = d;
  infoCopy = info;
  entitlementsCopy = entitlements;
  blockCopy = block;
  im_assert_primary_base_queue();
  context = objc_autoreleasePoolPush();
  v80 = connectionCopy;
  if (!connectionCopy)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = dCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Tried to set up listener (ID: %@) with empty listener port", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_14;
    }

LABEL_13:
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
LABEL_14:
    v76 = 0;
    goto LABEL_62;
  }

  if (![dCopy length])
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = dCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Tried to set up listener (port: %@) with empty ID", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [(IDSDaemon *)self _cleanupListenerWithPid:v11];
  v17 = [[IMLocalObject alloc] initWithTarget:self connection:connectionCopy protocol:&OBJC_PROTOCOL___IDSDaemonProtocol forceSecureCoding:1 offMainThread:_os_feature_enabled_impl()];
  v76 = v17 != 0;
  if (v17)
  {
    v73 = [[IMRemoteObject alloc] initWithConnection:connectionCopy protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol alreadyConfigured:1 forceSecureCoding:1];
    [v73 setPid:v11];
    pthread_mutex_lock(&self->_listenerLock);
    v68 = [(NSMutableSet *)self->_listenerCachedServices count];
    v18 = [infoCopy objectForKey:@"capabilities"];
    if (v18)
    {
      v19 = [infoCopy objectForKey:@"capabilities"];
      unsignedIntValue = [v19 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    v23 = [infoCopy objectForKey:@"services"];
    v24 = [NSSet setWithArray:v23];
    v25 = v24;
    if (v24)
    {
      v72 = v24;
    }

    else
    {
      v72 = +[NSSet set];
    }

    v26 = [infoCopy objectForKey:@"commands"];
    v27 = [NSSet setWithArray:v26];
    v28 = v27;
    if (v27)
    {
      v71 = v27;
    }

    else
    {
      v71 = +[NSSet set];
    }

    v29 = [NSMutableSet alloc];
    v30 = [infoCopy objectForKey:@"notificationServices"];
    v31 = [v29 initWithArray:v30];
    v32 = v31;
    if (v31)
    {
      v74 = v31;
    }

    else
    {
      v74 = +[NSMutableSet set];
    }

    v33 = [infoCopy objectForKey:@"bundleID"];
    v34 = v33;
    v35 = &stru_100C06028;
    if (v33)
    {
      v35 = v33;
    }

    v36 = v35;

    v70 = v36;
    v69 = [(__CFString *)v36 length]!= 0;
    v75 = [[IDSIPCListener alloc] initWithRemoteObject:v73 localObject:v17 ID:dCopy capabilities:unsignedIntValue entitlements:entitlementsCopy services:v72 notificationServices:v74 commands:v71 bundleID:v36];
    [(NSMutableArray *)self->_listeners addObject:?];
    if (!self->_listenerCachedServices)
    {
      v37 = objc_alloc_init(NSMutableSet);
      listenerCachedServices = self->_listenerCachedServices;
      self->_listenerCachedServices = v37;
    }

    if (v72 && ([v72 isSubsetOfSet:self->_listenerCachedServices] & 1) == 0)
    {
      [(NSMutableSet *)self->_listenerCachedServices unionSet:v72];
    }

    if (!self->_listenerCachedCommands)
    {
      v39 = objc_alloc_init(NSMutableSet);
      listenerCachedCommands = self->_listenerCachedCommands;
      self->_listenerCachedCommands = v39;
    }

    if (v71 && ([v71 isSubsetOfSet:self->_listenerCachedCommands] & 1) == 0)
    {
      [(NSMutableSet *)self->_listenerCachedCommands unionSet:v71];
    }

    v41 = [infoCopy objectForKey:@"processName"];
    [v17 setProcessName:v41];
    [v73 setProcessName:v41];
    v42 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      processName = [v17 processName];
      connection = [v17 connection];
      *buf = 138414082;
      v82 = dCopy;
      v83 = 2112;
      v84 = v70;
      v85 = 2112;
      v86 = infoCopy;
      v87 = 2112;
      v88 = entitlementsCopy;
      v89 = 1024;
      v90 = v11;
      v91 = 2112;
      v92 = processName;
      v93 = 2048;
      v94 = connection;
      v95 = 2112;
      v96 = v74;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting up connection to listener ID: %@  bundle ID: %@  setupInfo %@ entitlements %@  pid: %d  name: %@  connection: %p notificationServices %@", buf, 0x4Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        processName2 = [v17 processName];
        connection2 = [v17 connection];
        v67 = v74;
        v64 = v11;
        v65 = processName2;
        v62 = infoCopy;
        v63 = entitlementsCopy;
        v60 = dCopy;
        v61 = v70;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          processName3 = [v17 processName];
          connection2 = [v17 connection];
          v67 = v74;
          v64 = v11;
          v65 = processName3;
          v62 = infoCopy;
          v63 = entitlementsCopy;
          v60 = dCopy;
          v61 = v70;
          _IDSLogV();
        }
      }
    }

    if ([dCopy isEqualToIgnoringCase:{@"com.apple.healthd", v60, v61, v62, v63, v64, v65, connection2, v67}])
    {
      v47 = +[IMRGLog healthDebug];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        processName4 = [v17 processName];
        connection3 = [v17 connection];
        *buf = 138414082;
        v82 = dCopy;
        v83 = 2112;
        v84 = v70;
        v85 = 2112;
        v86 = infoCopy;
        v87 = 2112;
        v88 = entitlementsCopy;
        v89 = 1024;
        v90 = v11;
        v91 = 2112;
        v92 = processName4;
        v93 = 2048;
        v94 = connection3;
        v95 = 2112;
        v96 = v74;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Setting up connection to listener ID: %@  bundle ID: %@  setupInfo %@ entitlements %@  pid: %d  name: %@  connection: %p notificationServices %@", buf, 0x4Eu);
      }
    }

    v50 = [(NSMutableArray *)self->_listeners indexOfObjectIdenticalTo:v75]!= 0x7FFFFFFFFFFFFFFFLL;

    v51 = [(NSMutableSet *)self->_listenerCachedServices count];
    if (v51 && v68 != v51)
    {
      [(IDSDaemon *)self updateTopics];
      [(IDSDaemon *)self _updatePushCommandsLocked];
    }

    v52 = [v74 copy];
    if (v50)
    {
      v53 = [infoCopy objectForKey:@"context"];
      v54 = [(IDSDaemon *)self _newSetupInfoWithContext:v53];

      if (_IDSSupportsDirectMessaging())
      {
        v55 = [(IDSDaemon *)self _copyDirectMessagingMetadataForRemoteObject:v75];
        if (v55)
        {
          v56 = [[NSMutableDictionary alloc] initWithDictionary:v54];
          [v56 addEntriesFromDictionary:v55];
        }

        else
        {
          v56 = v54;
        }
      }

      else
      {
        v56 = v54;
      }

      blockCopy[2](blockCopy, v56, v17);
    }

    if (v69)
    {
      [(IDSDaemon *)self refreshBundleIDs];
    }

    v57 = +[NSNotificationCenter defaultCenter];
    [v57 addObserver:self selector:"localObjectDiedNotification:" name:IMLocalObjectDidDisconnectNotification object:v17];

    v58 = +[NSNotificationCenter defaultCenter];
    [v58 addObserver:self selector:"remoteObjectDiedNotification:" name:IMRemoteObjectDidDisconnectNotification object:v73];

    pthread_mutex_unlock(&self->_listenerLock);
    [(IDSDaemon *)self _resetBroadcastQueuesForServices:v52];
    [(IDSDaemon *)self _flushBroadcastQueuesForServices:v52 existingServices:v52];
  }

LABEL_62:
  objc_autoreleasePoolPop(context);

  return v76;
}

- (BOOL)validateListenerForLocalObject:(id)object
{
  objectCopy = object;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10042CDB8;
  v6[3] = &unk_100BDC020;
  v6[4] = &v7;
  [(IDSDaemon *)self validateListenerForLocalObject:objectCopy andPerformBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (BOOL)validateListenerForLocalObject:(id)object andCheckEntitlement:(id)entitlement forAccessToServiceWithIdentifier:(id)identifier
{
  objectCopy = object;
  entitlementCopy = entitlement;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10042CEF8;
  v13[3] = &unk_100BDC048;
  v16 = &v17;
  v13[4] = self;
  identifierCopy = identifier;
  v14 = identifierCopy;
  v11 = entitlementCopy;
  v15 = v11;
  [(IDSDaemon *)self validateListenerForLocalObject:objectCopy andPerformBlock:v13];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

- (void)validateListenerForLocalObject:(id)object andPerformBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  if (self->_isHardReset)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Daemon was hard reset, ignoring incoming request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else if (objectCopy)
  {
    pthread_mutex_lock(&self->_listenerLock);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_listeners;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        localObject = [v13 localObject];
        v15 = localObject == objectCopy;

        if (v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v16 = v13;

      if (!v16)
      {
        goto LABEL_19;
      }

      blockCopy[2](blockCopy, v16);
    }

    else
    {
LABEL_16:

LABEL_19:
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = objectCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No listener found for local object: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v16 = 0;
    }

    pthread_mutex_unlock(&self->_listenerLock);
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "** Empty local object passed in for listener check", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_iterateOverConnectedListeners:(id)listeners
{
  listenersCopy = listeners;
  pthread_mutex_lock(&self->_listenerLock);
  listeners = self->_listeners;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10042D3B8;
  v7[3] = &unk_100BDC070;
  v8 = listenersCopy;
  v6 = listenersCopy;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:v7];
  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)_removeListener:(id)listener
{
  listenerCopy = listener;
  if (listenerCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [listenerCopy ID];
      *buf = 138412290;
      v82 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing listener ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v52 = [listenerCopy ID];
      _IDSLogEventV();
    }

    localObject = [listenerCopy localObject];
    entitlements = [listenerCopy entitlements];
    if ([entitlements hasEntitlement:kIDSContinuityEntitlement])
    {
      v7 = +[IDSWPLinkManager sharedInstance];
      [v7 clientInstancesRemoved];
    }

    if ([entitlements hasEntitlement:kIDSLocalPairingEntitlement])
    {
      v8 = +[IDSDuetInterface sharedInstance];
      processName = [localObject processName];
      [v8 setInitialSyncInProgress:0 forClientID:processName];

      v10 = +[IDSDuetInterface sharedInstance];
      processName2 = [localObject processName];
      [v10 setReunionSyncInProgress:0 forClientID:processName2];
    }

    if ([entitlements hasEntitlement:kIDSAppleCareServicesEntitlement])
    {
      v12 = +[IMRGLog appleCare];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed Apple Care listener", buf, 2u);
      }

      signInResponder = [(IDSDaemon *)self signInResponder];
      [signInResponder iCloudSignOut];

      registrationConductor = [(IDSDaemon *)self registrationConductor];
      [registrationConductor setShouldSupressRepairLogic:0];

      registrationConductor2 = [(IDSDaemon *)self registrationConductor];
      [registrationConductor2 kickiCloudRepair];
    }

    v16 = [listenerCopy ID];
    remoteObject = [listenerCopy remoteObject];
    v64 = sub_10000BE90(v16, remoteObject);

    v18 = +[IDSDSessionController sharedInstance];
    [v18 cleanupSessionsForClient:v64];

    v19 = +[IDSUTunController sharedInstance];
    [v19 cleanupSocketsForClient:v64];

    services = [listenerCopy services];
    v21 = +[IDSUTunDeliveryController sharedInstance];
    allObjects = [services allObjects];
    [v21 defaultPeerSetPreferInfraWiFi:0 services:allObjects];

    [(IDSDaemon *)self _resetBroadcastQueuesForServices:services];
    if (![listenerCopy type])
    {
      v23 = +[NSNotificationCenter defaultCenter];
      remoteObject2 = [listenerCopy remoteObject];
      [v23 removeObserver:self name:IMRemoteObjectDidDisconnectNotification object:remoteObject2];

      v25 = +[NSNotificationCenter defaultCenter];
      [v25 removeObserver:self name:IMLocalObjectDidDisconnectNotification object:localObject];
    }

    [localObject invalidate];
    bundleID = [listenerCopy bundleID];
    v63 = [bundleID length];

    [(NSMutableArray *)self->_listeners removeObjectIdenticalTo:listenerCopy];
    services2 = [listenerCopy services];
    v28 = [services2 count];

    if (v28)
    {
      v61 = [(NSMutableSet *)self->_listenerCachedServices count];
      v29 = objc_alloc_init(NSMutableSet);
      listenerCachedServices = self->_listenerCachedServices;
      self->_listenerCachedServices = v29;

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v31 = self->_listeners;
      v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v76 objects:v89 count:16];
      if (v32)
      {
        v33 = *v77;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v77 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = self->_listenerCachedServices;
            services3 = [*(*(&v76 + 1) + 8 * i) services];
            [(NSMutableSet *)v35 unionSet:services3];
          }

          v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v76 objects:v89 count:16];
        }

        while (v32);
      }

      v71 = _NSConcreteStackBlock;
      v72 = 3221225472;
      v73 = sub_10042E00C;
      v74 = &unk_100BD6ED0;
      selfCopy = self;
      [(IDSDaemon *)self updateTopics];
      v37 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = [(NSMutableSet *)self->_listenerCachedServices count];
        *buf = 134218754;
        v82 = v61;
        v83 = 2112;
        v84 = @"services";
        v85 = 2048;
        v86 = v38;
        v87 = 2048;
        v88 = v28;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "We had %lu %@ before removing listener, now we have %lu. This listener had %lu.", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v57 = [(NSMutableSet *)self->_listenerCachedServices count];
        v59 = v28;
        v53 = v61;
        v55 = @"services";
        _IDSLogV();
      }
    }

    commands = [listenerCopy commands];
    v40 = [commands count];

    if (v40)
    {
      v62 = [(NSMutableSet *)self->_listenerCachedCommands count];
      v41 = objc_alloc_init(NSMutableSet);
      listenerCachedCommands = self->_listenerCachedCommands;
      self->_listenerCachedCommands = v41;

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v43 = self->_listeners;
      v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v44)
      {
        v45 = *v68;
        do
        {
          for (j = 0; j != v44; j = j + 1)
          {
            if (*v68 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = self->_listenerCachedCommands;
            commands2 = [*(*(&v67 + 1) + 8 * j) commands];
            [(NSMutableSet *)v47 unionSet:commands2];
          }

          v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v44);
      }

      [(IDSDaemon *)self _updatePushCommandsLocked];
      v49 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = [(NSMutableSet *)self->_listenerCachedCommands count];
        *buf = 134218754;
        v82 = v62;
        v83 = 2112;
        v84 = @"commands";
        v85 = 2048;
        v86 = v50;
        v87 = 2048;
        v88 = v40;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "We had %lu %@ before removing listener, now we have %lu. This listener had %lu.", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v58 = [(NSMutableSet *)self->_listenerCachedCommands count];
        v60 = v40;
        v54 = v62;
        v56 = @"commands";
        _IDSLogV();
      }
    }

    [(IDSDaemon *)self removeWakingPushPriorityForServices:services, v54, v56, v58, v60];
    IMSyncronizeAppPreferencesLater();
    if (v63)
    {
      [(IDSDaemon *)self refreshBundleIDs];
    }
  }

  else
  {
    v51 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Tried to remove nil listener object", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_removeListenerWithRemoteXPCObject:(id)object
{
  objectCopy = object;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableArray *)self->_listeners copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![v9 type])
        {
          remoteObject = [v9 remoteObject];
          v11 = remoteObject == objectCopy;

          if (v11)
          {
            [(IDSDaemon *)self _removeListener:v9];
            v12 = +[IMRemoteObjectBroadcaster defaultBroadcaster];
            [v12 flushProxy:objectCopy];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)listenerForLocalObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    pthread_mutex_lock(&self->_listenerLock);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_listeners;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          localObject = [v9 localObject];
          v11 = localObject == objectCopy;

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    pthread_mutex_unlock(&self->_listenerLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)listenerRemoteObjectForLocalObject:(id)object
{
  v3 = [(IDSDaemon *)self listenerForLocalObject:object];
  remoteObject = [v3 remoteObject];

  return remoteObject;
}

- (void)_removeLocalListenerObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_listeners;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          localObject = [v9 localObject];
          v11 = localObject == objectCopy;

          if (v11)
          {
            v12 = v9;
            [(IDSDaemon *)self _removeListener:v12];

            if (v12)
            {
              [(IDSDaemon *)self _removeListener:v12];
            }

            goto LABEL_13;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }
}

- (void)remoteObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = object;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteObjectDiedNotification: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  pthread_mutex_lock(&self->_listenerLock);
  [(IDSDaemon *)self removeListenerWithRemoteXPCObject:object];
  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)localObjectDiedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = object;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "localObjectDiedNotification: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = object;
    _IDSLogV();
  }

  processName = [object processName];
  v16 = [(IDSDaemon *)self _processNameToServiceName:processName];
  if (v16)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = processName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting link preferences for process %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = processName;
      _IDSLogV();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    [v5 setObject:&off_100C3C0B8 forKey:@"PacketsPerSecond"];
    [v5 setObject:&off_100C3C0B8 forKey:@"InputBytesPerSecond"];
    [v5 setObject:&off_100C3C0B8 forKey:@"OutputBytesPerSecond"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v16;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = +[IDSLinkPreferencesManager sharedInstance];
          [v10 updateService:v9 withPreferences:v5];

          v11 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10042ED80;
          block[3] = &unk_100BD6ED0;
          block[4] = v9;
          dispatch_async(v11, block);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }
  }

  pthread_mutex_lock(&self->_listenerLock);
  [(IDSDaemon *)self removeLocalListenerObject:object];
  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)_registerForNetworkAvailableNotification
{
  v3 = NSSelectorFromString(@"networkStateChangedForLogTransportHint:");
  if (objc_opt_respondsToSelector())
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:v3 name:IMNetworkChangedNotification object:0];
  }
}

- (id)_processNameToServiceName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(NSMutableArray);
  if ([nameCopy isEqualToString:@"callservicesd"])
  {
    v5 = @"com.apple.private.alloy.phonecontinuity";
LABEL_9:
    [v4 addObject:v5];
    v6 = [v4 copy];
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"assistantd"])
  {
    v5 = @"com.apple.private.alloy.siri.proxy";
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"companion_proxy"])
  {
    v5 = @"com.apple.private.alloy.companionproxy";
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"mediaplaybackd"])
  {
    v5 = @"com.apple.private.alloy.fignero";
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)_ultraConstrainedPushTopicsForTopics:(id)topics
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = topics;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    v7 = IDSStewieT911Topic;
    v20 = IDSStewieT911RSATopic;
    v19 = IDSStewieT911ParakeetTopic;
    v18 = IDSStewieT911ParakeetIPTopic;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 isEqualToString:v7])
        {
          v10 = 1;
        }

        else
        {
          v10 = [v9 isEqualToString:v20];
        }

        v11 = _os_feature_enabled_impl();
        v12 = v11 | v10;
        if (v11 && (v10 & 1) == 0)
        {
          if ([v9 isEqualToString:v19])
          {
            v12 = 1;
          }

          else
          {
            v12 = [v9 isEqualToString:v18];
          }
        }

        serviceController = [(IDSDaemon *)self serviceController];
        v14 = [serviceController serviceWithPushTopic:v9];
        isUltraConstrainedPushAllowed = [v14 isUltraConstrainedPushAllowed];

        if (isUltraConstrainedPushAllowed & 1) != 0 || (v12)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(NSMutableSet);
          }

          [v5 addObject:v9];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v16 = [v5 copy];

  return v16;
}

- (void)_startPushHandlingLocked
{
  _pushTopics = [(IDSDaemon *)self _pushTopics];
  v2 = [NSMutableSet setWithSet:_pushTopics];
  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableSet);
  copyDictionaryRepresentation = [(IDSPersistentMap *)self->_wakingPushPriorityStore copyDictionaryRepresentation];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = copyDictionaryRepresentation;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v7)
  {
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = [v6 objectForKey:v10];
        integerValue = [v11 integerValue];
        v13 = v3;
        if (integerValue != 2)
        {
          if (integerValue)
          {
            goto LABEL_10;
          }

          v13 = v4;
        }

        [v13 addObject:v10];
        [v2 removeObject:v10];
LABEL_10:
      }

      v7 = [v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v7);
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    listenerCachedServices = self->_listenerCachedServices;
    *buf = 138413058;
    v49 = listenerCachedServices;
    v50 = 2112;
    v51 = v3;
    v52 = 2112;
    v53 = v2;
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Starting push handling with services %@ waking topics: %@ opportunistic topics: %@ nonwaking topics %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v34 = v2;
    v35 = v4;
    v32 = self->_listenerCachedServices;
    v33 = v3;
    _IDSLogV();
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);
  v18 = im_primary_base_queue();
  v36 = dispatch_queue_create_with_target_V2("com.apple.idsdaemon.apsqueue", v17, v18);

  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  _commands = [(IDSDaemon *)self _commands];
  [pushHandlerForAPSDelegatePort addListener:self wakingTopics:v3 opportunisticTopics:v2 nonWakingTopics:v4 commands:_commands queue:v36];

  pushHandlerForAPSDelegatePort2 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v22 = [(IDSDaemon *)self _ultraConstrainedPushTopicsForTopics:_pushTopics];
  [pushHandlerForAPSDelegatePort2 setUltraConstrainedTopics:v22 forListener:self];

  v23 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  serviceController = [(IDSDaemon *)self serviceController];
  allServices = [serviceController allServices];

  v26 = [allServices countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = *v40;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(allServices);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        if (([v29 pushToWakeDisabled] & 1) == 0)
        {
          pushTopic = [v29 pushTopic];
          [v23 addObject:pushTopic];
        }
      }

      v26 = [allServices countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v26);
  }

  pushHandlerForAPSDelegatePort3 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [pushHandlerForAPSDelegatePort3 configureAsMacNotificationCenterObserver:kFZTextAppBundleIdentifier withPushToWakeTopics:v23];
}

- (void)_stopPushHandling
{
  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [pushHandlerForAPSDelegatePort removeListener:self];
}

- (id)broadcasterWithMessageContext:(id)context
{
  contextCopy = context;
  if (self->_isHardReset)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Daemon was hard reset, ignoring broadcast", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = 0;
  }

  else
  {
    pthread_mutex_lock(&self->_listenerLock);
    v6 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:self->_listeners messageContext:contextCopy protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
    pthread_mutex_unlock(&self->_listenerLock);
  }

  return v6;
}

- (id)broadcasterForLocalObject:(id)object messageContext:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (self->_isHardReset)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Daemon was hard reset, ignoring broadcast", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v9 = 0;
  }

  else
  {
    v10 = [(IDSDaemon *)self listenerForLocalObject:objectCopy];
    if (v10)
    {
      notifier = self->_notifier;
      v12 = [NSArray arrayWithObject:v10];
      v9 = [(IDSIPCBroadcaster *)notifier broadcastProxyForTargets:v12 messageContext:contextCopy protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)broadcasterForEntitlement:(id)entitlement messageContext:(id)context
{
  entitlementCopy = entitlement;
  contextCopy = context;
  if (self->_isHardReset)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Daemon was hard reset, ignoring broadcast", v11, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v9 = 0;
  }

  else
  {
    v9 = [(IDSDaemon *)self broadcasterForTopic:0 entitlement:entitlementCopy command:0 messageContext:contextCopy];
  }

  return v9;
}

- (id)_lockedRemoteObjectsWithService:(id)service entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities ignoreService:(BOOL)ignoreService useNotificationServices:(BOOL)services
{
  servicesCopy = services;
  ignoreServiceCopy = ignoreService;
  v10 = *&capabilities;
  entitlementCopy = entitlement;
  commandCopy = command;
  entitlementCopy2 = entitlement;
  serviceCopy = service;
  v17 = [NSArray arrayWithObjects:&entitlementCopy count:1];

  entitlementCopy = [(IDSDaemon *)self _lockedRemoteObjectsWithService:serviceCopy entitlements:v17 command:commandCopy capabilities:v10 ignoreService:ignoreServiceCopy useNotificationServices:servicesCopy, entitlementCopy];

  return entitlementCopy;
}

- (id)_lockedRemoteObjectsWithService:(id)service entitlements:(id)entitlements command:(id)command capabilities:(unsigned int)capabilities ignoreService:(BOOL)ignoreService useNotificationServices:(BOOL)services
{
  serviceCopy = service;
  entitlementsCopy = entitlements;
  commandCopy = command;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000A984;
  v38 = sub_10000BC34;
  v39 = objc_alloc_init(NSMutableArray);
  identifier = [serviceCopy identifier];
  listeners = self->_listeners;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10042FD2C;
  v25[3] = &unk_100BDC098;
  v19 = commandCopy;
  v26 = v19;
  capabilitiesCopy = capabilities;
  ignoreServiceCopy = ignoreService;
  servicesCopy = services;
  v20 = serviceCopy;
  v27 = v20;
  v21 = identifier;
  v28 = v21;
  v22 = entitlementsCopy;
  v29 = v22;
  v30 = &v34;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:v25];
  v23 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v23;
}

- (id)broadcasterForTopic:(id)topic entitlement:(id)entitlement command:(id)command messageContext:(id)context
{
  topicCopy = topic;
  entitlementCopy = entitlement;
  commandCopy = command;
  contextCopy = context;
  if (self->_isHardReset)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Daemon was hard reset, ignoring broadcast", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v15 = 0;
  }

  else if (topicCopy || entitlementCopy || commandCopy)
  {
    serviceController = [(IDSDaemon *)self serviceController];
    v17 = [serviceController serviceWithPushTopic:topicCopy];

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = topicCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Service found to find broadcaster %@   topic: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_lock(&self->_listenerLock);
    v19 = [(IDSDaemon *)self _lockedRemoteObjectsWithService:v17 entitlement:entitlementCopy command:commandCopy capabilities:0];
    pthread_mutex_unlock(&self->_listenerLock);
    v15 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:v19 messageContext:contextCopy protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
  }

  else
  {
    v15 = [(IDSDaemon *)self broadcasterWithMessageContext:contextCopy];
  }

  return v15;
}

- (id)registrationBroadcasterForTopic:(id)topic messageContext:(id)context
{
  topicCopy = topic;
  contextCopy = context;
  if (([topicCopy isEqualToIgnoringCase:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToIgnoringCase:", @"com.apple.ess") & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToIgnoringCase:", @"com.apple.private.ac") & 1) != 0 || objc_msgSend(topicCopy, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.multi"))
  {
    v8 = [(IDSDaemon *)self broadcasterForTopic:topicCopy entitlement:kIDSRegistrationEntitlement messageContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)broadcasterForTopic:(id)topic ignoreServiceListener:(BOOL)listener messageContext:(id)context
{
  listenerCopy = listener;
  topicCopy = topic;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  if (self->_isHardReset)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Daemon was hard reset, ignoring broadcast", &v23, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v12 = 0;
  }

  else if (topicCopy)
  {
    serviceController = [(IDSDaemon *)self serviceController];
    v14 = [serviceController serviceWithPushTopic:topicCopy];

    pthread_mutex_lock(&self->_listenerLock);
    v25[0] = kIDSMessagingEntitlement;
    v25[1] = kIDSRegistrationEntitlement;
    v25[2] = kIDSSessionEntitlement;
    v25[3] = kIDSSessionPrivateEntitlement;
    v25[4] = kIDSSelfSessionEntitlement;
    v25[5] = kIDSHighPriorityMessagingEntitlement;
    v25[6] = kIDSUrgentPriorityMessagingEntitlement;
    v15 = [NSArray arrayWithObjects:v25 count:7];
    v16 = [(IDSDaemon *)self _lockedRemoteObjectsWithService:v14 entitlements:v15 command:0 capabilities:0 ignoreService:listenerCopy useNotificationServices:0];
    v17 = [NSSet setWithArray:v16];
    if ([topicCopy isEqualToIgnoringCase:@"com.apple.private.alloy.accountssync"])
    {
      v18 = +[IMRGLog accountsDebugging];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "All targets for broadcast %@", &v23, 0xCu);
      }
    }

    if (([topicCopy isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.classc"] & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToIgnoringCase:", @"com.apple.private.alloy.fitnessfriends.icloud") & 1) != 0 || objc_msgSend(topicCopy, "isEqualToIgnoringCase:", @"com.apple.private.alloy.fitnessfriends.imessage"))
    {
      v19 = +[IMRGLog healthDebugging];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "All targets for broadcast %@", &v23, 0xCu);
      }
    }

    pthread_mutex_unlock(&self->_listenerLock);
    notifier = self->_notifier;
    allObjects = [v17 allObjects];
    v12 = [(IDSIPCBroadcaster *)notifier broadcastProxyForTargets:allObjects messageContext:0 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
  }

  else
  {
    v12 = [(IDSDaemon *)self broadcasterWithMessageContext:contextCopy];
  }

  objc_autoreleasePoolPop(v10);

  return v12;
}

- (void)_locked_printBroadcastAttemptMapForPriority:(int64_t)priority service:(id)service
{
  serviceCopy = service;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109378;
    v11[1] = priority;
    v12 = 2112;
    v13 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Broadcast Priority: %d Service: %@ \n", v11, 0x12u);
  }

  v8 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:priority];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:serviceCopy];
    [v10 enumerateObjectsUsingBlock:&stru_100BDC0D8];
  }
}

- (void)enqueueBroadcast:(id)broadcast forTopic:(id)topic entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities messageContext:(id)context
{
  v9 = *&capabilities;
  broadcastCopy = broadcast;
  topicCopy = topic;
  entitlementCopy = entitlement;
  commandCopy = command;
  contextCopy = context;
  v19 = objc_alloc_init(IDSIncomingMessageBroadcast);
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    broadcastID = [(IDSIncomingMessageBroadcast *)v19 broadcastID];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Broadcast: outgoing generic notification %lld\n", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    [(IDSIncomingMessageBroadcast *)v19 broadcastID];
    _IDSLogTransport();
  }

  [(IDSDaemon *)self enqueueIncomingMessageBroadcast:broadcastCopy broadcastData:v19 forTopic:topicCopy entitlement:entitlementCopy command:commandCopy capabilities:v9 messageContext:contextCopy];
}

- (void)enqueueIncomingMessageBroadcast:(id)broadcast broadcastData:(id)data forTopic:(id)topic entitlement:(id)entitlement command:(id)command capabilities:(unsigned int)capabilities messageContext:(id)context
{
  v65 = *&capabilities;
  broadcastCopy = broadcast;
  dataCopy = data;
  topicCopy = topic;
  entitlementCopy = entitlement;
  commandCopy = command;
  contextCopy = context;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v78 = _os_activity_create(&_mh_execute_header, "Working on outgoing broadcast", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v78, &state);
  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    broadcastID = [dataCopy broadcastID];
    *buf = 134217984;
    v80 = broadcastID;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Broadcast: starting to work on outgoing notification id %lld\n", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    broadcastID2 = [dataCopy broadcastID];
    _IDSLogTransport();
  }

  if (!self->_isHardReset)
  {
    if (!broadcastCopy)
    {
      goto LABEL_71;
    }

    v63 = objc_retainBlock(broadcastCopy);
    messagePriority = [dataCopy messagePriority];
    if (!topicCopy)
    {
      v32 = [(IDSDaemon *)self broadcasterWithMessageContext:contextCopy];
      v63[2](v63, v32);

LABEL_70:
      goto LABEL_71;
    }

    context = objc_autoreleasePoolPush();
    serviceController = [(IDSDaemon *)self serviceController];
    v64 = [serviceController serviceWithPushTopic:topicCopy];

    identifier = [v64 identifier];

    if (!identifier)
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = topicCopy;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Broadcast: Couldn't find a valid service for the given topic %@\n", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport();
      }

      v63[2](v63, 0);
      goto LABEL_64;
    }

    v58 = [(IDSDaemon *)self _shouldLaunchClientForCapabilities:v65];
    pthread_mutex_lock(&self->_listenerLock);
    v56 = [(IDSDaemon *)self _lockedRemoteObjectsWithNotificationService:v64 entitlement:entitlementCopy command:commandCopy capabilities:v65];
    pthread_mutex_unlock(&self->_listenerLock);
    v62 = [v56 count];
    broadcastNeedsClientAck = [dataCopy broadcastNeedsClientAck];
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      broadcastID3 = [dataCopy broadcastID];
      *buf = 134219010;
      v80 = broadcastID3;
      v81 = 2112;
      v82 = topicCopy;
      v83 = 1024;
      *v84 = broadcastNeedsClientAck;
      *&v84[4] = 1024;
      *&v84[6] = v62 != 0;
      LOWORD(v85) = 1024;
      *(&v85 + 2) = v58;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Broadcast: scheduling broadcast %lld on topic %@ to clients needsTargetAck %d targetsAlive %d shouldLaunch %d\n", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v51 = v62 != 0;
      v52 = v58;
      broadcastID2 = [dataCopy broadcastID];
      v49 = topicCopy;
      v50 = broadcastNeedsClientAck;
      _IDSLogTransport();
    }

    if (!v62)
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        broadcastID4 = [dataCopy broadcastID];
        *buf = 134219266;
        v80 = broadcastID4;
        v81 = 2112;
        v82 = topicCopy;
        v83 = 2112;
        *v84 = v64;
        *&v84[8] = 2112;
        v85 = entitlementCopy;
        v86 = 2112;
        v87 = commandCopy;
        v88 = 1024;
        v89 = v65;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Broadcast: broadcast %lld of topic %@ doesn't find target with service %@ entitlement %@ command %@ capabilities %u", buf, 0x3Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v52 = commandCopy;
        v53 = v65;
        v50 = v64;
        v51 = entitlementCopy;
        broadcastID2 = [dataCopy broadcastID];
        v49 = topicCopy;
        _IDSLogTransport();
      }
    }

    if (v62)
    {
      v27 = 1;
    }

    else
    {
      v27 = broadcastNeedsClientAck;
    }

    if (!(v27 | v58) || v62)
    {
      identifier2 = [v64 identifier];
      v29 = [NSSet setWithObject:identifier2];
      v30 = [(IDSDaemon *)self _processQueuedBroadcastsForServices:v29 priority:messagePriority forceRetry:0];

      if (v30)
      {
        v31 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:v56 messageContext:contextCopy protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
        v63[2](v63, v31);
        [dataCopy setBroadcastPerformed:1];
      }

      else if (([dataCopy transient] & 1) == 0)
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          broadcastID5 = [dataCopy broadcastID];
          *buf = 134217984;
          v80 = broadcastID5;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Broadcast: failed to deliver broadcast %lld to targets, enqueueing for later dispatch!\n", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          broadcastID2 = [dataCopy broadcastID];
          _IDSLogTransport();
        }

        v54 = !v58;
        goto LABEL_49;
      }
    }

    v54 = !v58;
    if (!(v58 & ~v27 | broadcastNeedsClientAck))
    {
LABEL_60:
      if (!v62 && !v54)
      {
        [(IDSDaemon *)self _launchServiceOnDemand:v64];
      }

LABEL_64:
      objc_autoreleasePoolPop(context);
      if (identifier)
      {
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          broadcastID6 = [dataCopy broadcastID];
          *buf = 134217984;
          v80 = broadcastID6;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Broadcast: done working on outgoing notification id %lld\n", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          [dataCopy broadcastID];
          _IDSLogTransport();
        }
      }

      goto LABEL_70;
    }

LABEL_49:
    v36 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      broadcastID7 = [dataCopy broadcastID];
      *buf = 134218242;
      v80 = broadcastID7;
      v81 = 2112;
      v82 = topicCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Broadcast: Enqueueing broadcast %lld on topic %@ \n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      broadcastID2 = [dataCopy broadcastID];
      v49 = topicCopy;
      _IDSLogTransport();
    }

    pthread_mutex_lock(&self->_listenerLock);
    v59 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:messagePriority];
    identifier3 = [v64 identifier];
    v39 = [v59 objectForKey:identifier3];

    if (!v39)
    {
      v39 = +[NSMutableArray array];
      identifier4 = [v64 identifier];
      [v59 setObject:v39 forKey:identifier4];
    }

    [v39 addObject:{dataCopy, broadcastID2, v49}];
    if (broadcastNeedsClientAck)
    {
      v41 = 0;
    }

    else
    {
      v41 = +[NSDate date];
    }

    broadcastID8 = [dataCopy broadcastID];
    objc_initWeak(buf, dataCopy);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100431AE8;
    v67[3] = &unk_100BDC100;
    v74 = v63;
    objc_copyWeak(v75, buf);
    v67[4] = self;
    v68 = v64;
    v69 = entitlementCopy;
    v43 = commandCopy;
    v76 = v65;
    v70 = v43;
    v75[1] = broadcastID8;
    v71 = topicCopy;
    v72 = contextCopy;
    v44 = v41;
    v73 = v44;
    v45 = objc_retainBlock(v67);
    [dataCopy setBroadcastBlock:v45];
    pthread_mutex_unlock(&self->_listenerLock);

    objc_destroyWeak(v75);
    objc_destroyWeak(buf);

    goto LABEL_60;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Daemon was hard reset, not enqueuing broadcast", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

LABEL_71:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_launchServiceOnDemand:(id)demand
{
  demandCopy = demand;
  identifier = [demandCopy identifier];
  launchMachServiceNotification = [demandCopy launchMachServiceNotification];

  if (launchMachServiceNotification)
  {
    launchMachServiceNotification2 = [demandCopy launchMachServiceNotification];
    [launchMachServiceNotification2 UTF8String];
    launchDarwinNotification4 = IMXPCCreateConnectionForService();

    if (launchDarwinNotification4)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        launchMachServiceNotification3 = [demandCopy launchMachServiceNotification];
        *buf = 138412546;
        v20 = launchMachServiceNotification3;
        v21 = 2112;
        v22 = identifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcast: Broadcasting xpc wake notification %@ to awaken clients of %@.\n", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        launchMachServiceNotification4 = [demandCopy launchMachServiceNotification];
        _IDSLogTransport();
      }

      v10 = xpc_dictionary_create(0, 0, 0);
      launchMachServiceNotification5 = [demandCopy launchMachServiceNotification];
      IMInsertNSStringsToXPCDictionary();

      xpc_connection_send_message(launchDarwinNotification4, v10);
      if ([identifier hasPrefix:{@"com.apple.private.alloy.continuity", launchMachServiceNotification5, 0}])
      {
        kdebug_trace();
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  launchDarwinNotification = [demandCopy launchDarwinNotification];

  if (launchDarwinNotification)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      launchDarwinNotification2 = [demandCopy launchDarwinNotification];
      *buf = 138412546;
      v20 = launchDarwinNotification2;
      v21 = 2112;
      v22 = identifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcast: Broadcasting darwin notification %@ to awaken clients of %@.\n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      launchDarwinNotification3 = [demandCopy launchDarwinNotification];
      v18 = identifier;
      _IDSLogTransport();
    }

    launchDarwinNotification4 = [demandCopy launchDarwinNotification];
    v14 = launchDarwinNotification4;
    notify_post([(_xpc_connection_s *)launchDarwinNotification4 UTF8String]);
    goto LABEL_18;
  }

LABEL_19:
}

- (void)launchOnDemandServicesForQueuedBroadcastAttempts
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launching on-demand services for queued broadcast attempts\n", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }

  v4 = 0;
  *buf = xmmword_1009AB7B0;
  do
  {
    v17 = v4;
    v5 = *&buf[4 * v4];
    pthread_mutex_lock(&self->_listenerLock);
    v6 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:v5];
    allKeys = [v6 allKeys];

    pthread_mutex_unlock(&self->_listenerLock);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = allKeys;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          serviceController = [(IDSDaemon *)self serviceController];
          v14 = [serviceController serviceWithName:v12];

          if (v14)
          {
            [(IDSDaemon *)self _launchServiceOnDemand:v14];
          }

          else
          {
            v15 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v22 = 138412290;
              v23 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Couldn't find a valid service for the given identifier %@\n", v22, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v16 = v12;
                _IDSLogTransport();
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }

    v4 = v17 + 1;
  }

  while (v17 != 3);
}

- (void)launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  serviceController = [(IDSDaemon *)self serviceController];
  allServices = [serviceController allServices];

  v5 = [allServices countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allServices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 needsLaunchOnNearbyDevicesChanged])
        {
          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v8 identifier];
            *buf = 136315394;
            v18 = "[IDSDaemon launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged]";
            v19 = 2112;
            v20 = identifier;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Launching on-demand service %@\n", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            [v8 identifier];
            v12 = v11 = "[IDSDaemon launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged]";
            _IDSLogTransport();
          }

          [(IDSDaemon *)self _launchServiceOnDemand:v8, v11, v12];
        }
      }

      v5 = [allServices countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

- (id)dequeueBroadcastWithID:(int64_t)d forMessageUUID:(id)iD service:(id)service priority:(int64_t)priority
{
  iDCopy = iD;
  serviceCopy = service;
  pthread_mutex_lock(&self->_listenerLock);
  v12 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:priority];
  if ([v12 count] && objc_msgSend(serviceCopy, "length"))
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = d;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Broadcast: Received request to drop enqueued broadcast %lld\n", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      dCopy = d;
      _IDSLogTransport();
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = sub_10000A984;
    v33 = sub_10000BC34;
    v34 = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [v12 objectForKey:serviceCopy];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100432E0C;
    v24 = &unk_100BDC168;
    dCopy2 = d;
    v25 = iDCopy;
    p_buf = &buf;
    [v15 enumerateObjectsUsingBlock:&v21];
    if (*(*(&buf + 1) + 40))
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        broadcastID = [*(*(&buf + 1) + 40) broadcastID];
        *v28 = 134217984;
        v29 = broadcastID;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Broadcast: Dropping enqueued broadcast %lld\n", v28, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        dCopy = [*(*(&buf + 1) + 40) broadcastID];
        _IDSLogTransport();
      }

      [v15 removeObject:{*(*(&buf + 1) + 40), dCopy, v21, v22, v23, v24}];
      if (![v15 count])
      {
        [v12 removeObjectForKey:serviceCopy];

        v15 = 0;
      }
    }

    objc_autoreleasePoolPop(v14);
    [(IDSDaemon *)self releaseBroadcastAttemptQueue:priority];
    pthread_mutex_unlock(&self->_listenerLock);
    v18 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    pthread_mutex_unlock(&self->_listenerLock);
    v18 = 0;
  }

  return v18;
}

- (void)_resetQueuedBroadcastsForServices:(id)services priority:(int64_t)priority
{
  servicesCopy = services;
  pthread_mutex_lock(&self->_listenerLock);
  v7 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:priority];
  if ([v7 count] && objc_msgSend(servicesCopy, "count"))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = servicesCopy;
      v24 = 2048;
      priorityCopy = priority;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Broadcast: Resetting queued broadcasts for services %@ priority %ld \n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v15 = servicesCopy;
      priorityCopy2 = priority;
      _IDSLogTransport();
    }

    v9 = objc_autoreleasePoolPush();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = servicesCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [v7 objectForKey:{*(*(&v17 + 1) + 8 * v13), v15, priorityCopy2, v17}];
          [v14 enumerateObjectsUsingBlock:&stru_100BDC188];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v9);
    pthread_mutex_unlock(&self->_listenerLock);
  }

  else
  {
    pthread_mutex_unlock(&self->_listenerLock);
  }
}

- (BOOL)_processQueuedBroadcastsForServices:(id)services priority:(int64_t)priority forceRetry:(BOOL)retry
{
  retryCopy = retry;
  servicesCopy = services;
  pthread_mutex_lock(&self->_listenerLock);
  priorityCopy = priority;
  selfCopy = self;
  v7 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:priority];
  if ([v7 count] && objc_msgSend(servicesCopy, "count"))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = servicesCopy;
      *&buf[12] = 2048;
      *&buf[14] = priorityCopy;
      *&buf[22] = 1024;
      v44 = retryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcast: Processing queued broadcasts for services %@ priority %ld forceRetry %d \n", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v22 = priorityCopy;
      v23 = retryCopy;
      v21 = servicesCopy;
      _IDSLogTransport();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v44) = 1;
    context = objc_autoreleasePoolPush();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [servicesCopy copy];
    v9 = 0;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, v21, v22, v23}];
          v15 = objc_alloc_init(NSMutableIndexSet);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1004335A8;
          v30[3] = &unk_100BDC1B0;
          v33 = retryCopy;
          v30[4] = v13;
          v32 = buf;
          v16 = v15;
          v31 = v16;
          [v14 enumerateObjectsUsingBlock:v30];
          [v14 removeObjectsAtIndexes:v16];
          v17 = [v14 count];
          if (![v14 count])
          {

            [v7 removeObjectForKey:v13];
            v14 = 0;
          }

          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            [(IDSDaemon *)selfCopy _locked_printBroadcastAttemptMapForPriority:priorityCopy service:v13];
          }

          v9 += v17;
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(context);
    [(IDSDaemon *)selfCopy releaseBroadcastAttemptQueue:priorityCopy];
    pthread_mutex_unlock(&selfCopy->_listenerLock);
    if (v9)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 134218242;
        v39 = v9;
        v40 = 2112;
        v41 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Processed queued broadcast attempts - %lu remaining for %@", v38, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v19 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    pthread_mutex_unlock(&self->_listenerLock);
    v19 = 1;
  }

  return v19 & 1;
}

- (void)_dropQueuedBroadcastsForServices:(id)services priority:(int64_t)priority
{
  servicesCopy = services;
  pthread_mutex_lock(&self->_listenerLock);
  selfCopy = self;
  v19 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:priority];
  if ([v19 count] && objc_msgSend(servicesCopy, "count"))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      priorityCopy4 = priority;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping queued broadcasts for all services priority %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        priorityCopy6 = priority;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          priorityCopy6 = priority;
          _IDSLogV();
        }
      }
    }

    context = objc_autoreleasePoolPush();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = servicesCopy;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          identifier = [v10 identifier];
          v12 = [v19 objectForKey:identifier];

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100433B94;
          v20[3] = &unk_100BDC1D8;
          v20[4] = v10;
          [v12 enumerateObjectsUsingBlock:v20];
          [v12 removeAllObjects];
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    objc_autoreleasePoolPop(context);
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      priorityCopy4 = priority;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dropped queued broadcasts for all services priority %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        priorityCopy6 = priority;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          priorityCopy6 = priority;
          _IDSLogV();
        }
      }
    }

    [(IDSDaemon *)selfCopy releaseBroadcastAttemptQueue:priority, priorityCopy6];
    pthread_mutex_unlock(&selfCopy->_listenerLock);
  }

  else
  {
    pthread_mutex_unlock(&self->_listenerLock);
  }
}

+ (void)logAccessWarningForAccount:(id)account withService:(id)service entitlement:(id)entitlement clientEntitlements:(id)entitlements logMessage:(id)message
{
  accountCopy = account;
  serviceCopy = service;
  entitlementCopy = entitlement;
  entitlementsCopy = entitlements;
  messageCopy = message;
  if (([messageCopy isEqualToString:@"Allowing wildcard access"] & 1) == 0)
  {
    entitlementsCopy = [[NSString alloc] initWithFormat:@"IDS access warning: %@ for service: %@ entitlement: %@ account: %@ entitlements: %@", messageCopy, serviceCopy, entitlementCopy, accountCopy, entitlementsCopy];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = entitlementsCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = entitlementsCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

+ (BOOL)entitlementDictionary:(id)dictionary isEntitledToAccessService:(id)service forEntitlement:(id)entitlement forAccount:(id)account shouldWarn:(BOOL)warn
{
  warnCopy = warn;
  dictionaryCopy = dictionary;
  serviceCopy = service;
  entitlementCopy = entitlement;
  accountCopy = account;
  if (![dictionaryCopy count])
  {
    LOBYTE(v17) = 0;
    v18 = @"############### No entitlements found";
    if (!@"############### No entitlements found")
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v16 = [dictionaryCopy objectForKey:entitlementCopy];
  if (serviceCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [v16 containsObject:serviceCopy];
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = @"############### Service not found";
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([entitlementCopy isEqualToIgnoringCase:kIDSRegistrationEntitlement] & 1) == 0)
    {
      LOBYTE(v17) = [v16 BOOLValue];
      if (serviceCopy)
      {
        v18 = @"Allowing wildcard access";
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
      v18 = @"############### Unknown entitlement type";
    }
  }

  if (v18)
  {
LABEL_16:
    if (warnCopy)
    {
      [self logAccessWarningForAccount:accountCopy withService:serviceCopy entitlement:entitlementCopy clientEntitlements:dictionaryCopy logMessage:v18];
    }
  }

LABEL_18:

  return v17;
}

- (BOOL)client:(id)client isEntitledToAccessService:(id)service forEntitlement:(id)entitlement shouldWarn:(BOOL)warn
{
  clientCopy = client;
  serviceCopy = service;
  entitlementCopy = entitlement;
  v11 = objc_autoreleasePoolPush();
  entitlements = [clientCopy entitlements];
  if ([entitlements hasAnyEntitlements])
  {
    v13 = [entitlements hasService:serviceCopy forEntitlement:entitlementCopy];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v13;
}

- (BOOL)client:(id)client isEntitledToAccessService:(id)service forAnyOfEntitlements:(id)entitlements shouldWarn:(BOOL)warn
{
  clientCopy = client;
  serviceCopy = service;
  entitlementsCopy = entitlements;
  v11 = objc_autoreleasePoolPush();
  entitlements = [clientCopy entitlements];
  if ([entitlements hasAnyEntitlements])
  {
    v13 = [entitlements hasService:serviceCopy forAnyOfEntitlements:entitlementsCopy];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v13;
}

- (BOOL)daemonInterface:(id)interface shouldGrantAccessForPID:(int)d auditToken:(id *)token portName:(id)name listenerConnection:(id)connection setupInfo:(id)info setupResponse:(id *)response
{
  interfaceCopy = interface;
  nameCopy = name;
  connectionCopy = connection;
  infoCopy = info;
  v31 = [NSArray alloc];
  v12 = kIDSTestToolEntitlement;
  v13 = kIDSRegistrationEntitlement;
  v14 = [v31 initWithObjects:{kIDSRegistrationEntitlement, kIDSMessagingEntitlement, kIDSSessionEntitlement, kIDSRegistrationResetEntitlement, kIDSiCloudSignInHackEntitlement, kIDSEncryptionKeysEntitlement, kIDSHighPriorityMessagingEntitlement, kIDSUrgentPriorityMessagingEntitlement, kIDSContinuityEntitlement, kIDSSelfSessionEntitlement, kIDSDeviceUUIDEntitlement, kIDSSessionPrivateEntitlement, kIDSBypassSizeCheckEntitlement, kIDSPreferInfraWiFiEntitlement, kIDSLinkPreferencesEntitlement, kIDSLocalPairingEntitlement, kIDSLocalPairingAPIEntitlement, kIDSAccountSyncEntitlement, kIDSAllowedTrafficClasses, kIDSKeyRollingEntitlement, kIDSReportiMessageSpamEntitlement, kIDSForceEncryptionOffEntitlement, kIDSSubServicesEntitlement, kIDSAppleCareServicesEntitlement, kIDSRegistrationControlEntitlement, kIDSPhoneNumberAuthenticationEntitlement, kIDSPhoneNumberAuthenticationPrivateEntitlement, kIDSTestToolEntitlement, kIDSStateResetEntitlement, kIDSReportSpamEntitlement, kIDSStatusKitPublishingForStatusTypeEntitlement, kIDSStatusKitSubscriptionForStatusTypeEntitlement, kIDSStatusKitPublishingForAllStatusTypeEntitlement, kIDSStatusKitSubscriptionForAllStatusTypeEntitlement, kIDSForceQuerySendParameterEntitlement, 0}];
  v15 = IMDAuditTokenTaskCopyValuesForEntitlements();
  if (!v15)
  {
    v15 = objc_alloc_init(NSDictionary);
  }

  v16 = [v15 objectForKey:v12];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_4;
  }

  if (([nameCopy isEqualToIgnoringCase:@"com.apple.purplebuddy"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToIgnoringCase:", @"com.apple.SetupAssistant"))
  {
    v18 = [[NSMutableDictionary alloc] initWithDictionary:v15];
    [v18 removeObjectForKey:v13];
    v24 = [[NSMutableArray alloc] initWithObjects:{@"com.apple.ess", @"com.apple.madrid", 0}];
    [v18 setObject:v24 forKey:v13];

    goto LABEL_10;
  }

  if ([nameCopy isEqualToIgnoringCase:@"com.apple.Preferences"] && IDSDebuggingRegistrationDebuggingEnabled())
  {
LABEL_4:
    v18 = [[NSMutableDictionary alloc] initWithDictionary:v15];
    [v18 removeObjectForKey:v13];
    serviceController = [(IDSDaemon *)self serviceController];
    allServicesStrings = [serviceController allServicesStrings];
    [v18 setObject:allServicesStrings forKey:v13];

    v21 = +[IMRGLog registration];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      serviceController2 = [(IDSDaemon *)self serviceController];
      allServicesStrings2 = [serviceController2 allServicesStrings];
      *buf = 138412546;
      *&buf[4] = nameCopy;
      *&buf[12] = 2112;
      *&buf[14] = allServicesStrings2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Entitling portName %@ for all services %@", buf, 0x16u);
    }
  }

  else
  {
    v18 = v15;
  }

LABEL_10:
  v25 = [[IDSEntitlements alloc] initWithEntitlements:v18];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = sub_10000A984;
  v50 = sub_10000BC34;
  v51 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100434A60;
  v37[3] = &unk_100BDC200;
  v37[4] = buf;
  v26 = [(IDSDaemon *)self _setupListenerConnection:connectionCopy listenerID:nameCopy pid:d setupInfo:infoCopy entitlements:v25 setupCompletionBlock:v37];
  *response = IMCreateXPCObjectFromDictionary();
  v27 = +[IMIDSLog daemon_oversized];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    dictionaryRepresentation = [(IDSEntitlements *)v25 dictionaryRepresentation];
    *v38 = 67110146;
    v39 = v26;
    v40 = 2112;
    v41 = nameCopy;
    v42 = 1024;
    dCopy = d;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Granting access %d to listener: %@ pid: %d usingSync: YES givenEntitlements: %@ parsedEntitlements: %@", v38, 0x2Cu);
  }

  _Block_object_dispose(buf, 8);
  return v26;
}

- (void)_pidSuspended:(int)suspended
{
  v3 = *&suspended;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v12) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PID: %d was suspended", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = v3;
    _IDSLogV();
  }

  pthread_mutex_lock(&self->_listenerLock);
  v6 = [(NSMutableArray *)self->_listeners count];
  if ((v6 - 1) >= 0)
  {
    do
    {
      v7 = [(NSMutableArray *)self->_listeners objectAtIndexedSubscript:--v6, v10];
      if (![v7 type])
      {
        remoteObject = [v7 remoteObject];
        if ([remoteObject pid] == v3)
        {
          v9 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            LODWORD(v12) = v3;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "PID: %d was suspended", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v10 = v3;
            _IDSLogV();
          }

          [(IDSDaemon *)self removeListenerWithRemoteXPCObject:remoteObject, v10];
          [remoteObject invalidate];
        }
      }
    }

    while (v6 > 0);
  }

  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)setListenerServices:(id)services commands:(id)commands capabilities:(unsigned int)capabilities messageContext:(id)context
{
  v7 = *&capabilities;
  servicesCopy = services;
  commandsCopy = commands;
  contextCopy = context;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = servicesCopy;
    *&buf[12] = 2112;
    *&buf[14] = commandsCopy;
    *&buf[22] = 1024;
    LODWORD(v41) = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Incoming listener services %@ commands %@ caps %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = commandsCopy;
    v19 = v7;
    v17 = servicesCopy;
    _IDSLogV();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_10000A984;
  v42 = sub_10000BC34;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000A984;
  v38 = sub_10000BC34;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000A984;
  v32 = sub_10000BC34;
  v33 = 0;
  localObject = [contextCopy localObject];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100435168;
  v20[3] = &unk_100BDC268;
  v15 = servicesCopy;
  v21 = v15;
  v24 = buf;
  v25 = &v34;
  v26 = &v28;
  v16 = commandsCopy;
  v27 = v7;
  v22 = v16;
  selfCopy = self;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v20];

  [(IDSDaemon *)self _flushBroadcastQueuesForServices:v35[5] existingServices:v29[5]];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);
}

- (void)registerForNotificationsOnServices:(id)services messageContext:(id)context
{
  servicesCopy = services;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000A984;
  v28 = sub_10000BC34;
  v29 = [servicesCopy mutableCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000A984;
  v22 = sub_10000BC34;
  v23 = 0;
  localObject = [contextCopy localObject];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100435CBC;
  v13 = &unk_100BDC290;
  v15 = &v30;
  v16 = &v18;
  v17 = &v24;
  v9 = servicesCopy;
  v14 = v9;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:&v10];

  if (v31[3])
  {
    [(IDSDaemon *)self _resetBroadcastQueuesForServices:v25[5], v10, v11, v12, v13];
    [(IDSDaemon *)self _flushBroadcastQueuesForServices:v19[5] existingServices:v19[5]];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

- (void)setWakingPushPriority:(int64_t)priority forTopic:(id)topic messageContext:(id)context
{
  topicCopy = topic;
  contextCopy = context;
  v10 = [(IDSPersistentMap *)self->_wakingPushPriorityStore objectForKey:topicCopy];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    priorityCopy = priority;
    v19 = 2112;
    v20 = topicCopy;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting wakingPushPriority %ld for topic %@, was %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = topicCopy;
    v16 = v10;
    priorityCopy2 = priority;
    _IDSLogV();
  }

  if (!v10 || [v10 intValue] != priority)
  {
    wakingPushPriorityStore = self->_wakingPushPriorityStore;
    v13 = [NSNumber numberWithInteger:priority, priorityCopy2, v15, v16];
    [(IDSPersistentMap *)wakingPushPriorityStore setObject:v13 forKey:topicCopy];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)removeWakingPushPriorityForServices:(id)services
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  servicesCopy = services;
  v5 = [servicesCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(servicesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(IDSPersistentMap *)self->_wakingPushPriorityStore objectForKey:v8];

        if (v9)
        {
          v10 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Removing waking push priority for service %@ in store", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v11 = v8;
            _IDSLogV();
          }

          [(IDSPersistentMap *)self->_wakingPushPriorityStore removeObjectForKey:v8, v11];
        }
      }

      v5 = [servicesCopy countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)xpcObject:(id)object objectContext:(id)context messageContext:(id)messageContext
{
  objectCopy = object;
  contextCopy = context;
  messageContextCopy = messageContext;
  v11 = [contextCopy objectForKey:@"object-type"];
  if ([v11 isEqualToIgnoringCase:@"socket"])
  {
    v12 = [contextCopy objectForKey:@"socket-type"];
    if ([v12 isEqualToIgnoringCase:@"session-socket"])
    {
      v13 = [contextCopy objectForKey:@"sessionID"];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "received socket %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (xpc_get_type(objectCopy) == &_xpc_type_fd)
      {
        v24 = xpc_fd_dup(objectCopy);
        v15 = +[IDSDSessionController sharedInstance];
        v16 = [v15 sessionWithUniqueID:v13];

        if (v16)
        {
          accountID = [v16 accountID];
          localObject = [messageContextCopy localObject];
          v19 = [(IDSDaemon *)self accountWithIdentifier:accountID localObject:localObject requiredEntitlement:kIDSSessionEntitlement];
          v20 = v19 == 0;

          if (!v20)
          {
            v21 = [contextCopy objectForKey:@"raw-socket"];
            bOOLValue = [v21 BOOLValue];

            [v16 startListeningOnClientSocket:v24 isRawSocket:bOOLValue];
          }
        }

        else
        {
          v23 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "IDSDaemon - Could not find session with uniqueID %@ to setup client socket, ignoring...", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }
        }
      }
    }
  }
}

- (void)createSocketDescriptorFromNWConnection:(id)connection options:(id)options messageContext:(id)context error:(id)error
{
  connectionCopy = connection;
  optionsCopy = options;
  contextCopy = context;
  errorCopy = error;
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("IDSDaemon_nw_connection_queue", v14);

  CFAbsoluteTimeGetCurrent();
  nw_connection_set_queue(connectionCopy, v15);
  v20 = connectionCopy;
  v21 = optionsCopy;
  v22 = contextCopy;
  v16 = errorCopy;
  v17 = contextCopy;
  v18 = optionsCopy;
  v19 = connectionCopy;
  nw_connection_set_event_handler();
  nw_connection_start(v19);
}

- (void)sendSocketDescriptorOverXPC:(id)c messageContext:(id)context socketDescriptor:(int)descriptor error:(id)error
{
  v7 = *&descriptor;
  cCopy = c;
  contextCopy = context;
  errorCopy = error;
  v12 = errorCopy;
  if (v7 == -1 || errorCopy)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendSocketDescriptorOverXPC: error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v27 = v12;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v27 = v12;
          _IDSLogV();
        }
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = xpc_fd_create(v7);
    close(v7);
  }

  localObject = [contextCopy localObject];
  v16 = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

  v17 = xpc_dictionary_create(0, 0, 0);
  IMInsertBoolsToXPCDictionary();
  xpc_dictionary_set_value(v17, "object", v13);
  v18 = [cCopy objectForKey:{@"completionHandlerID", 1, 0}];
  v19 = [cCopy objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v36 = cCopy;
    v37 = 1024;
    v38 = v7;
    v39 = 2112;
    v40 = v18;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "utun finished connection options[%@] socket(%d) handlerID[%@] error[%@] socketObject[%@]\n", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v32 = v12;
    v33 = v13;
    v30 = v7;
    v31 = v18;
    v28 = cCopy;
    _IDSLogV();
  }

  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setObject:@"device-socket" forKey:@"object-type"];
  [v21 setObject:v18 forKey:@"completionHandlerID"];
  if (v19)
  {
    ids_monotonic_time();
    v23 = v22;
    v24 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
    [v24 setDaemonOpenSocketCompletionTime:v19 forConnectionUUID:v23];

    v25 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
    v26 = [v25 awdMetricsForConnectionUUID:v19];
    [v21 setObject:v26 forKey:@"metrics"];
  }

  if (v12)
  {
    [v21 setObject:v12 forKey:@"error"];
  }

  v29 = [v21 copy];
  IMInsertKeyedCodableObjectsToXPCDictionary();

  [v16 sendXPCObject:{v17, v29, 0}];
}

- (void)openSocketWithOptions:(id)options messageContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  v54 = [(__CFString *)optionsCopy objectForKey:@"service"];
  v53 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
  v50 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionAWDMetricsClientInitKey];
  v51 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionPriorityKey];
  v49 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionTransportKey];
  if (_IDSSupportsDirectMessaging())
  {
    v6 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  localObject = [contextCopy localObject];
  v9 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSSelfSessionEntitlement forAccessToServiceWithIdentifier:v54];

  if (v9)
  {
    goto LABEL_5;
  }

  if (bOOLValue)
  {
    v14 = [v51 integerValue] == 300;
    localObject2 = [contextCopy localObject];
    if (v14)
    {
      if ([(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSUrgentPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v54])
      {

        goto LABEL_5;
      }

      localObject3 = [contextCopy localObject];
      v36 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSHighPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v54];

      if ((v36 & 1) == 0)
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v54;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "IDS client not entitled for service: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      v17 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v54];

      if (!v17)
      {
        goto LABEL_69;
      }
    }

LABEL_5:
    kdebug_trace();
    v48 = [(__CFString *)optionsCopy objectForKey:@"completionHandlerID"];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v67 = optionsCopy;
      v68 = 2112;
      v69 = contextCopy;
      v70 = 2112;
      v71 = v48;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "opensocket [%@] context=[%@] (handlerID:%@) ***\n", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v44 = contextCopy;
      v46 = v48;
      v42 = optionsCopy;
      _IDSLogV();
    }

    v11 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy, v42, v44, v46];
    v12 = [v11 objectForKey:IDSDevicePropertyDefaultPairedDevice];
    bOOLValue2 = [v12 BOOLValue];

    if (bOOLValue2)
    {
      [v11 setObject:kIDSDefaultPairedDeviceID forKey:IDSOpenSocketOptionCBUUIDKey];
    }

    else
    {
      v16 = [v11 objectForKey:IDSDevicePropertyNSUUID];
      if (v16)
      {
        [v11 setObject:v16 forKey:IDSOpenSocketOptionCBUUIDKey];
      }

      else
      {
        v18 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "opensocket was called for a non-default device without nsuuid!!!!!!!!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [v11 setObject:kIDSDefaultPairedDeviceID forKey:IDSOpenSocketOptionCBUUIDKey];
      }
    }

    v19 = IDSOpenSocketOptionClientIDKey;
    v20 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionClientIDKey];
    if (v20)
    {
      localObject4 = [contextCopy localObject];
      v22 = sub_10000BE90(v20, localObject4);
      [v11 setObject:v22 forKey:v19];
    }

    if ((bOOLValue2 | bOOLValue ^ 1) != 1)
    {
      goto LABEL_68;
    }

    v23 = [(__CFString *)optionsCopy objectForKey:IDSOpenSocketOptionClientNameKey];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = @"client";
    }

    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ directly calling UTUN's openSocketWithOptions", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v43 = v24;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v43 = v24;
          _IDSLogV();
        }
      }
    }

    v47 = 0;
    if (v53 && v50)
    {
      v26 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
      v47 = [v26 awdMetricsForConnectionUUID:v53];
      ids_monotonic_time();
      v28 = v27;
      v29 = [(__CFString *)optionsCopy objectForKey:@"service"];
      [v26 setServiceName:v29 forConnectionUUID:v53];

      [v50 doubleValue];
      [v26 setClientInitTime:v53 forConnectionUUID:?];
      [v26 setDaemonOpenSocketTime:v53 forConnectionUUID:v28];
    }

    if (!v51)
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v67 = v54;
        v68 = 2112;
        v69 = v53;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ didn't specify any priority for %@. This will use the default priority queue.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v43 = v54;
          v45 = v53;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v43 = v54;
            v45 = v53;
            _IDSLogV();
          }
        }
      }

      v34 = [NSNumber numberWithInteger:200, v43, v45];
      integerValue = [v34 integerValue];

      goto LABEL_67;
    }

    integerValue2 = [v51 integerValue];
    integerValue = integerValue2;
    if (integerValue2 > 599)
    {
      if (integerValue2 != 600 && integerValue2 != 700)
      {
        v32 = integerValue2 == 800;
LABEL_57:
        integerValue = 300;
        if (!v32)
        {
          integerValue = 200;
        }

        goto LABEL_67;
      }

      integerValue = 300;
    }

    else if (integerValue2 != 100 && integerValue2 != 200)
    {
      v32 = integerValue2 == 300;
      goto LABEL_57;
    }

LABEL_67:
    [v11 setObject:&__kCFBooleanTrue forKey:{IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket, v43}];
    v38 = +[IDSUTunController sharedInstance];
    v39 = +[IDSDaemonPriorityQueueController sharedInstance];
    v40 = [v39 queueForPriority:integerValue];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1004379CC;
    v56[3] = &unk_100BDC308;
    v57 = v54;
    v65 = bOOLValue2;
    v58 = v49;
    v64 = integerValue;
    v59 = v53;
    selfCopy = self;
    v61 = optionsCopy;
    v62 = contextCopy;
    v63 = v24;
    v41 = v24;
    [v38 openSocketWithOptions:v11 queue:v40 completionHandler:v56];

LABEL_68:
  }

LABEL_69:
}

- (void)closeSocketWithOptions:(id)options messageContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  v37 = [optionsCopy objectForKey:@"service"];
  v35 = [optionsCopy objectForKey:IDSOpenSocketOptionPriorityKey];
  if (_IDSSupportsDirectMessaging())
  {
    v7 = [optionsCopy objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  localObject = [contextCopy localObject];
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSSelfSessionEntitlement forAccessToServiceWithIdentifier:v37];

  if (v10)
  {
    goto LABEL_5;
  }

  if (bOOLValue)
  {
    v15 = [v35 integerValue] == 300;
    localObject2 = [contextCopy localObject];
    if (v15)
    {
      if ([(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSUrgentPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v37])
      {

        goto LABEL_5;
      }

      localObject3 = [contextCopy localObject];
      v32 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSHighPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v37];

      if ((v32 & 1) == 0)
      {
        v33 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v37;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "IDS client not entitled for service: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      v18 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v37];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

LABEL_5:
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "closesocket [%@]\n", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = optionsCopy;
      _IDSLogV();
    }

    v12 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy, v34];
    v13 = [v12 objectForKey:IDSDevicePropertyDefaultPairedDevice];
    bOOLValue2 = [v13 BOOLValue];

    if (bOOLValue2)
    {
      [v12 setObject:kIDSDefaultPairedDeviceID forKey:IDSOpenSocketOptionCBUUIDKey];
    }

    else
    {
      v17 = [v12 objectForKey:IDSDevicePropertyNSUUID];
      if (v17)
      {
        [v12 setObject:v17 forKey:IDSOpenSocketOptionCBUUIDKey];
      }

      else
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "opensocket was called for a non-default device without nsuuid!!!!!!!!", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [v12 setObject:kIDSDefaultPairedDeviceID forKey:IDSOpenSocketOptionCBUUIDKey];
      }

      if (bOOLValue)
      {
        goto LABEL_36;
      }
    }

    v20 = [optionsCopy objectForKey:IDSOpenSocketOptionAWDMetricsSuccessKey];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue3 = [v20 BOOLValue];
    }

    else
    {
      bOOLValue3 = v20 != 0;
    }

    v22 = [optionsCopy objectForKey:IDSOpenSocketOptionAWDMetricsClientOpenSocketCompletionKey];
    v23 = [optionsCopy objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
    v24 = v23;
    if (v22 && v23)
    {
      v25 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
      [v22 doubleValue];
      [v25 setClientOpenSocketCompletionTime:v24 forConnectionUUID:?];
      [v25 setSuccess:bOOLValue3 forConnectionUUID:v24];
      [v25 reportAndRemoveForConnectionUUID:v24];
    }

    v26 = [(NSMutableDictionary *)self->_directDataPathSockets objectForKeyedSubscript:v24];
    v27 = v26;
    if (v26)
    {
      [v26 shutdownSocket];
    }

    v28 = +[IDSUTunController sharedInstance];
    v29 = im_primary_queue();
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100438764;
    v38[3] = &unk_100BDC330;
    v38[4] = self;
    v39 = v24;
    v40 = v37;
    v41 = bOOLValue2;
    v30 = v24;
    [v28 closeSocketWithOptions:v12 queue:v29 completionHandler:v38];

LABEL_36:
  }

LABEL_37:
}

- (void)getDeliveryStatsWithMessageContext:(id)context
{
  contextCopy = context;
  v4 = +[IDSUTunDeliveryController sharedInstance];
  syncPriorityMessageStatistics = [v4 syncPriorityMessageStatistics];
  defaultPriorityMessageStatistics = [v4 defaultPriorityMessageStatistics];
  urgentPriorityMessageStatistics = [v4 urgentPriorityMessageStatistics];
  urgentCloudPriorityMessageStatistics = [v4 urgentCloudPriorityMessageStatistics];
  sendingMessageStatistics = [v4 sendingMessageStatistics];
  queuedIncomingMessageDictionary = [v4 queuedIncomingMessageDictionary];
  v10 = +[IDSUTunController sharedInstance];
  copyLinkStatsDict = [v10 copyLinkStatsDict];

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (syncPriorityMessageStatistics)
  {
    [v12 setObject:syncPriorityMessageStatistics forKey:@"syncMessagesStats"];
  }

  if (defaultPriorityMessageStatistics)
  {
    [v13 setObject:defaultPriorityMessageStatistics forKey:@"defaultMessagesStats"];
  }

  if (urgentPriorityMessageStatistics)
  {
    [v13 setObject:urgentPriorityMessageStatistics forKey:@"urgentMessagesStats"];
  }

  if (urgentCloudPriorityMessageStatistics)
  {
    [v13 setObject:urgentCloudPriorityMessageStatistics forKey:@"urgentCloudMessagesStats"];
  }

  if (sendingMessageStatistics)
  {
    [v13 setObject:sendingMessageStatistics forKey:@"sendingMessageStats"];
  }

  if (queuedIncomingMessageDictionary)
  {
    [v13 setObject:queuedIncomingMessageDictionary forKey:@"queuedIncomingMessages"];
  }

  if (copyLinkStatsDict)
  {
    [v13 setObject:copyLinkStatsDict forKey:@"linkStats"];
  }

  localObject = [contextCopy localObject];
  v15 = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

  if (v15)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting delivery stats to client", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    [v15 deliveryStats:{v13, self}];
  }
}

- (void)persistPendingInvitation:(id)invitation forService:(id)service withUniqueID:(id)d messageContext:(id)context
{
  invitationCopy = invitation;
  serviceCopy = service;
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  serviceController = [(IDSDaemon *)self serviceController];
  v17 = [serviceController serviceWithIdentifier:serviceCopy];

  if (v17 && ([v17 isInvitationService] & v15) == 1)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "persistPendingInvitation: persisting invitation {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = dCopy;
      v24 = serviceCopy;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore persistPendingInvitation:invitationCopy forService:serviceCopy withUniqueID:dCopy, v23, v24];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      isInvitationService = [v17 isInvitationService];
      v21 = @"NO";
      *buf = 138413058;
      v26 = dCopy;
      if (isInvitationService)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (v15)
      {
        v21 = @"YES";
      }

      v27 = 2112;
      v28 = serviceCopy;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "persistPendingInvitation: Cannot persist invitation {%@} for service {%@} isInvitationService {%@}, isMessagingEntitled {%@} ", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v17 isInvitationService];
      _IDSLogV();
    }
  }
}

- (void)persistReceivedInvitation:(id)invitation forService:(id)service withUniqueID:(id)d messageContext:(id)context
{
  invitationCopy = invitation;
  serviceCopy = service;
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  serviceController = [(IDSDaemon *)self serviceController];
  v17 = [serviceController serviceWithIdentifier:serviceCopy];

  if (v17 && ([v17 isInvitationService] & v15) == 1)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = dCopy;
      v27 = 2112;
      v28 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "persistReceivedInvitation: persisting invitation {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = dCopy;
      v24 = serviceCopy;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore persistReceivedInvitation:invitationCopy forService:serviceCopy withUniqueID:dCopy, v23, v24];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      isInvitationService = [v17 isInvitationService];
      v21 = @"NO";
      *buf = 138413058;
      v26 = dCopy;
      if (isInvitationService)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (v15)
      {
        v21 = @"YES";
      }

      v27 = 2112;
      v28 = serviceCopy;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "persistReceivedInvitation: Cannot persist invitation {%@} for service {%@} isInvitationService {%@}, isMessagingEntitled {%@} ", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v17 isInvitationService];
      _IDSLogV();
    }
  }
}

- (void)removePendingInvitation:(id)invitation forService:(id)service messageContext:(id)context
{
  invitationCopy = invitation;
  serviceCopy = service;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  serviceController = [(IDSDaemon *)self serviceController];
  v14 = [serviceController serviceWithIdentifier:serviceCopy];

  if (v14 && ([v14 isInvitationService] & v12) == 1)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = invitationCopy;
      v24 = 2112;
      v25 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "removePendingInvitation: removing invitations with identifiers {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = invitationCopy;
      v21 = serviceCopy;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore removePendingInvitation:invitationCopy forService:serviceCopy, v20, v21];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      isInvitationService = [v14 isInvitationService];
      v18 = @"NO";
      *buf = 138413058;
      v23 = invitationCopy;
      if (isInvitationService)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v12)
      {
        v18 = @"YES";
      }

      v24 = 2112;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "removePendingInvitation: Cannot remove invitations {%@} for service {%@} isInvitationService {%@}, isMessagingEntitled {%@} ", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v14 isInvitationService];
      _IDSLogV();
    }
  }
}

- (void)removeReceivedInvitation:(id)invitation forService:(id)service messageContext:(id)context
{
  invitationCopy = invitation;
  serviceCopy = service;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  serviceController = [(IDSDaemon *)self serviceController];
  v14 = [serviceController serviceWithIdentifier:serviceCopy];

  if (v14 && ([v14 isInvitationService] & v12) == 1)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = invitationCopy;
      v24 = 2112;
      v25 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "removeReceivedInvitation: removing invitations with identifiers {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = invitationCopy;
      v21 = serviceCopy;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore removeReceivedInvitation:invitationCopy forService:serviceCopy, v20, v21];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      isInvitationService = [v14 isInvitationService];
      v18 = @"NO";
      *buf = 138413058;
      v23 = invitationCopy;
      if (isInvitationService)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v12)
      {
        v18 = @"YES";
      }

      v24 = 2112;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "removeReceivedInvitation: Cannot remove invitations {%@} for service {%@} isInvitationService {%@}, isMessagingEntitled {%@} ", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v14 isInvitationService];
      _IDSLogV();
    }
  }
}

- (void)tryForceFamilyFetchWithMessageContext:(id)context
{
  familyManager = [(IDSDaemon *)self familyManager];
  canForceFamilyFetch = [familyManager canForceFamilyFetch];

  if (canForceFamilyFetch)
  {
    familyManager2 = [(IDSDaemon *)self familyManager];
    [familyManager2 forceFamilyFetch];
  }
}

- (id)deliveryControllerQueuedIncomingMessageDictionary:(id)dictionary
{
  pthread_mutex_lock(&self->_listenerLock);
  allKeys = [(NSMutableDictionary *)self->_queuedBroadcastAttempts allKeys];
  v5 = [allKeys count];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = allKeys;
    v7 = allKeys;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_queuedBroadcastAttempts objectForKey:v12];
          v14 = [v13 count];

          v15 = [NSNumber numberWithUnsignedInteger:v14];
          [v6 setObject:v15 forKey:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    allKeys = v17;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&self->_listenerLock);

  return v6;
}

- (void)_notifyTinkerServicesOfPairedDevice:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [deviceCopy objectForKey:IDSDevicePropertyPushToken];
    if (v8)
    {
      v9 = [deviceCopy objectForKey:IDSDevicePropertyIdentities];
      v10 = [v9 count] > 1;
    }

    else
    {
      v10 = 0;
    }

    serviceController = [(IDSDaemon *)self serviceController];
    allTinkerServices = [serviceController allTinkerServices];

    v25 = deviceCopy;
    if (!v10)
    {
      v13 = [allTinkerServices __imArrayByFilteringWithBlock:&stru_100BDC370];

      allTinkerServices = v13;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = allTinkerServices;
    v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v27 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = objc_alloc_init(IMMessageContext);
          v19 = +[IDSDaemon sharedInstance];
          pushTopic = [v17 pushTopic];
          v21 = [v19 broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:v18];

          v22 = objc_autoreleasePoolPush();
          identifier = [v17 identifier];
          pushTopic2 = [v17 pushTopic];
          blockCopy[2](blockCopy, v21, identifier, pushTopic2, [v17 adHocServiceType] == 2);

          objc_autoreleasePoolPop(v22);
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    deviceCopy = v25;
  }
}

- (void)didAddPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [deviceCopy objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [deviceCopy objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A000;
    v14[3] = &unk_100BDC398;
    v15 = deviceCopy;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)didRemovePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = IDSDevicePropertyPairingType;
  v6 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    v8 = IDSDevicePropertyIdentities;
    v9 = [deviceCopy objectForKey:IDSDevicePropertyIdentities];
    v10 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v9];

    v11 = [deviceCopy objectForKey:v8];
    v12 = [IDSPairedDevice localIdentitiesFromIdentities:v11];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10043A358;
    v19[3] = &unk_100BDC398;
    v20 = deviceCopy;
    v21 = v12;
    v22 = v10;
    v13 = v10;
    v14 = v12;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v20 withBlock:v19];
  }

  v15 = [deviceCopy objectForKey:v5];
  integerValue2 = [v15 integerValue];

  if (!integerValue2)
  {
    v17 = [deviceCopy objectForKey:IDSDevicePropertyIdentifierOverride];
    v18 = +[IDSAccountSync sharedInstance];
    [v18 noteUnpairedTraditionalDeviceWithID:v17];
  }
}

- (void)didUpdatePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [deviceCopy objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [deviceCopy objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A640;
    v14[3] = &unk_100BDC398;
    v15 = deviceCopy;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)didUpdateProtocolForPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [deviceCopy objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [deviceCopy objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A928;
    v14[3] = &unk_100BDC398;
    v15 = deviceCopy;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)registrationHashProcessor:(id)processor didFlushCacheForService:(id)service remoteURI:(id)i localURI:(id)rI guid:(id)guid
{
  processorCopy = processor;
  serviceCopy = service;
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  serviceController = [(IDSDaemon *)self serviceController];
  v17 = [serviceController serviceWithIdentifier:serviceCopy];

  if (v17)
  {
    v18 = objc_alloc_init(IMMessageContext);
    pushTopic = [v17 pushTopic];
    v20 = [(IDSDaemon *)self broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:v18];

    v21 = objc_autoreleasePoolPush();
    pushTopic2 = [v17 pushTopic];
    [v20 didFlushCacheForService:pushTopic2 remoteURI:iCopy fromURI:rICopy guid:guidCopy];

    objc_autoreleasePoolPop(v21);
  }
}

- (void)authenticatePhoneWithRequestUUID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v9 = kIDSPhoneNumberAuthenticationPrivateEntitlement;
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSPhoneNumberAuthenticationPrivateEntitlement];

  v11 = +[IMRGLog sms];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      localObject2 = [contextCopy localObject];
      processName = [localObject2 processName];
      *buf = 138412546;
      v25 = dCopy;
      v26 = 2112;
      v27 = processName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Authenticating phone {uuid: %@, client: %@}", buf, 0x16u);
    }

    v15 = sub_100483074();
    authenticatePhoneUser = [v15 authenticatePhoneUser];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1004830B8;
    v21[3] = &unk_100BDD188;
    v21[4] = self;
    v22 = contextCopy;
    v23 = dCopy;
    [authenticatePhoneUser registerResultBlock:v21];
  }

  else
  {
    if (v12)
    {
      localObject3 = [contextCopy localObject];
      processName2 = [localObject3 processName];
      *buf = 138412290;
      v25 = processName2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing authenticate phone request {client: %@}", buf, 0xCu);
    }

    localObject4 = [contextCopy localObject];
    authenticatePhoneUser = [(IDSDaemon *)self broadcasterForLocalObject:localObject4 messageContext:contextCopy];

    if (authenticatePhoneUser)
    {
      v20 = [(IDSDaemon *)self _errorForMissingEntitlement:v9];
      [authenticatePhoneUser didAuthenticatePhoneWithAuthenticationCertificateData:0 requestUUID:dCopy error:v20];
    }
  }
}

- (void)generatePhoneAuthenticationSignatureOverData:(id)data withRequestUUID:(id)d messageContext:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = kIDSPhoneNumberAuthenticationEntitlement;
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v14 = +[IMRGLog sms];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      localObject2 = [contextCopy localObject];
      processName = [localObject2 processName];
      if (dataCopy)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138413058;
      v30 = dCopy;
      v31 = 2112;
      v32 = processName;
      v33 = 2112;
      v34 = v18;
      v35 = 2048;
      v36 = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generating phone authentication signature over data {uuid: %@, client: %@, data: %@, length: %lu}", buf, 0x2Au);
    }

    v19 = sub_100483074();
    localPhoneAuthenticationCertificates = [v19 localPhoneAuthenticationCertificates];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1004834AC;
    v25[3] = &unk_100BDD1B0;
    v25[4] = self;
    v26 = contextCopy;
    v27 = dataCopy;
    v28 = dCopy;
    [localPhoneAuthenticationCertificates registerResultBlock:v25];
  }

  else
  {
    if (v15)
    {
      localObject3 = [contextCopy localObject];
      processName2 = [localObject3 processName];
      *buf = 138412290;
      v30 = processName2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone authentication signature request {client: %@}", buf, 0xCu);
    }

    localObject4 = [contextCopy localObject];
    localPhoneAuthenticationCertificates = [(IDSDaemon *)self broadcasterForLocalObject:localObject4 messageContext:contextCopy];

    if (localPhoneAuthenticationCertificates)
    {
      v24 = [(IDSDaemon *)self _errorForMissingEntitlement:v12];
      [localPhoneAuthenticationCertificates didGeneratePhoneAuthenticationSignature:0 nonce:0 certificates:0 labelIDs:0 inputData:0 requestUUID:dCopy error:v24];
    }
  }
}

- (void)requestCarrierTokenForSubscriptionSource:(id)source IMEI:(id)i carrierNonce:(id)nonce requestUUID:(id)d messageContext:(id)context
{
  sourceCopy = source;
  iCopy = i;
  nonceCopy = nonce;
  dCopy = d;
  contextCopy = context;
  v17 = +[IMRGLog sms];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    processName = [localObject processName];
    *buf = 138413314;
    v123 = dCopy;
    v124 = 2112;
    v125 = processName;
    v126 = 2112;
    v127 = sourceCopy;
    v128 = 2112;
    v129 = iCopy;
    v130 = 2112;
    v131 = nonceCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requesting carrier token {uuid: %@, client: %@, subscriptionSource: %@, IMEI: %@, carrierNonce: %@}", buf, 0x34u);
  }

  localObject2 = [contextCopy localObject];
  v21 = kIDSPhoneNumberAuthenticationEntitlement;
  v22 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  if ((v22 & 1) == 0)
  {
    v64 = +[IMRGLog sms];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      localObject3 = [contextCopy localObject];
      processName2 = [localObject3 processName];
      *buf = 138412290;
      v123 = processName2;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone carrier token request {client: %@}", buf, 0xCu);
    }

    localObject4 = [contextCopy localObject];
    v23 = [(IDSDaemon *)self broadcasterForLocalObject:localObject4 messageContext:contextCopy];

    model = [(IDSDaemon *)self _errorForMissingEntitlement:v21];
    v68 = v23;
    v69 = dCopy;
    v70 = model;
    goto LABEL_29;
  }

  if (!iCopy || !nonceCopy)
  {
    v71 = IDSRegistrationControlErrorDomain;
    v120 = NSDebugDescriptionErrorKey;
    v121 = @"Request was missing IMEI or carrier nonce";
    v72 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v23 = [NSError errorWithDomain:v71 code:1 userInfo:v72];

    localObject5 = [contextCopy localObject];
    model = [(IDSDaemon *)self broadcasterForLocalObject:localObject5 messageContext:contextCopy];

    v68 = model;
    v69 = dCopy;
    v70 = v23;
LABEL_29:
    [(IDSGetSIMAuthTokenMessage *)v68 didRequestCarrierTokenString:0 requestUUID:v69 error:v70];
    goto LABEL_38;
  }

  v107 = sourceCopy;
  v23 = objc_alloc_init(IDSGetSIMAuthTokenMessage);
  v24 = +[FTDeviceSupport sharedInstance];
  model = [v24 model];

  v26 = +[FTDeviceSupport sharedInstance];
  productOSVersion = [v26 productOSVersion];

  v28 = +[FTDeviceSupport sharedInstance];
  productBuildVersion = [v28 productBuildVersion];

  [(IDSGetSIMAuthTokenMessage *)v23 setHardwareVersion:model];
  v106 = productOSVersion;
  [(IDSGetSIMAuthTokenMessage *)v23 setOsVersion:productOSVersion];
  v105 = productBuildVersion;
  [(IDSGetSIMAuthTokenMessage *)v23 setSoftwareVersion:productBuildVersion];
  [(IDSGetSIMAuthTokenMessage *)v23 setCarrierNonce:nonceCopy];
  [(IDSGetSIMAuthTokenMessage *)v23 setIMEI:iCopy];
  v30 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  pushToken = [v30 pushToken];

  [(IDSGetSIMAuthTokenMessage *)v23 setPushToken:pushToken];
  v32 = IDSAssignPushIdentityToMessage();
  v104 = pushToken;
  if (pushToken && (v32 & 1) != 0)
  {
    v33 = +[IDSCTAdapter sharedInstance];
    v113 = 0;
    v34 = [v33 currentSIMsWithError:&v113];
    v35 = v113;

    v102 = v35;
    v103 = v34;
    if (v34)
    {
      v99 = nonceCopy;
      v111[0] = _NSConcreteStackBlock;
      v111[1] = 3221225472;
      v111[2] = sub_100484558;
      v111[3] = &unk_100BDD1D8;
      v112 = v107;
      v36 = [v34 __imArrayByFilteringWithBlock:v111];
      firstObject = [v36 firstObject];

      v38 = +[IDSDaemon sharedInstance];
      registrationConductor = [v38 registrationConductor];
      userStore = [registrationConductor userStore];

      v101 = firstObject;
      sIMIdentifier = [firstObject SIMIdentifier];
      v42 = [userStore userWithUniqueIdentifier:sIMIdentifier];

      v100 = userStore;
      v43 = [userStore authenticationCertificateForUser:v42];
      v44 = +[IMRGLog sms];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v123 = v101;
        v124 = 2112;
        v125 = v103;
        v126 = 2112;
        v127 = v42;
        v128 = 2112;
        v129 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Determined phone number identifier to use for carrier token request {matchingSIM: %@, availableSIMs:%@, phoneUser: %@, phoneAuthenticationCertificate: %@}", buf, 0x2Au);
      }

      v97 = v43;
      v98 = v42;
      v96 = iCopy;
      if (v42 && v43)
      {
        v45 = +[IMRGLog sms];
        nonceCopy = v99;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v123 = v42;
          v124 = 2112;
          v125 = v43;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Adding phone number account to the carrier token request {phoneUser: %@, phoneAuthenticationCertificate: %@}", buf, 0x16u);
        }

        realmPrefixedIdentifier = [v42 realmPrefixedIdentifier];
        dataRepresentation = [v43 dataRepresentation];
        v92 = +[IDSRegistrationKeyManager sharedInstance];
        identityPrivateKey = [v92 identityPrivateKey];
        v47 = +[IDSRegistrationKeyManager sharedInstance];
        -[IDSGetSIMAuthTokenMessage addAuthUserID:certificate:privateKey:publicKey:](v23, "addAuthUserID:certificate:privateKey:publicKey:", realmPrefixedIdentifier, dataRepresentation, identityPrivateKey, [v47 identityPublicKey]);

        v48 = +[IDSDServiceController sharedInstance];
        v49 = [v48 serviceWithIdentifier:@"com.apple.private.alloy.multiplex1"];

        v50 = +[IDSDAccountController sharedInstance];
        v51 = [v50 appleIDAccountOnService:v49];

        v95 = v51;
        registration = [v51 registration];
        authenticationCert = [registration authenticationCert];

        if (authenticationCert)
        {
          v93 = v49;
          registration2 = [v95 registration];
          v55 = +[IMRGLog sms];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = registration2;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Adding Apple ID account to the carrier token request {registration: %@}", buf, 0xCu);
          }

          idsUserID = [registration2 idsUserID];
          authenticationCert2 = [registration2 authenticationCert];
          v89 = +[IDSRegistrationKeyManager sharedInstance];
          identityPrivateKey2 = [v89 identityPrivateKey];
          v57 = +[IDSRegistrationKeyManager sharedInstance];
          -[IDSGetSIMAuthTokenMessage addAuthUserID:certificate:privateKey:publicKey:](v23, "addAuthUserID:certificate:privateKey:publicKey:", idsUserID, authenticationCert2, identityPrivateKey2, [v57 identityPublicKey]);

          v49 = v93;
        }

        sub_1004C6E84();
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v108[2] = sub_1004845C4;
        v108[3] = &unk_100BDD200;
        v108[4] = self;
        v109 = contextCopy;
        v110 = dCopy;
        [(IDSGetSIMAuthTokenMessage *)v23 setCompletionBlock:v108];
        ct_green_tea_logger_create_static();
        v58 = getCTGreenTeaOsLogHandle();
        v59 = v58;
        if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
        }

        sourceCopy = v107;
        v60 = v102;
        v61 = v49;
        if (qword_100CBD450 != -1)
        {
          sub_100920978();
        }

        v62 = v106;
        [qword_100CBD448 sendMessage:v23];

        v63 = v95;
      }

      else
      {
        v85 = IDSRegistrationControlErrorDomain;
        v114 = NSDebugDescriptionErrorKey;
        v115 = @"The selected phone number account is not currently authenticated";
        v86 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v61 = [NSError errorWithDomain:v85 code:1 userInfo:v86];

        localObject6 = [contextCopy localObject];
        v63 = [(IDSDaemon *)self broadcasterForLocalObject:localObject6 messageContext:contextCopy];

        [v63 didRequestCarrierTokenString:0 requestUUID:dCopy error:v61];
        v62 = v106;
        sourceCopy = v107;
        v60 = v102;
        nonceCopy = v99;
      }

      v82 = v112;
      iCopy = v96;
    }

    else
    {
      v78 = +[IMRGLog sms];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v123 = v35;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Failed to fetch SIMs {SIMFetchError: %@}", buf, 0xCu);
      }

      v79 = IDSRegistrationControlErrorDomain;
      v116 = NSDebugDescriptionErrorKey;
      v117 = @"Unable to locate SIMs prior to fetching auth cert";
      v80 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v81 = v79;
      v60 = v102;
      v82 = [NSError errorWithDomain:v81 code:1 userInfo:v80];

      localObject7 = [contextCopy localObject];
      v84 = [(IDSDaemon *)self broadcasterForLocalObject:localObject7 messageContext:contextCopy];

      [v84 didRequestCarrierTokenString:0 requestUUID:dCopy error:v82];
      v62 = v106;
      sourceCopy = v107;
    }

    v77 = v103;
  }

  else
  {
    v74 = IDSRegistrationControlErrorDomain;
    v118 = NSDebugDescriptionErrorKey;
    v119 = @"Unable to set push token or push identity on carrier token request message";
    v75 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v60 = [NSError errorWithDomain:v74 code:1 userInfo:v75];

    localObject8 = [contextCopy localObject];
    v77 = [(IDSDaemon *)self broadcasterForLocalObject:localObject8 messageContext:contextCopy];

    [v77 didRequestCarrierTokenString:0 requestUUID:dCopy error:v60];
    v62 = v106;
    sourceCopy = v107;
  }

LABEL_38:
}

- (id)_errorForMissingEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlementCopy = [[NSString alloc] initWithFormat:@"IDS phone number authentication SPI requires entitlement: %@", entitlementCopy];

  v5 = [NSError alloc];
  v6 = IDSRegistrationControlErrorDomain;
  v10 = NSDebugDescriptionErrorKey;
  v11 = entitlementCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDomain:v6 code:3 userInfo:v7];

  return v8;
}

- (void)setPhoneUserSubscriptionSource:(id)source withRequestUUID:(id)d messageContext:(id)context
{
  sourceCopy = source;
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = kIDSPhoneNumberAuthenticationEntitlement;
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v14 = +[IMRGLog sms];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      localObject2 = [contextCopy localObject];
      processName = [localObject2 processName];
      v29 = 138412802;
      v30 = dCopy;
      v31 = 2112;
      v32 = processName;
      v33 = 2112;
      v34 = sourceCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting phone user subscription source {uuid: %@, client: %@, subscriptionSource: %@}", &v29, 0x20u);
    }

    v18 = +[FTSelectedPNRSubscription sharedInstance];
    v19 = [v18 setSelectedPhoneNumberRegistrationSubscriptionNumber:sourceCopy];

    localObject3 = [contextCopy localObject];
    v21 = [(IDSDaemon *)self broadcasterForLocalObject:localObject3 messageContext:contextCopy];

    if (!v21)
    {
      goto LABEL_11;
    }

    v22 = v21;
    v23 = sourceCopy;
    v24 = dCopy;
    v25 = v19;
LABEL_10:
    [v22 didSetPhoneUserSubscriptionSource:v23 requestUUID:v24 error:v25];
LABEL_11:

    goto LABEL_12;
  }

  if (v15)
  {
    localObject4 = [contextCopy localObject];
    processName2 = [localObject4 processName];
    v29 = 138412290;
    v30 = processName2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone user subscription source request {client: %@}", &v29, 0xCu);
  }

  localObject5 = [contextCopy localObject];
  v19 = [(IDSDaemon *)self broadcasterForLocalObject:localObject5 messageContext:contextCopy];

  if (v19)
  {
    v21 = [(IDSDaemon *)self _errorForMissingEntitlement:v12];
    v22 = v19;
    v23 = 0;
    v24 = dCopy;
    v25 = v21;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)fetchPhoneUserSubscriptionSourceWithRequestUUID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v9 = kIDSPhoneNumberAuthenticationEntitlement;
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v11 = +[IMRGLog sms];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      localObject2 = [contextCopy localObject];
      processName = [localObject2 processName];
      *buf = 138412546;
      v27 = dCopy;
      v28 = 2112;
      v29 = processName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching phone user subscription source {uuid: %@, client: %@}", buf, 0x16u);
    }

    v15 = +[FTSelectedPNRSubscription sharedInstance];
    v25 = 0;
    v16 = [v15 selectedPhoneNumberRegistrationSubscriptionWithError:&v25];
    v17 = v25;

    if (v16)
    {
      v18 = [NSNumber numberWithInteger:[(IDSDaemon *)self _subscriptionSourceNumberForContext:v16]];
    }

    else
    {
      v22 = +[IMRGLog sms];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1009209A0(v17, v22);
      }

      v18 = 0;
    }

    localObject3 = [contextCopy localObject];
    v24 = [(IDSDaemon *)self broadcasterForLocalObject:localObject3 messageContext:contextCopy];

    if (v24)
    {
      [v24 didFetchPhoneUserSubscriptionSource:v18 requestUUID:dCopy error:v17];
    }

    goto LABEL_16;
  }

  if (v12)
  {
    localObject4 = [contextCopy localObject];
    processName2 = [localObject4 processName];
    *buf = 138412290;
    v27 = processName2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone user subscription source request {client: %@}", buf, 0xCu);
  }

  localObject5 = [contextCopy localObject];
  v18 = [(IDSDaemon *)self broadcasterForLocalObject:localObject5 messageContext:contextCopy];

  if (v18)
  {
    v17 = [(IDSDaemon *)self _errorForMissingEntitlement:v9];
    [v18 didSetPhoneUserSubscriptionSource:0 requestUUID:dCopy error:v17];
LABEL_16:
  }
}

- (int64_t)_subscriptionSourceNumberForContext:(id)context
{
  result = [context slotID];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)_IMTransferServiceController
{
  if (qword_100CBD560 != -1)
  {
    sub_100921B90();
  }

  v1 = qword_100CBD558;

  return [v1 sharedInstance];
}

- (id)accountWithIdentifier:(id)identifier localObject:(id)object requiredEntitlement:(id)entitlement
{
  identifierCopy = identifier;
  objectCopy = object;
  entitlementCopy = entitlement;
  accountController = [(IDSDaemon *)self accountController];
  v12 = [accountController accountWithUniqueID:identifierCopy];

  if (v12)
  {
    service = [v12 service];
    identifier = [service identifier];

    if ([(IDSDaemon *)self validateListenerForLocalObject:objectCopy andCheckEntitlement:entitlementCopy forAccessToServiceWithIdentifier:identifier])
    {
      v15 = v12;
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = objectCopy;
        v21 = 2112;
        v22 = entitlementCopy;
        v23 = 2112;
        v24 = identifier;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "accountWithIdentifier failed entitlement check {localObject: %@, entitlement: %@, serviceIdentifier: %@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = objectCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "accountWithIdentifier could not find IDSDAccount {identifier: %@, localObject: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    IMLogBacktrace();
    v15 = 0;
  }

  return v15;
}

- (void)setupAccountWithLoginID:(id)d serviceName:(id)name accountType:(int)type accountConfig:(id)config authToken:(id)token password:(id)password transactionID:(id)iD messageContext:(id)self0
{
  v13 = *&type;
  dCopy = d;
  nameCopy = name;
  configCopy = config;
  tokenCopy = token;
  passwordCopy = password;
  iDCopy = iD;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v116 = dCopy;
    v117 = 2112;
    v118 = nameCopy;
    v119 = 1024;
    v120 = v13;
    v121 = 2112;
    v122 = configCopy;
    v123 = 2112;
    v124 = iDCopy;
    v125 = 2112;
    v126 = localObject;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "IDSDaemon: SetupAccountWithLoginID %@ serviceName %@ accountType %d accountConfig %@ transactionID %@ localObject %@", buf, 0x3Au);
  }

  if (![(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:nameCopy])
  {
    v30 = localObject;
    v31 = +[IMRGLog warning];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_100921C40();
    }

    v32 = [NSError alloc];
    v33 = IDSAccountRegistrationErrorDomain;
    v34 = 103;
    goto LABEL_17;
  }

  if (![(IDSDAccount *)dCopy length])
  {
    v30 = localObject;
    v35 = +[IMRGLog warning];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_100921E48();
    }

    v32 = [NSError alloc];
    v33 = IDSAccountRegistrationErrorDomain;
    v34 = 102;
LABEL_17:
    v36 = [v32 initWithDomain:v33 code:v34 userInfo:0];
    selfCopy4 = self;
    v38 = v30;
    v39 = v30;
    goto LABEL_18;
  }

  v96 = localObject;
  if ([(IDSDAccount *)nameCopy length])
  {
    serviceController = [(IDSDaemon *)self serviceController];
    v25 = [serviceController serviceWithIdentifier:nameCopy];

    v95 = tokenCopy;
    if (v25)
    {
      if (![v25 adHocServiceType])
      {
        v94 = v25;
        if ([v25 disabledOnTinkerWatch] && (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "isCurrentDeviceTinkerConfiguredWatch"), v44, v45))
        {
          v46 = +[IMRGLog warning];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            sub_100921D2C();
          }

          v47 = [NSError alloc];
          v48 = IDSAccountRegistrationErrorDomain;
          v49 = 107;
        }

        else
        {
          if (IDSIsValidAccountType())
          {
            v50 = [configCopy objectForKey:kIDSServiceDefaultsAuthorizationIDKey];
            v92 = [configCopy objectForKey:kIDSServiceDefaultsSelfHandleKey];
            if ([tokenCopy length])
            {
              v51 = +[IMRGLog registration];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v116 = dCopy;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "  ** Setting auth token for loginID: %@", buf, 0xCu);
              }

              sub_1004AA924(tokenCopy, dCopy, v50, v92, nameCopy);
            }

            if ([passwordCopy length])
            {
              v52 = +[IMRGLog registration];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v116 = dCopy;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "  ** Setting password for loginID: %@", buf, 0xCu);
              }

              sub_1004AA74C(passwordCopy, dCopy, v50, nameCopy);
            }

            v88 = v50;
            v53 = +[IDSDAccountController sharedInstance];
            v54 = [v53 accountWithServiceName:nameCopy loginID:dCopy];

            v89 = passwordCopy;
            v93 = contextCopy;
            if (v54)
            {
              [v54 _updateAccountWithAccountInfo:configCopy];
            }

            else
            {
              v56 = +[IMRGLog registration];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v116 = nameCopy;
                v117 = 2112;
                v118 = dCopy;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Creating new account with service name %@ login ID %@", buf, 0x16u);
              }

              v57 = [IDSDAccount alloc];
              v58 = +[NSString stringGUID];
              v59 = [(IDSDAccount *)v57 initWithLoginID:dCopy service:v94 uniqueID:v58 accountType:v13 accountConfig:configCopy];

              v54 = v59;
              v60 = +[IDSDAccountController sharedInstance];
              [v60 addAccount:v54];

              linkedAccounts = [v54 linkedAccounts];
              if (![linkedAccounts count])
              {
                v85 = linkedAccounts;
                v86 = iDCopy;
                v62 = dCopy;
                v63 = configCopy;
                v87 = nameCopy;
                v64 = +[IDSDServiceController sharedInstance];
                v90 = v54;
                service = [v54 service];
                v66 = [v64 linkedServicesForService:service];

                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v67 = v66;
                v68 = [v67 countByEnumeratingWithState:&v110 objects:v114 count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v111;
                  do
                  {
                    for (i = 0; i != v69; i = i + 1)
                    {
                      if (*v111 != v70)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v72 = *(*(&v110 + 1) + 8 * i);
                      if ([v72 disabledOnTinkerWatch])
                      {
                        v73 = +[IDSPairingManager sharedInstance];
                        isCurrentDeviceTinkerConfiguredWatch = [v73 isCurrentDeviceTinkerConfiguredWatch];

                        if (isCurrentDeviceTinkerConfiguredWatch)
                        {
                          continue;
                        }
                      }

                      v75 = [IDSDAccount alloc];
                      v76 = +[NSString stringGUID];
                      v77 = [(IDSDAccount *)v75 initWithLoginID:v62 service:v72 uniqueID:v76 accountType:v13 accountConfig:v63];

                      v78 = +[IMRGLog registration];
                      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v116 = v77;
                        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "  Creating a linked account: %@", buf, 0xCu);
                      }

                      v79 = +[IDSDAccountController sharedInstance];
                      [v79 addAccount:v77];
                    }

                    v69 = [v67 countByEnumeratingWithState:&v110 objects:v114 count:16];
                  }

                  while (v69);
                }

                configCopy = v63;
                dCopy = v62;
                iDCopy = v86;
                nameCopy = v87;
                v54 = v90;
                linkedAccounts = v85;
              }
            }

            v80 = v54;
            v91 = v54;
            v104[0] = _NSConcreteStackBlock;
            v104[1] = 3221225472;
            v104[2] = sub_1004AB8CC;
            v104[3] = &unk_100BDDE30;
            v81 = iDCopy;
            v105 = v81;
            v82 = v93;
            v106 = v82;
            v38 = v96;
            v83 = v96;
            v107 = v83;
            v108 = 0;
            selfCopy2 = self;
            [v80 setupAccountWithCompletionBlock:v104];
            linkedAccounts2 = [v80 linkedAccounts];
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_1004ABC1C;
            v98[3] = &unk_100BDDE58;
            v99 = v81;
            v100 = v82;
            v101 = v83;
            v102 = 0;
            selfCopy3 = self;
            [linkedAccounts2 __imForEach:v98];

            v36 = 0;
            v43 = v88;
            passwordCopy = v89;
            contextCopy = v93;
            v25 = v94;
            goto LABEL_27;
          }

          v55 = +[IMRGLog warning];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            sub_100921CB8();
          }

          v47 = [NSError alloc];
          v48 = IDSAccountRegistrationErrorDomain;
          v49 = 105;
        }

        v36 = [v47 initWithDomain:v48 code:v49 userInfo:0];
        v38 = v96;
        v43 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v96];
        [v43 setupCompleteForAccount:0 transactionID:0 setupError:v36];
        v25 = v94;
LABEL_27:

        tokenCopy = v95;
        goto LABEL_19;
      }

      v26 = +[IMRGLog warning];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_100921C7C();
      }

      v27 = [NSError alloc];
      v28 = IDSAccountRegistrationErrorDomain;
      v29 = 106;
    }

    else
    {
      v42 = +[IMRGLog warning];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_100921D68();
      }

      v27 = [NSError alloc];
      v28 = IDSAccountRegistrationErrorDomain;
      v29 = 104;
    }

    v36 = [v27 initWithDomain:v28 code:v29 userInfo:0];
    v38 = v96;
    v43 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v96];
    [v43 setupCompleteForAccount:0 transactionID:0 setupError:v36];
    goto LABEL_27;
  }

  v40 = +[IMRGLog warning];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    sub_100921DD8();
  }

  v41 = [NSError alloc];
  v36 = [v41 initWithDomain:IDSAccountRegistrationErrorDomain code:101 userInfo:0];
  v38 = v96;
  selfCopy4 = self;
  v39 = v96;
LABEL_18:
  v25 = [(IDSDaemon *)selfCopy4 listenerRemoteObjectForLocalObject:v39];
  [v25 setupCompleteForAccount:0 transactionID:0 setupError:v36];
LABEL_19:
}

- (void)addAccountWithLoginID:(id)d serviceName:(id)name uniqueID:(id)iD accountType:(int)type accountInfo:(id)info messageContext:(id)context
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  infoCopy = info;
  localObject = [context localObject];
  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [infoCopy allKeys];
    *buf = 138413570;
    v65 = dCopy;
    v66 = 2112;
    v67 = nameCopy;
    v68 = 2112;
    v69 = iDCopy;
    v70 = 1024;
    typeCopy = type;
    v72 = 2112;
    v73 = allKeys;
    v74 = 2112;
    v75 = localObject;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "IDSDaemon: AddAccountWithLoginID %@ serviceName %@ uniqueID %@ accountType %d accountInfo %@ localObject %@", buf, 0x3Au);
  }

  if (![nameCopy length])
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100922078();
    }

    goto LABEL_48;
  }

  if ([(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:nameCopy])
  {
    if ((IDSIsValidAccountType() & 1) == 0)
    {
      v21 = +[IMRGLog warning];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100921CB8();
      }

      goto LABEL_48;
    }

    if (!type)
    {
      v21 = +[IMRGLog warning];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not allowing clients to add phone number accounts.", buf, 2u);
      }

      goto LABEL_48;
    }

    serviceController = [(IDSDaemon *)self serviceController];
    v21 = [serviceController serviceWithIdentifier:nameCopy];

    if (!v21)
    {
      v24 = +[IMRGLog warning];
      if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_FAULT))
      {
        sub_100922008();
      }

      goto LABEL_25;
    }

    if ([v21 disabledOnTinkerWatch])
    {
      v22 = +[IDSPairingManager sharedInstance];
      isCurrentDeviceTinkerConfiguredWatch = [v22 isCurrentDeviceTinkerConfiguredWatch];

      if (isCurrentDeviceTinkerConfiguredWatch)
      {
        v24 = +[IMRGLog warning];
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v21;
          _os_log_impl(&_mh_execute_header, &v24->super, OS_LOG_TYPE_DEFAULT, "Tried to add tinker disabled service, ignoring {service: %@}", buf, 0xCu);
        }

LABEL_25:
        v25 = dCopy;
LABEL_47:

        dCopy = v25;
LABEL_48:

        goto LABEL_49;
      }
    }

    typeCopy2 = type;
    v25 = IMStripLoginID();

    if (iDCopy)
    {
      v26 = +[IDSDAccountController sharedInstance];
      v27 = [v26 accountWithUniqueID:iDCopy];

      if (v27)
      {
        v28 = v27;
        service = [(IDSDAccount *)v27 service];
        identifier = [service identifier];
        v31 = [identifier isEqualToIgnoringCase:nameCopy];

        if (v31)
        {
          linkedAccounts = +[IMRGLog registration];
          if (os_log_type_enabled(linkedAccounts, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v28;
            v65 = v28;
            _os_log_impl(&_mh_execute_header, linkedAccounts, OS_LOG_TYPE_DEFAULT, "Not creating new account, we have existing: %@", buf, 0xCu);
          }

          else
          {
            v24 = v28;
          }

LABEL_46:

          goto LABEL_47;
        }

        v33 = +[IMRGLog warning];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          sub_100921F98();
        }
      }
    }

    v34 = +[IMRGLog registration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v65 = v21;
      v66 = 2112;
      v67 = iDCopy;
      v68 = 2112;
      v69 = v25;
      v70 = 1024;
      typeCopy = typeCopy2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Creating new account with service %@ uniqueID %@ login ID %@ accountType %d", buf, 0x26u);
    }

    v24 = [[IDSDAccount alloc] initWithLoginID:v25 service:v21 uniqueID:iDCopy accountType:typeCopy2 accountConfig:infoCopy];
    v35 = +[IDSDAccountController sharedInstance];
    [v35 addAccount:v24];

    linkedAccounts = [(IDSDAccount *)v24 linkedAccounts];
    if (![linkedAccounts count])
    {
      v52 = linkedAccounts;
      v54 = v21;
      v55 = localObject;
      v56 = nameCopy;
      v36 = +[IDSDServiceController sharedInstance];
      v53 = v24;
      service2 = [(IDSDAccount *)v24 service];
      v38 = [v36 linkedServicesForService:service2];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v60;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v60 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v59 + 1) + 8 * i);
            if ([v44 disabledOnTinkerWatch])
            {
              v45 = +[IDSPairingManager sharedInstance];
              isCurrentDeviceTinkerConfiguredWatch2 = [v45 isCurrentDeviceTinkerConfiguredWatch];

              if (isCurrentDeviceTinkerConfiguredWatch2)
              {
                continue;
              }
            }

            v47 = [IDSDAccount alloc];
            v48 = +[NSString stringGUID];
            v49 = [(IDSDAccount *)v47 initWithLoginID:v25 service:v44 uniqueID:v48 accountType:typeCopy2 accountConfig:infoCopy];

            v50 = +[IMRGLog registration];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = v49;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "  Creating a linked account: %@", buf, 0xCu);
            }

            v51 = +[IDSDAccountController sharedInstance];
            [v51 addAccount:v49];
          }

          v41 = [v39 countByEnumeratingWithState:&v59 objects:v63 count:16];
        }

        while (v41);
      }

      nameCopy = v56;
      v21 = v54;
      localObject = v55;
      linkedAccounts = v52;
      v24 = v53;
    }

    goto LABEL_46;
  }

LABEL_49:
}

- (void)_removeAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDSDaemon _removeAccount %@ localObject %@", &v12, 0x16u);
  }

  if ([accountCopy length])
  {
    v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
    if (v9)
    {
      v10 = +[IDSDAccountController sharedInstance];
      [v10 removeAccount:v9];

      linkedAccounts = [v9 linkedAccounts];
      [linkedAccounts __imForEach:&stru_100BDDE78];
    }
  }

  else
  {
    v9 = +[IMRGLog warning];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1009220E8();
    }
  }
}

- (void)_removeAndDeregisterAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = accountCopy;
    v16 = 2112;
    v17 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_removeAndDeregisterAccount %@ localObject %@", &v14, 0x16u);
  }

  if ([accountCopy length])
  {
    v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
    v10 = v9;
    if (v9)
    {
      [v9 unregisterAccount];
      v11 = +[IDSDAccountController sharedInstance];
      [v11 disableAccountWithUniqueID:accountCopy];

      v12 = +[IDSDAccountController sharedInstance];
      [v12 removeAccount:v10];

      linkedAccounts = [v10 linkedAccounts];
      [linkedAccounts __imForEach:&stru_100BDDE98];
    }
  }

  else
  {
    v10 = +[IMRGLog warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1009220E8();
    }
  }
}

- (void)updateAccount:(id)account withAccountInfo:(id)info messageContext:(id)context
{
  accountCopy = account;
  infoCopy = info;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v11 = &uuid_unparse_upper_ptr;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = accountCopy;
    v42 = 2112;
    v43 = localObject;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateAccount %@ localObject %@", buf, 0x16u);
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v14 = v13;
  if (v13)
  {
    v31 = v13;
    v32 = localObject;
    v15 = infoCopy;
    v39[0] = kIDSServiceDefaultsRegisteredURIs;
    v39[1] = kIDSServiceDefaultsPseudonymsKey;
    v39[2] = kIDSServiceDefaultsVettedAliasesKey;
    [NSArray arrayWithObjects:v39 count:3];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v37 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v29 = infoCopy;
      v30 = accountCopy;
      v19 = 0;
      v20 = *v35;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [v15 objectForKey:{v22, v29, v30}];

          if (v23)
          {
            if (!v19)
            {
              v19 = [v15 mutableCopy];
            }

            [v19 removeObjectForKey:v22];
            registration = [v11[504] registration];
            if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
            {
              localObject2 = [contextCopy localObject];
              processName = [localObject2 processName];
              *buf = 138412546;
              v41 = processName;
              v42 = 2112;
              v43 = v22;
              _os_log_error_impl(&_mh_execute_header, registration, OS_LOG_TYPE_ERROR, "Found blocklisted key in updateAccount call! {process: %@, key: %@}", buf, 0x16u);

              v11 = &uuid_unparse_upper_ptr;
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);

      if (!v19)
      {
        infoCopy = v29;
        accountCopy = v30;
        v14 = v31;
        goto LABEL_22;
      }

      v27 = [v19 copy];
      v28 = v15;
      v15 = v27;
      infoCopy = v29;
      accountCopy = v30;
    }

    else
    {
      v19 = 0;
      v28 = v16;
    }

    v14 = v31;

LABEL_22:
    [v14 _updateAccountWithAccountInfo:v15];

    localObject = v32;
  }
}

- (void)enableAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 enableAccountWithUniqueID:accountCopy];

    [v9 registerAccount];
    linkedAccounts = [v9 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDEB8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)disableAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "disableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 disableAccountWithUniqueID:accountCopy];

    linkedAccounts = [v9 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDED8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)forceDisableAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "forceDisableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 forceDisableAccountWithUniqueID:accountCopy];

    linkedAccounts = [v9 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDEF8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)authTokenChanged:(id)changed forAccount:(id)account messageContext:(id)context
{
  changedCopy = changed;
  accountCopy = account;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = accountCopy;
    v23 = 2112;
    v24 = localObject;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "auth token changed for account uniqueID %@ localObject %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = accountCopy;
    v20 = localObject;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement, v19, v20];
  v14 = v13;
  if (v13)
  {
    loginID = [v13 loginID];
    service = [v14 service];
    serviceName = [service serviceName];
    sub_1004AA924(changedCopy, loginID, 0, 0, serviceName);

    [v14 authenticationChanged];
    linkedAccounts = [v14 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDF18];
  }
}

- (void)passwordChanged:(id)changed forAccount:(id)account messageContext:(id)context
{
  changedCopy = changed;
  accountCopy = account;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v23 = accountCopy;
    v24 = 2112;
    v25 = localObject;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "password changed for account uniqueID %@ localObject %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = accountCopy;
    v21 = localObject;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement, v20, v21];
  v14 = v13;
  if (v13)
  {
    loginID = [v13 loginID];
    dsID = [v14 dsID];
    service = [v14 service];
    serviceName = [service serviceName];
    sub_1004AA74C(changedCopy, loginID, dsID, serviceName);

    [v14 authenticationChanged];
    linkedAccounts = [v14 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDF38];
  }
}

- (void)authenticateAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "authenticateAccount uniqueID %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 authenticateAccount];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDF58];
  }
}

- (void)passwordUpdatedForAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passwordUpdatedForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 passwordUpdated];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDF78];
  }
}

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token forAccount:(id)account messageContext:(id)context
{
  credentialsCopy = credentials;
  tokenCopy = token;
  accountCopy = account;
  localObject = [context localObject];
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = credentialsCopy;
    v23 = 2112;
    v24 = tokenCopy;
    v25 = 2112;
    v26 = accountCopy;
    v27 = 2112;
    v28 = localObject;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateAuthorizationCredentials %@ token %@ account %@ localObject %@", buf, 0x2Au);
  }

  v15 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v16 = v15;
  if (v15)
  {
    [v15 updateAuthorizationCredentials:credentialsCopy token:tokenCopy];
    linkedAccounts = [v16 linkedAccounts];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004AE3D8;
    v18[3] = &unk_100BDD498;
    v19 = credentialsCopy;
    v20 = tokenCopy;
    [linkedAccounts __imForEach:v18];
  }
}

- (void)validateProfileForAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "validateProfileForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 validateProfile];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDDF98];
  }
}

- (void)addAliases:(id)aliases toAccount:(id)account messageContext:(id)context
{
  aliasesCopy = aliases;
  accountCopy = account;
  localObject = [context localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = aliasesCopy;
    v19 = 2112;
    v20 = accountCopy;
    v21 = 2112;
    v22 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "addAliases %@ toAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 addAliases:aliasesCopy];
    linkedAccounts = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AE878;
    v15[3] = &unk_100BDB090;
    v16 = aliasesCopy;
    [linkedAccounts __imForEach:v15];
  }
}

- (void)removeAliases:(id)aliases fromAccount:(id)account messageContext:(id)context
{
  aliasesCopy = aliases;
  accountCopy = account;
  localObject = [context localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = aliasesCopy;
    v19 = 2112;
    v20 = accountCopy;
    v21 = 2112;
    v22 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removeAliases %@ toAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 removeAliases:aliasesCopy];
    linkedAccounts = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AEB08;
    v15[3] = &unk_100BDB090;
    v16 = aliasesCopy;
    [linkedAccounts __imForEach:v15];
  }
}

- (void)validateAliases:(id)aliases forAccount:(id)account messageContext:(id)context
{
  aliasesCopy = aliases;
  accountCopy = account;
  localObject = [context localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = aliasesCopy;
    v19 = 2112;
    v20 = accountCopy;
    v21 = 2112;
    v22 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "validateAliases %@ forAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 validateAliases:aliasesCopy];
    linkedAccounts = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AED98;
    v15[3] = &unk_100BDB090;
    v16 = aliasesCopy;
    [linkedAccounts __imForEach:v15];
  }
}

- (void)unvalidateAliases:(id)aliases forAccount:(id)account messageContext:(id)context
{
  aliasesCopy = aliases;
  accountCopy = account;
  localObject = [context localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = aliasesCopy;
    v19 = 2112;
    v20 = accountCopy;
    v21 = 2112;
    v22 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "unvalidateAliases %@ forAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 unvalidateAliases:aliasesCopy];
    linkedAccounts = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AF028;
    v15[3] = &unk_100BDB090;
    v16 = aliasesCopy;
    [linkedAccounts __imForEach:v15];
  }
}

- (BOOL)validateLocalObjectForPseudonym:(id)pseudonym andCheckEntitlement:(id)entitlement forAccessToServices:(id)services
{
  pseudonymCopy = pseudonym;
  entitlementCopy = entitlement;
  servicesCopy = services;
  v11 = 1;
  if (_os_feature_enabled_impl())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1004AF248;
    v13[3] = &unk_100BDDFC0;
    v17 = &v18;
    v14 = servicesCopy;
    selfCopy = self;
    v16 = entitlementCopy;
    [(IDSDaemon *)self validateListenerForLocalObject:pseudonymCopy andPerformBlock:v13];
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v11 & 1;
}

- (BOOL)validateLocalObjectForPseudonym:(id)pseudonym andCheckEntitlement:(id)entitlement forAccessToAnyOneOfServices:(id)services
{
  pseudonymCopy = pseudonym;
  entitlementCopy = entitlement;
  servicesCopy = services;
  if (_os_feature_enabled_impl())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1004AF6A0;
    v18 = &unk_100BDDFC0;
    v11 = servicesCopy;
    v22 = &v23;
    v19 = v11;
    selfCopy = self;
    v21 = entitlementCopy;
    [(IDSDaemon *)self validateListenerForLocalObject:pseudonymCopy andPerformBlock:&v15];
    if (v24[3])
    {
      v12 = 1;
    }

    else
    {
      v13 = [IMRGLog registration:v15];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Pseudonym request failed entitlement check for access to any one of services %@", buf, 0xCu);
      }

      v12 = *(v24 + 24);
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)provisionPseudonymForURI:(id)i onAccount:(id)account withProperties:(id)properties requestProperties:(id)requestProperties requestUUID:(id)d messageContext:(id)context
{
  iCopy = i;
  accountCopy = account;
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  dCopy = d;
  localObject = [context localObject];
  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v49 = iCopy;
    v50 = 2112;
    v51 = accountCopy;
    v52 = 2112;
    v53 = propertiesCopy;
    v54 = 2112;
    v55 = localObject;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI %@ onAccount %@ withProperties %@ localObject %@", buf, 0x2Au);
  }

  v21 = kIDSRegistrationEntitlement;
  v22 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v22)
  {
    v31 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v32 = IDSPseudonymErrorDomain;
    v33 = 500;
LABEL_17:
    v36 = [NSError errorWithDomain:v32 code:v33 userInfo:0];
    [v31 finishedProvisioningPseudonym:0 success:0 error:v36 forRequestUUID:dCopy];

    goto LABEL_18;
  }

  v44 = requestPropertiesCopy;
  allowedServices = [propertiesCopy allowedServices];
  v24 = [(IDSDaemon *)self validateLocalObjectForPseudonym:localObject andCheckEntitlement:v21 forAccessToServices:allowedServices];

  if ((v24 & 1) == 0)
  {
    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v29 = IDSPseudonymErrorDomain;
    v30 = 500;
    goto LABEL_12;
  }

  if ((sub_1004AFDCC() & 1) == 0)
  {
    v35 = +[IMRGLog registration];
    requestPropertiesCopy = v44;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI -- pseudonyms are disabled by the server!", buf, 2u);
    }

    v31 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v32 = IDSPseudonymErrorDomain;
    v33 = 100;
    goto LABEL_17;
  }

  v25 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v25 isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI -- under first unlock -- failing", buf, 2u);
    }

    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v29 = IDSPseudonymErrorDomain;
    v30 = 1000;
  }

  else
  {
    unprefixedURI = [iCopy unprefixedURI];
    v38 = [unprefixedURI isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

    if (!v38)
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1004AFE5C;
      v45[3] = &unk_100BDDFE8;
      v45[4] = self;
      v40 = localObject;
      v46 = v40;
      v41 = dCopy;
      v47 = v41;
      if (([v22 provisionPseudonymForURI:iCopy properties:propertiesCopy requestProperties:v44 completionBlock:v45] & 1) == 0)
      {
        v42 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v40];
        v43 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:600 userInfo:0];
        [v42 finishedProvisioningPseudonym:0 success:0 error:v43 forRequestUUID:v41];
      }

      goto LABEL_13;
    }

    v39 = +[IMRGLog registration];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "provisionPsueudonymForURI -- sentinel alias is an invalid alias -- failing", buf, 2u);
    }

    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v29 = IDSPseudonymErrorDomain;
    v30 = 400;
  }

LABEL_12:
  v34 = [NSError errorWithDomain:v29 code:v30 userInfo:0];
  [v28 finishedProvisioningPseudonym:0 success:0 error:v34 forRequestUUID:dCopy];

LABEL_13:
  requestPropertiesCopy = v44;
LABEL_18:
}

- (void)renewPseudonym:(id)pseudonym onAccount:(id)account forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties requestUUID:(id)d messageContext:(id)context
{
  pseudonymCopy = pseudonym;
  accountCopy = account;
  propertiesCopy = properties;
  dCopy = d;
  localObject = [context localObject];
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v45 = pseudonymCopy;
    v46 = 2112;
    v47 = accountCopy;
    v48 = 2048;
    epochCopy = epoch;
    v50 = 2112;
    v51 = localObject;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "renewPseudonym %@ onAccount %@ forUpdatedExpiryEpoch %f localObject %@", buf, 0x2Au);
  }

  v20 = kIDSRegistrationEntitlement;
  v21 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v21)
  {
    v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v30 = IDSPseudonymErrorDomain;
    v31 = 500;
LABEL_15:
    v35 = [NSError errorWithDomain:v30 code:v31 userInfo:0];
    [v29 finishedRenewingPseudonym:0 success:0 error:v35 requestUUID:dCopy];

    goto LABEL_16;
  }

  v40 = dCopy;
  v22 = propertiesCopy;
  properties = [pseudonymCopy properties];
  allowedServices = [properties allowedServices];
  v25 = [(IDSDaemon *)self validateLocalObjectForPseudonym:localObject andCheckEntitlement:v20 forAccessToAnyOneOfServices:allowedServices];

  if (v25)
  {
    propertiesCopy = v22;
    if ((sub_1004AFDCC() & 1) == 0)
    {
      v34 = +[IMRGLog registration];
      dCopy = v40;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "renewPseudonym -- pseudonyms are disabled by the server!", buf, 2u);
      }

      v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
      v30 = IDSPseudonymErrorDomain;
      v31 = 100;
      goto LABEL_15;
    }

    v26 = +[IMSystemMonitor sharedInstance];
    isUnderFirstDataProtectionLock = [v26 isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
    {
      v28 = +[IMRGLog registration];
      dCopy = v40;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "renewPseudonym -- under first unlock -- failing", buf, 2u);
      }

      v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
      v30 = IDSPseudonymErrorDomain;
      v31 = 1000;
      goto LABEL_15;
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1004B0398;
    v41[3] = &unk_100BDDFE8;
    v41[4] = self;
    v36 = localObject;
    v42 = v36;
    v37 = v40;
    v43 = v37;
    if (([v21 renewPseudonym:pseudonymCopy forUpdatedExpiryEpoch:v22 requestProperties:v41 completionBlock:epoch] & 1) == 0)
    {
      v38 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v36];
      v39 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:600 userInfo:0];
      [v38 finishedRenewingPseudonym:0 success:0 error:v39 requestUUID:v37];
    }

    dCopy = v40;
  }

  else
  {
    v32 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v33 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:500 userInfo:0];
    dCopy = v40;
    [v32 finishedProvisioningPseudonym:0 success:0 error:v33 forRequestUUID:v40];

    propertiesCopy = v22;
  }

LABEL_16:
}

- (void)revokePseudonym:(id)pseudonym onAccount:(id)account requestProperties:(id)properties requestUUID:(id)d messageContext:(id)context
{
  pseudonymCopy = pseudonym;
  accountCopy = account;
  propertiesCopy = properties;
  dCopy = d;
  localObject = [context localObject];
  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = pseudonymCopy;
    v44 = 2112;
    v45 = accountCopy;
    v46 = 2112;
    v47 = localObject;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "revokePseudonym %@ onAccount %@ localObject %@", buf, 0x20u);
  }

  v18 = kIDSRegistrationEntitlement;
  v19 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v19)
  {
    v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v28 = IDSPseudonymErrorDomain;
    v29 = 500;
LABEL_15:
    v33 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    [v27 finishedRevokingPseudonymWithSuccess:0 error:v33 requestUUID:dCopy];

    goto LABEL_16;
  }

  v38 = dCopy;
  v20 = propertiesCopy;
  properties = [pseudonymCopy properties];
  allowedServices = [properties allowedServices];
  v23 = [(IDSDaemon *)self validateLocalObjectForPseudonym:localObject andCheckEntitlement:v18 forAccessToAnyOneOfServices:allowedServices];

  if (v23)
  {
    propertiesCopy = v20;
    if ((sub_1004AFDCC() & 1) == 0)
    {
      v32 = +[IMRGLog registration];
      dCopy = v38;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "revokePseudonym -- pseudonyms are disabled by the server!", buf, 2u);
      }

      v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
      v28 = IDSPseudonymErrorDomain;
      v29 = 100;
      goto LABEL_15;
    }

    v24 = +[IMSystemMonitor sharedInstance];
    isUnderFirstDataProtectionLock = [v24 isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
    {
      v26 = +[IMRGLog registration];
      dCopy = v38;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "revokePseudonym -- under first unlock -- failing", buf, 2u);
      }

      v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
      v28 = IDSPseudonymErrorDomain;
      v29 = 1000;
      goto LABEL_15;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1004B08B0;
    v39[3] = &unk_100BD6FB8;
    v39[4] = self;
    v34 = localObject;
    v40 = v34;
    v35 = v38;
    v41 = v35;
    if (([v19 revokePseudonym:pseudonymCopy requestProperties:v20 completionBlock:v39] & 1) == 0)
    {
      v36 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v34];
      v37 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:600 userInfo:0];
      [v36 finishedRevokingPseudonymWithSuccess:0 error:v37 requestUUID:v35];
    }

    dCopy = v38;
  }

  else
  {
    v30 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v31 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:500 userInfo:0];
    dCopy = v38;
    [v30 finishedProvisioningPseudonym:0 success:0 error:v31 forRequestUUID:v38];

    propertiesCopy = v20;
  }

LABEL_16:
}

- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI onAccount:(id)account requestUUID:(id)d messageContext:(id)context
{
  iCopy = i;
  rICopy = rI;
  accountCopy = account;
  dCopy = d;
  localObject = [context localObject];
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110402;
    actionCopy = action;
    v35 = 2112;
    v36 = iCopy;
    v37 = 2112;
    v38 = rICopy;
    v39 = 2112;
    v40 = accountCopy;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = localObject;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "reportAction %d ofTempURI %@ fromURI %@ onAccount %@ requestUUID %@ localObject %@", buf, 0x3Au);
  }

  v20 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v20)
  {
    v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
    v28 = [NSError errorWithDomain:IDSServiceReportingErrorDomain code:500 userInfo:0];
    [v27 finishedReportingRequestUUID:dCopy withError:v28];

    goto LABEL_13;
  }

  v29 = iCopy;
  v21 = [IDSServerBag sharedInstanceForBagType:0];
  v22 = [v21 objectForKey:@"enable-report-web-approval-status"];
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_11;
  }

  bOOLValue = [v22 BOOLValue];

  if (bOOLValue)
  {
LABEL_11:
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1004B0CA4;
    v30[3] = &unk_100BDD7B8;
    v30[4] = self;
    v31 = localObject;
    v32 = dCopy;
    iCopy = v29;
    [v20 reportAction:action ofTempURI:v29 fromURI:rICopy withCompletion:v30];

    goto LABEL_13;
  }

  v24 = +[IMRGLog registration];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "reportAction -- disabled by the server!", buf, 2u);
  }

  v25 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];
  v26 = [NSError errorWithDomain:IDSServiceReportingErrorDomain code:100 userInfo:0];
  [v25 finishedReportingRequestUUID:dCopy withError:v26];

  iCopy = v29;
LABEL_13:
}

- (void)registerAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "registerAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 registerAccount];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDE008];
  }
}

- (void)unregisterAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unregisterAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 unregisterAccount];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDE028];
  }
}

- (void)forceRemoveAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = accountCopy;
    v20 = 2112;
    v21 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "forceRemoveAccount %@ localObject %@", &v18, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    if ([v9 isTemporary])
    {
      if (![v10 accountType])
      {
        userUniqueIdentifier = [v10 userUniqueIdentifier];

        if (userUniqueIdentifier)
        {
          registrationConductor = [(IDSDaemon *)self registrationConductor];
          userStore = [registrationConductor userStore];
          userUniqueIdentifier2 = [v10 userUniqueIdentifier];
          v15 = [userStore userWithUniqueIdentifier:userUniqueIdentifier2];

          registrationConductor2 = [(IDSDaemon *)self registrationConductor];
          userStore2 = [registrationConductor2 userStore];
          [userStore2 forceRemoveUser:v15 silently:1];
        }
      }
    }
  }
}

- (void)_reregisterAndReidentify:(id)reidentify account:(id)account messageContext:(id)context
{
  reidentifyCopy = reidentify;
  accountCopy = account;
  localObject = [context localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = reidentifyCopy;
    v23 = 2112;
    v24 = accountCopy;
    v25 = 2112;
    v26 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_reregisterAndReidentify %@ account %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    registration = [v12 registration];
    registrationType = [registration registrationType];

    if (!registrationType)
    {
      v16 = +[IDSRegistrationReasonTracker sharedInstance];
      userUniqueIdentifier = [v13 userUniqueIdentifier];
      [v16 setPNRReason:10 forUserUniqueIdentifier:userUniqueIdentifier];
    }

    [v13 _reregisterAndReidentify:{objc_msgSend(reidentifyCopy, "BOOLValue")}];
    linkedAccounts = [v13 linkedAccounts];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1004B15AC;
    v19[3] = &unk_100BDB090;
    v20 = reidentifyCopy;
    [linkedAccounts __imForEach:v19];
  }
}

- (void)deactivateAndPurgeIdentifyForAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  localObject = [context localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deactivateAndPurgeIdentifyForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 deactivateAndPurgeIdentify];
    linkedAccounts = [v10 linkedAccounts];
    [linkedAccounts __imForEach:&stru_100BDE048];
  }
}

- (void)hardDeregisterWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v10 = 138412290;
    v11 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hard deregister localObject %@", &v10, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSRegistrationResetEntitlement];

  if (v8)
  {
    self->_isHardReset = 1;
    v9 = +[IDSDAccountController sharedInstance];
    [v9 hardDeregister];
  }
}

- (void)triggerFinalDeregisterWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v10 = 138412290;
    v11 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trigger final deregister localObject %@", &v10, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSRegistrationResetEntitlement];

  if (v8)
  {
    v9 = +[IDSDAccountController sharedInstance];
    [v9 triggerFinalDeregister];
  }
}

- (void)kickGetDependentForAccount:(id)account messageContext:(id)context
{
  accountCopy = account;
  contextCopy = context;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v14 = 138412546;
    v15 = accountCopy;
    v16 = 2112;
    v17 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Kicking get dependent for account %@ localObject %@", &v14, 0x16u);
  }

  localObject2 = [contextCopy localObject];
  v11 = [(IDSDaemon *)self accountWithIdentifier:accountCopy localObject:localObject2 requiredEntitlement:kIDSiCloudSignInHackEntitlement];

  v12 = +[IDSDAccountController sharedInstance];
  v13 = v12;
  if (v11)
  {
    [v12 issueGetDependentRequestForAccount:v11];
  }

  else
  {
    [v12 issueGetDependentRequest];
  }
}

- (void)reRegisterWithUserID:(id)d action:(id)action service:(id)service messageContext:(id)context
{
  dCopy = d;
  actionCopy = action;
  serviceCopy = service;
  localObject = [context localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (self)
  {
    v13 = +[IDSDRegistrationPushManager sharedInstance];
    [v13 fakeIncomingPushForUserID:dCopy style:actionCopy service:serviceCopy];
  }
}

- (void)repairAccountsWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v10 = 138412290;
    v11 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trigger accounts repair { localObject: %@ }", &v10, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v8)
  {
    registrationConductor = [(IDSDaemon *)self registrationConductor];
    [registrationConductor kickRepair];
  }
}

- (void)registerForRegistrationAccountStatusMetric
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for Registration Account Status Metric", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004B1FC4;
  handler[3] = &unk_100BDB3C8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.ids.registrationaccountstatusmetric", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)registerForRegistrationEventTrackCleanup
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for Registration Event Tracker Cleanup", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004B240C;
  handler[3] = &unk_100BDB3C8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.ids.registration.tracker", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)registerForSenderKeyCleanup
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for Sender Key Cleanup", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004B2880;
  handler[3] = &unk_100BDB3C8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.ids.senderkey.cleanup", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)registerForQueryDBCleanup
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for Query DB cleanup", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  xpc_activity_register("com.apple.ids.query.db.cleanup", XPC_ACTIVITY_CHECK_IN, &stru_100BDE088);
}

- (void)_submitRegistrationAccountStatusMetric
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = [&off_100C3DD00 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v25)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(&off_100C3DD00);
        }

        v3 = *(*(&v35 + 1) + 8 * i);
        v4 = +[IDSDServiceController sharedInstance];
        v5 = [v4 serviceWithIdentifier:v3];

        v6 = +[IDSDAccountController sharedInstance];
        v29 = v5;
        v7 = [v6 accountsOnService:v5];

        v28 = +[IDSRegistrationController systemSupportsPhoneNumberRegistration];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (!v9)
        {

          v30 = 0;
LABEL_21:
          v18 = [IDSDAccountMetrics registrationAccountStatusMetricForNonexistentAccountWithType:1 serviceIdentifier:v3];
          v19 = [IDSRTCLogger loggerWithCategory:4000];
          [v19 logMetric:v18];

          v20 = +[IDSCoreAnalyticsLogger defaultLogger];
          [v20 logMetric:v18];

          goto LABEL_22;
        }

        v10 = v9;
        v26 = v3;
        v27 = i;
        v30 = 0;
        v11 = 0;
        v12 = *v32;
        do
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v31 + 1) + 8 * j);
            if ([v14 accountType] == 1)
            {
              v11 = 1;
            }

            else
            {
              if ([v14 accountType])
              {
                continue;
              }

              v30 = 1;
            }

            v15 = [IDSDAccountMetrics registrationAccountStatusMetricForAccount:v14];
            v16 = [IDSRTCLogger loggerWithCategory:4000];
            [v16 logMetric:v15];

            v17 = +[IDSCoreAnalyticsLogger defaultLogger];
            [v17 logMetric:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v10);

        v3 = v26;
        i = v27;
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        if (v28)
        {
          if ((v30 & 1) == 0)
          {
            v21 = [IDSDAccountMetrics registrationAccountStatusMetricForNonexistentAccountWithType:0 serviceIdentifier:v3];
            v22 = [IDSRTCLogger loggerWithCategory:4000];
            [v22 logMetric:v21];

            v23 = +[IDSCoreAnalyticsLogger defaultLogger];
            [v23 logMetric:v21];
          }
        }
      }

      v25 = [&off_100C3DD00 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v25);
  }
}

- (void)clearIDSStateWithMessageContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  localObject = [contextCopy localObject];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004B359C;
  v12[3] = &unk_100BDE0B0;
  v12[4] = self;
  v12[5] = &v13;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v12];

  if (v14[3])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      localObject2 = [contextCopy localObject];
      *buf = 138412290;
      v18 = localObject2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to clear IDS state %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      localObject3 = [contextCopy localObject];
      _IDSLogV();
    }

    [(IDSDaemon *)self _clearIDSState];
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localObject4 = [contextCopy localObject];
      *buf = 138412290;
      v18 = localObject4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not entitled to clear IDS state %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      localObject3 = [contextCopy localObject];
      _IDSLogV();
    }

    v10 = +[IMUserDefaults sharedDefaults];
    [v10 setClearStateOnLaunch:0];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)_clearIDSState
{
  v2 = +[IMUserDefaults sharedDefaults];
  [v2 setClearStateOnLaunch:0];

  v3 = +[IDSPeerIDManager sharedInstance];
  [v3 clearCacheAndPersistImmediately:1];

  v4 = +[IDSPublicKeyStorage sharedInstance];
  [v4 clearCache];

  v5 = +[IDSIDStatusQueryController sharedInstance];
  [v5 clearCache];

  v6 = [IDSDMessageStore sharedInstanceForDataProtectionClass:1];
  [v6 deleteDatabase];

  v7 = [IDSDMessageStore sharedInstanceForDataProtectionClass:0];
  [v7 deleteDatabase];

  v8 = [IDSDMessageStore sharedInstanceForDataProtectionClass:2];
  [v8 deleteDatabase];
}

- (void)initialLocalSyncStartedForServices:(id)services messageContext:(id)context
{
  servicesCopy = services;
  contextCopy = context;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
    *&buf[12] = 2112;
    *&buf[14] = servicesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initial: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
      v16 = servicesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
        v16 = servicesCopy;
        _IDSLogV();
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  localObject = [contextCopy localObject];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1004B39B8;
  v17[3] = &unk_100BDE0D8;
  v17[4] = self;
  v10 = servicesCopy;
  v18 = v10;
  v19 = buf;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v17];

  if (*(*&buf[8] + 24))
  {
    if ([v10 count])
    {
      v11 = +[IDSUTunDeliveryController sharedInstance];
      [v11 defaultPeerSetPreferInfraWiFi:1 services:v10];
    }

    v12 = +[IDSDuetInterface sharedInstance];
    localObject2 = [contextCopy localObject];
    processName = [localObject2 processName];
    [v12 setInitialSyncInProgress:1 forClientID:processName];
  }

  _Block_object_dispose(buf, 8);
}

- (void)initialLocalSyncCompletedForServices:(id)services messageContext:(id)context
{
  servicesCopy = services;
  contextCopy = context;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
    *&buf[12] = 2112;
    *&buf[14] = servicesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initial: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
      v16 = servicesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
        v16 = servicesCopy;
        _IDSLogV();
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  localObject = [contextCopy localObject];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1004B3D24;
  v17[3] = &unk_100BDE0D8;
  v17[4] = self;
  v10 = servicesCopy;
  v18 = v10;
  v19 = buf;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v17];

  if (*(*&buf[8] + 24))
  {
    if ([v10 count])
    {
      v11 = +[IDSUTunDeliveryController sharedInstance];
      [v11 defaultPeerSetPreferInfraWiFi:0 services:v10];
    }

    v12 = +[IDSDuetInterface sharedInstance];
    localObject2 = [contextCopy localObject];
    processName = [localObject2 processName];
    [v12 setInitialSyncInProgress:0 forClientID:processName];
  }

  _Block_object_dispose(buf, 8);
}

- (void)iCloudSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context
{
  nameCopy = name;
  tokenCopy = token;
  passwordCopy = password;
  infoCopy = info;
  statusCopy = status;
  handlesCopy = handles;
  contextCopy = context;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v27 = 138412546;
    v28 = nameCopy;
    v29 = 2112;
    v30 = localObject;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "iCloudSignInWithUserName %@ localObject %@", &v27, 0x16u);
  }

  localObject2 = [contextCopy localObject];
  v25 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v25)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignInWithUsername:nameCopy authToken:tokenCopy password:passwordCopy accountInfo:infoCopy accountStatus:statusCopy handles:handlesCopy];
  }
}

- (void)iCloudUpdateForUserName:(id)name accountInfo:(id)info messageContext:(id)context
{
  nameCopy = name;
  infoCopy = info;
  contextCopy = context;
  v11 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v16 = 138412546;
    v17 = nameCopy;
    v18 = 2112;
    v19 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloudUpdateForUserName %@ localObject %@", &v16, 0x16u);
  }

  localObject2 = [contextCopy localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v14)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudUpdateForUsername:nameCopy accountInfo:infoCopy];
  }
}

- (void)iCloudModifyForUserName:(id)name messageContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v8 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v13 = 138412546;
    v14 = nameCopy;
    v15 = 2112;
    v16 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCloudModifyForUserName %@ localObject %@", &v13, 0x16u);
  }

  localObject2 = [contextCopy localObject];
  v11 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v11)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudModifyForUsername:nameCopy];
  }
}

- (void)iCloudSignOutWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v10 = 138412290;
    v11 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iCloudSignOut %@", &v10, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v8)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignOut];
  }
}

- (void)iTunesSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context
{
  nameCopy = name;
  tokenCopy = token;
  passwordCopy = password;
  infoCopy = info;
  statusCopy = status;
  handlesCopy = handles;
  contextCopy = context;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v27 = 138412546;
    v28 = nameCopy;
    v29 = 2112;
    v30 = localObject;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "iTunesSignInWithUserName %@ localObject %@", &v27, 0x16u);
  }

  localObject2 = [contextCopy localObject];
  v25 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v25)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iTunesSignInWithUsername:nameCopy authToken:tokenCopy password:passwordCopy accountInfo:infoCopy accountStatus:statusCopy handles:handlesCopy];
  }
}

- (void)iTunesSignOutWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v10 = 138412290;
    v11 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iTunesSignOut %@", &v10, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2];

  if (v8)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iTunesSignOut];
  }
}

- (void)gameCenterSignInWithUserName:(id)name authToken:(id)token password:(id)password accountInfo:(id)info accountStatus:(id)status handles:(id)handles messageContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  handlesCopy = handles;
  statusCopy = status;
  infoCopy = info;
  passwordCopy = password;
  tokenCopy = token;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v25 = 138412546;
    v26 = nameCopy;
    v27 = 2112;
    v28 = localObject;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "gameCenterSignInWithUserName %@ localObject %@", &v25, 0x16u);
  }

  signInResponder = [(IDSDaemon *)self signInResponder];
  [signInResponder gameCenterSignInWithUsername:nameCopy authToken:tokenCopy password:passwordCopy accountInfo:infoCopy accountStatus:statusCopy handles:handlesCopy];
}

- (void)gameCenterSignOutWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v8 = 138412290;
    v9 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "gameCenterSignOut %@", &v8, 0xCu);
  }

  signInResponder = [(IDSDaemon *)self signInResponder];
  [signInResponder gameCenterSignOut];
}

- (void)gameCenterModifyForUserName:(id)name messageContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v8 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v11 = 138412546;
    v12 = nameCopy;
    v13 = 2112;
    v14 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "gameCenterModifyForUserName %@ localObject %@", &v11, 0x16u);
  }

  signInResponder = [(IDSDaemon *)self signInResponder];
  [signInResponder gameCenterModifyForUserName:nameCopy];
}

- (void)updateUserWithOldUserName:(id)name newUserName:(id)userName messageContext:(id)context
{
  nameCopy = name;
  userNameCopy = userName;
  localObject = [context localObject];
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:localObject];

  if (v10)
  {
    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder updateUserWithOldUsername:nameCopy newUsername:userNameCopy];
  }
}

- (void)iCloudSignInHackWithUserName:(id)name password:(id)password messageContext:(id)context
{
  nameCopy = name;
  passwordCopy = password;
  contextCopy = context;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (passwordCopy)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    localObject = [contextCopy localObject];
    v18 = 138412802;
    v19 = nameCopy;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud sign in hack with userName %@ and password %@ localObject %@", &v18, 0x20u);
  }

  localObject2 = [contextCopy localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v15)
  {
    registrationConductor = [(IDSDaemon *)self registrationConductor];
    [registrationConductor setShouldSupressRepairLogic:1];

    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignInWithUsername:nameCopy authToken:0 password:passwordCopy accountInfo:0 accountStatus:0 handles:0];
  }
}

- (void)iCloudSignOutHackWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    v11 = 138412290;
    v12 = localObject;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iCloud sign out hack with localObject %@", &v11, 0xCu);
  }

  localObject2 = [contextCopy localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v8)
  {
    registrationConductor = [(IDSDaemon *)self registrationConductor];
    [registrationConductor setShouldSupressRepairLogic:1];

    signInResponder = [(IDSDaemon *)self signInResponder];
    [signInResponder iCloudSignOut];
  }
}

- (void)setPassword:(id)password forUsername:(id)username onService:(id)service messageContext:(id)context
{
  passwordCopy = password;
  usernameCopy = username;
  serviceCopy = service;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = localObject;
    v25 = 2112;
    v26 = usernameCopy;
    v27 = 2048;
    v28 = passwordCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setPasswordForProfileID localObject %@ {username: %@, password: %p", &v23, 0x20u);
  }

  if (([(__CFString *)serviceCopy isEqualToString:@"FaceTime"]& 1) != 0)
  {
    v16 = @"com.apple.ess";
  }

  else
  {
    v17 = [(__CFString *)serviceCopy isEqualToString:@"iMessage"];
    v16 = @"com.apple.madrid";
    if (!v17)
    {
      v16 = serviceCopy;
    }
  }

  v18 = v16;
  localObject2 = [contextCopy localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:v18])
  {

LABEL_10:
    v22 = +[FTPasswordManager sharedInstance];
    [v22 setPasswordForProfileID:0 username:usernameCopy service:serviceCopy password:passwordCopy outRequestID:0 completionBlock:&stru_100BDE0F8];

    goto LABEL_11;
  }

  localObject3 = [contextCopy localObject];
  v21 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateSubServices:(id)services forService:(id)service deviceUniqueID:(id)d messageContext:(id)context
{
  servicesCopy = services;
  serviceCopy = service;
  dCopy = d;
  contextCopy = context;
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = servicesCopy;
    v20 = 2112;
    v21 = serviceCopy;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating sub services %@ for service %@ deviceUniqueID %@", &v18, 0x20u);
  }

  localObject = [contextCopy localObject];

  v16 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSSubServicesEntitlement forAccessToServiceWithIdentifier:serviceCopy];
  if (v16)
  {
    v17 = +[IDSDServiceController sharedInstance];
    [v17 updateSubServices:servicesCopy forService:serviceCopy deviceUniqueID:dCopy];
  }
}

- (void)setPairedDeviceInfo:(id)info messageContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Save paired device info: %@", &v13, 0xCu);
  }

  localObject = [contextCopy localObject];

  v10 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSEncryptionKeysEntitlement];
  if (v10)
  {
    v11 = +[IDSPairingManager sharedInstance];
    [v11 setPairedDeviceInfo:infoCopy];

    v12 = +[IDSAccountSync sharedInstance];
    [v12 resetAndResynchronizeEverything];
  }
}

- (void)setNSUUID:(id)d onDeviceWithUniqueID:(id)iD forService:(id)service messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  contextCopy = context;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  localObject = [contextCopy localObject];
  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1004B58DC;
  v39 = &unk_100BDE0D8;
  selfCopy = self;
  v15 = serviceCopy;
  v41 = v15;
  v42 = &v43;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:&v36];

  if (v44[3])
  {
    v16 = +[IDSDAccountController sharedInstance];
    v17 = [v16 cloudPairedIDForDeviceID:iDCopy];

    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      localObject2 = [contextCopy localObject];
      *buf = 138413314;
      v48 = dCopy;
      v49 = 2112;
      v50 = iDCopy;
      v51 = 2112;
      v52 = v17;
      v53 = 2112;
      v54 = v15;
      v55 = 2112;
      v56 = localObject2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting NSUUID %@ on device with uniqueID %@  current pariedID: %@  service %@ localObject %@", buf, 0x34u);
    }

    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v48 = dCopy;
      v49 = 2112;
      v50 = iDCopy;
      v51 = 2112;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " *** Cloud pairing detected setting BTUUID %@   on device ID: %@ **** (From: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v34 = iDCopy;
        v35 = v17;
        v33 = dCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v34 = iDCopy;
          v35 = v17;
          v33 = dCopy;
          _IDSLogV();
        }
      }
    }

    v21 = [IMSystemMonitor sharedInstance:v33];
    isUnderFirstDataProtectionLock = [v21 isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
    {
      self->_cloudPairingBeforeFirstUnlock = 1;
      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => Noting it was before first unlock", buf, 2u);
      }
    }

    if (dCopy && v17 && [v17 isEqualToIgnoringCase:dCopy])
    {
      v24 = +[IMRGLog registration];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " => Ignoring, no change", buf, 2u);
      }

      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " => Ignoring, no change", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v26 = +[IMLockdownManager sharedInstance];
      isInternalInstall = [v26 isInternalInstall];

      if (isInternalInstall)
      {
        v28 = +[IDSDAccountController sharedInstance];
        v29 = [v28 propertiesForDeviceWithUniqueID:iDCopy];

        v30 = +[IMRGLog registration];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   => Device properties: %@", buf, 0xCu);
        }

        if ([dCopy length])
        {
          v31 = [NSString stringWithFormat:@"If this was unexpected, please file a radar (PEP Transport) and attach output of 'idstool dump'. See 17180900 for reference"];
          sub_100450174(0, @"iCloud Pairing Added", v31, 1120);
        }

        else
        {
          v31 = [NSString stringWithFormat:@"If this was unexpected, please file a radar (PEP Transport) and attach output of 'idstool dump'. See 17180900 for reference"];
          sub_100450174(0, @"iCloud Pairing Removed", v31, 1073);
        }
      }

      v32 = +[IDSDAccountController sharedInstance];
      [v32 setNSUUID:dCopy onDeviceWithUniqueID:iDCopy];

      im_dispatch_after_primary_queue();
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (void)incomingAccountSyncMessage:(id)message fromID:(id)d messageContext:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v11 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Daemon received incoming account sync message", v15, 2u);
  }

  localObject = [contextCopy localObject];

  v13 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSAccountSyncEntitlement];
  if (v13)
  {
    v14 = +[IDSAccountSync sharedInstance];
    [v14 incomingSyncMessage:messageCopy fromID:dCopy];
  }
}

- (void)regenerateRegisteredIdentityWithMessageContext:(id)context
{
  contextCopy = context;
  v5 = +[IMRGLog keyRoll];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to regenerate registered identity", buf, 2u);
  }

  localObject = [contextCopy localObject];

  v7 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSKeyRollingEntitlement];
  if (v7)
  {
    v8 = +[IDSRegistrationKeyManager sharedInstance];
    [v8 regenerateRegisteredIdentity];
  }

  else
  {
    v8 = +[IMRGLog keyRoll];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Missing key rolling entitlement -- returning early", v9, 2u);
    }
  }
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System did leave first unlock, checking pending if we cloud paired before unlock", buf, 2u);
  }

  if (self->_cloudPairingBeforeFirstUnlock)
  {
    self->_cloudPairingBeforeFirstUnlock = 0;
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "   we did! let's update accounts in a few seconds", v7, 2u);
    }

    im_dispatch_after_primary_queue();
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System has left first unlock: processing stored incoming messages.", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSDaemon *)self _processStoredMessagesIncludingClassD:0];
}

- (void)registrationControlSetRegistrationStateForRegistrationType:(int64_t)type toState:(int64_t)state requestID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSRegistrationControlEntitlement];

  if ((v13 & 1) == 0)
  {
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Attempt to use the Registration Control API's without the correct entitlement, Failing request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v27 = [NSError alloc];
    v24 = [v27 initWithDomain:IDSRegistrationControlErrorDomain code:3 userInfo:0];
    [(IDSDaemon *)self _respondToRegistrationControlWithRequestID:dCopy status:0 messageContext:contextCopy error:v24];
    goto LABEL_11;
  }

  v14 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:type];
    v16 = [NSNumber numberWithInteger:state];
    localObject2 = [contextCopy localObject];
    *buf = 138412802;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = localObject2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "registrationControlSetRegistrationStateForRegistrationType %@ registrationType %@ localObject %@", buf, 0x20u);
  }

  v18 = +[IDSDRegistrationControl sharedInstance];
  v28 = 0;
  [v18 updateRegistrationType:type toState:state error:&v28];
  v19 = v28;

  [(IDSDaemon *)self respondToRegistrationControlActionWithRequestID:dCopy messageContext:contextCopy error:v19];
  localObject3 = [contextCopy localObject];
  processName = [localObject3 processName];
  LODWORD(v18) = [processName isEqualToString:@"Setup"];

  if (v18)
  {
    v22 = +[FTDeviceSupport sharedInstance];
    isGreenTea = [v22 isGreenTea];

    v24 = [[IDSRegistrationControlChosenMetric alloc] initWithControlRegistrationType:type registrationControlStatus:state isInterestingRegion:isGreenTea];
    v25 = +[IDSAWDLogger logger];
    [v25 logMetric:v24];

LABEL_11:
  }
}

- (void)registrationControlGetRegistrationStateForRegistrationType:(int64_t)type requestID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  localObject = [contextCopy localObject];
  v11 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSRegistrationControlEntitlement];

  if (v11)
  {
    v12 = +[IDSDRegistrationControl sharedInstance];
    v20 = 0;
    v13 = [v12 registrationStateForRegistrationType:type error:&v20];
    v14 = v20;

    selfCopy2 = self;
    v16 = dCopy;
    v17 = v13;
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Attempt to use the Registration Control API's without the correct entitlement, Failing request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v19 = [NSError alloc];
    v14 = [v19 initWithDomain:IDSRegistrationControlErrorDomain code:3 userInfo:0];
    selfCopy2 = self;
    v16 = dCopy;
    v17 = 0;
  }

  [(IDSDaemon *)selfCopy2 _respondToRegistrationControlWithRequestID:v16 status:v17 messageContext:contextCopy error:v14];
}

- (void)respondToRegistrationControlActionWithRequestID:(id)d messageContext:(id)context error:(id)error
{
  errorCopy = error;
  dCopy = d;
  localObject = [context localObject];
  v11 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:localObject];

  [v11 registrationControlResponseForRequestID:dCopy withError:errorCopy];
}

- (void)_respondToRegistrationControlWithRequestID:(id)d status:(int64_t)status messageContext:(id)context error:(id)error
{
  errorCopy = error;
  contextCopy = context;
  dCopy = d;
  [contextCopy setReply:1];
  localObject = [contextCopy localObject];
  v14 = [(IDSDaemon *)self broadcasterForLocalObject:localObject messageContext:contextCopy];

  [v14 registrationControlStatusResponseForRequestID:status requestID:dCopy withError:errorCopy];
}

- (id)messageStoreForDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
  v4 = objc_opt_class();

  return [v4 messageStoreForDataProtectionClass:v3];
}

- (void)_registerForDailyMetricReporting
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for daily metric reporting.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100571D48;
  handler[3] = &unk_100BDB3C8;
  objc_copyWeak(&v5, buf);
  xpc_activity_register("com.apple.ids.dailymetricreport", XPC_ACTIVITY_CHECK_IN, handler);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)reportDailyMetrics
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reporting daily PNR status and daily account added notifications.", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = +[IDSSMSRegistrationCenter sharedInstance];
  [v3 reportDailyMetric];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"com.apple.ids.daemonDailyMetricNotification" object:0];

  v5 = +[IDSAppleIDNotificationCenter sharedInstance];
  [v5 reportDailyNotificationMetrics];
}

- (void)deliveryController:(id)controller device:(id)device supportsDirectMessaging:(BOOL)messaging isObliterating:(BOOL)obliterating
{
  if (obliterating)
  {
    [(IDSDaemon *)self notifyClients:2, device, messaging];
  }
}

- (id)copyDirectMessagingInfo
{
  if (!_IDSSupportsDirectMessaging())
  {
    return 0;
  }

  v3 = objc_alloc_init(NSMutableData);
  v5[0] = 0;
  v5[1] = 0;
  [(IDSDaemon *)self writeIDSDirectMessageInfo:v5];
  [v3 appendBytes:v5 length:16];
  return v3;
}

- (void)processDirectMessagingCapability:(BOOL)capability
{
  if (_IDSSupportsDirectMessaging() && !capability)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "direct messaging capability not supported by peer", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    [(IDSDaemon *)self notifyClients:0];
  }
}

- (void)processDirectMessagingInfo:(id)info
{
  infoCopy = info;
  if (_IDSSupportsDirectMessaging())
  {
    if ([infoCopy length] > 0xF)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "processing direct messaging info", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v18 = 0;
      v19 = 0;
      [infoCopy getBytes:&v18 length:16];
      v16 = 0;
      v17 = 0;
      [(IDSDaemon *)self writeIDSDirectMessageInfo:&v16];
      if (v18 >= v16)
      {
        v7 = v16;
      }

      else
      {
        v7 = v18;
      }

      v8 = v7 != 0;
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v21 = v7;
        *&v21[4] = 1024;
        *&v21[6] = v16;
        LOWORD(v22) = 1024;
        *(&v22 + 2) = v18;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "direct messaging info: resolved version %u (l:%u r:%u)", buf, 0x14u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v14 = v16;
        v15 = v18;
        v13 = v7;
        _IDSLogV();
      }

      v10 = bswap64(v17 & v19);
      if ((v10 & 2) != 0)
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "direct messaging info: peer supports device connection", buf, 2u);
        }

        v8 |= 4uLL;
        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      if ((v10 & 4) != 0)
      {
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "direct messaging info: peer supports concise ACKs", buf, 2u);
        }

        v8 |= 8uLL;
        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      [(IDSDaemon *)self notifyClients:v8, v13, v14, v15];
    }

    else
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *v21 = [infoCopy length];
        *&v21[8] = 2048;
        v22 = 16;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Invalid message size (%lu < %zu)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [infoCopy length];
        _IDSLogV();
      }
    }
  }
}

- (void)notifyClients:(unint64_t)clients
{
  if (_IDSSupportsDirectMessaging() && qword_100CBF040 != clients)
  {
    if (clients)
    {
      pthread_mutex_lock(&self->_listenerLock);

      pthread_mutex_unlock(&self->_listenerLock);
    }

    if (dword_100CB1420 == -1)
    {
      notify_register_check("com.apple.ids.direct-messaging", &dword_100CB1420);
    }

    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      clientsCopy = clients;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notifying clients with state: %llu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    notify_set_state(dword_100CB1420, clients);
    notify_post("com.apple.ids.direct-messaging");
    qword_100CBF040 = clients;
  }
}

- (void)receivedDirectMsgSocketRequestForService:(id)service stream:(id)stream flags:(unint64_t)flags
{
  serviceCopy = service;
  streamCopy = stream;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received direct messaging connection for service: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_IDSSupportsDirectMessaging())
  {
    [(IDSDaemon *)self wakeClientForService:serviceCopy stream:streamCopy flags:flags];
  }
}

- (id)_updateDirectMessagingMetadataForRemoteObject:(id)object shouldBroadcastForRemoteObject:(BOOL)remoteObject
{
  remoteObjectCopy = remoteObject;
  objectCopy = object;
  if (!_IDSSupportsDirectMessaging())
  {
    v17 = 0;
    goto LABEL_54;
  }

  v43 = remoteObjectCopy;
  v44 = objectCopy;
  im_assert_primary_base_queue();
  v6 = +[IDSDServiceController sharedInstance];
  allServicesStrings = [v6 allServicesStrings];

  if (allServicesStrings && [allServicesStrings count])
  {
    v7 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v7 pairedDeviceUniqueID];

    if (pairedDeviceUniqueID)
    {
      v41 = [[NSUUID alloc] initWithUUIDString:pairedDeviceUniqueID];
      entitlements = [objectCopy entitlements];
      v9 = kIDSMessagingEntitlement;
      if ([entitlements hasEntitlement:kIDSMessagingEntitlement] & 1) != 0 || (objc_msgSend(entitlements, "hasEntitlement:", kIDSUrgentPriorityMessagingEntitlement) & 1) != 0 || (objc_msgSend(entitlements, "hasEntitlement:", kIDSHighPriorityMessagingEntitlement))
      {
        localObject7 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v10 = allServicesStrings;
        v11 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v11)
        {
          v12 = *v48;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v48 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v47 + 1) + 8 * i);
              if ([entitlements hasService:v14 forEntitlement:v9])
              {
                v15 = +[IDSDServiceController sharedInstance];
                v16 = [v15 serviceWithName:v14];

                if ([v16 allowWakingMessages] && objc_msgSend(v16, "dataProtectionClass") != 1 && (objc_msgSend(v16, "shouldProtectTrafficUsingClassA") & 1) == 0)
                {
                  [localObject7 addObject:v14];
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v11);
        }

        if ([localObject7 count])
        {
          v17 = objc_alloc_init(NSMutableDictionary);
          uUIDString = [v41 UUIDString];
          [v17 setObject:uUIDString forKeyedSubscript:@"peerIDForDirectMsg"];

          [v17 setObject:localObject7 forKeyedSubscript:@"directMsgAllowedForServices"];
          v19 = [NSNumber numberWithInt:getpid()];
          [v17 setObject:v19 forKeyedSubscript:@"pidForIDSD"];

          v20 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            localObject = [v44 localObject];
            processName = [localObject processName];
            *buf = 138412802;
            v52 = processName;
            v53 = 2112;
            v54 = v17;
            v55 = 1024;
            v56 = v43;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "completing setup info for %@ : %@, broadcast %d", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            localObject2 = [v44 localObject];
            processName2 = [localObject2 processName];
            _IDSLogV();
          }

          if (!v43)
          {
            goto LABEL_51;
          }

          v24 = +[IDSDaemon sharedInstance];
          localObject3 = [v44 localObject];
          localObject5 = [v24 broadcasterForLocalObject:localObject3 messageContext:0];

          [localObject5 receivedMetadataForDirectMessaging:v17];
          goto LABEL_50;
        }

        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          localObject4 = [v44 localObject];
          processName3 = [localObject4 processName];
          *buf = 138412290;
          v52 = processName3;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No allowed services when processing %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          v17 = 0;
LABEL_51:

LABEL_52:
          goto LABEL_53;
        }

        localObject5 = [v44 localObject];
        processName4 = [localObject5 processName];
        _IDSLogV();
      }

      else
      {
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          localObject6 = [objectCopy localObject];
          processName5 = [localObject6 processName];
          *buf = 138412290;
          v52 = processName5;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No entitlements when processing %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          v17 = 0;
          goto LABEL_52;
        }

        localObject7 = [objectCopy localObject];
        localObject5 = [localObject7 processName];
        _IDSLogV();
      }

      v17 = 0;
LABEL_50:

      goto LABEL_51;
    }
  }

  else
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      localObject8 = [objectCopy localObject];
      processName6 = [localObject8 processName];
      *buf = 138412290;
      v52 = processName6;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No services when processing %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      localObject9 = [objectCopy localObject];
      processName7 = [localObject9 processName];
      _IDSLogV();
    }
  }

  v17 = 0;
LABEL_53:
  objectCopy = v44;
LABEL_54:

  return v17;
}

- (id)_copyDirectMessagingMetadataForRemoteObject:(id)object
{
  objectCopy = object;
  if (_IDSSupportsDirectMessaging())
  {
    v5 = [(IDSDaemon *)self _updateDirectMessagingMetadataForRemoteObject:objectCopy shouldBroadcastForRemoteObject:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)wakeClientForService:(id)service stream:(id)stream flags:(unint64_t)flags
{
  serviceCopy = service;
  streamCopy = stream;
  if ((flags & 0x40) != 0)
  {
    v10 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
LABEL_8:
    v9 = *v10;
    goto LABEL_9;
  }

  if ((flags & 0x20) != 0)
  {
    v10 = &kIDSListenerCapConsumesLaunchOnDemandIncomingData;
    goto LABEL_8;
  }

  if ((flags & 0x80) != 0)
  {
    v9 = kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  v11 = 100;
  if ((flags & 0x10) == 0)
  {
    v11 = 200;
  }

  if ((flags & 8) != 0)
  {
    v12 = 300;
  }

  else
  {
    v12 = v11;
  }

  v30 = v12;
  v13 = [[IDSIncomingMessageBroadcast alloc] initWithBroadcastBlock:0 needsClientAck:0 messageUUID:@"65AC1229-66CB-4C74-BE47-F5342D60E37E" priority:v12 senderID:@"65AC1229-66CB-4C74-BE47-F5342D60E37E" sequenceNumber:1];
  v14 = xpc_dictionary_create(0, 0, 0);
  v28 = streamCopy;
  v15 = xpc_string_create([streamCopy UTF8String]);
  IMInsertBoolsToXPCDictionary();
  v29 = v15;
  xpc_dictionary_set_value(v14, "object", v15);
  v16 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v16, @"object-type", @"direct-messaging-socket-received");
  v17 = [NSNumber numberWithUnsignedLongLong:flags, 1, 0];
  if (v17)
  {
    CFDictionarySetValue(v16, @"object-flags", v17);
  }

  if (serviceCopy)
  {
    CFDictionarySetValue(v16, @"object-recipient", serviceCopy);
  }

  v27 = [(__CFDictionary *)v16 copy];
  IMInsertKeyedCodableObjectsToXPCDictionary();

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "issuing connected socket to client %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = serviceCopy;
    _IDSLogV();
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10057FD14;
  v38[3] = &unk_100BE08C8;
  v39 = v14;
  v19 = v14;
  v20 = objc_retainBlock(v38);
  v21 = objc_alloc_init(IMMessageContext);
  [v21 setShouldBoost:{1, v27, 0}];
  v22 = +[IDSDaemonPriorityQueueController sharedInstance];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10057FD20;
  v32[3] = &unk_100BE08F0;
  v35 = v21;
  v36 = v20;
  v32[4] = self;
  v33 = v13;
  v37 = v9;
  v34 = serviceCopy;
  v23 = v21;
  v24 = serviceCopy;
  v25 = v13;
  v26 = v20;
  [v22 performBlockWithPriority:v32 priority:v30];
}

+ (void)sendMessageWithIDSSendParameters:(id)parameters messageContext:(id)context threadContext:(id)threadContext progressBlock:(id)block onObject:(id)object
{
  parametersCopy = parameters;
  contextCopy = context;
  threadContextCopy = threadContext;
  blockCopy = block;
  objectCopy = object;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v53 = _os_activity_create(&_mh_execute_header, "Daemon sendMessage with parameters", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v53, &state);
  serviceIdentifier = [threadContextCopy serviceIdentifier];
  servicePushTopic = [threadContextCopy servicePushTopic];
  listenerID = [threadContextCopy listenerID];
  entitlements = [threadContextCopy entitlements];
  serviceAdHocType = [threadContextCopy serviceAdHocType];
  accountDescription = [threadContextCopy accountDescription];
  subService = [threadContextCopy subService];
  if ([subService length])
  {
    [threadContextCopy subService];
  }

  else
  {
    [threadContextCopy serviceIdentifier];
  }
  v19 = ;

  silentlyFailMessagesOnSwitch = [threadContextCopy silentlyFailMessagesOnSwitch];
  if (([self entitlementDictionary:entitlements isEntitledToAccessService:serviceIdentifier forEntitlement:kIDSMessagingEntitlement forAccount:accountDescription shouldWarn:0] & 1) == 0)
  {
    goto LABEL_37;
  }

  if ([self entitlementDictionary:entitlements isEntitledToAccessService:serviceIdentifier forEntitlement:kIDSBypassSizeCheckEntitlement forAccount:accountDescription shouldWarn:0])
  {
    [parametersCopy setBypassSizeCheck:1];
  }

  priority = [parametersCopy priority];
  v21 = +[IDSTrafficMonitor sharedInstance];
  v22 = [v21 noteOutgoingMessageForService:v19 serviceType:serviceAdHocType requestor:listenerID];

  if (v22)
  {
    homeKitPayload = [parametersCopy homeKitPayload];
    [parametersCopy setEncryptPayload:1];
    if (homeKitPayload)
    {
      [parametersCopy setCompressPayload:0];
      [parametersCopy setEncryptPayload:0];
    }

    if ([serviceIdentifier isEqualToString:@"com.apple.private.alloy.bulletinboard"])
    {
      [parametersCopy setEncryptPayload:0];
    }

    if ([parametersCopy forceEncryptionOff] && objc_msgSend(serviceIdentifier, "isEqualToString:", @"com.apple.private.alloy.keychainsync") && objc_msgSend(self, "entitlementDictionary:isEntitledToAccessService:forEntitlement:forAccount:shouldWarn:", entitlements, serviceIdentifier, kIDSForceEncryptionOffEntitlement, accountDescription, 0))
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = serviceIdentifier;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Forcing encryption off for message on %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v31 = serviceIdentifier;
        _IDSLogV();
      }

      [parametersCopy setEncryptPayload:{0, v31}];
    }

    [contextCopy setShouldBoost:priority == 300];
    requireAllRegistrationProperties = [parametersCopy requireAllRegistrationProperties];
    if (requireAllRegistrationProperties || ([parametersCopy interestingRegistrationProperties], (requireAllRegistrationProperties = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      requireLackOfRegistrationProperties = [parametersCopy requireLackOfRegistrationProperties];
      v30 = requireLackOfRegistrationProperties == 0;

      if (v30)
      {
        v32 = 0;
        goto LABEL_25;
      }
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10064DD64;
    v49[3] = &unk_100BE31D0;
    v50 = parametersCopy;
    v51 = contextCopy;
    v32 = objc_retainBlock(v49);

LABEL_25:
    v26 = _os_activity_create(&_mh_execute_header, "Send message with send parameters", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    if ([self shouldProcessOutgoingMessageWithSendParameters:parametersCopy messageContext:contextCopy threadContext:threadContextCopy onObject:objectCopy])
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10064E0FC;
      v39[3] = &unk_100BE31F8;
      v40 = v26;
      v41 = parametersCopy;
      v42 = contextCopy;
      v48 = silentlyFailMessagesOnSwitch;
      v43 = v19;
      v44 = threadContextCopy;
      selfCopy = self;
      v45 = objectCopy;
      v46 = servicePushTopic;
      [self _sendMessageWithSendParameters:v41 threadContext:v44 onObject:v45 willSendBlock:v32 progressBlock:blockCopy completionBlock:v39];
    }

    else
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Skipping processing of outgoing message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    goto LABEL_37;
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "*** Over budget, failing sendMessage on service: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

LABEL_37:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

+ (void)_forwardSendMessageToAccountWithSendParameters:(id)parameters service:(id)service threadContext:(id)context guid:(id)guid dataProtectionClass:(unsigned int)class willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)self0
{
  parametersCopy = parameters;
  serviceCopy = service;
  contextCopy = context;
  guidCopy = guid;
  blockCopy = block;
  progressBlockCopy = progressBlock;
  completionBlockCopy = completionBlock;
  data = [parametersCopy data];

  if (data)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = serviceCopy;
      accountUUID = [parametersCopy accountUUID];
      data2 = [parametersCopy data];
      v23 = [data2 length];
      destinations = [parametersCopy destinations];
      identifier = [parametersCopy identifier];
      *buf = 138413314;
      v45 = accountUUID;
      v46 = 1024;
      *v47 = v23;
      *&v47[4] = 2112;
      *&v47[6] = destinations;
      *&v47[14] = 2112;
      *&v47[16] = identifier;
      *&v47[24] = 2112;
      *&v47[26] = guidCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "account %@ sendMessage with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);

      serviceCopy = v20;
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      accountUUID2 = [parametersCopy accountUUID];
      data3 = [parametersCopy data];
      [data3 length];
      destinations2 = [parametersCopy destinations];
      identifier2 = [parametersCopy identifier];
      _IDSLogV();
LABEL_12:
    }
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      accountUUID3 = [parametersCopy accountUUID];
      message = [parametersCopy message];
      destinations3 = [parametersCopy destinations];
      identifier3 = [parametersCopy identifier];
      *buf = 138413314;
      v45 = accountUUID3;
      v46 = 2112;
      *v47 = message;
      *&v47[8] = 2112;
      *&v47[10] = destinations3;
      *&v47[18] = 2112;
      *&v47[20] = identifier3;
      *&v47[28] = 2112;
      *&v47[30] = guidCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "account %@ sendMessage: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      accountUUID2 = [parametersCopy accountUUID];
      data3 = [parametersCopy message];
      destinations2 = [parametersCopy destinations];
      identifier2 = [parametersCopy identifier];
      _IDSLogV();
      goto LABEL_12;
    }
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10064F838;
  v39[3] = &unk_100BE3220;
  v42 = completionBlockCopy;
  v40 = guidCopy;
  v41 = parametersCopy;
  classCopy = class;
  [IDSDAccount sendMessageWithSendParameters:v41 service:serviceCopy threadContext:contextCopy willSendBlock:blockCopy progressBlock:progressBlockCopy completionBlock:v39];
}

+ (void)_sendMessageWithSendParameters:(id)parameters threadContext:(id)context onObject:(id)object willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)completionBlock
{
  parametersCopy = parameters;
  contextCopy = context;
  objectCopy = object;
  blockCopy = block;
  progressBlockCopy = progressBlock;
  completionBlockCopy = completionBlock;
  subService = [contextCopy subService];
  if ([subService length])
  {
    [contextCopy subService];
  }

  else
  {
    [contextCopy serviceIdentifier];
  }
  v238 = ;

  subService2 = [parametersCopy subService];
  serviceDuetIdentifiers = [contextCopy serviceDuetIdentifiers];
  [contextCopy serviceIsDSBased];
  primaryRegistrationDSHandle = [contextCopy primaryRegistrationDSHandle];
  serviceAdHocType = [contextCopy serviceAdHocType];
  aliasStrings = [contextCopy aliasStrings];
  dataProtectionClass = [contextCopy dataProtectionClass];
  isRegistrationActive = [contextCopy isRegistrationActive];
  shouldProtectTrafficUsingClassA = [contextCopy shouldProtectTrafficUsingClassA];
  dataProtectionClass2 = [contextCopy dataProtectionClass];
  serviceIdentifier = [contextCopy serviceIdentifier];
  v21 = sub_100019928(shouldProtectTrafficUsingClassA, dataProtectionClass2, serviceIdentifier);

  if (isRegistrationActive)
  {
    v220 = v21;
    if (!v21 || (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), [v22 pairedDeviceUniqueID], v23 = objc_claimAutoreleasedReturnValue(), v24 = +[IDSEncryptionHelpers areDataProtectionKeysAvailableForService:withDataProtectionClass:fromDevice:](IDSEncryptionHelpers, "areDataProtectionKeysAvailableForService:withDataProtectionClass:fromDevice:", v238, 1, v23), v23, v22, (v24 & 1) != 0))
    {
      fromID = [parametersCopy fromID];
      if (([parametersCopy disableAliasValidation] & 1) == 0)
      {
        servicePushTopic = fromID;
        _stripFZIDPrefix = [(__CFString *)servicePushTopic _stripFZIDPrefix];

        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        destinations = [parametersCopy destinations];
        destinationURIs = [destinations destinationURIs];

        v27 = [destinationURIs countByEnumeratingWithState:&v256 objects:v280 count:16];
        if (v27)
        {
          v28 = *v257;
          while (2)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v257 != v28)
              {
                objc_enumerationMutation(destinationURIs);
              }

              v30 = *(*(&v256 + 1) + 8 * i);
              if ([(__CFString *)v30 hasSuffix:@"inbox.appleid.apple.com"])
              {
                v37 = +[IMIDSLog daemon];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  messageUUID = [parametersCopy messageUUID];
                  destinations2 = [parametersCopy destinations];
                  *buf = 138412802;
                  v263 = v30;
                  v264 = 2114;
                  v265 = messageUUID;
                  v266 = 2112;
                  v267 = destinations2;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "At least one destination is mako {destinationURI: %@, guid: %{public}@, destinations: %@}", buf, 0x20u);
                }

                goto LABEL_27;
              }
            }

            v27 = [destinationURIs countByEnumeratingWithState:&v256 objects:v280 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        _stripFZIDPrefix2 = [primaryRegistrationDSHandle _stripFZIDPrefix];
        _IDSPrefersPhoneNumbersForServiceIdentifier();
        pseudonyms = [contextCopy pseudonyms];
        fromID = _IDSCopyCallerIDWithSelfMessagingHint();

        [parametersCopy setFromID:fromID];
        _bestGuessURI = [fromID _bestGuessURI];
        if (servicePushTopic && _bestGuessURI && ([(__CFString *)_bestGuessURI isEqualToString:servicePushTopic]& 1) == 0)
        {
          v63 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v263 = servicePushTopic;
            v264 = 2112;
            v265 = _bestGuessURI;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "sendMessage - fromID (%@) does not match the account (%@). We are forced to fail this message send.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }

          if (!completionBlockCopy)
          {
            goto LABEL_313;
          }

          v64 = [NSError alloc];
          identifier4 = [v64 initWithDomain:IDSSendErrorDomain code:7 userInfo:0];
          v223 = [[IDSDeliveryContext alloc] initWithResponseCode:7 error:identifier4 lastCall:1];
          completionBlockCopy[2](completionBlockCopy, v223);
LABEL_312:

LABEL_313:
          goto LABEL_314;
        }
      }

      if ([subService2 length])
      {
        servicePushTopic = subService2;
      }

      else
      {
        servicePushTopic = [contextCopy servicePushTopic];
      }

      serviceController = [self serviceController];
      _stripFZIDPrefix2 = [serviceController serviceWithPushTopic:servicePushTopic];

      v42 = [IDSURI alloc];
      fromID2 = [parametersCopy fromID];
      _bestGuessURI2 = [fromID2 _bestGuessURI];
      _bestGuessURI = [v42 initWithPrefixedURI:_bestGuessURI2];

      if ([_stripFZIDPrefix2 supportsOfflineDelivery])
      {
        v45 = +[IDSPeerIDManager sharedInstance];
        v46 = [v45 shortHandleForURI:_bestGuessURI fromURI:_bestGuessURI];
        [parametersCopy setFromShortHandle:v46];
      }

      destinations3 = [parametersCopy destinations];
      destinationURIs2 = [destinations3 destinationURIs];
      v49 = kIDSServiceDefaultsSentinelSelfAlias;
      v50 = [destinationURIs2 containsObject:kIDSServiceDefaultsSentinelSelfAlias];

      if (v50)
      {
        destinations4 = [parametersCopy destinations];
        destinationURIs3 = [destinations4 destinationURIs];
        destinations3 = [destinationURIs3 mutableCopy];

        [destinations3 removeObject:v49];
        if (primaryRegistrationDSHandle)
        {
          [destinations3 addObject:primaryRegistrationDSHandle];
        }

        v53 = [IDSDestination destinationWithStrings:destinations3];
        [parametersCopy setDestinations:v53];
      }

      v54 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        if ([parametersCopy priority] == 300)
        {
          v55 = @"URGENT";
        }

        else if ([parametersCopy priority] == 200)
        {
          v55 = @"Default";
        }

        else
        {
          v55 = @"Sync";
        }

        identifier = [parametersCopy identifier];
        messageType = [parametersCopy messageType];
        destinations3 = [parametersCopy destinations];
        v58 = IMLoggingStringForArray();
        v59 = qos_class_self();
        *buf = 138545410;
        v60 = @"not local type";
        v61 = serviceAdHocType == 5 || serviceAdHocType == 2;
        v263 = v55;
        v264 = 2114;
        if (v61)
        {
          v60 = @"adhoc type 2";
        }

        v265 = identifier;
        v266 = 2112;
        v267 = messageType;
        v268 = 2112;
        v269 = v238;
        v270 = 2112;
        v271 = destinations3;
        v272 = 2112;
        v273 = fromID;
        v274 = 2112;
        v275 = v58;
        v276 = 2114;
        v277 = v60;
        v278 = 1024;
        v279 = v59;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Daemon sending message with priority %{public}@ guid: %{public}@ messageType: %@, serviceIdentifier: %@ to: %@   from: %@   aliases: %@  service type: %{public}@   QoS=0x%x", buf, 0x58u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if ([parametersCopy priority] == 300)
        {
          v62 = @"URGENT";
        }

        else
        {
          v62 = [parametersCopy priority] == 200 ? @"Default" : @"Sync";
        }

        identifier2 = [parametersCopy identifier];
        destinations3 = [parametersCopy messageType];
        destinations5 = [parametersCopy destinations];
        v67 = IMLoggingStringForArray();
        v68 = serviceAdHocType == 5 || serviceAdHocType == 2;
        v69 = v68 ? @"adhoc type 2" : @"not local type";
        v211 = v69;
        v212 = qos_class_self();
        v186 = v62;
        v199 = identifier2;
        v209 = fromID;
        v210 = v67;
        v206 = v238;
        v208 = destinations5;
        v203 = destinations3;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          if ([parametersCopy priority] == 300)
          {
            v70 = @"URGENT";
          }

          else if ([parametersCopy priority] == 200)
          {
            v70 = @"Default";
          }

          else
          {
            v70 = @"Sync";
          }

          identifier3 = [parametersCopy identifier];
          destinations3 = [parametersCopy messageType];
          destinations6 = [parametersCopy destinations];
          v73 = IMLoggingStringForArray();
          v211 = v69;
          v212 = qos_class_self();
          v209 = fromID;
          v210 = v73;
          v206 = v238;
          v208 = destinations6;
          v199 = identifier3;
          v203 = destinations3;
          v186 = v70;
          _IDSLogV();
        }
      }

      if ([parametersCopy homeKitPayload])
      {
        [parametersCopy setCommand:&off_100C3CE80];
      }

      command = [parametersCopy command];
      v75 = command == 0;

      if (v75)
      {
        protobuf = [parametersCopy protobuf];

        if (protobuf)
        {
          v77 = &off_100C3CE98;
        }

        else
        {
          data = [parametersCopy data];

          if (data)
          {
            v77 = &off_100C3CEB0;
          }

          else
          {
            v77 = &off_100C3CEC8;
          }
        }

        [parametersCopy setCommand:v77];
      }

      v79 = serviceAdHocType == 2;
      if (serviceAdHocType == 5)
      {
        v79 = 1;
      }

      v218 = v79;
      if (serviceAdHocType == 5 || serviceAdHocType == 2)
      {
        if ([parametersCopy priority] < 101 || objc_msgSend(parametersCopy, "nonWaking"))
        {
          [parametersCopy setLocalDelivery:1];
        }

        destinations3 = [self uTunDeliveryController];
        localSetupInProgress = [destinations3 localSetupInProgress];
      }

      else
      {
        localSetupInProgress = 0;
      }

      if (serviceAdHocType == 5 || serviceAdHocType == 2)
      {
      }

      if (localSetupInProgress)
      {
        [parametersCopy setBypassDuet:1];
      }

      if ([self _shouldReplaceLocalDestination:contextCopy])
      {
        v81 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Proxy outgoing message, setting current paired device as local destination", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        pairingManager = [self pairingManager];
        pairedDeviceUniqueID = [pairingManager pairedDeviceUniqueID];
        [parametersCopy setLocalDestinationDeviceUUID:pairedDeviceUniqueID];
      }

      localDestinationDeviceUUID = [parametersCopy localDestinationDeviceUUID];
      v85 = [localDestinationDeviceUUID length];

      if ((serviceAdHocType == 5 || serviceAdHocType == 2) && !v85)
      {
        destinations7 = [parametersCopy destinations];
        destinationURIs4 = [destinations7 destinationURIs];
        allObjects = [destinationURIs4 allObjects];
        firstObject = [allObjects firstObject];
        v255 = 0;
        v223 = [firstObject _stripPotentialTokenURIWithToken:&v255];
        identifier4 = v255;

        destinations8 = [parametersCopy destinations];
        destinationURIs5 = [destinations8 destinationURIs];
        allObjects2 = [destinationURIs5 allObjects];
        firstObject2 = [allObjects2 firstObject];
        v94 = [firstObject2 isEqualToIgnoringCase:IDSDefaultPairedDevice];

        v95 = +[IDSPairingManager sharedInstance];
        LODWORD(destinations8) = [v95 activePairedDeviceHasPairingType:1];

        if (!([contextCopy serviceWantsTinkerDevices] & 1 | ((v94 & destinations8 & 1) == 0)))
        {
          v98 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            messageUUID2 = [parametersCopy messageUUID];
            *buf = 138412546;
            v263 = messageUUID2;
            v264 = 2112;
            v265 = v238;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "sendMessage - sending to tinker IDSDefaultPairedDevice. Failing message... { guid: %@, service: %@ }", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            messageUUID3 = [parametersCopy messageUUID];
            _IDSWarnV();

            messageUUID4 = [parametersCopy messageUUID];
            _IDSLogV();

            messageUUID5 = [parametersCopy messageUUID];
            _IDSLogTransport();
          }

          if (!completionBlockCopy)
          {
            goto LABEL_312;
          }

          v100 = [NSError alloc];
          v260 = NSDebugDescriptionErrorKey;
          v261 = @"Default paired watch is Tinker, but sending service is not Tinker aware. If you need to send locally to a Tinker watch, please contact IDS Engineering to have your service reconfigured";
          v101 = [NSDictionary dictionaryWithObjects:&v261 forKeys:&v260 count:1];
          allowedTrafficClasses = [v100 initWithDomain:IDSSendErrorDomain code:32 userInfo:v101];

          pairedDeviceUniqueID3 = [[IDSDeliveryContext alloc] initWithResponseCode:32 error:allowedTrafficClasses lastCall:1];
          completionBlockCopy[2](completionBlockCopy, pairedDeviceUniqueID3);
          goto LABEL_311;
        }

        if ((v94 & 1) != 0 || [v223 isEqualToIgnoringCase:IDSLocalDeviceIdentity])
        {
          firstObject3 = +[IDSPairingManager sharedInstance];
          pairedDeviceUniqueID2 = [firstObject3 pairedDeviceUniqueID];
        }

        else
        {
          destinations9 = [parametersCopy destinations];
          destinationURIs6 = [destinations9 destinationURIs];
          allObjects3 = [destinationURIs6 allObjects];
          firstObject3 = [allObjects3 firstObject];

          pairedDeviceUniqueID2 = [firstObject3 _stripFZIDPrefix];
        }

        v106 = pairedDeviceUniqueID2;
        [parametersCopy setLocalDestinationDeviceUUID:pairedDeviceUniqueID2];
      }

      if ([parametersCopy liveMessageDelivery] && (objc_msgSend(contextCopy, "serviceAllowLiveMessageDelivery") & 1) != 0)
      {
        v107 = 7;
      }

      else if (serviceAdHocType == 5 || serviceAdHocType == 2)
      {
        if (([parametersCopy allowCloudDelivery] & 1) != 0 || objc_msgSend(parametersCopy, "nonCloudWaking")) && (objc_msgSend(contextCopy, "shouldAllowCloudDelivery"))
        {
          v107 = 6;
        }

        else if ([contextCopy serviceAllowProxyDelivery])
        {
          v107 = 2;
        }

        else
        {
          v107 = 4;
        }
      }

      else if ([contextCopy serviceAllowLocalDelivery] && objc_msgSend(contextCopy, "serviceAdHocType") == 1)
      {
        v107 = 5;
      }

      else
      {
        v107 = 1;
      }

      messageType2 = [NSNumber numberWithLongLong:v107];
      [parametersCopy setMessageType:messageType2];

      if ([parametersCopy priority] == 300)
      {
        messageType2 = [parametersCopy messageType];
        v109 = [messageType2 integerValue] == 1;

        if (v109 || ([self accountController], messageType2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(parametersCopy, "accountUUID"), v110 = objc_claimAutoreleasedReturnValue(), objc_msgSend(messageType2, "accountWithUniqueID:", v110), v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "accountType") == 2, v111, v110, messageType2, !v112))
        {
          [parametersCopy setBypassStorage:1];
        }
      }

      if ([self _canBulkMessageWithPriority:objc_msgSend(parametersCopy adHocServiceType:{"priority"), serviceAdHocType}])
      {
        identifier4 = 0;
      }

      else
      {
        identifier4 = [parametersCopy identifier];
      }

      v223 = [self messageStoreForDataProtectionClass:dataProtectionClass];
      if (!v223)
      {
        v113 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v114 = IDSDataProtectionClassStringFromDataProtectionClass();
          *buf = 138412546;
          v263 = v114;
          v264 = 2112;
          v265 = v238;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Didn't find message store for data protection class %@ for %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v194 = IDSDataProtectionClassStringFromDataProtectionClass();
          _IDSLogV();
        }

        if (!completionBlockCopy)
        {
          goto LABEL_312;
        }

        v115 = [NSError alloc];
        allowedTrafficClasses = [v115 initWithDomain:IDSSendErrorDomain code:18 userInfo:0];
        pairedDeviceUniqueID3 = [[IDSDeliveryContext alloc] initWithResponseCode:18 error:allowedTrafficClasses lastCall:1];
        completionBlockCopy[2](completionBlockCopy, pairedDeviceUniqueID3);
        v116 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v117 = IDSDataProtectionClassStringFromDataProtectionClass();
          *buf = 138412546;
          v263 = v117;
          v264 = 2112;
          v265 = v238;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Data protection class %@ is unavailable for %@, failing outgoing message", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v195 = IDSDataProtectionClassStringFromDataProtectionClass();
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v196 = IDSDataProtectionClassStringFromDataProtectionClass();
              _IDSLogV();
            }
          }
        }

        goto LABEL_311;
      }

      if ([parametersCopy priority] == 300)
      {
        if (serviceAdHocType == 5 || serviceAdHocType == 2)
        {
          messageType2 = +[IDSUTunDeliveryController sharedInstance];
          v217 = [messageType2 hasSpaceForMessagesWithPriority:300 dataProtectionClass:dataProtectionClass];
        }

        else
        {
          v217 = 1;
        }
      }

      else
      {
        v217 = 0;
      }

      allowedTrafficClasses = [_stripFZIDPrefix2 allowedTrafficClasses];
      if ([allowedTrafficClasses containsObject:@"com.apple.ids.trafficclass.nanoregistry.check"] & 1) != 0 || (objc_msgSend(allowedTrafficClasses, "containsObject:", @"com.apple.ids.trafficclass.nanoregistry.configure"))
      {
        v215 = 1;
      }

      else
      {
        v215 = [allowedTrafficClasses containsObject:@"com.apple.ids.trafficclass.nanoregistry.update"];
      }

      if ([parametersCopy bypassStorage] & 1) != 0 || (objc_msgSend(parametersCopy, "bypassDuet") & 1) != 0 || (objc_msgSend(parametersCopy, "requireBluetooth"))
      {
        v118 = 1;
      }

      else
      {
        v118 = [parametersCopy requireLocalWiFi] | v215;
      }

      v219 = v118;
      if (serviceAdHocType == 5 || serviceAdHocType == 2)
      {
        messageType2 = [self uTunDeliveryController];
        v119 = ([messageType2 hasSpaceForMessagesWithPriority:objc_msgSend(parametersCopy dataProtectionClass:{"priority"), dataProtectionClass}] ^ 1) & v219;
      }

      else
      {
        v119 = 0;
      }

      if (serviceAdHocType == 5 || serviceAdHocType == 2)
      {
      }

      if (v119)
      {
        v120 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          if ([parametersCopy priority] == 300)
          {
            v121 = @"URGENT";
          }

          else if ([parametersCopy priority] == 200)
          {
            v121 = @"Default";
          }

          else
          {
            v121 = @"Sync";
          }

          v122 = IDSDataProtectionClassStringFromDataProtectionClass();
          *buf = 138412546;
          v263 = v121;
          v264 = 2112;
          v265 = v122;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Telling clients (via IDSResponsePersisted) not to replay this message if the daemon crashes because the %@ priority queue (dataProtectionClass: %@) is full", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          if ([parametersCopy priority] == 300)
          {
            v123 = @"URGENT";
          }

          else
          {
            v123 = [parametersCopy priority] == 200 ? @"Default" : @"Sync";
          }

          IDSDataProtectionClassStringFromDataProtectionClass();
          v200 = v190 = v123;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            if ([parametersCopy priority] == 300)
            {
              v124 = @"URGENT";
            }

            else if ([parametersCopy priority] == 200)
            {
              v124 = @"Default";
            }

            else
            {
              v124 = @"Sync";
            }

            IDSDataProtectionClassStringFromDataProtectionClass();
            v200 = v190 = v124;
            _IDSLogV();
          }
        }

        v125 = [[IDSDeliveryContext alloc] initWithResponseCode:11 error:0 lastCall:0];
        completionBlockCopy[2](completionBlockCopy, v125);
      }

      message = [parametersCopy message];

      if (!message)
      {
LABEL_258:
        pairingManager2 = [self pairingManager];
        pairedDeviceUniqueID3 = [pairingManager2 pairedDeviceUniqueID];

        localDestinationDeviceUUID2 = [parametersCopy localDestinationDeviceUUID];
        LODWORD(pairingManager2) = [pairedDeviceUniqueID3 isEqualToIgnoringCase:localDestinationDeviceUUID2];
        v159 = [localDestinationDeviceUUID2 length] == 0;
        v160 = v220;
        if (((v159 | pairingManager2) & 1) == 0)
        {
          v161 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "This local Message is not for the current device, sending to the database to be taken care of later", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }

          LOBYTE(v219) = 0;
          v217 = 0;
          v160 = v220;
        }

        if (!v160)
        {
          goto LABEL_286;
        }

        v253 = 0;
        protobuf2 = [parametersCopy protobuf];

        if (protobuf2)
        {
          v163 = [IDSProtobuf alloc];
          protobuf3 = [parametersCopy protobuf];
          v165 = [v163 initWithDictionary:protobuf3];

          data2 = [v165 data];
          message2 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:data2 toDevice:localDestinationDeviceUUID2 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];

          if (message2)
          {
            [v165 setData:message2];
            dictionaryRepresentation = [v165 dictionaryRepresentation];
            [parametersCopy setProtobuf:dictionaryRepresentation];

LABEL_285:
LABEL_286:
            v177 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
            {
              v178 = @"NO";
              if (v217)
              {
                v179 = @"YES";
              }

              else
              {
                v179 = @"NO";
              }

              *buf = 138413058;
              v263 = identifier4;
              if (v219)
              {
                v180 = @"YES";
              }

              else
              {
                v180 = @"NO";
              }

              v265 = v179;
              v264 = 2112;
              v266 = 2112;
              if (v215)
              {
                v178 = @"YES";
              }

              v267 = v180;
              v268 = 2112;
              v269 = v178;
              _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "Store outgoing message {guid: %@, canSendUrgent: %@, forceImmediateSend: %@, hasSpecialTrafficClass: %@}", buf, 0x2Au);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
            {
              if (v217)
              {
                v181 = @"YES";
              }

              else
              {
                v181 = @"NO";
              }

              if (v219)
              {
                v182 = @"YES";
              }

              else
              {
                v182 = @"NO";
              }

              if (v215)
              {
                v183 = @"YES";
              }

              else
              {
                v183 = @"NO";
              }

              v205 = v182;
              v207 = v183;
              v198 = identifier4;
              v202 = v181;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v205 = v182;
                v207 = v183;
                v198 = identifier4;
                v202 = v181;
                _IDSLogV();
              }
            }

            v184 = [IDSDaemonPriorityQueueController sharedInstance:v198];
            v185 = [v184 queueForPriority:{objc_msgSend(parametersCopy, "priority")}];
            v240[0] = _NSConcreteStackBlock;
            v240[1] = 3221225472;
            v240[2] = sub_100652D18;
            v240[3] = &unk_100BE3338;
            v247 = completionBlockCopy;
            v241 = parametersCopy;
            selfCopy = self;
            v242 = _stripFZIDPrefix2;
            v243 = contextCopy;
            v251 = dataProtectionClass;
            v248 = blockCopy;
            v249 = progressBlockCopy;
            v252 = v218;
            v244 = objectCopy;
            v245 = v238;
            v246 = serviceDuetIdentifiers;
            [v223 storeOutgoingMessageWithSendParameters:v241 guid:identifier4 canSend:(v217 | v219) & 1 canBypassSimilarMessages:v219 & 1 fromQueue:v185 completionBlock:v240];

LABEL_310:
            goto LABEL_311;
          }

          message2 = v165;
        }

        else
        {
          data3 = [parametersCopy data];

          if (data3)
          {
            data4 = [parametersCopy data];
            message2 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:data4 toDevice:localDestinationDeviceUUID2 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];

            if (message2)
            {
              [parametersCopy setData:message2];
              goto LABEL_285;
            }

LABEL_276:
            v171 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v263 = v253;
              _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "A over C encryption has failed to encrypt with error %ld", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  _IDSLogV();
                }
              }
            }

            v172 = [NSError alloc];
            v173 = [v172 initWithDomain:IDSSendErrorDomain code:26 userInfo:0];
            v174 = [[IDSDeliveryContext alloc] initWithResponseCode:26 error:v173 lastCall:1];
            completionBlockCopy[2](completionBlockCopy, v174);

            goto LABEL_310;
          }

          message2 = [parametersCopy message];
          v175 = JWEncodeDictionary();
          v176 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:v175 toDevice:localDestinationDeviceUUID2 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];
          if (v176)
          {
            [parametersCopy setData:v176];
            [parametersCopy setMessage:0];

            goto LABEL_285;
          }
        }

        goto LABEL_276;
      }

      pairedDeviceUniqueID3 = [parametersCopy message];
      v127 = objc_opt_class();
      v128 = IDSMessageResourceTransferURLKey;
      v216 = sub_10001B8C4(v127, pairedDeviceUniqueID3, IDSMessageResourceTransferURLKey);
      if (!v216)
      {
LABEL_257:

        goto LABEL_258;
      }

      [parametersCopy setEnforceRemoteTimeouts:1];
      v129 = CSDBGetMobileUserDirectory();
      if (v129)
      {
        v130 = [NSString stringWithUTF8String:v129];
      }

      else
      {
        v130 = @"~";
      }

      v131 = v129 == 0;
      identifier5 = [parametersCopy identifier];
      v133 = [NSArray arrayWithObjects:v130, @"/Library/IdentityServices/files/", identifier5, 0];
      v214 = [NSString pathWithComponents:v133];

      if (!v131)
      {
      }

      v134 = +[NSFileManager defaultManager];
      v254 = 0;
      v135 = [v134 createDirectoryAtPath:v214 withIntermediateDirectories:1 attributes:0 error:&v254];
      v213 = v254;

      if ((v135 & 1) == 0)
      {
        v140 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v263 = v214;
          v264 = 2112;
          v265 = v213;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "file persistence - failed to create unique file directory %@ error %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        if (completionBlockCopy)
        {
          v141 = [NSError alloc];
          v142 = [v141 initWithDomain:IDSSendErrorDomain code:22 userInfo:0];
          v143 = [[IDSDeliveryContext alloc] initWithResponseCode:22 error:v142 lastCall:1];
          completionBlockCopy[2](completionBlockCopy, v143);
        }

        goto LABEL_270;
      }

      v136 = objc_opt_class();
      v137 = sub_10001B8C4(v136, pairedDeviceUniqueID3, IDSMessageResourceTransferSandboxExtensionKey);
      v138 = v137;
      if (v137)
      {
        v139 = v137;
        [v138 UTF8String];
        sandbox_extension_consume();
      }

      else
      {
        v144 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v263 = v216;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "No sandbox extension for received resource [%@]", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v197 = v216;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v197 = v216;
              _IDSLogV();
            }
          }
        }
      }

      v145 = objc_opt_class();
      v146 = sub_10001B8C4(v145, pairedDeviceUniqueID3, IDSMessageResourceTransferOriginalFileSandboxExtensionKey);
      v147 = v146;
      if (v146)
      {
        v148 = v146;
        [v147 UTF8String];
        sandbox_extension_consume();
      }

      else
      {
        v149 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v263 = v216;
          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "No sandbox extension for received resource [%@]", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v197 = v216;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v197 = v216;
              _IDSLogV();
            }
          }
        }
      }

      v150 = sub_1006527A0(v216, v214);
      if (v138)
      {
        sandbox_extension_release();
      }

      if (v147)
      {
        sandbox_extension_release();
      }

      if (v150)
      {
        v151 = [NSMutableDictionary dictionaryWithDictionary:pairedDeviceUniqueID3];
        [v151 setObject:v150 forKey:v128];
        [parametersCopy setMessage:v151];
        v152 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v263 = v216;
          v264 = 2112;
          v265 = v150;
          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "file persistence - moved file %@ => %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v197 = v216;
          v201 = v150;
          _IDSLogV();
        }
      }

      else
      {
        v153 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          dictionaryRepresentation2 = [parametersCopy dictionaryRepresentation];
          *buf = 138412802;
          v263 = v216;
          v264 = 2112;
          v265 = 0;
          v266 = 2112;
          v267 = dictionaryRepresentation2;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "file persistence - failed to move file %@ => %@ params %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [parametersCopy dictionaryRepresentation];
            v204 = v201 = 0;
            v197 = v216;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              [parametersCopy dictionaryRepresentation];
              v204 = v201 = 0;
              v197 = v216;
              _IDSLogV();
            }
          }
        }

        if (!completionBlockCopy)
        {
LABEL_256:

          if (v150)
          {
            goto LABEL_257;
          }

LABEL_270:

LABEL_311:
          goto LABEL_312;
        }

        v155 = [NSError alloc];
        v151 = [v155 initWithDomain:IDSSendErrorDomain code:22 userInfo:0];
        v156 = [[IDSDeliveryContext alloc] initWithResponseCode:22 error:v151 lastCall:1];
        completionBlockCopy[2](completionBlockCopy, v156);
      }

      goto LABEL_256;
    }

    v34 = [NSError alloc];
    v35 = [v34 initWithDomain:IDSSendErrorDomain code:27 userInfo:0];
    v36 = [[IDSDeliveryContext alloc] initWithResponseCode:27 error:v35 lastCall:1];
    completionBlockCopy[2](completionBlockCopy, v36);
  }

  else
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      accountUUID = [parametersCopy accountUUID];
      *buf = 138412290;
      v263 = accountUUID;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      accountUUID2 = [parametersCopy accountUUID];
      _IDSWarnV();

      accountUUID3 = [parametersCopy accountUUID];
      _IDSLogV();

      accountUUID4 = [parametersCopy accountUUID];
      _IDSLogTransport();
    }

    if (completionBlockCopy)
    {
      v33 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
      completionBlockCopy[2](completionBlockCopy, v33);
    }
  }

LABEL_314:
}

+ (BOOL)_shouldReplaceLocalDestination:(id)destination
{
  destinationCopy = destination;
  serviceAdHocType = [destinationCopy serviceAdHocType];
  v6 = serviceAdHocType == 2 || serviceAdHocType == 5;
  serviceAllowProxyDelivery = [destinationCopy serviceAllowProxyDelivery];

  return v6 & serviceAllowProxyDelivery;
}

+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)d threadContext:(id)context priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v6 = *&class;
  dCopy = d;
  contextCopy = context;
  v64 = dCopy;
  if (dCopy)
  {
    v10 = +[IDSUTunDeliveryController sharedInstance];
    v11 = [v10 hasSpaceForMessagesWithPriority:priority dataProtectionClass:v6];

    if (v11)
    {
      v61 = objc_autoreleasePoolPush();
      v12 = +[IDSPairingManager sharedInstance];
      pairedDeviceUniqueID = [v12 pairedDeviceUniqueID];

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"Sync";
        if (priority == 200)
        {
          v14 = @"Default";
        }

        if (priority == 300)
        {
          v14 = @"URGENT";
        }

        v15 = @"Class D";
        if (v6 == 1)
        {
          v15 = @"Class A";
        }

        *buf = 138413058;
        v82 = v64;
        *v84 = v14;
        v83 = 2112;
        *&v84[8] = 2112;
        if (!v6)
        {
          v15 = @"Class C";
        }

        *&v84[10] = v15;
        *&v84[18] = 2112;
        *&v84[20] = pairedDeviceUniqueID;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performing query for account UUID %@ priority %@ class %@ Local Device ID %@ ", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = @"Sync";
        if (priority == 200)
        {
          v16 = @"Default";
        }

        if (priority == 300)
        {
          v16 = @"URGENT";
        }

        v17 = @"Class D";
        if (v6 == 1)
        {
          v17 = @"Class A";
        }

        if (!v6)
        {
          v17 = @"Class C";
        }

        v59 = v17;
        v60 = pairedDeviceUniqueID;
        v56 = v64;
        v58 = v16;
        _IDSLogV();
      }

      v70 = [IDSDMessageStore sharedInstanceForDataProtectionClass:v6, v56, v58, v59, v60];
      v63 = [v70 unsentNonUrgentMessagesForAccountUUID:v64 priority:priority byteLimit:0x200000 upToLimit:10 localDestinationDeviceID:pairedDeviceUniqueID];
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v63 count];
        *buf = 134217984;
        v82 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got %lu query messages", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v57 = [v63 count];
        _IDSLogV();
      }

      if ([v63 count])
      {
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = v63;
        v67 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
        if (!v67)
        {
          goto LABEL_49;
        }

        v66 = *v78;
        while (1)
        {
          for (i = 0; i != v67; i = i + 1)
          {
            if (*v78 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v77 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            guid = [v21 guid];
            [v70 markOutgoingMessageWithGUID:guid asSent:1];

            copySendParameters = [v21 copySendParameters];
            data = [copySendParameters data];

            if (data)
            {
              v25 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                accountDescription = [contextCopy accountDescription];
                data2 = [copySendParameters data];
                v28 = [data2 length];
                destinations = [copySendParameters destinations];
                identifier = [copySendParameters identifier];
                guid2 = [v21 guid];
                *buf = 138413314;
                v82 = accountDescription;
                v83 = 1024;
                *v84 = v28;
                *&v84[4] = 2112;
                *&v84[6] = destinations;
                *&v84[14] = 2112;
                *&v84[16] = identifier;
                *&v84[24] = 2112;
                *&v84[26] = guid2;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                accountDescription2 = [contextCopy accountDescription];
                data3 = [copySendParameters data];
                [data3 length];
                destinations2 = [copySendParameters destinations];
                identifier2 = [copySendParameters identifier];
                guid3 = [v21 guid];
                _IDSLogV();
LABEL_46:
              }
            }

            else
            {
              v37 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                accountDescription3 = [contextCopy accountDescription];
                message = [copySendParameters message];
                destinations3 = [copySendParameters destinations];
                identifier3 = [copySendParameters identifier];
                guid4 = [v21 guid];
                *buf = 138413314;
                v82 = accountDescription3;
                v83 = 2112;
                *v84 = message;
                *&v84[8] = 2112;
                *&v84[10] = destinations3;
                *&v84[18] = 2112;
                *&v84[20] = identifier3;
                *&v84[28] = 2112;
                *&v84[30] = guid4;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                accountDescription2 = [contextCopy accountDescription];
                data3 = [copySendParameters message];
                destinations2 = [copySendParameters destinations];
                identifier2 = [copySendParameters identifier];
                guid3 = [v21 guid];
                _IDSLogV();
                goto LABEL_46;
              }
            }

            v72[0] = _NSConcreteStackBlock;
            v72[1] = 3221225472;
            v72[2] = sub_100654FF4;
            v72[3] = &unk_100BDF220;
            v43 = contextCopy;
            v73 = v43;
            v44 = copySendParameters;
            v74 = v44;
            v75 = v21;
            v76 = v70;
            v45 = objc_retainBlock(v72);
            servicePushTopic = [v43 servicePushTopic];
            v47 = +[IDSDaemon sharedInstance];
            v48 = [self progressBlockForSendParameters:v44 messageContext:0 topic:servicePushTopic forObject:v47];

            serviceController = [self serviceController];
            servicePushTopic2 = [v43 servicePushTopic];
            v51 = [serviceController serviceWithPushTopic:servicePushTopic2];

            [IDSDAccount sendMessageWithSendParameters:v44 service:v51 threadContext:v43 willSendBlock:0 progressBlock:v48 completionBlock:v45];
            objc_autoreleasePoolPop(context);
          }

          v67 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (!v67)
          {
LABEL_49:

            break;
          }
        }
      }

      objc_autoreleasePoolPop(v61);
    }

    else
    {
      v53 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = @"Sync";
        if (priority == 200)
        {
          v54 = @"Default";
        }

        if (priority == 300)
        {
          v54 = @"URGENT";
        }

        v55 = @"Class D";
        if (v6 == 1)
        {
          v55 = @"Class A";
        }

        if (!v6)
        {
          v55 = @"Class C";
        }

        *buf = 138412546;
        v82 = v54;
        v83 = 2112;
        *v84 = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "No space in local delivery queues for messages with priority %@ dataProtectionClass %@, bailing.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v52 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "_sendLocalDeliveryMessagesForAccountUUID called with no accountUUID.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)d threadContext:(id)context priority:(int64_t)priority messageTypes:(id)types dataProtectionClass:(unsigned int)class
{
  v7 = *&class;
  dCopy = d;
  contextCopy = context;
  typesCopy = types;
  v67 = dCopy;
  if (dCopy)
  {
    v12 = +[IDSUTunDeliveryController sharedInstance];
    v13 = [v12 hasSpaceForMessagesWithPriority:priority dataProtectionClass:v7];

    if (v13)
    {
      v63 = objc_autoreleasePoolPush();
      v14 = +[IDSPairingManager sharedInstance];
      pairedDeviceUniqueID = [v14 pairedDeviceUniqueID];

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"Sync";
        if (priority == 200)
        {
          v16 = @"Default";
        }

        if (priority == 300)
        {
          v16 = @"URGENT";
        }

        v17 = @"Class D";
        if (v7 == 1)
        {
          v17 = @"Class A";
        }

        *buf = 138413058;
        v85 = dCopy;
        *v87 = v16;
        v86 = 2112;
        *&v87[8] = 2112;
        if (!v7)
        {
          v17 = @"Class C";
        }

        *&v87[10] = v17;
        *&v87[18] = 2112;
        *&v87[20] = pairedDeviceUniqueID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Performing query for account UUID %@ priority %@ class %@ Local Device ID %@ ", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v18 = @"Sync";
        if (priority == 200)
        {
          v18 = @"Default";
        }

        if (priority == 300)
        {
          v18 = @"URGENT";
        }

        v19 = @"Class D";
        if (v7 == 1)
        {
          v19 = @"Class A";
        }

        if (!v7)
        {
          v19 = @"Class C";
        }

        v61 = v19;
        v62 = pairedDeviceUniqueID;
        v58 = dCopy;
        v60 = v18;
        _IDSLogV();
      }

      v73 = [IDSDMessageStore sharedInstanceForDataProtectionClass:v7, v58, v60, v61, v62];
      v65 = [v73 unsentNonUrgentMessagesForAccountUUID:dCopy priority:priority byteLimit:0x200000 upToLimit:10 localDestinationDeviceID:pairedDeviceUniqueID messageTypes:typesCopy];
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v65 count];
        *buf = 134217984;
        v85 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Got %lu query messages", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v59 = [v65 count];
        _IDSLogV();
      }

      if ([v65 count])
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        obj = v65;
        v70 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
        if (!v70)
        {
          goto LABEL_49;
        }

        v69 = *v81;
        while (1)
        {
          for (i = 0; i != v70; i = i + 1)
          {
            if (*v81 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v80 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            guid = [v23 guid];
            [v73 markOutgoingMessageWithGUID:guid asSent:1];

            copySendParameters = [v23 copySendParameters];
            data = [copySendParameters data];

            if (data)
            {
              v27 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                accountDescription = [contextCopy accountDescription];
                data2 = [copySendParameters data];
                v30 = [data2 length];
                destinations = [copySendParameters destinations];
                identifier = [copySendParameters identifier];
                guid2 = [v23 guid];
                *buf = 138413314;
                v85 = accountDescription;
                v86 = 1024;
                *v87 = v30;
                *&v87[4] = 2112;
                *&v87[6] = destinations;
                *&v87[14] = 2112;
                *&v87[16] = identifier;
                *&v87[24] = 2112;
                *&v87[26] = guid2;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                accountDescription2 = [contextCopy accountDescription];
                data3 = [copySendParameters data];
                [data3 length];
                destinations2 = [copySendParameters destinations];
                identifier2 = [copySendParameters identifier];
                guid3 = [v23 guid];
                _IDSLogV();
LABEL_46:
              }
            }

            else
            {
              v39 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                accountDescription3 = [contextCopy accountDescription];
                message = [copySendParameters message];
                destinations3 = [copySendParameters destinations];
                identifier3 = [copySendParameters identifier];
                guid4 = [v23 guid];
                *buf = 138413314;
                v85 = accountDescription3;
                v86 = 2112;
                *v87 = message;
                *&v87[8] = 2112;
                *&v87[10] = destinations3;
                *&v87[18] = 2112;
                *&v87[20] = identifier3;
                *&v87[28] = 2112;
                *&v87[30] = guid4;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                accountDescription2 = [contextCopy accountDescription];
                data3 = [copySendParameters message];
                destinations2 = [copySendParameters destinations];
                identifier2 = [copySendParameters identifier];
                guid3 = [v23 guid];
                _IDSLogV();
                goto LABEL_46;
              }
            }

            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = sub_1006563F8;
            v75[3] = &unk_100BDF220;
            v45 = contextCopy;
            v76 = v45;
            v46 = copySendParameters;
            v77 = v46;
            v78 = v23;
            v79 = v73;
            v47 = objc_retainBlock(v75);
            servicePushTopic = [v45 servicePushTopic];
            v49 = +[IDSDaemon sharedInstance];
            v50 = [self progressBlockForSendParameters:v46 messageContext:0 topic:servicePushTopic forObject:v49];

            serviceController = [self serviceController];
            servicePushTopic2 = [v45 servicePushTopic];
            v53 = [serviceController serviceWithPushTopic:servicePushTopic2];

            [IDSDAccount sendMessageWithSendParameters:v46 service:v53 threadContext:v45 willSendBlock:0 progressBlock:v50 completionBlock:v47];
            objc_autoreleasePoolPop(context);
          }

          v70 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
          if (!v70)
          {
LABEL_49:

            break;
          }
        }
      }

      objc_autoreleasePoolPop(v63);
    }

    else
    {
      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = @"Sync";
        if (priority == 200)
        {
          v56 = @"Default";
        }

        if (priority == 300)
        {
          v56 = @"URGENT";
        }

        v57 = @"Class D";
        if (v7 == 1)
        {
          v57 = @"Class A";
        }

        if (!v7)
        {
          v57 = @"Class C";
        }

        *buf = 138412546;
        v85 = v56;
        v86 = 2112;
        *v87 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No space in local delivery queues for messages with priority %@ dataProtectionClass %@, bailing.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v54 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "_sendLocalDeliveryMessagesForAccountUUID called with no accountUUID.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_failSavedMessagesCleanly:(id)cleanly withResponseCode:(int64_t)code
{
  cleanlyCopy = cleanly;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100656AF4;
  v9[3] = &unk_100BE04B0;
  v10 = cleanlyCopy;
  selfCopy = self;
  codeCopy = code;
  v8 = cleanlyCopy;
  [v7 performBlockMainQueue:v9];
}

- (void)_failSavedMessageCleanly:(id)cleanly withResponseCode:(int64_t)code
{
  cleanlyCopy = cleanly;
  im_assert_primary_base_queue();
  v7 = +[IDSDAccountController sharedInstance];
  accountGUID = [cleanlyCopy accountGUID];
  v9 = [v7 accountWithUniqueID:accountGUID];

  v10 = +[IDSDAccountController sharedInstance];
  mainAccountGuid = [cleanlyCopy mainAccountGuid];
  v12 = [v10 accountWithUniqueID:mainAccountGuid];

  service = [v9 service];
  pushTopic = [service pushTopic];

  service2 = [v12 service];
  pushTopic2 = [service2 pushTopic];

  v17 = +[IDSDaemonPriorityQueueController sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100656DAC;
  v21[3] = &unk_100BDE160;
  v22 = pushTopic;
  selfCopy = self;
  v25 = pushTopic2;
  codeCopy = code;
  v24 = cleanlyCopy;
  v18 = pushTopic2;
  v19 = cleanlyCopy;
  v20 = pushTopic;
  [v17 performBlockSyncPriority:v21];
}

- (void)_registerForCheckpointAndVacuumDB
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for Checkpointing and Vacuum", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  xpc_activity_register("com.apple.ids.dbvacuum", XPC_ACTIVITY_CHECK_IN, &stru_100BE33D0);
}

- (void)sendServerMessage:(id)message command:(id)command usingAccountWithUniqueID:(id)d messageContext:(id)context
{
  messageCopy = message;
  commandCopy = command;
  dCopy = d;
  contextCopy = context;
  v13 = +[IDSDAccountController sharedInstance];
  v14 = [v13 accountWithUniqueID:dCopy];

  if (v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = sub_10000AAD4;
    v38 = sub_10000BCDC;
    v39 = 0;
    localObject = [contextCopy localObject];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100657D28;
    v30[3] = &unk_100BDE0D8;
    v30[4] = self;
    v16 = v14;
    v31 = v16;
    p_buf = &buf;
    [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v30];

    if (*(*(&buf + 1) + 40))
    {
      v17 = +[IDSTrafficMonitor sharedInstance];
      service = [v16 service];
      identifier = [service identifier];
      service2 = [v16 service];
      adHocServiceType = [service2 adHocServiceType];
      v22 = [v17 noteOutgoingServerMessageForService:identifier serviceType:adHocServiceType requestor:*(*(&buf + 1) + 40)];

      if (v22)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100657DE0;
        v26[3] = &unk_100BE33F8;
        v27 = contextCopy;
        v28 = v16;
        v29 = commandCopy;
        [v28 sendServerMessage:messageCopy command:v29 completionBlock:v26];
      }

      else
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v33 = 138412290;
          v34 = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "*** Over budget, failing sendMessage on account: %@", v33, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No account found for ID: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)_canSendMessageWithAccount:(id)account toDestination:(id)destination
{
  accountCopy = account;
  destinationCopy = destination;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = accountCopy;
    v42 = 2112;
    v43 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Daemon Attempting To Send message from account %@ to destinations %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v37 = accountCopy;
    v39 = destinationCopy;
    _IDSLogV();
  }

  if ([accountCopy accountType] != 2)
  {
    goto LABEL_25;
  }

  destinationURIs = [destinationCopy destinationURIs];
  v10 = [destinationURIs count] > 1;

  if (v10)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to send to more than 1 destination, if this is not possible, this will fail further down the daemon", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  service = [accountCopy service];
  shouldAllowProxyDelivery = [service shouldAllowProxyDelivery];

  if (shouldAllowProxyDelivery)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "This service supports proxy delivery, which means a local account is allowed to send to a remote destination, allowing this message to send", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  service2 = [accountCopy service];
  allowSendingMessagesToInactiveDevice = [service2 allowSendingMessagesToInactiveDevice];

  if (allowSendingMessagesToInactiveDevice)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "This service supports sending messages to an inactive device, it is allowed to proceed", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_25;
    }

LABEL_24:
    _IDSLogV();
LABEL_25:
    v18 = 1;
    goto LABEL_26;
  }

  pairingManager = [(IDSDaemon *)self pairingManager];
  pairedDevicePushToken = [pairingManager pairedDevicePushToken];
  __imHexString = [pairedDevicePushToken __imHexString];

  pairingManager2 = [(IDSDaemon *)self pairingManager];
  pairedDeviceUniqueID = [pairingManager2 pairedDeviceUniqueID];

  destinationURIs2 = [destinationCopy destinationURIs];
  allObjects = [destinationURIs2 allObjects];
  __imFirstObject = [allObjects __imFirstObject];

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Looking at local destination %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = destinationCopy;
    _IDSLogV();
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = __imHexString;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "The paired device push token is %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = __imHexString;
    _IDSLogV();
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = pairedDeviceUniqueID;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "The paired device UUID is %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = pairedDeviceUniqueID;
    _IDSLogV();
  }

  v31 = [__imFirstObject isEqualToIgnoringCase:{IDSDefaultPairedDevice, v38}];
  _stripFZIDPrefix = [__imFirstObject _stripFZIDPrefix];
  v33 = [_stripFZIDPrefix isEqualToIgnoringCase:pairedDeviceUniqueID];

  v34 = [__imFirstObject length];
  if (v34)
  {
    v34 = [__imHexString length];
    if (v34)
    {
      LODWORD(v34) = [__imFirstObject containsString:__imHexString];
    }
  }

  if (((v31 | v33) & 1) != 0 || v34)
  {
    v35 = +[IDSQuickSwitchHelper sharedInstance];
    isQuickSwitchingToAnotherDevice = [v35 isQuickSwitchingToAnotherDevice];

    v18 = isQuickSwitchingToAnotherDevice ^ 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_26:
  return v18;
}

- (void)_fetchAccountEntitlements:(id *)entitlements listenerID:(id *)d inContext:(id)context
{
  localObject = [context localObject];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006588D0;
  v9[3] = &unk_100BE3418;
  v9[4] = entitlements;
  v9[5] = d;
  [(IDSDaemon *)self validateListenerForLocalObject:localObject andPerformBlock:v9];
}

- (void)sendOpportunisticData:(id)data onService:(id)service usingAccountWithUniqueID:(id)d withIdentifier:(id)identifier options:(id)options messageContext:(id)context
{
  dataCopy = data;
  serviceCopy = service;
  dCopy = d;
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  localObject = [contextCopy localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement])
  {

LABEL_4:
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = identifierCopy;
      v32 = 2112;
      v33 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received data %@ to be cached and sent opportunistically on service %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = identifierCopy;
      v29 = serviceCopy;
      _IDSLogV();
    }

    localObject4 = [(IDSDaemon *)self opportunisticDeliveryController:v28];
    v25 = [[IDSOpportunisticOptions alloc] initWithDictionary:optionsCopy];
    [localObject4 addOpportunisticData:dataCopy serviceName:serviceCopy accountUniqueID:dCopy identifier:identifierCopy options:v25 completion:0];

    goto LABEL_10;
  }

  localObject2 = [contextCopy localObject];
  v22 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v22)
  {
    goto LABEL_4;
  }

  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    localObject3 = [contextCopy localObject];
    *buf = 138412546;
    v31 = localObject3;
    v32 = 2112;
    v33 = dCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Tried to send opportunistic data without entitlement {localObject: %@, uniqueID: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject4 = [contextCopy localObject];
    _IDSLogV();
LABEL_10:
  }
}

- (void)cancelOpportunisticDataOnService:(id)service withIdentifier:(id)identifier messageContext:(id)context
{
  serviceCopy = service;
  identifierCopy = identifier;
  contextCopy = context;
  localObject = [contextCopy localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement])
  {

LABEL_4:
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cancel opportunistic send {identifier: %@, serviceName: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v18 = identifierCopy;
      v19 = serviceCopy;
      _IDSLogV();
    }

    localObject4 = [(IDSDaemon *)self opportunisticDeliveryController:v18];
    [localObject4 removeOpportunisticDataForIdentifier:identifierCopy serviceName:serviceCopy completion:0];
    goto LABEL_10;
  }

  localObject2 = [contextCopy localObject];
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v13)
  {
    goto LABEL_4;
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    localObject3 = [contextCopy localObject];
    *buf = 138412546;
    v21 = localObject3;
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Tried to cancel opportunistic data without entitlement {localObject: %@, identifier: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject4 = [contextCopy localObject];
    _IDSLogV();
LABEL_10:
  }
}

- (BOOL)dropMessageIfDropPointIsDetectedWithSendParameters:(id)parameters
{
  parametersCopy = parameters;
  dropMessageIndicatorCommand = [parametersCopy dropMessageIndicatorCommand];

  if (dropMessageIndicatorCommand)
  {
    dropMessageIndicatorCommand2 = [parametersCopy dropMessageIndicatorCommand];
    integerValue = [dropMessageIndicatorCommand2 integerValue];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = integerValue;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%li Drop point detected.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (integerValue == 100)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sender's IDSDaemon will drop message.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      LOBYTE(dropMessageIndicatorCommand) = 1;
    }

    else
    {
      LOBYTE(dropMessageIndicatorCommand) = 0;
    }
  }

  return dropMessageIndicatorCommand;
}

- (BOOL)shouldDropMessageIfOutOfFamilyPhoneNumber:(id)number forService:(id)service withAppleIDAccount:(id)account
{
  numberCopy = number;
  serviceCopy = service;
  accountCopy = account;
  if ([serviceCopy iCloudBasedService] && objc_msgSend(serviceCopy, "isFamilyService"))
  {
    prefixedURIStringsFromRegistration = [accountCopy prefixedURIStringsFromRegistration];
    v11 = [prefixedURIStringsFromRegistration containsObject:numberCopy] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (int64_t)_signatureTypeForSigningAlgorithm:(int64_t)algorithm
{
  v3 = -1000;
  if (algorithm == 2)
  {
    v3 = 1;
  }

  if (algorithm == 3)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (void)signData:(id)data withAlgorithm:(int64_t)algorithm onService:(id)service options:(id)options requestUUID:(id)d messageContext:(id)context
{
  dataCopy = data;
  serviceCopy = service;
  optionsCopy = options;
  dCopy = d;
  contextCopy = context;
  v19 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100659368;
  block[3] = &unk_100BE1170;
  v26 = contextCopy;
  v27 = optionsCopy;
  v28 = dCopy;
  v29 = dataCopy;
  selfCopy = self;
  algorithmCopy = algorithm;
  v30 = serviceCopy;
  v20 = serviceCopy;
  v21 = dataCopy;
  v22 = dCopy;
  v23 = optionsCopy;
  v24 = contextCopy;
  dispatch_async(v19, block);
}

- (void)verifySignedData:(id)data matchesData:(id)matchesData forAlgorithm:(int64_t)algorithm onService:(id)service tokenUri:(id)uri options:(id)options requestUUID:(id)d messageContext:(id)self0
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  serviceCopy = service;
  uriCopy = uri;
  optionsCopy = options;
  dCopy = d;
  contextCopy = context;
  v23 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100659CA0;
  block[3] = &unk_100BE3440;
  v32 = contextCopy;
  v33 = optionsCopy;
  v34 = dCopy;
  v35 = dataCopy;
  selfCopy = self;
  algorithmCopy = algorithm;
  v36 = matchesDataCopy;
  v37 = serviceCopy;
  v38 = uriCopy;
  v24 = uriCopy;
  v25 = serviceCopy;
  v26 = matchesDataCopy;
  v27 = dataCopy;
  v28 = dCopy;
  v29 = optionsCopy;
  v30 = contextCopy;
  dispatch_async(v23, block);
}

- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm onService:(id)service options:(id)options requestUUID:(id)d messageContext:(id)context
{
  payloadsCopy = payloads;
  serviceCopy = service;
  optionsCopy = options;
  dCopy = d;
  contextCopy = context;
  v19 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10065AD3C;
  block[3] = &unk_100BE1170;
  v26 = contextCopy;
  v27 = optionsCopy;
  v28 = payloadsCopy;
  v29 = dCopy;
  selfCopy = self;
  algorithmCopy = algorithm;
  v30 = serviceCopy;
  v20 = serviceCopy;
  v21 = dCopy;
  v22 = payloadsCopy;
  v23 = optionsCopy;
  v24 = contextCopy;
  dispatch_async(v19, block);
}

- (void)sendMessageWithSendParameters:(id)parameters messageContext:(id)context
{
  parametersCopy = parameters;
  contextCopy = context;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10065BB70;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v13 = contextCopy;
  v14 = parametersCopy;
  v9 = parametersCopy;
  v10 = contextCopy;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v11);
}

- (void)sendCertifiedDeliveryReceipt:(id)receipt serviceName:(id)name messageContext:(id)context
{
  receiptCopy = receipt;
  nameCopy = name;
  contextCopy = context;
  v83 = receiptCopy;
  if (receiptCopy && nameCopy)
  {
    v80 = contextCopy;
    v9 = +[IDSServerStorageStateMachine sharedInstance];
    [v9 extendClientAckTimeoutTimerForTopic:nameCopy];

    v10 = [[IDSCertifiedDeliveryContext alloc] initWithDictionaryRepresentation:receiptCopy];
    if ([v10 generateDeliveryReceipt])
    {
      v11 = +[IDSDaemon sharedInstance];
      queryUpdateNotifier = [v11 queryUpdateNotifier];
      v13 = [IDSURI alloc];
      localURI = [v10 localURI];
      v15 = [v13 initWithPrefixedURI:localURI];
      v16 = +[IDSDServiceController sharedInstance];
      service = [v10 service];
      v18 = [v16 serviceWithPushTopic:service];
      v19 = [queryUpdateNotifier devicesHashForURI:v15 andService:v18];

      if (v19)
      {
        v20 = [[IDSCertifiedDeliveryContext alloc] initWithCertifiedDeliveryContext:v10 queryHash:v19];

        v21 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v19 debugDescription];
          localURI2 = [v20 localURI];
          service2 = [v20 service];
          *buf = 134218754;
          v90 = v20;
          v91 = 2112;
          v92 = v22;
          v93 = 2112;
          v94 = localURI2;
          v95 = 2112;
          v96 = service2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Added query update hash to certified delivery receipt {certifiedDeliveryReceipt: %p, hash: %@, fromURI: %@, service: %@}", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v25 = [v19 debugDescription];
          localURI3 = [v20 localURI];
          [v20 service];
          v72 = v71 = localURI3;
          v67 = v20;
          v69 = v25;
          _IDSLogV();
        }
      }

      else
      {
        v20 = v10;
      }
    }

    else
    {
      v20 = v10;
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v90 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "sendCertifiedDeliveryReceipt - { certifiedDeliveryContext: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = v20;
      _IDSLogV();
    }

    v28 = [IDSEncryptionController sharedInstance:v67];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10065EB98;
    v87[3] = &unk_100BD6E40;
    v87[4] = self;
    v29 = v20;
    v88 = v29;
    [v28 performSyncBlock:v87 priority:300];

    replayKey = [v29 replayKey];

    if (replayKey)
    {
      replayKeyToMessageUUIDMap = self->_replayKeyToMessageUUIDMap;
      replayKey2 = [v29 replayKey];
      [(NSMutableDictionary *)replayKeyToMessageUUIDMap removeObjectForKey:replayKey2];
    }

    v33 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v29];
    if (_os_feature_enabled_impl() && [v29 originalEncryptionType] == 5 && objc_msgSend(v33, "certifiedDeliveryVersion") == 2)
    {
      remoteURI = [v29 remoteURI];
      service3 = [v29 service];
      v78 = [IDSURI URIWithPrefixedURI:remoteURI withServiceLoggingHint:service3];

      localURI4 = [v29 localURI];
      service4 = [v29 service];
      v77 = [IDSURI URIWithPrefixedURI:localURI4 withServiceLoggingHint:service4];

      v79 = +[NSMutableDictionary dictionary];
      if (_os_feature_enabled_impl())
      {
        originalGUID = [v29 originalGUID];
        v39 = [(IDSDaemon *)self _populateDictionaryWithSenderKeyCheck:v79 remoteURI:v78 localURI:v77 originalGUID:originalGUID];

        v79 = v39;
      }

      queryHash = [v33 queryHash];
      v41 = [queryHash copy];

      if (!v41)
      {
        v41 = [[NSMutableData alloc] initWithLength:32];
      }

      v73 = v41;
      [v79 setObject:v41 forKey:IDSQueryHashKey];
      v42 = [v79 copy];
      v76 = JWEncodeDictionary();

      v43 = +[IDSPeerIDManager sharedInstance];
      senderToken = [v29 senderToken];
      service5 = [v29 service];
      v46 = [IDSPushToken pushTokenWithData:senderToken withServiceLoggingHint:service5];
      service6 = [v29 service];
      v75 = [v43 endpointForPushToken:v46 URI:v78 service:service6 fromURI:v77];

      v86 = 2;
      v74 = [IDSCryptionContext alloc];
      originalGUID2 = [v29 originalGUID];
      v48 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
      pushToken = [v48 pushToken];
      v50 = [IDSPushToken pushTokenWithData:pushToken];
      senderToken2 = [v29 senderToken];
      service7 = [v29 service];
      v53 = [IDSPushToken pushTokenWithData:senderToken2 withServiceLoggingHint:service7];
      service8 = [v29 service];
      v55 = [(IDSCryptionContext *)v74 initWithGuid:originalGUID2 sendingURI:v77 sendingPushToken:v50 receivingURI:v78 receivingPushToken:v53 service:service8];

      v56 = +[IDSEncryptionController sharedInstance];
      v85 = 0;
      v57 = [v56 publicKeyEncryptData:v76 encryptionContext:v55 forceSizeOptimizations:0 resetState:0 withEncryptedAttributes:0 toEndpoint:v75 usedEncryptionType:&v86 priority:300 metadata:0 error:&v85];
      v58 = v85;
      [v33 setEncryptedData:v57];

      if (v58)
      {
        v59 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          localizedDescription = [v58 localizedDescription];
          *buf = 138412290;
          v90 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Failed to encrypt certified delivery receipt { encryptionError: %@ } ", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          localizedDescription2 = [v58 localizedDescription];
          _IDSLogV();
        }
      }

      if (v86 == 5)
      {
        v61 = IDSEncryptionTypeStringFromEncryptionType();
        [v33 setEncryptionType:v61];

        [v33 setQueryHash:0];
      }

      else
      {
        [v33 setEncryptedData:0];
      }

      v62 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v79 allKeys];
        *buf = 138412546;
        v90 = v58;
        v91 = 2112;
        v92 = allKeys;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Will send encrypted receipt { encryptionError: %@, dictToSerialize.keys: %@ }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        allKeys2 = [v79 allKeys];
        _IDSLogV();
      }
    }

    v64 = [[IDSSendReason alloc] initWithReason:5 subreason:1 pathID:1];
    v65 = [IDSSendReasonContainer createWithReason:v64];
    [v33 setSendReasonContainer:v65];

    v66 = +[IDSDeliveryController sharedInstance];
    [v66 sendIDSMessage:v33 service:0 topic:nameCopy completionBlock:0];

    contextCopy = v80;
  }
}

- (void)sendBatchMessageProcessedContext:(id)context serviceName:(id)name
{
  contextCopy = context;
  nameCopy = name;
  if (_os_feature_enabled_impl())
  {
    batchMessageContext = [contextCopy batchMessageContext];
    serverStorageFetchContext = [batchMessageContext serverStorageFetchContext];
    if (serverStorageFetchContext)
    {
      serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
      serverStorageSSM = [serverStorageFetchContext serverStorageSSM];
      [serverStorageStateMachine receivedBatchProcessedForTopic:nameCopy ssm:serverStorageSSM];
    }

    else
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We are told to send batch processed however storageFetchContext is missing, ignoring...", v13, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)noteMetricOfType:(int64_t)type context:(id)context serviceName:(id)name messageContext:(id)messageContext
{
  contextCopy = context;
  nameCopy = name;
  messageContextCopy = messageContext;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [messageContextCopy localObject];
    *buf = 134218754;
    typeCopy = type;
    v31 = 2112;
    v32 = contextCopy;
    v33 = 2112;
    v34 = nameCopy;
    v35 = 2048;
    v36 = localObject;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "noteMetricOfType: %ld context: %@ serviceName: %@ localObject %p", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [messageContextCopy localObject];
    v28 = v27 = nameCopy;
    typeCopy2 = type;
    v26 = contextCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self cloudTelemetryMetricReporter:typeCopy2];
  if (type == 1)
  {
    timestampDictionary = [contextCopy timestampDictionary];
    identifier = [contextCopy identifier];
    [v15 reportIncomingSendMetricWithDictionary:timestampDictionary samplingID:identifier];
  }

  else if (!type)
  {
    timestamp = [contextCopy timestamp];
    [timestamp doubleValue];
    v18 = v17;

    serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
    v20 = [serverStorageStateMachine storageRequestReceivedTimeForTopic:nameCopy];
    [v20 timeIntervalSince1970];
    v22 = v21;

    [v15 reportUpToDateMetricWithStorageRequestReceivedTime:v22 storageMessagesProcessedTime:v18];
  }
}

- (void)cancelMessageWithQueueOneIdentifier:(id)identifier fromID:(id)d service:(id)service accountUniqueID:(id)iD messageIdentifier:(id)messageIdentifier messageContext:(id)context
{
  identifierCopy = identifier;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  messageIdentifierCopy = messageIdentifier;
  contextCopy = context;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138413570;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = messageIdentifierCopy;
    v47 = 2112;
    v48 = iDCopy;
    v49 = 2048;
    v50 = localObject;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cancelMessageWithQueueOneIdentifier: %@  fromID: %@  service: %@ messageIdentifier: %@ accountUniqueID: %@ localObject %p", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v31 = v30 = iDCopy;
    v28 = serviceCopy;
    v29 = messageIdentifierCopy;
    v26 = identifierCopy;
    v27 = dCopy;
    _IDSLogV();
  }

  if ([identifierCopy length])
  {
    localObject2 = [contextCopy localObject];
    v23 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

    if (v23)
    {
      v24 = [[IDSCancelMessage alloc] initWithQueueOneIdentifier:identifierCopy fromID:dCopy];
      v25 = +[IDSDeliveryController sharedInstance];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10065F2F0;
      v32[3] = &unk_100BE34B8;
      v33 = identifierCopy;
      v34 = dCopy;
      v35 = serviceCopy;
      v36 = messageIdentifierCopy;
      v37 = contextCopy;
      v38 = iDCopy;
      [v25 sendIDSMessage:v24 service:0 topic:v35 completionBlock:v32];
    }
  }
}

- (void)_sendErrorMessage:(id)message originalCommand:(id)command fromURI:(id)i toDestinations:(id)destinations usingAccountWithUniqueID:(id)d useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)encrypt wantsResponse:(BOOL)self0 timeout:(double)self1 command:(id)self2 priority:(int64_t)self3 sendReasonPathID:(int64_t)self4 completionBlock:(id)self5
{
  levelCopy = level;
  messageCopy = message;
  commandCopy = command;
  iCopy = i;
  destinationsCopy = destinations;
  dCopy = d;
  encryptCopy = encrypt;
  v25 = a12;
  blockCopy = block;
  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "sendErrorMessage - finding Account", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  accountController = [(IDSDaemon *)self accountController];
  v65 = [accountController accountWithUniqueID:dCopy];

  if (v65)
  {
    if ([commandCopy integerValue] == 101)
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Got a 101 - not sending 120", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    else
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v70 = v65;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "sendErrorMessage - got account %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v52 = v65;
        _IDSLogV();
      }

      primaryRegistration = [v65 primaryRegistration];
      dsHandle = [primaryRegistration dsHandle];
      _stripFZIDPrefix = [dsHandle _stripFZIDPrefix];

      service = [v65 service];
      [service shouldRegisterUsingDSHandle];

      service2 = [v65 service];
      identifier = [service2 identifier];
      _IDSPrefersPhoneNumbersForServiceIdentifier();

      unprefixedURI = [iCopy unprefixedURI];
      unprefixedURIStringsFromRegistration = [v65 unprefixedURIStringsFromRegistration];
      pseudonyms = [v65 pseudonyms];
      v60 = _IDSCopyCallerIDWithPseudonyms();

      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        unprefixedURIStringsFromRegistration2 = [v65 unprefixedURIStringsFromRegistration];
        *buf = 138412546;
        v70 = v60;
        v71 = 2112;
        v72 = unprefixedURIStringsFromRegistration2;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "sendErrorMessage - using fromID %@ given aliases %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v65 unprefixedURIStringsFromRegistration];
        v54 = v53 = v60;
        _IDSLogV();
      }

      destinationURIs = [destinationsCopy destinationURIs];
      allObjects = [destinationURIs allObjects];
      v58 = sub_10043996C(allObjects, v65);

      v43 = [NSSet setWithArray:v58];
      v44 = [IDSDestination destinationWithStrings:v43];

      v45 = +[NSString stringGUID];
      v46 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v70 = v65;
        v71 = 2112;
        v72 = messageCopy;
        v73 = 2112;
        v74 = v44;
        v75 = 2112;
        v76 = v45;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "account %@ sendErrorMessage: %@ to: %@ - guid %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v55 = messageCopy;
        _IDSLogV();
      }

      v47 = objc_alloc_init(IDSSendParameters);
      v48 = [[IDSSendReason alloc] initWithReason:6 subreason:5 pathID:iD];
      v49 = [IDSSendReasonContainer createWithReason:v48];
      [v47 setSendReasonContainer:v49];

      v50 = [NSDate dateWithTimeIntervalSinceNow:timeout];
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10065FF34;
      v66[3] = &unk_100BE34E0;
      v68 = blockCopy;
      v51 = v45;
      v67 = v51;
      LOWORD(v57) = 0;
      LOWORD(v56) = 0;
      BYTE1(v55) = response;
      LOBYTE(v55) = 0;
      [v65 sendMessage:messageCopy params:v47 bulkedPayload:0 fromID:v60 toDestinations:v44 useDictAsTopLevel:levelCopy dataToEncrypt:encryptCopy encryptPayload:v55 wantsResponse:v50 expirationDate:v25 command:v56 wantsDeliveryStatus:0 wantsCertifiedDelivery:0 deliveryStatusContext:priority messageUUID:v57 priority:0 localDelivery:v66 disallowRefresh:? willSendBlock:? completionBlock:?];

      destinationsCopy = v44;
    }
  }

  else
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = dCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "(Messaging) No account found for ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    IMLogBacktrace();
  }
}

- (void)_sendCertifiedDeliveryReceiptIfNeededForNiceMessage:(id)message service:(id)service failureReason:(id)reason failureReasonMessage:(id)reasonMessage generateDeliveryReceipt:(BOOL)receipt
{
  receiptCopy = receipt;
  messageCopy = message;
  serviceCopy = service;
  reasonCopy = reason;
  reasonMessageCopy = reasonMessage;
  certifiedDeliveryVersion = [messageCopy certifiedDeliveryVersion];
  integerValue = [certifiedDeliveryVersion integerValue];

  if (integerValue >= 1)
  {
    certifiedDeliveryRTS = [messageCopy certifiedDeliveryRTS];
    pushUUID = [messageCopy pushUUID];
    if (!certifiedDeliveryRTS)
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = pushUUID;
        v42 = 2048;
        v43 = integerValue;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No certified delivery RTS found in payload with cdv { guid: %@, cdv: %ld }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v15 = [IDSCertifiedDeliveryContext alloc];
    encryptionTypeStr = [messageCopy encryptionTypeStr];
    v17 = IDSEncryptionTypeFromEncryptionTypeString();
    senderPushToken = [messageCopy senderPushToken];
    rawToken = [senderPushToken rawToken];
    v20 = [v15 initWithGUID:pushUUID service:serviceCopy encryptionType:v17 certifiedDeliveryVersion:integerValue certifiedDeliveryRTS:certifiedDeliveryRTS senderToken:rawToken failureReason:reasonCopy failureReasonMessage:reasonMessageCopy];

    if (receiptCopy)
    {
      v33 = [IDSCertifiedDeliveryContext alloc];
      encryptionTypeStr2 = [messageCopy encryptionTypeStr];
      v21 = IDSEncryptionTypeFromEncryptionTypeString();
      senderPushToken2 = [messageCopy senderPushToken];
      rawToken2 = [senderPushToken2 rawToken];
      toURI = [messageCopy toURI];
      prefixedURI = [toURI prefixedURI];
      fromURI = [messageCopy fromURI];
      prefixedURI2 = [fromURI prefixedURI];
      v28 = [v33 initWithGUID:pushUUID service:serviceCopy encryptionType:v21 certifiedDeliveryVersion:integerValue certifiedDeliveryRTS:certifiedDeliveryRTS senderToken:rawToken2 localURI:prefixedURI remoteURI:prefixedURI2];

      [v28 setGenerateDeliveryReceipt:1];
    }

    else
    {
      v28 = v20;
    }

    v29 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v28];
    v30 = [[IDSSendReason alloc] initWithReason:5 subreason:1 pathID:2];
    v31 = [IDSSendReasonContainer createWithReason:v30];
    [v29 setSendReasonContainer:v31];

    v32 = +[IDSDeliveryController sharedInstance];
    [v32 sendIDSMessage:v29 service:0 topic:serviceCopy completionBlock:0];
  }
}

- (void)_sendCertifiedDeliveryReceiptForSenderKeyDistributionMessage:(id)message service:(id)service keyIDs:(id)ds
{
  messageCopy = message;
  serviceCopy = service;
  dsCopy = ds;
  v32 = messageCopy;
  certifiedDeliveryVersion = [messageCopy certifiedDeliveryVersion];
  integerValue = [certifiedDeliveryVersion integerValue];

  if (integerValue)
  {
    v10 = [IDSCertifiedDeliveryContext alloc];
    pushUUID = [messageCopy pushUUID];
    encryptionTypeStr = [messageCopy encryptionTypeStr];
    v28 = IDSEncryptionTypeFromEncryptionTypeString();
    certifiedDeliveryRTS = [messageCopy certifiedDeliveryRTS];
    senderPushToken = [messageCopy senderPushToken];
    rawToken = [senderPushToken rawToken];
    toURI = [messageCopy toURI];
    prefixedURI = [toURI prefixedURI];
    fromURI = [v32 fromURI];
    prefixedURI2 = [fromURI prefixedURI];
    v19 = [v10 initWithGUID:pushUUID service:serviceCopy encryptionType:v28 certifiedDeliveryVersion:integerValue certifiedDeliveryRTS:certifiedDeliveryRTS senderToken:rawToken localURI:prefixedURI remoteURI:prefixedURI2];

    if ([dsCopy count])
    {
      v37 = IDSSenderKeyIDCheckKey;
      v38 = dsCopy;
      v20 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v19 setDeliveryStatusContext:v20];

      [v19 setGenerateDeliveryReceipt:1];
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      generateDeliveryReceipt = [v19 generateDeliveryReceipt];
      v23 = @"NO";
      if (generateDeliveryReceipt)
      {
        v23 = @"YES";
      }

      *buf = 138412546;
      v34 = dsCopy;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending certified delivery receipt for keyIDs: %@ generateDeliveryReceipt: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v19 generateDeliveryReceipt];
      _IDSLogV();
    }

    v24 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v19];
    v25 = [[IDSSendReason alloc] initWithReason:5 subreason:1 pathID:3];
    v26 = [IDSSendReasonContainer createWithReason:v25];
    [v24 setSendReasonContainer:v26];

    v27 = +[IDSDeliveryController sharedInstance];
    [v27 sendIDSMessage:v24 service:0 topic:serviceCopy completionBlock:0];
  }
}

- (void)_processCertifiedDeliveryReceiptForSenderKeyDistribution:(id)distribution service:(id)service
{
  distributionCopy = distribution;
  v5 = objc_opt_class();
  rawMessage = [distributionCopy rawMessage];
  v7 = sub_10001B8C4(v5, rawMessage, IDSDeliveryStatusContextKey);

  if (v7)
  {
    v8 = [v7 _arrayForKey:IDSSenderKeyIDCheckKey];
    senderPushToken = [distributionCopy senderPushToken];
    senderKeyDistributionManager = [(IDSDaemon *)self senderKeyDistributionManager];
    [senderKeyDistributionManager updateDeliveredStateWithKeyIDStrings:v8 pushToken:senderPushToken];
  }
}

- (void)setPreferInfraWiFi:(BOOL)fi service:(id)service messageContext:(id)context
{
  fiCopy = fi;
  serviceCopy = service;
  localObject = [context localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSPreferInfraWiFiEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  if (self)
  {
    v10 = +[IDSUTunDeliveryController sharedInstance];
    v12 = serviceCopy;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 defaultPeerSetPreferInfraWiFi:fiCopy services:v11];
  }
}

- (void)setLinkPreferences:(id)preferences service:(id)service messageContext:(id)context
{
  preferencesCopy = preferences;
  serviceCopy = service;
  localObject = [context localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSLinkPreferencesEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  if (self)
  {
    v10 = +[IDSLinkPreferencesManager sharedInstance];
    [v10 updateService:serviceCopy withPreferences:preferencesCopy];

    v11 = +[IDSUTunDeliveryController sharedInstance];
    [v11 defaultPeerSetLinkPreferences:serviceCopy];
  }
}

- (void)startOTRTest:(id)test priority:(int64_t)priority messageContext:(id)context
{
  testCopy = test;
  contextCopy = context;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = testCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "start OTR test for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = testCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = testCopy;
        _IDSLogV();
      }
    }
  }

  v10 = +[IDSUTunDeliveryController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100660CF4;
  v13[3] = &unk_100BE3508;
  v14 = contextCopy;
  v11 = contextCopy;
  [v10 findDefaultPeerToForceOTRNegotiation:testCopy priority:priority completionBlock:v13];
}

- (void)testCloudQRConnection:(id)connection messageContext:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clean up existing QuickRelay connection for cloud messaging", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v8 = +[IDSUTunController sharedInstance];
  v9 = kIDSDefaultPairedDeviceID;
  [v8 disconnectGlobalLinkForDevice:kIDSDefaultPairedDeviceID isReinitiating:0 completionHandler:0];

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "start a new QuickRelay connection for cloud messaging", v12, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v11 = +[IDSUTunController sharedInstance];
  [v11 startGlobalLinkForDevice:v9];
}

- (void)failedDecryptingMessage:(id)message reason:(int64_t)reason forGroupID:(id)d onService:(id)service messageContext:(id)context
{
  messageCopy = message;
  dCopy = d;
  serviceCopy = service;
  contextCopy = context;
  v13 = [IDSIncomingNiceMessage alloc];
  v14 = objc_opt_class();
  v40 = messageCopy;
  v15 = sub_10001B8C4(v14, messageCopy, IDSIncomingMessagePushPayloadKey);
  v16 = [v13 initWithMessageDictionary:v15 topic:serviceCopy];

  fromURI = [v16 fromURI];
  toURI = [v16 toURI];
  senderPushToken = [v16 senderPushToken];
  value = [v16 pushUUID];
  command = [v16 command];
  serviceController = [(IDSDaemon *)self serviceController];
  v44 = [serviceController serviceWithPushTopic:serviceCopy];

  v18 = +[IDSDAccountController sharedInstance];
  prefixedURI = [toURI prefixedURI];
  v20 = [v18 accountOnService:v44 withAliasURI:prefixedURI];

  if (v20)
  {
    if ([v20 shouldRegisterUsingDSHandle] & 1) != 0 || (objc_msgSend(toURI, "prefixedURI"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "hasAliasURI:", v21), v21, (v22))
    {
      v36 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:v40 topic:serviceCopy];
      v23 = [NSNumber numberWithInteger:reason];
      [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v36 service:serviceCopy failureReason:v23 failureReasonMessage:0 generateDeliveryReceipt:0];

      v24 = objc_alloc_init(NSMutableDictionary);
      v25 = IDSGetUUIDData();
      if (v25)
      {
        CFDictionarySetValue(v24, IDSFailedUUIDKey, v25);
      }

      if (value)
      {
        CFDictionarySetValue(v24, IDSFailedMessageIDKey, value);
      }

      v26 = [NSNumber numberWithInteger:reason];
      if (v26)
      {
        CFDictionarySetValue(v24, IDSFailureReasonKey, v26);
      }

      rawToken = [senderPushToken rawToken];
      prefixedURI2 = [fromURI prefixedURI];
      v29 = _IDSCopyIDForTokenWithURI();

      v30 = [NSSet setWithObject:v29];
      v31 = [IDSDestination destinationWithStrings:v30];
      uniqueID = [v20 uniqueID];
      v33 = [NSNumber numberWithInteger:120];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100661670;
      v47[3] = &unk_100BD9D10;
      v48 = senderPushToken;
      LOBYTE(v35) = 1;
      [(IDSDaemon *)self _sendErrorMessage:v24 originalCommand:command fromURI:toURI toDestinations:v31 usingAccountWithUniqueID:uniqueID useDictAsTopLevel:1 dataToEncrypt:-1.0 wantsResponse:0 timeout:v35 command:v33 priority:300 sendReasonPathID:12 completionBlock:v47];
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = v20;
        v51 = 2112;
        v52 = toURI;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Account: %@ does not have alias URI: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }
}

- (id)_populateDictionaryWithSenderKeyCheck:(id)check remoteURI:(id)i localURI:(id)rI originalGUID:(id)d
{
  checkCopy = check;
  iCopy = i;
  rICopy = rI;
  dCopy = d;
  v13 = +[IDSPeerIDManager sharedInstance];
  v65 = iCopy;
  v14 = [NSArray arrayWithObjects:&v65 count:1];
  v63 = IDSRegistrationPropertySupportsSenderKey;
  v64 = &__kCFBooleanTrue;
  v15 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v16 = [v13 endpointsForURIs:v14 service:IDSServiceNameiMessage fromURI:rICopy withCapabilities:v15];

  v17 = [v16 objectForKey:iCopy];
  if ([v17 count])
  {
    v18 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager encryptingKeyIDsFor:iCopy localURI:rICopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &__NSArray0__struct;
    }

    v21 = v20;

    v22 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager decryptingKeyIDsFor:iCopy localURI:rICopy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &__NSArray0__struct;
    }

    v25 = v24;

    persistenceManager = [(IDSDaemon *)self persistenceManager];
    v27 = [persistenceManager senderKeyMessageSupportedFor:v17];

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      *buf = 138413570;
      v52 = dCopy;
      if (v27)
      {
        v29 = @"YES";
      }

      v53 = 2112;
      v54 = v29;
      v55 = 2112;
      v56 = v21;
      v57 = 2112;
      v58 = v25;
      v59 = 2112;
      v60 = iCopy;
      v61 = 2112;
      v62 = rICopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Piggybacking on c=101 (originalGUID: %@) to send sender keyIDs useNewEncoding: %@ encryptingKeyIDs: %@ decryptingKeyIDs: %@ {remoteURI: %@, localURI:%@}", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (v27)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v47 = iCopy;
      v48 = rICopy;
      v45 = v21;
      v46 = v25;
      v42 = dCopy;
      v44 = v30;
      _IDSLogV();
    }

    if (v27)
    {
      if ([v21 count])
      {
        v31 = JWEncodeArray();
        [checkCopy setObject:v31 forKeyedSubscript:IDSDeliveryEncryptingSenderKeyIDs];
      }

      if (![v25 count])
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = iCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "We have no decryptingKeyIDs from remoteURI: %@ - sending empty", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v43 = iCopy;
          _IDSLogV();
        }
      }

      v50 = 0;
      v33 = [NSPropertyListSerialization dataWithPropertyList:v25 format:200 options:0 error:&v50, v43];
      v34 = v50;
      v35 = v34;
      if (v33 || !v34)
      {
        [checkCopy setObject:v33 forKeyedSubscript:IDSDeliveryDecryptingSenderKeyIDs];
      }

      else
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v25;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Error serializing decryptingKeyIDs: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    else
    {
      firstObject = [v21 firstObject];

      if (firstObject)
      {
        v38 = [NSData alloc];
        firstObject2 = [v21 firstObject];
        v40 = [v38 initWithBase64EncodedString:firstObject2 options:0];

        [checkCopy setObject:v40 forKeyedSubscript:@"sK-E"];
      }

      v35 = [v25 __imArrayByApplyingBlock:{&stru_100BE3528, v42, v44, v45, v46, v47, v48}];
      v33 = JWEncodeArray();
      [checkCopy setObject:v33 forKeyedSubscript:@"sK-D"];
    }
  }

  return checkCopy;
}

- (void)_handleDeliveryReceiptForSenderKeyCheck:(id)check remoteURI:(id)i remotePushToken:(id)token localURI:(id)rI originalGUID:(id)d
{
  checkCopy = check;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  dCopy = d;
  Value = 0;
  if (checkCopy && IDSDeliveryEncryptingSenderKeyIDs)
  {
    Value = CFDictionaryGetValue(checkCopy, IDSDeliveryEncryptingSenderKeyIDs);
  }

  v61 = Value;
  v16 = JWDecodeArray();
  if (IDSDeliveryDecryptingSenderKeyIDs)
  {
    v17 = checkCopy != 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = CFDictionaryGetValue(checkCopy, IDSDeliveryDecryptingSenderKeyIDs);
  }

  else
  {
    v18 = 0;
  }

  v62 = v18;
  v19 = JWDecodeArray();
  v20 = +[NSMutableArray array];
  v65 = +[NSMutableArray array];
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v68 = dCopy;
    v69 = 2112;
    v70 = rICopy;
    v71 = 2112;
    v72 = iCopy;
    v73 = 2112;
    v74 = tokenCopy;
    v75 = 2112;
    v76 = v16;
    v77 = 2112;
    v78 = v19;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Handling c=101 (originalGUID: %@) for sender key check { localURI: %@ remoteURI: %@ remotePushToken: %@ encryptingKeyIDs: %@ decryptingKeyIDs: %@ }", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = v16;
    v55 = v19;
    v50 = iCopy;
    v52 = tokenCopy;
    v44 = dCopy;
    v47 = rICopy;
    _IDSLogV();
  }

  if ([(__CFString *)v16 count:v44])
  {
    v22 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager missingRemoteEncryptingKeyIDs:v16];
    [v20 addObjectsFromArray:v22];
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v22 count];
      v25 = @"NO";
      if (!v24)
      {
        v25 = @"YES";
      }

      *buf = 138412546;
      v68 = v25;
      v69 = 2112;
      v70 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Do we have the keyID needed to decrypt from them? %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = [v22 count];
      v27 = @"NO";
      if (!v26)
      {
        v27 = @"YES";
      }

      v45 = v27;
      v48 = v16;
      _IDSLogV();
    }
  }

  if (v19)
  {
    if ([(__CFString *)v19 count])
    {
      v28 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager remoteMissingDecryptingKeyIDs:v19 remoteURI:iCopy localURI:rICopy];
      [v65 addObjectsFromArray:v28];
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v28 count];
        v31 = @"NO";
        if (!v30)
        {
          v31 = @"YES";
        }

        *buf = 138412546;
        v68 = v31;
        v69 = 2112;
        v70 = v19;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Do they have the keyID needed to decrypt from us? %@ %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v32 = [v28 count];
        v33 = @"NO";
        if (!v32)
        {
          v33 = @"YES";
        }

        v45 = v33;
        v48 = v19;
        _IDSLogV();
      }

      [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager updateDeliveredStateWithKeyIDStrings:v19 pushToken:tokenCopy, v45, v48];
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = iCopy;
        v69 = 2112;
        v70 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Received empty decryptingKeyIDs from remoteURI: %@ remotePushToken: %@ - we should reset", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v45 = iCopy;
        v48 = tokenCopy;
        _IDSLogV();
      }

      [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager resetKeyStateWithKeyIDs:0 senderURI:rICopy receiverURI:iCopy, v45, v48];
    }
  }

  if ([v20 count] || objc_msgSend(v65, "count"))
  {
    [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager triggerKeyRecoveryToURI:iCopy fromURI:rICopy keysToSend:v65 keysToRequest:v20];
  }

  else
  {
    if (checkCopy)
    {
      v60 = CFDictionaryGetValue(checkCopy, @"sK-E");
      v35 = CFDictionaryGetValue(checkCopy, @"sK-D");
    }

    else
    {
      v60 = 0;
      v35 = 0;
    }

    v57 = v35;
    v59 = JWDecodeArray();
    if (v60)
    {
      v58 = [v60 base64EncodedStringWithOptions:0];
      senderKeyDistributionManager = self->_senderKeyDistributionManager;
      v66 = v58;
      v37 = [NSArray arrayWithObjects:&v66 count:1];
      v56 = [(IDSSenderKeyDistributionManager *)senderKeyDistributionManager missingRemoteEncryptingKeyIDs:v37];

      if ([v56 count])
      {
        v38 = @"NO";
      }

      else
      {
        v38 = @"YES";
      }

      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v68 = v38;
        v69 = 2112;
        v70 = v58;
        v71 = 2112;
        v72 = rICopy;
        v73 = 2112;
        v74 = iCopy;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "(Legacy) Do we have the keyID needed to decrypt from them? %@ %@ {localURI: %@, remoteURI:%@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v51 = rICopy;
        v53 = iCopy;
        v46 = v38;
        v49 = v58;
        _IDSLogV();
      }
    }

    if ([v59 count])
    {
      v40 = [v59 __imArrayByApplyingBlock:&stru_100BE3548];
      v41 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager remoteMissingDecryptingKeyIDs:v40 remoteURI:iCopy localURI:rICopy];
      if ([v41 count])
      {
        v42 = @"NO";
      }

      else
      {
        v42 = @"YES";
      }

      v43 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v68 = v42;
        v69 = 2112;
        v70 = v40;
        v71 = 2112;
        v72 = rICopy;
        v73 = 2112;
        v74 = iCopy;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(Legacy) Do they have the keyID needed to decrypt from us? %@ %@ {localURI: %@, remoteURI:%@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)deliveryControllerHasSpaceforUrgentMessages:(id)messages dataProtectionClass:(unsigned int)class ofTypes:(id)types
{
  v6 = *&class;
  messagesCopy = messages;
  typesCopy = types;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Class D";
    if (v6 == 1)
    {
      v11 = @"Class A";
    }

    if (!v6)
    {
      v11 = @"Class C";
    }

    *buf = 138412546;
    v18 = @"URGENT";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Alerted that local delivery controller now has space for %@ messages at class %@.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"Class D";
    if (v6 == 1)
    {
      v12 = @"Class A";
    }

    if (!v6)
    {
      v12 = @"Class C";
    }

    v15 = @"URGENT";
    v16 = v12;
    _IDSLogV();
  }

  v13 = [NSNumber numberWithUnsignedInt:v6, v15, v16];
  v14 = [NSArray arrayWithObject:v13];
  [(IDSDaemon *)self _handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:v14 withMessageTypes:typesCopy];
}

- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class ofTypes:(id)types
{
  v7 = *&class;
  messagesCopy = messages;
  typesCopy = types;
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = @"Sync";
    if (priority == 200)
    {
      v13 = @"Default";
    }

    if (priority == 300)
    {
      v13 = @"URGENT";
    }

    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Alerted that local delivery controller now has space for %@ messages.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = @"Sync";
    if (priority == 200)
    {
      v14 = @"Default";
    }

    if (priority == 300)
    {
      v14 = @"URGENT";
    }

    v19 = v14;
    _IDSLogV();
  }

  v15 = [NSNumber numberWithInteger:priority, v19];
  v16 = [NSArray arrayWithObject:v15];
  v17 = [NSNumber numberWithUnsignedInt:v7];
  v18 = [NSArray arrayWithObject:v17];
  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:v16 dataProtectionClasses:v18 messageTypes:typesCopy];
}

- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)messages priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  v5 = *&class;
  messagesCopy = messages;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"Sync";
    if (priority == 200)
    {
      v10 = @"Default";
    }

    if (priority == 300)
    {
      v10 = @"URGENT";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Alerted that local delivery controller now has space for %@ messages.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = @"Sync";
    if (priority == 200)
    {
      v11 = @"Default";
    }

    if (priority == 300)
    {
      v11 = @"URGENT";
    }

    v16 = v11;
    _IDSLogV();
  }

  v12 = [NSNumber numberWithInteger:priority, v16];
  v13 = [NSArray arrayWithObject:v12];
  v14 = [NSNumber numberWithUnsignedInt:v5];
  v15 = [NSArray arrayWithObject:v14];
  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:v13 dataProtectionClasses:v15];
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priorities:(id)priorities dataProtectionClasses:(id)classes
{
  identifiersCopy = identifiers;
  prioritiesCopy = priorities;
  classesCopy = classes;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = identifiersCopy;
    v37 = 2112;
    v38 = prioritiesCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resource availability changed, identifiers: %@ priorities %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = identifiersCopy;
      v20 = prioritiesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v19 = identifiersCopy;
        v20 = prioritiesCopy;
        _IDSLogV();
      }
    }
  }

  if (![prioritiesCopy count])
  {
    v11 = [NSArray arrayWithObjects:&off_100C3CEF8, &off_100C3CEE0, 0];

    prioritiesCopy = v11;
  }

  if (![classesCopy count])
  {
    v12 = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];

    classesCopy = v12;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = prioritiesCopy;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v22 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = classesCopy;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = *v26;
          do
          {
            v18 = 0;
            do
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v15);
              }

              -[IDSDaemon _resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:](self, "_resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:", identifiersCopy, [v14 integerValue], objc_msgSend(*(*(&v25 + 1) + 8 * v18), "intValue"));
              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }

        v13 = v13 + 1;
      }

      while (v13 != v24);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priorities:(id)priorities dataProtectionClasses:(id)classes messageTypes:(id)types
{
  identifiersCopy = identifiers;
  prioritiesCopy = priorities;
  classesCopy = classes;
  typesCopy = types;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = identifiersCopy;
    v42 = 2112;
    v43 = prioritiesCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resource availability changed, identifiers: %@ priorities %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v23 = identifiersCopy;
      v24 = prioritiesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v23 = identifiersCopy;
        v24 = prioritiesCopy;
        _IDSLogV();
      }
    }
  }

  if (![prioritiesCopy count])
  {
    v14 = [NSArray arrayWithObjects:&off_100C3CEF8, &off_100C3CEE0, 0];

    prioritiesCopy = v14;
  }

  if (![classesCopy count])
  {
    v15 = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];

    classesCopy = v15;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = prioritiesCopy;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v26 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v26)
        {
          v17 = v16;
          objc_enumerationMutation(obj);
          v16 = v17;
        }

        v29 = v16;
        v18 = *(*(&v34 + 1) + 8 * v16);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = classesCopy;
        v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v20)
        {
          v21 = *v31;
          do
          {
            v22 = 0;
            do
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v19);
              }

              -[IDSDaemon _resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:messageTypes:](self, "_resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:messageTypes:", identifiersCopy, [v18 integerValue], objc_msgSend(*(*(&v30 + 1) + 8 * v22), "intValue"), typesCopy);
              v22 = v22 + 1;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v20);
        }

        v16 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  identifiersCopy = identifiers;
  im_assert_primary_base_queue();
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [identifiersCopy count];
  v42 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v36 = v10;
    classCopy = class;
    priorityCopy = priority;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    serviceController = [(IDSDaemon *)self serviceController];
    allServices = [serviceController allServices];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = allServices;
    v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      v14 = v13;
      v41 = *v58;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v17 = v42;
          v18 = [v17 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v54;
            while (2)
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v54 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v53 + 1) + 8 * j);
                duetIdentifiers = [v16 duetIdentifiers];
                LODWORD(v22) = [duetIdentifiers containsObject:v22];

                if (v22)
                {
                  v24 = +[IDSDAccountController sharedInstance];
                  v25 = [v24 accountsOnService:v16];

                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v26 = v25;
                  v27 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v50;
                    do
                    {
                      for (k = 0; k != v28; k = k + 1)
                      {
                        if (*v50 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        uniqueID = [*(*(&v49 + 1) + 8 * k) uniqueID];
                        [v9 addObject:uniqueID];
                      }

                      v28 = [v26 countByEnumeratingWithState:&v49 objects:v61 count:16];
                    }

                    while (v28);
                  }

                  goto LABEL_24;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v14 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v14);
    }

    objc_autoreleasePoolPop(context);
    self = selfCopy;
    priority = priorityCopy;
    class = classCopy;
    v10 = v36;
  }

  v32 = v10 != 0;
  v33 = +[IDSDaemonPriorityQueueController sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1006638BC;
  v43[3] = &unk_100BDD0C0;
  selfCopy2 = self;
  priorityCopy2 = priority;
  classCopy2 = class;
  v48 = v32;
  v44 = v9;
  v34 = v9;
  [v33 performBlockWithPriority:v43 priority:priority];
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)identifiers priority:(int64_t)priority dataProtectionClass:(unsigned int)class messageTypes:(id)types
{
  identifiersCopy = identifiers;
  typesCopy = types;
  im_assert_primary_base_queue();
  v12 = objc_alloc_init(NSMutableSet);
  v13 = [identifiersCopy count];
  v44 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v38 = v13;
    v39 = typesCopy;
    classCopy = class;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    serviceController = [(IDSDaemon *)self serviceController];
    allServices = [serviceController allServices];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = allServices;
    v45 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v45)
    {
      v43 = *v62;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v62 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v18 = v44;
          v19 = [v18 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v58;
            while (2)
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v58 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v57 + 1) + 8 * j);
                duetIdentifiers = [v17 duetIdentifiers];
                LODWORD(v23) = [duetIdentifiers containsObject:v23];

                if (v23)
                {
                  v25 = +[IDSDAccountController sharedInstance];
                  v26 = [v25 accountsOnService:v17];

                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v27 = v26;
                  v28 = [v27 countByEnumeratingWithState:&v53 objects:v65 count:16];
                  if (v28)
                  {
                    v29 = v28;
                    v30 = *v54;
                    do
                    {
                      for (k = 0; k != v29; k = k + 1)
                      {
                        if (*v54 != v30)
                        {
                          objc_enumerationMutation(v27);
                        }

                        uniqueID = [*(*(&v53 + 1) + 8 * k) uniqueID];
                        [v12 addObject:uniqueID];
                      }

                      v29 = [v27 countByEnumeratingWithState:&v53 objects:v65 count:16];
                    }

                    while (v29);
                  }

                  goto LABEL_24;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v57 objects:v66 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v45 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v45);
    }

    objc_autoreleasePoolPop(context);
    self = selfCopy;
    class = classCopy;
    v13 = v38;
    typesCopy = v39;
  }

  v33 = v13 != 0;
  v34 = +[IDSDaemonPriorityQueueController sharedInstance];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100664000;
  v46[3] = &unk_100BE35C0;
  classCopy2 = class;
  v52 = v33;
  v47 = typesCopy;
  v48 = v12;
  selfCopy2 = self;
  priorityCopy = priority;
  v35 = v12;
  v36 = typesCopy;
  [v34 performBlockWithPriority:v46 priority:priority];
}

- (void)_processLocalMessagesWithAccountUUIDs:(id)ds priority:(int64_t)priority dataProtectionClass:(unsigned int)class
{
  dsCopy = ds;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [dsCopy count];
    v9 = @"Sync";
    if (priority == 200)
    {
      v9 = @"Default";
    }

    if (priority == 300)
    {
      v9 = @"URGENT";
    }

    v10 = @"Class A";
    if (class != 1)
    {
      v10 = @"Class D";
    }

    *buf = 67109634;
    *v64 = v8;
    *&v64[4] = 2112;
    *&v64[6] = v9;
    if (class)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"Class C";
    }

    *&v64[14] = 2112;
    *&v64[16] = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_processLocalMessagesWithAccountUUIDs with number of accountUUIDs %d priority %@ class %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = [dsCopy count];
    v13 = @"Sync";
    if (priority == 200)
    {
      v13 = @"Default";
    }

    if (priority == 300)
    {
      v13 = @"URGENT";
    }

    v14 = @"Class D";
    if (class == 1)
    {
      v14 = @"Class A";
    }

    if (!class)
    {
      v14 = @"Class C";
    }

    v43 = v13;
    v44 = v14;
    v42 = v12;
    _IDSLogV();
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"Sync";
    if (priority == 200)
    {
      v16 = @"Default";
    }

    if (priority == 300)
    {
      v16 = @"URGENT";
    }

    v17 = @"Class A";
    if (class != 1)
    {
      v17 = @"Class D";
    }

    *buf = 138412802;
    *v64 = dsCopy;
    *&v64[10] = v16;
    *&v64[8] = 2112;
    if (!class)
    {
      v17 = @"Class C";
    }

    *&v64[18] = 2112;
    *&v64[20] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "_processLocalMessagesWithAccountUUIDs accountUUIDs %@ priority %@ class %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = @"Sync";
    if (priority == 200)
    {
      v18 = @"Default";
    }

    if (priority == 300)
    {
      v18 = @"URGENT";
    }

    v19 = @"Class D";
    if (class == 1)
    {
      v19 = @"Class A";
    }

    if (!class)
    {
      v19 = @"Class C";
    }

    v43 = v18;
    v44 = v19;
    v42 = dsCopy;
    _IDSLogV();
  }

  if ([dsCopy count])
  {
    v47 = [dsCopy objectAtIndex:0];
    [dsCopy removeObjectAtIndex:0];
    v20 = +[IDSDAccountController sharedInstance];
    v21 = [v20 accountWithUniqueID:v47];

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100664B88;
    v59[3] = &unk_100BE3570;
    v59[4] = self;
    v60 = dsCopy;
    priorityCopy = priority;
    classCopy = class;
    block = objc_retainBlock(v59);
    if (!v21)
    {
      v22 = im_primary_queue();
      dispatch_async(v22, block);
    }

    service = [v21 service];
    if ([service adHocServiceType] == 2)
    {
    }

    else
    {
      service2 = [v21 service];
      v26 = [service2 adHocServiceType] == 5;

      if (!v26)
      {
        v41 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v64 = v47;
          *&v64[8] = 2112;
          *&v64[10] = v21;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Skipping invalid accountUUID %@ for account %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v29 = im_primary_queue();
        dispatch_async(v29, block);
        goto LABEL_68;
      }
    }

    v27 = objc_alloc_init(IDSSendParameters);
    [v27 setPriority:priority];
    superAccount = [v21 superAccount];
    v29 = superAccount;
    if (!superAccount || (newSendMessageContext = -[NSObject newSendMessageContext](superAccount, "newSendMessageContext"), [v21 service], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "pushTopic"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(newSendMessageContext, "setSubService:", v32), v32, v31, !newSendMessageContext))
    {
      newSendMessageContext = [v21 newSendMessageContext];
    }

    subService = [newSendMessageContext subService];
    if ([subService length])
    {
      [newSendMessageContext subService];
    }

    else
    {
      [newSendMessageContext serviceIdentifier];
    }
    v34 = ;

    serviceDuetIdentifiers = [newSendMessageContext serviceDuetIdentifiers];
    v36 = +[IDSDaemonPriorityQueueController sharedInstance];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100664B9C;
    v49[3] = &unk_100BE3638;
    v49[4] = self;
    v50 = v34;
    v51 = serviceDuetIdentifiers;
    v52 = v27;
    priorityCopy2 = priority;
    v53 = v21;
    v54 = newSendMessageContext;
    classCopy2 = class;
    v56 = block;
    v55 = v47;
    v37 = newSendMessageContext;
    v38 = v27;
    v39 = serviceDuetIdentifiers;
    v40 = v34;
    [v36 performBlockWithPriority:v49 priority:priority];

LABEL_68:
    goto LABEL_69;
  }

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No pending non-urgent local messages to send, returning", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_69:
}

- (void)_processLocalMessagesWithAccountUUIDs:(id)ds priority:(int64_t)priority dataProtectionClass:(unsigned int)class messageTypes:(id)types
{
  dsCopy = ds;
  typesCopy = types;
  im_assert_primary_base_queue();
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [dsCopy count];
    v12 = @"Sync";
    if (priority == 200)
    {
      v12 = @"Default";
    }

    if (priority == 300)
    {
      v12 = @"URGENT";
    }

    v13 = @"Class A";
    if (class != 1)
    {
      v13 = @"Class D";
    }

    *buf = 67109634;
    *v69 = v11;
    *&v69[4] = 2112;
    *&v69[6] = v12;
    if (class)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"Class C";
    }

    *&v69[14] = 2112;
    *&v69[16] = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_processLocalMessagesWithAccountUUIDs with number of accountUUIDs %d priority %@ class %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = [dsCopy count];
    v16 = @"Sync";
    if (priority == 200)
    {
      v16 = @"Default";
    }

    if (priority == 300)
    {
      v16 = @"URGENT";
    }

    v17 = @"Class D";
    if (class == 1)
    {
      v17 = @"Class A";
    }

    if (!class)
    {
      v17 = @"Class C";
    }

    v45 = v16;
    v46 = v17;
    v44 = v15;
    _IDSLogV();
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = @"Sync";
    if (priority == 200)
    {
      v19 = @"Default";
    }

    if (priority == 300)
    {
      v19 = @"URGENT";
    }

    v20 = @"Class A";
    if (class != 1)
    {
      v20 = @"Class D";
    }

    *buf = 138412802;
    *v69 = dsCopy;
    *&v69[10] = v19;
    *&v69[8] = 2112;
    if (!class)
    {
      v20 = @"Class C";
    }

    *&v69[18] = 2112;
    *&v69[20] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "_processLocalMessagesWithAccountUUIDs accountUUIDs %@ priority %@ class %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = @"Sync";
    if (priority == 200)
    {
      v21 = @"Default";
    }

    if (priority == 300)
    {
      v21 = @"URGENT";
    }

    v22 = @"Class D";
    if (class == 1)
    {
      v22 = @"Class A";
    }

    if (!class)
    {
      v22 = @"Class C";
    }

    v45 = v21;
    v46 = v22;
    v44 = dsCopy;
    _IDSLogV();
  }

  if ([dsCopy count])
  {
    v49 = [dsCopy objectAtIndex:0];
    [dsCopy removeObjectAtIndex:0];
    v23 = +[IDSDAccountController sharedInstance];
    v24 = [v23 accountWithUniqueID:v49];

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100665830;
    v63[3] = &unk_100BE3598;
    v63[4] = self;
    v64 = dsCopy;
    priorityCopy = priority;
    classCopy = class;
    v25 = typesCopy;
    v65 = v25;
    block = objc_retainBlock(v63);
    if (!v24)
    {
      v26 = im_primary_queue();
      dispatch_async(v26, block);
    }

    service = [v24 service];
    if ([service adHocServiceType] == 2)
    {
    }

    else
    {
      service2 = [v24 service];
      v30 = [service2 adHocServiceType] == 5;

      if (!v30)
      {
        v43 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v69 = v49;
          *&v69[8] = 2112;
          *&v69[10] = v24;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Skipping invalid accountUUID %@ for account %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        superAccount = im_primary_queue();
        dispatch_async(superAccount, block);
        goto LABEL_68;
      }
    }

    v31 = objc_alloc_init(IDSSendParameters);
    [v31 setPriority:priority];
    superAccount = [v24 superAccount];
    if (!superAccount || (newSendMessageContext = -[NSObject newSendMessageContext](superAccount, "newSendMessageContext"), [v24 service], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "pushTopic"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(newSendMessageContext, "setSubService:", v34), v34, v33, !newSendMessageContext))
    {
      newSendMessageContext = [v24 newSendMessageContext];
    }

    subService = [newSendMessageContext subService];
    if ([subService length])
    {
      [newSendMessageContext subService];
    }

    else
    {
      [newSendMessageContext serviceIdentifier];
    }
    v36 = ;

    serviceDuetIdentifiers = [newSendMessageContext serviceDuetIdentifiers];
    v38 = +[IDSDaemonPriorityQueueController sharedInstance];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100665844;
    v52[3] = &unk_100BE36B0;
    v52[4] = self;
    v53 = v36;
    v54 = serviceDuetIdentifiers;
    v55 = v31;
    priorityCopy2 = priority;
    v56 = v24;
    v57 = newSendMessageContext;
    v58 = v25;
    classCopy2 = class;
    v60 = block;
    v59 = v49;
    v39 = newSendMessageContext;
    v40 = v31;
    v41 = serviceDuetIdentifiers;
    v42 = v36;
    [v38 performBlockWithPriority:v52 priority:priority];

LABEL_68:
    goto LABEL_69;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No pending non-urgent local messages to send, returning", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_69:
}

+ (void)_performDuetCheckAndSendForServiceIdentifier:(id)identifier serviceDuetIdentifiers:(id)identifiers sendParameters:(id)parameters logString:(id)string fromQueue:(id)queue completionBlock:(id)block
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  parametersCopy = parameters;
  stringCopy = string;
  queueCopy = queue;
  blockCopy = block;
  dispatch_assert_queue_V2(queueCopy);
  duetIdentifiersOverride = [parametersCopy duetIdentifiersOverride];
  if (![duetIdentifiersOverride count])
  {
    v19 = identifiersCopy;

    duetIdentifiersOverride = v19;
  }

  priority = [parametersCopy priority];
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (priority == 300)
    {
      v22 = @"URGENT";
    }

    else
    {
      v22 = @"non-urgent";
    }

    accountUUID = [parametersCopy accountUUID];
    bypassDuet = [parametersCopy bypassDuet];
    v25 = @"NO";
    *buf = 138413570;
    v39 = v22;
    v40 = 2112;
    if (bypassDuet)
    {
      v25 = @"YES";
    }

    v41 = accountUUID;
    v42 = 2112;
    v43 = identifierCopy;
    v44 = 2112;
    v45 = duetIdentifiersOverride;
    v46 = 2112;
    v47 = v25;
    v48 = 2112;
    v49 = stringCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing duet check for priority %@ for account %@ serviceIdentifier %@ duetIdentifiers %@ bypassDuet %@  logString: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (priority == 300)
    {
      v26 = @"URGENT";
    }

    else
    {
      v26 = @"non-urgent";
    }

    accountUUID2 = [parametersCopy accountUUID];
    bypassDuet2 = [parametersCopy bypassDuet];
    v29 = @"NO";
    if (bypassDuet2)
    {
      v29 = @"YES";
    }

    v35 = v29;
    v36 = stringCopy;
    v33 = identifierCopy;
    v34 = duetIdentifiersOverride;
    v31 = v26;
    v32 = accountUUID2;
    _IDSLogV();
  }

  if (![parametersCopy bypassDuet])
  {
    if (priority == 300)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 1);
      }

      blockCopy = 0;
    }

    v30 = +[IDSDuetInterface sharedInstance];
    [v30 checkAvailabilityForValues:duetIdentifiersOverride priority:objc_msgSend(parametersCopy logString:"priority") fromQueue:stringCopy withCompletionBlock:{queueCopy, blockCopy}];

    goto LABEL_26;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
LABEL_26:
  }
}

- (void)_performDuetCheckAndSendForAccount:(id)account sendParameters:(id)parameters logString:(id)string fromQueue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  stringCopy = string;
  parametersCopy = parameters;
  accountCopy = account;
  v16 = objc_opt_class();
  service = [accountCopy service];
  identifier = [service identifier];
  service2 = [accountCopy service];

  duetIdentifiers = [service2 duetIdentifiers];
  [v16 _performDuetCheckAndSendForServiceIdentifier:identifier serviceDuetIdentifiers:duetIdentifiers sendParameters:parametersCopy logString:stringCopy fromQueue:queueCopy completionBlock:blockCopy];
}

- (BOOL)_canBulkMessageWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = +[IDSDAccountController sharedInstance];
  accountUUID = [parametersCopy accountUUID];
  v6 = [v4 accountWithUniqueID:accountUUID];

  service = [v6 service];
  if ([service adHocServiceType] == 2)
  {
  }

  else
  {
    service2 = [v6 service];
    adHocServiceType = [service2 adHocServiceType];

    if (adHocServiceType != 5)
    {
      v10 = [parametersCopy priority] != 300;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)_nonUrgentInternetSendTimerFired
{
  [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer invalidate];
  nonUrgentInternetSendTimer = self->_nonUrgentInternetSendTimer;
  self->_nonUrgentInternetSendTimer = 0;

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Non-urgent internet send timer fired.", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSDaemon *)self _processOutgoingNonUrgentInternetMessages];
}

- (void)_updateNonUrgentInternetSendTimer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fireDate = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
    *buf = 138412290;
    v22 = *&fireDate;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling a non-urgent internet send timer if needed. Existing timer fire date? %@", buf, 0xCu);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && _IDSShouldLog())
  {
    fireDate2 = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
    _IDSLogV();
  }

  if (!self->_nonUrgentInternetSendTimer)
  {
    v5 = [(IDSDaemon *)self serverBagForBagType:1];
    v6 = [v5 objectForKey:@"nonurgent_internet_send_interval"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 1800.0;
    }

    v9 = [(IDSDaemon *)self serverBagForBagType:1, fireDate2];
    v10 = [v9 objectForKey:@"nonurgent_internet_send_interval_max_fuzz"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      v12 = v11;
    }

    else
    {
      v12 = 300;
    }

    v13 = arc4random_uniform(v12);
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v22 = v8;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = v8 + v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "timeInterval for _nonUrgentInternetSendTimer as %f + %f = %f", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v15 = [IMDispatchTimer alloc];
    v16 = im_primary_queue();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100666688;
    v20[3] = &unk_100BD9268;
    v20[4] = self;
    v17 = [v15 initWithQueue:v16 interval:(v8 + v13) repeats:0 handlerBlock:v20];
    nonUrgentInternetSendTimer = self->_nonUrgentInternetSendTimer;
    self->_nonUrgentInternetSendTimer = v17;
  }
}

- (BOOL)_hasNonUrgentInternetSendingBudget
{
  fireDate = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [fireDate timeIntervalSinceNow];
    *buf = 138412546;
    v10 = fireDate;
    v11 = 2048;
    v12 = fabs(v4);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking _hasNonUrgentInternetSendingBudget, fireDate is %@, %f", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [fireDate timeIntervalSinceNow];
    _IDSLogV();
  }

  if (fireDate && ([fireDate timeIntervalSinceNow], fabs(v5) > 60.0))
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = fireDate;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Last non-urgent internet send was too recent...waiting until next lock or non-urgent internet send to try again. Next fire date is %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_currentSecondsIntoDay
{
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = +[NSDate date];
  v5 = [v2 components:224 fromDate:v4];

  v6 = 3600 * [v5 hour];
  v7 = v6 + 60 * [v5 minute];
  second = [v5 second];

  return second + v7;
}

- (double)_nonUrgentInternetSendProbabilityForCurrentWindow
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v34 = [v2 objectForKey:@"md-low-priority-send-window-constraints"];

  if (!v34)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Non-urgent internet send probability windows are not specified in the server bag - returning 1.0", buf, 2u);
    }

    v4 = 1.0;
    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _currentSecondsIntoDay = [(IDSDaemon *)self _currentSecondsIntoDay];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v34;
    v3 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    v4 = 1.0;
    if (v3)
    {
      v5 = *v38;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v38 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 _numberForKey:@"start-time"];
            v9 = [v7 _numberForKey:@"end-time"];
            v10 = [v7 _numberForKey:@"probability"];
            v11 = v10;
            if (v8)
            {
              v12 = v9 == 0;
            }

            else
            {
              v12 = 1;
            }

            if (v12 || v10 == 0)
            {
              v14 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v42 = *&v8;
                v43 = 2112;
                v44 = v9;
                v45 = 2112;
                v46 = v11;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Non-urgent internet send probability window is not fully defined: (%@, %@, %@)", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                v30 = v9;
                v31 = v11;
                v29 = v8;
                _IDSLogTransport();
              }
            }

            else if (_currentSecondsIntoDay >= [v8 integerValue] && _currentSecondsIntoDay <= objc_msgSend(v9, "integerValue"))
            {
              v20 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v42 = *&v8;
                v43 = 2112;
                v44 = v9;
                v45 = 2112;
                v46 = v11;
                v47 = 2048;
                v48 = _currentSecondsIntoDay;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "We are currently in send window (%@, %@, %@). The time is currently %ld", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v31 = v11;
                v32 = _currentSecondsIntoDay;
                v29 = v8;
                v30 = v9;
                _IDSLogV();
              }

              [v11 doubleValue];
              if (v21 >= 0.0)
              {
                v22 = v21;
              }

              else
              {
                v22 = 0.0;
              }

              nonUrgentInternetLastAttempt = self->_nonUrgentInternetLastAttempt;
              v4 = fmin(v22, 1.0);
              if (nonUrgentInternetLastAttempt >= [v8 integerValue])
              {
                v24 = self->_nonUrgentInternetLastAttempt;
                if (v24 <= [v9 integerValue])
                {
                  v25 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = self->_nonUrgentInternetLastAttempt;
                    *buf = 134217984;
                    v42 = *&v26;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Last non-urgent internet message attempt %ld is in this window - forcing probability to 0.0", buf, 0xCu);
                  }

                  v4 = 0.0;
                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }
              }

              goto LABEL_56;
            }
          }

          else
          {
            v15 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v42 = *&v7;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Non-urgent internet send probability window is not of the correct type! %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              v29 = v7;
              _IDSLogTransport();
            }
          }
        }

        v3 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v4;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using non-urgent internet send probability %f for the current window.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_61;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = *&v34;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Non-urgent internet send probability windows is not of the correct type! Returning probability = 1.0. %@", buf, 0xCu);
  }

  v4 = 1.0;
  v18 = os_log_shim_legacy_logging_enabled();
  v19 = v34;
  if (v18)
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
LABEL_61:
    v19 = v34;
  }

  return v4;
}

- (BOOL)_rollDieForNonUrgentInternetSend
{
  _currentSecondsIntoDay = [(IDSDaemon *)self _currentSecondsIntoDay];
  [(IDSDaemon *)self _nonUrgentInternetSendProbabilityForCurrentWindow];
  v5 = v4;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    nonUrgentInternetLastAttempt = self->_nonUrgentInternetLastAttempt;
    if (nonUrgentInternetLastAttempt <= 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = _currentSecondsIntoDay - nonUrgentInternetLastAttempt;
    }

    *buf = 134218240;
    v18 = v8;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rolling die to attempt non-urgent internet send. Last check was %ld seconds ago. Probability = %f.", buf, 0x16u);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && _IDSShouldLog())
  {
    _IDSLogV();
  }

  self->_nonUrgentInternetLastAttempt = _currentSecondsIntoDay;
  if (v5 <= 2.22044605e-16)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Probability is 0, cannot send.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    return 0;
  }

  else if (v5 >= 1.0)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Probability is >= 1, can send.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    return 1;
  }

  else
  {
    v9 = (arc4random() & 0x7FFFFFFF);
    v10 = v5 * 2147483650.0;
    v11 = v10 >= v9;
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v10 >= v9)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rolled the die - can send? %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  return v11;
}

- (BOOL)_canSendNonUrgentInternetMessageForTopic:(id)topic
{
  topicCopy = topic;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_canSendNonUrgentInternetMessageForTopic ", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  pushHandlerForAPSDelegatePort = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  isConnected = [pushHandlerForAPSDelegatePort isConnected];

  if ((isConnected & 1) == 0)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Push is not connected - skipping send attempt.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_21;
    }

LABEL_20:
    _IDSLogV();
LABEL_21:
    v10 = 0;
    goto LABEL_29;
  }

  if (![(IDSDaemon *)self _rollDieForNonUrgentInternetSend])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We can't send further non-urgent internet messages in this window, skipping.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = [(IDSDaemon *)self serverBagForBagType:1];
  v9 = [v8 objectForKey:@"sync_topics_allowed_to_send_immediately"];

  if (v9 && ([v9 containsObject:topicCopy] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = topicCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Server Bag policy for sending message immediately for topic - %@ does not exist. This message will proceed with default behavior", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v10 = 0;
  }

LABEL_29:
  return v10;
}

- (void)_processOutgoingNonUrgentInternetMessages
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_processOutgoingNonUrgentInternetMessages", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  isConnected = [v3 isConnected];

  if ((isConnected & 1) == 0)
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Push is not connected - skipping send attempt.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

LABEL_67:
    _IDSLogV();
    return;
  }

  if (![(IDSDaemon *)self _hasNonUrgentInternetSendingBudget])
  {
    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Lack budget to perform non-urgent internet send, skipping.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

    goto LABEL_67;
  }

  if (![(IDSDaemon *)self _rollDieForNonUrgentInternetSend])
  {
    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "We can't send further non-urgent internet messages in this window, skipping.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      return;
    }

    goto LABEL_67;
  }

  [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer invalidate];
  nonUrgentInternetSendTimer = self->_nonUrgentInternetSendTimer;
  self->_nonUrgentInternetSendTimer = 0;

  v92 = objc_alloc_init(NSMutableArray);
  v6 = objc_autoreleasePoolPush();
  v7 = [IDSDMessageStore unsentOutgoingMessagesUpToLimit:10000 priority:200 localDestinationDeviceID:0];
  if (v7)
  {
    [v92 addObjectsFromArray:v7];
  }

  v8 = [IDSDMessageStore unsentOutgoingMessagesUpToLimit:10000 priority:100 localDestinationDeviceID:0];
  if (v8)
  {
    [v92 addObjectsFromArray:v8];
  }

  objc_autoreleasePoolPop(v6);
  v103 = [v92 count];
  if (v103)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v135 = v103;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing stored %lu non-urgent internet outgoing messages", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      guid2 = v103;
      _IDSLogV();
    }

    v100 = objc_alloc_init(NSMutableArray);
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = v92;
    v10 = [obj countByEnumeratingWithState:&v130 objects:v147 count:16];
    if (!v10)
    {
      v110 = 0;
      goto LABEL_69;
    }

    v110 = 0;
    v112 = *v131;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v131 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v130 + 1) + 8 * v11);
        v13 = +[IDSDAccountController sharedInstance];
        accountGUID = [v12 accountGUID];
        v15 = [v13 accountWithUniqueID:accountGUID];

        service = [v15 service];
        dataProtectionClass = [service dataProtectionClass];

        if (v15)
        {
          service2 = [v15 service];
          if ([service2 adHocServiceType] == 2)
          {

LABEL_28:
            ++v110;
            goto LABEL_39;
          }

          service3 = [v15 service];
          v20 = [service3 adHocServiceType] == 5;

          if (v20)
          {
            goto LABEL_28;
          }
        }

        dataToEncrypt = [v12 dataToEncrypt];
        if (dataToEncrypt)
        {
        }

        else if (([v12 encryptPayload] & 1) == 0)
        {
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v26 = v100;
          v27 = [v26 countByEnumeratingWithState:&v126 objects:v146 count:16];
          if (v27)
          {
            v28 = *v127;
            while (2)
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v127 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = *(*(&v126 + 1) + 8 * i);
                if ([v30 canCombineWithMessage:v12])
                {
                  [v30 combineWithMessage:v12];

                  goto LABEL_38;
                }
              }

              v27 = [v26 countByEnumeratingWithState:&v126 objects:v146 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          [v26 addObject:v12];
          goto LABEL_38;
        }

        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          guid = [v12 guid];
          *buf = 138412290;
          v135 = guid;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not combining encrypted message - %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          guid2 = [v12 guid];
          _IDSLogV();
        }

        [v100 addObject:{v12, guid2}];
LABEL_38:
        v24 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:dataProtectionClass];
        guid3 = [v12 guid];
        [v24 markOutgoingMessageWithGUID:guid3 asSent:1];

LABEL_39:
        v11 = v11 + 1;
      }

      while (v11 != v10);
      v31 = [obj countByEnumeratingWithState:&v130 objects:v147 count:16];
      v10 = v31;
      if (!v31)
      {
LABEL_69:

        if ([v100 count])
        {
          [(IDSDaemon *)self _updateNonUrgentInternetSendTimer];
          v35 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v100 count];
            *buf = 134218496;
            v135 = v103;
            v136 = 2048;
            v137 = v36;
            v138 = 2048;
            v139 = v110;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Reduced outgoing non-urgent internet messages from %lu to %lu (omitted %lu).", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v84 = [v100 count];
            v88 = v110;
            guid2 = v103;
            _IDSLogV();
          }

          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v93 = v100;
          v99 = [v93 countByEnumeratingWithState:&v122 objects:v145 count:16];
          if (v99)
          {
            v98 = *v123;
            do
            {
              v37 = 0;
              do
              {
                if (*v123 != v98)
                {
                  v38 = v37;
                  objc_enumerationMutation(v93);
                  v37 = v38;
                }

                obja = v37;
                v39 = *(*(&v122 + 1) + 8 * v37);
                contexta = objc_autoreleasePoolPush();
                v40 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "sendNonUrgentInternetMessage - finding Account", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v121[0] = _NSConcreteStackBlock;
                v121[1] = 3221225472;
                v121[2] = sub_100668E70;
                v121[3] = &unk_100BD6ED0;
                v121[4] = v39;
                v111 = objc_retainBlock(v121);
                v41 = +[IDSDAccountController sharedInstance];
                accountGUID2 = [v39 accountGUID];
                v113 = [v41 accountWithUniqueID:accountGUID2];

                if (v113)
                {
                  v43 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v135 = v113;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "sendNonUrgentInternetMessage - got account %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    guid2 = v113;
                    _IDSLogV();
                  }

                  v119[0] = _NSConcreteStackBlock;
                  v119[1] = 3221225472;
                  v119[2] = sub_1006692A4;
                  v119[3] = &unk_100BE36D8;
                  v104 = v113;
                  v120 = v104;
                  v105 = objc_retainBlock(v119);
                  combinedMessages = [v39 combinedMessages];
                  v45 = [combinedMessages count] == 0;

                  if (v45)
                  {
                    (v105[2])(v105, v39);
                  }

                  else
                  {
                    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                    if (Mutable)
                    {
                      message = [v39 message];
                      v48 = message == 0;

                      if (!v48)
                      {
                        message2 = [v39 message];
                        CFArrayAppendValue(Mutable, message2);
                      }
                    }

                    v117 = 0u;
                    v118 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    combinedMessages2 = [v39 combinedMessages];
                    v51 = [combinedMessages2 countByEnumeratingWithState:&v115 objects:v144 count:16];
                    if (v51)
                    {
                      v52 = *v116;
                      do
                      {
                        for (j = 0; j != v51; j = j + 1)
                        {
                          if (*v116 != v52)
                          {
                            objc_enumerationMutation(combinedMessages2);
                          }

                          if (Mutable)
                          {
                            v54 = *(*(&v115 + 1) + 8 * j);
                            message3 = [v54 message];
                            v56 = message3 == 0;

                            if (!v56)
                            {
                              message4 = [v54 message];
                              CFArrayAppendValue(Mutable, message4);
                            }
                          }
                        }

                        v51 = [combinedMessages2 countByEnumeratingWithState:&v115 objects:v144 count:16];
                      }

                      while (v51);
                    }

                    v58 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      combinedMessages3 = [v39 combinedMessages];
                      v60 = [combinedMessages3 count];
                      destinations = [v39 destinations];
                      fromID = [v39 fromID];
                      [v39 guid];
                      v64 = v63 = v60 + 1;
                      *buf = 138413314;
                      v135 = v104;
                      v136 = 2048;
                      v137 = v63;
                      v138 = 2112;
                      v139 = destinations;
                      v140 = 2112;
                      v141 = fromID;
                      v142 = 2112;
                      v143 = v64;
                      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "account %@ sendNonUrgentInternetMessage: bulked: %lu to: %@ identifier: %@ guid: %@", buf, 0x34u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLog())
                      {
                        combinedMessages4 = [v39 combinedMessages];
                        v66 = [combinedMessages4 count];
                        destinations2 = [v39 destinations];
                        fromID2 = [v39 fromID];
                        [v39 guid];
                        v91 = v90 = fromID2;
                        v85 = v66 + 1;
                        v89 = destinations2;
                        v83 = v104;
                        _IDSLogV();
                      }
                    }

                    copySendParameters = [v39 copySendParameters];
                    fromID3 = [v39 fromID];
                    destinations3 = [v39 destinations];
                    useDictAsTopLevel = [v39 useDictAsTopLevel];
                    dataToEncrypt2 = [v39 dataToEncrypt];
                    encryptPayload = [v39 encryptPayload];
                    wantsResponse = [v39 wantsResponse];
                    expirationDate = [v39 expirationDate];
                    command = [v39 command];
                    wantsDeliveryStatus = [v39 wantsDeliveryStatus];
                    wantsCertifiedDelivery = [v39 wantsCertifiedDelivery];
                    deliveryStatusContext = [v39 deliveryStatusContext];
                    messageUUID = [v39 messageUUID];
                    [v39 priority];
                    v114 = v111;
                    BYTE1(v91) = wantsCertifiedDelivery;
                    LOBYTE(v91) = wantsDeliveryStatus;
                    v88 = expirationDate;
                    v90 = command;
                    BYTE1(v84) = wantsResponse;
                    LOBYTE(v84) = encryptPayload;
                    guid2 = dataToEncrypt2;
                    [v104 sendMessage:0 params:copySendParameters bulkedPayload:Mutable fromID:fromID3 toDestinations:destinations3 useDictAsTopLevel:useDictAsTopLevel dataToEncrypt:? encryptPayload:? wantsResponse:? expirationDate:? command:? wantsDeliveryStatus:? wantsCertifiedDelivery:? deliveryStatusContext:? messageUUID:? priority:? localDelivery:? disallowRefresh:? willSendBlock:? completionBlock:?];
                  }
                }

                else
                {
                  v76 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    accountGUID3 = [v39 accountGUID];
                    guid4 = [v39 guid];
                    *buf = 138412546;
                    v135 = accountGUID3;
                    v136 = 2112;
                    v137 = guid4;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "No account found for ID: %@ - can't send %@", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    accountGUID4 = [v39 accountGUID];
                    guid5 = [v39 guid];
                    _IDSWarnV();

                    accountGUID5 = [v39 accountGUID];
                    guid6 = [v39 guid];
                    _IDSLogV();

                    accountGUID6 = [v39 accountGUID];
                    [v39 guid];
                    v84 = guid2 = accountGUID6;
                    _IDSLogTransport();
                  }

                  (v111[2])();
                }

                objc_autoreleasePoolPop(contexta);
                v37 = obja + 1;
              }

              while (obja + 1 != v99);
              v99 = [v93 countByEnumeratingWithState:&v122 objects:v145 count:16];
            }

            while (v99);
          }
        }

        break;
      }
    }
  }
}

- (void)_enqueueBlock:(id)block identifier:(id)identifier withTimeout:(double)timeout forKey:(id)key
{
  blockCopy = block;
  identifierCopy = identifier;
  keyCopy = key;
  incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  if (!incomingMessageMultiQueue)
  {
    v14 = [IMMultiQueue alloc];
    v15 = im_primary_queue();
    v16 = [v14 initWithQueue:v15];
    v17 = self->_incomingMessageMultiQueue;
    self->_incomingMessageMultiQueue = v16;

    incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  }

  v18 = [(IMMultiQueue *)incomingMessageMultiQueue addBlock:blockCopy withTimeout:keyCopy forKey:identifierCopy description:timeout];
  v19 = +[IMIDSLog daemon];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = [(IMMultiQueue *)self->_incomingMessageMultiQueue loggableOverviewForKey:keyCopy];
      v22 = 138412802;
      v23 = keyCopy;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enqueueing block in multiqueue {key: %@, identifier: %@, queueState: %@}", &v22, 0x20u);
    }
  }

  else if (v20)
  {
    v22 = 138412546;
    v23 = keyCopy;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enqueueing block in multiqueue {key: %@, identifier: %@}", &v22, 0x16u);
  }
}

- (BOOL)_shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:(int64_t)type
{
  result = 1;
  if (type > 801)
  {
    if ((type - 900) >= 4 && type != 804 && type != 802)
    {
      return result;
    }

    return 0;
  }

  if (type > 499)
  {
    if ((type - 500) >= 2)
    {
      return result;
    }

    return 0;
  }

  if (!type || type == 202 || type == 400)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:(int64_t)type withOriginalDecryptionError:(id)error fromURI:(id)i toURI:(id)rI service:(id)service
{
  errorCopy = error;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  userInfo = [errorCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [errorCopy domain];
  if (([domain isEqualToString:IDSDecryptionErrorDomain] & 1) != 0 || objc_msgSend(errorCopy, "code") != 15)
  {

LABEL_6:
    v21 = [[IMPair alloc] initWithFirst:iCopy second:rICopy];
    v22 = [(IDSRateLimiter *)self->_decryptionErrorCacheClearRateLimiter underLimitForItem:v21];
    if (v22)
    {
      [(IDSRateLimiter *)self->_decryptionErrorCacheClearRateLimiter noteItem:v21];
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = iCopy;
        v28 = 2112;
        v29 = rICopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Have not attempted a cache clear for (%@, %@), should try to cache clear", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = iCopy;
        v28 = 2112;
        v29 = rICopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Already attempted a cache clear for (%@, %@) recently", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    _IDSLogV();
LABEL_17:

    v20 = v22 ^ 1;
    goto LABEL_18;
  }

  domain2 = [v16 domain];
  v19 = [domain2 isEqualToString:@"MessageProtection.TetraRatchetingErrors"];

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)_shouldForgetCachedPeerTokensForDecryptionErrorType:(int64_t)type withOriginalDecryptionError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [errorCopy domain];
  v9 = IDSDecryptionErrorDomain;
  if (![domain isEqualToString:IDSDecryptionErrorDomain] || objc_msgSend(errorCopy, "code") != 15)
  {
    goto LABEL_7;
  }

  domain2 = [v7 domain];
  if (([domain2 isEqualToString:@"com.apple.messageprotection"] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  code = [v7 code];

  if (code == 802)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_8:
  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v9] && objc_msgSend(errorCopy, "code") == 15)
  {
    domain4 = [v7 domain];
    v14 = [domain4 isEqualToString:@"MessageProtection.TetraRatchetingErrors"];

    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = 1;
  if (type > 600)
  {
    if ((type - 900) < 4 || type == 601)
    {
      goto LABEL_19;
    }
  }

  else if (!type || type == 202 || type == 501)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v15;
}

- (BOOL)_shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:(int64_t)type
{
  result = 1;
  if (type <= 600)
  {
    if (type && type != 202 && type != 501)
    {
      return result;
    }

    return 0;
  }

  if ((type - 900) < 4 || type == 601)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldRetryForDecryptionErrorType:(int64_t)type
{
  result = 1;
  if (type > 899)
  {
    if ((type - 900) > 3)
    {
      return result;
    }

    return 0;
  }

  if (!type || type == 202 || type == 501)
  {
    return 0;
  }

  return result;
}

- (id)_failureReasonMessageFromSecondaryError:(id)error ECError:(id)cError andLegacyError:(id)legacyError
{
  legacyErrorCopy = legacyError;
  cErrorCopy = cError;
  v9 = [IDSMessageMetricReporter errorToReportForNGMError:error];
  v10 = [IDSMessageMetricReporter errorToReportForNGMError:cErrorCopy];

  v11 = [IDSMessageMetricReporter errorToReportForLegacyError:legacyErrorCopy];

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v13 == 1 && v11 != 0)
  {
    domain = [v9 domain];
    code = [v9 code];
    domain2 = [v10 domain];
    code2 = [v10 code];
    domain3 = [v11 domain];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld ec-%@-%ld legacy-%@-%ld", domain, code, domain2, code2, domain3, [v11 code]);

LABEL_21:
LABEL_22:

    goto LABEL_23;
  }

  if (v13)
  {
    domain = [v9 domain];
    code3 = [v9 code];
    domain2 = [v10 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld ec-%@-%ld", domain, code3, domain2, [v10 code]);
    v21 = LABEL_20:;
    goto LABEL_21;
  }

  if (v10 && v11)
  {
    domain = [v10 domain];
    code4 = [v10 code];
    domain2 = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ec-%@-%ld legacy-%@-%ld", domain, code4, domain2, [v11 code]);
    goto LABEL_20;
  }

  if (v9 && v11)
  {
    domain = [v9 domain];
    code5 = [v9 code];
    domain2 = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld legacy-%@-%ld", domain, code5, domain2, [v11 code]);
    goto LABEL_20;
  }

  if (v9)
  {
    domain = [v9 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld", domain, [v9 code]);
    v21 = LABEL_32:;
    goto LABEL_22;
  }

  if (v10)
  {
    domain = [v10 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ec-%@-%ld", domain, [v10 code]);
    goto LABEL_32;
  }

  if (v11)
  {
    domain = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"legacy-%@-%ld", domain, [v11 code]);
    goto LABEL_32;
  }

  v21 = &stru_100C06028;
LABEL_23:

  return v21;
}

- (double)_decryptionRetryIntervalForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:IDSDecryptionErrorDomain])
  {
    code = [errorCopy code];

    v6 = 2.0;
    if (code == 2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 0.0;
LABEL_6:

  return v6;
}

+ (BOOL)_topicAllowsNoEncryption:(id)encryption fromURI:(id)i
{
  encryptionCopy = encryption;
  iCopy = i;
  v7 = [[NSSet alloc] initWithObjects:{@"mailto:support@apple.com", @"mailto:info@apple.com", @"mailto:alert@apple.com", 0}];
  prefixedURI = [iCopy prefixedURI];
  if (IMStringIsEmail())
  {
    prefixedURI2 = [iCopy prefixedURI];
    if ([prefixedURI2 hasSuffix:@".apple.com"])
    {
      v10 = 0;
    }

    else
    {
      prefixedURI3 = [iCopy prefixedURI];
      v12 = [v7 containsObject:prefixedURI3];

      v10 = v12 ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  if ([encryptionCopy isEqualToString:@"com.apple.madrid"] && !v10 || (objc_msgSend(encryptionCopy, "isEqualToString:", @"com.apple.private.alloy.bulletinboard") & 1) != 0 || (objc_msgSend(encryptionCopy, "isEqualToString:", @"com.apple.private.alloy.keychainsync") & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = [encryptionCopy isEqualToString:@"com.apple.private.alloy.willow"];
  }

  return v13;
}

- (void)_submitLastResortCacheMetricForGUID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  v7 = [[IDSMissingMessageMetric alloc] initWithReason:706 guid:dCopy service:serviceCopy additionalInformation:0];

  [IDSMissingMessageMetricReporter sendMetric:v7];
}

- (void)_sendNiceMessageCheckpointIfNecessary:(id)necessary checkpoint:(int64_t)checkpoint service:(id)service additionalInformation:(id)information
{
  necessaryCopy = necessary;
  serviceCopy = service;
  informationCopy = information;
  pushUUID = [necessaryCopy pushUUID];
  wantsCheckpointing = [necessaryCopy wantsCheckpointing];
  bOOLValue = [wantsCheckpointing BOOLValue];

  v16 = [(IDSDaemon *)self serverBagForBagType:1];
  v17 = [v16 objectForKey:@"disable-message-checkpointing"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 134218754;
    checkpointCopy = checkpoint;
    if (bOOLValue)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (bOOLValue2)
    {
      v20 = @"YES";
    }

    v25 = 2112;
    v26 = pushUUID;
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "At checkpoint %ld for guid %@. Wants checkpointing %@ disabled by bag key %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (!(bOOLValue2 & 1 | ((bOOLValue & 1) == 0)))
  {
    v22 = [[IDSMissingMessageMetric alloc] initWithReason:checkpoint guid:pushUUID service:serviceCopy additionalInformation:informationCopy];
    [IDSMissingMessageMetricReporter sendMetric:v22];
  }
}

- (void)_callReplayCommitBlockForIncomingMessages:(id)messages
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = messages;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        message = [v8 message];
        v10 = [IDSIncomingNiceMessage alloc];
        topic = [v8 topic];
        v12 = [v10 initWithMessageDictionary:message topic:topic];

        v13 = [(IDSDaemon *)self _replayKeyForNiceMessage:v12 encryptedData:0];
        v14 = +[IDSEncryptionController sharedInstance];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10066AC40;
        v17[3] = &unk_100BD6E40;
        v17[4] = self;
        v15 = v13;
        v18 = v15;
        [v14 performAsyncBlock:v17 priority:300];

        if (v15)
        {
          [(NSMutableDictionary *)self->_replayKeyToMessageUUIDMap removeObjectForKey:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (id)_replayKeyForNiceMessage:(id)message encryptedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  pushUUID = [messageCopy pushUUID];
  if (dataCopy || ([messageCopy encryptedPayload], (dataCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    groupIDData = [messageCopy groupIDData];
    if (groupIDData)
    {
      v9 = [[ENGroupID alloc] initWithDataRepresentation:groupIDData];

      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    encryptionTypeStr = [messageCopy encryptionTypeStr];
    v12 = IDSEncryptionTypeFromEncryptionTypeString();
    v13 = 3;
    if (v10)
    {
      v13 = v12;
    }

    if ((v13 + 1) < 5 || v13 == 6)
    {
      v14 = +[IDSRegistrationKeyManager sharedInstance];
      fullDeviceIdentityContainer = [v14 fullDeviceIdentityContainer];
      legacyFullIdentity = [fullDeviceIdentityContainer legacyFullIdentity];
    }

    else
    {
      legacyFullIdentity = 0;
    }

    v17 = [IDSCertifiedDeliveryReplayKey alloc];
    _FTOptionallyDecompressData = [dataCopy _FTOptionallyDecompressData];
    v19 = [v17 initWithPayload:_FTOptionallyDecompressData legacyIdentity:legacyFullIdentity];
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = pushUUID;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No payload data present in message %@ unable create a replay key.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v19 = 0;
  }

  return v19;
}

- (void)_optionallyDecryptNiceMessage:(id)message encryptedData:(id)data forGroupID:(id)d forTopic:(id)topic fromURI:(id)i certifiedDeliveryContext:(id)context isLiveRetry:(BOOL)retry incomingMetric:(id)self0 completionBlock:(id)self1
{
  messageCopy = message;
  dataCopy = data;
  dCopy = d;
  topicCopy = topic;
  iCopy = i;
  contextCopy = context;
  metricCopy = metric;
  blockCopy = block;
  v23 = blockCopy;
  if (messageCopy && blockCopy)
  {
    _FTOptionallyDecompressData = [dataCopy _FTOptionallyDecompressData];
    if (!_FTOptionallyDecompressData)
    {
      encryptedPayload = [(__CFString *)messageCopy encryptedPayload];
      _FTOptionallyDecompressData = [encryptedPayload _FTOptionallyDecompressData];
    }

    if (CUTIsInternalInstall())
    {
      payloadMetadataData = [(__CFString *)messageCopy payloadMetadataData];
    }

    else
    {
      payloadMetadataData = 0;
    }

    value = [(__CFString *)messageCopy encryptionTypeStr];
    v26 = IDSEncryptionTypeFromEncryptionTypeString();
    v27 = 3;
    if (!dCopy)
    {
      v27 = v26;
    }

    v79 = v27;
    serviceController = [(IDSDaemon *)self serviceController];
    v84 = [serviceController serviceWithPushTopic:topicCopy];

    toURI = [(__CFString *)messageCopy toURI];
    senderPushToken = [(__CFString *)messageCopy senderPushToken];
    command = [(__CFString *)messageCopy command];
    iPMessageFormat = [v84 IPMessageFormat];
    if (_FTOptionallyDecompressData)
    {
      v30 = iPMessageFormat;
      if (v79 == 2)
      {
        if (([objc_opt_class() _topicAllowsNoEncryption:topicCopy fromURI:iCopy] & 1) == 0 && v30 != 1)
        {
          v31 = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0];
          v32 = objc_alloc_init(NSMutableDictionary);
          rawMessage = [(__CFString *)messageCopy rawMessage];
          if (rawMessage)
          {
            CFDictionarySetValue(v32, IDSIncomingMessagePushPayloadKey, rawMessage);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092DFD8();
          }

          if (value)
          {
            CFDictionarySetValue(v32, IDSIncomingMessageOriginalEncryptionTypeKey, value);
          }

          (v23)[2](v23, v32, v31, contextCopy);

LABEL_26:
          goto LABEL_27;
        }
      }

      else if (iPMessageFormat != 1)
      {
        if (toURI && senderPushToken)
        {
          if (v84)
          {
            v78 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:toURI service:v84 outPseudonym:0];
            if (v78)
            {
              prefixedURI = [iCopy prefixedURI];
              if ([prefixedURI _appearsToBePseudonymID])
              {
                [iCopy prefixedURI];
              }

              else
              {
                [senderPushToken rawToken];
              }
              v73 = ;

              v43 = +[IDSEncryptionController sharedInstance];
              failedTokenCache = [v43 failedTokenCache];
              v74 = [failedTokenCache underLimitForItem:v73];

              queryService = [v84 queryService];
              v45 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = @"NO";
                *buf = 138413058;
                if (v74)
                {
                  v46 = @"YES";
                }

                v111 = v46;
                v112 = 2112;
                v113 = senderPushToken;
                v114 = 2112;
                v115 = queryService;
                v116 = 2112;
                v117 = iCopy;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Noting peer token {shouldNoteToken: %@, token: %@, service: %@, fromIdentifier: %@}", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v47 = @"NO";
                if (v74)
                {
                  v47 = @"YES";
                }

                v62 = queryService;
                v64 = iCopy;
                v58 = v47;
                v60 = senderPushToken;
                _IDSLogV();
              }

              if (v74)
              {
                v48 = +[IDSPeerIDManager sharedInstance];
                [v48 notePeerToken:senderPushToken forURI:iCopy fromURI:toURI service:queryService];

                v49 = +[IDSIDStatusQueryController sharedInstance];
                [v49 noteIncomingID:iCopy fromService:queryService];
              }

              v75 = [(__CFString *)messageCopy pushUUID:v58];
              v50 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v111 = v75;
                v112 = 2112;
                v113 = value;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Decrypting message %@ of encryption type %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v59 = v75;
                v61 = value;
                _IDSLogV();
              }

              if (_os_feature_enabled_impl() && IDSCommandIsGroupSessionCommand())
              {
                [command integerValue];
                kdebug_trace();
              }

              [(IDSDaemon *)self _sendNiceMessageCheckpointIfNecessary:messageCopy checkpoint:9200 service:topicCopy additionalInformation:0, v59, v61];
              v51 = +[IMLockdownManager sharedInstance];
              isInternalInstall = [v51 isInternalInstall];

              if (isInternalInstall)
              {
                if (IMGetAppBoolForKey())
                {
                  +[IDSNGMSwizzler installMethods];
                }

                else
                {
                  +[IDSNGMSwizzler uninstallMethods];
                }
              }

              v53 = [(IDSDaemon *)self _replayKeyForNiceMessage:messageCopy encryptedData:_FTOptionallyDecompressData];
              v54 = v53;
              if (v53)
              {
                [(NSMutableDictionary *)self->_replayKeyToMessageUUIDMap setObject:v75 forKey:v53];
                v54 = v53;
              }

              v71 = v54;
              v88[0] = _NSConcreteStackBlock;
              v88[1] = 3221225472;
              v88[2] = sub_10066BE00;
              v88[3] = &unk_100BE3778;
              v70 = command;
              v89 = v70;
              v90 = payloadMetadataData;
              v69 = iCopy;
              v91 = v69;
              v68 = senderPushToken;
              v92 = v68;
              selfCopy = self;
              v72 = v75;
              v94 = v72;
              v95 = topicCopy;
              v67 = toURI;
              v96 = v67;
              v97 = v84;
              retryCopy = retry;
              v98 = messageCopy;
              v99 = dataCopy;
              v66 = dCopy;
              v100 = v66;
              v101 = contextCopy;
              v65 = metricCopy;
              v102 = v65;
              v107 = v23;
              v108 = v79;
              v103 = value;
              v55 = _FTOptionallyDecompressData;
              v104 = v55;
              v56 = v78;
              v105 = v56;
              v76 = v71;
              v106 = v76;
              v57 = objc_retainBlock(v88);
              LOBYTE(v63) = retry;
              [v56 decryptMessageData:v55 guid:v72 localURI:v67 remoteURI:v69 pushToken:v68 groupID:v66 command:v70 encryptionType:v79 isLiveRetry:v63 replayKey:v76 incomingMetric:v65 completionBlock:v57];
            }

            else
            {
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v111 = topicCopy;
                v112 = 2112;
                v113 = toURI;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "No account found for topic: %@   toURI: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                _IDSLogTransport();
              }

              (v23)[2](v23, 0, 0, contextCopy);
            }
          }

          else
          {
            v41 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v111 = topicCopy;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Incoming message for topic: %@  but no service found", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              _IDSLogTransport();
            }
          }
        }

        else
        {
          v37 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v111 = messageCopy;
            v112 = 2112;
            v113 = toURI;
            v114 = 2112;
            v115 = senderPushToken;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Incoming message %@ missing routing information -- failing {toURI: %@, senderPushToken: %@}", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v60 = toURI;
            v62 = senderPushToken;
            v58 = messageCopy;
            _IDSLogTransport();
          }

          v38 = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0, v58, v60, v62];
          v39 = objc_alloc_init(NSMutableDictionary);
          rawMessage2 = [(__CFString *)messageCopy rawMessage];
          if (rawMessage2)
          {
            CFDictionarySetValue(v39, IDSIncomingMessagePushPayloadKey, rawMessage2);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092DFD8();
          }

          if (value)
          {
            CFDictionarySetValue(v39, IDSIncomingMessageOriginalEncryptionTypeKey, value);
          }

          (v23)[2](v23, v39, v38, contextCopy);
        }

        goto LABEL_26;
      }
    }

    v34 = objc_alloc_init(NSMutableDictionary);
    rawMessage3 = [(__CFString *)messageCopy rawMessage];
    if (rawMessage3)
    {
      CFDictionarySetValue(v34, IDSIncomingMessagePushPayloadKey, rawMessage3);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092DFD8();
    }

    if (value)
    {
      CFDictionarySetValue(v34, IDSIncomingMessageOriginalEncryptionTypeKey, value);
    }

    if (_FTOptionallyDecompressData)
    {
      CFDictionarySetValue(v34, IDSIncomingMessageDecryptedDataKey, _FTOptionallyDecompressData);
    }

    (v23)[2](v23, v34, 0, contextCopy);

    goto LABEL_26;
  }

LABEL_27:
}

- (void)_handleIncomingNiceAttachmentMessage:(id)message forTopic:(id)topic fromURI:(id)i certifiedDeliveryContext:(id)context completionBlock:(id)block
{
  messageCopy = message;
  topicCopy = topic;
  iCopy = i;
  contextCopy = context;
  blockCopy = block;
  v54 = messageCopy;
  if (messageCopy && blockCopy)
  {
    v49 = blockCopy;
    toURI = [messageCopy toURI];
    senderPushToken = [messageCopy senderPushToken];
    pushUUID = [messageCopy pushUUID];
    serviceController = [(IDSDaemon *)self serviceController];
    v50 = [serviceController serviceWithPushTopic:topicCopy];

    v17 = v50;
    if (!v50)
    {
LABEL_43:

      blockCopy = v49;
      goto LABEL_44;
    }

    v46 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:toURI service:v50 outPseudonym:0];
    if (!v46)
    {
      (*(v49 + 2))(v49, 0, 0, contextCopy);
LABEL_42:

      v17 = v50;
      goto LABEL_43;
    }

    encryptedPayload = [messageCopy encryptedPayload];
    _FTOptionallyDecompressData = [encryptedPayload _FTOptionallyDecompressData];

    value = [messageCopy encryptionTypeStr];
    v42 = IDSEncryptionTypeFromEncryptionTypeString();
    v44 = [(IDSDaemon *)self _replayKeyForNiceMessage:messageCopy encryptedData:_FTOptionallyDecompressData];
    if (v44)
    {
      replayKeyToMessageUUIDMap = self->_replayKeyToMessageUUIDMap;
      pushUUID2 = [messageCopy pushUUID];
      [(NSMutableDictionary *)replayKeyToMessageUUIDMap setObject:pushUUID2 forKey:v44];
    }

    payloadMetadataData = [messageCopy payloadMetadataData];
    if (!_FTOptionallyDecompressData)
    {
      goto LABEL_10;
    }

    if (v42 != 2)
    {
      [v50 allInterestedQueryServices];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      theDict = v72 = 0u;
      v22 = [(__CFDictionary *)theDict countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v22)
      {
        v23 = *v72;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v72 != v23)
            {
              objc_enumerationMutation(theDict);
            }

            v25 = *(*(&v71 + 1) + 8 * i);
            v26 = +[IDSPeerIDManager sharedInstance];
            [v26 notePeerToken:senderPushToken forURI:iCopy fromURI:toURI service:v25];

            v27 = +[IDSIDStatusQueryController sharedInstance];
            [v27 noteIncomingID:iCopy fromService:v25];
          }

          v22 = [(__CFDictionary *)theDict countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v22);
      }

      v28 = [iCopy isEqualToURI:toURI];
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = @"NO";
        *buf = 134218754;
        v76 = _FTOptionallyDecompressData;
        if (v28)
        {
          v30 = @"YES";
        }

        v77 = 2112;
        v78 = pushUUID;
        v79 = 2112;
        v80 = iCopy;
        v81 = 2112;
        v82 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Incoming message attachment data: %p ID: %@  from: %@ fromMe: %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v41 = iCopy;
        _IDSLogEventV();
      }

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10066DC20;
      v56[3] = &unk_100BE3810;
      v31 = v54;
      v57 = v31;
      v58 = payloadMetadataData;
      v32 = iCopy;
      v59 = v32;
      v33 = senderPushToken;
      v60 = v33;
      selfCopy = self;
      v34 = toURI;
      v62 = v34;
      v63 = v50;
      v35 = pushUUID;
      v64 = v35;
      v69 = v49;
      v65 = value;
      v66 = contextCopy;
      v70 = v42;
      v67 = topicCopy;
      v36 = v46;
      v68 = v36;
      v37 = objc_retainBlock(v56);
      command = [v31 command];
      LOBYTE(v41) = 0;
      [v36 decryptMessageData:_FTOptionallyDecompressData guid:v35 localURI:v34 remoteURI:v32 pushToken:v33 groupID:0 command:command encryptionType:v42 isLiveRetry:v41 replayKey:v44 incomingMetric:0 completionBlock:v37];

      goto LABEL_41;
    }

    if (![objc_opt_class() _topicAllowsNoEncryption:topicCopy fromURI:iCopy])
    {
      theDict = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0];
      v39 = objc_alloc_init(NSMutableDictionary);
      rawMessage = [messageCopy rawMessage];
      if (rawMessage)
      {
        CFDictionarySetValue(v39, IDSIncomingMessagePushPayloadKey, rawMessage);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      if (value)
      {
        CFDictionarySetValue(v39, IDSIncomingMessageOriginalEncryptionTypeKey, value);
      }

      (*(v49 + 2))(v49, v39, theDict, contextCopy);
    }

    else
    {
LABEL_10:
      theDict = objc_alloc_init(NSMutableDictionary);
      rawMessage2 = [messageCopy rawMessage];
      if (rawMessage2)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessagePushPayloadKey, rawMessage2);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      if (value)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessageOriginalEncryptionTypeKey, value);
      }

      if (_FTOptionallyDecompressData)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessageDecryptedDataKey, _FTOptionallyDecompressData);
      }

      (*(v49 + 2))(v49, theDict, 0, contextCopy);
    }

LABEL_41:

    goto LABEL_42;
  }

LABEL_44:
}

- (void)getLocalIncomingPowerAssertion:(id)assertion queue:(id)queue
{
  assertionCopy = assertion;
  queueCopy = queue;
  pthread_mutex_lock(&self->_incomingLocalPowerAssertionLock);
  if (!self->_incomingLocalPowerAssertion)
  {
    v8 = [IMPowerAssertion alloc];
    identifier = [assertionCopy identifier];
    v10 = [NSString stringWithFormat:@"IDS-receive-%@", identifier];
    v11 = [v8 initWithIdentifier:v10 timeout:120.0];
    incomingLocalPowerAssertion = self->_incomingLocalPowerAssertion;
    self->_incomingLocalPowerAssertion = v11;
  }

  ++self->_incomingLocalPowerAssertionClients;
  pthread_mutex_unlock(&self->_incomingLocalPowerAssertionLock);
  if (_os_feature_enabled_impl())
  {
    v13 = 500000000;
  }

  else
  {
    v13 = 2000000000;
  }

  v14 = dispatch_time(0, v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066FAF4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_after(v14, queueCopy, block);
}

- (void)_processIncomingLocalMessage:(id)message topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD context:(id)context storedGUID:(id)uID priority:(id)self0 connectionType:(int64_t)self1 didWakeHint:(BOOL)self2
{
  messageCopy = message;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  uIDCopy = uID;
  priorityCopy = priority;
  im_assert_primary_base_queue();
  key = IDSMessageContextOutgoingResponseIdentifierKey;
  v181 = [(__CFDictionary *)contextCopy _stringForKey:?];
  v173 = [(__CFDictionary *)contextCopy _numberForKey:IDSMessageContextSequenceNumberKey];
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v269 = v181;
    v270 = 2112;
    v271 = topicCopy;
    v272 = 1024;
    LODWORD(v273) = hint;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "INCOMING-LOCAL_DELIVERY:%@ SERVICE:%@ didWakeHint:%d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v138 = topicCopy;
    hintCopy = hint;
    v135 = v181;
    _IDSLogV();
  }

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v269 = uIDCopy;
    v270 = 2112;
    v271 = v181;
    v272 = 2112;
    v273 = topicCopy;
    v274 = 2112;
    v275 = commandCopy;
    v276 = 1024;
    hintCopy2 = hint;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Broadcast: Processing incoming local message storage guid %@ real message guid %@ topic %@ command %@ didWakeHint %d", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v146 = commandCopy;
    hintCopy3 = hint;
    v138 = v181;
    hintCopy = topicCopy;
    v135 = uIDCopy;
    _IDSLogTransport();
  }

  v21 = [(IDSDaemon *)self serviceController:v135];
  v182 = [v21 serviceWithPushTopic:topicCopy];

  if (v182)
  {
    serviceName = [v182 serviceName];
    v23 = [serviceName isEqualToString:@"com.apple.private.alloy.connectivity.monitor"];

    if (v23)
    {
      -[IDSDaemon _ackMessageWithSequenceNumber:forDeviceID:priority:dataProtectionClass:connectionType:guid:](self, "_ackMessageWithSequenceNumber:forDeviceID:priority:dataProtectionClass:connectionType:guid:", [v173 unsignedIntValue], dCopy, objc_msgSend(priorityCopy, "integerValue"), objc_msgSend(v182, "dataProtectionClass"), type, v181);
      goto LABEL_94;
    }

    v25 = +[IDSTrafficMonitor sharedInstance];
    identifier = [v182 identifier];
    [v25 noteIncomingLocalMessageForService:identifier];

    if (hint)
    {
      v266[0] = @"IDSDeviceDidWakeHintTopic";
      v266[1] = @"IDSDeviceDidWakeHintGUID";
      v27 = v181;
      if (!v181)
      {
        v27 = &stru_100C06028;
      }

      v267[0] = topicCopy;
      v267[1] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v267 forKeys:v266 count:2];
      [(IDSDaemon *)self _IDSPowerLogDictionary:@"IDS Local Message Received" info:v28];
    }

    v29 = +[IDSDAccountController sharedInstance];
    v170 = [v29 appleIDAccountOnService:v182];

    if ([v170 isRegistered])
    {
      prefixedURIStringsFromRegistration = [v170 prefixedURIStringsFromRegistration];
      firstObject = [prefixedURIStringsFromRegistration firstObject];
    }

    else
    {
      firstObject = 0;
    }

    queryService = [v182 queryService];
    v161 = [IDSURI URIWithPrefixedURI:firstObject withServiceLoggingHint:queryService];

    v171 = [v170 fromIDForCBUUID:iDCopy deviceID:dCopy];
    if (!v171)
    {
      v33 = +[IDSPairingManager sharedInstance];
      pairedDeviceUniqueID = [v33 pairedDeviceUniqueID];
      v171 = _IDSCopyIDForDeviceUniqueID();
    }

    queryService2 = [v182 queryService];
    v169 = [IDSURI URIWithPrefixedURI:v171 withServiceLoggingHint:queryService2];

    v168 = -[IDSIncomingMessageBroadcast initWithBroadcastBlock:needsClientAck:messageUUID:priority:senderID:sequenceNumber:]([IDSIncomingMessageBroadcast alloc], "initWithBroadcastBlock:needsClientAck:messageUUID:priority:senderID:sequenceNumber:", 0, 0, v181, [priorityCopy intValue], dCopy, objc_msgSend(v173, "unsignedIntValue"));
    if ([v169 isTokenURI])
    {
      v36 = +[IDSPeerIDManager sharedInstance];
      tokenFreeURI = [v169 tokenFreeURI];
      pushToken = [v169 pushToken];
      queryService3 = [v182 queryService];
      v40 = [v36 senderCorrelationIdentifierForURI:tokenFreeURI pushToken:pushToken fromURI:v161 service:queryService3];

      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        tokenFreeURI2 = [v169 tokenFreeURI];
        pushToken2 = [v169 pushToken];
        *buf = 138413058;
        v269 = v181;
        v270 = 2112;
        v271 = v40;
        v272 = 2112;
        v273 = tokenFreeURI2;
        v274 = 2112;
        v275 = pushToken2;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found sender correlation identifier { guid: %@, senderCorrelationIdentifier: %@, fromID: %@, token: %@ }", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        tokenFreeURI3 = [v169 tokenFreeURI];
        [v169 pushToken];
        v147 = v144 = tokenFreeURI3;
        v136 = v181;
        v139 = v40;
        _IDSLogV();
      }
    }

    else
    {
      v40 = 0;
    }

    Mutable = [(__CFDictionary *)contextCopy mutableCopy:v136];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v46 = uIDCopy;
    if (v46)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextStorageGuidKey, v46);
    }

    v47 = commandCopy;
    commandCopy = v47;
    if (v47)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextOriginalCommandKey, v47);
      v47 = commandCopy;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v48 = [NSNumber numberWithDouble:?];
    if (v48)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextBroadcastTimeKey, v48);
    }

    v49 = priorityCopy;
    if (v49)
    {
      v50 = v49;
      CFDictionarySetValue(Mutable, IDSMessageContextPriorityKey, v49);
      v49 = v50;
    }

    v158 = v49;

    v51 = [NSNumber numberWithLongLong:[(IDSIncomingMessageBroadcast *)v168 broadcastID]];
    if (v51)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextBroadcastIDKey, v51);
    }

    topicCopy = topicCopy;
    if (topicCopy)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextServiceIdentifierKey, topicCopy);
    }

    v52 = firstObject;
    if (v52)
    {
      v53 = v52;
      CFDictionarySetValue(Mutable, IDSMessageContextToIDKey, v52);
      v52 = v53;
    }

    v162 = v52;

    v54 = [NSNumber numberWithLongLong:type];
    if (v54)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextConnectionTypeKey, v54);
    }

    v55 = v40;
    if (v55)
    {
      v56 = v55;
      CFDictionarySetValue(Mutable, IDSMessageContextSenderCorrelationIdentifierKey, v55);
      v55 = v56;
    }

    v160 = v55;

    v57 = v181;
    if (v57)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextOriginalGUIDKey, v57);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = IDSMessageResourceTransferSandboxExtensionKey;
      v59 = [messageCopy objectForKey:IDSMessageResourceTransferSandboxExtensionKey];
      if (v59)
      {
        CFDictionarySetValue(Mutable, v58, v59);
      }

      v60 = IDSMessageResourceTransferURLKey;
      v61 = [messageCopy objectForKey:IDSMessageResourceTransferURLKey];
      if (v61)
      {
        CFDictionarySetValue(Mutable, v60, v61);
      }

      v62 = IDSMessageResourceTransferMetadataKey;
      v63 = [messageCopy objectForKey:IDSMessageResourceTransferMetadataKey];
      if (v63)
      {
        CFDictionarySetValue(Mutable, v62, v63);
      }
    }

    v167 = Mutable;

    superService = [v182 superService];
    if ([superService length])
    {
      v64 = superService;

      topicCopy = v64;
    }

    unsignedIntegerValue = [commandCopy unsignedIntegerValue];
    if (unsignedIntegerValue <= 148)
    {
      v66 = unsignedIntegerValue - 100;
      v67 = v182;
      if ((unsignedIntegerValue - 100) <= 0x2F)
      {
        if (((1 << v66) & 0x44041100F7) == 0)
        {
          if (((1 << v66) & 0xDB8000000000) != 0)
          {
LABEL_71:
            v68 = v239;
            v239[0] = _NSConcreteStackBlock;
            v239[1] = 3221225472;
            v239[2] = sub_10067204C;
            v239[3] = &unk_100BE3838;
            v239[4] = messageCopy;
            v240 = v46;
            v241 = topicCopy;
            v242 = v162;
            v243 = v171;
            v244 = v167;
            keya = objc_retainBlock(v239);

LABEL_72:
            v69 = &kIDSListenerCapConsumesLaunchOnDemandIncomingData;
LABEL_78:
            v70 = *v69;
            v71 = v68[4];
LABEL_79:

            contextCopy = v167;
LABEL_80:
            if (!keya)
            {

LABEL_93:
              goto LABEL_94;
            }

            v72 = objc_alloc_init(IMMessageContext);
            [v72 setShouldBoost:1];
            if ([(IDSIncomingMessageBroadcast *)v168 broadcastNeedsClientAck])
            {
              v73 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                broadcastID = [(IDSIncomingMessageBroadcast *)v168 broadcastID];
                *buf = 138412546;
                v269 = v57;
                v270 = 2048;
                v271 = broadcastID;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Broadcast: incoming local message %@ requires client ack, broadcast ID %lld\n", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                v137 = v57;
                broadcastID2 = [(IDSIncomingMessageBroadcast *)v168 broadcastID];
                _IDSLogTransport();
              }
            }

            v75 = [IDSDaemonPriorityQueueController sharedInstance:v137];
            if (v158)
            {
              v76 = v190;
              v190[0] = _NSConcreteStackBlock;
              v190[1] = 3221225472;
              v190[2] = sub_100672FF8;
              v190[3] = &unk_100BE38C8;
              v190[4] = self;
              v191 = v182;
              v77 = v158;
              v192 = v77;
              v196 = keya;
              v193 = v168;
              v194[0] = topicCopy;
              v194[1] = commandCopy;
              v197 = v70;
              v195 = v72;
              [v75 performBlockWithPriority:v190 priority:{objc_msgSend(v77, "intValue")}];

              v78 = &v191;
              v79 = &v192;
              v80 = &v196;
              v81 = &v193;
              v82 = v194;
              v75 = v195;
            }

            else
            {
              v76 = v183;
              v183[0] = _NSConcreteStackBlock;
              v183[1] = 3221225472;
              v183[2] = sub_1006730A4;
              v183[3] = &unk_100BE38F0;
              v183[4] = self;
              v184 = v182;
              v188 = keya;
              v185 = v168;
              v186 = topicCopy;
              v187[0] = commandCopy;
              v189 = v70;
              v187[1] = v72;
              [v75 performBlockMainQueue:v183];
              v78 = &v184;
              v79 = &v188;
              v80 = &v185;
              v81 = &v186;
              v82 = v187;
            }

LABEL_92:
            goto LABEL_93;
          }

          goto LABEL_117;
        }

        goto LABEL_76;
      }

      goto LABEL_117;
    }

    v67 = v182;
    if (unsignedIntegerValue <= 226)
    {
      if ((unsignedIntegerValue - 149) <= 0x2F)
      {
        if (((1 << (unsignedIntegerValue + 107)) & 0xC20380000000) != 0)
        {
LABEL_76:
          v68 = v230;
          v230[0] = _NSConcreteStackBlock;
          v230[1] = 3221225472;
          v230[2] = sub_100672108;
          v230[3] = &unk_100BE3860;
          v230[4] = v170;
          v231 = v67;
          v232 = messageCopy;
          commandCopy = commandCopy;
          v233 = commandCopy;
          v234 = v46;
          v235 = topicCopy;
          v236 = v162;
          v237 = v171;
          v238 = v167;
          keya = objc_retainBlock(v230);

LABEL_77:
          v69 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
          goto LABEL_78;
        }

        if (unsignedIntegerValue == 149)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_117;
    }

    if (unsignedIntegerValue > 241)
    {
      switch(unsignedIntegerValue)
      {
        case 242:
          v68 = v245;
          v245[0] = _NSConcreteStackBlock;
          v245[1] = 3221225472;
          v245[2] = sub_100671F90;
          v245[3] = &unk_100BE3838;
          v245[4] = messageCopy;
          v246 = v46;
          v247 = topicCopy;
          v248 = v162;
          v249 = v171;
          v250 = v167;
          keya = objc_retainBlock(v245);
          [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

          goto LABEL_72;
        case 243:
          v68 = v251;
          v251[0] = _NSConcreteStackBlock;
          v251[1] = 3221225472;
          v251[2] = sub_100671E64;
          v251[3] = &unk_100BE3838;
          v251[4] = messageCopy;
          v252 = v46;
          v253 = topicCopy;
          v254 = v162;
          v255 = v171;
          v256 = v167;
          keya = objc_retainBlock(v251);
          [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

          v69 = &kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf;
          goto LABEL_78;
        case 244:
          [(__CFDictionary *)v167 _stringForKey:IDSMessageContextIncomingResponseIdentifierKey];
          v225[0] = _NSConcreteStackBlock;
          v225[1] = 3221225472;
          v225[2] = sub_100672930;
          v71 = v225[3] = &unk_100BDA898;
          v226 = v71;
          v227 = topicCopy;
          v228 = v162;
          v229 = v167;
          keya = objc_retainBlock(v225);
          [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

          commandCopy = 0;
          v70 = kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates;
          goto LABEL_79;
      }

      goto LABEL_117;
    }

    if (unsignedIntegerValue == 227)
    {
      v68 = v257;
      v257[0] = _NSConcreteStackBlock;
      v257[1] = 3221225472;
      v257[2] = sub_100671D50;
      v257[3] = &unk_100BDEBC8;
      commandCopy = commandCopy;
      v257[4] = commandCopy;
      v258 = messageCopy;
      v259 = v46;
      v260 = topicCopy;
      v261 = v162;
      v262 = v171;
      v263 = v167;
      keya = objc_retainBlock(v257);
      [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

      goto LABEL_77;
    }

    if (unsignedIntegerValue == 228)
    {
      _FTOptionallyDecompressData = [messageCopy _FTOptionallyDecompressData];
      v157 = JWDecodeDictionary();
      v87 = [[IDSSendParameters alloc] initWithDictionary:v157];
      groupData = [v87 groupData];

      if (groupData)
      {
        v89 = objc_opt_class();
        groupData2 = [v87 groupData];
        destinations = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:v89 withData:groupData2];

        [v87 setDestinations:destinations];
      }

      else
      {
        destinations = [v87 destinations];
        v99 = [NSSet setWithArray:destinations];
        v100 = [IDSDestination destinationWithStrings:v99];

        [v87 setDestinations:v100];
      }

      serviceController = [(IDSDaemon *)self serviceController];
      v155 = [serviceController serviceWithPushTopic:topicCopy];

      v102 = +[IDSDAccountController sharedInstance];
      v103 = [v102 accountsOnService:v155 withType:0];

      keyb = [v103 firstObject];
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      obja = v103;
      v104 = [obja countByEnumeratingWithState:&v221 objects:v265 count:16];
      if (v104)
      {
        v105 = *v222;
        while (2)
        {
          for (i = 0; i != v104; i = i + 1)
          {
            if (*v222 != v105)
            {
              objc_enumerationMutation(obja);
            }

            v107 = *(*(&v221 + 1) + 8 * i);
            unprefixedURIStringsFromRegistration = [v107 unprefixedURIStringsFromRegistration];
            originalfromID = [v87 originalfromID];
            _stripFZIDPrefix = [originalfromID _stripFZIDPrefix];
            v111 = [unprefixedURIStringsFromRegistration containsObject:_stripFZIDPrefix];

            if (v111)
            {
              v112 = v107;

              keyb = v112;
              goto LABEL_147;
            }
          }

          v104 = [obja countByEnumeratingWithState:&v221 objects:v265 count:16];
          if (v104)
          {
            continue;
          }

          break;
        }
      }

LABEL_147:

      v113 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        messageUUID = [v87 messageUUID];
        destinations2 = [v87 destinations];
        *buf = 138412802;
        v269 = messageUUID;
        v270 = 2112;
        v271 = destinations2;
        v272 = 2112;
        v273 = keyb;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Proxy message original parameters {messageUUID: %@, destinations: %@, targettingAccount: %@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        messageUUID2 = [v87 messageUUID];
        broadcastID2 = [v87 destinations];
        v145 = keyb;
        v137 = messageUUID2;
        _IDSLogV();
      }

      v117 = objc_alloc_init(NSMutableSet);
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      destinations3 = [v87 destinations];
      destinationURIs = [destinations3 destinationURIs];

      v120 = [destinationURIs countByEnumeratingWithState:&v217 objects:v264 count:16];
      if (v120)
      {
        v121 = *v218;
        v122 = IDSDefaultPairedDevice;
        do
        {
          for (j = 0; j != v120; j = j + 1)
          {
            if (*v218 != v121)
            {
              objc_enumerationMutation(destinationURIs);
            }

            v124 = *(*(&v217 + 1) + 8 * j);
            if (([v124 isEqualToString:{v122, v137, broadcastID2, v145}] & 1) == 0)
            {
              [v117 addObject:v124];
            }
          }

          v120 = [destinationURIs countByEnumeratingWithState:&v217 objects:v264 count:16];
        }

        while (v120);
      }

      v125 = [IDSDestination destinationWithStrings:v117];
      [v87 setDestinations:v125];

      uniqueID = [keyb uniqueID];
      [v87 setAccountUUID:uniqueID];

      [keyb sendMessageWithSendParameters:v87 willSendBlock:&stru_100BE3880 completionBlock:&stru_100BE38A0];
      goto LABEL_162;
    }

    if (unsignedIntegerValue != 229)
    {
LABEL_117:
      v85 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        unsignedIntegerValue2 = [commandCopy unsignedIntegerValue];
        *buf = 136315394;
        v269 = "[IDSDaemon(Messaging) _processIncomingLocalMessage:topic:command:deviceID:btUUID:context:storedGUID:priority:connectionType:didWakeHint:]";
        v270 = 2048;
        v271 = unsignedIntegerValue2;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%s: Unknown incoming local message type received, %lu", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        unsignedIntegerValue3 = [commandCopy unsignedIntegerValue];
        _IDSWarnV();
        unsignedIntegerValue4 = [commandCopy unsignedIntegerValue];
        _IDSLogV();
        [commandCopy unsignedIntegerValue];
        _IDSLogTransport();
      }

LABEL_162:
      contextCopy = v167;

      goto LABEL_93;
    }

    v83 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Incoming proxy nice message for broadcast", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v152 = [messageCopy _numberForKey:IDSCommandKey];
    v150 = [messageCopy _dictionaryForKey:IDSProxyTopLevelPayloadKey];
    v149 = [messageCopy _dataForKey:IDSProxyPayloadKey];
    v156 = [messageCopy _stringForKey:IDSProxyGuidKey];
    v153 = [messageCopy _stringForKey:IDSProxyToIDKey];
    v151 = [messageCopy _stringForKey:IDSProxyFromIDKey];
    v154 = [(IDSDaemon *)self _checkIfDupeAndNoteGuid:v156 local:0 topic:topicCopy];
    if (v154)
    {
      v84 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v269 = v156;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Received local proxy message %@ is a duplicate. Ignoring.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v137 = v156;
        _IDSLogV();
      }

      [IDSDMessageStore deleteIncomingMessageWithGUID:v156, v137];
      v70 = 0;
      keya = 0;
      contextCopy = v167;
LABEL_170:

      if (v154)
      {
        goto LABEL_92;
      }

      goto LABEL_80;
    }

    v92 = [(__CFDictionary *)v167 mutableCopy];
    if (!v92)
    {
      v92 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v93 = v156;
    if (v93)
    {
      CFDictionarySetValue(v92, key, v93);
    }

    v94 = v153;
    if (v94)
    {
      CFDictionarySetValue(v92, IDSMessageContextToIDKey, v94);
    }

    contextCopy = v92;
    v95 = v152;

    integerValue = [v95 integerValue];
    keya = 0;
    v70 = 0;
    if (integerValue <= 137)
    {
      if ((integerValue - 100) > 0x1A)
      {
        goto LABEL_169;
      }

      v97 = 1 << (integerValue - 100);
      v98 = 67174647;
    }

    else
    {
      if (integerValue > 226)
      {
        if (integerValue != 227)
        {
          if (integerValue == 242)
          {
            v205[0] = _NSConcreteStackBlock;
            v205[1] = 3221225472;
            v205[2] = sub_100672D78;
            v205[3] = &unk_100BE3838;
            v206 = v149;
            v207 = v93;
            v208 = topicCopy;
            v209 = v94;
            v210 = v151;
            v211 = contextCopy;
            keya = objc_retainBlock(v205);
            v128 = &v206;
            v129 = &v207;
            v130 = &v208;
            v131 = &v209;
            v132 = &v210;
            v133 = &v211;
            v134 = &kIDSListenerCapConsumesLaunchOnDemandIncomingData;
          }

          else
          {
            if (integerValue != 243)
            {
              goto LABEL_169;
            }

            v198[0] = _NSConcreteStackBlock;
            v198[1] = 3221225472;
            v198[2] = sub_100672F34;
            v198[3] = &unk_100BE3838;
            v199 = v149;
            v200 = v93;
            v201 = topicCopy;
            v202 = v94;
            v203 = v151;
            v204 = contextCopy;
            keya = objc_retainBlock(v198);
            v128 = &v199;
            v129 = &v200;
            v130 = &v201;
            v131 = &v202;
            v132 = &v203;
            v133 = &v204;
            v134 = &kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf;
          }

          goto LABEL_168;
        }

        v127 = v212;
        v212[0] = _NSConcreteStackBlock;
        v212[1] = 3221225472;
        v212[2] = sub_100672C60;
        v212[3] = &unk_100BDEBF0;
        v212[4] = v95;
        v212[5] = messageCopy;
        v212[6] = v150;
        v212[7] = v93;
        v212[8] = topicCopy;
        v212[9] = v94;
        v213 = v151;
        v214 = contextCopy;
        keya = objc_retainBlock(v212);

LABEL_167:
        v128 = v127 + 4;
        v129 = v127 + 5;
        v130 = v127 + 6;
        v131 = v127 + 7;
        v132 = v127 + 8;
        v133 = v127 + 9;
        v134 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
LABEL_168:
        v70 = *v134;

        goto LABEL_169;
      }

      if ((integerValue - 138) > 0x3A)
      {
LABEL_169:

        commandCopy = v95;
        goto LABEL_170;
      }

      v97 = 1 << (integerValue + 118);
      v98 = 0x6101C0000000001;
    }

    if ((v97 & v98) != 0)
    {
      v127 = v215;
      v215[0] = _NSConcreteStackBlock;
      v215[1] = 3221225472;
      v215[2] = sub_100672B90;
      v215[3] = &unk_100BDEBC8;
      v215[4] = v150;
      v215[5] = v93;
      v215[6] = messageCopy;
      v215[7] = topicCopy;
      v215[8] = v94;
      v215[9] = v151;
      v216 = contextCopy;
      keya = objc_retainBlock(v215);

      goto LABEL_167;
    }

    goto LABEL_169;
  }

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v269 = "[IDSDaemon(Messaging) _processIncomingLocalMessage:topic:command:deviceID:btUUID:context:storedGUID:priority:connectionType:didWakeHint:]";
    v270 = 2112;
    v271 = topicCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: could not find IDSServiceProperties for topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    v136 = "[IDSDaemon(Messaging) _processIncomingLocalMessage:topic:command:deviceID:btUUID:context:storedGUID:priority:connectionType:didWakeHint:]";
    v139 = topicCopy;
    _IDSLogTransport();
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:uIDCopy, v136, v139];
LABEL_94:
}

- (void)_processStoredIncomingLocalMessage:(id)message
{
  messageCopy = message;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    guid = [messageCopy guid];
    topic = [messageCopy topic];
    *buf = 138412546;
    v61 = guid;
    v62 = 2112;
    v63 = topic;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing stored incoming local message %@ topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    guid2 = [messageCopy guid];
    [messageCopy topic];
    v48 = v45 = guid2;
    _IDSLogV();
  }

  message = [messageCopy message];
  v10 = [message _stringForKey:@"IDSIncomingLocalMessageService"];
  v58 = [message _stringForKey:@"IDSIncomingLocalMessageDeviceID"];
  v57 = [message _stringForKey:@"IDSIncomingLocalMessageBTUUID"];
  v59 = [message _numberForKey:@"IDSIncomingLocalMessageCommand"];
  v55 = [message objectForKey:@"IDSIncomingLocalMessagePayload"];
  v11 = [NSMutableDictionary alloc];
  v12 = [message _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
  v13 = [v11 initWithDictionary:v12];

  guid3 = [messageCopy guid];
  [v13 setObject:guid3 forKey:IDSMessageContextStorageGuidKey];

  serviceController = [(IDSDaemon *)self serviceController];
  v16 = [serviceController serviceWithPushTopic:v10];

  if (!sub_100019928([v16 shouldProtectTrafficUsingClassA], objc_msgSend(v16, "dataProtectionClass"), v10))
  {
    guid4 = [messageCopy guid];
    LOBYTE(v51) = 0;
    [(IDSDaemon *)self _processIncomingLocalMessage:v55 topic:v10 command:v59 deviceID:v58 btUUID:v57 context:v13 storedGUID:guid4 priority:0 connectionType:0 didWakeHint:v51];
    goto LABEL_48;
  }

  v17 = +[IDSDAccountController sharedInstance];
  serviceController2 = [(IDSDaemon *)self serviceController];
  v19 = [serviceController2 serviceWithPushTopic:v10];
  guid4 = [v17 localAccountOnService:v19];

  v20 = [guid4 fromIDForCBUUID:v57 deviceID:v58];
  if (!v20)
  {
    v21 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v21 pairedDeviceUniqueID];
    v20 = _IDSCopyIDForDeviceUniqueID();
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using fromID for this message as %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v46 = v20;
    _IDSLogV();
  }

  _stripFZIDPrefix = [v20 _stripFZIDPrefix];
  v25 = [IDSEncryptionHelpers areDataProtectionKeysAvailableForService:v10 withDataProtectionClass:1 fromDevice:_stripFZIDPrefix];

  if (!v25)
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      guid5 = [messageCopy guid];
      topic2 = [messageCopy topic];
      *buf = 138412546;
      v61 = guid5;
      v62 = 2112;
      v63 = topic2;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Class A key not avaialble for message %@ on topic %@", buf, 0x16u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_36;
    }

    guid6 = [messageCopy guid];
    topic3 = [messageCopy topic];
    _IDSLogV();
LABEL_35:

LABEL_36:
    goto LABEL_48;
  }

  unsignedIntegerValue = [v59 unsignedIntegerValue];
  if (unsignedIntegerValue == 243)
  {
    v34 = [[IDSProtobuf alloc] initWithDictionary:v55];
    data = [v34 data];
    _stripFZIDPrefix2 = [v20 _stripFZIDPrefix];
    topic3 = [(IDSDaemon *)self _decryptAOverCMessage:data topic:v10 fromDeviceID:_stripFZIDPrefix2 error:0];

    if (topic3)
    {
      [v34 setData:?];
      guid6 = [v34 dictionaryRepresentation];
    }

    else
    {
      guid6 = 0;
    }

LABEL_33:
    if (guid6)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (unsignedIntegerValue == 242)
  {
    _stripFZIDPrefix3 = [v20 _stripFZIDPrefix];
    v33 = [(IDSDaemon *)self _decryptAOverCMessage:v55 topic:v10 fromDeviceID:_stripFZIDPrefix3 error:0];

    if (v33)
    {
      guid6 = v33;
      topic3 = guid6;
LABEL_34:
      guid7 = [messageCopy guid];
      LOBYTE(v51) = 0;
      [(IDSDaemon *)self _processIncomingLocalMessage:guid6 topic:v10 command:v59 deviceID:v58 btUUID:v57 context:v13 storedGUID:guid7 priority:0 connectionType:0 didWakeHint:v51];

      goto LABEL_35;
    }
  }

  else if (unsignedIntegerValue == 227)
  {
    _stripFZIDPrefix4 = [v20 _stripFZIDPrefix];
    topic3 = [(IDSDaemon *)self _decryptAOverCMessage:v55 topic:v10 fromDeviceID:_stripFZIDPrefix4 error:0];

    if (topic3)
    {
      guid6 = JWDecodeDictionary();
      goto LABEL_33;
    }
  }

  topic3 = 0;
LABEL_37:
  v38 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = [v13 objectForKey:IDSMessageContextOutgoingResponseIdentifierKey];
    *buf = 138413058;
    v61 = v59;
    v62 = 2112;
    v63 = v20;
    v64 = 2112;
    v65 = v10;
    v66 = 2112;
    v67 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "We failed to decrypt class A data on a class C service even when we had keys, Please collect logs and file a bug: Original Command: %@ From Device: %@ Service: %@ GUID: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v40 = IDSMessageContextOutgoingResponseIdentifierKey;
    v52 = [v13 objectForKey:IDSMessageContextOutgoingResponseIdentifierKey];
    _IDSWarnV();

    v53 = [v13 objectForKey:{v40, v59, v20, v10, v52}];
    _IDSLogV();

    [v13 objectForKey:{v40, v59, v20, v10, v53}];
    v51 = v50 = v10;
    v47 = v59;
    v49 = v20;
    _IDSLogTransport();
  }

  v41 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v13 objectForKey:IDSMessageContextOutgoingResponseIdentifierKey];
    *buf = 138413058;
    v61 = v59;
    v62 = 2112;
    v63 = v20;
    v64 = 2112;
    v65 = v10;
    v66 = 2112;
    v67 = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "We failed to decrypt class A data on a class C service even when we had keys, Please collect logs and file a bug: Original Command: %@ From Device: %@ Service: %@ GUID: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v43 = IDSMessageContextOutgoingResponseIdentifierKey;
      [v13 objectForKey:IDSMessageContextOutgoingResponseIdentifierKey];
      v51 = v50 = v10;
      v47 = v59;
      v49 = v20;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        [v13 objectForKey:{v43, v59, v20, v10, v51}];
        v51 = v50 = v10;
        v47 = v59;
        v49 = v20;
        _IDSLogV();
      }
    }
  }

  guid8 = [messageCopy guid];
  [IDSDMessageStore deleteIncomingMessageWithGUID:guid8];

LABEL_48:
}

- (void)_processStoredIncomingRemoteMessagesWithGUIDs:(id)ds ignoringGUIDs:(id)iDs controlCategory:(unsigned int)category lastTimeInterval:(double)interval repeatedAttempt:(BOOL)attempt
{
  attemptCopy = attempt;
  dsCopy = ds;
  iDsCopy = iDs;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v101 = _os_activity_create(&_mh_execute_header, "Processing stored incoming remote messages", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v101, &state);
  selfCopy = self;
  if (self->_processingStoredIncomingRemoteMessages && !attemptCopy)
  {
    if (!self->_processingStoredIncomingRemoteMessagesControlCategories)
    {
      v12 = objc_alloc_init(NSMutableArray);
      processingStoredIncomingRemoteMessagesControlCategories = self->_processingStoredIncomingRemoteMessagesControlCategories;
      self->_processingStoredIncomingRemoteMessagesControlCategories = v12;
    }

    v85 = [NSNumber numberWithUnsignedInt:category];
    if (([(NSMutableArray *)self->_processingStoredIncomingRemoteMessagesControlCategories containsObject:v85]& 1) == 0)
    {
      [(NSMutableArray *)self->_processingStoredIncomingRemoteMessagesControlCategories addObject:v85];
    }

    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_processingStoredIncomingRemoteMessagesControlCategories;
      *buf = 136315394;
      v104 = "[IDSDaemon(Messaging) _processStoredIncomingRemoteMessagesWithGUIDs:ignoringGUIDs:controlCategory:lastTimeInterval:repeatedAttempt:]";
      v105 = 2112;
      v106 = *&v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: ignoring, already processing queued control categories %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_103;
  }

  self->_processingStoredIncomingRemoteMessages = 1;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [dsCopy count];
    v18 = @"NO";
    v104 = "[IDSDaemon(Messaging) _processStoredIncomingRemoteMessagesWithGUIDs:ignoringGUIDs:controlCategory:lastTimeInterval:repeatedAttempt:]";
    *buf = 136315650;
    if (attemptCopy)
    {
      v18 = @"YES";
    }

    v105 = 2048;
    v106 = *&v17;
    v107 = 2112;
    v108 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: GUIDs count %lu {repeatedAttempt: %@}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = [dsCopy count];
    v20 = @"NO";
    if (attemptCopy)
    {
      v20 = @"YES";
    }

    v75 = v19;
    v77 = v20;
    v73 = "[IDSDaemon(Messaging) _processStoredIncomingRemoteMessagesWithGUIDs:ignoringGUIDs:controlCategory:lastTimeInterval:repeatedAttempt:]";
    _IDSLogV();
  }

  [(IDSDaemon *)self _minimumNextStoredLoadTime:v73];
  v22 = v21;
  if (iDsCopy)
  {
    v85 = [NSMutableSet setWithSet:?];
  }

  else
  {
    v85 = 0;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = [IDSDMessageStore incomingMessagesUpToLimit:500 controlCategory:category messageTransportType:2 success:0];
  v25 = [v24 sortedArrayUsingComparator:&stru_100BE3930];

  objc_autoreleasePoolPop(v23);
  context = objc_autoreleasePoolPush();
  v81 = [v25 count];
  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v25 count];
    v28 = @"YES";
    if (v81 < 0x1F4)
    {
      v28 = @"NO";
    }

    *buf = 134218242;
    v104 = v27;
    v105 = 2112;
    v106 = *&v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Processing %lu stored incoming remote messages {shouldRepeat %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v29 = [v25 count];
    v30 = @"YES";
    if (v81 < 0x1F4)
    {
      v30 = @"NO";
    }

    v74 = v29;
    v76 = *&v30;
    _IDSLogV();
  }

  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v96 = 0u;
  obj = v25;
  v31 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
  if (!v31)
  {

    v83 = 0;
    goto LABEL_78;
  }

  v83 = 0;
  v86 = *v97;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v97 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v96 + 1) + 8 * i);
      topic = [v33 topic];
      serviceController = [(IDSDaemon *)selfCopy serviceController];
      v36 = [serviceController serviceWithPushTopic:topic];

      v37 = objc_autoreleasePoolPush();
      v38 = +[IMSystemMonitor sharedInstance];
      isUnderFirstDataProtectionLock = [v38 isUnderFirstDataProtectionLock];

      if (!isUnderFirstDataProtectionLock || [v36 dataProtectionClass])
      {
        if (dsCopy)
        {
          guid = [v33 guid];
          if (([dsCopy containsObject:guid] & 1) == 0)
          {

LABEL_55:
            ++v83;
            goto LABEL_69;
          }

          if (!iDsCopy)
          {

            goto LABEL_56;
          }
        }

        else if (!iDsCopy)
        {
LABEL_56:
          if (!v85 && v81 >= 0x1F4)
          {
            v85 = +[NSMutableSet set];
          }

          guid2 = [v33 guid];
          [v85 addObject:guid2];

          if ([v33 controlCategory] && objc_msgSend(v33, "expirationDate") && (v44 = objc_msgSend(v33, "expirationDate"), +[NSDate date](NSDate, "date"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "timeIntervalSince1970"), LODWORD(v44) = v46 > v44, v45, v44))
          {
            v47 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              guid3 = [v33 guid];
              *buf = 138412802;
              v104 = topic;
              v105 = 2112;
              v106 = *&guid3;
              v107 = 2112;
              v108 = v33;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Found expired message for topic %@ storedGuid %@: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [v33 guid];
              v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v78 = v33;
              v74 = topic;
              _IDSLogV();
            }

            guid4 = [v33 guid];
            [IDSDMessageStore deleteIncomingMessageWithGUID:guid4];
          }

          else
          {
            v50 = [IDSIncomingNiceMessage alloc];
            message = [v33 message];
            topic2 = [v33 topic];
            v53 = [v50 initWithMessageDictionary:message topic:topic2];

            fromID = [v33 fromID];
            v55 = [IDSURI URIWithPrefixedURI:fromID withServiceLoggingHint:topic];

            guid5 = [v33 guid];
            [(IDSDaemon *)selfCopy _processIncomingRemoteNiceMessage:v53 forTopic:topic fromURI:v55 storedGuid:guid5 messageContext:0];
          }

          goto LABEL_69;
        }

        guid6 = [v33 guid];
        v41 = [iDsCopy containsObject:guid6];

        if (dsCopy)
        {

          if (v41)
          {
            goto LABEL_55;
          }
        }

        else if (v41)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v42 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " => Deferring message, service wants messages after first unlock only", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

LABEL_69:
      objc_autoreleasePoolPop(v37);
    }

    v31 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
  }

  while (v31);

  if (v83 >= 1)
  {
    if (v83 > 0x1F3)
    {
      goto LABEL_76;
    }

    [(IDSDaemon *)selfCopy _minimumNextStoredLoadTime];
    v22 = interval / (500 - v83) * 500.0;
    if (v22 < v57)
    {
      [(IDSDaemon *)selfCopy _minimumNextStoredLoadTime];
      goto LABEL_77;
    }

    [(IDSDaemon *)selfCopy _maximumNextStoredLoadTime];
    if (v22 > v72)
    {
LABEL_76:
      [(IDSDaemon *)selfCopy _maximumNextStoredLoadTime];
LABEL_77:
      v22 = v58;
    }
  }

LABEL_78:
  v59 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = @"YES";
    *buf = 138412802;
    if (v81 < 0x1F4)
    {
      v60 = @"NO";
    }

    v104 = v60;
    v105 = 2048;
    v106 = v22;
    v107 = 2048;
    v108 = v83;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Finished processing stored incoming messages {shouldRepeat %@, timeInterval %f, numberFiltered %lld}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v61 = @"YES";
    if (v81 < 0x1F4)
    {
      v61 = @"NO";
    }

    v78 = v83;
    v76 = v22;
    v74 = v61;
    _IDSLogV();
  }

  objc_autoreleasePoolPop(context);
  if (v81 >= 0x1F4)
  {
    v67 = dispatch_time(0, (v22 * 1000000000.0));
    v68 = im_primary_queue();
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_100674BF4;
    v91[3] = &unk_100BE3598;
    v91[4] = selfCopy;
    v92 = dsCopy;
    v93 = v85;
    categoryCopy = category;
    v94 = v22;
    dispatch_after(v67, v68, v91);
  }

  else
  {
    selfCopy->_processingStoredIncomingRemoteMessages = 0;
    if ([(NSMutableArray *)selfCopy->_processingStoredIncomingRemoteMessagesControlCategories count])
    {
      firstObject = [(NSMutableArray *)selfCopy->_processingStoredIncomingRemoteMessagesControlCategories firstObject];
      v63 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = selfCopy->_processingStoredIncomingRemoteMessagesControlCategories;
        *buf = 138412546;
        v104 = firstObject;
        v105 = 2112;
        v106 = *&v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Finished processing queued messages, moving onto queued categories {controlCategory %@, queued %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v74 = firstObject;
        v76 = *&selfCopy->_processingStoredIncomingRemoteMessagesControlCategories;
        _IDSLogV();
      }

      [(NSMutableArray *)selfCopy->_processingStoredIncomingRemoteMessagesControlCategories removeFirstObject:v74];
      v65 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100674C10;
      block[3] = &unk_100BD6E40;
      block[4] = selfCopy;
      v90 = firstObject;
      v66 = firstObject;
      dispatch_async(v65, block);
    }

    else
    {
      v69 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Finished processing all queued messages", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v70 = selfCopy->_processingStoredIncomingRemoteMessagesControlCategories;
      selfCopy->_processingStoredIncomingRemoteMessagesControlCategories = 0;

      serverStorageStateMachine = [(IDSDaemon *)selfCopy serverStorageStateMachine];
      [serverStorageStateMachine sendSSMProcessedForPersistedTopics];
    }
  }

LABEL_103:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_processStoredIncomingMessages
{
  [(IDSDaemon *)self _processStoredIncomingLocalMessages];

  [(IDSDaemon *)self _processStoredIncomingRemoteMessagesWithGUIDs:0 ignoringGUIDs:0 lastTimeInterval:0.0];
}

- (void)_processDeletingMessagesWithPriority:(int64_t)priority reason:(id)reason responseCode:(int64_t)code allowedTrafficClasses:(id)classes
{
  reasonCopy = reason;
  classesCopy = classes;
  im_assert_primary_base_queue();
  v12 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100674DD0;
  v15[3] = &unk_100BE39A8;
  v16 = classesCopy;
  selfCopy = self;
  priorityCopy = priority;
  codeCopy = code;
  v18 = reasonCopy;
  v13 = reasonCopy;
  v14 = classesCopy;
  [v12 performBlockWithPriority:v15 priority:priority];
}

- (void)_processDisallowedMessages
{
  v3 = +[IDSUTunDeliveryController sharedInstance];
  allowedTrafficClasses = [v3 allowedTrafficClasses];

  [(IDSDaemon *)self _processDeletingMessagesWithPriority:300 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:allowedTrafficClasses];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:200 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:allowedTrafficClasses];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:100 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:allowedTrafficClasses];
}

- (void)_processMessagesUponUnpairing
{
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:300 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:200 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];

  [(IDSDaemon *)self _processDeletingMessagesWithPriority:100 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];
}

- (void)_processStoredOutgoingUrgentMessagesProcessLocalAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (accountsCopy)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v88 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Processing stored outgoing urgent messages LocalOnly: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = @"NO";
    if (accountsCopy)
    {
      v6 = @"YES";
    }

    v54 = v6;
    _IDSLogV();
  }

  v7 = +[IDSDAccountController sharedInstance];
  v8 = v7;
  if (accountsCopy)
  {
    v9 = [v7 accountsWithType:2];
    v10 = [NSMutableArray arrayWithArray:v9];

    v11 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v11 pairedDeviceUniqueID];
  }

  else
  {
    v12 = [v7 accountsWithType:1];
    v10 = [NSMutableArray arrayWithArray:v12];

    v11 = +[IDSDAccountController sharedInstance];
    v13 = [v11 accountsWithType:0];
    [v10 addObjectsFromArray:v13];

    pairedDeviceUniqueID = 0;
  }

  v70 = objc_alloc_init(NSMutableArray);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v14)
  {
    v15 = *v84;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v84 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v83 + 1) + 8 * i);
        uniqueID = [v17 uniqueID];

        if (uniqueID)
        {
          uniqueID2 = [v17 uniqueID];
          [v70 addObject:uniqueID2];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v14);
  }

  v20 = [IDSDMessageStore allUnsentOutgoingMessagesForAccounts:v70 localDestinationDeviceID:pairedDeviceUniqueID priority:300 hardLimit:10000];
  v65 = objc_alloc_init(IMMessageContext);
  [v65 setShouldBoost:1];
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v20 count];
    *buf = 134217984;
    v88 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Processing stored %lu outgoing urgent priority messages", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    guid7 = [v20 count];
    _IDSLogV();
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v67 = v20;
  v72 = [v67 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v72)
  {
    v71 = *v80;
    do
    {
      for (j = 0; j != v72; j = j + 1)
      {
        if (*v80 != v71)
        {
          objc_enumerationMutation(v67);
        }

        v24 = *(*(&v79 + 1) + 8 * j);
        v25 = [IDSDAccountController sharedInstance:guid7];
        accountGUID = [v24 accountGUID];
        v27 = [v25 accountWithUniqueID:accountGUID];

        if (!v27)
        {
          v28 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            accountGUID2 = [v24 accountGUID];
            *buf = 138412290;
            v88 = accountGUID2;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Found stored outgoing message from account with guid %@ which no longer exists.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            accountGUID3 = [v24 accountGUID];
            _IDSWarnV();

            accountGUID4 = [v24 accountGUID];
            _IDSLogV();

            accountGUID5 = [v24 accountGUID];
            _IDSLogTransport();
          }
        }

        service = [(__CFString *)v27 service];
        pushTopic = [service pushTopic];

        if (pushTopic)
        {
          copySendParameters = [v24 copySendParameters];
          data = [copySendParameters data];

          if (data)
          {
            v33 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              data2 = [copySendParameters data];
              v35 = [data2 length];
              destinations = [copySendParameters destinations];
              identifier = [copySendParameters identifier];
              guid = [v24 guid];
              *buf = 138413314;
              v88 = v27;
              v89 = 1024;
              *v90 = v35;
              *&v90[4] = 2112;
              *&v90[6] = destinations;
              *&v90[14] = 2112;
              *&v90[16] = identifier;
              *&v90[24] = 2112;
              *&v90[26] = guid;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "account %@ _processStoredOutgoingUrgentMessagesProcessLocalAccounts for with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              data3 = [copySendParameters data];
              v40 = [data3 length];
              destinations2 = [copySendParameters destinations];
              identifier2 = [copySendParameters identifier];
              guid2 = [v24 guid];
              v63 = identifier2;
              v64 = guid2;
              v61 = v40;
              v62 = destinations2;
              guid7 = v27;
              _IDSLogV();
              goto LABEL_54;
            }
          }

          else
          {
            v48 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              message = [copySendParameters message];
              destinations3 = [copySendParameters destinations];
              identifier3 = [copySendParameters identifier];
              guid3 = [v24 guid];
              *buf = 138413314;
              v88 = v27;
              v89 = 2112;
              *v90 = message;
              *&v90[8] = 2112;
              *&v90[10] = destinations3;
              *&v90[18] = 2112;
              *&v90[20] = identifier3;
              *&v90[28] = 2112;
              *&v90[30] = guid3;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "account %@ _processStoredOutgoingUrgentMessagesProcessLocalAccounts for message: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              data3 = [copySendParameters message];
              destinations2 = [copySendParameters destinations];
              identifier2 = [copySendParameters identifier];
              guid2 = [v24 guid];
              v63 = identifier2;
              v64 = guid2;
              v61 = data3;
              v62 = destinations2;
              guid7 = v27;
              _IDSLogV();
LABEL_54:
            }
          }

          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100676AD4;
          v74[3] = &unk_100BDF220;
          v75 = pushTopic;
          selfCopy = self;
          v77 = v24;
          guid8 = copySendParameters;
          v78 = guid8;
          alternateGUID = objc_retainBlock(v74);
          [(__CFString *)v27 sendMessageWithSendParameters:guid8 willSendBlock:0 completionBlock:alternateGUID];

          goto LABEL_56;
        }

        v44 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          guid4 = [v24 guid];
          *buf = 138412290;
          v88 = guid4;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Old outgoing message %@ has no relevant account, cleaning up.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          guid5 = [v24 guid];
          _IDSWarnV();

          guid6 = [v24 guid];
          _IDSLogV();

          guid7 = [v24 guid];
          _IDSLogTransport();
        }

        guid8 = [v24 guid];
        alternateGUID = [v24 alternateGUID];
        [IDSDMessageStore deleteOutgoingMessageWithGUID:guid8 alternateGUID:alternateGUID];
LABEL_56:
      }

      v72 = [v67 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v72);
  }

  v53 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Finished processing stored outgoing messages", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)_handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:(id)classes withMessageTypes:(id)types
{
  classesCopy = classes;
  typesCopy = types;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling Space Becoming available for urgent local messages", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (!classesCopy)
  {
    classesCopy = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];
  }

  v8 = &off_100C3DD90;
  v35 = 0u;
  v36 = 0u;
  if (typesCopy)
  {
    v8 = typesCopy;
  }

  v25 = v8;
  v33 = 0uLL;
  v34 = 0uLL;
  obj = classesCopy;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v26)
  {
    v24 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v24)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v27 = v9;
        v28 = *(*(&v33 + 1) + 8 * v9);
        v11 = objc_alloc_init(NSMutableArray);
        v12 = +[IDSDMessageStore unsentUrgentAccountUUIDsWithDataProtectionClass:withMessageTypes:](IDSDMessageStore, "unsentUrgentAccountUUIDsWithDataProtectionClass:withMessageTypes:", [v28 intValue], v25);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v13)
        {
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = +[IDSDAccountController sharedInstance];
              v18 = [v17 accountWithUniqueID:v16];

              if (v18)
              {
                service = [v18 service];
                if ([service adHocServiceType] == 2)
                {
                }

                else
                {
                  service2 = [v18 service];
                  v21 = [service2 adHocServiceType] == 5;

                  if (!v21)
                  {
                    goto LABEL_25;
                  }
                }

                [v11 addObject:v16];
              }

LABEL_25:
            }

            v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v13);
        }

        -[IDSDaemon _processLocalMessagesWithAccountUUIDs:priority:dataProtectionClass:](self, "_processLocalMessagesWithAccountUUIDs:priority:dataProtectionClass:", v11, 300, [v28 intValue]);

        v9 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v26);
  }
}

- (void)_processStoredMessagesIncludingClassD:(BOOL)d
{
  dCopy = d;
  +[IDSDMessageStore deletePostponedMessages];
  [(IDSDaemon *)self _processStoredIncomingMessages];
  [IDSDMessageStore markOutgoingMessagesAsUnsentIncludingClassD:dCopy];
  [(IDSDaemon *)self _handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:0 withMessageTypes:0];
  [(IDSDaemon *)self _updateNonUrgentInternetSendTimer];

  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:0 dataProtectionClasses:0];
}

- (void)_processMessageError:(BOOL)error topLevelMessage:(id)message error:(id)a5 messageID:(id)d failureReasonMessage:(id)reasonMessage service:(id)service serviceType:(id)type pushToken:(id)self0 fromURI:(id)self1 toURI:(id)self2 groupID:(id)self3 completionBlock:(id)self4
{
  errorCopy = error;
  messageCopy = message;
  v52 = a5;
  dCopy = d;
  reasonMessageCopy = reasonMessage;
  serviceCopy = service;
  typeCopy = type;
  tokenCopy = token;
  iCopy = i;
  rICopy = rI;
  iDCopy = iD;
  blockCopy = block;
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Processing Error", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v22 = [iCopy isEqualToURI:rICopy];
  intValue = [v52 intValue];
  if ([IDSNGMPublicDeviceIdentity shouldMarkForStateReset:reasonMessageCopy])
  {
    v24 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    pushToken = [v24 pushToken];
    v26 = [IDSPushToken pushTokenWithData:pushToken];

    v27 = +[IDSEncryptionController sharedInstance];
    identifier = [serviceCopy identifier];
    v29 = [v27 markForStateResetWithOurURI:rICopy ourPushToken:v26 theirURI:iCopy theirPushToken:tokenCopy service:identifier];

    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = @"NO";
      if (v29)
      {
        v31 = @"YES";
      }

      *buf = 138412290;
      v59 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "_processMessageError: IDSEncryptionController did markForStateReset: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v32 = @"NO";
      if (v29)
      {
        v32 = @"YES";
      }

      v43 = v32;
      _IDSLogV();
    }
  }

  if ([(IDSDaemon *)self _shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:intValue, v43])
  {
    v33 = +[IDSPeerIDManager sharedInstance];
    [v33 forgetPeerTokensForURI:iCopy fromURI:rICopy service:typeCopy reason:2];
  }

  v34 = [(IDSDaemon *)self _shouldDropMessageForIncomingErrorMessageWithDecryptionErrorType:intValue];
  if (intValue <= 499)
  {
    if (intValue <= 200)
    {
      if (intValue)
      {
        if (intValue == 120)
        {
          if (!v22 || errorCopy)
          {
            v41 = +[IDSEncryptionController sharedInstance];
            [v41 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:0];
          }
        }

        else if (intValue == 200 && (!v22 || errorCopy))
        {
          v37 = +[IDSEncryptionController sharedInstance];
          [v37 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:1];
        }
      }

      goto LABEL_69;
    }

    if (intValue > 249)
    {
      if (intValue == 250 && (!v22 || errorCopy))
      {
        v40 = +[IDSEncryptionController sharedInstance];
        [v40 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:1];
      }

      goto LABEL_69;
    }

    if (intValue == 201)
    {
      if (!v22 || errorCopy)
      {
        v39 = +[IDSEncryptionController sharedInstance];
        [v39 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:1];
      }

      goto LABEL_69;
    }

    if (intValue != 202)
    {
      goto LABEL_69;
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:dCopy];
    (*(blockCopy + 2))(blockCopy, 0, 0, v34);
  }

  else
  {
    if (intValue <= 800)
    {
      if (intValue <= 600)
      {
        if (intValue == 600 && (!v22 || errorCopy))
        {
          v35 = +[IDSEncryptionController sharedInstance];
          [v35 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:1];
        }

        goto LABEL_69;
      }

      if (intValue == 601)
      {
        if (!v22 || errorCopy)
        {
          v42 = +[IDSEncryptionController sharedInstance];
          [v42 logRemoteDecryptionErrorForToken:tokenCopy deviceID:0 forURI:iCopy fromURI:rICopy forService:typeCopy messageData:0 type:1];
        }

        goto LABEL_69;
      }

      if (intValue == 800)
      {
        v38 = +[IDSDGroupContextController sharedInstance];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10067816C;
        v54[3] = &unk_100BE3A20;
        v55 = iDCopy;
        v56 = blockCopy;
        v57 = v34;
        [v38 groupContextForProtectionSpace:0 withCompletion:v54];

        goto LABEL_70;
      }

LABEL_69:
      (*(blockCopy + 2))(blockCopy, 0, 0, v34);
      goto LABEL_70;
    }

    if (intValue > 802 || intValue == 801)
    {
      goto LABEL_69;
    }

    v36 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Got an incoming error of type IDSEncryptionErrorTypeEngramStaleGroupDecryptionFailure -- this is unexpected", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

LABEL_70:
}

- (id)_payloadFromDecryptedData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _FTOptionallyDecompressData = [dataCopy _FTOptionallyDecompressData];
      v4 = JWDecodeDictionary();
      if (![v4 count])
      {
        v6 = JWDecodeDictionary();

        v4 = v6;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v24[0] = IDSMessageResourceTransferSandboxExtensionKey;
  v24[1] = IDSMessageResourceTransferURLKey;
  v24[2] = IDSMessageResourceTransferMetadataKey;
  [NSArray arrayWithObjects:v24 count:3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    v10 = 0;
    v16 = v7;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      v14 = [v4 objectForKey:{v13, v19}];

      if (v14)
      {
        if (!v10)
        {
          v10 = [v4 mutableCopy];
        }

        [v10 removeObjectForKey:v13];
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);

  if (v10)
  {
    v15 = [v10 copy];
    v16 = v4;
    v4 = v15;
LABEL_22:
  }

  v17 = v4;

  return v4;
}

+ (BOOL)_commandIsSessionCommand:(int64_t)command
{
  if (qword_100CBF450 != -1)
  {
    sub_10092E060();
  }

  v4 = qword_100CBF448;
  v5 = [NSNumber numberWithInteger:command];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

+ (BOOL)_commandIsSessionGroupSessionCommand:(int64_t)command
{
  if (qword_100CBF460 != -1)
  {
    sub_10092E074();
  }

  v4 = qword_100CBF458;
  v5 = [NSNumber numberWithInteger:command];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

- (BOOL)_processMessagingPayloadWithCommand:(id)command dictionaryPayload:(id)payload senderPushToken:(id)token topic:(id)topic toURI:(id)i fromURI:(id)rI peerResponseIdentifier:(id)identifier guid:(id)self0 service:(id)self1 idsMessageContext:(id)self2 messageContext:(id)self3
{
  commandCopy = command;
  payloadCopy = payload;
  tokenCopy = token;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  identifierCopy = identifier;
  guidCopy = guid;
  serviceCopy = service;
  contextCopy = context;
  messageContextCopy = messageContext;
  v25 = messageContextCopy;
  if (commandCopy)
  {
    if (!messageContextCopy)
    {
      v25 = objc_alloc_init(IMMessageContext);
      [v25 setShouldBoost:1];
    }

    identifier = [serviceCopy identifier];
    v27 = tokenCopy;
    v28 = [identifier isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"];

    if (v28 && [(__CFString *)commandCopy integerValue]== 242)
    {
      v29 = objc_opt_class();
      v30 = sub_10001B8C4(v29, payloadCopy, IDSQuickRelayGroupSessionUUID);
      v49 = v30;
      if (v30)
      {
        if ([(__CFString *)v30 length])
        {
          v31 = +[IDSDSessionController sharedInstance];
          v46 = [v31 sessionWithGroupID:v49];

          if (v46)
          {
            v32 = objc_opt_class();
            v33 = sub_10001B8C4(v32, payloadCopy, IDSQuickRelayDedupeTimestamp);
            v45 = v33;
            if (v33)
            {
              [v33 doubleValue];
              v34 = [v46 didProcessParticipantUpdateFrom:tokenCopy dedupTimestamp:?];
              v35 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = IDSLoggableDescriptionForObjectOnService();
                v37 = @"NO";
                *buf = 138413058;
                if (v34)
                {
                  v37 = @"YES";
                }

                v53 = v37;
                v54 = 2112;
                v55 = rICopy;
                v56 = 2112;
                v57 = tokenCopy;
                v58 = 2112;
                v59 = v36;
                v38 = v36;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "didProcessParticipantUpdate: %@, fromURI %@, fromPushToken %@, message %@", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v44 = IDSLoggableDescriptionForObjectOnService();
                _IDSLogV();
              }
            }

            else
            {
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v53 = commandCopy;
                v54 = 2112;
                v55 = v49;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Could not find dedupeTimestamp for command code %@ and groupID %@, can not process in session...", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              LOBYTE(v34) = 0;
            }
          }

          else
          {
            v41 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v53 = v49;
              v54 = 2112;
              v55 = commandCopy;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Couldn't find session with groupID %@ for command code %@, can not process in session...", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            LOBYTE(v34) = 0;
          }

          goto LABEL_44;
        }

        v40 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = commandCopy;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No session ID provided in the message for command code %@, can not process in session...", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
LABEL_29:
          LOBYTE(v34) = 0;
LABEL_44:

          goto LABEL_45;
        }
      }

      else
      {
        v39 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = commandCopy;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Invalid session ID provided in the message for command code %@, can not process in session...", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_29;
        }
      }

      _IDSLogV();
      goto LABEL_29;
    }

    LOBYTE(v34) = 0;
  }

  else
  {
    LOBYTE(v34) = 0;
    v27 = tokenCopy;
  }

LABEL_45:

  return v34;
}

- (BOOL)_processNonMessagingPayloadWithCommand:(id)command dictionaryPayload:(id)payload senderPushToken:(id)token topic:(id)topic toURI:(id)i fromURI:(id)rI peerResponseIdentifier:(id)identifier guid:(id)self0 service:(id)self1 idsMessageContext:(id)self2 messageContext:(id)self3
{
  serviceCopy = service;
  commandCopy = command;
  payloadCopy = payload;
  tokenCopy = token;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  identifierCopy = identifier;
  guidCopy = guid;
  serviceCopy2 = service;
  contextCopy = context;
  messageContextCopy = messageContext;
  v24 = messageContextCopy;
  if (!commandCopy)
  {
    v30 = 0;
    goto LABEL_90;
  }

  if (!messageContextCopy)
  {
    v24 = objc_alloc_init(IMMessageContext);
    [v24 setShouldBoost:1];
  }

  integerValue = [commandCopy integerValue];
  v26 = [IDSDaemon _commandIsSessionCommand:integerValue];
  if (integerValue != 232 && v26)
  {
    v27 = objc_opt_class();
    prefixedURI2 = sub_10001B8C4(v27, payloadCopy, IDSDSessionMessageSessionID);
    if ([prefixedURI2 length])
    {
      v29 = +[IDSDSessionController sharedInstance];
      serviceCopy = [v29 sessionWithUniqueID:prefixedURI2];

      if (serviceCopy)
      {

        goto LABEL_9;
      }

      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v79 = prefixedURI2;
        v80 = 2112;
        v81 = commandCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Couldn't find session with ID %@ for command code %@, discarding message...", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_89;
      }
    }

    else
    {
      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = commandCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No session ID provided in the message for command code %@, discarding message...", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_89;
      }
    }

    _IDSLogV();
LABEL_89:

    v30 = 1;
    goto LABEL_90;
  }

LABEL_9:
  v30 = 0;
  if (integerValue > 233)
  {
    if (integerValue <= 236)
    {
      if (integerValue == 234)
      {
        v51 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = rICopy;
          v80 = 2112;
          v81 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Received decline response fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = rICopy;
          _IDSLogV();
        }

        prefixedURI2 = [IDSDSessionController sharedInstance:v61];
        [prefixedURI2 processIncomingSessionDeclineMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
      }

      else if (integerValue == 235)
      {
        v49 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = rICopy;
          v80 = 2112;
          v81 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received cancel response fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = rICopy;
          _IDSLogV();
        }

        prefixedURI2 = [IDSDSessionController sharedInstance:v61];
        [prefixedURI2 processIncomingSessionCancelMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
      }

      else
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = rICopy;
          v80 = 2112;
          v81 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received session message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = rICopy;
          _IDSLogV();
        }

        prefixedURI2 = [IDSDSessionController sharedInstance:v61];
        [prefixedURI2 processIncomingSessionMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
      }

      goto LABEL_89;
    }

    if (integerValue <= 238)
    {
      if (integerValue == 237)
      {
        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = rICopy;
          v80 = 2112;
          v81 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Received session end message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = rICopy;
          _IDSLogV();
        }

        prefixedURI2 = [IDSDSessionController sharedInstance:v61];
        [prefixedURI2 processIncomingSessionEndMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
      }

      else
      {
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = rICopy;
          v80 = 2112;
          v81 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received session reinitiate message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = rICopy;
          _IDSLogV();
        }

        prefixedURI2 = [IDSDSessionController sharedInstance:v61];
        [prefixedURI2 processIncomingSessionReinitiateMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
      }

      goto LABEL_89;
    }

    if (integerValue == 239)
    {
      goto LABEL_11;
    }

    if (integerValue != 244)
    {
      goto LABEL_90;
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    rawToken = [tokenCopy rawToken];
    v42 = [rawToken length];
    if (v42 && ([rICopy prefixedURI], serviceCopy = objc_claimAutoreleasedReturnValue(), objc_msgSend(serviceCopy, "length")))
    {
      rawToken2 = [tokenCopy rawToken];
      prefixedURI = [rICopy prefixedURI];
      prefixedURI2 = _IDSCopyIDForTokenWithURI();
    }

    else
    {
      v53 = v42 == 0;
      prefixedURI2 = [rICopy prefixedURI];
      if (v53)
      {
LABEL_84:

        v54 = [IDSURI URIWithPrefixedURI:prefixedURI2 withServiceLoggingHint:topicCopy];
        if (prefixedURI2)
        {
          CFDictionarySetValue(theDict, IDSMessageContextFromIDKey, prefixedURI2);
        }

        v55 = IDSMessageContextFromServerStorageKey;
        v56 = [contextCopy objectForKey:IDSMessageContextFromServerStorageKey];
        if (v56)
        {
          CFDictionarySetValue(theDict, v55, v56);
        }

        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100679DB0;
        v72[3] = &unk_100BDA870;
        v73 = identifierCopy;
        v74 = topicCopy;
        v75 = iCopy;
        v76 = v54;
        v77 = theDict;
        v57 = kIDSMessagingEntitlement;
        v58 = kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates;
        theDicta = theDict;
        v59 = v54;
        [(IDSDaemon *)self enqueueBroadcast:v72 forTopic:v74 entitlement:v57 command:0 capabilities:v58 messageContext:v24];

        goto LABEL_89;
      }
    }

    goto LABEL_84;
  }

  if ((integerValue - 206) < 6)
  {
LABEL_11:
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = rICopy;
      v80 = 2112;
      v81 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received group session message fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = rICopy;
      _IDSLogV();
    }

    prefixedURI2 = [IDSDSessionController sharedInstance:v61];
    [prefixedURI2 processIncomingGroupSessionMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy toURI:iCopy topic:topicCopy idsMessageContext:contextCopy];
    goto LABEL_89;
  }

  if (integerValue == 232)
  {
    v45 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = rICopy;
      v80 = 2112;
      v81 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Received session invitation fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = rICopy;
      _IDSLogV();
    }

    prefixedURI2 = [IDSDSessionController sharedInstance:v61];
    [prefixedURI2 processIncomingInvitationWithPayload:payloadCopy topic:topicCopy fromToken:tokenCopy fromURI:rICopy toURI:iCopy idsMessageContext:contextCopy messageContext:v24];
    goto LABEL_89;
  }

  if (integerValue == 233)
  {
    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = rICopy;
      v80 = 2112;
      v81 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received accept response fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = rICopy;
      _IDSLogV();
    }

    prefixedURI2 = [IDSDSessionController sharedInstance:v61];
    [prefixedURI2 processIncomingSessionAcceptMessage:payloadCopy fromToken:tokenCopy fromURI:rICopy idsMessageContext:contextCopy];
    goto LABEL_89;
  }

LABEL_90:

  return v30;
}

- (BOOL)_doesNiceMessageContainValidCombination:(id)combination
{
  combinationCopy = combination;
  originalCommand = [combinationCopy originalCommand];
  command = [combinationCopy command];
  v6 = command;
  if (originalCommand && ([command isEqualToNumber:&off_100C3D138] & 1) == 0)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "We received an IDS Message that had an original command key, however its command was not FTCommandIDAttachmentMessage", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_validAccountForIncomingMessageSentToURI:(id)i service:(id)service outPseudonym:(id *)pseudonym
{
  iCopy = i;
  serviceCopy = service;
  accountController = [(IDSDaemon *)self accountController];
  v37 = serviceCopy;
  v10 = [accountController accountsOnService:serviceCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v40 = *v42;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v42 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v41 + 1) + 8 * v14);
      v16 = +[IMIDSLog daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        uniqueID = [v15 uniqueID];
        unprefixedURIStringsFromRegistration = [v15 unprefixedURIStringsFromRegistration];
        aliases = [v15 aliases];
        *buf = 138413058;
        v46 = iCopy;
        v47 = 2112;
        v48 = uniqueID;
        v49 = 2112;
        v50 = unprefixedURIStringsFromRegistration;
        v51 = 2112;
        v52 = aliases;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Checking if this message corresponds to a selected alias {toURI: %@, accountUniqueID: %@, aliasStrings: %@, aliases: %@}", buf, 0x2Au);
      }

      unprefixedURIStringsFromRegistration2 = [v15 unprefixedURIStringsFromRegistration];
      unprefixedURI = [iCopy unprefixedURI];
      v19 = [unprefixedURIStringsFromRegistration2 containsObject:unprefixedURI];

      aliases2 = [v15 aliases];
      unprefixedURI2 = [iCopy unprefixedURI];
      v22 = [aliases2 containsObject:unprefixedURI2] ? objc_msgSend(v15, "isEnabled") : 0;

      dsHandle = [v15 dsHandle];
      prefixedURI = [iCopy prefixedURI];
      v25 = [dsHandle isEqualToString:prefixedURI];

      prefixedURI2 = [iCopy prefixedURI];
      LODWORD(dsHandle) = [prefixedURI2 _appearsToBePseudonymID];

      if (dsHandle)
      {
        prefixedURI3 = [iCopy prefixedURI];
        v28 = [v15 pseudonymForPseudonymURIString:prefixedURI3];

        v29 = v28 != 0;
        if (pseudonym && v28)
        {
          v30 = v28;
          *pseudonym = v28;
        }
      }

      else
      {
        v29 = 0;
      }

      if (((v19 | v22 | v25) & 1) != 0 || v29)
      {
        v31 = v15;

        v32 = [v31 accountType] != 2 || v29;
        v13 = v31;
        if (v32)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
        v31 = v13;
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)_shouldRejectMessageOnCrossAccountService:(id)service fromSenderURI:(id)i
{
  iCopy = i;
  if ([service tinkerMessagingOnly])
  {
    pairingManager = [(IDSDaemon *)self pairingManager];
    v8 = [pairingManager pairedDeviceHandlesWithPairingType:1];

    prefixedURI = [iCopy prefixedURI];
    v10 = [v8 containsObject:prefixedURI];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldRejectMessageOnFamilyService:(id)service fromSenderURI:(id)i
{
  iCopy = i;
  if ([service isFamilyService])
  {
    familyManager = [(IDSDaemon *)self familyManager];
    familyHandles = [familyManager familyHandles];
    unprefixedURI = [iCopy unprefixedURI];
    v10 = [familyHandles containsObject:unprefixedURI];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_primaryAccountExistsForService:(id)service withURI:(id)i
{
  iCopy = i;
  serviceCopy = service;
  accountController = [(IDSDaemon *)self accountController];
  v9 = [accountController accountsOnService:serviceCopy];

  if (v9 && [v9 count])
  {
    firstObject = [v9 firstObject];
    primaryAccount = [firstObject primaryAccount];

    service = [primaryAccount service];
    accountController2 = [(IDSDaemon *)self accountController];
    prefixedURI = [iCopy prefixedURI];
    v15 = [accountController2 accountOnService:service withAliasURI:prefixedURI];

    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)firewallDatabaseAllowsFromURI:(id)i mergeID:(id)d service:(id)service
{
  iCopy = i;
  serviceCopy = service;
  dCopy = d;
  v10 = [[IDSFirewallEntry alloc] initWithURI:iCopy andLastSeenDate:0];
  [v10 setMergeID:dCopy];

  v11 = +[IDSFirewallStore sharedInstance];
  controlCategory = [serviceCopy controlCategory];

  LOBYTE(controlCategory) = [v11 isAllowed:v10 category:controlCategory];
  if (controlCategory)
  {
    v13 = 1;
  }

  else
  {
    prefixedURI = [iCopy prefixedURI];
    v13 = [IMUserDefaults handleInFirewallAllowList:prefixedURI];
  }

  return v13;
}

- (BOOL)firewallDatabaseAllowsFromURI:(id)i mergeID:(id)d isDonated:(BOOL)donated service:(id)service
{
  donatedCopy = donated;
  iCopy = i;
  serviceCopy = service;
  dCopy = d;
  v12 = [[IDSFirewallEntry alloc] initWithURI:iCopy andLastSeenDate:0];
  [v12 setMergeID:dCopy];

  v13 = +[IDSFirewallStore sharedInstance];
  controlCategory = [serviceCopy controlCategory];

  LOBYTE(donatedCopy) = [v13 isAllowed:v12 category:controlCategory isDonated:donatedCopy];
  if (donatedCopy)
  {
    v15 = 1;
  }

  else
  {
    prefixedURI = [iCopy prefixedURI];
    v15 = [IMUserDefaults handleInFirewallAllowList:prefixedURI];
  }

  return v15;
}

- (BOOL)isFirewallEnabledForService:(id)service
{
  serviceCopy = service;
  if (+[IMUserDefaults shouldFirewallDropForAllCategories])
  {
    allowCrossAccountMessages = [serviceCopy allowCrossAccountMessages];
  }

  else
  {
    allowCrossAccountMessages = [serviceCopy isFirewallEnabled];
  }

  v5 = allowCrossAccountMessages;

  return v5;
}

- (BOOL)isFirewallOnForService:(id)service
{
  serviceCopy = service;
  if ([(IDSDaemon *)self isFirewallOn])
  {
    v5 = [(IDSDaemon *)self isFirewallEnabledForService:serviceCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldFirewallDropMessageForFromURI:(id)i mergeID:(id)d service:(id)service
{
  iCopy = i;
  dCopy = d;
  serviceCopy = service;
  if ([(IDSDaemon *)self isFirewallOnForService:serviceCopy]&& ![(IDSDaemon *)self isMessageFromSelfForFromURI:iCopy service:serviceCopy])
  {
    v11 = ![(IDSDaemon *)self firewallDatabaseAllowsFromURI:iCopy mergeID:dCopy service:serviceCopy];
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)noteBlockedMessageFromURI:(id)i service:(id)service
{
  serviceCopy = service;
  iCopy = i;
  v9 = [[IDSFirewallEntry alloc] initWithURI:iCopy andLastSeenDate:0];

  v7 = +[IDSFirewallStore sharedInstance];
  controlCategory = [serviceCopy controlCategory];

  [v7 addToBlockedList:v9 forCategory:controlCategory];
}

- (int64_t)_cleanupFrequencyForRestrictedMessages
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"cleanup_frequency_for_expired_restricted_messages"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    [v4 doubleValue];
    v6 = v5;
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %f sec cleanupFrequencyForRestrictedMessages", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = v6;
  }

  else
  {
    v8 = 600;
  }

  return v8;
}

- (int64_t)_expirationTimeForRestrictedMessages
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"expiration_time_for_blocked_restricted_messages"];

  v4 = 300.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      [v5 doubleValue];
      v4 = v6;
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %f sec expirationTimeForRestrictedMessages", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v13 = v4;
        _IDSLogV();
      }
    }
  }

  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:v4];
  [v9 timeIntervalSince1970];
  v11 = v10;

  return v11;
}

- (BOOL)deferMessageForBatchDelivery:(id)delivery service:(id)service
{
  deliveryCopy = delivery;
  if ([service supportsBatchDelivery])
  {
    v7 = [(IDSDaemon *)self batchMemberMessageFromIncomingNiceMessage:deliveryCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)batchMemberMessageFromIncomingNiceMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = messageCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMessageFromSelfForFromURI:(id)i service:(id)service
{
  iCopy = i;
  serviceCopy = service;
  accountController = [(IDSDaemon *)self accountController];
  prefixedURI = [iCopy prefixedURI];
  v10 = [accountController accountOnService:serviceCopy withAliasURI:prefixedURI];

  if (v10)
  {
    goto LABEL_2;
  }

  accountController2 = [(IDSDaemon *)self accountController];
  unprefixedURI = [iCopy unprefixedURI];
  v10 = [accountController2 accountOnService:serviceCopy withVettedAliasURI:unprefixedURI];

  if ([v10 shouldAutoRegisterAllHandles])
  {

LABEL_6:
    v11 = [(IDSDaemon *)self _primaryAccountExistsForService:serviceCopy withURI:iCopy];
    v10 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_2:
  v11 = 1;
LABEL_7:

  return v11;
}

- (void)queryHashForceUpdate:(id)update fromURI:(id)i messageUUID:(id)d updateHash:(id)hash toURI:(id)rI service:(id)service
{
  updateCopy = update;
  iCopy = i;
  dCopy = d;
  hashCopy = hash;
  rICopy = rI;
  serviceCopy = service;
  v19 = [updateCopy unsignedIntegerValue] == 101 && +[IMUserDefaults forceFlushOnDeliveryReceipt](IMUserDefaults, "forceFlushOnDeliveryReceipt");
  if ([IDSRegistrationCacheStateTransportPolicy shouldHandleMessageWithUpdateHash:hashCopy command:updateCopy]|| v19)
  {
    [(IDSRegistrationHashProcessor *)self->_queryUpdateNotifier handleRegistrationUpdateForHash:hashCopy localURI:rICopy remoteURI:iCopy service:serviceCopy guid:dCopy forceUpdate:v19];
  }
}

- (void)_processKTPeerUpdateMessageForService:(id)service localURI:(id)i remoteURI:(id)rI
{
  serviceCopy = service;
  iCopy = i;
  rICopy = rI;
  v11 = rICopy;
  if (serviceCopy && iCopy && rICopy)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = serviceCopy;
      v32 = 2112;
      v33 = iCopy;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing KTPeerUpdateMessage { service: %@ localURI: %@ remoteURI: %@ }", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = iCopy;
      v29 = v11;
      v25 = serviceCopy;
      _IDSLogV();
    }

    v13 = [IDSIDStatusQueryController sharedInstance:v25];
    [v13 removeCachedIDStatusForURI:v11 service:serviceCopy];

    v14 = +[IDSPeerIDManager sharedInstance];
    [v14 forgetPeerTokensForURI:v11 service:serviceCopy reason:11];

    v15 = +[IDSKeyTransparencyVerifier sharedInstance];
    [v15 clearTransparencyCacheForService:serviceCopy peerURI:v11];

    serviceController = [(IDSDaemon *)self serviceController];
    v17 = [serviceController serviceWithIdentifier:serviceCopy];

    if (v17)
    {
      v18 = +[IDSDaemon sharedInstance];
      pushTopic = [v17 pushTopic];
      v20 = objc_alloc_init(IMMessageContext);
      v21 = [v18 broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:v20];

      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = serviceCopy;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Broadcasting didFlushCacheFromKTPeerUpdateForService { service: %@ peerURI: %@ }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v26 = serviceCopy;
        v28 = v11;
        _IDSLogV();
      }

      prefixedURI = [v11 prefixedURI];
      [v21 didFlushCacheFromKTPeerUpdateForService:serviceCopy peerURI:prefixedURI];
    }

    else
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No idsService registered for %@ -- not broadcasting didFlushCacheFromKTPeerUpdateForService", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)_processIncomingRemoteNiceMessage:(id)message forTopic:(id)topic fromURI:(id)i storedGuid:(id)guid messageContext:(id)context
{
  messageCopy = message;
  topicCopy = topic;
  iCopy = i;
  guidCopy = guid;
  contextCopy = context;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v229 = _os_activity_create(&_mh_execute_header, "Incoming remote message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v229, &state);
  v183 = [(IDSDaemon *)self batchMemberMessageFromIncomingNiceMessage:messageCopy];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v183;
    if (!v183)
    {
      v17 = messageCopy;
    }

    *buf = 138413314;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = iCopy;
    *&buf[22] = 2112;
    v231 = topicCopy;
    *v232 = 2112;
    *&v232[2] = guidCopy;
    *&v232[10] = 2112;
    *&v232[12] = @"YES";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_processIncomingRemoteMessage: %@ fromID: %@ forTopic: %@ storedGUID %@ IDSXAccountBlastdoor %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v183;
    if (!v183)
    {
      v18 = messageCopy;
    }

    v139 = guidCopy;
    v142 = @"YES";
    v131 = iCopy;
    v136 = topicCopy;
    v123 = v18;
    _IDSLogV();
  }

  if ([(IDSRateLimiter *)self->_listenerLoggingRateLimiter underLimitForItem:@"ListenerLoggingRateLimitItem", v123, v131, v136, v139, v142])
  {
    v19 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10067DD80;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_async(v19, block);

    [(IDSRateLimiter *)self->_listenerLoggingRateLimiter noteItem:@"ListenerLoggingRateLimitItem"];
  }

  command = [messageCopy command];
  if (![(IDSDaemon *)self _isUnlistenedCommand:command])
  {
    if ([topicCopy isEqualToString:IDSServiceNameiMessage])
    {
      command2 = [messageCopy command];
      if ([command2 integerValue] != 100)
      {
        v181 = 0;
        goto LABEL_25;
      }

      samplingUUID = [messageCopy samplingUUID];
      v25 = samplingUUID == 0;

      if (!v25)
      {
        v26 = [IDSMessageSendMetric alloc];
        pushUUID = [messageCopy pushUUID];
        v181 = [v26 initWithType:1 guid:pushUUID service:topicCopy];

        currentServerTime = [(IDSDaemon *)self currentServerTime];
        [currentServerTime currentServerTimeInterval];
        v29 = [NSNumber numberWithDouble:?];
        v30 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingReceivedKey];
        [v181 addEntry:v29 forKey:v30];

        command2 = [messageCopy deviceID];
        v31 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys fanoutDeviceID];
        [v181 addEntry:command2 forKey:v31];

LABEL_25:
LABEL_26:
        v32 = +[IMLockdownManager sharedInstance];
        if ([v32 isInternalInstall])
        {
          v33 = [topicCopy isEqualToString:@"com.apple.madrid"];

          if (v33 && +[IMUserDefaults isDroppingMadridMessages])
          {
            [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
            v34 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              *&buf[4] = messageCopy;
              *&buf[12] = 2112;
              *&buf[14] = iCopy;
              *&buf[22] = 2112;
              v231 = topicCopy;
              *v232 = 2112;
              *&v232[2] = guidCopy;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "DROPPING MADRID MESSAGE: %@ fromID: %@ forTopic: %@ storedGUID %@", buf, 0x2Au);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            goto LABEL_248;
          }
        }

        else
        {
        }

        if (!topicCopy)
        {
          [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
LABEL_248:

          goto LABEL_249;
        }

        if ([topicCopy isEqualToString:IDSStewieT911Topic] & 1) != 0 || (objc_msgSend(topicCopy, "isEqualToString:", IDSStewieT911RSATopic))
        {
          goto LABEL_248;
        }

        serviceController = [(IDSDaemon *)self serviceController];
        v180 = [serviceController serviceWithPushTopic:topicCopy];

        if (!v180)
        {
          v36 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = topicCopy;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Found no service for topic! %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v124 = topicCopy;
            _IDSLogTransport();
          }
        }

        pushUUID2 = [messageCopy pushUUID];
        senderPushToken = [messageCopy senderPushToken];
        toURI = [messageCopy toURI];
        iPMessageFormat = [v180 IPMessageFormat];
        v168 = iPMessageFormat == 1;
        if (iPMessageFormat != 1)
        {
          toURI2 = toURI;
          v42 = iCopy;
          v179 = messageCopy;
          goto LABEL_74;
        }

        v39 = [NSMutableDictionary alloc];
        rawMessage = [messageCopy rawMessage];
        theDict = [v39 initWithDictionary:rawMessage];

        receiverShortHandle = [messageCopy receiverShortHandle];
        if (toURI)
        {
          prefixedURI = [(__CFString *)toURI prefixedURI];
          if ([prefixedURI length])
          {
LABEL_54:

            goto LABEL_55;
          }

          if (!receiverShortHandle)
          {
LABEL_55:
            senderShortHandle = [messageCopy senderShortHandle];
            if (iCopy)
            {
              prefixedURI2 = [iCopy prefixedURI];
              if ([prefixedURI2 length])
              {
                v42 = iCopy;
LABEL_63:

                goto LABEL_64;
              }

              if (!senderShortHandle)
              {
                v42 = iCopy;
                goto LABEL_64;
              }
            }

            else if (!senderShortHandle)
            {
              v42 = 0;
LABEL_64:
              v179 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:theDict topic:topicCopy];

              toURI2 = [v179 toURI];

              v47 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                *&buf[4] = toURI2;
                *&buf[12] = 2112;
                *&buf[14] = receiverShortHandle;
                *&buf[22] = 2112;
                v231 = v42;
                *v232 = 2112;
                *&v232[2] = senderShortHandle;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Incoming iML, gathering full handles toURI: %@, receiverShortHandle: %@, fromURI: %@, senderShortHandle: %@", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v137 = v42;
                v140 = senderShortHandle;
                v125 = toURI2;
                v132 = receiverShortHandle;
                _IDSLogV();
              }

              if (senderPushToken && toURI2 && v42)
              {
                v48 = im_primary_queue();
                v223[0] = _NSConcreteStackBlock;
                v223[1] = 3221225472;
                v223[2] = sub_10067E000;
                v223[3] = &unk_100BD7020;
                v223[4] = self;
                v224 = senderPushToken;
                v225 = toURI2;
                v226 = v42;
                dispatch_async(v48, v223);
              }

LABEL_74:
              v178 = v42;
              if ([(IDSDaemon *)self _shouldRejectMessageOnCrossAccountService:v180 fromSenderURI:v42, v125, v132, v137, v140])
              {
                v49 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = pushUUID2;
                  *&buf[12] = 2112;
                  *&buf[14] = v42;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Message %@ is coming from an account that is not permited to send to this device. Sender Was: %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v126 = pushUUID2;
                  v133 = v42;
                  _IDSLogV();
                }

                [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v126] deleteIncomingMessageWithGUID:guidCopy];
                v173 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:pushUUID2 service:topicCopy additionalInformation:0];
                [IDSMissingMessageMetricReporter sendMetric:v173];
                [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:topicCopy failureReason:&off_100C3D150 failureReasonMessage:0 generateDeliveryReceipt:0];
                goto LABEL_247;
              }

              v50 = +[IDSPeerIDManager sharedInstance];
              queryService = [v180 queryService];
              v173 = [v50 senderCorrelationIdentifierForURI:v42 fromURI:toURI2 service:queryService];

              v52 = v42;
              if (sub_1006D6B44(v42))
              {
                accountController = [(IDSDaemon *)self accountController];
                prefixedURI3 = [v42 prefixedURI];
                v55 = [accountController accountOnService:v180 withAliasURI:prefixedURI3];

                if (!v55)
                {
                  v65 = sub_10067E058();
                  v66 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    v67 = @"NO";
                    *buf = 138412802;
                    *&buf[4] = pushUUID2;
                    *&buf[12] = 2112;
                    if (v65)
                    {
                      v67 = @"YES";
                    }

                    *&buf[14] = v42;
                    *&buf[22] = 2112;
                    v231 = v67;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Told to filter message %@ from %@ GD %@", buf, 0x20u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v68 = @"NO";
                    if (v65)
                    {
                      v68 = @"YES";
                    }

                    v133 = v42;
                    v138 = v68;
                    v126 = pushUUID2;
                    _IDSLogV();
                  }

                  if ([(IDSDaemon *)self firewallDatabaseAllowsFromURI:v42 mergeID:v173 service:v180, v126, v133, v138])
                  {
                    v69 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v42;
                      *&buf[12] = 2112;
                      *&buf[14] = pushUUID2;
                      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "URI: %@ has been allowed to bypass the blocklist, NOT dropping message %@", buf, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }

                    goto LABEL_247;
                  }

                  [(IDSDaemon *)self noteBlockedMessageFromURI:v42 service:v180];
                  [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
                  v64 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:pushUUID2 service:topicCopy additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v64];
                  if (v65)
                  {
                    [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:topicCopy failureReason:0 failureReasonMessage:0 generateDeliveryReceipt:1];
                  }

                  else
                  {
                    [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:topicCopy failureReason:&off_100C3D150 failureReasonMessage:0 generateDeliveryReceipt:0];
                  }

                  goto LABEL_246;
                }

                v56 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v42;
                  *&buf[12] = 2112;
                  *&buf[14] = v55;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Ignoring filtered list for own aliases. {Alias: %@; Account: %@;}", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v126 = v42;
                  v133 = v55;
                  _IDSLogV();
                }

                v52 = v42;
              }

              if (([v180 allowCrossAccountMessages] & 1) == 0 && !-[IDSDaemon isMessageFromSelfForFromURI:service:](self, "isMessageFromSelfForFromURI:service:", v52, v180))
              {
                v62 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  identifier = [v180 identifier];
                  *buf = 138412802;
                  *&buf[4] = pushUUID2;
                  *&buf[12] = 2112;
                  *&buf[14] = identifier;
                  *&buf[22] = 2112;
                  v231 = v42;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Dropping message %@ from %@ because it is not on the cross-account allowlist and is coming from %@", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  identifier2 = [v180 identifier];
                  v138 = v42;
                  v127 = pushUUID2;
                  _IDSLogV();
                }

                [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy, v127, identifier2, v138];
                v64 = [[IDSMissingMessageMetric alloc] initWithReason:710 guid:pushUUID2 service:topicCopy additionalInformation:0];
                [IDSMissingMessageMetricReporter sendMetric:v64];
                [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:topicCopy failureReason:&off_100C3D168 failureReasonMessage:0 generateDeliveryReceipt:0];
                goto LABEL_246;
              }

              if (![(IDSDaemon *)self _doesNiceMessageContainValidCombination:v179])
              {
                [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
LABEL_247:

                iCopy = v178;
                messageCopy = v179;
                goto LABEL_248;
              }

              expirationDate = [v179 expirationDate];
              v167 = expirationDate;
              if ([expirationDate unsignedLongLongValue])
              {
                theDicta = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(expirationDate, "unsignedLongLongValue")}];
                v58 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = expirationDate;
                  *&buf[12] = 2112;
                  *&buf[14] = theDicta;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Message specifies an expiration date %@ %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v127 = expirationDate;
                  identifier2 = theDicta;
                  _IDSLogV();
                }

                [(__CFDictionary *)theDicta timeIntervalSinceNow:v127];
                if (v59 + 5.0 < 0.0)
                {
                  v60 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = pushUUID2;
                    *&buf[12] = 2112;
                    *&buf[14] = topicCopy;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Message %@ for topic %@ has expired! Dropping.", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v127 = pushUUID2;
                    identifier2 = topicCopy;
                    _IDSLogV();
                  }

                  [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy, v127, identifier2];
                  v61 = [[IDSMissingMessageMetric alloc] initWithReason:712 guid:pushUUID2 service:topicCopy additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v61];
                  goto LABEL_245;
                }
              }

              if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:pushUUID2 local:0 topic:topicCopy])
              {
                v70 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = pushUUID2;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Received remote message %@ is a duplicate. Ignoring.", buf, 0xCu);
                }

                v64 = expirationDate;
                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v127 = pushUUID2;
                  _IDSLogV();
                }

                [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy, v127];
                goto LABEL_246;
              }

              [contextCopy setShouldBoost:1];
              theDicta = [v179 commandContext];
              reportID = [v179 reportID];
              groupIDData = [v179 groupIDData];
              if (groupIDData)
              {
                v160 = [[ENGroupID alloc] initWithDataRepresentation:groupIDData];
              }

              else
              {
                v160 = 0;
              }

              peerResponseIdentifier = [v179 peerResponseIdentifier];
              wantsAppAck = [v179 wantsAppAck];
              expectsPeerResponse = [v179 expectsPeerResponse];
              v152 = [command integerValue] == 104;
              v149 = [command integerValue] == 120;
              integerValue = [command integerValue];
              integerValue2 = [command integerValue];
              if ([topicCopy isEqualToString:@"com.apple.private.alloy.willow"])
              {
                integerValue3 = [command integerValue];
                integerValue4 = [command integerValue];
                v77 = integerValue3 == 250 || integerValue4 == 251;
                v154 = v77;
              }

              else
              {
                v154 = 0;
              }

              deliveryStatusContext = [v179 deliveryStatusContext];
              v158 = reportID;
              v159 = groupIDData;
              if ([command integerValue] == 101)
              {
                v78 = [deliveryStatusContext objectForKey:IDSSenderKeyIDCheckKey];
                v79 = v78 != 0;
              }

              else
              {
                v79 = 0;
              }

              senderPushToken2 = [v179 senderPushToken];
              v80 = +[IDSTrafficMonitor sharedInstance];
              identifier3 = [v180 identifier];
              [v80 noteIncomingMessageForService:identifier3];

              v82 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = pushUUID2;
                *&buf[12] = 2112;
                *&buf[14] = topicCopy;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "INCOMING-APS_DELIVERY:%@ SERVICE:%@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v127 = pushUUID2;
                identifier2 = topicCopy;
                _IDSLogV();
              }

              if (([v179 ifUnknownAction] & 3) != 0)
              {
                communicationTrustWrapper = [(IDSDaemon *)self communicationTrustWrapper];
                v219[0] = _NSConcreteStackBlock;
                v219[1] = 3221225472;
                v219[2] = sub_10067E0D8;
                v219[3] = &unk_100BDD7B8;
                v220 = v178;
                v221 = topicCopy;
                v222 = v180;
                [communicationTrustWrapper donateServerTrustFor:v220 serverTrust:0 service:v221 completionHandler:v219];
              }

              certifiedDeliveryVersion = [v179 certifiedDeliveryVersion];
              integerValue5 = [certifiedDeliveryVersion integerValue];

              updateHash = [v179 updateHash];
              encryptedPayload = [v179 encryptedPayload];
              v87 = toURI2;
              v88 = encryptedPayload;
              if (v79)
              {
                v89 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = pushUUID2;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Received delivery receipt for sender key distribution message %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v128 = pushUUID2;
                  _IDSLogV();
                }

                [(IDSDaemon *)self _processCertifiedDeliveryReceiptForSenderKeyDistribution:v179 service:topicCopy, v128];
                [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
                goto LABEL_244;
              }

              if (encryptedPayload && [command unsignedIntValue] == 101)
              {
                v90 = 1;
              }

              else
              {
                [(IDSDaemon *)self queryHashForceUpdate:command fromURI:v178 messageUUID:pushUUID2 updateHash:updateHash toURI:toURI2 service:v180];
                v90 = 0;
              }

              if (integerValue == 130)
              {
                if ([v180 tunnelService])
                {
                  v91 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Received registration update message on tunnel service, ignoring...", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }

LABEL_186:
                [IDSDMessageStore deleteIncomingMessageWithGUID:guidCopy];
LABEL_244:

                v61 = v158;
LABEL_245:

                v64 = v167;
LABEL_246:

                goto LABEL_247;
              }

              if (integerValue2 == 132)
              {
                v92 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Received KTPeerUpdateMessage message", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                [(IDSDaemon *)self _processKTPeerUpdateMessageForService:topicCopy localURI:toURI2 remoteURI:v178];
                goto LABEL_186;
              }

              if (toURI2)
              {
                v93 = v154;
              }

              else
              {
                v93 = 1;
              }

              v148 = v88;
              if (v93)
              {
                v94 = 0;
              }

              else
              {
                v218 = 0;
                v95 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:toURI2 service:v180 outPseudonym:&v218];
                v157 = v218;
                if (!v95)
                {
                  v103 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    *&buf[4] = pushUUID2;
                    *&buf[12] = 2112;
                    *&buf[14] = guidCopy;
                    *&buf[22] = 2112;
                    v231 = toURI2;
                    *v232 = 2112;
                    *&v232[2] = v179;
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "Processing received message for which we couldn't find a relevant account, cleaning it up. { messageUUID: %@, storedGuid: %@, toURI: %@, message: %@ }", buf, 0x2Au);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    _IDSWarnV();
                    _IDSLogV();
                    v138 = toURI2;
                    v141 = v179;
                    v128 = pushUUID2;
                    v135 = guidCopy;
                    _IDSLogTransport();
                  }

                  [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v128] deleteIncomingMessageWithGUID:guidCopy];
                  v104 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:pushUUID2 service:topicCopy additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v104];
                  if (integerValue5 >= 1)
                  {
                    certifiedDeliveryRTS = [v179 certifiedDeliveryRTS];
                    if (!certifiedDeliveryRTS)
                    {
                      v106 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        *&buf[4] = pushUUID2;
                        *&buf[12] = 2048;
                        *&buf[14] = integerValue5;
                        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "No certified delivery RTS found in payload with cdv { guid: %@, cdv: %ld }", buf, 0x16u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        _IDSWarnV();
                        _IDSLogV();
                        _IDSLogTransport();
                      }
                    }

                    v107 = [IDSCertifiedDeliveryContext alloc];
                    rawToken = [senderPushToken2 rawToken];
                    v109 = [v107 initWithGUID:pushUUID2 service:topicCopy certifiedDeliveryVersion:integerValue5 certifiedDeliveryRTS:certifiedDeliveryRTS senderToken:rawToken];

                    v110 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v109];
                    v111 = +[IDSDeliveryController sharedInstance];
                    v216[0] = _NSConcreteStackBlock;
                    v216[1] = 3221225472;
                    v216[2] = sub_10067E304;
                    v216[3] = &unk_100BD9D10;
                    v112 = v109;
                    v217 = v112;
                    [v111 sendIDSMessage:v110 service:0 topic:topicCopy completionBlock:v216];
                  }

                  goto LABEL_243;
                }

                v87 = toURI2;
                v94 = v157;
              }

              v187[0] = _NSConcreteStackBlock;
              v187[1] = 3221225472;
              v187[2] = sub_10067E444;
              v187[3] = &unk_100BE3CA8;
              v188 = v183;
              v155 = v179;
              v189 = v155;
              v96 = topicCopy;
              v190 = v96;
              v191 = v181;
              selfCopy = self;
              v146 = v180;
              v193 = v146;
              v147 = pushUUID2;
              v194 = v147;
              v145 = v178;
              v195 = v145;
              v144 = v87;
              v196 = v144;
              v197 = senderPushToken2;
              v198 = command;
              v199 = peerResponseIdentifier;
              v200 = wantsAppAck;
              v201 = expectsPeerResponse;
              v212 = v90;
              v202 = v148;
              v203 = v173;
              v213 = v168;
              v204 = theDicta;
              v157 = v94;
              v205 = v157;
              v206 = v159;
              v207 = deliveryStatusContext;
              v143 = contextCopy;
              v208 = v143;
              v209 = v160;
              v214 = v149;
              v210 = v158;
              v211 = integerValue5;
              v215 = v152;
              v169 = objc_retainBlock(v187);
              if ([v96 isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"])
              {
                v97 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = 0x403E000000000000;
                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "  => Adding a delay of %f seconds to iCloud Pairing Messages", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v128 = 0x403E000000000000;
                  _IDSLogV();
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v231 = sub_10000AAD4;
                *v232 = sub_10000BCDC;
                *&v232[8] = [[IMPowerAssertion alloc] initWithIdentifier:@"CloudPairingDelay" timeout:35.0];
                v184[0] = _NSConcreteStackBlock;
                v184[1] = 3221225472;
                v184[2] = sub_100686F4C;
                v184[3] = &unk_100BE3CF8;
                v185 = v169;
                v186 = buf;
                v98 = objc_retainBlock(v184);

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v99 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "  => Processing immediately", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v98 = objc_retainBlock(v169);
              }

              _isUnderFirstDataProtectionLock = [(IDSDaemon *)self _isUnderFirstDataProtectionLock];
              if (guidCopy || ([v146 shouldHaveRestrictedStorage] & 1) != 0)
              {
                if (_isUnderFirstDataProtectionLock)
                {
                  v101 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v147;
                    *&buf[12] = 2112;
                    *&buf[14] = guidCopy;
                    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Under first data protection lock and message already stored -- ignoring {GUID: %@, storedGuid: %@}", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }

                else
                {
                  v102 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = guidCopy;
                    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Processing message for stored guid %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }

                  (v98[2])(v98, guidCopy, 1, 1);
                }
              }

              else
              {
                serviceController2 = [(IDSDaemon *)self serviceController];
                v114 = [serviceController2 serviceWithPushTopic:v96];

                dataProtectionClass = [v114 dataProtectionClass];
                encryptedPayload2 = [v155 encryptedPayload];
                if (_isUnderFirstDataProtectionLock)
                {
                  v116 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v147;
                    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Under first data protection lock. Sending message to storage. { guid: %@ }", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v129 = v147;
                    _IDSLogV();
                  }

                  v129 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:dataProtectionClass, v129];
                  rawMessage2 = [v155 rawMessage];
                  prefixedURI4 = [v145 prefixedURI];
                  controlCategory = [v114 controlCategory];
                  BYTE4(v130) = [(IDSDaemon *)self _dedupBehaviorForNiceMessage:v155];
                  LODWORD(v130) = controlCategory;
                  [v129 storeIncomingMessage:rawMessage2 forTopic:v96 fromID:prefixedURI4 messageUUID:v147 messagePayload:encryptedPayload2 isLocal:0 controlCategory:v130 dedupBehavior:0 completionBlock:?];

                  [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v155 service:v96 failureReason:&off_100C3D1B0 failureReasonMessage:0 generateDeliveryReceipt:0];
                  if ([v146 wantsPendingMessageUpdates])
                  {
                    [(IDSDaemon *)self _broadcastPendingMessageUpdateForNiceMessage:v155 fromURI:v145 toURI:v144 forTopic:v96 messageContext:v143];
                  }
                }

                else
                {
                  v120 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:dataProtectionClass];
                  rawMessage3 = [v155 rawMessage];
                  prefixedURI5 = [v145 prefixedURI];
                  controlCategory2 = [v114 controlCategory];
                  BYTE4(v129) = [(IDSDaemon *)self _dedupBehaviorForNiceMessage:v155];
                  LODWORD(v129) = controlCategory2;
                  [v120 storeIncomingMessage:rawMessage3 forTopic:v96 fromID:prefixedURI5 messageUUID:v147 messagePayload:encryptedPayload2 isLocal:0 controlCategory:v129 dedupBehavior:v98 completionBlock:?];
                }
              }

              v104 = v188;
LABEL_243:

              v88 = v148;
              goto LABEL_244;
            }

            v46 = +[IDSPeerIDManager sharedInstance];
            v42 = [v46 uriForShortHandle:senderShortHandle];

            prefixedURI2 = [v42 prefixedURI];
            if (prefixedURI2)
            {
              CFDictionarySetValue(theDict, IDSSenderIDKey, prefixedURI2);
            }

            goto LABEL_63;
          }
        }

        else if (!receiverShortHandle)
        {
          goto LABEL_55;
        }

        v43 = +[IDSPeerIDManager sharedInstance];
        prefixedURI = [v43 uriForShortHandle:receiverShortHandle];

        v41PrefixedURI = [prefixedURI prefixedURI];
        if (v41PrefixedURI)
        {
          CFDictionarySetValue(theDict, IDSReceiverIDKey, v41PrefixedURI);
        }

        goto LABEL_54;
      }
    }

    v181 = 0;
    goto LABEL_26;
  }

  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    pushUUID3 = [messageCopy pushUUID];
    *buf = 138412802;
    *&buf[4] = pushUUID3;
    *&buf[12] = 2112;
    *&buf[14] = topicCopy;
    *&buf[22] = 2112;
    v231 = command;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "_processIncomingRemoteMessage: %@ on topic %@ with command %@ we aren't listening for. Dropping.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [messageCopy pushUUID];
    v132 = topicCopy;
    v124 = v137 = command;
    _IDSLogV();
  }

  [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v124] deleteIncomingMessageWithGUID:guidCopy];
LABEL_249:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)broadcastBatchMessage:(id)message topic:(id)topic
{
  messageCopy = message;
  topicCopy = topic;
  serviceController = [(IDSDaemon *)self serviceController];
  v9 = [serviceController serviceWithPushTopic:topicCopy];

  if ([v9 supportsBatchDelivery])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = messageCopy;
      v28 = 2114;
      v29 = topicCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will broadcast batchMessage: %@ (topic: %{public}@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10068734C;
    v23[3] = &unk_100BE3490;
    v11 = messageCopy;
    v24 = v11;
    v12 = topicCopy;
    v25 = v12;
    v13 = objc_retainBlock(v23);
    v14 = objc_alloc_init(IMMessageContext);
    [v14 setShouldBoost:1];
    v15 = kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100687358;
    v18[3] = &unk_100BE3D20;
    v19 = v11;
    selfCopy = self;
    v22 = v13;
    v20 = v12;
    v16 = kIDSMessagingEntitlement;
    v17 = v13;
    [(IDSDaemon *)self enqueueBroadcast:v18 forTopic:v20 entitlement:v16 command:0 capabilities:v15 messageContext:v14];
  }
}

- (void)_broadcastPendingMessageUpdateForNiceMessage:(id)message fromURI:(id)i toURI:(id)rI forTopic:(id)topic messageContext:(id)context
{
  iCopy = i;
  rICopy = rI;
  topicCopy = topic;
  contextCopy = context;
  messageCopy = message;
  command = [messageCopy command];
  encryptedPayload = [messageCopy encryptedPayload];
  pushUUID = [messageCopy pushUUID];

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (command)
  {
    CFDictionarySetValue(v19, IDSMessageContextOriginalCommandKey, command);
  }

  v36 = command;
  prefixedURI = [rICopy prefixedURI];
  if (prefixedURI)
  {
    CFDictionarySetValue(v20, IDSMessageContextToIDKey, prefixedURI);
  }

  v33 = kIDSListenerCapConsumesLaunchOnDemandPendingMessageUpdates;

  prefixedURI2 = [iCopy prefixedURI];
  if (prefixedURI2)
  {
    CFDictionarySetValue(v20, IDSMessageContextFromIDKey, prefixedURI2);
  }

  v35 = encryptedPayload;

  v23 = [NSNumber numberWithBool:encryptedPayload != 0];
  if (v23)
  {
    CFDictionarySetValue(v20, IDSMessageContextMessageHadEncryptedData, v23);
  }

  [contextCopy setShouldBoost:1];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1006879E0;
  v41[3] = &unk_100BDA870;
  v24 = pushUUID;
  v42 = v24;
  v25 = topicCopy;
  v43 = v25;
  v44 = rICopy;
  v45 = iCopy;
  v46 = v20;
  v26 = v20;
  v27 = iCopy;
  v28 = rICopy;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1006879F4;
  v37[3] = &unk_100BE3D48;
  v39 = v25;
  v40 = objc_retainBlock(v41);
  v38 = v24;
  v29 = kIDSMessagingEntitlement;
  v30 = v25;
  v31 = v24;
  v32 = v40;
  [(IDSDaemon *)self enqueueBroadcast:v37 forTopic:v30 entitlement:v29 command:0 capabilities:v33 messageContext:contextCopy];
}

- (void)_processIncomingRemoteResourceTransferMessage:(id)message forceDownload:(BOOL)download guid:(id)guid context:(id)context specificOriginatorURI:(id)i broadcastTopic:(id)topic toURI:(id)rI topic:(id)self0 messageContext:(id)self1
{
  downloadCopy = download;
  messageCopy = message;
  key = guid;
  contextCopy = context;
  iCopy = i;
  topicCopy = topic;
  rICopy = rI;
  v62 = a10;
  messageContextCopy = messageContext;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received an IDS Payload for a Resource Tranfer over the Internet, looking at it", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [messageCopy objectForKey:IDSIncomingMessageDecryptedDataKey];
    v20 = v19;
    v21 = @"NO";
    if (downloadCopy)
    {
      v21 = @"YES";
    }

    *buf = 138412546;
    v86 = v21;
    v87 = 2112;
    v88 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Force download? %@, Payload is %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v22 = _IDSShouldLog();
    v23 = IDSIncomingMessageDecryptedDataKey;
    if (v22)
    {
      if (downloadCopy)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      [messageCopy objectForKey:IDSIncomingMessageDecryptedDataKey];
      v48 = v47 = v24;
      _IDSLogV();
    }
  }

  else
  {
    v23 = IDSIncomingMessageDecryptedDataKey;
  }

  v25 = [messageCopy objectForKey:{v23, v47, v48}];
  v26 = JWDecodeDictionary();

  v53 = [(__CFString *)v26 _dictionaryForKey:@"attach-meta"];
  v27 = [(__CFString *)v26 _dictionaryForKey:@"attach-mmcs-dict"];
  v59 = [[IDSServiceProperties alloc] initWithServiceIdentifier:v62];
  if ([v59 wantsPendingResourceUpdates] && !downloadCopy)
  {
    v28 = [v27 _numberForKey:@"file-size"];
    integerValue = [v28 integerValue];

    v30 = [contextCopy mutableCopy];
    v31 = [NSNumber numberWithInteger:integerValue];
    [v30 setObject:v31 forKeyedSubscript:IDSMessageContextFileSize];

    if (!self->_pendingIncomingResources)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      pendingIncomingResources = self->_pendingIncomingResources;
      self->_pendingIncomingResources = Mutable;
    }

    v34 = objc_alloc_init(IDSPendingIncomingResourceTransfer);
    [(IDSPendingIncomingResourceTransfer *)v34 setTopLevelPayload:messageCopy];
    [(IDSPendingIncomingResourceTransfer *)v34 setGuid:key];
    [(IDSPendingIncomingResourceTransfer *)v34 setContext:contextCopy];
    [(IDSPendingIncomingResourceTransfer *)v34 setSpecificOriginatorURI:iCopy];
    [(IDSPendingIncomingResourceTransfer *)v34 setBroadcastTopic:topicCopy];
    [(IDSPendingIncomingResourceTransfer *)v34 setToURI:rICopy];
    [(IDSPendingIncomingResourceTransfer *)v34 setTopic:v62];
    [(IDSPendingIncomingResourceTransfer *)v34 setMessageContext:messageContextCopy];
    if (v34)
    {
      CFDictionarySetValue(self->_pendingIncomingResources, key, v34);
    }

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1006884E0;
    v78[3] = &unk_100BE3838;
    v79 = v53;
    v35 = key;
    v80 = v35;
    v36 = topicCopy;
    v81 = v36;
    v82 = rICopy;
    v83 = iCopy;
    v84 = v30;
    v52 = v30;
    v37 = objc_retainBlock(v78);
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1006884F4;
    v73[3] = &unk_100BE3B68;
    v74 = v35;
    v75 = v36;
    v76 = v62;
    v77 = v37;
    v38 = v37;
    v39 = [NSNumber numberWithInteger:245];
    [(IDSDaemon *)self enqueueBroadcast:v73 forTopic:v75 entitlement:kIDSMessagingEntitlement command:v39 capabilities:kIDSListenerCapConsumesLaunchOnDemandPendingResource messageContext:messageContextCopy];

    v40 = v79;
    goto LABEL_31;
  }

  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v86 = v26;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "DictIS %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (v27)
  {
    v34 = [v27 _dataForKey:@"decryption-key"];
    v42 = [v27 _numberForKey:@"file-size"];
    integerValue2 = [v42 integerValue];

    v52 = [v27 _stringForKey:@"mmcs-signature-hex"];
    v38 = [v27 _stringForKey:@"mmcs-url"];
    v40 = [v27 _stringForKey:@"mmcs-owner"];
    v43 = +[NSFileManager defaultManager];
    v44 = [v43 _randomTemporaryPathWithSuffix:0];

    dataUsageBundleID = [v59 dataUsageBundleID];
    _IMTransferServiceController = [(IDSDaemon *)self _IMTransferServiceController];
    v50 = +[NSString stringGUID];
    _FTDataFromHexString = [v52 _FTDataFromHexString];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100688760;
    v63[3] = &unk_100BE3D70;
    v64 = key;
    v65 = v26;
    v66 = contextCopy;
    v67 = topicCopy;
    v68 = rICopy;
    v69 = iCopy;
    selfCopy = self;
    v71 = v62;
    v72 = messageContextCopy;
    [_IMTransferServiceController receiveFileTransfer:v50 topic:v67 path:v44 requestURLString:v38 ownerID:v40 sourceAppID:dataUsageBundleID signature:_FTDataFromHexString decryptionKey:v34 fileSize:integerValue2 progressBlock:0 completionBlock:v63];

LABEL_31:
  }
}

- (void)_handleIncomingPushNiceMessage:(id)message forTopic:(id)topic fromURI:(id)i messageContext:(id)context
{
  messageCopy = message;
  topicCopy = topic;
  iCopy = i;
  contextCopy = context;
  [(IDSDaemon *)self _sendNiceMessageCheckpointIfNecessary:messageCopy checkpoint:9100 service:topicCopy additionalInformation:0];
  storageFlags = [messageCopy storageFlags];
  command = [messageCopy command];
  unsignedIntValue = [storageFlags unsignedIntValue];
  unsignedIntValue2 = [storageFlags unsignedIntValue];
  if (unsignedIntValue2)
  {
    serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
    [serverStorageStateMachine receivedMessageFromStorageForTopic:topicCopy];
  }

  v18 = unsignedIntValue & 2;
  if ((unsignedIntValue & 2) != 0)
  {
    serverStorageStateMachine2 = [(IDSDaemon *)self serverStorageStateMachine];
    [serverStorageStateMachine2 receivedLastMessageFromStorageForTopic:topicCopy];

    if ([command integerValue] == 255)
    {
      [(IDSDaemon *)self _noteLastItemFromStorage:0];
      goto LABEL_34;
    }

LABEL_9:
    serviceController = [(IDSDaemon *)self serviceController];
    v45 = [serviceController serviceWithPushTopic:topicCopy];

    dataProtectionClass = [v45 dataProtectionClass];
    systemMonitor = [(IDSDaemon *)self systemMonitor];
    v22 = contextCopy;
    isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

    v24 = v45;
    if (!isUnderFirstDataProtectionLock || [v45 dataProtectionClass] || (objc_msgSend(v45, "shouldHaveRestrictedStorage") & 1) != 0)
    {
      if (([v45 passThroughMessagesFromStorage] & 1) != 0 || objc_msgSend(v45, "shouldHaveRestrictedStorage"))
      {
        selfCopy2 = self;
        v26 = messageCopy;
        v27 = topicCopy;
        v28 = iCopy;
        contextCopy = v22;
LABEL_15:
        [(IDSDaemon *)selfCopy2 _processIncomingRemoteNiceMessage:v26 forTopic:v27 fromURI:v28 storedGuid:0 messageContext:v22];
LABEL_33:

        goto LABEL_34;
      }

      v29 = [(IDSDaemon *)self _isBulkingStorageMessagesForService:topicCopy];
      if ((unsignedIntValue2 & 1) == 0 && (v29 & 1) == 0 && !v18)
      {
        contextCopy = v22;
        selfCopy2 = self;
        v26 = messageCopy;
        v27 = topicCopy;
        v28 = iCopy;
        goto LABEL_15;
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.opaque[0]) = 138412290;
        *(buf.opaque + 4) = messageCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Message is from server storage %@", &buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10068962C;
      v47[3] = &unk_100BE3D98;
      v31 = messageCopy;
      v51 = v18 >> 1;
      contextCopy = v22;
      v48 = v31;
      selfCopy3 = self;
      v50 = v22;
      v32 = objc_retainBlock(v47);
      v43 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:dataProtectionClass];
      rawMessage = [v31 rawMessage];
      prefixedURI = [iCopy prefixedURI];
      pushUUID = [v31 pushUUID];
      encryptedPayload = [v31 encryptedPayload];
      [v43 storeIncomingMessage:rawMessage forTopic:topicCopy fromID:prefixedURI messageUUID:pushUUID messagePayload:encryptedPayload dedupBehavior:-[IDSDaemon _dedupBehaviorForNiceMessage:](self completionBlock:{"_dedupBehaviorForNiceMessage:", v31), v32}];
    }

    else
    {
      v53 = _os_activity_create(&_mh_execute_header, "Storing under first lock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      memset(&buf, 170, sizeof(buf));
      os_activity_scope_enter(v53, &buf);
      v34 = OSLogHandleForIDSCategory();
      contextCopy = v22;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " => Deferring message, service wants messages after first unlock only", v52, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v35 = [(IDSDaemon *)self messageStoreForDataProtectionClass:2];
      rawMessage2 = [messageCopy rawMessage];
      prefixedURI2 = [iCopy prefixedURI];
      pushUUID2 = [messageCopy pushUUID];
      encryptedPayload2 = [messageCopy encryptedPayload];
      [v35 storeIncomingMessage:rawMessage2 forTopic:topicCopy fromID:prefixedURI2 messageUUID:pushUUID2 messagePayload:encryptedPayload2 dedupBehavior:-[IDSDaemon _dedupBehaviorForNiceMessage:](self completionBlock:{"_dedupBehaviorForNiceMessage:", messageCopy), 0}];

      os_activity_scope_leave(&buf);
      cut_arc_os_release();
    }

    v24 = v45;
    goto LABEL_33;
  }

  if ([command integerValue] != 255)
  {
    goto LABEL_9;
  }

  if (unsignedIntValue2)
  {
    [(IDSDaemon *)self _noteItemFromStorage:0];
  }

LABEL_34:
}

- (void)_storageTimerFired
{
  [(IMDispatchTimer *)self->_storageTimer invalidate];
  storageTimer = self->_storageTimer;
  self->_storageTimer = 0;

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    *buf = 138412290;
    v11 = messagesReceivedDuringStorage;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Storage timer fired, guids we need to process: %@", buf, 0xCu);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v6 = self->_messagesReceivedDuringStorage;
  v7 = self->_messagesReceivedDuringStorage;
  self->_messagesReceivedDuringStorage = 0;

  if ([(IDSDaemon *)self _isUnderFirstDataProtectionLock])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We're under first data protection lock. Holding messages and not sending to clients.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_19:
      _IDSLogV();
    }
  }

  else if (v6 && [(NSMutableSet *)v6 count])
  {
    [(IDSDaemon *)self _processStoredIncomingRemoteMessagesWithGUIDs:v6 ignoringGUIDs:0 lastTimeInterval:0.0];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No messages to process, skipping.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_19;
    }
  }
}

- (void)_updateStorageTimerWithInterval:(double)interval
{
  if (interval > 0.0)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      intervalCopy = interval;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling a storage invalidation timer in: %f", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    storageTimer = self->_storageTimer;
    if (storageTimer)
    {
      [(IMDispatchTimer *)storageTimer invalidate];
      v7 = self->_storageTimer;
      self->_storageTimer = 0;
    }

    v8 = [IMDispatchTimer alloc];
    v9 = im_primary_queue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100689D2C;
    v12[3] = &unk_100BD9268;
    v12[4] = self;
    v10 = [v8 initWithQueue:v9 interval:interval repeats:0 handlerBlock:v12];
    v11 = self->_storageTimer;
    self->_storageTimer = v10;
  }
}

- (void)_noteItemFromStorage:(id)storage
{
  storageCopy = storage;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = storageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Noting item from storage (%@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = storageCopy;
    _IDSLogV();
  }

  if (!self->_messagesReceivedDuringStorage)
  {
    v6 = objc_alloc_init(NSMutableSet);
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = v6;
  }

  if (storageCopy)
  {
    [(NSMutableSet *)self->_messagesReceivedDuringStorage addObject:storageCopy];
  }

  [(IDSDaemon *)self _updateStorageTimerWithInterval:15.0, v8];
}

- (void)_noteLastItemFromStorage:(id)storage
{
  storageCopy = storage;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = storageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Noting last item from storage (%@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = storageCopy;
    _IDSLogV();
  }

  if (!self->_messagesReceivedDuringStorage)
  {
    v6 = objc_alloc_init(NSMutableSet);
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = v6;
  }

  if (storageCopy)
  {
    [(NSMutableSet *)self->_messagesReceivedDuringStorage addObject:storageCopy];
  }

  [(IDSDaemon *)self _updateStorageTimerWithInterval:2.0, v8];
}

- (void)_restrictedMessageCleanupTimerFired
{
  v3 = +[NSDate now];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restricted message cleanup timer fired at %f", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v7 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10068A184;
  block[3] = &unk_100BD7978;
  block[5] = v5;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_setupRestrictedMessageCleanupTimer
{
  _cleanupFrequencyForRestrictedMessages = [(IDSDaemon *)self _cleanupFrequencyForRestrictedMessages];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = _cleanupFrequencyForRestrictedMessages;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scheduling a restricted message cleanup timer every %f sec", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  restrictedMessageCleanupTimer = self->_restrictedMessageCleanupTimer;
  if (restrictedMessageCleanupTimer)
  {
    [(IMDispatchTimer *)restrictedMessageCleanupTimer invalidate];
    v6 = self->_restrictedMessageCleanupTimer;
    self->_restrictedMessageCleanupTimer = 0;
  }

  v7 = [IMDispatchTimer alloc];
  v8 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10068A574;
  v11[3] = &unk_100BD9268;
  v11[4] = self;
  v9 = [v7 initWithQueue:v8 interval:_cleanupFrequencyForRestrictedMessages repeats:1 handlerBlock:v11];
  storageTimer = self->_storageTimer;
  self->_storageTimer = v9;
}

- (BOOL)_isBulkingStorageMessagesForService:(id)service
{
  if (!self->_storageTimer)
  {
    return 0;
  }

  serviceCopy = service;
  serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
  v6 = [serverStorageStateMachine inflightServerStorageStateMachineForTopic:serviceCopy];

  return v6;
}

- (void)networkStateChangedForLogTransportHint:(id)hint
{
  hintCopy = hint;
  name = [hintCopy name];
  v5 = [name isEqualToString:IMNetworkChangedNotification];

  if (v5)
  {
    userInfo = [hintCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:IMNetworkChangedNotificationNetworkAvailableKey];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      serviceController = [(IDSDaemon *)self serviceController];
      allServices = [serviceController allServices];

      v10 = [allServices countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v10)
      {
        v11 = *v23;
        v12 = kIDSMessagingEntitlement;
        v13 = kIDSListenerCapConsumesLaunchOnDemandNetworkAvailableHint;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(allServices);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([v15 wantsNetworkAvailableHint])
            {
              v16 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v27 = v15;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Hinting service to check transport log {service: %@, reason: connected}", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v18 = v15;
                _IDSLogV();
              }

              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_10068A8E8;
              v21[3] = &unk_100BE3DC0;
              v21[4] = v15;
              pushTopic = [v15 pushTopic];
              [(IDSDaemon *)self enqueueBroadcast:v21 forTopic:pushTopic entitlement:v12 command:0 capabilities:v13 messageContext:0];
            }
          }

          v10 = [allServices countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)handler:(id)handler isConnectedChanged:(BOOL)changed
{
  changedCopy = changed;
  handlerCopy = handler;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSPushHandler signaled isConnected %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  handlerCopy = handler;
  messageCopy = message;
  topicCopy = topic;
  dCopy = d;
  contextCopy = context;
  v89 = dCopy;
  v91 = [IDSURI URIWithPrefixedURI:dCopy withServiceLoggingHint:topicCopy];
  v14 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:messageCopy topic:topicCopy];
  command = [v14 command];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v118 = handlerCopy;
    v119 = 2112;
    v120 = v14;
    v121 = 2112;
    *v122 = v91;
    *&v122[8] = 2112;
    *v123 = topicCopy;
    *&v123[8] = 2048;
    v124 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handler %@ didReceiveMessage: %@ fromURI: %@ forTopic: %@ context: %p", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v69 = topicCopy;
    v72 = contextCopy;
    v63 = v14;
    v66 = v91;
    v59 = handlerCopy;
    _IDSLogV();
  }

  v17 = [(IDSDaemon *)self serviceController:v59];
  v18 = [v17 serviceWithPushTopic:topicCopy];

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    pushUUID = [v14 pushUUID];
    constraintType = [v18 constraintType];
    allowedCommandGroup = [v18 allowedCommandGroup];
    *buf = 138413314;
    v118 = pushUUID;
    v119 = 2112;
    v120 = topicCopy;
    v121 = 1024;
    *v122 = constraintType;
    *&v122[4] = 1024;
    *&v122[6] = allowedCommandGroup;
    *v123 = 2112;
    *&v123[2] = command;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enforcing incoming push constraint for %@ Service %@ ConstraintType %u AllowedCommandGroups %u IncomingCommand %@", buf, 0x2Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    pushUUID2 = [v14 pushUUID];
    constraintType2 = [v18 constraintType];
    allowedCommandGroup2 = [v18 allowedCommandGroup];
    v73 = command;
    v64 = topicCopy;
    v67 = constraintType2;
    v60 = pushUUID2;
    _IDSLogV();
  }

  intValue = [command intValue];
  fromURI = [v14 fromURI];
  v27 = [(IDSDaemon *)self _shouldDropCommand:intValue senderURI:fromURI forService:v18];

  if (!v27)
  {
    if ([(IDSDaemon *)self _isUnlistenedCommand:command])
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        pushUUID3 = [v14 pushUUID];
        *buf = 138412802;
        v118 = pushUUID3;
        v119 = 2112;
        v120 = topicCopy;
        v121 = 2112;
        *v122 = command;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "didReceiveMessage: %@ on topic %@ with command %@ we aren't listening for. Dropping.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_16;
      }

      goto LABEL_62;
    }

    serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
    [serverStorageStateMachine logCurrentStateForTopic:topicCopy];

    serverStorageSSM = [v14 serverStorageSSM];
    ignoreServerStorageSSM = [v18 ignoreServerStorageSSM];
    pushUUID4 = [v14 pushUUID];
    batchNumber = [v14 batchNumber];
    totalBatchCount = [v14 totalBatchCount];
    storageFlags = [v14 storageFlags];
    unsignedIntValue = [storageFlags unsignedIntValue];
    unsignedIntValue2 = [storageFlags unsignedIntValue];
    v77 = unsignedIntValue & 1;
    if (ignoreServerStorageSSM)
    {
      v36 = 0;
    }

    else if (serverStorageSSM)
    {
      v36 = unsignedIntValue & 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
    if (batchNumber && totalBatchCount)
    {
      v37 = [batchNumber isEqualToNumber:totalBatchCount];
    }

    supportsBatchDelivery = [v18 supportsBatchDelivery];
    if ([v18 supportsBatchDelivery])
    {
      v76 = 0;
      if (!v36)
      {
LABEL_36:
        messageList = [v14 messageList];

        v79 = unsignedIntValue2 & 2;
        v41 = supportsBatchDelivery & v36;
        if (messageList)
        {
          v81 = v41;
          messageList2 = [v14 messageList];
          v43 = [messageList2 __imArrayByFilteringWithBlock:&stru_100BE3DE0];

          v44 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v43 count];
            v46 = @"YES";
            *buf = 138413570;
            v118 = pushUUID4;
            if ((unsignedIntValue2 & 2) == 0)
            {
              v46 = @"NO";
            }

            v119 = 2112;
            v120 = serverStorageSSM;
            v121 = 2112;
            *v122 = batchNumber;
            *&v122[8] = 2112;
            *v123 = totalBatchCount;
            *&v123[8] = 2112;
            v124 = v46;
            v125 = 2048;
            v126 = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Given message list {guid: %@, ssm: %@, label: %@/%@, LFS: %@} from server. Dissecting into %ld individual messages", buf, 0x3Eu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            [v43 count];
            _IDSLogV();
          }
        }

        else
        {
          if (!v41)
          {
            [(IDSDaemon *)self _handleIncomingPushNiceMessage:v14 forTopic:topicCopy fromURI:v91 messageContext:contextCopy];
LABEL_61:

            goto LABEL_62;
          }

          v81 = v41;
          v47 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = @"YES";
            *buf = 138413314;
            v118 = pushUUID4;
            if (!v79)
            {
              v48 = @"NO";
            }

            v119 = 2112;
            v120 = serverStorageSSM;
            v121 = 2112;
            *v122 = batchNumber;
            *&v122[8] = 2112;
            *v123 = totalBatchCount;
            *&v123[8] = 2112;
            v124 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Given single message with ssm {guid: %@, ssm: %@, label: %@/%@, LFS: %@} from server. Handling as message list with single item", buf, 0x34u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            if (v79)
            {
              v49 = @"YES";
            }

            else
            {
              v49 = @"NO";
            }

            v71 = totalBatchCount;
            v74 = v49;
            v65 = serverStorageSSM;
            v68 = batchNumber;
            v61 = pushUUID4;
            _IDSLogV();
          }

          rawMessage = [v14 rawMessage];
          v116 = rawMessage;
          v43 = [NSArray arrayWithObjects:&v116 count:1];
        }

        v51 = objc_alloc_init(NSMutableArray);
        v52 = objc_alloc_init(NSMutableArray);
        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = sub_10068B830;
        v105[3] = &unk_100BE3E08;
        v106 = v43;
        v113 = v77;
        v75 = v79 >> 1;
        v114 = v79 >> 1;
        v53 = topicCopy;
        v107 = v53;
        selfCopy = self;
        v115 = v81;
        v54 = pushUUID4;
        v109 = v54;
        v110 = v51;
        v80 = v52;
        v111 = v80;
        v112 = contextCopy;
        v78 = v106;
        v55 = v110;
        [v106 enumerateObjectsUsingBlock:v105];
        if (v81)
        {
          v82 = [CUTUnsafePromise allWithPartialSuccesses:v55];
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10068BB30;
          v102[3] = &unk_100BD87D8;
          v56 = v54;
          v103 = v56;
          v57 = v53;
          v104 = v57;
          [v82 registerResultBlock:v102];
          v58 = [CUTUnsafePromise allWithPartialSuccesses:v80];
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_10068BCDC;
          v94[3] = &unk_100BE3E70;
          v95 = v56;
          v96 = v57;
          v97 = serverStorageSSM;
          v101 = v75;
          v98 = batchNumber;
          v99 = totalBatchCount;
          selfCopy2 = self;
          [v58 registerResultBlock:v94];
        }

        else if (v76)
        {
          serverStorageStateMachine2 = [(IDSDaemon *)self serverStorageStateMachine];
          [serverStorageStateMachine2 sendBatchProcessedForTopic:v53];
        }

        goto LABEL_61;
      }
    }

    else
    {
      v76 = v36 & v37;
      if (!v36)
      {
        goto LABEL_36;
      }
    }

    serverStorageStateMachine3 = [(IDSDaemon *)self serverStorageStateMachine];
    [serverStorageStateMachine3 noteReceivedSSMForTopic:topicCopy ssm:serverStorageSSM];

    goto LABEL_36;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    pushUUID5 = [v14 pushUUID];
    *buf = 138412290;
    v118 = pushUUID5;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Dropping message %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
LABEL_16:
    pushUUID6 = [v14 pushUUID];
    _IDSLogV();
  }

LABEL_62:
}

- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context
{
  handlerCopy = handler;
  topicCopy = topic;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = topicCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "receivedOfflineMessagePendingForTopic: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = topicCopy;
    _IDSLogV();
  }

  [(IDSDaemon *)self _updateStorageTimerWithInterval:15.0, v14];
  serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
  [serverStorageStateMachine incomingStorageRequestForTopic:topicCopy primary:1 messageContext:contextCopy sendReasonPathID:26];

  serverStorageStateMachine2 = [(IDSDaemon *)self serverStorageStateMachine];
  [serverStorageStateMachine2 receivedStorageRequestForTopic:topicCopy];
}

- (void)handler:(id)handler receivedNoStorageResponseForTopic:(id)topic identifier:(id)identifier messageContext:(id)context
{
  contextCopy = context;
  topicCopy = topic;
  serverStorageStateMachine = [(IDSDaemon *)self serverStorageStateMachine];
  [serverStorageStateMachine receivedNoStorageResponseForTopic:topicCopy messageContext:contextCopy];
}

- (void)handler:(id)handler didReceiveMessage:(id)message forUnknownTopic:(id)topic messageContext:(id)context
{
  messageCopy = message;
  v7 = IDSUUIDKey;
  topicCopy = topic;
  v9 = [messageCopy objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [messageCopy objectForKey:v7];
    v11 = [NSData _IDSDataFromBase64String:v10];
LABEL_5:
    v12 = v11;
    v13 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v10 = [messageCopy objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [messageCopy objectForKey:v7];
    goto LABEL_5;
  }

  v13 = JWUUIDPushObjectToString();
LABEL_7:

  v14 = [[IDSMissingMessageMetric alloc] initWithReason:707 guid:v13 service:topicCopy additionalInformation:0];
  [IDSMissingMessageMetricReporter sendMetric:v14];
}

- (id)_decryptAOverCMessage:(id)message topic:(id)topic fromDeviceID:(id)d error:(id *)error
{
  messageCopy = message;
  topicCopy = topic;
  dCopy = d;
  v12 = +[IDSCurrentDevice sharedInstance];
  encryptionClassAKey = [v12 encryptionClassAKey];

  if (encryptionClassAKey)
  {
    v20 = 0;
    v14 = [IDSEncryptionHelpers decryptLocalDeliveryPayload:messageCopy forService:topicCopy withDataProtectionClass:1 fromDevice:dCopy encryptionType:1 priority:300 error:&v20];
    v15 = v20;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Encryption failed with error %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (error)
      {
        v18 = v15;
        *error = v15;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isUnlistenedCommand:(id)command
{
  if (!command)
  {
    return 1;
  }

  commandCopy = command;
  _commands = [(IDSDaemon *)self _commands];
  LOBYTE(self) = [_commands containsObject:commandCopy];

  v6 = self ^ 1;
  return v6;
}

- (BOOL)_shouldDropCommand:(int64_t)command senderURI:(id)i forService:(id)service
{
  iCopy = i;
  serviceCopy = service;
  LODWORD(command) = [(IDSDaemon *)self commandGroupForCommand:command];
  v10 = ([serviceCopy allowedCommandGroup] & command) == 0 || objc_msgSend(serviceCopy, "constraintType") == 3 && !-[IDSContactsUtilities doesContactMatchingURIExists:](self->_contactsUtilities, "doesContactMatchingURIExists:", iCopy);

  return v10;
}

- (unsigned)commandGroupForCommand:(int64_t)command
{
  if ((command - 100) > 0x95)
  {
    return 128;
  }

  else
  {
    return dword_1009AC054[command - 100];
  }
}

- (void)deliveryController:(id)controller didReceiveMessage:(id)message topic:(id)topic command:(id)command deviceID:(id)d messageID:(id)iD
{
  controllerCopy = controller;
  messageCopy = message;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v32 = messageCopy;
    v33 = 2112;
    v34 = topicCopy;
    v35 = 2112;
    v36 = commandCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Incoming message %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v21 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10068C8F0;
  block[3] = &unk_100BD9FC0;
  block[4] = self;
  v27 = topicCopy;
  v28 = commandCopy;
  v29 = messageCopy;
  v30 = dCopy;
  v22 = dCopy;
  v23 = messageCopy;
  v24 = commandCopy;
  v25 = topicCopy;
  dispatch_async(v21, block);
}

- (id)_incomingMessageStorageDictionaryForPayload:(id)payload topic:(id)topic deviceID:(id)d btUUID:(id)iD command:(id)command messageUUID:(id)uID sequenceNumber:(id)number wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2
{
  payloadCopy = payload;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  commandCopy = command;
  uIDCopy = uID;
  numberCopy = number;
  identifierCopy = identifier;
  if ([topicCopy length])
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = v24;
    if (uIDCopy)
    {
      CFDictionarySetValue(v24, IDSMessageContextOutgoingResponseIdentifierKey, uIDCopy);
    }

    if (identifierCopy)
    {
      CFDictionarySetValue(v25, IDSMessageContextIncomingResponseIdentifierKey, identifierCopy);
    }

    v26 = [NSNumber numberWithBool:response];
    if (v26)
    {
      CFDictionarySetValue(v25, IDSMessageContextExpectsPeerResponseKey, v26);
    }

    if (ack)
    {
      CFDictionarySetValue(v25, IDSMessageContextWantsAppAckKey, &__kCFBooleanTrue);
    }

    if (numberCopy)
    {
      CFDictionarySetValue(v25, IDSMessageContextSequenceNumberKey, numberCopy);
    }

    if (v25)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageContext", v25);
    }

    if (payloadCopy)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessagePayload", payloadCopy);
    }

    if (topicCopy)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageService", topicCopy);
    }

    if (dCopy)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageDeviceID", dCopy);
    }

    if (iDCopy)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageBTUUID", iDCopy);
    }

    if (commandCopy)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageCommand", commandCopy);
    }
  }

  else
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[IDSDaemon(Messaging) _incomingMessageStorageDictionaryForPayload:topic:deviceID:btUUID:command:messageUUID:sequenceNumber:wantsAppAck:expectsPeerResponse:peerResponseIdentifier:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: invalid topic for saving incoming message, ignoring!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v23 = 0;
  }

  return v23;
}

- (BOOL)_shouldStoreBeforeFirstUnlockIncomingLocalMessage:(id)message from:(id)from forTopic:(id)topic
{
  messageCopy = message;
  fromCopy = from;
  topicCopy = topic;
  v11 = topicCopy;
  if (messageCopy && [topicCopy length])
  {
    serviceController = [(IDSDaemon *)self serviceController];
    v13 = [serviceController serviceWithPushTopic:v11];

    if (!sub_100019928([v13 shouldProtectTrafficUsingClassA], objc_msgSend(v13, "dataProtectionClass"), v11))
    {
      goto LABEL_11;
    }

    v14 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v14 pairedDeviceUniqueID];
    v16 = [IDSEncryptionHelpers areDataProtectionKeysAvailableForService:v11 withDataProtectionClass:1 fromDevice:pairedDeviceUniqueID];

    if (v16)
    {
      goto LABEL_11;
    }

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Incoming A over C message but keys are not available, sending to storage", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if ([v13 dataProtectionClass])
    {
LABEL_11:
      v18 = 0;
    }

    else
    {
      v21 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:2];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10068D278;
      v23[3] = &unk_100BE3E98;
      v24 = v11;
      LOBYTE(v22) = 0;
      [v21 storeIncomingMessage:messageCopy forTopic:v24 fromID:fromCopy messageUUID:0 messagePayload:0 isLocal:1 dedupBehavior:v22 completionBlock:v23];

      v18 = 1;
    }
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[IDSDaemon(Messaging) _shouldStoreBeforeFirstUnlockIncomingLocalMessage:from:forTopic:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: invalid parameters for saving incoming message, ignoring!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v18 = 0;
  }

  return v18;
}

- (void)deliveryController:(id)controller protobufReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7
{
  controllerCopy = controller;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  messageIDCopy = messageID;
  identifierCopy = identifier;
  uIDCopy = uID;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v70 = receivedCopy;
    v71 = 2112;
    v72 = topicCopy;
    v73 = 2112;
    v74 = commandCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming protobuf %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v42 = topicCopy;
      v44 = commandCopy;
      v41 = receivedCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v42 = topicCopy;
        v44 = commandCopy;
        v41 = receivedCopy;
        _IDSLogV();
      }
    }
  }

  if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:uIDCopy local:1 topic:topicCopy, v41, v42, v44])
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = uIDCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received local protobuf %@ is a duplicate. Ignoring.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v29 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10068D904;
    block[3] = &unk_100BE3980;
    block[4] = self;
    v63 = topicCopy;
    v64 = messageIDCopy;
    v65 = dCopy;
    priorityCopy = priority;
    typeCopy = type;
    v66 = uIDCopy;
    v30 = uIDCopy;
    v31 = dCopy;
    v32 = messageIDCopy;
    v33 = topicCopy;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v29, v34);
  }

  else
  {
    dictionaryRepresentation = [receivedCopy dictionaryRepresentation];
    LOWORD(v43) = __PAIR16__(response, ack);
    v36 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:dictionaryRepresentation topic:topicCopy deviceID:dCopy btUUID:iDCopy command:commandCopy messageUUID:uIDCopy sequenceNumber:messageIDCopy wantsAppAck:v43 expectsPeerResponse:identifierCopy peerResponseIdentifier:?];

    v37 = im_primary_queue();
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10068D9B4;
    v50[3] = &unk_100BE3EC0;
    v50[4] = self;
    v51 = topicCopy;
    v52 = v36;
    v53 = iDCopy;
    v54 = messageIDCopy;
    priorityCopy2 = priority;
    typeCopy2 = type;
    v55 = dCopy;
    v56 = uIDCopy;
    v57 = receivedCopy;
    v58 = commandCopy;
    hintCopy = hint;
    v38 = uIDCopy;
    v30 = dCopy;
    v31 = messageIDCopy;
    v32 = v36;
    v39 = topicCopy;
    v40 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v50);
    dispatch_async(v37, v40);
  }
}

- (void)deliveryController:(id)controller dataReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7
{
  controllerCopy = controller;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  messageIDCopy = messageID;
  identifierCopy = identifier;
  uIDCopy = uID;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v69 = receivedCopy;
    v70 = 2112;
    v71 = topicCopy;
    v72 = 2112;
    v73 = commandCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming data %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = topicCopy;
      v43 = commandCopy;
      v40 = receivedCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v41 = topicCopy;
        v43 = commandCopy;
        v40 = receivedCopy;
        _IDSLogV();
      }
    }
  }

  if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:uIDCopy local:1 topic:topicCopy, v40, v41, v43])
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = uIDCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received local data %@ is a duplicate. Ignoring.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v29 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10068E30C;
    block[3] = &unk_100BE3980;
    block[4] = self;
    v62 = topicCopy;
    v63 = messageIDCopy;
    v64 = dCopy;
    priorityCopy = priority;
    typeCopy = type;
    v65 = uIDCopy;
    v30 = uIDCopy;
    v31 = dCopy;
    v32 = messageIDCopy;
    v33 = topicCopy;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v29, v34);
  }

  else
  {
    LOWORD(v42) = __PAIR16__(response, ack);
    v35 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:receivedCopy topic:topicCopy deviceID:dCopy btUUID:iDCopy command:commandCopy messageUUID:uIDCopy sequenceNumber:messageIDCopy wantsAppAck:v42 expectsPeerResponse:identifierCopy peerResponseIdentifier:?];
    v36 = im_primary_queue();
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10068E3BC;
    v49[3] = &unk_100BE3EC0;
    v49[4] = self;
    v50 = topicCopy;
    v51 = v35;
    v52 = iDCopy;
    v53 = messageIDCopy;
    priorityCopy2 = priority;
    typeCopy2 = type;
    v54 = dCopy;
    v55 = uIDCopy;
    v56 = receivedCopy;
    v57 = commandCopy;
    hintCopy = hint;
    v37 = uIDCopy;
    v30 = dCopy;
    v31 = messageIDCopy;
    v32 = v35;
    v38 = topicCopy;
    v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v49);
    dispatch_async(v36, v39);
  }
}

- (void)deliveryController:(id)controller messageReceived:(id)received topic:(id)topic command:(id)command deviceID:(id)d btUUID:(id)iD messageID:(id)messageID wantsAppAck:(BOOL)self0 expectsPeerResponse:(BOOL)self1 peerResponseIdentifier:(id)self2 messageUUID:(id)self3 priority:(int64_t)self4 isCompressed:(BOOL)self5 connectionType:(int64_t)self6 didWakeHint:(BOOL)self7
{
  controllerCopy = controller;
  receivedCopy = received;
  topicCopy = topic;
  commandCopy = command;
  dCopy = d;
  iDCopy = iD;
  messageIDCopy = messageID;
  identifierCopy = identifier;
  uIDCopy = uID;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = receivedCopy;
    v74 = 2112;
    v75 = topicCopy;
    v76 = 2112;
    v77 = commandCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming message %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v46 = topicCopy;
      v47 = commandCopy;
      v45 = receivedCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v46 = topicCopy;
        v47 = commandCopy;
        v45 = receivedCopy;
        _IDSLogV();
      }
    }
  }

  if (-[IDSDaemon _checkIfDupeAndNoteGuid:local:topic:forceNoteGuid:](self, "_checkIfDupeAndNoteGuid:local:topic:forceNoteGuid:", uIDCopy, 1, topicCopy, +[IDSDaemon _commandIsSessionCommand:](IDSDaemon, "_commandIsSessionCommand:", [commandCopy integerValue])))
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = uIDCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received local message %@ is a duplicate. Ignoring.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v29 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10068ED5C;
    block[3] = &unk_100BE3980;
    block[4] = self;
    v68 = topicCopy;
    v69 = messageIDCopy;
    v70 = dCopy;
    v71[1] = priority;
    v71[2] = type;
    v71[0] = uIDCopy;
    v30 = messageIDCopy;
    v31 = uIDCopy;
    v32 = dCopy;
    v33 = topicCopy;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v29, v34);

    v35 = &v68;
    v36 = &v69;
    v37 = &v70;
    v38 = v71;
  }

  else
  {
    v39 = im_primary_queue();
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10068EE0C;
    v53[3] = &unk_100BE3EE8;
    v53[4] = self;
    v54 = topicCopy;
    v55 = iDCopy;
    v56 = dCopy;
    v57 = receivedCopy;
    v58 = commandCopy;
    v59 = uIDCopy;
    v60 = messageIDCopy;
    ackCopy = ack;
    responseCopy = response;
    v61 = identifierCopy;
    priorityCopy = priority;
    typeCopy = type;
    hintCopy = hint;
    v40 = messageIDCopy;
    v41 = uIDCopy;
    v42 = dCopy;
    v43 = topicCopy;
    v44 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v53);
    dispatch_async(v39, v44);

    v35 = &v54;
    v36 = &v55;
    v37 = &v56;
    v38 = &v57;
    v29 = v58;
  }
}

- (void)deliveryController:(id)controller receivedAppLevelAckWithTopic:(id)topic deviceID:(id)d btUUID:(id)iD messageID:(id)messageID peerResponseIdentifier:(id)identifier priority:(int64_t)priority connectionType:(int64_t)self0
{
  controllerCopy = controller;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  messageIDCopy = messageID;
  identifierCopy = identifier;
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = topicCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Incoming app level ack on service %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  LOWORD(v28) = 0;
  v22 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:0 topic:topicCopy deviceID:dCopy btUUID:iDCopy command:&off_100C3D1C8 messageUUID:identifierCopy sequenceNumber:messageIDCopy wantsAppAck:v28 expectsPeerResponse:identifierCopy peerResponseIdentifier:?];
  v23 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10068F704;
  block[3] = &unk_100BE3F10;
  block[4] = self;
  v31 = v22;
  v32 = iDCopy;
  v33 = topicCopy;
  v34 = &off_100C3D1C8;
  v35 = dCopy;
  priorityCopy = priority;
  typeCopy = type;
  v24 = dCopy;
  v25 = topicCopy;
  v26 = iDCopy;
  v27 = v22;
  dispatch_async(v23, block);
}

- (void)cancelItemWithIdentifier:(id)identifier service:(id)service messageContext:(id)context
{
  identifierCopy = identifier;
  serviceCopy = service;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412546;
    v19 = identifierCopy;
    v20 = 2048;
    v21 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received cancel request for message %@ from localObject %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v17 = v16 = identifierCopy;
    _IDSLogV();
  }

  localObject2 = [contextCopy localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:localObject2 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  if (v14 && [identifierCopy length])
  {
    [IDSDMessageStore deleteOutgoingMessageWithGUID:identifierCopy alternateGUID:0];
    v15 = +[IDSUTunDeliveryController sharedInstance];
    [v15 cancelMessageID:identifierCopy];
  }
}

- (void)downloadPendingResourceWithMessageGUID:(id)d messageContext:(id)context
{
  context = [(NSMutableDictionary *)self->_pendingIncomingResources objectForKey:d, context];
  topLevelPayload = [context topLevelPayload];
  guid = [context guid];
  v13Context = [context context];
  specificOriginatorURI = [context specificOriginatorURI];
  broadcastTopic = [context broadcastTopic];
  toURI = [context toURI];
  topic = [context topic];
  messageContext = [context messageContext];
  [(IDSDaemon *)self _processIncomingRemoteResourceTransferMessage:topLevelPayload forceDownload:1 guid:guid context:v13Context specificOriginatorURI:specificOriginatorURI broadcastTopic:broadcastTopic toURI:toURI topic:topic messageContext:messageContext];
}

- (void)deletePendingResourceWithMessageGUID:(id)d messageContext:(id)context
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    pendingIncomingResources = self->_pendingIncomingResources;
    if (pendingIncomingResources)
    {
      CFDictionaryRemoveValue(pendingIncomingResources, dCopy);
      dCopy = v7;
    }
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:dCopy];
}

- (void)getProgressUpdateForIdentifier:(id)identifier service:(id)service messageContext:(id)context
{
  identifierCopy = identifier;
  serviceCopy = service;
  contextCopy = context;
  localObject = [contextCopy localObject];
  LODWORD(service) = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:serviceCopy];

  if (service && [identifierCopy length])
  {
    [IDSDMessageStore allOutgoingMessagesByGUID:identifierCopy];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v8)
    {
      v33 = *v36;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          copySendParameters = [v10 copySendParameters];
          [copySendParameters setWantsProgress:1];
          if ([v10 sent])
          {
            v12 = +[IDSUTunDeliveryController sharedInstance];
            [v12 kickProgressBlockForMessageID:identifierCopy];
          }

          else
          {
            localObject2 = [contextCopy localObject];
            v12 = [(IDSDaemon *)self broadcasterForLocalObject:localObject2 messageContext:contextCopy];

            if (v12)
            {
              v14 = objc_alloc_init(IDSDeliveryContext);
              [v14 setIdsResponseCode:0];
              [v14 setLastCall:0];
              v15 = objc_alloc_init(NSMutableDictionary);
              v16 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                identifier = [copySendParameters identifier];
                idsResponseCode = [v14 idsResponseCode];
                responseError = [v14 responseError];
                *buf = 138412802;
                v40 = identifier;
                v41 = 2048;
                v42 = idsResponseCode;
                v43 = 2112;
                v44 = responseError;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending not started update to listener on %@ with responseCode %ld error %@ - 0/0 bytes", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                identifier2 = [copySendParameters identifier];
                idsResponseCode2 = [v14 idsResponseCode];
                [v14 responseError];
                v28 = v27 = idsResponseCode2;
                v26 = identifier2;
                _IDSLogV();
              }

              identifier3 = [copySendParameters identifier];
              alternateCallbackID = [copySendParameters alternateCallbackID];
              mainAccountUUID = [copySendParameters mainAccountUUID];
              responseError2 = [v14 responseError];
              v26 = v15;
              [v12 messageIdentifier:identifier3 alternateCallbackID:alternateCallbackID forAccount:mainAccountUUID updatedWithResponseCode:0 error:responseError2 lastCall:objc_msgSend(v14 context:"lastCall")];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v8);
    }
  }
}

+ (id)progressBlockForSendParameters:(id)parameters messageContext:(id)context topic:(id)topic forObject:(id)object
{
  parametersCopy = parameters;
  contextCopy = context;
  topicCopy = topic;
  objectCopy = object;
  if ([parametersCopy wantsProgress])
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = -1;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = -1;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_10000AAD4;
    v27[4] = sub_10000BCDC;
    v28 = +[NSDate date];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_10000AAD4;
    v25[4] = sub_10000BCDC;
    v26 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100690210;
    v16[3] = &unk_100BE3F38;
    v21 = v25;
    v22 = v30;
    v23 = v29;
    v24 = v27;
    v17 = parametersCopy;
    v18 = contextCopy;
    v19 = objectCopy;
    v20 = topicCopy;
    v13 = objc_retainBlock(v16);

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_retainBlock(v13);

  return v14;
}

- (void)_ackMessageWithSequenceNumber:(unsigned int)number forDeviceID:(id)d priority:(int64_t)priority dataProtectionClass:(unsigned int)class connectionType:(int64_t)type guid:(id)guid
{
  v10 = *&class;
  v12 = *&number;
  dCopy = d;
  guidCopy = guid;
  if (priority == 100 || priority == 200 || priority == 300)
  {
    uTunDeliveryController = [(IDSDaemon *)self uTunDeliveryController];
    v17 = [uTunDeliveryController copyPeerWithID:dCopy];

    if ([v17 sendAckForMessageWithSequenceNumber:v12 priority:priority dataProtectionClass:v10 connectionType:type])
    {
      [(IDSDaemon *)self _addIncomingGUIDsWithGuid:guidCopy isLocal:1 hasLock:0];
    }

    else
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        priorityCopy2 = v12;
        v22 = 2112;
        v23 = v17;
        v24 = 2048;
        priorityCopy = priority;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Please file a radar! Could not ack message with sequence number %u for peer %@ priority %ld\n", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      priorityCopy2 = priority;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot ack message locally without proper priority value (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_addIncomingGUIDsWithGuid:(id)guid isLocal:(BOOL)local hasLock:(BOOL)lock
{
  localCopy = local;
  guidCopy = guid;
  if (!lock)
  {
    pthread_mutex_lock(&self->_localIncomingGUIDsLock);
  }

  v8 = &OBJC_IVAR___IDSDaemon__remoteIncomingGUIDs;
  if (localCopy)
  {
    v8 = &OBJC_IVAR___IDSDaemon__localIncomingGUIDs;
  }

  v9 = *v8;
  first = [*(&self->super.isa + v9) first];
  second = [*(&self->super.isa + v9) second];
  if ([first containsObject:guidCopy] & 1) != 0 || (objc_msgSend(second, "containsObject:", guidCopy))
  {
LABEL_10:
    if (lock)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!first || [first count] >= 0x1F4)
  {
    v12 = [[NSMutableSet alloc] initWithObjects:{guidCopy, 0}];
    v13 = [[IMPair alloc] initWithFirst:v12 second:first];
    v14 = *(&self->super.isa + v9);
    *(&self->super.isa + v9) = v13;

    goto LABEL_10;
  }

  [first addObject:guidCopy];
  if (!lock)
  {
LABEL_11:
    pthread_mutex_unlock(&self->_localIncomingGUIDsLock);
  }

LABEL_12:
}

- (void)acknowledgeOutgoingMessageWithGUID:(id)d alternateCallbackID:(id)iD forAccountWithUniqueID:(id)uniqueID messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412802;
    v22 = dCopy;
    v23 = 2112;
    v24 = iDCopy;
    v25 = 2048;
    v26 = localObject;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received acknowledgement for outgoing message %@ alternateCallbackID %@ from localObject %p", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v20 = v19 = iDCopy;
    v18 = dCopy;
    _IDSLogV();
  }

  localObject2 = [contextCopy localObject];
  v17 = [(IDSDaemon *)self accountWithIdentifier:uniqueIDCopy localObject:localObject2 requiredEntitlement:kIDSMessagingEntitlement];
}

- (void)acknowledgeMessageWithStorageGUID:(id)d realGUID:(id)iD forAccountWithUniqueID:(id)uniqueID broadcastTime:(id)time messageSize:(id)size priority:(id)priority broadcastID:(int64_t)broadcastID connectionType:(int64_t)self0 messageContext:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  timeCopy = time;
  sizeCopy = size;
  priorityCopy = priority;
  contextCopy = context;
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    localObject = [contextCopy localObject];
    localObject2 = [contextCopy localObject];
    processName = [localObject2 processName];
    *buf = 138544130;
    v64 = dCopy;
    v65 = 2114;
    v66 = iDCopy;
    v67 = 2048;
    v68 = localObject;
    v69 = 2114;
    v70 = processName;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Broadcast: Received acknowledgement for message stored as %{public}@ real guid %{public}@ from localObject %p processName %{public}@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    localObject3 = [contextCopy localObject];
    localObject4 = [contextCopy localObject];
    [localObject4 processName];
    v52 = v51 = localObject3;
    v47 = dCopy;
    v50 = iDCopy;
    _IDSLogTransport();
  }

  localObject5 = [contextCopy localObject];
  v28 = [(IDSDaemon *)self accountWithIdentifier:uniqueIDCopy localObject:localObject5 requiredEntitlement:kIDSMessagingEntitlement];

  if (v28)
  {
    if (broadcastID >= 1)
    {
      v29 = +[IDSDaemonPriorityQueueController sharedInstance];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10069179C;
      v56[3] = &unk_100BE3F60;
      v57 = v28;
      selfCopy = self;
      broadcastIDCopy = broadcastID;
      v59 = iDCopy;
      v60 = priorityCopy;
      typeCopy = type;
      [v29 performBlock:v56 withImplicitPriority:{objc_msgSend(v60, "intValue")}];
    }

    if (dCopy)
    {
      [IDSDMessageStore deleteIncomingMessageWithGUID:dCopy];
    }

    if (timeCopy)
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        service = [v28 service];
        identifier = [service identifier];
        *buf = 138412802;
        v64 = identifier;
        v65 = 2112;
        v66 = dCopy;
        v67 = 2112;
        v68 = timeCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Message on %@ with storage guid %@ experienced broadcast time %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          service2 = [v28 service];
          identifier2 = [service2 identifier];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            service3 = [v28 service];
            identifier3 = [service3 identifier];
            _IDSLogV();
          }
        }
      }

      v35 = [IDSClientProcessReceivedMessageMetric alloc];
      service4 = [v28 service];
      identifier4 = [service4 identifier];
      unsignedIntegerValue = [sizeCopy unsignedIntegerValue];
      [timeCopy doubleValue];
      v40 = [v35 initWithServiceIdentifier:identifier4 messageSize:unsignedIntegerValue deltaTime:(v39 * 1000.0) priority:{objc_msgSend(priorityCopy, "integerValue")}];

      v41 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v41 logMetric:v40];

      v42 = +[IDSAWDLogging sharedInstance];
      service5 = [v28 service];
      identifier5 = [service5 identifier];
      unsignedIntegerValue2 = [sizeCopy unsignedIntegerValue];
      [timeCopy doubleValue];
      [v42 clientProcessReceivedMessage:identifier5 messageSize:unsignedIntegerValue2 deltaTime:(v46 * 1000.0) priority:{objc_msgSend(priorityCopy, "integerValue")}];
    }
  }
}

- (void)acknowledgeMessageWithGUID:(id)d forAccountWithUniqueID:(id)iD broadcastTime:(id)time messageSize:(id)size priority:(id)priority messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  timeCopy = time;
  sizeCopy = size;
  priorityCopy = priority;
  contextCopy = context;
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412546;
    v46 = dCopy;
    v47 = 2048;
    v48 = localObject;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received acknowledgement for message %@ from localObject %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v42 = v39 = dCopy;
    _IDSLogV();
  }

  localObject2 = [contextCopy localObject];
  v21 = [(IDSDaemon *)self accountWithIdentifier:iDCopy localObject:localObject2 requiredEntitlement:kIDSMessagingEntitlement];

  if (v21)
  {
    if (dCopy)
    {
      [IDSDMessageStore deleteIncomingMessageWithGUID:dCopy];
    }

    if (timeCopy)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        service = [v21 service];
        identifier = [service identifier];
        *buf = 138412802;
        v46 = identifier;
        v47 = 2112;
        v48 = dCopy;
        v49 = 2112;
        v50 = timeCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Message on %@ with storage guid %@ experienced broadcast time %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          service2 = [v21 service];
          identifier2 = [service2 identifier];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            service3 = [v21 service];
            identifier3 = [service3 identifier];
            _IDSLogV();
          }
        }
      }

      v27 = [IDSClientProcessReceivedMessageMetric alloc];
      service4 = [v21 service];
      identifier4 = [service4 identifier];
      unsignedIntegerValue = [sizeCopy unsignedIntegerValue];
      [timeCopy doubleValue];
      v32 = [v27 initWithServiceIdentifier:identifier4 messageSize:unsignedIntegerValue deltaTime:(v31 * 1000.0) priority:{objc_msgSend(priorityCopy, "integerValue")}];

      v33 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v33 logMetric:v32];

      v34 = +[IDSAWDLogging sharedInstance];
      service5 = [v21 service];
      identifier5 = [service5 identifier];
      unsignedIntegerValue2 = [sizeCopy unsignedIntegerValue];
      [timeCopy doubleValue];
      [v34 clientProcessReceivedMessage:identifier5 messageSize:unsignedIntegerValue2 deltaTime:(v38 * 1000.0) priority:{objc_msgSend(priorityCopy, "integerValue")}];
    }
  }
}

- (void)sendAppAckWithGUID:(id)d toDestination:(id)destination forAccountWithUniqueID:(id)iD connectionType:(int64_t)type messageContext:(id)context
{
  dCopy = d;
  destinationCopy = destination;
  iDCopy = iD;
  contextCopy = context;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412802;
    v32 = dCopy;
    v33 = 2112;
    v34 = destinationCopy;
    v35 = 2048;
    v36 = localObject;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request to send app-level ack for message %@ to %@ from localObject %p", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject2 = [contextCopy localObject];
    _IDSLogV();
  }

  if (dCopy && destinationCopy)
  {
    localObject3 = [contextCopy localObject];
    v18 = [(IDSDaemon *)self accountWithIdentifier:iDCopy localObject:localObject3 requiredEntitlement:kIDSMessagingEntitlement];

    if (v18)
    {
      v19 = [NSArray arrayWithObject:destinationCopy];
      v27 = sub_10043996C(v19, v18);

      v20 = [NSSet setWithArray:v27];
      v21 = [IDSDestination destinationWithStrings:v20];

      v22 = objc_alloc_init(IDSSendParameters);
      v23 = +[NSDictionary dictionary];
      [v22 setMessage:v23];

      [v22 setDestinations:v21];
      [v22 setUseDictAsTopLevel:1];
      [v22 setPeerResponseIdentifier:dCopy];
      v24 = [NSNumber numberWithInteger:244];
      [v22 setCommand:v24];

      [v22 setPriority:300];
      v25 = [NSNumber numberWithLongLong:[(IDSDaemon *)self _messageTypeForConnection:type]];
      [v22 setMessageType:v25];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1006921C4;
      v29[3] = &unk_100BD9D10;
      v30 = dCopy;
      [v18 sendMessageWithSendParameters:v22 willSendBlock:0 completionBlock:v29];
    }
  }
}

- (int64_t)_messageTypeForConnection:(int64_t)connection
{
  v3 = 4;
  if (connection != 1)
  {
    v3 = 1;
  }

  if (connection == 2)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_checkIfDupeAndNoteGuid:(id)guid local:(BOOL)local topic:(id)topic forceNoteGuid:(BOOL)noteGuid
{
  noteGuidCopy = noteGuid;
  localCopy = local;
  guidCopy = guid;
  topicCopy = topic;
  if ([guidCopy length])
  {
    serviceController = [(IDSDaemon *)self serviceController];
    v13 = [serviceController serviceWithIdentifier:topicCopy];

    if ([v13 allowsDuplicates])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }

    pthread_mutex_lock(&self->_localIncomingGUIDsLock);
    first = [(IMPair *)self->_localIncomingGUIDs first];
    if ([first containsObject:guidCopy])
    {

      v14 = 1;
      if (!localCopy)
      {
        goto LABEL_25;
      }
    }

    else
    {
      second = [(IMPair *)self->_localIncomingGUIDs second];
      v17 = [second containsObject:guidCopy];

      if (!localCopy)
      {
        if (v17)
        {
          v14 = 1;
        }

        else
        {
          if ([topicCopy containsString:@"continuity"])
          {
            v19 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v28 = guidCopy;
              v29 = 2112;
              v30 = @"Cloud Fallback";
              v31 = 2112;
              v32 = topicCopy;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "The delivery path for message with guid %@ is %@, service: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v25 = @"Cloud Fallback";
              v26 = topicCopy;
              v24 = guidCopy;
              _IDSLogV();
            }
          }

          v14 = 0;
        }

        goto LABEL_25;
      }

      if ((v17 & 1) == 0)
      {
        first2 = [(IMPair *)self->_remoteIncomingGUIDs first];
        if ([first2 containsObject:guidCopy])
        {
        }

        else
        {
          second2 = [(IMPair *)self->_remoteIncomingGUIDs second];
          v21 = [second2 containsObject:guidCopy];

          if ((v21 & 1) == 0)
          {
            if ([topicCopy containsString:@"continuity"])
            {
              v23 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v28 = guidCopy;
                v29 = 2112;
                v30 = @"Local";
                v31 = 2112;
                v32 = topicCopy;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "The delivery path for message with guid %@ is %@, service: %@", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v25 = @"Local";
                v26 = topicCopy;
                v24 = guidCopy;
                _IDSLogV();
              }
            }

            v14 = 0;
            if (!localCopy)
            {
              goto LABEL_25;
            }

LABEL_24:
            if (!noteGuidCopy)
            {
LABEL_26:
              pthread_mutex_unlock(&self->_localIncomingGUIDsLock);
              goto LABEL_27;
            }

LABEL_25:
            [(IDSDaemon *)self _addIncomingGUIDsWithGuid:guidCopy isLocal:localCopy hasLock:1, v24, v25, v26];
            goto LABEL_26;
          }
        }
      }

      v14 = 1;
    }

    if (!localCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (BOOL)shouldProxyMessageForService:(id)service toIdentifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  im_assert_primary_base_queue();
  pairingManager = [(IDSDaemon *)self pairingManager];
  isPaired = [pairingManager isPaired];

  if (isPaired && (-[IDSDaemon pairingManager](self, "pairingManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 activePairedDeviceHasPairingType:1], v10, (v11 & 1) == 0) && objc_msgSend(serviceCopy, "shouldAllowProxyDelivery"))
  {
    v12 = +[IDSDAccountController sharedInstance];
    v36 = [v12 accountsOnService:serviceCopy];

    if ([v36 count] == 1)
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Only 1 account exists on this service, We will need to proxy this message to our local device for broadcast", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v14 = 1;
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v36;
      v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v35)
      {
        v32 = *v42;
        v31 = IDSDevicePropertyIdentities;
        v16 = IDSDevicePropertyIdentitiesURI;
        do
        {
          v17 = 0;
          do
          {
            if (*v42 != v32)
            {
              v18 = v17;
              objc_enumerationMutation(obj);
              v17 = v18;
            }

            v33 = v17;
            defaultPairedDependentRegistration = [*(*(&v41 + 1) + 8 * v17) defaultPairedDependentRegistration];
            if (defaultPairedDependentRegistration)
            {
              v20 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = defaultPairedDependentRegistration;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v29 = defaultPairedDependentRegistration;
                _IDSLogV();
              }

              v21 = [defaultPairedDependentRegistration _arrayForKey:{v31, v29}];
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v37 objects:v49 count:16];
              if (v23)
              {
                v24 = *v38;
                while (2)
                {
                  for (i = 0; i != v23; i = i + 1)
                  {
                    if (*v38 != v24)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v26 = [*(*(&v37 + 1) + 8 * i) _stringForKey:{v16, v29}];
                    v27 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v46 = v26;
                      v47 = 2112;
                      v48 = identifierCopy;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v29 = v26;
                      v30 = identifierCopy;
                      _IDSLogV();
                    }

                    v28 = _FTAreIDsEquivalent();

                    if (v28)
                    {

                      v14 = 0;
                      goto LABEL_43;
                    }
                  }

                  v23 = [v22 countByEnumeratingWithState:&v37 objects:v49 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v17 = v33 + 1;
          }

          while ((v33 + 1) != v35);
          v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
          v14 = 1;
        }

        while (v35);
      }

      else
      {
        v14 = 1;
      }

LABEL_43:
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_shouldMessageBeProxied:(id)proxied service:(id)service
{
  proxiedCopy = proxied;
  serviceCopy = service;
  pushTopic = [serviceCopy pushTopic];
  v8 = [pushTopic isEqualToString:@"com.apple.madrid"];

  if (v8 && ([proxiedCopy command], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToNumber:", &off_100C3D1E0), v9, v10) && (objc_msgSend(proxiedCopy, "dataToEncrypt"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID = [proxiedCopy messageUUID];
      *buf = 138412290;
      v19 = messageUUID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not Proxying this message %@ payload is currently a typing indicator", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      messageUUID2 = [proxiedCopy messageUUID];
      _IDSLogV();
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)params service:(id)service
{
  paramsCopy = params;
  serviceCopy = service;
  fromID = [paramsCopy fromID];
  im_assert_primary_base_queue();
  pairingManager = [(IDSDaemon *)self pairingManager];
  isPaired = [pairingManager isPaired];

  if (!isPaired)
  {
    goto LABEL_5;
  }

  if (![serviceCopy shouldAllowProxyDelivery])
  {
    goto LABEL_5;
  }

  pairingManager2 = [(IDSDaemon *)self pairingManager];
  isCurrentDeviceTinkerConfiguredWatch = [pairingManager2 isCurrentDeviceTinkerConfiguredWatch];

  if (isCurrentDeviceTinkerConfiguredWatch)
  {
    goto LABEL_5;
  }

  pairingManager3 = [(IDSDaemon *)self pairingManager];
  v14 = [pairingManager3 activePairedDeviceHasPairingType:1];

  if (v14)
  {
    goto LABEL_5;
  }

  pushTopic = [serviceCopy pushTopic];
  v18 = IDSServiceNameiMessage;
  if (![pushTopic isEqualToString:IDSServiceNameiMessage])
  {
    goto LABEL_14;
  }

  command = [paramsCopy command];
  if (![command isEqualToNumber:&off_100C3CEE0] || (objc_msgSend(paramsCopy, "deliveryMinimumTime"), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_14:
    goto LABEL_15;
  }

  queueOneIdentifier = [paramsCopy queueOneIdentifier];

  if (queueOneIdentifier)
  {
    pairingManager4 = [(IDSDaemon *)self pairingManager];
    pairedDeviceSupportsSendLaterMessages = [pairingManager4 pairedDeviceSupportsSendLaterMessages];

    if ((pairedDeviceSupportsSendLaterMessages & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_15:
  pushTopic2 = [serviceCopy pushTopic];
  if ([pushTopic2 isEqualToString:v18])
  {
    command2 = [paramsCopy command];
    v26 = [command2 isEqualToNumber:&off_100C3D1F8];

    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

LABEL_19:
  v27 = +[IDSDAccountController sharedInstance];
  v46 = [v27 accountsOnService:serviceCopy];

  if ([v46 count] == 1)
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Only 1 account exists on this service, We will need to proxy this and include the default device as a destination for the message as well", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v15 = 1;
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v46;
    v44 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v44)
    {
      v42 = *v53;
      v41 = IDSDevicePropertyIdentities;
      v29 = IDSDevicePropertyIdentitiesURI;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v53 != v42)
          {
            objc_enumerationMutation(obj);
          }

          defaultPairedDependentRegistration = [*(*(&v52 + 1) + 8 * i) defaultPairedDependentRegistration];
          if (defaultPairedDependentRegistration)
          {
            v30 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = defaultPairedDependentRegistration;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = defaultPairedDependentRegistration;
              _IDSLogV();
            }

            v31 = [defaultPairedDependentRegistration objectForKey:{v41, v39}];
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v32 = v31;
            v33 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v33)
            {
              v34 = *v49;
              while (2)
              {
                for (j = 0; j != v33; j = j + 1)
                {
                  if (*v49 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v36 = [*(*(&v48 + 1) + 8 * j) _stringForKey:{v29, v39}];
                  v37 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v57 = v36;
                    v58 = 2112;
                    v59 = fromID;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v39 = v36;
                    v40 = fromID;
                    _IDSLogV();
                  }

                  if (_FTAreIDsEquivalent())
                  {
                    v38 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "These ID's are the same, We will not be proxying this message", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }

                    v15 = 0;
                    goto LABEL_61;
                  }
                }

                v33 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
                if (v33)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
        v15 = 1;
      }

      while (v44);
    }

    else
    {
      v15 = 1;
    }

LABEL_61:
  }

LABEL_6:
  return v15;
}

- (BOOL)_isDeviceInAccountRegistration:(id)registration forService:(id)service
{
  registrationCopy = registration;
  serviceCopy = service;
  v7 = serviceCopy;
  if (registrationCopy && [serviceCopy length])
  {
    v8 = +[IDSDAccountController sharedInstance];
    v9 = +[IDSDServiceController sharedInstance];
    v25 = v7;
    v10 = [v9 serviceWithPushTopic:v7];
    v11 = [v8 accountsOnService:v10];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v29)
    {
      v27 = 0;
      v28 = *v35;
      v12 = IDSDevicePropertyPushToken;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          dependentRegistrations = [v14 dependentRegistrations];
          v16 = [dependentRegistrations countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(dependentRegistrations);
                }

                v20 = [*(*(&v30 + 1) + 8 * j) _dataForKey:v12];
                rawToken = [registrationCopy rawToken];
                v22 = [v20 isEqualToData:rawToken];

                if (v22)
                {
                  v27 = 1;
                  goto LABEL_18;
                }
              }

              v17 = [dependentRegistrations countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }

        v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v29);
    }

    else
    {
      v27 = 0;
    }

    v7 = v25;
    v23 = v27;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (unsigned)_dedupBehaviorForNiceMessage:(id)message
{
  messageCopy = message;
  certifiedDeliveryVersion = [messageCopy certifiedDeliveryVersion];
  storageFlags = [messageCopy storageFlags];
  if ([certifiedDeliveryVersion integerValue] < 1 || objc_msgSend(storageFlags, "integerValue") < 1)
  {
    v7 = 0;
  }

  else
  {
    retryCount = [messageCopy retryCount];
    if ([retryCount integerValue] <= 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  return v7;
}

- (void)_registerSysdiagnoseBlock
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v2 = +[IDSDiagnosticInfoHandler sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006939E0;
    v7[3] = &unk_100BDAB58;
    v3 = &v8;
    objc_copyWeak(&v8, &location);
    v4 = im_primary_queue();
    [v2 registerDiagnosticInfoBlock:v7 title:@"IDS-DAEMON-MESSAGING" queue:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100693AEC;
    v5[3] = &unk_100BDAB80;
    v3 = &v6;
    objc_copyWeak(&v6, &location);
    v2 = im_primary_queue();
    sub_1006085C4(v5, @"IDS-DAEMON-MESSAGING", v2);
  }

  objc_destroyWeak(v3);
  objc_destroyWeak(&location);
}

- (BOOL)_checkContinuityEntitlementForMessageContext:(id)context
{
  localObject = [context localObject];
  LOBYTE(self) = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:kIDSContinuityEntitlement];

  return self;
}

- (void)continuityClientInstanceCreatedWithMessageContext:(id)context
{
  contextCopy = context;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:?])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager clientInstanceCreatedWithMessageContext:contextCopy];
  }
}

- (void)continuityStartAdvertisingOfType:(int64_t)type withData:(id)data withOptions:(id)options messageContext:(id)context
{
  dataCopy = data;
  optionsCopy = options;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager startAdvertisingOfType:type withData:dataCopy withOptions:optionsCopy];
  }
}

- (void)continuityStopAdvertisingOfType:(int64_t)type messageContext:(id)context
{
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager stopAdvertisingOfType:type];
  }
}

- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers messageContext:(id)context
{
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager startScanningForType:type withData:dataCopy mask:maskCopy peers:peersCopy];
  }
}

- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask messageContext:(id)context
{
  dataCopy = data;
  maskCopy = mask;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager startScanningForType:type withData:dataCopy mask:maskCopy];
  }
}

- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask peers:(id)peers boostedScan:(BOOL)scan duplicates:(BOOL)duplicates messageContext:(id)context
{
  duplicatesCopy = duplicates;
  scanCopy = scan;
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager startScanningForType:type withData:dataCopy mask:maskCopy peers:peersCopy boostedScan:scanCopy duplicates:duplicatesCopy];
  }
}

- (void)continuityStartScanningForType:(int64_t)type withData:(id)data mask:(id)mask boostedScan:(BOOL)scan duplicates:(BOOL)duplicates messageContext:(id)context
{
  duplicatesCopy = duplicates;
  scanCopy = scan;
  dataCopy = data;
  maskCopy = mask;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager startScanningForType:type withData:dataCopy mask:maskCopy boostedScan:scanCopy duplicates:duplicatesCopy];
  }
}

- (void)continuityStopScanningForType:(int64_t)type messageContext:(id)context
{
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager stopScanningForType:type];
  }
}

- (void)continuityStartTrackingPeer:(id)peer forType:(int64_t)type messageContext:(id)context
{
  peerCopy = peer;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager continuityStartTrackingPeer:peerCopy forType:type];
  }
}

- (void)continuityStopTrackingPeer:(id)peer forType:(int64_t)type messageContext:(id)context
{
  peerCopy = peer;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:context])
  {
    wpLinkManager = [(IDSDaemon *)self wpLinkManager];
    [wpLinkManager continuityStopTrackingPeer:peerCopy forType:type];
  }
}

- (void)reportiMessageSpam:(id)spam toURI:(id)i messageContext:(id)context
{
  spamCopy = spam;
  iCopy = i;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412290;
    v23 = localObject;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Told to report iMessage spam with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject2 = [contextCopy localObject];
    _IDSLogV();
  }

  localObject3 = [contextCopy localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v14)
  {
    _stripFZIDPrefix = [iCopy _stripFZIDPrefix];
    _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

    v17 = +[IDSDAccountController sharedInstance];
    v18 = [v17 accountWithServiceName:@"com.apple.madrid" aliasURI:_bestGuessURI];

    if (v18)
    {
      [v18 reportSpamWithMessages:spamCopy toURI:_bestGuessURI];
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = _bestGuessURI;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Couldn't find iMessage account with alias %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    iCopy = _bestGuessURI;
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Process not entitled to report iMessage spam", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i messageContext:(id)context
{
  junkedCopy = junked;
  blackholedCopy = blackholed;
  senderCopy = sender;
  dCopy = d;
  timestampCopy = timestamp;
  iCopy = i;
  contextCopy = context;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412290;
    v32 = localObject;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Told to report iMessage unknown sender with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject2 = [contextCopy localObject];
    _IDSLogV();
  }

  localObject3 = [contextCopy localObject];
  v23 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v23)
  {
    _stripFZIDPrefix = [iCopy _stripFZIDPrefix];
    _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

    v26 = +[IDSDAccountController sharedInstance];
    v27 = [v26 accountWithServiceName:@"com.apple.madrid" aliasURI:_bestGuessURI];

    if (v27)
    {
      [v27 reportiMessageUnknownSender:senderCopy messageID:dCopy isBlackholed:blackholedCopy isJunked:junkedCopy messageServerTimestamp:timestampCopy toURI:_bestGuessURI];
    }

    else
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = _bestGuessURI;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Couldn't find iMessage account with alias %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    iCopy = _bestGuessURI;
  }

  else
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Process not entitled to report iMessage unknown sender", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)reportiMessageSpamCheckUnknown:(id)unknown count:(id)count requestID:(id)d messageContext:(id)context
{
  unknownCopy = unknown;
  countCopy = count;
  dCopy = d;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412290;
    v25 = localObject;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Told to check unknown sender with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    localObject2 = [contextCopy localObject];
    _IDSLogV();
  }

  localObject3 = [contextCopy localObject];
  v17 = [(IDSDaemon *)self validateListenerForLocalObject:localObject3 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v17)
  {
    v18 = +[IDSRegistrationCenter sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006DA148;
    v21[3] = &unk_100BE59B0;
    v21[4] = self;
    v22 = contextCopy;
    v23 = dCopy;
    [v18 reportiMessageSpamCheckUnknown:unknownCopy count:countCopy completionBlock:v21];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Process not entitled to check unknown sender", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)_checkEntitlement:(id)entitlement forAccountWithID:(id)d messageContext:(id)context
{
  entitlementCopy = entitlement;
  dCopy = d;
  contextCopy = context;
  v11 = +[IDSDAccountController sharedInstance];
  v12 = [v11 accountWithUniqueID:dCopy];

  if (v12)
  {
    localObject = [contextCopy localObject];
    service = [v12 service];
    identifier = [service identifier];
    v16 = [(IDSDaemon *)self validateListenerForLocalObject:localObject andCheckEntitlement:entitlementCopy forAccessToServiceWithIdentifier:identifier];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No account found for ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    IMLogBacktrace();
    v16 = 0;
  }

  return v16;
}

- (id)_sessionWithUniqueID:(id)d messageContext:(id)context requiredEntitlement:(id)entitlement
{
  contextCopy = context;
  entitlementCopy = entitlement;
  dCopy = d;
  v11 = +[IDSDSessionController sharedInstance];
  v12 = [v11 sessionWithUniqueID:dCopy];

  if (v12 && ([v12 accountID], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[IDSDaemon _checkEntitlement:forAccountWithID:messageContext:](self, "_checkEntitlement:forAccountWithID:messageContext:", entitlementCopy, v13, contextCopy), v13, v14))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_sessionWithInstanceID:(id)d messageContext:(id)context requiredEntitlement:(id)entitlement
{
  contextCopy = context;
  entitlementCopy = entitlement;
  dCopy = d;
  v11 = +[IDSDSessionController sharedInstance];
  v12 = [v11 sessionWithInstanceID:dCopy];

  if (v12 && ([v12 accountID], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[IDSDaemon _checkEntitlement:forAccountWithID:messageContext:](self, "_checkEntitlement:forAccountWithID:messageContext:", entitlementCopy, v13, contextCopy), v13, v14))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setupNewSessionWithConfiguration:(id)configuration messageContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setupNewSession configuration: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = configurationCopy;
    _IDSLogV();
  }

  v9 = [configurationCopy objectForKey:{IDSSessionAccountIDKey, v15}];
  if ([(IDSDaemon *)self _checkEntitlement:kIDSSessionEntitlement forAccountWithID:v9 messageContext:contextCopy])
  {
    v10 = [configurationCopy objectForKey:IDSSessionClientID];
    v11 = +[IDSDSessionController sharedInstance];
    v12 = [v11 setupNewOutgoingSessionWithOptions:configurationCopy];

    localObject = [contextCopy localObject];
    v14 = sub_10000BE90(v10, localObject);
    [v12 setClientID:v14];
  }
}

- (void)cleanupSession:(id)session messageContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412546;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cleanup session %@ local object %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v14 = v13 = sessionCopy;
    _IDSLogV();
  }

  v10 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v13, v14];
  if (v10)
  {
    v11 = +[IDSDSessionController sharedInstance];
    [v11 cleanupSession:sessionCopy shouldCleanSessionStatus:1];
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find session with uniqueID %@ to clean up, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)cleanupSessionWithInstanceID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localObject = [contextCopy localObject];
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = localObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cleanup session instance %@ local object %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [contextCopy localObject];
    v14 = v13 = dCopy;
    _IDSLogV();
  }

  v10 = [(IDSDaemon *)self _sessionWithInstanceID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v13, v14];
  if (v10)
  {
    v11 = +[IDSDSessionController sharedInstance];
    [v11 cleanupSessionWithInstanceID:dCopy];
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find session with instanceID %@ to clean up, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)sendInvitation:(id)invitation withOptions:(id)options messageContext:(id)context
{
  invitationCopy = invitation;
  optionsCopy = options;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = invitationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = invitationCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15];
  v13 = v12;
  if (v12)
  {
    [v12 sendInvitationWithOptions:optionsCopy declineOnError:0];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"IDSDaemon";
      v18 = 2112;
      v19 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to send invitation, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)sendInvitation:(id)invitation withData:(id)data declineOnError:(BOOL)error messageContext:(id)context
{
  errorCopy = error;
  invitationCopy = invitation;
  dataCopy = data;
  contextCopy = context;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 138412802;
    v23 = invitationCopy;
    v24 = 2112;
    if (errorCopy)
    {
      v14 = @"YES";
    }

    v25 = dataCopy;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendInvitation %@ with data %@ declineOnError %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = @"NO";
    if (errorCopy)
    {
      v15 = @"YES";
    }

    v20 = dataCopy;
    v21 = v15;
    v19 = invitationCopy;
    _IDSLogV();
  }

  v16 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v19, v20, v21];
  v17 = v16;
  if (v16)
  {
    [v16 sendInvitationWithData:dataCopy declineOnError:errorCopy];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = @"IDSDaemon";
      v24 = 2112;
      v25 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to send invitation with data to, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)acceptInvitation:(id)invitation messageContext:(id)context
{
  invitationCopy = invitation;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = invitationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "acceptInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = invitationCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 acceptInvitation];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to accept invitation, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)acceptInvitation:(id)invitation withData:(id)data messageContext:(id)context
{
  invitationCopy = invitation;
  dataCopy = data;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = invitationCopy;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "acceptInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = invitationCopy;
    v16 = dataCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 acceptInvitationWithData:dataCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to accept invitation with data with, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)cancelInvitation:(id)invitation messageContext:(id)context
{
  invitationCopy = invitation;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = invitationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = invitationCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 cancelInvitation];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to cancel invitation, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)cancelInvitation:(id)invitation withData:(id)data messageContext:(id)context
{
  invitationCopy = invitation;
  dataCopy = data;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = invitationCopy;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = invitationCopy;
    v16 = dataCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 cancelInvitationWithData:dataCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to cancel invitation with data with, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)cancelInvitation:(id)invitation withRemoteEndedReasonOverride:(unsigned int)override messageContext:(id)context
{
  v6 = *&override;
  invitationCopy = invitation;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = invitationCopy;
    v18 = 1024;
    LODWORD(v19) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@ with remote ended reason override %u", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = invitationCopy;
    v15 = v6;
    _IDSLogV();
  }

  v11 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v14, v15];
  v12 = v11;
  if (v11)
  {
    [v11 cancelInvitationWithRemoteEndedReasonOverride:v6];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"IDSDaemon";
      v18 = 2112;
      v19 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to cancel invitation with remote ended reason override with, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)declineInvitation:(id)invitation messageContext:(id)context
{
  invitationCopy = invitation;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = invitationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "declineInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = invitationCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 declineInvitation];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to decline invitation, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)declineInvitation:(id)invitation withData:(id)data messageContext:(id)context
{
  invitationCopy = invitation;
  dataCopy = data;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = invitationCopy;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "declineInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = invitationCopy;
    v16 = dataCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:invitationCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 declineInvitationWithData:dataCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = invitationCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to decline invitation with data with, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)reconnectSessionWithUniqueID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reconnectSessionWithUniqueID %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = dCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 reconnectSession];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to reconnect session, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)endSession:(id)session messageContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "endSession %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = sessionCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 endSession];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to end session, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)endSession:(id)session withData:(id)data messageContext:(id)context
{
  sessionCopy = session;
  dataCopy = data;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = sessionCopy;
    v19 = 2048;
    v20 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "endSessionWithData %@ (data length %lu)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = sessionCopy;
    v16 = [dataCopy length];
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 endSessionWithData:dataCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to end session with data, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)sendSessionMessage:(id)message toDestinations:(id)destinations forSessionWithUniqueID:(id)d messageContext:(id)context
{
  messageCopy = message;
  destinationsCopy = destinations;
  dCopy = d;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = messageCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendSessionMessage %@ to session %@ with context %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = dCopy;
    v20 = contextCopy;
    v18 = messageCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionPrivateEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 sendSessionMessage:messageCopy toDestinations:destinationsCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to send message to, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setAudioEnabled:(BOOL)enabled forSessionWithUniqueID:(id)d messageContext:(id)context
{
  enabledCopy = enabled;
  dCopy = d;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (enabledCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = dCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setAudioEnabled:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (enabledCopy)
    {
      v12 = @"YES";
    }

    v16 = dCopy;
    v17 = v12;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setAudioEnabled:enabledCopy];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set audio enabled, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setMuted:(BOOL)muted forSessionWithUniqueID:(id)d messageContext:(id)context
{
  mutedCopy = muted;
  dCopy = d;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (mutedCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = dCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setMuted:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (mutedCopy)
    {
      v12 = @"YES";
    }

    v16 = dCopy;
    v17 = v12;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setMuted:mutedCopy];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set muted, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setPreferences:(id)preferences forSessionWithUniqueID:(id)d messageContext:(id)context
{
  preferencesCopy = preferences;
  dCopy = d;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = dCopy;
    v19 = 2112;
    v20 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setPreferences:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = dCopy;
    v16 = preferencesCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 setPreferences:preferencesCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set preferences, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setLinkSelectionStrategyWithData:(id)data forSessionWithUniqueID:(id)d messageContext:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = dCopy;
    v19 = 2112;
    v20 = dataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setLinkSelectionStrategyWithData:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = dCopy;
    v16 = dataCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 setLinkSelectionStrategyWithData:dataCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set link selection strategy, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities forSessionWithUniqueID:(id)d messageContext:(id)context
{
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  dCopy = d;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = dCopy;
    v23 = 2112;
    v24 = capabilitiesCopy;
    v25 = 2112;
    v26 = ofCapabilitiesCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setRequiredCapabilities:requiredCapabilities:forSessionWithUniqueID %@ %@ %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = capabilitiesCopy;
    v20 = ofCapabilitiesCopy;
    v18 = dCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 setRequiredCapabilities:capabilitiesCopy requiredLackOfCapabilities:ofCapabilitiesCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set preferences, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setInviteTimetout:(int64_t)timetout forSessionWithUniqueID:(id)d messageContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = dCopy;
    v18 = 2048;
    timetoutCopy = timetout;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setInviteTimeout:forSessionWithUniqueID %@ %ld", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = dCopy;
    timetoutCopy2 = timetout;
    _IDSLogV();
  }

  timetoutCopy2 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v14, timetoutCopy2];
  v12 = timetoutCopy2;
  if (timetoutCopy2)
  {
    [timetoutCopy2 setInviteTimeout:timetout];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"IDSDaemon";
      v18 = 2112;
      timetoutCopy = dCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to set invite timeout, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)acknowledgeSessionID:(id)d clientID:(id)iD messageContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = dCopy;
    v20 = 2112;
    v21 = iDCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "acknowledge sessionID: %@ clientID: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = dCopy;
    v17 = iDCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  if (v12)
  {
    localObject = [contextCopy localObject];
    v14 = sub_10000BE90(iDCopy, localObject);
    [v12 setClientID:v14];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to acknowledge session ID, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)sendAllocationRequest:(id)request options:(id)options messageContext:(id)context
{
  requestCopy = request;
  optionsCopy = options;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendAllocationRequest %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = requestCopy;
    _IDSLogV();
  }

  v12 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v12 isInternalInstall];

  if (isInternalInstall)
  {
    v14 = [(IDSDaemon *)self _sessionWithUniqueID:requestCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement];
    v15 = v14;
    if (v14)
    {
      [v14 sendAllocationRequest:optionsCopy];
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = @"IDSDaemon";
        v21 = 2112;
        v22 = requestCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to send allocation request, ignoring...", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = @"IDSDaemon";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ - Operation supported on internal install only", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)updateMembers:(id)members forGroup:(id)group sessionID:(id)d withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally lightweightStatusDict:(id)dict messageContext:(id)self0
{
  locallyCopy = locally;
  membersCopy = members;
  groupCopy = group;
  dCopy = d;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  dictCopy = dict;
  messageContextCopy = messageContext;
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [dictCopy count];
    v25 = @"NO";
    *buf = 138413570;
    *&buf[4] = membersCopy;
    if (locallyCopy)
    {
      v25 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = groupCopy;
    v37 = 2112;
    v38 = contextCopy;
    v39 = 2112;
    v40 = capabilitiesCopy;
    v41 = 2112;
    v42 = v25;
    v43 = 2048;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updateMembers %@, for Group %@, context %@, capabilities %@, triggered locally %@, lightweightStatusDict count:%lu", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (locallyCopy)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v34 = v26;
    v35 = [dictCopy count];
    v32 = contextCopy;
    v33 = capabilitiesCopy;
    v30 = membersCopy;
    v31 = groupCopy;
    _IDSLogV();
  }

  v27 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:messageContextCopy requiredEntitlement:kIDSSessionEntitlement, v30, v31, v32, v33, v34, v35, *buf];
  v28 = v27;
  if (v27)
  {
    [v27 updateMembers:membersCopy withContext:contextCopy messagingCapabilities:capabilitiesCopy triggeredLocally:locallyCopy lightweightStatusDict:dictCopy];
  }

  else
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = @"IDSDaemon";
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)manageDesignatedMembers:(id)members forGroup:(id)group sessionID:(id)d withType:(unsigned __int16)type messageContext:(id)context
{
  typeCopy = type;
  membersCopy = members;
  groupCopy = group;
  dCopy = d;
  contextCopy = context;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = membersCopy;
    v25 = 2112;
    v26 = groupCopy;
    v27 = 1024;
    v28 = typeCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "manageDesignatedMembers %@, for Group %@, type: %u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = groupCopy;
    v22 = typeCopy;
    v20 = membersCopy;
    _IDSLogV();
  }

  v17 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v20, v21, v22];
  v18 = v17;
  if (v17)
  {
    [v17 manageDesignatedMembers:membersCopy withType:typeCopy];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = @"IDSDaemon";
      v25 = 2112;
      v26 = dCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)removeParticipantIDs:(id)ds forGroup:(id)group sessionID:(id)d messageContext:(id)context
{
  dsCopy = ds;
  groupCopy = group;
  dCopy = d;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = dsCopy;
    v22 = 2112;
    v23 = groupCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "removeParticipantIDs %@, for Group %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = dsCopy;
    v19 = groupCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v18, v19];
  v16 = v15;
  if (v15)
  {
    [v15 removeParticipantIDs:dsCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = @"IDSDaemon";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to removeParticipantIDs, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)updateParticipantData:(id)data forGroup:(id)group sessionID:(id)d withContext:(id)context messageContext:(id)messageContext
{
  dataCopy = data;
  groupCopy = group;
  dCopy = d;
  contextCopy = context;
  messageContextCopy = messageContext;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = dataCopy;
    v26 = 2112;
    v27 = groupCopy;
    v28 = 2112;
    v29 = contextCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "updateParticipantData %@, for Group %@, context %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = groupCopy;
    v23 = contextCopy;
    v21 = dataCopy;
    _IDSLogV();
  }

  v18 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:messageContextCopy requiredEntitlement:kIDSSessionEntitlement, v21, v22, v23];
  v19 = v18;
  if (v18)
  {
    [v18 updateParticipantData:dataCopy withContext:contextCopy];
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = @"IDSDaemon";
      v26 = 2112;
      v27 = dCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)updateParticipantInfo:(id)info forGroup:(id)group sessionID:(id)d messageContext:(id)context
{
  infoCopy = info;
  groupCopy = group;
  dCopy = d;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = infoCopy;
    v22 = 2112;
    v23 = groupCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateParticipantData %@, for Group %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = infoCopy;
    v19 = groupCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v18, v19];
  v16 = v15;
  if (v15)
  {
    [v15 updateParticipantInfo:infoCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = @"IDSDaemon";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)updateParticipantType:(unsigned __int16)type forGroup:(id)group sessionID:(id)d members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict messageContext:(id)self0
{
  locallyCopy = locally;
  typeCopy = type;
  groupCopy = group;
  dCopy = d;
  membersCopy = members;
  contextCopy = context;
  dictCopy = dict;
  messageContextCopy = messageContext;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v30 = typeCopy;
    *&v30[4] = 2112;
    *&v30[6] = groupCopy;
    *&v30[14] = 2112;
    *&v30[16] = contextCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "updateParticipantType %u, for Group %@, context %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = groupCopy;
    v28 = contextCopy;
    v26 = typeCopy;
    _IDSLogV();
  }

  v23 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:messageContextCopy requiredEntitlement:kIDSSessionEntitlement, v26, v27, v28];
  v24 = v23;
  if (v23)
  {
    [v23 updateParticipantType:typeCopy members:membersCopy triggeredLocally:locallyCopy withContext:contextCopy lightweightStatusDict:dictCopy];
  }

  else
  {
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v30 = @"IDSDaemon";
      *&v30[8] = 2112;
      *&v30[10] = dCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update participantType, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)updateParticipantType:(unsigned __int16)type forGroup:(id)group sessionID:(id)d members:(id)members triggeredLocally:(BOOL)locally withContext:(id)context lightweightStatusDict:(id)dict timestamp:(double)self0 identifier:(unint64_t)self1 messageContext:(id)self2
{
  locallyCopy = locally;
  typeCopy = type;
  groupCopy = group;
  dCopy = d;
  membersCopy = members;
  contextCopy = context;
  dictCopy = dict;
  messageContextCopy = messageContext;
  v25 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v33 = typeCopy;
    *&v33[4] = 2112;
    *&v33[6] = groupCopy;
    *&v33[14] = 2112;
    *&v33[16] = contextCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "updateParticipantType %u, for Group %@, context %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v30 = groupCopy;
    v31 = contextCopy;
    v29 = typeCopy;
    _IDSLogV();
  }

  v26 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:messageContextCopy requiredEntitlement:kIDSSessionEntitlement, v29, v30, v31];
  v27 = v26;
  if (v26)
  {
    [v26 updateParticipantType:typeCopy members:membersCopy triggeredLocally:locallyCopy withContext:contextCopy lightweightStatusDict:dictCopy timestamp:identifier identifier:timestamp];
  }

  else
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v33 = @"IDSDaemon";
      *&v33[8] = 2112;
      *&v33[10] = dCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update participantType, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)joinGroupSession:(id)session withOptions:(id)options messageContext:(id)context
{
  sessionCopy = session;
  optionsCopy = options;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "joinGroupSession %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = sessionCopy;
    v16 = optionsCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 joinWithOptions:optionsCopy messageContext:contextCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to join group session, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setQuickRelayUserTypeForSession:(id)session withUserType:(unsigned __int16)type messageContext:(id)context
{
  typeCopy = type;
  sessionCopy = session;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = typeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setQuickRelayUserTypeForSession %u", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = typeCopy;
    _IDSLogV();
  }

  v11 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v14];
  v12 = v11;
  if (v11)
  {
    [v11 setQuickRelayUserTypeForSession:typeCopy];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = @"IDSDaemon";
      v17 = 2112;
      v18 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)leaveGroupSession:(id)session participantInfo:(id)info options:(id)options messageContext:(id)context
{
  sessionCopy = session;
  infoCopy = info;
  optionsCopy = options;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = infoCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "leaveGroupSession %@, participantInfo: %@ options: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = infoCopy;
    v20 = optionsCopy;
    v18 = sessionCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 leaveGroupSession:infoCopy options:optionsCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to leave group session, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)requestActiveParticipantsForGroupSession:(id)session messageContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestActiveParticipants for group session: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = sessionCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  if (v9)
  {
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100C3D4B0, IDSGlobalLinkOptionSessionInfoRequestTypeKey, 0];
    [v9 requestSessionInfoWithOptions:v10];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ for requestActiveParticipants, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)requestURIsForParticipantIDs:(id)ds withRequestID:(id)d forGroupSession:(id)session messageContext:(id)context
{
  dsCopy = ds;
  dCopy = d;
  sessionCopy = session;
  contextCopy = context;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs for group session: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = sessionCopy;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v18];
  v16 = v15;
  if (v15)
  {
    [v15 requestURIsForParticipantIDs:dsCopy withRequestID:dCopy];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = @"IDSDaemon";
      v21 = 2112;
      v22 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ for requestActiveParticipants, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)registerPluginForGroup:(id)group options:(id)options messageContext:(id)context
{
  groupCopy = group;
  optionsCopy = options;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = groupCopy;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "registerPluginForGroup %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = groupCopy;
    v16 = optionsCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:groupCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 registerPluginWithOptions:optionsCopy messageContext:contextCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = groupCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to register plugin, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)unregisterPluginForGroup:(id)group options:(id)options messageContext:(id)context
{
  groupCopy = group;
  optionsCopy = options;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = groupCopy;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "unregisterPluginForGroup %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = groupCopy;
    v16 = optionsCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:groupCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 unregisterPluginWithOptions:optionsCopy messageContext:contextCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = groupCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to unregister plugin, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)requestEncryptionKeyForGroup:(id)group participants:(id)participants messageContext:(id)context
{
  groupCopy = group;
  participantsCopy = participants;
  contextCopy = context;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = groupCopy;
    v20 = 2048;
    v21 = [participantsCopy count];
    v22 = 2112;
    v23 = participantsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "requestEncryptionKeyForGroup %@, for %lu participants %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = [participantsCopy count];
    v17 = participantsCopy;
    v15 = groupCopy;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:groupCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v15, v16, v17];
  v13 = v12;
  if (v12)
  {
    [v12 requestEncryptionKeyForParticipantIDs:participantsCopy];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to request encryption keys, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt sessionID:(id)iD messageContext:(id)context
{
  saltCopy = salt;
  iDCopy = iD;
  contextCopy = context;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    dCopy = d;
    v21 = 2112;
    v22 = saltCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    dCopy2 = d;
    v18 = saltCopy;
    _IDSLogV();
  }

  v14 = [(IDSDaemon *)self _sessionWithUniqueID:iDCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, dCopy2, v18];
  v15 = v14;
  if (v14)
  {
    [v14 createAliasForParticipantID:d salt:saltCopy];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      dCopy = @"IDSDaemon";
      v21 = 2112;
      v22 = iDCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt sessionID:(id)d messageContext:(id)context
{
  saltCopy = salt;
  dCopy = d;
  contextCopy = context;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    aliasCopy = alias;
    v21 = 2112;
    v22 = saltCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getParticipantIDForAlias %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    aliasCopy2 = alias;
    v18 = saltCopy;
    _IDSLogV();
  }

  v14 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, aliasCopy2, v18];
  v15 = v14;
  if (v14)
  {
    [v14 getParticipantIDForAlias:alias salt:saltCopy];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      aliasCopy = @"IDSDaemon";
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)enableP2PlinksForSession:(id)session messageContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enableP2PlinksForSession %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = sessionCopy;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:sessionCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v12];
  v10 = v9;
  if (v9)
  {
    [v9 enableP2Plinks];
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = @"IDSDaemon";
      v15 = 2112;
      v16 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to update members, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate forSessionWithUniqueID:(id)d messageContext:(id)context
{
  reinitiateCopy = reinitiate;
  dCopy = d;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (reinitiateCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setForceTCPFallbackOnWiFiUsingReinitiate: %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (reinitiateCopy)
    {
      v12 = @"YES";
    }

    v16 = v12;
    v17 = dCopy;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setForceTCPFallbackOnWiFiUsingReinitiate:reinitiateCopy];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to setForceTCPFallbackOnWiFiUsingReinitiate, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate forSessionWithUniqueID:(id)d messageContext:(id)context
{
  reinitiateCopy = reinitiate;
  dCopy = d;
  contextCopy = context;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (reinitiateCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setForceTCPFallbackOnCellUsingReinitiate: %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (reinitiateCopy)
    {
      v12 = @"YES";
    }

    v16 = v12;
    v17 = dCopy;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:dCopy messageContext:contextCopy requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setForceTCPFallbackOnCellUsingReinitiate:reinitiateCopy];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Could not find session with uniqueID %@ to setForceTCPFallbackOnCellUsingReinitiate, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

@end