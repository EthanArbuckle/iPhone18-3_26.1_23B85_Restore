@interface IDSDaemon
+ (BOOL)_commandIsSessionCommand:(int64_t)a3;
+ (BOOL)_commandIsSessionGroupSessionCommand:(int64_t)a3;
+ (BOOL)_shouldReplaceLocalDestination:(id)a3;
+ (BOOL)_topicAllowsNoEncryption:(id)a3 fromURI:(id)a4;
+ (BOOL)entitlementDictionary:(id)a3 isEntitledToAccessService:(id)a4 forEntitlement:(id)a5 forAccount:(id)a6 shouldWarn:(BOOL)a7;
+ (id)progressBlockForSendParameters:(id)a3 messageContext:(id)a4 topic:(id)a5 forObject:(id)a6;
+ (id)sharedInstance;
+ (void)_forwardSendMessageToAccountWithSendParameters:(id)a3 service:(id)a4 threadContext:(id)a5 guid:(id)a6 dataProtectionClass:(unsigned int)a7 willSendBlock:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10;
+ (void)_performDuetCheckAndSendForServiceIdentifier:(id)a3 serviceDuetIdentifiers:(id)a4 sendParameters:(id)a5 logString:(id)a6 fromQueue:(id)a7 completionBlock:(id)a8;
+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)a3 threadContext:(id)a4 priority:(int64_t)a5 dataProtectionClass:(unsigned int)a6;
+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)a3 threadContext:(id)a4 priority:(int64_t)a5 messageTypes:(id)a6 dataProtectionClass:(unsigned int)a7;
+ (void)_sendMessageWithSendParameters:(id)a3 threadContext:(id)a4 onObject:(id)a5 willSendBlock:(id)a6 progressBlock:(id)a7 completionBlock:(id)a8;
+ (void)logAccessWarningForAccount:(id)a3 withService:(id)a4 entitlement:(id)a5 clientEntitlements:(id)a6 logMessage:(id)a7;
+ (void)sendMessageWithIDSSendParameters:(id)a3 messageContext:(id)a4 threadContext:(id)a5 progressBlock:(id)a6 onObject:(id)a7;
- (BOOL)_canBulkMessageWithParameters:(id)a3;
- (BOOL)_canSendMessageWithAccount:(id)a3 toDestination:(id)a4;
- (BOOL)_canSendNonUrgentInternetMessageForTopic:(id)a3;
- (BOOL)_checkContinuityEntitlementForMessageContext:(id)a3;
- (BOOL)_checkEntitlement:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5;
- (BOOL)_checkIfDupeAndNoteGuid:(id)a3 local:(BOOL)a4 topic:(id)a5 forceNoteGuid:(BOOL)a6;
- (BOOL)_doesNiceMessageContainValidCombination:(id)a3;
- (BOOL)_hasNonUrgentInternetSendingBudget;
- (BOOL)_isBulkingStorageMessagesForService:(id)a3;
- (BOOL)_isDeviceInAccountRegistration:(id)a3 forService:(id)a4;
- (BOOL)_isSpamReportingV1ServerDisabled;
- (BOOL)_isUnderFirstDataProtectionLock;
- (BOOL)_isUnlistenedCommand:(id)a3;
- (BOOL)_primaryAccountExistsForService:(id)a3 withURI:(id)a4;
- (BOOL)_processMessagingPayloadWithCommand:(id)a3 dictionaryPayload:(id)a4 senderPushToken:(id)a5 topic:(id)a6 toURI:(id)a7 fromURI:(id)a8 peerResponseIdentifier:(id)a9 guid:(id)a10 service:(id)a11 idsMessageContext:(id)a12 messageContext:(id)a13;
- (BOOL)_processNonMessagingPayloadWithCommand:(id)a3 dictionaryPayload:(id)a4 senderPushToken:(id)a5 topic:(id)a6 toURI:(id)a7 fromURI:(id)a8 peerResponseIdentifier:(id)a9 guid:(id)a10 service:(id)a11 idsMessageContext:(id)a12 messageContext:(id)a13;
- (BOOL)_processQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4 forceRetry:(BOOL)a5;
- (BOOL)_rollDieForNonUrgentInternetSend;
- (BOOL)_setupListenerConnection:(id)a3 listenerID:(id)a4 pid:(int)a5 setupInfo:(id)a6 entitlements:(id)a7 setupCompletionBlock:(id)a8;
- (BOOL)_shouldDropCommand:(int64_t)a3 senderURI:(id)a4 forService:(id)a5;
- (BOOL)_shouldForgetCachedPeerTokensForDecryptionErrorType:(int64_t)a3 withOriginalDecryptionError:(id)a4;
- (BOOL)_shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:(int64_t)a3;
- (BOOL)_shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)a3 service:(id)a4;
- (BOOL)_shouldMessageBeProxied:(id)a3 service:(id)a4;
- (BOOL)_shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:(int64_t)a3 withOriginalDecryptionError:(id)a4 fromURI:(id)a5 toURI:(id)a6 service:(id)a7;
- (BOOL)_shouldRejectMessageOnCrossAccountService:(id)a3 fromSenderURI:(id)a4;
- (BOOL)_shouldRejectMessageOnFamilyService:(id)a3 fromSenderURI:(id)a4;
- (BOOL)_shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:(int64_t)a3;
- (BOOL)_shouldRetryForDecryptionErrorType:(int64_t)a3;
- (BOOL)_shouldStoreBeforeFirstUnlockIncomingLocalMessage:(id)a3 from:(id)a4 forTopic:(id)a5;
- (BOOL)client:(id)a3 isEntitledToAccessService:(id)a4 forAnyOfEntitlements:(id)a5 shouldWarn:(BOOL)a6;
- (BOOL)client:(id)a3 isEntitledToAccessService:(id)a4 forEntitlement:(id)a5 shouldWarn:(BOOL)a6;
- (BOOL)daemonInterface:(id)a3 shouldGrantAccessForPID:(int)a4 auditToken:(id *)a5 portName:(id)a6 listenerConnection:(id)a7 setupInfo:(id)a8 setupResponse:(id *)a9;
- (BOOL)deferMessageForBatchDelivery:(id)a3 service:(id)a4;
- (BOOL)dropMessageIfDropPointIsDetectedWithSendParameters:(id)a3;
- (BOOL)firewallDatabaseAllowsFromURI:(id)a3 mergeID:(id)a4 isDonated:(BOOL)a5 service:(id)a6;
- (BOOL)firewallDatabaseAllowsFromURI:(id)a3 mergeID:(id)a4 service:(id)a5;
- (BOOL)isFirewallEnabledForService:(id)a3;
- (BOOL)isFirewallOnForService:(id)a3;
- (BOOL)isMessageFromSelfForFromURI:(id)a3 service:(id)a4;
- (BOOL)shouldDropMessageIfOutOfFamilyPhoneNumber:(id)a3 forService:(id)a4 withAppleIDAccount:(id)a5;
- (BOOL)shouldFirewallDropMessageForFromURI:(id)a3 mergeID:(id)a4 service:(id)a5;
- (BOOL)shouldProxyMessageForService:(id)a3 toIdentifier:(id)a4;
- (BOOL)validateListenerForLocalObject:(id)a3;
- (BOOL)validateListenerForLocalObject:(id)a3 andCheckEntitlement:(id)a4 forAccessToServiceWithIdentifier:(id)a5;
- (BOOL)validateLocalObjectForPseudonym:(id)a3 andCheckEntitlement:(id)a4 forAccessToAnyOneOfServices:(id)a5;
- (BOOL)validateLocalObjectForPseudonym:(id)a3 andCheckEntitlement:(id)a4 forAccessToServices:(id)a5;
- (IDSDaemon)init;
- (double)_decryptionRetryIntervalForError:(id)a3;
- (double)_nonUrgentInternetSendProbabilityForCurrentWindow;
- (id)_IMTransferServiceController;
- (id)_commands;
- (id)_copyDirectMessagingMetadataForRemoteObject:(id)a3;
- (id)_decryptAOverCMessage:(id)a3 topic:(id)a4 fromDeviceID:(id)a5 error:(id *)a6;
- (id)_errorForMissingEntitlement:(id)a3;
- (id)_failureReasonMessageFromSecondaryError:(id)a3 ECError:(id)a4 andLegacyError:(id)a5;
- (id)_incomingMessageStorageDictionaryForPayload:(id)a3 topic:(id)a4 deviceID:(id)a5 btUUID:(id)a6 command:(id)a7 messageUUID:(id)a8 sequenceNumber:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12;
- (id)_localPushTopics;
- (id)_lockedRemoteObjectsWithService:(id)a3 entitlement:(id)a4 command:(id)a5 capabilities:(unsigned int)a6 ignoreService:(BOOL)a7 useNotificationServices:(BOOL)a8;
- (id)_lockedRemoteObjectsWithService:(id)a3 entitlements:(id)a4 command:(id)a5 capabilities:(unsigned int)a6 ignoreService:(BOOL)a7 useNotificationServices:(BOOL)a8;
- (id)_newSetupInfoWithContext:(id)a3;
- (id)_payloadFromDecryptedData:(id)a3;
- (id)_populateDictionaryWithSenderKeyCheck:(id)a3 remoteURI:(id)a4 localURI:(id)a5 originalGUID:(id)a6;
- (id)_processNameToServiceName:(id)a3;
- (id)_pushTopics;
- (id)_replayKeyForNiceMessage:(id)a3 encryptedData:(id)a4;
- (id)_sessionWithInstanceID:(id)a3 messageContext:(id)a4 requiredEntitlement:(id)a5;
- (id)_sessionWithUniqueID:(id)a3 messageContext:(id)a4 requiredEntitlement:(id)a5;
- (id)_ultraConstrainedPushTopicsForTopics:(id)a3;
- (id)_updateDirectMessagingMetadataForRemoteObject:(id)a3 shouldBroadcastForRemoteObject:(BOOL)a4;
- (id)_validAccountForIncomingMessageSentToURI:(id)a3 service:(id)a4 outPseudonym:(id *)a5;
- (id)accountWithIdentifier:(id)a3 localObject:(id)a4 requiredEntitlement:(id)a5;
- (id)batchMemberMessageFromIncomingNiceMessage:(id)a3;
- (id)broadcastAttemptQueueFromPriority:(int64_t)a3;
- (id)broadcasterForEntitlement:(id)a3 messageContext:(id)a4;
- (id)broadcasterForLocalObject:(id)a3 messageContext:(id)a4;
- (id)broadcasterForTopic:(id)a3 entitlement:(id)a4 command:(id)a5 messageContext:(id)a6;
- (id)broadcasterForTopic:(id)a3 ignoreServiceListener:(BOOL)a4 messageContext:(id)a5;
- (id)broadcasterWithMessageContext:(id)a3;
- (id)cloudRelayRegisteredAccountWithError:(id *)a3;
- (id)copyDirectMessagingInfo;
- (id)deliveryControllerQueuedIncomingMessageDictionary:(id)a3;
- (id)dequeueBroadcastWithID:(int64_t)a3 forMessageUUID:(id)a4 service:(id)a5 priority:(int64_t)a6;
- (id)listenerForLocalObject:(id)a3;
- (id)listenerRemoteObjectForLocalObject:(id)a3;
- (id)messageStoreForDataProtectionClass:(unsigned int)a3;
- (id)registrationBroadcasterForTopic:(id)a3 messageContext:(id)a4;
- (int64_t)_cleanupFrequencyForRestrictedMessages;
- (int64_t)_currentSecondsIntoDay;
- (int64_t)_expirationTimeForRestrictedMessages;
- (int64_t)_messageTypeForConnection:(int64_t)a3;
- (int64_t)_signatureTypeForSigningAlgorithm:(int64_t)a3;
- (int64_t)_subscriptionSourceNumberForContext:(id)a3;
- (unint64_t)_maxMessagesForRunawayClientConsideration;
- (unint64_t)_maxOutgoingDatabasesSizeInMB;
- (unsigned)_dedupBehaviorForNiceMessage:(id)a3;
- (unsigned)commandGroupForCommand:(int64_t)a3;
- (void)_ackMessageWithSequenceNumber:(unsigned int)a3 forDeviceID:(id)a4 priority:(int64_t)a5 dataProtectionClass:(unsigned int)a6 connectionType:(int64_t)a7 guid:(id)a8;
- (void)_addIncomingGUIDsWithGuid:(id)a3 isLocal:(BOOL)a4 hasLock:(BOOL)a5;
- (void)_broadcastPendingMessageUpdateForNiceMessage:(id)a3 fromURI:(id)a4 toURI:(id)a5 forTopic:(id)a6 messageContext:(id)a7;
- (void)_callReplayCommitBlockForIncomingMessages:(id)a3;
- (void)_cleanUpOutgoingMessageDatabaseAndClearStatementCache;
- (void)_cleanupExpiredIncomingMessages;
- (void)_cleanupIncomingFilesDirectories;
- (void)_cleanupIncomingFilesDirectory:(id)a3;
- (void)_cleanupIncomingMessageDatabase;
- (void)_cleanupListenerWithPid:(int)a3;
- (void)_cleanupOutgoingExpiredMessages;
- (void)_cleanupOutgoingMessageDatabase;
- (void)_cleanupOutgoingMessages;
- (void)_cleanupOutgoingQWSMessages;
- (void)_cleanupRunawayClientOutgoingMessages;
- (void)_clearIDSState;
- (void)_dropQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4;
- (void)_enqueueBlock:(id)a3 identifier:(id)a4 withTimeout:(double)a5 forKey:(id)a6;
- (void)_failSavedMessageCleanly:(id)a3 withResponseCode:(int64_t)a4;
- (void)_failSavedMessagesCleanly:(id)a3 withResponseCode:(int64_t)a4;
- (void)_fetchAccountEntitlements:(id *)a3 listenerID:(id *)a4 inContext:(id)a5;
- (void)_flushBroadcastQueuesForServices:(id)a3 existingServices:(id)a4;
- (void)_handleDeliveryReceiptForSenderKeyCheck:(id)a3 remoteURI:(id)a4 remotePushToken:(id)a5 localURI:(id)a6 originalGUID:(id)a7;
- (void)_handleIncomingNiceAttachmentMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 certifiedDeliveryContext:(id)a6 completionBlock:(id)a7;
- (void)_handleIncomingPushNiceMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 messageContext:(id)a6;
- (void)_handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:(id)a3 withMessageTypes:(id)a4;
- (void)_iterateOverConnectedListeners:(id)a3;
- (void)_launchServiceOnDemand:(id)a3;
- (void)_locked_printBroadcastAttemptMapForPriority:(int64_t)a3 service:(id)a4;
- (void)_nonUrgentInternetSendTimerFired;
- (void)_noteItemFromStorage:(id)a3;
- (void)_noteLastItemFromStorage:(id)a3;
- (void)_notifyTinkerServicesOfPairedDevice:(id)a3 withBlock:(id)a4;
- (void)_optionallyDecryptNiceMessage:(id)a3 encryptedData:(id)a4 forGroupID:(id)a5 forTopic:(id)a6 fromURI:(id)a7 certifiedDeliveryContext:(id)a8 isLiveRetry:(BOOL)a9 incomingMetric:(id)a10 completionBlock:(id)a11;
- (void)_performDuetCheckAndSendForAccount:(id)a3 sendParameters:(id)a4 logString:(id)a5 fromQueue:(id)a6 completionBlock:(id)a7;
- (void)_performSetup;
- (void)_pidSuspended:(int)a3;
- (void)_postAliveNotification;
- (void)_processCertifiedDeliveryReceiptForSenderKeyDistribution:(id)a3 service:(id)a4;
- (void)_processDeletingMessagesWithPriority:(int64_t)a3 reason:(id)a4 responseCode:(int64_t)a5 allowedTrafficClasses:(id)a6;
- (void)_processDisallowedMessages;
- (void)_processIncomingLocalMessage:(id)a3 topic:(id)a4 command:(id)a5 deviceID:(id)a6 btUUID:(id)a7 context:(id)a8 storedGUID:(id)a9 priority:(id)a10 connectionType:(int64_t)a11 didWakeHint:(BOOL)a12;
- (void)_processIncomingRemoteNiceMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 storedGuid:(id)a6 messageContext:(id)a7;
- (void)_processIncomingRemoteResourceTransferMessage:(id)a3 forceDownload:(BOOL)a4 guid:(id)a5 context:(id)a6 specificOriginatorURI:(id)a7 broadcastTopic:(id)a8 toURI:(id)a9 topic:(id)a10 messageContext:(id)a11;
- (void)_processKTPeerUpdateMessageForService:(id)a3 localURI:(id)a4 remoteURI:(id)a5;
- (void)_processLocalMessagesWithAccountUUIDs:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5;
- (void)_processLocalMessagesWithAccountUUIDs:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 messageTypes:(id)a6;
- (void)_processMessageError:(BOOL)a3 topLevelMessage:(id)a4 error:(id)a5 messageID:(id)a6 failureReasonMessage:(id)a7 service:(id)a8 serviceType:(id)a9 pushToken:(id)a10 fromURI:(id)a11 toURI:(id)a12 groupID:(id)a13 completionBlock:(id)a14;
- (void)_processMessagesUponUnpairing;
- (void)_processOutgoingNonUrgentInternetMessages;
- (void)_processStoredIncomingLocalMessage:(id)a3;
- (void)_processStoredIncomingLocalMessages;
- (void)_processStoredIncomingMessages;
- (void)_processStoredIncomingRemoteMessagesWithGUIDs:(id)a3 ignoringGUIDs:(id)a4 controlCategory:(unsigned int)a5 lastTimeInterval:(double)a6 repeatedAttempt:(BOOL)a7;
- (void)_processStoredMessagesIncludingClassD:(BOOL)a3;
- (void)_processStoredOutgoingUrgentMessagesProcessLocalAccounts:(BOOL)a3;
- (void)_registerForCheckpointAndVacuumDB;
- (void)_registerForDailyMetricReporting;
- (void)_registerForNetworkAvailableNotification;
- (void)_registerSysdiagnoseBlock;
- (void)_removeAccount:(id)a3 messageContext:(id)a4;
- (void)_removeAndDeregisterAccount:(id)a3 messageContext:(id)a4;
- (void)_removeListener:(id)a3;
- (void)_removeListenerWithRemoteXPCObject:(id)a3;
- (void)_removeLocalListenerObject:(id)a3;
- (void)_reregisterAndReidentify:(id)a3 account:(id)a4 messageContext:(id)a5;
- (void)_resetBroadcastQueuesForServices:(id)a3;
- (void)_resetPreferences;
- (void)_resetQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priorities:(id)a4 dataProtectionClasses:(id)a5;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priorities:(id)a4 dataProtectionClasses:(id)a5 messageTypes:(id)a6;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 messageTypes:(id)a6;
- (void)_respondToAppleCareRequestID:(id)a3 withMessageContext:(id)a4 error:(id)a5;
- (void)_respondToRegistrationControlWithRequestID:(id)a3 status:(int64_t)a4 messageContext:(id)a5 error:(id)a6;
- (void)_respondToVMDataRequestWithData:(id)a3 requestID:(id)a4 error:(id)a5 messageContext:(id)a6;
- (void)_restrictedMessageCleanupTimerFired;
- (void)_sendCertifiedDeliveryReceiptForSenderKeyDistributionMessage:(id)a3 service:(id)a4 keyIDs:(id)a5;
- (void)_sendCertifiedDeliveryReceiptIfNeededForNiceMessage:(id)a3 service:(id)a4 failureReason:(id)a5 failureReasonMessage:(id)a6 generateDeliveryReceipt:(BOOL)a7;
- (void)_sendErrorMessage:(id)a3 originalCommand:(id)a4 fromURI:(id)a5 toDestinations:(id)a6 usingAccountWithUniqueID:(id)a7 useDictAsTopLevel:(BOOL)a8 dataToEncrypt:(id)a9 wantsResponse:(BOOL)a10 timeout:(double)a11 command:(id)a12 priority:(int64_t)a13 sendReasonPathID:(int64_t)a14 completionBlock:(id)a15;
- (void)_sendNiceMessageCheckpointIfNecessary:(id)a3 checkpoint:(int64_t)a4 service:(id)a5 additionalInformation:(id)a6;
- (void)_setupRestrictedMessageCleanupTimer;
- (void)_startPushHandlingLocked;
- (void)_stopPushHandling;
- (void)_storageTimerFired;
- (void)_submitLastResortCacheMetricForGUID:(id)a3 service:(id)a4;
- (void)_submitRegistrationAccountStatusMetric;
- (void)_terminate;
- (void)_updateNonUrgentInternetSendTimer;
- (void)_updatePushCommandsLocked;
- (void)_updateStorageTimerWithInterval:(double)a3;
- (void)acceptInvitation:(id)a3 messageContext:(id)a4;
- (void)acceptInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5;
- (void)acknowledgeMessageWithGUID:(id)a3 forAccountWithUniqueID:(id)a4 broadcastTime:(id)a5 messageSize:(id)a6 priority:(id)a7 messageContext:(id)a8;
- (void)acknowledgeMessageWithStorageGUID:(id)a3 realGUID:(id)a4 forAccountWithUniqueID:(id)a5 broadcastTime:(id)a6 messageSize:(id)a7 priority:(id)a8 broadcastID:(int64_t)a9 connectionType:(int64_t)a10 messageContext:(id)a11;
- (void)acknowledgeOutgoingMessageWithGUID:(id)a3 alternateCallbackID:(id)a4 forAccountWithUniqueID:(id)a5 messageContext:(id)a6;
- (void)acknowledgeSessionID:(id)a3 clientID:(id)a4 messageContext:(id)a5;
- (void)addAccountWithLoginID:(id)a3 serviceName:(id)a4 uniqueID:(id)a5 accountType:(int)a6 accountInfo:(id)a7 messageContext:(id)a8;
- (void)addAliases:(id)a3 toAccount:(id)a4 messageContext:(id)a5;
- (void)appleCareSignInUserName:(id)a3 DSID:(id)a4 authToken:(id)a5 requestID:(id)a6 messageContext:(id)a7;
- (void)appleCareSignOutUserWithRequestID:(id)a3 messageContext:(id)a4;
- (void)authTokenChanged:(id)a3 forAccount:(id)a4 messageContext:(id)a5;
- (void)authenticateAccount:(id)a3 messageContext:(id)a4;
- (void)authenticatePhoneWithRequestUUID:(id)a3 messageContext:(id)a4;
- (void)broadcastBatchMessage:(id)a3 topic:(id)a4;
- (void)cancelInvitation:(id)a3 messageContext:(id)a4;
- (void)cancelInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5;
- (void)cancelInvitation:(id)a3 withRemoteEndedReasonOverride:(unsigned int)a4 messageContext:(id)a5;
- (void)cancelItemWithIdentifier:(id)a3 service:(id)a4 messageContext:(id)a5;
- (void)cancelMessageWithQueueOneIdentifier:(id)a3 fromID:(id)a4 service:(id)a5 accountUniqueID:(id)a6 messageIdentifier:(id)a7 messageContext:(id)a8;
- (void)cancelOpportunisticDataOnService:(id)a3 withIdentifier:(id)a4 messageContext:(id)a5;
- (void)cleanupSession:(id)a3 messageContext:(id)a4;
- (void)cleanupSessionWithInstanceID:(id)a3 messageContext:(id)a4;
- (void)clearIDSStateWithMessageContext:(id)a3;
- (void)closeSocketWithOptions:(id)a3 messageContext:(id)a4;
- (void)continuityClientInstanceCreatedWithMessageContext:(id)a3;
- (void)continuityStartAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5 messageContext:(id)a6;
- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 boostedScan:(BOOL)a6 duplicates:(BOOL)a7 messageContext:(id)a8;
- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 messageContext:(id)a6;
- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8 messageContext:(id)a9;
- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 messageContext:(id)a7;
- (void)continuityStartTrackingPeer:(id)a3 forType:(int64_t)a4 messageContext:(id)a5;
- (void)continuityStopAdvertisingOfType:(int64_t)a3 messageContext:(id)a4;
- (void)continuityStopScanningForType:(int64_t)a3 messageContext:(id)a4;
- (void)continuityStopTrackingPeer:(id)a3 forType:(int64_t)a4 messageContext:(id)a5;
- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 sessionID:(id)a5 messageContext:(id)a6;
- (void)createSocketDescriptorFromNWConnection:(id)a3 options:(id)a4 messageContext:(id)a5 error:(id)a6;
- (void)deactivateAndPurgeIdentifyForAccount:(id)a3 messageContext:(id)a4;
- (void)dealloc;
- (void)declineInvitation:(id)a3 messageContext:(id)a4;
- (void)declineInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5;
- (void)deletePendingResourceWithMessageGUID:(id)a3 messageContext:(id)a4;
- (void)deliveryController:(id)a3 dataReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17;
- (void)deliveryController:(id)a3 device:(id)a4 supportsDirectMessaging:(BOOL)a5 isObliterating:(BOOL)a6;
- (void)deliveryController:(id)a3 didReceiveMessage:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 messageID:(id)a8;
- (void)deliveryController:(id)a3 messageReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17;
- (void)deliveryController:(id)a3 protobufReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17;
- (void)deliveryController:(id)a3 receivedAppLevelAckWithTopic:(id)a4 deviceID:(id)a5 btUUID:(id)a6 messageID:(id)a7 peerResponseIdentifier:(id)a8 priority:(int64_t)a9 connectionType:(int64_t)a10;
- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5;
- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 ofTypes:(id)a6;
- (void)deliveryControllerHasSpaceforUrgentMessages:(id)a3 dataProtectionClass:(unsigned int)a4 ofTypes:(id)a5;
- (void)didAddPairedDevice:(id)a3;
- (void)didRemovePairedDevice:(id)a3;
- (void)didUpdatePairedDevice:(id)a3;
- (void)didUpdateProtocolForPairedDevice:(id)a3;
- (void)disableAccount:(id)a3 messageContext:(id)a4;
- (void)downloadPendingResourceWithMessageGUID:(id)a3 messageContext:(id)a4;
- (void)dropQueuedBroadcastsForServices:(id)a3;
- (void)duetInterface:(id)a3 resourceAvailabilityChangedForIdentifiers:(id)a4;
- (void)enableAccount:(id)a3 messageContext:(id)a4;
- (void)enableP2PlinksForSession:(id)a3 messageContext:(id)a4;
- (void)endSession:(id)a3 messageContext:(id)a4;
- (void)endSession:(id)a3 withData:(id)a4 messageContext:(id)a5;
- (void)enqueueBroadcast:(id)a3 forTopic:(id)a4 entitlement:(id)a5 command:(id)a6 capabilities:(unsigned int)a7 messageContext:(id)a8;
- (void)enqueueIncomingMessageBroadcast:(id)a3 broadcastData:(id)a4 forTopic:(id)a5 entitlement:(id)a6 command:(id)a7 capabilities:(unsigned int)a8 messageContext:(id)a9;
- (void)failedDecryptingMessage:(id)a3 reason:(int64_t)a4 forGroupID:(id)a5 onService:(id)a6 messageContext:(id)a7;
- (void)fetchPhoneUserSubscriptionSourceWithRequestUUID:(id)a3 messageContext:(id)a4;
- (void)forceDisableAccount:(id)a3 messageContext:(id)a4;
- (void)forceRemoveAccount:(id)a3 messageContext:(id)a4;
- (void)gameCenterModifyForUserName:(id)a3 messageContext:(id)a4;
- (void)gameCenterSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9;
- (void)gameCenterSignOutWithMessageContext:(id)a3;
- (void)generatePhoneAuthenticationSignatureOverData:(id)a3 withRequestUUID:(id)a4 messageContext:(id)a5;
- (void)getDeliveryStatsWithMessageContext:(id)a3;
- (void)getLocalIncomingPowerAssertion:(id)a3 queue:(id)a4;
- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 sessionID:(id)a5 messageContext:(id)a6;
- (void)getProgressUpdateForIdentifier:(id)a3 service:(id)a4 messageContext:(id)a5;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forUnknownTopic:(id)a5 messageContext:(id)a6;
- (void)handler:(id)a3 isConnectedChanged:(BOOL)a4;
- (void)handler:(id)a3 receivedNoStorageResponseForTopic:(id)a4 identifier:(id)a5 messageContext:(id)a6;
- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5;
- (void)hardDeregisterWithMessageContext:(id)a3;
- (void)homeKitGetAdminAccessTokensWithServiceUserID:(id)a3 accessoryID:(id)a4 pairingToken:(id)a5 messageContext:(id)a6;
- (void)homeKitGetConsentTokensWithServiceUserID:(id)a3 accessoryIDs:(id)a4 adminID:(id)a5 messageContext:(id)a6;
- (void)homeKitGetServiceUserIDsWithMessageContext:(id)a3;
- (void)homeKitGetUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 userHandle:(id)a5 accessoryRequests:(id)a6 messageContext:(id)a7;
- (void)iCloudModifyForUserName:(id)a3 messageContext:(id)a4;
- (void)iCloudSignInHackWithUserName:(id)a3 password:(id)a4 messageContext:(id)a5;
- (void)iCloudSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9;
- (void)iCloudSignOutHackWithMessageContext:(id)a3;
- (void)iCloudSignOutWithMessageContext:(id)a3;
- (void)iCloudUpdateForUserName:(id)a3 accountInfo:(id)a4 messageContext:(id)a5;
- (void)iTunesSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9;
- (void)iTunesSignOutWithMessageContext:(id)a3;
- (void)incomingAccountSyncMessage:(id)a3 fromID:(id)a4 messageContext:(id)a5;
- (void)initialLocalSyncCompletedForServices:(id)a3 messageContext:(id)a4;
- (void)initialLocalSyncStartedForServices:(id)a3 messageContext:(id)a4;
- (void)joinGroupSession:(id)a3 withOptions:(id)a4 messageContext:(id)a5;
- (void)kickGetDependentForAccount:(id)a3 messageContext:(id)a4;
- (void)launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged;
- (void)launchOnDemandServicesForQueuedBroadcastAttempts;
- (void)leaveGroupSession:(id)a3 participantInfo:(id)a4 options:(id)a5 messageContext:(id)a6;
- (void)localObjectDiedNotification:(id)a3;
- (void)logState;
- (void)manageDesignatedMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withType:(unsigned __int16)a6 messageContext:(id)a7;
- (void)networkStateChangedForLogTransportHint:(id)a3;
- (void)noteBlockedMessageFromURI:(id)a3 service:(id)a4;
- (void)noteMetricOfType:(int64_t)a3 context:(id)a4 serviceName:(id)a5 messageContext:(id)a6;
- (void)notifyClients:(unint64_t)a3;
- (void)openSocketWithOptions:(id)a3 messageContext:(id)a4;
- (void)passwordChanged:(id)a3 forAccount:(id)a4 messageContext:(id)a5;
- (void)passwordUpdatedForAccount:(id)a3 messageContext:(id)a4;
- (void)persistPendingInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5 messageContext:(id)a6;
- (void)persistReceivedInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5 messageContext:(id)a6;
- (void)processDirectMessagingCapability:(BOOL)a3;
- (void)processDirectMessagingInfo:(id)a3;
- (void)provisionPseudonymForURI:(id)a3 onAccount:(id)a4 withProperties:(id)a5 requestProperties:(id)a6 requestUUID:(id)a7 messageContext:(id)a8;
- (void)queryHashForceUpdate:(id)a3 fromURI:(id)a4 messageUUID:(id)a5 updateHash:(id)a6 toURI:(id)a7 service:(id)a8;
- (void)reRegisterWithUserID:(id)a3 action:(id)a4 service:(id)a5 messageContext:(id)a6;
- (void)receivedDirectMsgSocketRequestForService:(id)a3 stream:(id)a4 flags:(unint64_t)a5;
- (void)reconnectSessionWithUniqueID:(id)a3 messageContext:(id)a4;
- (void)refreshBundleIDs;
- (void)regenerateRegisteredIdentityWithMessageContext:(id)a3;
- (void)registerAccount:(id)a3 messageContext:(id)a4;
- (void)registerForNotificationsOnServices:(id)a3 messageContext:(id)a4;
- (void)registerForQueryDBCleanup;
- (void)registerForRegistrationAccountStatusMetric;
- (void)registerForRegistrationEventTrackCleanup;
- (void)registerForSenderKeyCleanup;
- (void)registerPluginForGroup:(id)a3 options:(id)a4 messageContext:(id)a5;
- (void)registrationControlGetRegistrationStateForRegistrationType:(int64_t)a3 requestID:(id)a4 messageContext:(id)a5;
- (void)registrationControlSetRegistrationStateForRegistrationType:(int64_t)a3 toState:(int64_t)a4 requestID:(id)a5 messageContext:(id)a6;
- (void)registrationHashProcessor:(id)a3 didFlushCacheForService:(id)a4 remoteURI:(id)a5 localURI:(id)a6 guid:(id)a7;
- (void)releaseBroadcastAttemptQueue:(int64_t)a3;
- (void)remoteObjectDiedNotification:(id)a3;
- (void)removeAliases:(id)a3 fromAccount:(id)a4 messageContext:(id)a5;
- (void)removeParticipantIDs:(id)a3 forGroup:(id)a4 sessionID:(id)a5 messageContext:(id)a6;
- (void)removePendingInvitation:(id)a3 forService:(id)a4 messageContext:(id)a5;
- (void)removeReceivedInvitation:(id)a3 forService:(id)a4 messageContext:(id)a5;
- (void)removeWakingPushPriorityForServices:(id)a3;
- (void)renewPseudonym:(id)a3 onAccount:(id)a4 forUpdatedExpiryEpoch:(double)a5 requestProperties:(id)a6 requestUUID:(id)a7 messageContext:(id)a8;
- (void)repairAccountsWithMessageContext:(id)a3;
- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 onAccount:(id)a6 requestUUID:(id)a7 messageContext:(id)a8;
- (void)reportDailyMetrics;
- (void)reportSpamMessage:(id)a3 serviceIdentifier:(id)a4 messageContext:(id)a5;
- (void)reportiMessageSpam:(id)a3 toURI:(id)a4 messageContext:(id)a5;
- (void)reportiMessageSpamCheckUnknown:(id)a3 count:(id)a4 requestID:(id)a5 messageContext:(id)a6;
- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8 messageContext:(id)a9;
- (void)requestActiveParticipantsForGroupSession:(id)a3 messageContext:(id)a4;
- (void)requestCarrierTokenForSubscriptionSource:(id)a3 IMEI:(id)a4 carrierNonce:(id)a5 requestUUID:(id)a6 messageContext:(id)a7;
- (void)requestEncryptionKeyForGroup:(id)a3 participants:(id)a4 messageContext:(id)a5;
- (void)requestPublicKeysForRealTimeEncryption:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5;
- (void)requestRealTimeEncryptionMasterKeyMaterial:(id)a3 forGroup:(id)a4 messageContext:(id)a5;
- (void)requestURIsForParticipantIDs:(id)a3 withRequestID:(id)a4 forGroupSession:(id)a5 messageContext:(id)a6;
- (void)requestVMData:(id)a3 requestID:(id)a4 messageContext:(id)a5;
- (void)resetRealTimeEncryptionKeys:(id)a3 forGroup:(id)a4 messageContext:(id)a5;
- (void)respondToRegistrationControlActionWithRequestID:(id)a3 messageContext:(id)a4 error:(id)a5;
- (void)revokePseudonym:(id)a3 onAccount:(id)a4 requestProperties:(id)a5 requestUUID:(id)a6 messageContext:(id)a7;
- (void)sendAllocationRequest:(id)a3 options:(id)a4 messageContext:(id)a5;
- (void)sendAppAckWithGUID:(id)a3 toDestination:(id)a4 forAccountWithUniqueID:(id)a5 connectionType:(int64_t)a6 messageContext:(id)a7;
- (void)sendBatchMessageProcessedContext:(id)a3 serviceName:(id)a4;
- (void)sendCertifiedDeliveryReceipt:(id)a3 serviceName:(id)a4 messageContext:(id)a5;
- (void)sendInvitation:(id)a3 withData:(id)a4 declineOnError:(BOOL)a5 messageContext:(id)a6;
- (void)sendInvitation:(id)a3 withOptions:(id)a4 messageContext:(id)a5;
- (void)sendMessageWithSendParameters:(id)a3 messageContext:(id)a4;
- (void)sendOpportunisticData:(id)a3 onService:(id)a4 usingAccountWithUniqueID:(id)a5 withIdentifier:(id)a6 options:(id)a7 messageContext:(id)a8;
- (void)sendRealTimeEncryptionMKMRecoveryRequest:(id)a3 toGroup:(id)a4;
- (void)sendRealTimeEncryptionMasterKeyMaterial:(id)a3 toGroup:(id)a4 messageContext:(id)a5;
- (void)sendRealTimeMediaPrekey:(id)a3 toGroup:(id)a4 messageContext:(id)a5;
- (void)sendServerMessage:(id)a3 command:(id)a4 usingAccountWithUniqueID:(id)a5 messageContext:(id)a6;
- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4 forSessionWithUniqueID:(id)a5 messageContext:(id)a6;
- (void)sendSocketDescriptorOverXPC:(id)a3 messageContext:(id)a4 socketDescriptor:(int)a5 error:(id)a6;
- (void)setAudioEnabled:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setInviteTimetout:(int64_t)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setLinkPreferences:(id)a3 service:(id)a4 messageContext:(id)a5;
- (void)setLinkSelectionStrategyWithData:(id)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setListenerServices:(id)a3 commands:(id)a4 capabilities:(unsigned int)a5 messageContext:(id)a6;
- (void)setMuted:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setNSUUID:(id)a3 onDeviceWithUniqueID:(id)a4 forService:(id)a5 messageContext:(id)a6;
- (void)setPairedDeviceInfo:(id)a3 messageContext:(id)a4;
- (void)setPassword:(id)a3 forUsername:(id)a4 onService:(id)a5 messageContext:(id)a6;
- (void)setPhoneUserSubscriptionSource:(id)a3 withRequestUUID:(id)a4 messageContext:(id)a5;
- (void)setPreferInfraWiFi:(BOOL)a3 service:(id)a4 messageContext:(id)a5;
- (void)setPreferences:(id)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5;
- (void)setQuickRelayUserTypeForSession:(id)a3 withUserType:(unsigned __int16)a4 messageContext:(id)a5;
- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4 forSessionWithUniqueID:(id)a5 messageContext:(id)a6;
- (void)setWakingPushPriority:(int64_t)a3 forTopic:(id)a4 messageContext:(id)a5;
- (void)setupAccountWithLoginID:(id)a3 serviceName:(id)a4 accountType:(int)a5 accountConfig:(id)a6 authToken:(id)a7 password:(id)a8 transactionID:(id)a9 messageContext:(id)a10;
- (void)setupNewSessionWithConfiguration:(id)a3 messageContext:(id)a4;
- (void)setupRealtimeEncryptionController:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5;
- (void)shutdown;
- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 onService:(id)a5 options:(id)a6 requestUUID:(id)a7 messageContext:(id)a8;
- (void)startOTRTest:(id)a3 priority:(int64_t)a4 messageContext:(id)a5;
- (void)systemDidLeaveDataProtectionLock;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidLock;
- (void)systemDidUnlock;
- (void)testCloudQRConnection:(id)a3 messageContext:(id)a4;
- (void)triggerFinalDeregisterWithMessageContext:(id)a3;
- (void)tryForceFamilyFetchWithMessageContext:(id)a3;
- (void)unregisterAccount:(id)a3 messageContext:(id)a4;
- (void)unregisterPluginForGroup:(id)a3 options:(id)a4 messageContext:(id)a5;
- (void)unvalidateAliases:(id)a3 forAccount:(id)a4 messageContext:(id)a5;
- (void)updateAccount:(id)a3 withAccountInfo:(id)a4 messageContext:(id)a5;
- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4 forAccount:(id)a5 messageContext:(id)a6;
- (void)updateMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withContext:(id)a6 messagingCapabilities:(id)a7 triggeredLocally:(BOOL)a8 lightweightStatusDict:(id)a9 messageContext:(id)a10;
- (void)updateParticipantData:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withContext:(id)a6 messageContext:(id)a7;
- (void)updateParticipantInfo:(id)a3 forGroup:(id)a4 sessionID:(id)a5 messageContext:(id)a6;
- (void)updateParticipantType:(unsigned __int16)a3 forGroup:(id)a4 sessionID:(id)a5 members:(id)a6 triggeredLocally:(BOOL)a7 withContext:(id)a8 lightweightStatusDict:(id)a9 messageContext:(id)a10;
- (void)updateParticipantType:(unsigned __int16)a3 forGroup:(id)a4 sessionID:(id)a5 members:(id)a6 triggeredLocally:(BOOL)a7 withContext:(id)a8 lightweightStatusDict:(id)a9 timestamp:(double)a10 identifier:(unint64_t)a11 messageContext:(id)a12;
- (void)updateSubServices:(id)a3 forService:(id)a4 deviceUniqueID:(id)a5 messageContext:(id)a6;
- (void)updateTopics;
- (void)updateUserWithOldUserName:(id)a3 newUserName:(id)a4 messageContext:(id)a5;
- (void)validateAliases:(id)a3 forAccount:(id)a4 messageContext:(id)a5;
- (void)validateListenerForLocalObject:(id)a3 andPerformBlock:(id)a4;
- (void)validateProfileForAccount:(id)a3 messageContext:(id)a4;
- (void)verifySignedData:(id)a3 matchesData:(id)a4 forAlgorithm:(int64_t)a5 onService:(id)a6 tokenUri:(id)a7 options:(id)a8 requestUUID:(id)a9 messageContext:(id)a10;
- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 onService:(id)a5 options:(id)a6 requestUUID:(id)a7 messageContext:(id)a8;
- (void)wakeClientForService:(id)a3 stream:(id)a4 flags:(unint64_t)a5;
- (void)xpcObject:(id)a3 objectContext:(id)a4 messageContext:(id)a5;
@end

@implementation IDSDaemon

- (void)updateTopics
{
  v33 = [(IDSDaemon *)self _pushTopics];
  v3 = [NSMutableSet setWithSet:v33];
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [(IDSPersistentMap *)self->_wakingPushPriorityStore copyDictionaryRepresentation];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
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
        v13 = [v12 integerValue];
        v14 = v4;
        if (v13 != 2)
        {
          if (v13)
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

  v18 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v19 = [(IDSDaemon *)self _ultraConstrainedPushTopicsForTopics:v33];
  [v18 setUltraConstrainedTopics:v19 forListener:self];

  v20 = [(IDSDaemon *)self _localPushTopics];
  v21 = [v20 mutableCopy];

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
  v36 = self;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [(IDSDaemon *)self serviceController];
  v5 = [v4 allServices];

  v6 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 adHocServiceType] != 5)
        {
          v12 = [v10 launchDarwinNotification];
          if ([v12 length])
          {

LABEL_11:
            [v3 addObject:v10];
            goto LABEL_12;
          }

          v13 = [v10 launchMachServiceNotification];
          v14 = [v13 length];

          if (v14)
          {
            goto LABEL_11;
          }

          listenerCachedServices = v36->_listenerCachedServices;
          v16 = [v10 identifier];
          LODWORD(listenerCachedServices) = [(NSMutableSet *)listenerCachedServices containsObject:v16];

          if (listenerCachedServices)
          {
            goto LABEL_11;
          }
        }

LABEL_12:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v17 = objc_autoreleasePoolPush();
  v18 = +[IDSDAccountController sharedInstance];
  v19 = [v18 accounts];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v19;
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
          v27 = [v25 service];
          v28 = [v3 containsObject:v27];

          if (v28)
          {
            v29 = [v25 service];
            v30 = [v29 pushTopic];
            [v37 addObject:v30];
          }
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v22);
  }

  objc_autoreleasePoolPop(v17);
  v31 = [(IDSRegistrationConductor *)v36->_registrationConductor stewieCoordinator];
  if ([v31 isStewieEnabled])
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

        v9 = [*(*(&v12 + 1) + 8 * i) service];
        v10 = [v9 pushTopic];
        [v2 addObject:v10];
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

        v9 = [*(*(&v17 + 1) + 8 * v8) bundleID];
        [v3 addObject:v9];

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

  v5 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v6 = [(IDSDaemon *)self _commands];
  [v5 setCommands:v6 forListener:self];
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
    v4 = [v3 intValue];
    if (v4 <= 30)
    {
      v5 = 30;
    }

    else
    {
      v5 = v4;
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
  v15 = [v14 pairedDeviceUniqueID];
  v16 = [IDSDMessageStore outgoingMessagesWithEnqueueDateOlderThan:v13 notToDestinationDeviceID:v15 andLimit:2500];

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
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 2000;
  }

  return v4;
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
    v3 = [v2 isUnderDataProtectionLock];
  }

  else
  {
    v2 = +[IMSystemMonitor sharedInstance];
    v3 = [v2 isUnderFirstDataProtectionLock];
  }

  v4 = v3;

  return v4;
}

- (void)setupRealtimeEncryptionController:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v28 = a5;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting up the realtime encryption controller for the unique ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = v7;
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
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - Could not initialize the realtime encryption controller for the unique ID: %@, ignoring...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v26 = @"IDSDaemon";
      v27 = v7;
      _IDSLogTransport();
    }
  }

  v12 = [IDSDAccountController sharedInstance:v26];
  v13 = [v12 accountWithUniqueID:v8];

  v14 = [v13 primaryRegistration];
  v15 = [v14 pushToken];
  v16 = [v13 service];
  v17 = [v16 identifier];
  v18 = [IDSPushToken pushTokenWithData:v15 withServiceLoggingHint:v17];

  v19 = [v13 prefixedURIStringsFromRegistration];
  v20 = [v19 firstObject];
  v21 = [v13 service];
  v22 = [v21 identifier];
  v23 = [IDSURI URIWithPrefixedURI:v20 withServiceLoggingHint:v22];
  [v10 setAccount:v8 fromURI:v23 forGroup:v7];

  v24 = [v10 createRealTimeEncryptionFullIdentityForDevice:v18 completionBlock:0];
}

- (void)sendRealTimeMediaPrekey:(id)a3 toGroup:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending the device prekey for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = v7;
    v22 = v8;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v21];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:v8];

    if (v13)
    {
      v14 = [v13 destinations];
      v15 = [v14 allObjects];
      v16 = [v13 uniqueID];
      v17 = [v13 destinationsLightweightStatus];
      [v11 setMembers:v15 forGroup:v8 sessionID:v16 lightweightStatusDict:v17];

      v18 = [v13 uniqueID];
      [v11 sendPublicKeyToGroup:v8 sessionID:v18];
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = @"IDSDaemon";
        v25 = 2112;
        v26 = v8;
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
      v26 = v7;
      v27 = 2112;
      v28 = v8;
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

- (void)requestPublicKeysForRealTimeEncryption:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5
{
  v24 = a3;
  v7 = a4;
  v8 = a5;
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
    v12 = [v11 accountWithUniqueID:v7];

    v13 = objc_alloc_init(IMMessageContext);
    [v13 setShouldBoost:1];
    v14 = +[IDSDaemon sharedInstance];
    v15 = [v12 service];
    v16 = [v15 pushTopic];
    v17 = [v14 broadcasterForTopic:v16 entitlement:kIDSTestToolEntitlement command:0 messageContext:v13];

    v18 = [v10 publicKeys];
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19)
    {
      v20 = xpc_int64_create(0);
      xpc_dictionary_set_value(v19, "object", v20);

      IMInsertBoolsToXPCDictionary();
      v21 = [NSMutableDictionary dictionary:1];
      CFDictionarySetValue(v21, @"object-type", @"public-keys");
      if (v18)
      {
        CFDictionarySetValue(v21, @"public-keys", v18);
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

- (void)sendRealTimeEncryptionMasterKeyMaterial:(id)a3 toGroup:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending the master key material for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = v7;
    v18 = v8;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v17];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:v8];

    if (v13)
    {
      v14 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A0D0;
      block[3] = &unk_100BD6E18;
      v20 = v11;
      v21 = v8;
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
        v26 = v8;
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
      v26 = v7;
      v27 = 2112;
      v28 = v8;
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

- (void)sendRealTimeEncryptionMKMRecoveryRequest:(id)a3 toGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sending the master key material recovery request for the unique ID: %@ to group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v5;
    v15 = v6;
    _IDSLogV();
  }

  v8 = [IDSGroupEncryptionController sharedInstance:v14];
  if (v8)
  {
    v9 = +[IDSDSessionController sharedInstance];
    v10 = [v9 sessionWithUniqueID:v6];

    if (v10)
    {
      v11 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A530;
      block[3] = &unk_100BD6E40;
      v17 = v8;
      v18 = v6;
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
        v22 = v6;
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
      v22 = v5;
      v23 = 2112;
      v24 = v6;
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

- (void)requestRealTimeEncryptionMasterKeyMaterial:(id)a3 forGroup:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request the master key material(MKM) for unique ID: %@ group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = v7;
    v18 = v8;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v17];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:v8];

    if (v13)
    {
      v14 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10030A964;
      block[3] = &unk_100BD6E18;
      v20 = v11;
      v21 = v8;
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
        v26 = v8;
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
      v26 = v7;
      v27 = 2112;
      v28 = v8;
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

- (void)resetRealTimeEncryptionKeys:(id)a3 forGroup:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resetting all keys for the unique ID: %@ group: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = v7;
    v17 = v8;
    _IDSLogV();
  }

  v11 = [IDSGroupEncryptionController sharedInstance:v16];
  if (v11)
  {
    v12 = +[IDSDSessionController sharedInstance];
    v13 = [v12 sessionWithUniqueID:v8];

    if (v13)
    {
      [v11 resetKeysForGroup:v8 shouldRemoveCurrentParticipants:1];
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = @"IDSDaemon";
        v20 = 2112;
        v21 = v8;
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
      v21 = v7;
      v22 = 2112;
      v23 = v8;
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

- (id)cloudRelayRegisteredAccountWithError:(id *)a3
{
  v4 = +[IDSDAccountController sharedInstance];
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithIdentifier:@"com.apple.private.alloy.multiplex1"];
  v7 = [v4 appleIDAccountOnService:v6];

  if (v7 && ([v7 isRegistered] & 1) != 0)
  {
    v8 = v7;
  }

  else if (a3)
  {
    v9 = [NSError alloc];
    v8 = 0;
    *a3 = [v9 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)homeKitGetServiceUserIDsWithMessageContext:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v17];
  v6 = v17;
  if (v6)
  {
    v7 = [v4 localObject];
    v8 = [(IDSDaemon *)self broadcasterForLocalObject:v7 messageContext:v4];

    if (v8)
    {
      [v8 serviceUserIDs:0 error:v6];
    }
  }

  else
  {
    v8 = [v5 registration];
    v9 = objc_alloc_init(IDSHomeKitCloudRelayServiceUserIDsMessage);
    v10 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayServiceUserIDsMessage setIdentityPrivateKey:](v9, "setIdentityPrivateKey:", [v10 identityPrivateKey]);

    v11 = [v8 registrationCert];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setIDCertificate:v11];

    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setSubService:@"com.apple.private.alloy.willow"];
    v12 = [v8 dsHandle];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setUserID:v12];

    v13 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v14 = [v13 pushToken];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setPushToken:v14];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003278F8;
    v15[3] = &unk_100BD7598;
    v15[4] = self;
    v16 = v4;
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)v9 setCompletionBlock:v15];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v9];
  }
}

- (void)homeKitGetAdminAccessTokensWithServiceUserID:(id)a3 accessoryID:(id)a4 pairingToken:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v14 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v30];
  v15 = v30;
  if (v15)
  {
    v16 = [v13 localObject];
    v17 = [(IDSDaemon *)self broadcasterForLocalObject:v16 messageContext:v13];

    if (v17)
    {
      [v17 adminAccessTokens:0 error:v15];
    }
  }

  else
  {
    v17 = [v14 registration];
    v18 = objc_alloc_init(IDSHomeKitCloudRelayAdminAccessTokenMessage);
    v19 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayAdminAccessTokenMessage setIdentityPrivateKey:](v18, "setIdentityPrivateKey:", [v19 identityPrivateKey]);

    v20 = [v17 registrationCert];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setIDCertificate:v20];

    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setServiceUserID:v10];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setAccessoryID:v11];
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setPairingToken:v12];
    v21 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v21 pushToken];
    v22 = v13;
    v23 = v14;
    v24 = v12;
    v25 = v11;
    v27 = v26 = v10;
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setPushToken:v27];

    v10 = v26;
    v11 = v25;
    v12 = v24;
    v14 = v23;
    v13 = v22;
    v15 = 0;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100327D2C;
    v28[3] = &unk_100BD7598;
    v28[4] = self;
    v29 = v13;
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)v18 setCompletionBlock:v28];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v18];
  }
}

- (void)homeKitGetConsentTokensWithServiceUserID:(id)a3 accessoryIDs:(id)a4 adminID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v14 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v30];
  v15 = v30;
  if (v15)
  {
    v16 = [v13 localObject];
    v17 = [(IDSDaemon *)self broadcasterForLocalObject:v16 messageContext:v13];

    if (v17)
    {
      [v17 consentTokens:0 error:v15];
    }
  }

  else
  {
    v17 = [v14 registration];
    v18 = objc_alloc_init(IDSHomeKitCloudRelayConsentTokensMessage);
    v19 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSHomeKitCloudRelayConsentTokensMessage setIdentityPrivateKey:](v18, "setIdentityPrivateKey:", [v19 identityPrivateKey]);

    v20 = [v17 registrationCert];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setIDCertificate:v20];

    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setServiceUserID:v10];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setAdminID:v12];
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setAccessoryIDs:v11];
    v21 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v21 pushToken];
    v22 = v13;
    v23 = v14;
    v24 = v12;
    v25 = v11;
    v27 = v26 = v10;
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setPushToken:v27];

    v10 = v26;
    v11 = v25;
    v12 = v24;
    v14 = v23;
    v13 = v22;
    v15 = 0;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100328280;
    v28[3] = &unk_100BD7598;
    v28[4] = self;
    v29 = v13;
    [(IDSHomeKitCloudRelayConsentTokensMessage *)v18 setCompletionBlock:v28];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v18];
  }
}

- (void)homeKitGetUserAccessTokensWithServiceUserID:(id)a3 userID:(id)a4 userHandle:(id)a5 accessoryRequests:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33 = 0;
  v17 = [(IDSDaemon *)self cloudRelayRegisteredAccountWithError:&v33];
  v18 = v33;
  if (v18)
  {
    v19 = [v16 localObject];
    v20 = [(IDSDaemon *)self broadcasterForLocalObject:v19 messageContext:v16];

    if (v20)
    {
      [v20 userAccessTokens:0 error:v18];
    }
  }

  else
  {
    v20 = [v17 registration];
    v21 = objc_alloc_init(IDSHomeKitCloudRelayUserAccessTokensMessage);
    +[IDSRegistrationKeyManager sharedInstance];
    v29 = v12;
    v22 = v30 = v14;
    -[IDSHomeKitCloudRelayUserAccessTokensMessage setIdentityPrivateKey:](v21, "setIdentityPrivateKey:", [v22 identityPrivateKey]);

    v23 = [v20 registrationCert];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setIDCertificate:v23];

    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setSubService:@"com.apple.private.alloy.willow"];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setServiceUserID:v29];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setUserID:v13];
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setUserHandle:v14];
    v24 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    [v24 pushToken];
    v25 = v17;
    v26 = v15;
    v28 = v27 = v13;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setPushToken:v28];

    v13 = v27;
    v15 = v26;
    v17 = v25;

    v12 = v29;
    v14 = v30;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setAccessoryRequests:v15];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003286BC;
    v31[3] = &unk_100BD7598;
    v31[4] = self;
    v32 = v16;
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)v21 setCompletionBlock:v31];
    [(FTMessageDelivery *)self->_homeKitMessageDelivery sendMessage:v21];
  }
}

- (void)requestVMData:(id)a3 requestID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSVMEntitlement];

  if (v12)
  {
    v13 = [[IDSVMRequest alloc] initWithDataRepresentation:v8];
    v14 = v13;
    if (v13)
    {
      if ([(IDSVMRequest *)v13 purpose]== 1)
      {
        v15 = objc_alloc_init(IDSVMRegistrationResponse);
        v16 = [(IDSVMRegistrationResponse *)v15 dataRepresentation];

        [(IDSDaemon *)self _respondToVMDataRequestWithData:v16 requestID:v9 error:0 messageContext:v10];
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
        v21 = v9;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RequestID %@ client gave an unsupported request to the daemon. Returning error %@", &v20, 0x16u);
      }
    }

    [(IDSDaemon *)self _respondToVMDataRequestWithData:0 requestID:v9 error:v18 messageContext:v10];
    goto LABEL_13;
  }

  v14 = [NSError errorWithDomain:IDSVMErrorDomain code:1 userInfo:0];
  v17 = +[IMRGLog vm];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "RequestID %@ client is unentitled. Returning error %@", &v20, 0x16u);
  }

  [(IDSDaemon *)self _respondToVMDataRequestWithData:0 requestID:v9 error:v14 messageContext:v10];
LABEL_13:
}

- (void)_respondToVMDataRequestWithData:(id)a3 requestID:(id)a4 error:(id)a5 messageContext:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  [v9 setReply:1];
  v12 = [v9 localObject];
  v13 = [(IDSDaemon *)self broadcasterForLocalObject:v12 messageContext:v9];

  [v13 vmDataResponse:v11 forRequestID:v10 withError:0];
}

- (void)appleCareSignInUserName:(id)a3 DSID:(id)a4 authToken:(id)a5 requestID:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v16 localObject];
  v18 = [(IDSDaemon *)self validateListenerForLocalObject:v17 andCheckEntitlement:kIDSAppleCareServicesEntitlement];

  if (v18)
  {
    v19 = [v13 _stripFZIDPrefix];

    v20 = [NSString stringWithFormat:@"D:%@", v19];
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v20, kIDSServiceDefaultsAuthorizationIDKey, v12, kIDSServiceDefaultsSelfHandleKey, 0];

    v22 = +[IDSDRegistrationListener sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1003FD3D4;
    v26[3] = &unk_100BDB148;
    v26[4] = self;
    v27 = v15;
    v28 = v16;
    v23 = [v22 addBlockForRegistrationCompletion:v26];

    v24 = [(IDSDaemon *)self registrationConductor];
    [v24 setShouldSupressRepairLogic:1];

    v25 = [(IDSDaemon *)self signInResponder];
    [v25 iCloudSignInWithUsername:v12 authToken:v14 password:0 accountInfo:v21 accountStatus:0 handles:0];

    v13 = v19;
  }
}

- (void)appleCareSignOutUserWithRequestID:(id)a3 messageContext:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSAppleCareServicesEntitlement];

  if (v8)
  {
    v9 = [(IDSDaemon *)self signInResponder];
    [v9 iCloudSignOut];

    [(IDSDaemon *)self _respondToAppleCareRequestID:v10 withMessageContext:v6 error:0];
  }
}

- (void)_respondToAppleCareRequestID:(id)a3 withMessageContext:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 localObject];
  v11 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v10];

  [v11 applecareResponseForRequestID:v9 withError:v8];
}

- (void)reportSpamMessage:(id)a3 serviceIdentifier:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 localObject];
    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Told to report spam with localObject %@ for service: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v29 = [v10 localObject];
    v30 = v9;
    _IDSLogV();
  }

  v13 = [v10 localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:v13 andCheckEntitlement:kIDSReportSpamEntitlement];

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
      v17 = [v8 objectForKey:kIDSGeneralSpamReportRecipientURIKey];
      v31 = [v17 _stripFZIDPrefix];
      v18 = [v31 _bestGuessURI];

      v19 = v9;
      v20 = +[IDSDServiceController sharedInstance];
      v21 = [v20 serviceWithIdentifier:v19];

      v22 = v19;
      if ([v21 adHocServiceType])
      {
        v23 = +[IDSDServiceController sharedInstance];
        v24 = [v23 primaryServiceForAdhocServiceType:{objc_msgSend(v21, "adHocServiceType")}];

        v22 = [v24 identifier];
      }

      v25 = [[NSMutableDictionary alloc] initWithDictionary:v8];
      [v25 setObject:v19 forKey:kIDSGeneralSpamReportSubServiceKey];
      [v25 setObject:v22 forKey:kIDSGeneralSpamReportTopLevelServiceKey];
      v26 = +[IDSDAccountController sharedInstance];
      v27 = [v26 accountWithServiceName:v19 aliasURI:v18];

      if (v27)
      {
        [v27 reportMessage:v25 toURI:v18];
      }

      else
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v19;
          v34 = 2112;
          v35 = v18;
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
    v4 = [v3 BOOLValue];
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
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
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (IDSDaemon)init
{
  v10.receiver = self;
  v10.super_class = IDSDaemon;
  v2 = [(IDSDaemon *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(IDSDaemon *)v2 systemMonitor];
    v5 = [v4 systemIsShuttingDown];

    if (!v5)
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
  v3 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [v3 setShouldWaitToSetTopics:1];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[FTDeviceSupport sharedInstance];
    v6 = [v5 deviceInformationString];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = geteuid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "identityservicesd launched (%@) user: %d", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = +[FTDeviceSupport sharedInstance];
      v137 = [v7 deviceInformationString];
      v139 = geteuid();
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v8 = [FTDeviceSupport sharedInstance:v137];
        v137 = [v8 deviceInformationString];
        v139 = geteuid();
        _IDSLogV();
      }
    }
  }

  v9 = [IMRGLog registration:v137];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[FTDeviceSupport sharedInstance];
    v11 = [v10 deviceInformationString];
    v12 = geteuid();
    *buf = 138412546;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "identityservicesd launched: (%@) user: %d", buf, 0x12u);
  }

  v13 = +[IMLockdownManager sharedInstance];
  v14 = [v13 isInternalInstall];

  if (v14)
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

    v18 = [(IDSDaemon *)self daemonMIGInterface];
    [v18 setDelegate:self];
    [v18 acceptIncomingGrantRequests];
    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      [v18 launchSim2HostServer];
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

    v20 = [(IDSDaemon *)self daemonXPCInterface];
    v21 = [(IDSDaemon *)self daemonMIGQueryInterface];
    [v21 setDelegate:self];
    [v21 acceptIncomingGrantRequests];
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

  v24 = [(IDSDaemon *)self serviceController];
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

  v27 = [(IDSDaemon *)self daemonCapabilities];
  v28 = +[IMRGLog registration];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Bringing up restrictions", buf, 2u);
  }

  v29 = [(IDSDaemon *)self restrictions];
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
    v48 = [v47 integerValue];
  }

  else
  {
    v48 = 4;
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

  v53 = [v45 initWithLimit:v48 timeLimit:v52];
  v54 = [IDSRateLimiter alloc];
  v55 = [IDSServerBag sharedInstanceForBagType:0];
  v56 = [v55 objectForKey:@"did-flush-cache-limit"];

  if (v56)
  {
    v57 = [v56 integerValue];
  }

  else
  {
    v57 = 1;
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

  v62 = [v54 initWithLimit:v57 timeLimit:v61];
  v63 = [IDSRegistrationHashProcessor alloc];
  v64 = [(IDSDaemon *)self accountController];
  v65 = +[IDSPeerIDManager sharedInstance];
  v66 = +[IDSRegistrationKeyManager sharedInstance];
  v67 = [(IDSRegistrationHashProcessor *)v63 initWithAccountController:v64 peerIDManager:v65 negativeRegistrationUpdateCache:v53 notifyDidFlushCacheRateLimiter:v62 registrationKeyManager:v66];
  queryUpdateNotifier = self->_queryUpdateNotifier;
  self->_queryUpdateNotifier = v67;

  v69 = NSHomeDirectory();
  v147[0] = v69;
  v147[1] = @"/Library/IdentityServices/";
  v70 = [NSArray arrayWithObjects:v147 count:2];
  v71 = [NSURL fileURLWithPathComponents:v70];
  v72 = [v71 path];

  v73 = [IDSQuerySDPersistenceManager alloc];
  v74 = +[IDSDServiceController sharedInstance];
  v75 = [(IDSQuerySDPersistenceManager *)v73 initWithFilePath:v72 serviceController:v74];
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

  v95 = [(IDSDaemon *)self systemMonitor];
  [v95 setActive:1];

  v96 = [(IDSDaemon *)self systemMonitor];
  [v96 setReceivesMemoryWarnings:1];

  v97 = [(IDSDaemon *)self systemMonitor];
  [v97 setWatchesSystemLockState:1];

  v98 = [(IDSDaemon *)self systemMonitor];
  [v98 addListener:self];

  v99 = [(IDSDaemon *)self systemMonitor];
  [v99 setWatchesDataProtectionLockState:1];

  v100 = [(IDSDaemon *)self uTunController];
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
    v108 = [v107 integerValue];
  }

  else
  {
    v108 = 1;
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

  v113 = [v105 initWithLimit:v108 timeLimit:v112];
  decryptionErrorCacheClearRateLimiter = self->_decryptionErrorCacheClearRateLimiter;
  self->_decryptionErrorCacheClearRateLimiter = v113;

  v115 = [IDSRateLimiter alloc];
  v116 = [IDSServerBag sharedInstanceForBagType:0];
  v117 = [v116 objectForKey:@"listener-logging-limit"];

  if (v117)
  {
    v118 = [v117 integerValue];
  }

  else
  {
    v118 = 1;
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

  v123 = [v115 initWithLimit:v118 timeLimit:v122];
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

- (void)_cleanupIncomingFilesDirectory:(id)a3
{
  v3 = COERCE_DOUBLE(a3);
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

- (id)broadcastAttemptQueueFromPriority:(int64_t)a3
{
  switch(a3)
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

- (void)releaseBroadcastAttemptQueue:(int64_t)a3
{
  switch(a3)
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
  v3 = [(IDSDaemon *)self idStatusQueryController];
  [v3 removeCompletionBlockForUniqueIdentifier:@"IDSDaemon"];

  v4 = [(IDSDaemon *)self pairingManager];
  [v4 removeDelegate:self];

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

- (void)duetInterface:(id)a3 resourceAvailabilityChangedForIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:v7 priorities:0 dataProtectionClasses:0];
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
  v24 = self;
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
          v9 = [v8 remoteObject];
          v10 = [v8 ID];
          v11 = v6;
          v12 = v4;
          v13 = v5;
          v14 = [v9 pid];
          [v9 processName];
          v23 = v22 = v14;
          v5 = v13;
          v4 = v12;
          v6 = v11;
          v16 = v10;
          _IMLog();
        }

        v17 = [v8 remoteObject];
        _IMLog();

        v18 = [v8 localObject];
        _IMLog();

        v19 = [v8 entitlements];
        _IMLog();

        v20 = [v8 commands];
        _IMLog();

        v21 = [v6[476] numberWithUnsignedInt:{objc_msgSend(v8, "capabilities", v20)}];
        _IMLog();

        v15 = [v8 bundleID];
        _IMLog();

        _IMLog();
        _IMLog();
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16, v15];
    }

    while (v4);
  }

  _IMLog();
  pthread_mutex_unlock(&v24->_listenerLock);
}

- (id)_newSetupInfoWithContext:(id)a3
{
  v97 = a3;
  im_assert_primary_base_queue();
  v96 = objc_autoreleasePoolPush();
  v3 = +[IMRGLog timing];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = [v97 objectForKey:@"agentRequested"];
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
  v11 = [(IDSDaemon *)self serviceController];
  v120 = [v11 allServices];

  v123 = [v120 count];
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
        v16 = [v14 localIdentities];
        v17 = [v14 iCloudIdentities];
        v18 = [v14 dictionaryRepresentation];
        v19 = [v18 mutableCopy];

        [v19 setObject:v16 forKey:v134];
        v20 = [v14 dictionaryRepresentation];
        v21 = [v20 mutableCopy];

        [v21 setObject:v17 forKey:v134];
        v22 = [v14 uniqueID];
        if (v22)
        {
          v23 = [v14 uniqueID];
          v24 = [v23 isEqualToString:v128];

          if ((v24 & 1) == 0)
          {
            [v118 addObject:v19];
          }
        }

        v25 = [v14 pushToken];
        if (v25)
        {
          v26 = [v17 count] == 0;

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
  v27 = [(IDSDaemon *)self familyManager];
  v28 = [v27 familyHandles];
  v98 = [v28 copy];

  v102 = objc_alloc_init(NSMutableSet);
  v101 = objc_alloc_init(NSMutableDictionary);
  v100 = objc_alloc_init(NSMutableDictionary);
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v29 = [(IDSDaemon *)self familyManager];
  v30 = [v29 familyMembers];

  v31 = [v30 countByEnumeratingWithState:&v145 objects:v155 count:16];
  if (v31)
  {
    v32 = *v146;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v146 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v145 + 1) + 8 * j);
        v35 = objc_autoreleasePoolPush();
        v36 = [v34 dictionaryRepresentation];
        [v133 addObject:v36];

        objc_autoreleasePoolPop(v35);
      }

      v31 = [v30 countByEnumeratingWithState:&v145 objects:v155 count:16];
    }

    while (v31);
  }

  [v106 setObject:v98 forKey:IDSFamilyHandlesKey];
  [v106 setObject:v133 forKey:IDSFamilyMembersKey];
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v110 = v120;
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
        v129 = [v131 identifier];
        v119 = [(IDSDaemon *)self client:obja isEntitledToAccessService:v129 forEntitlement:v114 shouldWarn:0];
        v121 = [(IDSDaemon *)self client:obja isEntitledToAccessService:v129 forEntitlement:v113 shouldWarn:0];
        if ((v119 | v121 | [(IDSDaemon *)self client:obja isEntitledToAccessService:v129 forEntitlement:v112 shouldWarn:0]))
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
                v47 = [v45 accountSetupInfo];
                [v40 addObject:v47];

                v48 = +[IDSDAccountController sharedInstance];
                v49 = [v45 uniqueID];
                v50 = [v48 isEnabledAccount:v49];

                if (v50)
                {
                  v51 = [v45 uniqueID];
                  [v135 addObject:v51];
                }

                v52 = [v45 dependentRegistrations];
                v53 = [v52 mutableCopy];

                if ([v53 count])
                {
                  v54 = [v45 uniqueID];
                  [v136 setObject:v53 forKey:v54];
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
            [v105 setObject:v56 forKey:v129];
          }

          if ([v131 isFamilyService])
          {
            v57 = [v106 copy];
            [v104 setObject:v57 forKey:v129];

            v58 = [v102 copy];
            [v103 setObject:v58 forKey:v129];
          }

          if (v121)
          {
            v59 = +[IDSDeliveryController sharedInstance];
            v60 = [v59 effectiveMaxPayloadSizeIfCanUseLargePayload:{objc_msgSend(v131, "canUseLargePayload")}];

            v61 = [NSNumber numberWithInteger:v60];
            [v109 setObject:v61 forKey:v129];
          }

          else
          {
            [v109 setObject:&off_100C3C0A0 forKey:v129];
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
            [v111 setObject:v64 forKey:v129];
          }

          v65 = [v131 identifier];
          [v108 setObject:v40 forKey:v65];

          v66 = [v131 identifier];
          [v107 setObject:v135 forKey:v66];

          if ([v131 isInvitationService])
          {
            invitationStore = self->_invitationStore;
            v68 = [v131 identifier];
            v69 = [(IDSInvitationStore *)invitationStore persistedPendingInvitationsForService:v68];

            if (v69)
            {
              v70 = [v131 identifier];
              [v101 setObject:v69 forKey:v70];
            }

            v71 = self->_invitationStore;
            v72 = [v131 identifier];
            v73 = [(IDSInvitationStore *)v71 persistedReceivedInvitationsForService:v72];

            if (v73)
            {
              v74 = [v131 identifier];
              [v100 setObject:v73 forKey:v74];
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
  v89 = [v88 deviceIdentifier];

  if (v89)
  {
    [v99 setObject:v89 forKey:@"deviceIdentifier"];
  }

  objc_autoreleasePoolPop(v75);
  v90 = +[IDSPairingManager sharedInstance];
  v91 = [v90 pairedDeviceUniqueID];

  v92 = +[IMRGLog registration];
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v158 = v91;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Active device uniqueID: %@", buf, 0xCu);
  }

  if (v91)
  {
    [v99 setObject:v91 forKey:@"activeDeviceUniqueID"];
  }

  objc_autoreleasePoolPop(v96);
  v93 = v99;

  return v93;
}

- (void)_cleanupListenerWithPid:(int)a3
{
  v3 = *&a3;
  pthread_mutex_lock(&self->_listenerLock);
  v5 = [(NSMutableArray *)self->_listeners count];
  if ((v5 - 1) >= 0)
  {
    do
    {
      v6 = [(NSMutableArray *)self->_listeners objectAtIndex:--v5];
      if (![v6 type])
      {
        v7 = [v6 remoteObject];
        if ([v7 pid] == v3)
        {
          v8 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v12 = v7;
            v13 = 1024;
            v14 = v3;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found existing listener %@ for pid %d, cleaning up", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v9 = v7;
            v10 = v3;
            _IDSLogV();
          }

          [(IDSDaemon *)self removeListenerWithRemoteXPCObject:v7, v9, v10];
          [v7 invalidate];
        }
      }
    }

    while (v5 > 0);
  }

  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)_resetBroadcastQueuesForServices:(id)a3
{
  v4 = a3;
  [(IDSDaemon *)self _resetQueuedBroadcastsForServices:v4 priority:0];
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10042BC64;
  v15[3] = &unk_100BD6E40;
  v15[4] = self;
  v6 = v4;
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

- (void)_flushBroadcastQueuesForServices:(id)a3 existingServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  im_assert_primary_base_queue();
  v8 = [v7 mutableCopy];

  [v8 intersectSet:v6];
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

- (void)dropQueuedBroadcastsForServices:(id)a3
{
  v4 = a3;
  [(IDSDaemon *)self _dropQueuedBroadcastsForServices:v4 priority:0];
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10042C070;
  v15[3] = &unk_100BD6E40;
  v15[4] = self;
  v6 = v4;
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

- (BOOL)_setupListenerConnection:(id)a3 listenerID:(id)a4 pid:(int)a5 setupInfo:(id)a6 entitlements:(id)a7 setupCompletionBlock:(id)a8
{
  v11 = *&a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v79 = a7;
  v78 = a8;
  im_assert_primary_base_queue();
  context = objc_autoreleasePoolPush();
  v80 = v14;
  if (!v14)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = v15;
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

  if (![v15 length])
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Tried to set up listener (port: %@) with empty ID", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [(IDSDaemon *)self _cleanupListenerWithPid:v11];
  v17 = [[IMLocalObject alloc] initWithTarget:self connection:v14 protocol:&OBJC_PROTOCOL___IDSDaemonProtocol forceSecureCoding:1 offMainThread:_os_feature_enabled_impl()];
  v76 = v17 != 0;
  if (v17)
  {
    v73 = [[IMRemoteObject alloc] initWithConnection:v14 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol alreadyConfigured:1 forceSecureCoding:1];
    [v73 setPid:v11];
    pthread_mutex_lock(&self->_listenerLock);
    v68 = [(NSMutableSet *)self->_listenerCachedServices count];
    v18 = [v16 objectForKey:@"capabilities"];
    if (v18)
    {
      v19 = [v16 objectForKey:@"capabilities"];
      v20 = [v19 unsignedIntValue];
    }

    else
    {
      v20 = 0;
    }

    v23 = [v16 objectForKey:@"services"];
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

    v26 = [v16 objectForKey:@"commands"];
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
    v30 = [v16 objectForKey:@"notificationServices"];
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

    v33 = [v16 objectForKey:@"bundleID"];
    v34 = v33;
    v35 = &stru_100C06028;
    if (v33)
    {
      v35 = v33;
    }

    v36 = v35;

    v70 = v36;
    v69 = [(__CFString *)v36 length]!= 0;
    v75 = [[IDSIPCListener alloc] initWithRemoteObject:v73 localObject:v17 ID:v15 capabilities:v20 entitlements:v79 services:v72 notificationServices:v74 commands:v71 bundleID:v36];
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

    v41 = [v16 objectForKey:@"processName"];
    [v17 setProcessName:v41];
    [v73 setProcessName:v41];
    v42 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v17 processName];
      v44 = [v17 connection];
      *buf = 138414082;
      v82 = v15;
      v83 = 2112;
      v84 = v70;
      v85 = 2112;
      v86 = v16;
      v87 = 2112;
      v88 = v79;
      v89 = 1024;
      v90 = v11;
      v91 = 2112;
      v92 = v43;
      v93 = 2048;
      v94 = v44;
      v95 = 2112;
      v96 = v74;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting up connection to listener ID: %@  bundle ID: %@  setupInfo %@ entitlements %@  pid: %d  name: %@  connection: %p notificationServices %@", buf, 0x4Eu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v45 = [v17 processName];
        v66 = [v17 connection];
        v67 = v74;
        v64 = v11;
        v65 = v45;
        v62 = v16;
        v63 = v79;
        v60 = v15;
        v61 = v70;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v46 = [v17 processName];
          v66 = [v17 connection];
          v67 = v74;
          v64 = v11;
          v65 = v46;
          v62 = v16;
          v63 = v79;
          v60 = v15;
          v61 = v70;
          _IDSLogV();
        }
      }
    }

    if ([v15 isEqualToIgnoringCase:{@"com.apple.healthd", v60, v61, v62, v63, v64, v65, v66, v67}])
    {
      v47 = +[IMRGLog healthDebug];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v17 processName];
        v49 = [v17 connection];
        *buf = 138414082;
        v82 = v15;
        v83 = 2112;
        v84 = v70;
        v85 = 2112;
        v86 = v16;
        v87 = 2112;
        v88 = v79;
        v89 = 1024;
        v90 = v11;
        v91 = 2112;
        v92 = v48;
        v93 = 2048;
        v94 = v49;
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
      v53 = [v16 objectForKey:@"context"];
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

      v78[2](v78, v56, v17);
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

- (BOOL)validateListenerForLocalObject:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10042CDB8;
  v6[3] = &unk_100BDC020;
  v6[4] = &v7;
  [(IDSDaemon *)self validateListenerForLocalObject:v4 andPerformBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (BOOL)validateListenerForLocalObject:(id)a3 andCheckEntitlement:(id)a4 forAccessToServiceWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = a5;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [(IDSDaemon *)self validateListenerForLocalObject:v8 andPerformBlock:v13];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

- (void)validateListenerForLocalObject:(id)a3 andPerformBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  else if (v6)
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
        v14 = [v13 localObject];
        v15 = v14 == v6;

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

      v7[2](v7, v16);
    }

    else
    {
LABEL_16:

LABEL_19:
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v6;
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

- (void)_iterateOverConnectedListeners:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_listenerLock);
  listeners = self->_listeners;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10042D3B8;
  v7[3] = &unk_100BDC070;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:v7];
  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)_removeListener:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 ID];
      *buf = 138412290;
      v82 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing listener ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v52 = [v4 ID];
      _IDSLogEventV();
    }

    v65 = [v4 localObject];
    v66 = [v4 entitlements];
    if ([v66 hasEntitlement:kIDSContinuityEntitlement])
    {
      v7 = +[IDSWPLinkManager sharedInstance];
      [v7 clientInstancesRemoved];
    }

    if ([v66 hasEntitlement:kIDSLocalPairingEntitlement])
    {
      v8 = +[IDSDuetInterface sharedInstance];
      v9 = [v65 processName];
      [v8 setInitialSyncInProgress:0 forClientID:v9];

      v10 = +[IDSDuetInterface sharedInstance];
      v11 = [v65 processName];
      [v10 setReunionSyncInProgress:0 forClientID:v11];
    }

    if ([v66 hasEntitlement:kIDSAppleCareServicesEntitlement])
    {
      v12 = +[IMRGLog appleCare];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed Apple Care listener", buf, 2u);
      }

      v13 = [(IDSDaemon *)self signInResponder];
      [v13 iCloudSignOut];

      v14 = [(IDSDaemon *)self registrationConductor];
      [v14 setShouldSupressRepairLogic:0];

      v15 = [(IDSDaemon *)self registrationConductor];
      [v15 kickiCloudRepair];
    }

    v16 = [v4 ID];
    v17 = [v4 remoteObject];
    v64 = sub_10000BE90(v16, v17);

    v18 = +[IDSDSessionController sharedInstance];
    [v18 cleanupSessionsForClient:v64];

    v19 = +[IDSUTunController sharedInstance];
    [v19 cleanupSocketsForClient:v64];

    v20 = [v4 services];
    v21 = +[IDSUTunDeliveryController sharedInstance];
    v22 = [v20 allObjects];
    [v21 defaultPeerSetPreferInfraWiFi:0 services:v22];

    [(IDSDaemon *)self _resetBroadcastQueuesForServices:v20];
    if (![v4 type])
    {
      v23 = +[NSNotificationCenter defaultCenter];
      v24 = [v4 remoteObject];
      [v23 removeObserver:self name:IMRemoteObjectDidDisconnectNotification object:v24];

      v25 = +[NSNotificationCenter defaultCenter];
      [v25 removeObserver:self name:IMLocalObjectDidDisconnectNotification object:v65];
    }

    [v65 invalidate];
    v26 = [v4 bundleID];
    v63 = [v26 length];

    [(NSMutableArray *)self->_listeners removeObjectIdenticalTo:v4];
    v27 = [v4 services];
    v28 = [v27 count];

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
            v36 = [*(*(&v76 + 1) + 8 * i) services];
            [(NSMutableSet *)v35 unionSet:v36];
          }

          v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v76 objects:v89 count:16];
        }

        while (v32);
      }

      v71 = _NSConcreteStackBlock;
      v72 = 3221225472;
      v73 = sub_10042E00C;
      v74 = &unk_100BD6ED0;
      v75 = self;
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

    v39 = [v4 commands];
    v40 = [v39 count];

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
            v48 = [*(*(&v67 + 1) + 8 * j) commands];
            [(NSMutableSet *)v47 unionSet:v48];
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

    [(IDSDaemon *)self removeWakingPushPriorityForServices:v20, v54, v56, v58, v60];
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

- (void)_removeListenerWithRemoteXPCObject:(id)a3
{
  v4 = a3;
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
          v10 = [v9 remoteObject];
          v11 = v10 == v4;

          if (v11)
          {
            [(IDSDaemon *)self _removeListener:v9];
            v12 = +[IMRemoteObjectBroadcaster defaultBroadcaster];
            [v12 flushProxy:v4];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)listenerForLocalObject:(id)a3
{
  v4 = a3;
  if (v4)
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
          v10 = [v9 localObject];
          v11 = v10 == v4;

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

- (id)listenerRemoteObjectForLocalObject:(id)a3
{
  v3 = [(IDSDaemon *)self listenerForLocalObject:a3];
  v4 = [v3 remoteObject];

  return v4;
}

- (void)_removeLocalListenerObject:(id)a3
{
  v4 = a3;
  if (v4)
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
          v10 = [v9 localObject];
          v11 = v10 == v4;

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

- (void)remoteObjectDiedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteObjectDiedNotification: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  pthread_mutex_lock(&self->_listenerLock);
  [(IDSDaemon *)self removeListenerWithRemoteXPCObject:v5];
  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)localObjectDiedNotification:(id)a3
{
  v14 = a3;
  v17 = [v14 object];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "localObjectDiedNotification: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v17;
    _IDSLogV();
  }

  v15 = [v17 processName];
  v16 = [(IDSDaemon *)self _processNameToServiceName:v15];
  if (v16)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting link preferences for process %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = v15;
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
  [(IDSDaemon *)self removeLocalListenerObject:v17];
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

- (id)_processNameToServiceName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if ([v3 isEqualToString:@"callservicesd"])
  {
    v5 = @"com.apple.private.alloy.phonecontinuity";
LABEL_9:
    [v4 addObject:v5];
    v6 = [v4 copy];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"assistantd"])
  {
    v5 = @"com.apple.private.alloy.siri.proxy";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"companion_proxy"])
  {
    v5 = @"com.apple.private.alloy.companionproxy";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"mediaplaybackd"])
  {
    v5 = @"com.apple.private.alloy.fignero";
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)_ultraConstrainedPushTopicsForTopics:(id)a3
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
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

        v13 = [(IDSDaemon *)self serviceController];
        v14 = [v13 serviceWithPushTopic:v9];
        v15 = [v14 isUltraConstrainedPushAllowed];

        if (v15 & 1) != 0 || (v12)
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
  v37 = [(IDSDaemon *)self _pushTopics];
  v2 = [NSMutableSet setWithSet:v37];
  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableSet);
  v5 = [(IDSPersistentMap *)self->_wakingPushPriorityStore copyDictionaryRepresentation];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = v5;
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
        v12 = [v11 integerValue];
        v13 = v3;
        if (v12 != 2)
        {
          if (v12)
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

  v19 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v20 = [(IDSDaemon *)self _commands];
  [v19 addListener:self wakingTopics:v3 opportunisticTopics:v2 nonWakingTopics:v4 commands:v20 queue:v36];

  v21 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v22 = [(IDSDaemon *)self _ultraConstrainedPushTopicsForTopics:v37];
  [v21 setUltraConstrainedTopics:v22 forListener:self];

  v23 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = [(IDSDaemon *)self serviceController];
  v25 = [v24 allServices];

  v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = *v40;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        if (([v29 pushToWakeDisabled] & 1) == 0)
        {
          v30 = [v29 pushTopic];
          [v23 addObject:v30];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v26);
  }

  v31 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [v31 configureAsMacNotificationCenterObserver:kFZTextAppBundleIdentifier withPushToWakeTopics:v23];
}

- (void)_stopPushHandling
{
  v3 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  [v3 removeListener:self];
}

- (id)broadcasterWithMessageContext:(id)a3
{
  v4 = a3;
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
    v6 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:self->_listeners messageContext:v4 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
    pthread_mutex_unlock(&self->_listenerLock);
  }

  return v6;
}

- (id)broadcasterForLocalObject:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v10 = [(IDSDaemon *)self listenerForLocalObject:v6];
    if (v10)
    {
      notifier = self->_notifier;
      v12 = [NSArray arrayWithObject:v10];
      v9 = [(IDSIPCBroadcaster *)notifier broadcastProxyForTargets:v12 messageContext:v7 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)broadcasterForEntitlement:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v9 = [(IDSDaemon *)self broadcasterForTopic:0 entitlement:v6 command:0 messageContext:v7];
  }

  return v9;
}

- (id)_lockedRemoteObjectsWithService:(id)a3 entitlement:(id)a4 command:(id)a5 capabilities:(unsigned int)a6 ignoreService:(BOOL)a7 useNotificationServices:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = *&a6;
  v20 = a4;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [NSArray arrayWithObjects:&v20 count:1];

  v18 = [(IDSDaemon *)self _lockedRemoteObjectsWithService:v16 entitlements:v17 command:v14 capabilities:v10 ignoreService:v9 useNotificationServices:v8, v20];

  return v18;
}

- (id)_lockedRemoteObjectsWithService:(id)a3 entitlements:(id)a4 command:(id)a5 capabilities:(unsigned int)a6 ignoreService:(BOOL)a7 useNotificationServices:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000A984;
  v38 = sub_10000BC34;
  v39 = objc_alloc_init(NSMutableArray);
  v17 = [v14 identifier];
  listeners = self->_listeners;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10042FD2C;
  v25[3] = &unk_100BDC098;
  v19 = v16;
  v26 = v19;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v20 = v14;
  v27 = v20;
  v21 = v17;
  v28 = v21;
  v22 = v15;
  v29 = v22;
  v30 = &v34;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:v25];
  v23 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v23;
}

- (id)broadcasterForTopic:(id)a3 entitlement:(id)a4 command:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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

  else if (v10 || v11 || v12)
  {
    v16 = [(IDSDaemon *)self serviceController];
    v17 = [v16 serviceWithPushTopic:v10];

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Service found to find broadcaster %@   topic: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_lock(&self->_listenerLock);
    v19 = [(IDSDaemon *)self _lockedRemoteObjectsWithService:v17 entitlement:v11 command:v12 capabilities:0];
    pthread_mutex_unlock(&self->_listenerLock);
    v15 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:v19 messageContext:v13 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
  }

  else
  {
    v15 = [(IDSDaemon *)self broadcasterWithMessageContext:v13];
  }

  return v15;
}

- (id)registrationBroadcasterForTopic:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToIgnoringCase:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(v6, "isEqualToIgnoringCase:", @"com.apple.ess") & 1) != 0 || (objc_msgSend(v6, "isEqualToIgnoringCase:", @"com.apple.private.ac") & 1) != 0 || objc_msgSend(v6, "isEqualToIgnoringCase:", @"com.apple.private.alloy.facetime.multi"))
  {
    v8 = [(IDSDaemon *)self broadcasterForTopic:v6 entitlement:kIDSRegistrationEntitlement messageContext:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)broadcasterForTopic:(id)a3 ignoreServiceListener:(BOOL)a4 messageContext:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
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

  else if (v8)
  {
    v13 = [(IDSDaemon *)self serviceController];
    v14 = [v13 serviceWithPushTopic:v8];

    pthread_mutex_lock(&self->_listenerLock);
    v25[0] = kIDSMessagingEntitlement;
    v25[1] = kIDSRegistrationEntitlement;
    v25[2] = kIDSSessionEntitlement;
    v25[3] = kIDSSessionPrivateEntitlement;
    v25[4] = kIDSSelfSessionEntitlement;
    v25[5] = kIDSHighPriorityMessagingEntitlement;
    v25[6] = kIDSUrgentPriorityMessagingEntitlement;
    v15 = [NSArray arrayWithObjects:v25 count:7];
    v16 = [(IDSDaemon *)self _lockedRemoteObjectsWithService:v14 entitlements:v15 command:0 capabilities:0 ignoreService:v6 useNotificationServices:0];
    v17 = [NSSet setWithArray:v16];
    if ([v8 isEqualToIgnoringCase:@"com.apple.private.alloy.accountssync"])
    {
      v18 = +[IMRGLog accountsDebugging];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "All targets for broadcast %@", &v23, 0xCu);
      }
    }

    if (([v8 isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.classc"] & 1) != 0 || (objc_msgSend(v8, "isEqualToIgnoringCase:", @"com.apple.private.alloy.fitnessfriends.icloud") & 1) != 0 || objc_msgSend(v8, "isEqualToIgnoringCase:", @"com.apple.private.alloy.fitnessfriends.imessage"))
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
    v21 = [v17 allObjects];
    v12 = [(IDSIPCBroadcaster *)notifier broadcastProxyForTargets:v21 messageContext:0 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
  }

  else
  {
    v12 = [(IDSDaemon *)self broadcasterWithMessageContext:v9];
  }

  objc_autoreleasePoolPop(v10);

  return v12;
}

- (void)_locked_printBroadcastAttemptMapForPriority:(int64_t)a3 service:(id)a4
{
  v6 = a4;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109378;
    v11[1] = a3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Broadcast Priority: %d Service: %@ \n", v11, 0x12u);
  }

  v8 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:v6];
    [v10 enumerateObjectsUsingBlock:&stru_100BDC0D8];
  }
}

- (void)enqueueBroadcast:(id)a3 forTopic:(id)a4 entitlement:(id)a5 command:(id)a6 capabilities:(unsigned int)a7 messageContext:(id)a8
{
  v9 = *&a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = objc_alloc_init(IDSIncomingMessageBroadcast);
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = [(IDSIncomingMessageBroadcast *)v19 broadcastID];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Broadcast: outgoing generic notification %lld\n", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    [(IDSIncomingMessageBroadcast *)v19 broadcastID];
    _IDSLogTransport();
  }

  [(IDSDaemon *)self enqueueIncomingMessageBroadcast:v14 broadcastData:v19 forTopic:v15 entitlement:v16 command:v17 capabilities:v9 messageContext:v18];
}

- (void)enqueueIncomingMessageBroadcast:(id)a3 broadcastData:(id)a4 forTopic:(id)a5 entitlement:(id)a6 command:(id)a7 capabilities:(unsigned int)a8 messageContext:(id)a9
{
  v65 = *&a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v66 = a6;
  v17 = a7;
  v18 = a9;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v78 = _os_activity_create(&_mh_execute_header, "Working on outgoing broadcast", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v78, &state);
  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v15 broadcastID];
    *buf = 134217984;
    v80 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Broadcast: starting to work on outgoing notification id %lld\n", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v48 = [v15 broadcastID];
    _IDSLogTransport();
  }

  if (!self->_isHardReset)
  {
    if (!v14)
    {
      goto LABEL_71;
    }

    v63 = objc_retainBlock(v14);
    v57 = [v15 messagePriority];
    if (!v16)
    {
      v32 = [(IDSDaemon *)self broadcasterWithMessageContext:v18];
      v63[2](v63, v32);

LABEL_70:
      goto LABEL_71;
    }

    context = objc_autoreleasePoolPush();
    v22 = [(IDSDaemon *)self serviceController];
    v64 = [v22 serviceWithPushTopic:v16];

    v61 = [v64 identifier];

    if (!v61)
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = v16;
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
    v56 = [(IDSDaemon *)self _lockedRemoteObjectsWithNotificationService:v64 entitlement:v66 command:v17 capabilities:v65];
    pthread_mutex_unlock(&self->_listenerLock);
    v62 = [v56 count];
    v60 = [v15 broadcastNeedsClientAck];
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v15 broadcastID];
      *buf = 134219010;
      v80 = v24;
      v81 = 2112;
      v82 = v16;
      v83 = 1024;
      *v84 = v60;
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
      v48 = [v15 broadcastID];
      v49 = v16;
      v50 = v60;
      _IDSLogTransport();
    }

    if (!v62)
    {
      v25 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v15 broadcastID];
        *buf = 134219266;
        v80 = v26;
        v81 = 2112;
        v82 = v16;
        v83 = 2112;
        *v84 = v64;
        *&v84[8] = 2112;
        v85 = v66;
        v86 = 2112;
        v87 = v17;
        v88 = 1024;
        v89 = v65;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Broadcast: broadcast %lld of topic %@ doesn't find target with service %@ entitlement %@ command %@ capabilities %u", buf, 0x3Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v52 = v17;
        v53 = v65;
        v50 = v64;
        v51 = v66;
        v48 = [v15 broadcastID];
        v49 = v16;
        _IDSLogTransport();
      }
    }

    if (v62)
    {
      v27 = 1;
    }

    else
    {
      v27 = v60;
    }

    if (!(v27 | v58) || v62)
    {
      v28 = [v64 identifier];
      v29 = [NSSet setWithObject:v28];
      v30 = [(IDSDaemon *)self _processQueuedBroadcastsForServices:v29 priority:v57 forceRetry:0];

      if (v30)
      {
        v31 = [(IDSIPCBroadcaster *)self->_notifier broadcastProxyForTargets:v56 messageContext:v18 protocol:&OBJC_PROTOCOL___IDSDaemonListenerProtocol];
        v63[2](v63, v31);
        [v15 setBroadcastPerformed:1];
      }

      else if (([v15 transient] & 1) == 0)
      {
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v15 broadcastID];
          *buf = 134217984;
          v80 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Broadcast: failed to deliver broadcast %lld to targets, enqueueing for later dispatch!\n", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v48 = [v15 broadcastID];
          _IDSLogTransport();
        }

        v54 = !v58;
        goto LABEL_49;
      }
    }

    v54 = !v58;
    if (!(v58 & ~v27 | v60))
    {
LABEL_60:
      if (!v62 && !v54)
      {
        [(IDSDaemon *)self _launchServiceOnDemand:v64];
      }

LABEL_64:
      objc_autoreleasePoolPop(context);
      if (v61)
      {
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [v15 broadcastID];
          *buf = 134217984;
          v80 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Broadcast: done working on outgoing notification id %lld\n", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          [v15 broadcastID];
          _IDSLogTransport();
        }
      }

      goto LABEL_70;
    }

LABEL_49:
    v36 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v15 broadcastID];
      *buf = 134218242;
      v80 = v37;
      v81 = 2112;
      v82 = v16;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Broadcast: Enqueueing broadcast %lld on topic %@ \n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v48 = [v15 broadcastID];
      v49 = v16;
      _IDSLogTransport();
    }

    pthread_mutex_lock(&self->_listenerLock);
    v59 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:v57];
    v38 = [v64 identifier];
    v39 = [v59 objectForKey:v38];

    if (!v39)
    {
      v39 = +[NSMutableArray array];
      v40 = [v64 identifier];
      [v59 setObject:v39 forKey:v40];
    }

    [v39 addObject:{v15, v48, v49}];
    if (v60)
    {
      v41 = 0;
    }

    else
    {
      v41 = +[NSDate date];
    }

    v42 = [v15 broadcastID];
    objc_initWeak(buf, v15);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100431AE8;
    v67[3] = &unk_100BDC100;
    v74 = v63;
    objc_copyWeak(v75, buf);
    v67[4] = self;
    v68 = v64;
    v69 = v66;
    v43 = v17;
    v76 = v65;
    v70 = v43;
    v75[1] = v42;
    v71 = v16;
    v72 = v18;
    v44 = v41;
    v73 = v44;
    v45 = objc_retainBlock(v67);
    [v15 setBroadcastBlock:v45];
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

- (void)_launchServiceOnDemand:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 launchMachServiceNotification];

  if (v5)
  {
    v6 = [v3 launchMachServiceNotification];
    [v6 UTF8String];
    v7 = IMXPCCreateConnectionForService();

    if (v7)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 launchMachServiceNotification];
        *buf = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcast: Broadcasting xpc wake notification %@ to awaken clients of %@.\n", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v16 = [v3 launchMachServiceNotification];
        _IDSLogTransport();
      }

      v10 = xpc_dictionary_create(0, 0, 0);
      v17 = [v3 launchMachServiceNotification];
      IMInsertNSStringsToXPCDictionary();

      xpc_connection_send_message(v7, v10);
      if ([v4 hasPrefix:{@"com.apple.private.alloy.continuity", v17, 0}])
      {
        kdebug_trace();
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v11 = [v3 launchDarwinNotification];

  if (v11)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 launchDarwinNotification];
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcast: Broadcasting darwin notification %@ to awaken clients of %@.\n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v15 = [v3 launchDarwinNotification];
      v18 = v4;
      _IDSLogTransport();
    }

    v7 = [v3 launchDarwinNotification];
    v14 = v7;
    notify_post([(_xpc_connection_s *)v7 UTF8String]);
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
    v7 = [v6 allKeys];

    pthread_mutex_unlock(&self->_listenerLock);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
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
          v13 = [(IDSDaemon *)self serviceController];
          v14 = [v13 serviceWithName:v12];

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
  v3 = [(IDSDaemon *)self serviceController];
  v4 = [v3 allServices];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 needsLaunchOnNearbyDevicesChanged])
        {
          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 identifier];
            *buf = 136315394;
            v18 = "[IDSDaemon launchOnDemandServicesForNeedsLaunchOnNearbyDevicesChanged]";
            v19 = 2112;
            v20 = v10;
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

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

- (id)dequeueBroadcastWithID:(int64_t)a3 forMessageUUID:(id)a4 service:(id)a5 priority:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  pthread_mutex_lock(&self->_listenerLock);
  v12 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:a6];
  if ([v12 count] && objc_msgSend(v11, "length"))
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Broadcast: Received request to drop enqueued broadcast %lld\n", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v20 = a3;
      _IDSLogTransport();
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = sub_10000A984;
    v33 = sub_10000BC34;
    v34 = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [v12 objectForKey:v11];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100432E0C;
    v24 = &unk_100BDC168;
    v27 = a3;
    v25 = v10;
    p_buf = &buf;
    [v15 enumerateObjectsUsingBlock:&v21];
    if (*(*(&buf + 1) + 40))
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(*(&buf + 1) + 40) broadcastID];
        *v28 = 134217984;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Broadcast: Dropping enqueued broadcast %lld\n", v28, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v20 = [*(*(&buf + 1) + 40) broadcastID];
        _IDSLogTransport();
      }

      [v15 removeObject:{*(*(&buf + 1) + 40), v20, v21, v22, v23, v24}];
      if (![v15 count])
      {
        [v12 removeObjectForKey:v11];

        v15 = 0;
      }
    }

    objc_autoreleasePoolPop(v14);
    [(IDSDaemon *)self releaseBroadcastAttemptQueue:a6];
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

- (void)_resetQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  pthread_mutex_lock(&self->_listenerLock);
  v7 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:a4];
  if ([v7 count] && objc_msgSend(v6, "count"))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v6;
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Broadcast: Resetting queued broadcasts for services %@ priority %ld \n", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v15 = v6;
      v16 = a4;
      _IDSLogTransport();
    }

    v9 = objc_autoreleasePoolPush();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v6;
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

          v14 = [v7 objectForKey:{*(*(&v17 + 1) + 8 * v13), v15, v16, v17}];
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

- (BOOL)_processQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4 forceRetry:(BOOL)a5
{
  v29 = a5;
  v25 = a3;
  pthread_mutex_lock(&self->_listenerLock);
  v26 = a4;
  v27 = self;
  v7 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:a4];
  if ([v7 count] && objc_msgSend(v25, "count"))
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      *&buf[22] = 1024;
      v44 = v29;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcast: Processing queued broadcasts for services %@ priority %ld forceRetry %d \n", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v22 = v26;
      v23 = v29;
      v21 = v25;
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
    obj = [v25 copy];
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
          v33 = v29;
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
            [(IDSDaemon *)v27 _locked_printBroadcastAttemptMapForPriority:v26 service:v13];
          }

          v9 += v17;
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(context);
    [(IDSDaemon *)v27 releaseBroadcastAttemptQueue:v26];
    pthread_mutex_unlock(&v27->_listenerLock);
    if (v9)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 134218242;
        v39 = v9;
        v40 = 2112;
        v41 = v25;
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

- (void)_dropQueuedBroadcastsForServices:(id)a3 priority:(int64_t)a4
{
  v17 = a3;
  pthread_mutex_lock(&self->_listenerLock);
  v16 = self;
  v19 = [(IDSDaemon *)self broadcastAttemptQueueFromPriority:a4];
  if ([v19 count] && objc_msgSend(v17, "count"))
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping queued broadcasts for all services priority %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = a4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = a4;
          _IDSLogV();
        }
      }
    }

    context = objc_autoreleasePoolPush();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v17;
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
          v11 = [v10 identifier];
          v12 = [v19 objectForKey:v11];

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
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dropped queued broadcasts for all services priority %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = a4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = a4;
          _IDSLogV();
        }
      }
    }

    [(IDSDaemon *)v16 releaseBroadcastAttemptQueue:a4, v14];
    pthread_mutex_unlock(&v16->_listenerLock);
  }

  else
  {
    pthread_mutex_unlock(&self->_listenerLock);
  }
}

+ (void)logAccessWarningForAccount:(id)a3 withService:(id)a4 entitlement:(id)a5 clientEntitlements:(id)a6 logMessage:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (([v15 isEqualToString:@"Allowing wildcard access"] & 1) == 0)
  {
    v16 = [[NSString alloc] initWithFormat:@"IDS access warning: %@ for service: %@ entitlement: %@ account: %@ entitlements: %@", v15, v12, v13, v11, v14];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v16;
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
      v20 = v16;
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

+ (BOOL)entitlementDictionary:(id)a3 isEntitledToAccessService:(id)a4 forEntitlement:(id)a5 forAccount:(id)a6 shouldWarn:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (![v12 count])
  {
    LOBYTE(v17) = 0;
    v18 = @"############### No entitlements found";
    if (!@"############### No entitlements found")
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v16 = [v12 objectForKey:v14];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [v16 containsObject:v13];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isEqualToIgnoringCase:kIDSRegistrationEntitlement] & 1) == 0)
    {
      LOBYTE(v17) = [v16 BOOLValue];
      if (v13)
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
    if (v7)
    {
      [a1 logAccessWarningForAccount:v15 withService:v13 entitlement:v14 clientEntitlements:v12 logMessage:v18];
    }
  }

LABEL_18:

  return v17;
}

- (BOOL)client:(id)a3 isEntitledToAccessService:(id)a4 forEntitlement:(id)a5 shouldWarn:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v8 entitlements];
  if ([v12 hasAnyEntitlements])
  {
    v13 = [v12 hasService:v9 forEntitlement:v10];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v13;
}

- (BOOL)client:(id)a3 isEntitledToAccessService:(id)a4 forAnyOfEntitlements:(id)a5 shouldWarn:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v8 entitlements];
  if ([v12 hasAnyEntitlements])
  {
    v13 = [v12 hasService:v9 forAnyOfEntitlements:v10];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v13;
}

- (BOOL)daemonInterface:(id)a3 shouldGrantAccessForPID:(int)a4 auditToken:(id *)a5 portName:(id)a6 listenerConnection:(id)a7 setupInfo:(id)a8 setupResponse:(id *)a9
{
  v30 = a3;
  v35 = a6;
  v34 = a7;
  v33 = a8;
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
  v17 = [v16 BOOLValue];

  if (v17)
  {
    goto LABEL_4;
  }

  if (([v35 isEqualToIgnoringCase:@"com.apple.purplebuddy"] & 1) != 0 || objc_msgSend(v35, "isEqualToIgnoringCase:", @"com.apple.SetupAssistant"))
  {
    v18 = [[NSMutableDictionary alloc] initWithDictionary:v15];
    [v18 removeObjectForKey:v13];
    v24 = [[NSMutableArray alloc] initWithObjects:{@"com.apple.ess", @"com.apple.madrid", 0}];
    [v18 setObject:v24 forKey:v13];

    goto LABEL_10;
  }

  if ([v35 isEqualToIgnoringCase:@"com.apple.Preferences"] && IDSDebuggingRegistrationDebuggingEnabled())
  {
LABEL_4:
    v18 = [[NSMutableDictionary alloc] initWithDictionary:v15];
    [v18 removeObjectForKey:v13];
    v19 = [(IDSDaemon *)self serviceController];
    v20 = [v19 allServicesStrings];
    [v18 setObject:v20 forKey:v13];

    v21 = +[IMRGLog registration];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(IDSDaemon *)self serviceController];
      v23 = [v22 allServicesStrings];
      *buf = 138412546;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v23;
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
  v26 = [(IDSDaemon *)self _setupListenerConnection:v34 listenerID:v35 pid:a4 setupInfo:v33 entitlements:v25 setupCompletionBlock:v37];
  *a9 = IMCreateXPCObjectFromDictionary();
  v27 = +[IMIDSLog daemon_oversized];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(IDSEntitlements *)v25 dictionaryRepresentation];
    *v38 = 67110146;
    v39 = v26;
    v40 = 2112;
    v41 = v35;
    v42 = 1024;
    v43 = a4;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Granting access %d to listener: %@ pid: %d usingSync: YES givenEntitlements: %@ parsedEntitlements: %@", v38, 0x2Cu);
  }

  _Block_object_dispose(buf, 8);
  return v26;
}

- (void)_pidSuspended:(int)a3
{
  v3 = *&a3;
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
        v8 = [v7 remoteObject];
        if ([v8 pid] == v3)
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

          [(IDSDaemon *)self removeListenerWithRemoteXPCObject:v8, v10];
          [v8 invalidate];
        }
      }
    }

    while (v6 > 0);
  }

  pthread_mutex_unlock(&self->_listenerLock);
}

- (void)setListenerServices:(id)a3 commands:(id)a4 capabilities:(unsigned int)a5 messageContext:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 1024;
    LODWORD(v41) = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Incoming listener services %@ commands %@ caps %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v11;
    v19 = v7;
    v17 = v10;
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
  v14 = [v12 localObject];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100435168;
  v20[3] = &unk_100BDC268;
  v15 = v10;
  v21 = v15;
  v24 = buf;
  v25 = &v34;
  v26 = &v28;
  v16 = v11;
  v27 = v7;
  v22 = v16;
  v23 = self;
  [(IDSDaemon *)self validateListenerForLocalObject:v14 andPerformBlock:v20];

  [(IDSDaemon *)self _flushBroadcastQueuesForServices:v35[5] existingServices:v29[5]];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);
}

- (void)registerForNotificationsOnServices:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000A984;
  v28 = sub_10000BC34;
  v29 = [v6 mutableCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10000A984;
  v22 = sub_10000BC34;
  v23 = 0;
  v8 = [v7 localObject];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100435CBC;
  v13 = &unk_100BDC290;
  v15 = &v30;
  v16 = &v18;
  v17 = &v24;
  v9 = v6;
  v14 = v9;
  [(IDSDaemon *)self validateListenerForLocalObject:v8 andPerformBlock:&v10];

  if (v31[3])
  {
    [(IDSDaemon *)self _resetBroadcastQueuesForServices:v25[5], v10, v11, v12, v13];
    [(IDSDaemon *)self _flushBroadcastQueuesForServices:v19[5] existingServices:v19[5]];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

- (void)setWakingPushPriority:(int64_t)a3 forTopic:(id)a4 messageContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(IDSPersistentMap *)self->_wakingPushPriorityStore objectForKey:v8];
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = a3;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting wakingPushPriority %ld for topic %@, was %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v10;
    v14 = a3;
    _IDSLogV();
  }

  if (!v10 || [v10 intValue] != a3)
  {
    wakingPushPriorityStore = self->_wakingPushPriorityStore;
    v13 = [NSNumber numberWithInteger:a3, v14, v15, v16];
    [(IDSPersistentMap *)wakingPushPriorityStore setObject:v13 forKey:v8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)removeWakingPushPriorityForServices:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)xpcObject:(id)a3 objectContext:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:@"object-type"];
  if ([v11 isEqualToIgnoringCase:@"socket"])
  {
    v12 = [v9 objectForKey:@"socket-type"];
    if ([v12 isEqualToIgnoringCase:@"session-socket"])
    {
      v13 = [v9 objectForKey:@"sessionID"];
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

      if (xpc_get_type(v8) == &_xpc_type_fd)
      {
        v24 = xpc_fd_dup(v8);
        v15 = +[IDSDSessionController sharedInstance];
        v16 = [v15 sessionWithUniqueID:v13];

        if (v16)
        {
          v17 = [v16 accountID];
          v18 = [v10 localObject];
          v19 = [(IDSDaemon *)self accountWithIdentifier:v17 localObject:v18 requiredEntitlement:kIDSSessionEntitlement];
          v20 = v19 == 0;

          if (!v20)
          {
            v21 = [v9 objectForKey:@"raw-socket"];
            v22 = [v21 BOOLValue];

            [v16 startListeningOnClientSocket:v24 isRawSocket:v22];
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

- (void)createSocketDescriptorFromNWConnection:(id)a3 options:(id)a4 messageContext:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("IDSDaemon_nw_connection_queue", v14);

  CFAbsoluteTimeGetCurrent();
  nw_connection_set_queue(v9, v15);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  nw_connection_set_event_handler();
  nw_connection_start(v19);
}

- (void)sendSocketDescriptorOverXPC:(id)a3 messageContext:(id)a4 socketDescriptor:(int)a5 error:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v34 = a4;
  v11 = a6;
  v12 = v11;
  if (v7 == -1 || v11)
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

  v15 = [v34 localObject];
  v16 = [(IDSDaemon *)self broadcasterForLocalObject:v15 messageContext:v34];

  v17 = xpc_dictionary_create(0, 0, 0);
  IMInsertBoolsToXPCDictionary();
  xpc_dictionary_set_value(v17, "object", v13);
  v18 = [v10 objectForKey:{@"completionHandlerID", 1, 0}];
  v19 = [v10 objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v36 = v10;
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
    v28 = v10;
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

- (void)openSocketWithOptions:(id)a3 messageContext:(id)a4
{
  v5 = a3;
  v55 = a4;
  v54 = [(__CFString *)v5 objectForKey:@"service"];
  v53 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
  v50 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionAWDMetricsClientInitKey];
  v51 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionPriorityKey];
  v49 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionTransportKey];
  if (_IDSSupportsDirectMessaging())
  {
    v6 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v55 localObject];
  v9 = [(IDSDaemon *)self validateListenerForLocalObject:v8 andCheckEntitlement:kIDSSelfSessionEntitlement forAccessToServiceWithIdentifier:v54];

  if (v9)
  {
    goto LABEL_5;
  }

  if (v7)
  {
    v14 = [v51 integerValue] == 300;
    v15 = [v55 localObject];
    if (v14)
    {
      if ([(IDSDaemon *)self validateListenerForLocalObject:v15 andCheckEntitlement:kIDSUrgentPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v54])
      {

        goto LABEL_5;
      }

      v35 = [v55 localObject];
      v36 = [(IDSDaemon *)self validateListenerForLocalObject:v35 andCheckEntitlement:kIDSHighPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v54];

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
      v17 = [(IDSDaemon *)self validateListenerForLocalObject:v15 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v54];

      if (!v17)
      {
        goto LABEL_69;
      }
    }

LABEL_5:
    kdebug_trace();
    v48 = [(__CFString *)v5 objectForKey:@"completionHandlerID"];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v67 = v5;
      v68 = 2112;
      v69 = v55;
      v70 = 2112;
      v71 = v48;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "opensocket [%@] context=[%@] (handlerID:%@) ***\n", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v44 = v55;
      v46 = v48;
      v42 = v5;
      _IDSLogV();
    }

    v11 = [NSMutableDictionary dictionaryWithDictionary:v5, v42, v44, v46];
    v12 = [v11 objectForKey:IDSDevicePropertyDefaultPairedDevice];
    v13 = [v12 BOOLValue];

    if (v13)
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
    v20 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionClientIDKey];
    if (v20)
    {
      v21 = [v55 localObject];
      v22 = sub_10000BE90(v20, v21);
      [v11 setObject:v22 forKey:v19];
    }

    if ((v13 | v7 ^ 1) != 1)
    {
      goto LABEL_68;
    }

    v23 = [(__CFString *)v5 objectForKey:IDSOpenSocketOptionClientNameKey];
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
      v29 = [(__CFString *)v5 objectForKey:@"service"];
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
      v31 = [v34 integerValue];

      goto LABEL_67;
    }

    v30 = [v51 integerValue];
    v31 = v30;
    if (v30 > 599)
    {
      if (v30 != 600 && v30 != 700)
      {
        v32 = v30 == 800;
LABEL_57:
        v31 = 300;
        if (!v32)
        {
          v31 = 200;
        }

        goto LABEL_67;
      }

      v31 = 300;
    }

    else if (v30 != 100 && v30 != 200)
    {
      v32 = v30 == 300;
      goto LABEL_57;
    }

LABEL_67:
    [v11 setObject:&__kCFBooleanTrue forKey:{IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket, v43}];
    v38 = +[IDSUTunController sharedInstance];
    v39 = +[IDSDaemonPriorityQueueController sharedInstance];
    v40 = [v39 queueForPriority:v31];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1004379CC;
    v56[3] = &unk_100BDC308;
    v57 = v54;
    v65 = v13;
    v58 = v49;
    v64 = v31;
    v59 = v53;
    v60 = self;
    v61 = v5;
    v62 = v55;
    v63 = v24;
    v41 = v24;
    [v38 openSocketWithOptions:v11 queue:v40 completionHandler:v56];

LABEL_68:
  }

LABEL_69:
}

- (void)closeSocketWithOptions:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v36 = a4;
  v37 = [v6 objectForKey:@"service"];
  v35 = [v6 objectForKey:IDSOpenSocketOptionPriorityKey];
  if (_IDSSupportsDirectMessaging())
  {
    v7 = [v6 objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v36 localObject];
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:v9 andCheckEntitlement:kIDSSelfSessionEntitlement forAccessToServiceWithIdentifier:v37];

  if (v10)
  {
    goto LABEL_5;
  }

  if (v8)
  {
    v15 = [v35 integerValue] == 300;
    v16 = [v36 localObject];
    if (v15)
    {
      if ([(IDSDaemon *)self validateListenerForLocalObject:v16 andCheckEntitlement:kIDSUrgentPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v37])
      {

        goto LABEL_5;
      }

      v31 = [v36 localObject];
      v32 = [(IDSDaemon *)self validateListenerForLocalObject:v31 andCheckEntitlement:kIDSHighPriorityMessagingEntitlement forAccessToServiceWithIdentifier:v37];

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
      v18 = [(IDSDaemon *)self validateListenerForLocalObject:v16 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v37];

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
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "closesocket [%@]\n", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = v6;
      _IDSLogV();
    }

    v12 = [NSMutableDictionary dictionaryWithDictionary:v6, v34];
    v13 = [v12 objectForKey:IDSDevicePropertyDefaultPairedDevice];
    v14 = [v13 BOOLValue];

    if (v14)
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

      if (v8)
      {
        goto LABEL_36;
      }
    }

    v20 = [v6 objectForKey:IDSOpenSocketOptionAWDMetricsSuccessKey];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v20 BOOLValue];
    }

    else
    {
      v21 = v20 != 0;
    }

    v22 = [v6 objectForKey:IDSOpenSocketOptionAWDMetricsClientOpenSocketCompletionKey];
    v23 = [v6 objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
    v24 = v23;
    if (v22 && v23)
    {
      v25 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
      [v22 doubleValue];
      [v25 setClientOpenSocketCompletionTime:v24 forConnectionUUID:?];
      [v25 setSuccess:v21 forConnectionUUID:v24];
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
    v41 = v14;
    v30 = v24;
    [v28 closeSocketWithOptions:v12 queue:v29 completionHandler:v38];

LABEL_36:
  }

LABEL_37:
}

- (void)getDeliveryStatsWithMessageContext:(id)a3
{
  v3 = a3;
  v4 = +[IDSUTunDeliveryController sharedInstance];
  v5 = [v4 syncPriorityMessageStatistics];
  v18 = [v4 defaultPriorityMessageStatistics];
  v6 = [v4 urgentPriorityMessageStatistics];
  v7 = [v4 urgentCloudPriorityMessageStatistics];
  v8 = [v4 sendingMessageStatistics];
  v9 = [v4 queuedIncomingMessageDictionary];
  v10 = +[IDSUTunController sharedInstance];
  v11 = [v10 copyLinkStatsDict];

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (v5)
  {
    [v12 setObject:v5 forKey:@"syncMessagesStats"];
  }

  if (v18)
  {
    [v13 setObject:v18 forKey:@"defaultMessagesStats"];
  }

  if (v6)
  {
    [v13 setObject:v6 forKey:@"urgentMessagesStats"];
  }

  if (v7)
  {
    [v13 setObject:v7 forKey:@"urgentCloudMessagesStats"];
  }

  if (v8)
  {
    [v13 setObject:v8 forKey:@"sendingMessageStats"];
  }

  if (v9)
  {
    [v13 setObject:v9 forKey:@"queuedIncomingMessages"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:@"linkStats"];
  }

  v14 = [v3 localObject];
  v15 = [(IDSDaemon *)self broadcasterForLocalObject:v14 messageContext:v3];

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

- (void)persistPendingInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:v14 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v11];

  v16 = [(IDSDaemon *)self serviceController];
  v17 = [v16 serviceWithIdentifier:v11];

  if (v17 && ([v17 isInvitationService] & v15) == 1)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "persistPendingInvitation: persisting invitation {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = v12;
      v24 = v11;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore persistPendingInvitation:v10 forService:v11 withUniqueID:v12, v23, v24];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v17 isInvitationService];
      v21 = @"NO";
      *buf = 138413058;
      v26 = v12;
      if (v20)
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
      v28 = v11;
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

- (void)persistReceivedInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:v14 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v11];

  v16 = [(IDSDaemon *)self serviceController];
  v17 = [v16 serviceWithIdentifier:v11];

  if (v17 && ([v17 isInvitationService] & v15) == 1)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "persistReceivedInvitation: persisting invitation {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = v12;
      v24 = v11;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore persistReceivedInvitation:v10 forService:v11 withUniqueID:v12, v23, v24];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v17 isInvitationService];
      v21 = @"NO";
      *buf = 138413058;
      v26 = v12;
      if (v20)
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
      v28 = v11;
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

- (void)removePendingInvitation:(id)a3 forService:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v9];

  v13 = [(IDSDaemon *)self serviceController];
  v14 = [v13 serviceWithIdentifier:v9];

  if (v14 && ([v14 isInvitationService] & v12) == 1)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "removePendingInvitation: removing invitations with identifiers {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = v8;
      v21 = v9;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore removePendingInvitation:v8 forService:v9, v20, v21];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 isInvitationService];
      v18 = @"NO";
      *buf = 138413058;
      v23 = v8;
      if (v17)
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
      v25 = v9;
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

- (void)removeReceivedInvitation:(id)a3 forService:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = [(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v9];

  v13 = [(IDSDaemon *)self serviceController];
  v14 = [v13 serviceWithIdentifier:v9];

  if (v14 && ([v14 isInvitationService] & v12) == 1)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "removeReceivedInvitation: removing invitations with identifiers {%@} for service {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v20 = v8;
      v21 = v9;
      _IDSLogV();
    }

    [(IDSInvitationStore *)self->_invitationStore removeReceivedInvitation:v8 forService:v9, v20, v21];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 isInvitationService];
      v18 = @"NO";
      *buf = 138413058;
      v23 = v8;
      if (v17)
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
      v25 = v9;
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

- (void)tryForceFamilyFetchWithMessageContext:(id)a3
{
  v4 = [(IDSDaemon *)self familyManager];
  v5 = [v4 canForceFamilyFetch];

  if (v5)
  {
    v6 = [(IDSDaemon *)self familyManager];
    [v6 forceFamilyFetch];
  }
}

- (id)deliveryControllerQueuedIncomingMessageDictionary:(id)a3
{
  pthread_mutex_lock(&self->_listenerLock);
  v4 = [(NSMutableDictionary *)self->_queuedBroadcastAttempts allKeys];
  v5 = [v4 count];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    v7 = v4;
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

    v4 = v17;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&self->_listenerLock);

  return v6;
}

- (void)_notifyTinkerServicesOfPairedDevice:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 objectForKey:IDSDevicePropertyPushToken];
    if (v8)
    {
      v9 = [v6 objectForKey:IDSDevicePropertyIdentities];
      v10 = [v9 count] > 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(IDSDaemon *)self serviceController];
    v12 = [v11 allTinkerServices];

    v25 = v6;
    if (!v10)
    {
      v13 = [v12 __imArrayByFilteringWithBlock:&stru_100BDC370];

      v12 = v13;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v12;
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
          v20 = [v17 pushTopic];
          v21 = [v19 broadcasterForTopic:v20 ignoreServiceListener:1 messageContext:v18];

          v22 = objc_autoreleasePoolPush();
          v23 = [v17 identifier];
          v24 = [v17 pushTopic];
          v7[2](v7, v21, v23, v24, [v17 adHocServiceType] == 2);

          objc_autoreleasePoolPop(v22);
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v6 = v25;
  }
}

- (void)didAddPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSDevicePropertyPairingType];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [v4 objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [v4 objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A000;
    v14[3] = &unk_100BDC398;
    v15 = v4;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)didRemovePairedDevice:(id)a3
{
  v4 = a3;
  v5 = IDSDevicePropertyPairingType;
  v6 = [v4 objectForKey:IDSDevicePropertyPairingType];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v8 = IDSDevicePropertyIdentities;
    v9 = [v4 objectForKey:IDSDevicePropertyIdentities];
    v10 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v9];

    v11 = [v4 objectForKey:v8];
    v12 = [IDSPairedDevice localIdentitiesFromIdentities:v11];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10043A358;
    v19[3] = &unk_100BDC398;
    v20 = v4;
    v21 = v12;
    v22 = v10;
    v13 = v10;
    v14 = v12;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v20 withBlock:v19];
  }

  v15 = [v4 objectForKey:v5];
  v16 = [v15 integerValue];

  if (!v16)
  {
    v17 = [v4 objectForKey:IDSDevicePropertyIdentifierOverride];
    v18 = +[IDSAccountSync sharedInstance];
    [v18 noteUnpairedTraditionalDeviceWithID:v17];
  }
}

- (void)didUpdatePairedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSDevicePropertyPairingType];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [v4 objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [v4 objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A640;
    v14[3] = &unk_100BDC398;
    v15 = v4;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)didUpdateProtocolForPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSDevicePropertyPairingType];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v7 = IDSDevicePropertyIdentities;
    v8 = [v4 objectForKey:IDSDevicePropertyIdentities];
    v9 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v8];

    v10 = [v4 objectForKey:v7];
    v11 = [IDSPairedDevice localIdentitiesFromIdentities:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10043A928;
    v14[3] = &unk_100BDC398;
    v15 = v4;
    v16 = v11;
    v17 = v9;
    v12 = v9;
    v13 = v11;
    [(IDSDaemon *)self _notifyTinkerServicesOfPairedDevice:v15 withBlock:v14];
  }
}

- (void)registrationHashProcessor:(id)a3 didFlushCacheForService:(id)a4 remoteURI:(id)a5 localURI:(id)a6 guid:(id)a7
{
  v23 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(IDSDaemon *)self serviceController];
  v17 = [v16 serviceWithIdentifier:v12];

  if (v17)
  {
    v18 = objc_alloc_init(IMMessageContext);
    v19 = [v17 pushTopic];
    v20 = [(IDSDaemon *)self broadcasterForTopic:v19 ignoreServiceListener:1 messageContext:v18];

    v21 = objc_autoreleasePoolPush();
    v22 = [v17 pushTopic];
    [v20 didFlushCacheForService:v22 remoteURI:v13 fromURI:v14 guid:v15];

    objc_autoreleasePoolPop(v21);
  }
}

- (void)authenticatePhoneWithRequestUUID:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 localObject];
  v9 = kIDSPhoneNumberAuthenticationPrivateEntitlement;
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:v8 andCheckEntitlement:kIDSPhoneNumberAuthenticationPrivateEntitlement];

  v11 = +[IMRGLog sms];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v7 localObject];
      v14 = [v13 processName];
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Authenticating phone {uuid: %@, client: %@}", buf, 0x16u);
    }

    v15 = sub_100483074();
    v16 = [v15 authenticatePhoneUser];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1004830B8;
    v21[3] = &unk_100BDD188;
    v21[4] = self;
    v22 = v7;
    v23 = v6;
    [v16 registerResultBlock:v21];
  }

  else
  {
    if (v12)
    {
      v17 = [v7 localObject];
      v18 = [v17 processName];
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing authenticate phone request {client: %@}", buf, 0xCu);
    }

    v19 = [v7 localObject];
    v16 = [(IDSDaemon *)self broadcasterForLocalObject:v19 messageContext:v7];

    if (v16)
    {
      v20 = [(IDSDaemon *)self _errorForMissingEntitlement:v9];
      [v16 didAuthenticatePhoneWithAuthenticationCertificateData:0 requestUUID:v6 error:v20];
    }
  }
}

- (void)generatePhoneAuthenticationSignatureOverData:(id)a3 withRequestUUID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = kIDSPhoneNumberAuthenticationEntitlement;
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v14 = +[IMRGLog sms];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [v10 localObject];
      v17 = [v16 processName];
      if (v8)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138413058;
      v30 = v9;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2048;
      v36 = [v8 length];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generating phone authentication signature over data {uuid: %@, client: %@, data: %@, length: %lu}", buf, 0x2Au);
    }

    v19 = sub_100483074();
    v20 = [v19 localPhoneAuthenticationCertificates];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1004834AC;
    v25[3] = &unk_100BDD1B0;
    v25[4] = self;
    v26 = v10;
    v27 = v8;
    v28 = v9;
    [v20 registerResultBlock:v25];
  }

  else
  {
    if (v15)
    {
      v21 = [v10 localObject];
      v22 = [v21 processName];
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone authentication signature request {client: %@}", buf, 0xCu);
    }

    v23 = [v10 localObject];
    v20 = [(IDSDaemon *)self broadcasterForLocalObject:v23 messageContext:v10];

    if (v20)
    {
      v24 = [(IDSDaemon *)self _errorForMissingEntitlement:v12];
      [v20 didGeneratePhoneAuthenticationSignature:0 nonce:0 certificates:0 labelIDs:0 inputData:0 requestUUID:v9 error:v24];
    }
  }
}

- (void)requestCarrierTokenForSubscriptionSource:(id)a3 IMEI:(id)a4 carrierNonce:(id)a5 requestUUID:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IMRGLog sms];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 localObject];
    v19 = [v18 processName];
    *buf = 138413314;
    v123 = v15;
    v124 = 2112;
    v125 = v19;
    v126 = 2112;
    v127 = v12;
    v128 = 2112;
    v129 = v13;
    v130 = 2112;
    v131 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requesting carrier token {uuid: %@, client: %@, subscriptionSource: %@, IMEI: %@, carrierNonce: %@}", buf, 0x34u);
  }

  v20 = [v16 localObject];
  v21 = kIDSPhoneNumberAuthenticationEntitlement;
  v22 = [(IDSDaemon *)self validateListenerForLocalObject:v20 andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  if ((v22 & 1) == 0)
  {
    v64 = +[IMRGLog sms];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [v16 localObject];
      v66 = [v65 processName];
      *buf = 138412290;
      v123 = v66;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone carrier token request {client: %@}", buf, 0xCu);
    }

    v67 = [v16 localObject];
    v23 = [(IDSDaemon *)self broadcasterForLocalObject:v67 messageContext:v16];

    v25 = [(IDSDaemon *)self _errorForMissingEntitlement:v21];
    v68 = v23;
    v69 = v15;
    v70 = v25;
    goto LABEL_29;
  }

  if (!v13 || !v14)
  {
    v71 = IDSRegistrationControlErrorDomain;
    v120 = NSDebugDescriptionErrorKey;
    v121 = @"Request was missing IMEI or carrier nonce";
    v72 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v23 = [NSError errorWithDomain:v71 code:1 userInfo:v72];

    v73 = [v16 localObject];
    v25 = [(IDSDaemon *)self broadcasterForLocalObject:v73 messageContext:v16];

    v68 = v25;
    v69 = v15;
    v70 = v23;
LABEL_29:
    [(IDSGetSIMAuthTokenMessage *)v68 didRequestCarrierTokenString:0 requestUUID:v69 error:v70];
    goto LABEL_38;
  }

  v107 = v12;
  v23 = objc_alloc_init(IDSGetSIMAuthTokenMessage);
  v24 = +[FTDeviceSupport sharedInstance];
  v25 = [v24 model];

  v26 = +[FTDeviceSupport sharedInstance];
  v27 = [v26 productOSVersion];

  v28 = +[FTDeviceSupport sharedInstance];
  v29 = [v28 productBuildVersion];

  [(IDSGetSIMAuthTokenMessage *)v23 setHardwareVersion:v25];
  v106 = v27;
  [(IDSGetSIMAuthTokenMessage *)v23 setOsVersion:v27];
  v105 = v29;
  [(IDSGetSIMAuthTokenMessage *)v23 setSoftwareVersion:v29];
  [(IDSGetSIMAuthTokenMessage *)v23 setCarrierNonce:v14];
  [(IDSGetSIMAuthTokenMessage *)v23 setIMEI:v13];
  v30 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v31 = [v30 pushToken];

  [(IDSGetSIMAuthTokenMessage *)v23 setPushToken:v31];
  v32 = IDSAssignPushIdentityToMessage();
  v104 = v31;
  if (v31 && (v32 & 1) != 0)
  {
    v33 = +[IDSCTAdapter sharedInstance];
    v113 = 0;
    v34 = [v33 currentSIMsWithError:&v113];
    v35 = v113;

    v102 = v35;
    v103 = v34;
    if (v34)
    {
      v99 = v14;
      v111[0] = _NSConcreteStackBlock;
      v111[1] = 3221225472;
      v111[2] = sub_100484558;
      v111[3] = &unk_100BDD1D8;
      v112 = v107;
      v36 = [v34 __imArrayByFilteringWithBlock:v111];
      v37 = [v36 firstObject];

      v38 = +[IDSDaemon sharedInstance];
      v39 = [v38 registrationConductor];
      v40 = [v39 userStore];

      v101 = v37;
      v41 = [v37 SIMIdentifier];
      v42 = [v40 userWithUniqueIdentifier:v41];

      v100 = v40;
      v43 = [v40 authenticationCertificateForUser:v42];
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
      v96 = v13;
      if (v42 && v43)
      {
        v45 = +[IMRGLog sms];
        v14 = v99;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v123 = v42;
          v124 = 2112;
          v125 = v43;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Adding phone number account to the carrier token request {phoneUser: %@, phoneAuthenticationCertificate: %@}", buf, 0x16u);
        }

        v94 = [v42 realmPrefixedIdentifier];
        v46 = [v43 dataRepresentation];
        v92 = +[IDSRegistrationKeyManager sharedInstance];
        v91 = [v92 identityPrivateKey];
        v47 = +[IDSRegistrationKeyManager sharedInstance];
        -[IDSGetSIMAuthTokenMessage addAuthUserID:certificate:privateKey:publicKey:](v23, "addAuthUserID:certificate:privateKey:publicKey:", v94, v46, v91, [v47 identityPublicKey]);

        v48 = +[IDSDServiceController sharedInstance];
        v49 = [v48 serviceWithIdentifier:@"com.apple.private.alloy.multiplex1"];

        v50 = +[IDSDAccountController sharedInstance];
        v51 = [v50 appleIDAccountOnService:v49];

        v95 = v51;
        v52 = [v51 registration];
        v53 = [v52 authenticationCert];

        if (v53)
        {
          v93 = v49;
          v54 = [v95 registration];
          v55 = +[IMRGLog sms];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v54;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Adding Apple ID account to the carrier token request {registration: %@}", buf, 0xCu);
          }

          v90 = [v54 idsUserID];
          v56 = [v54 authenticationCert];
          v89 = +[IDSRegistrationKeyManager sharedInstance];
          v88 = [v89 identityPrivateKey];
          v57 = +[IDSRegistrationKeyManager sharedInstance];
          -[IDSGetSIMAuthTokenMessage addAuthUserID:certificate:privateKey:publicKey:](v23, "addAuthUserID:certificate:privateKey:publicKey:", v90, v56, v88, [v57 identityPublicKey]);

          v49 = v93;
        }

        sub_1004C6E84();
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v108[2] = sub_1004845C4;
        v108[3] = &unk_100BDD200;
        v108[4] = self;
        v109 = v16;
        v110 = v15;
        [(IDSGetSIMAuthTokenMessage *)v23 setCompletionBlock:v108];
        ct_green_tea_logger_create_static();
        v58 = getCTGreenTeaOsLogHandle();
        v59 = v58;
        if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
        }

        v12 = v107;
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

        v87 = [v16 localObject];
        v63 = [(IDSDaemon *)self broadcasterForLocalObject:v87 messageContext:v16];

        [v63 didRequestCarrierTokenString:0 requestUUID:v15 error:v61];
        v62 = v106;
        v12 = v107;
        v60 = v102;
        v14 = v99;
      }

      v82 = v112;
      v13 = v96;
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

      v83 = [v16 localObject];
      v84 = [(IDSDaemon *)self broadcasterForLocalObject:v83 messageContext:v16];

      [v84 didRequestCarrierTokenString:0 requestUUID:v15 error:v82];
      v62 = v106;
      v12 = v107;
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

    v76 = [v16 localObject];
    v77 = [(IDSDaemon *)self broadcasterForLocalObject:v76 messageContext:v16];

    [v77 didRequestCarrierTokenString:0 requestUUID:v15 error:v60];
    v62 = v106;
    v12 = v107;
  }

LABEL_38:
}

- (id)_errorForMissingEntitlement:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"IDS phone number authentication SPI requires entitlement: %@", v3];

  v5 = [NSError alloc];
  v6 = IDSRegistrationControlErrorDomain;
  v10 = NSDebugDescriptionErrorKey;
  v11 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDomain:v6 code:3 userInfo:v7];

  return v8;
}

- (void)setPhoneUserSubscriptionSource:(id)a3 withRequestUUID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = kIDSPhoneNumberAuthenticationEntitlement;
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v14 = +[IMRGLog sms];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [v10 localObject];
      v17 = [v16 processName];
      v29 = 138412802;
      v30 = v9;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting phone user subscription source {uuid: %@, client: %@, subscriptionSource: %@}", &v29, 0x20u);
    }

    v18 = +[FTSelectedPNRSubscription sharedInstance];
    v19 = [v18 setSelectedPhoneNumberRegistrationSubscriptionNumber:v8];

    v20 = [v10 localObject];
    v21 = [(IDSDaemon *)self broadcasterForLocalObject:v20 messageContext:v10];

    if (!v21)
    {
      goto LABEL_11;
    }

    v22 = v21;
    v23 = v8;
    v24 = v9;
    v25 = v19;
LABEL_10:
    [v22 didSetPhoneUserSubscriptionSource:v23 requestUUID:v24 error:v25];
LABEL_11:

    goto LABEL_12;
  }

  if (v15)
  {
    v26 = [v10 localObject];
    v27 = [v26 processName];
    v29 = 138412290;
    v30 = v27;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone user subscription source request {client: %@}", &v29, 0xCu);
  }

  v28 = [v10 localObject];
  v19 = [(IDSDaemon *)self broadcasterForLocalObject:v28 messageContext:v10];

  if (v19)
  {
    v21 = [(IDSDaemon *)self _errorForMissingEntitlement:v12];
    v22 = v19;
    v23 = 0;
    v24 = v9;
    v25 = v21;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)fetchPhoneUserSubscriptionSourceWithRequestUUID:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 localObject];
  v9 = kIDSPhoneNumberAuthenticationEntitlement;
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:v8 andCheckEntitlement:kIDSPhoneNumberAuthenticationEntitlement];

  v11 = +[IMRGLog sms];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v7 localObject];
      v14 = [v13 processName];
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v14;
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

    v23 = [v7 localObject];
    v24 = [(IDSDaemon *)self broadcasterForLocalObject:v23 messageContext:v7];

    if (v24)
    {
      [v24 didFetchPhoneUserSubscriptionSource:v18 requestUUID:v6 error:v17];
    }

    goto LABEL_16;
  }

  if (v12)
  {
    v19 = [v7 localObject];
    v20 = [v19 processName];
    *buf = 138412290;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing phone user subscription source request {client: %@}", buf, 0xCu);
  }

  v21 = [v7 localObject];
  v18 = [(IDSDaemon *)self broadcasterForLocalObject:v21 messageContext:v7];

  if (v18)
  {
    v17 = [(IDSDaemon *)self _errorForMissingEntitlement:v9];
    [v18 didSetPhoneUserSubscriptionSource:0 requestUUID:v6 error:v17];
LABEL_16:
  }
}

- (int64_t)_subscriptionSourceNumberForContext:(id)a3
{
  result = [a3 slotID];
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

- (id)accountWithIdentifier:(id)a3 localObject:(id)a4 requiredEntitlement:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDaemon *)self accountController];
  v12 = [v11 accountWithUniqueID:v8];

  if (v12)
  {
    v13 = [v12 service];
    v14 = [v13 identifier];

    if ([(IDSDaemon *)self validateListenerForLocalObject:v9 andCheckEntitlement:v10 forAccessToServiceWithIdentifier:v14])
    {
      v15 = v12;
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v14;
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
      v20 = v8;
      v21 = 2112;
      v22 = v9;
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

- (void)setupAccountWithLoginID:(id)a3 serviceName:(id)a4 accountType:(int)a5 accountConfig:(id)a6 authToken:(id)a7 password:(id)a8 transactionID:(id)a9 messageContext:(id)a10
{
  v13 = *&a5;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [v21 localObject];
  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v116 = v15;
    v117 = 2112;
    v118 = v16;
    v119 = 1024;
    v120 = v13;
    v121 = 2112;
    v122 = v17;
    v123 = 2112;
    v124 = v20;
    v125 = 2112;
    v126 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "IDSDaemon: SetupAccountWithLoginID %@ serviceName %@ accountType %d accountConfig %@ transactionID %@ localObject %@", buf, 0x3Au);
  }

  if (![(IDSDaemon *)self validateListenerForLocalObject:v22 andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:v16])
  {
    v30 = v22;
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

  if (![(IDSDAccount *)v15 length])
  {
    v30 = v22;
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
    v37 = self;
    v38 = v30;
    v39 = v30;
    goto LABEL_18;
  }

  v96 = v22;
  if ([(IDSDAccount *)v16 length])
  {
    v24 = [(IDSDaemon *)self serviceController];
    v25 = [v24 serviceWithIdentifier:v16];

    v95 = v18;
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
            v50 = [v17 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];
            v92 = [v17 objectForKey:kIDSServiceDefaultsSelfHandleKey];
            if ([v18 length])
            {
              v51 = +[IMRGLog registration];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v116 = v15;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "  ** Setting auth token for loginID: %@", buf, 0xCu);
              }

              sub_1004AA924(v18, v15, v50, v92, v16);
            }

            if ([v19 length])
            {
              v52 = +[IMRGLog registration];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v116 = v15;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "  ** Setting password for loginID: %@", buf, 0xCu);
              }

              sub_1004AA74C(v19, v15, v50, v16);
            }

            v88 = v50;
            v53 = +[IDSDAccountController sharedInstance];
            v54 = [v53 accountWithServiceName:v16 loginID:v15];

            v89 = v19;
            v93 = v21;
            if (v54)
            {
              [v54 _updateAccountWithAccountInfo:v17];
            }

            else
            {
              v56 = +[IMRGLog registration];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v116 = v16;
                v117 = 2112;
                v118 = v15;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Creating new account with service name %@ login ID %@", buf, 0x16u);
              }

              v57 = [IDSDAccount alloc];
              v58 = +[NSString stringGUID];
              v59 = [(IDSDAccount *)v57 initWithLoginID:v15 service:v94 uniqueID:v58 accountType:v13 accountConfig:v17];

              v54 = v59;
              v60 = +[IDSDAccountController sharedInstance];
              [v60 addAccount:v54];

              v61 = [v54 linkedAccounts];
              if (![v61 count])
              {
                v85 = v61;
                v86 = v20;
                v62 = v15;
                v63 = v17;
                v87 = v16;
                v64 = +[IDSDServiceController sharedInstance];
                v90 = v54;
                v65 = [v54 service];
                v66 = [v64 linkedServicesForService:v65];

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
                        v74 = [v73 isCurrentDeviceTinkerConfiguredWatch];

                        if (v74)
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

                v17 = v63;
                v15 = v62;
                v20 = v86;
                v16 = v87;
                v54 = v90;
                v61 = v85;
              }
            }

            v80 = v54;
            v91 = v54;
            v104[0] = _NSConcreteStackBlock;
            v104[1] = 3221225472;
            v104[2] = sub_1004AB8CC;
            v104[3] = &unk_100BDDE30;
            v81 = v20;
            v105 = v81;
            v82 = v93;
            v106 = v82;
            v38 = v96;
            v83 = v96;
            v107 = v83;
            v108 = 0;
            v109 = self;
            [v80 setupAccountWithCompletionBlock:v104];
            v84 = [v80 linkedAccounts];
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_1004ABC1C;
            v98[3] = &unk_100BDDE58;
            v99 = v81;
            v100 = v82;
            v101 = v83;
            v102 = 0;
            v103 = self;
            [v84 __imForEach:v98];

            v36 = 0;
            v43 = v88;
            v19 = v89;
            v21 = v93;
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

        v18 = v95;
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
  v37 = self;
  v39 = v96;
LABEL_18:
  v25 = [(IDSDaemon *)v37 listenerRemoteObjectForLocalObject:v39];
  [v25 setupCompleteForAccount:0 transactionID:0 setupError:v36];
LABEL_19:
}

- (void)addAccountWithLoginID:(id)a3 serviceName:(id)a4 uniqueID:(id)a5 accountType:(int)a6 accountInfo:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v58 = a7;
  v17 = [a8 localObject];
  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v58 allKeys];
    *buf = 138413570;
    v65 = v14;
    v66 = 2112;
    v67 = v15;
    v68 = 2112;
    v69 = v16;
    v70 = 1024;
    v71 = a6;
    v72 = 2112;
    v73 = v19;
    v74 = 2112;
    v75 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "IDSDaemon: AddAccountWithLoginID %@ serviceName %@ uniqueID %@ accountType %d accountInfo %@ localObject %@", buf, 0x3Au);
  }

  if (![v15 length])
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100922078();
    }

    goto LABEL_48;
  }

  if ([(IDSDaemon *)self validateListenerForLocalObject:v17 andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:v15])
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

    if (!a6)
    {
      v21 = +[IMRGLog warning];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not allowing clients to add phone number accounts.", buf, 2u);
      }

      goto LABEL_48;
    }

    v20 = [(IDSDaemon *)self serviceController];
    v21 = [v20 serviceWithIdentifier:v15];

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
      v23 = [v22 isCurrentDeviceTinkerConfiguredWatch];

      if (v23)
      {
        v24 = +[IMRGLog warning];
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v21;
          _os_log_impl(&_mh_execute_header, &v24->super, OS_LOG_TYPE_DEFAULT, "Tried to add tinker disabled service, ignoring {service: %@}", buf, 0xCu);
        }

LABEL_25:
        v25 = v14;
LABEL_47:

        v14 = v25;
LABEL_48:

        goto LABEL_49;
      }
    }

    v57 = a6;
    v25 = IMStripLoginID();

    if (v16)
    {
      v26 = +[IDSDAccountController sharedInstance];
      v27 = [v26 accountWithUniqueID:v16];

      if (v27)
      {
        v28 = v27;
        v29 = [(IDSDAccount *)v27 service];
        v30 = [v29 identifier];
        v31 = [v30 isEqualToIgnoringCase:v15];

        if (v31)
        {
          v32 = +[IMRGLog registration];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v28;
            v65 = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Not creating new account, we have existing: %@", buf, 0xCu);
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
      v67 = v16;
      v68 = 2112;
      v69 = v25;
      v70 = 1024;
      v71 = v57;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Creating new account with service %@ uniqueID %@ login ID %@ accountType %d", buf, 0x26u);
    }

    v24 = [[IDSDAccount alloc] initWithLoginID:v25 service:v21 uniqueID:v16 accountType:v57 accountConfig:v58];
    v35 = +[IDSDAccountController sharedInstance];
    [v35 addAccount:v24];

    v32 = [(IDSDAccount *)v24 linkedAccounts];
    if (![v32 count])
    {
      v52 = v32;
      v54 = v21;
      v55 = v17;
      v56 = v15;
      v36 = +[IDSDServiceController sharedInstance];
      v53 = v24;
      v37 = [(IDSDAccount *)v24 service];
      v38 = [v36 linkedServicesForService:v37];

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
              v46 = [v45 isCurrentDeviceTinkerConfiguredWatch];

              if (v46)
              {
                continue;
              }
            }

            v47 = [IDSDAccount alloc];
            v48 = +[NSString stringGUID];
            v49 = [(IDSDAccount *)v47 initWithLoginID:v25 service:v44 uniqueID:v48 accountType:v57 accountConfig:v58];

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

      v15 = v56;
      v21 = v54;
      v17 = v55;
      v32 = v52;
      v24 = v53;
    }

    goto LABEL_46;
  }

LABEL_49:
}

- (void)_removeAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDSDaemon _removeAccount %@ localObject %@", &v12, 0x16u);
  }

  if ([v6 length])
  {
    v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
    if (v9)
    {
      v10 = +[IDSDAccountController sharedInstance];
      [v10 removeAccount:v9];

      v11 = [v9 linkedAccounts];
      [v11 __imForEach:&stru_100BDDE78];
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

- (void)_removeAndDeregisterAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_removeAndDeregisterAccount %@ localObject %@", &v14, 0x16u);
  }

  if ([v6 length])
  {
    v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
    v10 = v9;
    if (v9)
    {
      [v9 unregisterAccount];
      v11 = +[IDSDAccountController sharedInstance];
      [v11 disableAccountWithUniqueID:v6];

      v12 = +[IDSDAccountController sharedInstance];
      [v12 removeAccount:v10];

      v13 = [v10 linkedAccounts];
      [v13 __imForEach:&stru_100BDDE98];
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

- (void)updateAccount:(id)a3 withAccountInfo:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v10 = [v33 localObject];
  v11 = &uuid_unparse_upper_ptr;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v8;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateAccount %@ localObject %@", buf, 0x16u);
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:v8 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v14 = v13;
  if (v13)
  {
    v31 = v13;
    v32 = v10;
    v15 = v9;
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
      v29 = v9;
      v30 = v8;
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
            v24 = [v11[504] registration];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v33 localObject];
              v26 = [v25 processName];
              *buf = 138412546;
              v41 = v26;
              v42 = 2112;
              v43 = v22;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Found blocklisted key in updateAccount call! {process: %@, key: %@}", buf, 0x16u);

              v11 = &uuid_unparse_upper_ptr;
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);

      if (!v19)
      {
        v9 = v29;
        v8 = v30;
        v14 = v31;
        goto LABEL_22;
      }

      v27 = [v19 copy];
      v28 = v15;
      v15 = v27;
      v9 = v29;
      v8 = v30;
    }

    else
    {
      v19 = 0;
      v28 = v16;
    }

    v14 = v31;

LABEL_22:
    [v14 _updateAccountWithAccountInfo:v15];

    v10 = v32;
  }
}

- (void)enableAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 enableAccountWithUniqueID:v6];

    [v9 registerAccount];
    v11 = [v9 linkedAccounts];
    [v11 __imForEach:&stru_100BDDEB8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)disableAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "disableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 disableAccountWithUniqueID:v6];

    v11 = [v9 linkedAccounts];
    [v11 __imForEach:&stru_100BDDED8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)forceDisableAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "forceDisableAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  if (v9)
  {
    v10 = +[IDSDAccountController sharedInstance];
    [v10 forceDisableAccountWithUniqueID:v6];

    v11 = [v9 linkedAccounts];
    [v11 __imForEach:&stru_100BDDEF8];

    [(IDSDaemon *)self updateTopics];
  }
}

- (void)authTokenChanged:(id)a3 forAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "auth token changed for account uniqueID %@ localObject %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v9;
    v20 = v11;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v11 requiredEntitlement:kIDSRegistrationEntitlement, v19, v20];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 loginID];
    v16 = [v14 service];
    v17 = [v16 serviceName];
    sub_1004AA924(v8, v15, 0, 0, v17);

    [v14 authenticationChanged];
    v18 = [v14 linkedAccounts];
    [v18 __imForEach:&stru_100BDDF18];
  }
}

- (void)passwordChanged:(id)a3 forAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "password changed for account uniqueID %@ localObject %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v9;
    v21 = v11;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v11 requiredEntitlement:kIDSRegistrationEntitlement, v20, v21];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 loginID];
    v16 = [v14 dsID];
    v17 = [v14 service];
    v18 = [v17 serviceName];
    sub_1004AA74C(v8, v15, v16, v18);

    [v14 authenticationChanged];
    v19 = [v14 linkedAccounts];
    [v19 __imForEach:&stru_100BDDF38];
  }
}

- (void)authenticateAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "authenticateAccount uniqueID %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 authenticateAccount];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDDF58];
  }
}

- (void)passwordUpdatedForAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passwordUpdatedForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 passwordUpdated];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDDF78];
  }
}

- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4 forAccount:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 localObject];
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateAuthorizationCredentials %@ token %@ account %@ localObject %@", buf, 0x2Au);
  }

  v15 = [(IDSDaemon *)self accountWithIdentifier:v12 localObject:v13 requiredEntitlement:kIDSRegistrationEntitlement];
  v16 = v15;
  if (v15)
  {
    [v15 updateAuthorizationCredentials:v10 token:v11];
    v17 = [v16 linkedAccounts];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004AE3D8;
    v18[3] = &unk_100BDD498;
    v19 = v10;
    v20 = v11;
    [v17 __imForEach:v18];
  }
}

- (void)validateProfileForAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "validateProfileForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 validateProfile];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDDF98];
  }
}

- (void)addAliases:(id)a3 toAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "addAliases %@ toAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 addAliases:v8];
    v14 = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AE878;
    v15[3] = &unk_100BDB090;
    v16 = v8;
    [v14 __imForEach:v15];
  }
}

- (void)removeAliases:(id)a3 fromAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "removeAliases %@ toAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 removeAliases:v8];
    v14 = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AEB08;
    v15[3] = &unk_100BDB090;
    v16 = v8;
    [v14 __imForEach:v15];
  }
}

- (void)validateAliases:(id)a3 forAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "validateAliases %@ forAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 validateAliases:v8];
    v14 = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AED98;
    v15[3] = &unk_100BDB090;
    v16 = v8;
    [v14 __imForEach:v15];
  }
}

- (void)unvalidateAliases:(id)a3 forAccount:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "unvalidateAliases %@ forAccount %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    [v12 unvalidateAliases:v8];
    v14 = [v13 linkedAccounts];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004AF028;
    v15[3] = &unk_100BDB090;
    v16 = v8;
    [v14 __imForEach:v15];
  }
}

- (BOOL)validateLocalObjectForPseudonym:(id)a3 andCheckEntitlement:(id)a4 forAccessToServices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = v10;
    v15 = self;
    v16 = v9;
    [(IDSDaemon *)self validateListenerForLocalObject:v8 andPerformBlock:v13];
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v11 & 1;
}

- (BOOL)validateLocalObjectForPseudonym:(id)a3 andCheckEntitlement:(id)a4 forAccessToAnyOneOfServices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v11 = v10;
    v22 = &v23;
    v19 = v11;
    v20 = self;
    v21 = v9;
    [(IDSDaemon *)self validateListenerForLocalObject:v8 andPerformBlock:&v15];
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

- (void)provisionPseudonymForURI:(id)a3 onAccount:(id)a4 withProperties:(id)a5 requestProperties:(id)a6 requestUUID:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [a8 localObject];
  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v49 = v14;
    v50 = 2112;
    v51 = v15;
    v52 = 2112;
    v53 = v16;
    v54 = 2112;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI %@ onAccount %@ withProperties %@ localObject %@", buf, 0x2Au);
  }

  v21 = kIDSRegistrationEntitlement;
  v22 = [(IDSDaemon *)self accountWithIdentifier:v15 localObject:v19 requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v22)
  {
    v31 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v19];
    v32 = IDSPseudonymErrorDomain;
    v33 = 500;
LABEL_17:
    v36 = [NSError errorWithDomain:v32 code:v33 userInfo:0];
    [v31 finishedProvisioningPseudonym:0 success:0 error:v36 forRequestUUID:v18];

    goto LABEL_18;
  }

  v44 = v17;
  v23 = [v16 allowedServices];
  v24 = [(IDSDaemon *)self validateLocalObjectForPseudonym:v19 andCheckEntitlement:v21 forAccessToServices:v23];

  if ((v24 & 1) == 0)
  {
    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v19];
    v29 = IDSPseudonymErrorDomain;
    v30 = 500;
    goto LABEL_12;
  }

  if ((sub_1004AFDCC() & 1) == 0)
  {
    v35 = +[IMRGLog registration];
    v17 = v44;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI -- pseudonyms are disabled by the server!", buf, 2u);
    }

    v31 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v19];
    v32 = IDSPseudonymErrorDomain;
    v33 = 100;
    goto LABEL_17;
  }

  v25 = +[IMSystemMonitor sharedInstance];
  v26 = [v25 isUnderFirstDataProtectionLock];

  if (v26)
  {
    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI -- under first unlock -- failing", buf, 2u);
    }

    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v19];
    v29 = IDSPseudonymErrorDomain;
    v30 = 1000;
  }

  else
  {
    v37 = [v14 unprefixedURI];
    v38 = [v37 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

    if (!v38)
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1004AFE5C;
      v45[3] = &unk_100BDDFE8;
      v45[4] = self;
      v40 = v19;
      v46 = v40;
      v41 = v18;
      v47 = v41;
      if (([v22 provisionPseudonymForURI:v14 properties:v16 requestProperties:v44 completionBlock:v45] & 1) == 0)
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

    v28 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v19];
    v29 = IDSPseudonymErrorDomain;
    v30 = 400;
  }

LABEL_12:
  v34 = [NSError errorWithDomain:v29 code:v30 userInfo:0];
  [v28 finishedProvisioningPseudonym:0 success:0 error:v34 forRequestUUID:v18];

LABEL_13:
  v17 = v44;
LABEL_18:
}

- (void)renewPseudonym:(id)a3 onAccount:(id)a4 forUpdatedExpiryEpoch:(double)a5 requestProperties:(id)a6 requestUUID:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [a8 localObject];
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v45 = v14;
    v46 = 2112;
    v47 = v15;
    v48 = 2048;
    v49 = a5;
    v50 = 2112;
    v51 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "renewPseudonym %@ onAccount %@ forUpdatedExpiryEpoch %f localObject %@", buf, 0x2Au);
  }

  v20 = kIDSRegistrationEntitlement;
  v21 = [(IDSDaemon *)self accountWithIdentifier:v15 localObject:v18 requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v21)
  {
    v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
    v30 = IDSPseudonymErrorDomain;
    v31 = 500;
LABEL_15:
    v35 = [NSError errorWithDomain:v30 code:v31 userInfo:0];
    [v29 finishedRenewingPseudonym:0 success:0 error:v35 requestUUID:v17];

    goto LABEL_16;
  }

  v40 = v17;
  v22 = v16;
  v23 = [v14 properties];
  v24 = [v23 allowedServices];
  v25 = [(IDSDaemon *)self validateLocalObjectForPseudonym:v18 andCheckEntitlement:v20 forAccessToAnyOneOfServices:v24];

  if (v25)
  {
    v16 = v22;
    if ((sub_1004AFDCC() & 1) == 0)
    {
      v34 = +[IMRGLog registration];
      v17 = v40;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "renewPseudonym -- pseudonyms are disabled by the server!", buf, 2u);
      }

      v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
      v30 = IDSPseudonymErrorDomain;
      v31 = 100;
      goto LABEL_15;
    }

    v26 = +[IMSystemMonitor sharedInstance];
    v27 = [v26 isUnderFirstDataProtectionLock];

    if (v27)
    {
      v28 = +[IMRGLog registration];
      v17 = v40;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "renewPseudonym -- under first unlock -- failing", buf, 2u);
      }

      v29 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
      v30 = IDSPseudonymErrorDomain;
      v31 = 1000;
      goto LABEL_15;
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1004B0398;
    v41[3] = &unk_100BDDFE8;
    v41[4] = self;
    v36 = v18;
    v42 = v36;
    v37 = v40;
    v43 = v37;
    if (([v21 renewPseudonym:v14 forUpdatedExpiryEpoch:v22 requestProperties:v41 completionBlock:a5] & 1) == 0)
    {
      v38 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v36];
      v39 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:600 userInfo:0];
      [v38 finishedRenewingPseudonym:0 success:0 error:v39 requestUUID:v37];
    }

    v17 = v40;
  }

  else
  {
    v32 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
    v33 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:500 userInfo:0];
    v17 = v40;
    [v32 finishedProvisioningPseudonym:0 success:0 error:v33 forRequestUUID:v40];

    v16 = v22;
  }

LABEL_16:
}

- (void)revokePseudonym:(id)a3 onAccount:(id)a4 requestProperties:(id)a5 requestUUID:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a7 localObject];
  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "revokePseudonym %@ onAccount %@ localObject %@", buf, 0x20u);
  }

  v18 = kIDSRegistrationEntitlement;
  v19 = [(IDSDaemon *)self accountWithIdentifier:v13 localObject:v16 requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v19)
  {
    v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v16];
    v28 = IDSPseudonymErrorDomain;
    v29 = 500;
LABEL_15:
    v33 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    [v27 finishedRevokingPseudonymWithSuccess:0 error:v33 requestUUID:v15];

    goto LABEL_16;
  }

  v38 = v15;
  v20 = v14;
  v21 = [v12 properties];
  v22 = [v21 allowedServices];
  v23 = [(IDSDaemon *)self validateLocalObjectForPseudonym:v16 andCheckEntitlement:v18 forAccessToAnyOneOfServices:v22];

  if (v23)
  {
    v14 = v20;
    if ((sub_1004AFDCC() & 1) == 0)
    {
      v32 = +[IMRGLog registration];
      v15 = v38;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "revokePseudonym -- pseudonyms are disabled by the server!", buf, 2u);
      }

      v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v16];
      v28 = IDSPseudonymErrorDomain;
      v29 = 100;
      goto LABEL_15;
    }

    v24 = +[IMSystemMonitor sharedInstance];
    v25 = [v24 isUnderFirstDataProtectionLock];

    if (v25)
    {
      v26 = +[IMRGLog registration];
      v15 = v38;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "revokePseudonym -- under first unlock -- failing", buf, 2u);
      }

      v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v16];
      v28 = IDSPseudonymErrorDomain;
      v29 = 1000;
      goto LABEL_15;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1004B08B0;
    v39[3] = &unk_100BD6FB8;
    v39[4] = self;
    v34 = v16;
    v40 = v34;
    v35 = v38;
    v41 = v35;
    if (([v19 revokePseudonym:v12 requestProperties:v20 completionBlock:v39] & 1) == 0)
    {
      v36 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v34];
      v37 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:600 userInfo:0];
      [v36 finishedRevokingPseudonymWithSuccess:0 error:v37 requestUUID:v35];
    }

    v15 = v38;
  }

  else
  {
    v30 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v16];
    v31 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:500 userInfo:0];
    v15 = v38;
    [v30 finishedProvisioningPseudonym:0 success:0 error:v31 forRequestUUID:v38];

    v14 = v20;
  }

LABEL_16:
}

- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 onAccount:(id)a6 requestUUID:(id)a7 messageContext:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [a8 localObject];
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110402;
    v34 = a3;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "reportAction %d ofTempURI %@ fromURI %@ onAccount %@ requestUUID %@ localObject %@", buf, 0x3Au);
  }

  v20 = [(IDSDaemon *)self accountWithIdentifier:v16 localObject:v18 requiredEntitlement:kIDSRegistrationEntitlement];
  if (!v20)
  {
    v27 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
    v28 = [NSError errorWithDomain:IDSServiceReportingErrorDomain code:500 userInfo:0];
    [v27 finishedReportingRequestUUID:v17 withError:v28];

    goto LABEL_13;
  }

  v29 = v14;
  v21 = [IDSServerBag sharedInstanceForBagType:0];
  v22 = [v21 objectForKey:@"enable-report-web-approval-status"];
  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_11;
  }

  v23 = [v22 BOOLValue];

  if (v23)
  {
LABEL_11:
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1004B0CA4;
    v30[3] = &unk_100BDD7B8;
    v30[4] = self;
    v31 = v18;
    v32 = v17;
    v14 = v29;
    [v20 reportAction:a3 ofTempURI:v29 fromURI:v15 withCompletion:v30];

    goto LABEL_13;
  }

  v24 = +[IMRGLog registration];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "reportAction -- disabled by the server!", buf, 2u);
  }

  v25 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v18];
  v26 = [NSError errorWithDomain:IDSServiceReportingErrorDomain code:100 userInfo:0];
  [v25 finishedReportingRequestUUID:v17 withError:v26];

  v14 = v29;
LABEL_13:
}

- (void)registerAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "registerAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 registerAccount];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDE008];
  }
}

- (void)unregisterAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unregisterAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 unregisterAccount];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDE028];
  }
}

- (void)forceRemoveAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "forceRemoveAccount %@ localObject %@", &v18, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    if ([v9 isTemporary])
    {
      if (![v10 accountType])
      {
        v11 = [v10 userUniqueIdentifier];

        if (v11)
        {
          v12 = [(IDSDaemon *)self registrationConductor];
          v13 = [v12 userStore];
          v14 = [v10 userUniqueIdentifier];
          v15 = [v13 userWithUniqueIdentifier:v14];

          v16 = [(IDSDaemon *)self registrationConductor];
          v17 = [v16 userStore];
          [v17 forceRemoveUser:v15 silently:1];
        }
      }
    }
  }
}

- (void)_reregisterAndReidentify:(id)a3 account:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 localObject];
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_reregisterAndReidentify %@ account %@ localObject %@", buf, 0x20u);
  }

  v12 = [(IDSDaemon *)self accountWithIdentifier:v9 localObject:v10 requiredEntitlement:kIDSRegistrationEntitlement];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 registration];
    v15 = [v14 registrationType];

    if (!v15)
    {
      v16 = +[IDSRegistrationReasonTracker sharedInstance];
      v17 = [v13 userUniqueIdentifier];
      [v16 setPNRReason:10 forUserUniqueIdentifier:v17];
    }

    [v13 _reregisterAndReidentify:{objc_msgSend(v8, "BOOLValue")}];
    v18 = [v13 linkedAccounts];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1004B15AC;
    v19[3] = &unk_100BDB090;
    v20 = v8;
    [v18 __imForEach:v19];
  }
}

- (void)deactivateAndPurgeIdentifyForAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = [a4 localObject];
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deactivateAndPurgeIdentifyForAccount %@ localObject %@", &v12, 0x16u);
  }

  v9 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v7 requiredEntitlement:kIDSRegistrationEntitlement];
  v10 = v9;
  if (v9)
  {
    [v9 deactivateAndPurgeIdentify];
    v11 = [v10 linkedAccounts];
    [v11 __imForEach:&stru_100BDE048];
  }
}

- (void)hardDeregisterWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hard deregister localObject %@", &v10, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSRegistrationResetEntitlement];

  if (v8)
  {
    self->_isHardReset = 1;
    v9 = +[IDSDAccountController sharedInstance];
    [v9 hardDeregister];
  }
}

- (void)triggerFinalDeregisterWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trigger final deregister localObject %@", &v10, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSRegistrationResetEntitlement];

  if (v8)
  {
    v9 = +[IDSDAccountController sharedInstance];
    [v9 triggerFinalDeregister];
  }
}

- (void)kickGetDependentForAccount:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localObject];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Kicking get dependent for account %@ localObject %@", &v14, 0x16u);
  }

  v10 = [v7 localObject];
  v11 = [(IDSDaemon *)self accountWithIdentifier:v6 localObject:v10 requiredEntitlement:kIDSiCloudSignInHackEntitlement];

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

- (void)reRegisterWithUserID:(id)a3 action:(id)a4 service:(id)a5 messageContext:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a6 localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:v12 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (self)
  {
    v13 = +[IDSDRegistrationPushManager sharedInstance];
    [v13 fakeIncomingPushForUserID:v14 style:v10 service:v11];
  }
}

- (void)repairAccountsWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trigger accounts repair { localObject: %@ }", &v10, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v8)
  {
    v9 = [(IDSDaemon *)self registrationConductor];
    [v9 kickRepair];
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

- (void)clearIDSStateWithMessageContext:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [v4 localObject];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004B359C;
  v12[3] = &unk_100BDE0B0;
  v12[4] = self;
  v12[5] = &v13;
  [(IDSDaemon *)self validateListenerForLocalObject:v5 andPerformBlock:v12];

  if (v14[3])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 localObject];
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to clear IDS state %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = [v4 localObject];
      _IDSLogV();
    }

    [(IDSDaemon *)self _clearIDSState];
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 localObject];
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not entitled to clear IDS state %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = [v4 localObject];
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

- (void)initialLocalSyncStartedForServices:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initial: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
      v16 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = "[IDSDaemon(Account) initialLocalSyncStartedForServices:messageContext:]";
        v16 = v6;
        _IDSLogV();
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  v9 = [v7 localObject];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1004B39B8;
  v17[3] = &unk_100BDE0D8;
  v17[4] = self;
  v10 = v6;
  v18 = v10;
  v19 = buf;
  [(IDSDaemon *)self validateListenerForLocalObject:v9 andPerformBlock:v17];

  if (*(*&buf[8] + 24))
  {
    if ([v10 count])
    {
      v11 = +[IDSUTunDeliveryController sharedInstance];
      [v11 defaultPeerSetPreferInfraWiFi:1 services:v10];
    }

    v12 = +[IDSDuetInterface sharedInstance];
    v13 = [v7 localObject];
    v14 = [v13 processName];
    [v12 setInitialSyncInProgress:1 forClientID:v14];
  }

  _Block_object_dispose(buf, 8);
}

- (void)initialLocalSyncCompletedForServices:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initial: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
      v16 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = "[IDSDaemon(Account) initialLocalSyncCompletedForServices:messageContext:]";
        v16 = v6;
        _IDSLogV();
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  v9 = [v7 localObject];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1004B3D24;
  v17[3] = &unk_100BDE0D8;
  v17[4] = self;
  v10 = v6;
  v18 = v10;
  v19 = buf;
  [(IDSDaemon *)self validateListenerForLocalObject:v9 andPerformBlock:v17];

  if (*(*&buf[8] + 24))
  {
    if ([v10 count])
    {
      v11 = +[IDSUTunDeliveryController sharedInstance];
      [v11 defaultPeerSetPreferInfraWiFi:0 services:v10];
    }

    v12 = +[IDSDuetInterface sharedInstance];
    v13 = [v7 localObject];
    v14 = [v13 processName];
    [v12 setInitialSyncInProgress:0 forClientID:v14];
  }

  _Block_object_dispose(buf, 8);
}

- (void)iCloudSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 localObject];
    v27 = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "iCloudSignInWithUserName %@ localObject %@", &v27, 0x16u);
  }

  v24 = [v21 localObject];
  v25 = [(IDSDaemon *)self validateListenerForLocalObject:v24];

  if (v25)
  {
    v26 = [(IDSDaemon *)self signInResponder];
    [v26 iCloudSignInWithUsername:v15 authToken:v16 password:v17 accountInfo:v18 accountStatus:v19 handles:v20];
  }
}

- (void)iCloudUpdateForUserName:(id)a3 accountInfo:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 localObject];
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloudUpdateForUserName %@ localObject %@", &v16, 0x16u);
  }

  v13 = [v10 localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:v13];

  if (v14)
  {
    v15 = [(IDSDaemon *)self signInResponder];
    [v15 iCloudUpdateForUsername:v8 accountInfo:v9];
  }
}

- (void)iCloudModifyForUserName:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localObject];
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iCloudModifyForUserName %@ localObject %@", &v13, 0x16u);
  }

  v10 = [v7 localObject];
  v11 = [(IDSDaemon *)self validateListenerForLocalObject:v10];

  if (v11)
  {
    v12 = [(IDSDaemon *)self signInResponder];
    [v12 iCloudModifyForUsername:v6];
  }
}

- (void)iCloudSignOutWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iCloudSignOut %@", &v10, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7];

  if (v8)
  {
    v9 = [(IDSDaemon *)self signInResponder];
    [v9 iCloudSignOut];
  }
}

- (void)iTunesSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 localObject];
    v27 = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "iTunesSignInWithUserName %@ localObject %@", &v27, 0x16u);
  }

  v24 = [v21 localObject];
  v25 = [(IDSDaemon *)self validateListenerForLocalObject:v24];

  if (v25)
  {
    v26 = [(IDSDaemon *)self signInResponder];
    [v26 iTunesSignInWithUsername:v15 authToken:v16 password:v17 accountInfo:v18 accountStatus:v19 handles:v20];
  }
}

- (void)iTunesSignOutWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iTunesSignOut %@", &v10, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7];

  if (v8)
  {
    v9 = [(IDSDaemon *)self signInResponder];
    [v9 iTunesSignOut];
  }
}

- (void)gameCenterSignInWithUserName:(id)a3 authToken:(id)a4 password:(id)a5 accountInfo:(id)a6 accountStatus:(id)a7 handles:(id)a8 messageContext:(id)a9
{
  v15 = a3;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v16 localObject];
    v25 = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "gameCenterSignInWithUserName %@ localObject %@", &v25, 0x16u);
  }

  v24 = [(IDSDaemon *)self signInResponder];
  [v24 gameCenterSignInWithUsername:v15 authToken:v21 password:v20 accountInfo:v19 accountStatus:v18 handles:v17];
}

- (void)gameCenterSignOutWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "gameCenterSignOut %@", &v8, 0xCu);
  }

  v7 = [(IDSDaemon *)self signInResponder];
  [v7 gameCenterSignOut];
}

- (void)gameCenterModifyForUserName:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localObject];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "gameCenterModifyForUserName %@ localObject %@", &v11, 0x16u);
  }

  v10 = [(IDSDaemon *)self signInResponder];
  [v10 gameCenterModifyForUserName:v6];
}

- (void)updateUserWithOldUserName:(id)a3 newUserName:(id)a4 messageContext:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 localObject];
  v10 = [(IDSDaemon *)self validateListenerForLocalObject:v9];

  if (v10)
  {
    v11 = [(IDSDaemon *)self signInResponder];
    [v11 updateUserWithOldUsername:v12 newUsername:v8];
  }
}

- (void)iCloudSignInHackWithUserName:(id)a3 password:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = [v10 localObject];
    v18 = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud sign in hack with userName %@ and password %@ localObject %@", &v18, 0x20u);
  }

  v14 = [v10 localObject];
  v15 = [(IDSDaemon *)self validateListenerForLocalObject:v14 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v15)
  {
    v16 = [(IDSDaemon *)self registrationConductor];
    [v16 setShouldSupressRepairLogic:1];

    v17 = [(IDSDaemon *)self signInResponder];
    [v17 iCloudSignInWithUsername:v8 authToken:0 password:v9 accountInfo:0 accountStatus:0 handles:0];
  }
}

- (void)iCloudSignOutHackWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localObject];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iCloud sign out hack with localObject %@", &v11, 0xCu);
  }

  v7 = [v4 localObject];
  v8 = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSiCloudSignInHackEntitlement];

  if (v8)
  {
    v9 = [(IDSDaemon *)self registrationConductor];
    [v9 setShouldSupressRepairLogic:1];

    v10 = [(IDSDaemon *)self signInResponder];
    [v10 iCloudSignOut];
  }
}

- (void)setPassword:(id)a3 forUsername:(id)a4 onService:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 localObject];
  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = v14;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setPasswordForProfileID localObject %@ {username: %@, password: %p", &v23, 0x20u);
  }

  if (([(__CFString *)v12 isEqualToString:@"FaceTime"]& 1) != 0)
  {
    v16 = @"com.apple.ess";
  }

  else
  {
    v17 = [(__CFString *)v12 isEqualToString:@"iMessage"];
    v16 = @"com.apple.madrid";
    if (!v17)
    {
      v16 = v12;
    }
  }

  v18 = v16;
  v19 = [v13 localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:v19 andCheckEntitlement:kIDSRegistrationEntitlement forAccessToServiceWithIdentifier:v18])
  {

LABEL_10:
    v22 = +[FTPasswordManager sharedInstance];
    [v22 setPasswordForProfileID:0 username:v11 service:v12 password:v10 outRequestID:0 completionBlock:&stru_100BDE0F8];

    goto LABEL_11;
  }

  v20 = [v13 localObject];
  v21 = [(IDSDaemon *)self validateListenerForLocalObject:v20 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateSubServices:(id)a3 forService:(id)a4 deviceUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating sub services %@ for service %@ deviceUniqueID %@", &v18, 0x20u);
  }

  v15 = [v13 localObject];

  v16 = [(IDSDaemon *)self validateListenerForLocalObject:v15 andCheckEntitlement:kIDSSubServicesEntitlement forAccessToServiceWithIdentifier:v11];
  if (v16)
  {
    v17 = +[IDSDServiceController sharedInstance];
    [v17 updateSubServices:v10 forService:v11 deviceUniqueID:v12];
  }
}

- (void)setPairedDeviceInfo:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Save paired device info: %@", &v13, 0xCu);
  }

  v9 = [v7 localObject];

  v10 = [(IDSDaemon *)self validateListenerForLocalObject:v9 andCheckEntitlement:kIDSEncryptionKeysEntitlement];
  if (v10)
  {
    v11 = +[IDSPairingManager sharedInstance];
    [v11 setPairedDeviceInfo:v6];

    v12 = +[IDSAccountSync sharedInstance];
    [v12 resetAndResynchronizeEverything];
  }
}

- (void)setNSUUID:(id)a3 onDeviceWithUniqueID:(id)a4 forService:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v14 = [v13 localObject];
  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1004B58DC;
  v39 = &unk_100BDE0D8;
  v40 = self;
  v15 = v12;
  v41 = v15;
  v42 = &v43;
  [(IDSDaemon *)self validateListenerForLocalObject:v14 andPerformBlock:&v36];

  if (v44[3])
  {
    v16 = +[IDSDAccountController sharedInstance];
    v17 = [v16 cloudPairedIDForDeviceID:v11];

    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v13 localObject];
      *buf = 138413314;
      v48 = v10;
      v49 = 2112;
      v50 = v11;
      v51 = 2112;
      v52 = v17;
      v53 = 2112;
      v54 = v15;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting NSUUID %@ on device with uniqueID %@  current pariedID: %@  service %@ localObject %@", buf, 0x34u);
    }

    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v48 = v10;
      v49 = 2112;
      v50 = v11;
      v51 = 2112;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " *** Cloud pairing detected setting BTUUID %@   on device ID: %@ **** (From: %@)", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v34 = v11;
        v35 = v17;
        v33 = v10;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v34 = v11;
          v35 = v17;
          v33 = v10;
          _IDSLogV();
        }
      }
    }

    v21 = [IMSystemMonitor sharedInstance:v33];
    v22 = [v21 isUnderFirstDataProtectionLock];

    if (v22)
    {
      self->_cloudPairingBeforeFirstUnlock = 1;
      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => Noting it was before first unlock", buf, 2u);
      }
    }

    if (v10 && v17 && [v17 isEqualToIgnoringCase:v10])
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
      v27 = [v26 isInternalInstall];

      if (v27)
      {
        v28 = +[IDSDAccountController sharedInstance];
        v29 = [v28 propertiesForDeviceWithUniqueID:v11];

        v30 = +[IMRGLog registration];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   => Device properties: %@", buf, 0xCu);
        }

        if ([v10 length])
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
      [v32 setNSUUID:v10 onDeviceWithUniqueID:v11];

      im_dispatch_after_primary_queue();
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (void)incomingAccountSyncMessage:(id)a3 fromID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Daemon received incoming account sync message", v15, 2u);
  }

  v12 = [v10 localObject];

  v13 = [(IDSDaemon *)self validateListenerForLocalObject:v12 andCheckEntitlement:kIDSAccountSyncEntitlement];
  if (v13)
  {
    v14 = +[IDSAccountSync sharedInstance];
    [v14 incomingSyncMessage:v8 fromID:v9];
  }
}

- (void)regenerateRegisteredIdentityWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog keyRoll];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to regenerate registered identity", buf, 2u);
  }

  v6 = [v4 localObject];

  v7 = [(IDSDaemon *)self validateListenerForLocalObject:v6 andCheckEntitlement:kIDSKeyRollingEntitlement];
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

- (void)registrationControlSetRegistrationStateForRegistrationType:(int64_t)a3 toState:(int64_t)a4 requestID:(id)a5 messageContext:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [v11 localObject];
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:v12 andCheckEntitlement:kIDSRegistrationControlEntitlement];

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
    [(IDSDaemon *)self _respondToRegistrationControlWithRequestID:v10 status:0 messageContext:v11 error:v24];
    goto LABEL_11;
  }

  v14 = +[IMRGLog iCloud];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:a3];
    v16 = [NSNumber numberWithInteger:a4];
    v17 = [v11 localObject];
    *buf = 138412802;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "registrationControlSetRegistrationStateForRegistrationType %@ registrationType %@ localObject %@", buf, 0x20u);
  }

  v18 = +[IDSDRegistrationControl sharedInstance];
  v28 = 0;
  [v18 updateRegistrationType:a3 toState:a4 error:&v28];
  v19 = v28;

  [(IDSDaemon *)self respondToRegistrationControlActionWithRequestID:v10 messageContext:v11 error:v19];
  v20 = [v11 localObject];
  v21 = [v20 processName];
  LODWORD(v18) = [v21 isEqualToString:@"Setup"];

  if (v18)
  {
    v22 = +[FTDeviceSupport sharedInstance];
    v23 = [v22 isGreenTea];

    v24 = [[IDSRegistrationControlChosenMetric alloc] initWithControlRegistrationType:a3 registrationControlStatus:a4 isInterestingRegion:v23];
    v25 = +[IDSAWDLogger logger];
    [v25 logMetric:v24];

LABEL_11:
  }
}

- (void)registrationControlGetRegistrationStateForRegistrationType:(int64_t)a3 requestID:(id)a4 messageContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 localObject];
  v11 = [(IDSDaemon *)self validateListenerForLocalObject:v10 andCheckEntitlement:kIDSRegistrationControlEntitlement];

  if (v11)
  {
    v12 = +[IDSDRegistrationControl sharedInstance];
    v20 = 0;
    v13 = [v12 registrationStateForRegistrationType:a3 error:&v20];
    v14 = v20;

    v15 = self;
    v16 = v8;
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
    v15 = self;
    v16 = v8;
    v17 = 0;
  }

  [(IDSDaemon *)v15 _respondToRegistrationControlWithRequestID:v16 status:v17 messageContext:v9 error:v14];
}

- (void)respondToRegistrationControlActionWithRequestID:(id)a3 messageContext:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 localObject];
  v11 = [(IDSDaemon *)self listenerRemoteObjectForLocalObject:v10];

  [v11 registrationControlResponseForRequestID:v9 withError:v8];
}

- (void)_respondToRegistrationControlWithRequestID:(id)a3 status:(int64_t)a4 messageContext:(id)a5 error:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [v11 setReply:1];
  v13 = [v11 localObject];
  v14 = [(IDSDaemon *)self broadcasterForLocalObject:v13 messageContext:v11];

  [v14 registrationControlStatusResponseForRequestID:a4 requestID:v12 withError:v10];
}

- (id)messageStoreForDataProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
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

- (void)deliveryController:(id)a3 device:(id)a4 supportsDirectMessaging:(BOOL)a5 isObliterating:(BOOL)a6
{
  if (a6)
  {
    [(IDSDaemon *)self notifyClients:2, a4, a5];
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

- (void)processDirectMessagingCapability:(BOOL)a3
{
  if (_IDSSupportsDirectMessaging() && !a3)
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

- (void)processDirectMessagingInfo:(id)a3
{
  v4 = a3;
  if (_IDSSupportsDirectMessaging())
  {
    if ([v4 length] > 0xF)
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
      [v4 getBytes:&v18 length:16];
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
        *v21 = [v4 length];
        *&v21[8] = 2048;
        v22 = 16;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Invalid message size (%lu < %zu)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v4 length];
        _IDSLogV();
      }
    }
  }
}

- (void)notifyClients:(unint64_t)a3
{
  if (_IDSSupportsDirectMessaging() && qword_100CBF040 != a3)
  {
    if (a3)
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
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notifying clients with state: %llu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    notify_set_state(dword_100CB1420, a3);
    notify_post("com.apple.ids.direct-messaging");
    qword_100CBF040 = a3;
  }
}

- (void)receivedDirectMsgSocketRequestForService:(id)a3 stream:(id)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received direct messaging connection for service: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (_IDSSupportsDirectMessaging())
  {
    [(IDSDaemon *)self wakeClientForService:v8 stream:v9 flags:a5];
  }
}

- (id)_updateDirectMessagingMetadataForRemoteObject:(id)a3 shouldBroadcastForRemoteObject:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!_IDSSupportsDirectMessaging())
  {
    v17 = 0;
    goto LABEL_54;
  }

  v43 = v4;
  v44 = v5;
  im_assert_primary_base_queue();
  v6 = +[IDSDServiceController sharedInstance];
  v45 = [v6 allServicesStrings];

  if (v45 && [v45 count])
  {
    v7 = +[IDSPairingManager sharedInstance];
    v42 = [v7 pairedDeviceUniqueID];

    if (v42)
    {
      v41 = [[NSUUID alloc] initWithUUIDString:v42];
      v8 = [v5 entitlements];
      v9 = kIDSMessagingEntitlement;
      if ([v8 hasEntitlement:kIDSMessagingEntitlement] & 1) != 0 || (objc_msgSend(v8, "hasEntitlement:", kIDSUrgentPriorityMessagingEntitlement) & 1) != 0 || (objc_msgSend(v8, "hasEntitlement:", kIDSHighPriorityMessagingEntitlement))
      {
        v46 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v10 = v45;
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
              if ([v8 hasService:v14 forEntitlement:v9])
              {
                v15 = +[IDSDServiceController sharedInstance];
                v16 = [v15 serviceWithName:v14];

                if ([v16 allowWakingMessages] && objc_msgSend(v16, "dataProtectionClass") != 1 && (objc_msgSend(v16, "shouldProtectTrafficUsingClassA") & 1) == 0)
                {
                  [v46 addObject:v14];
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v11);
        }

        if ([v46 count])
        {
          v17 = objc_alloc_init(NSMutableDictionary);
          v18 = [v41 UUIDString];
          [v17 setObject:v18 forKeyedSubscript:@"peerIDForDirectMsg"];

          [v17 setObject:v46 forKeyedSubscript:@"directMsgAllowedForServices"];
          v19 = [NSNumber numberWithInt:getpid()];
          [v17 setObject:v19 forKeyedSubscript:@"pidForIDSD"];

          v20 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v44 localObject];
            v22 = [v21 processName];
            *buf = 138412802;
            v52 = v22;
            v53 = 2112;
            v54 = v17;
            v55 = 1024;
            v56 = v43;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "completing setup info for %@ : %@, broadcast %d", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v23 = [v44 localObject];
            v38 = [v23 processName];
            _IDSLogV();
          }

          if (!v43)
          {
            goto LABEL_51;
          }

          v24 = +[IDSDaemon sharedInstance];
          v25 = [v44 localObject];
          v26 = [v24 broadcasterForLocalObject:v25 messageContext:0];

          [v26 receivedMetadataForDirectMessaging:v17];
          goto LABEL_50;
        }

        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v44 localObject];
          v33 = [v32 processName];
          *buf = 138412290;
          v52 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No allowed services when processing %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          v17 = 0;
LABEL_51:

LABEL_52:
          goto LABEL_53;
        }

        v26 = [v44 localObject];
        v40 = [v26 processName];
        _IDSLogV();
      }

      else
      {
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v5 localObject];
          v36 = [v35 processName];
          *buf = 138412290;
          v52 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No entitlements when processing %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          v17 = 0;
          goto LABEL_52;
        }

        v46 = [v5 localObject];
        v26 = [v46 processName];
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
      v28 = [v5 localObject];
      v29 = [v28 processName];
      *buf = 138412290;
      v52 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No services when processing %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v30 = [v5 localObject];
      v39 = [v30 processName];
      _IDSLogV();
    }
  }

  v17 = 0;
LABEL_53:
  v5 = v44;
LABEL_54:

  return v17;
}

- (id)_copyDirectMessagingMetadataForRemoteObject:(id)a3
{
  v4 = a3;
  if (_IDSSupportsDirectMessaging())
  {
    v5 = [(IDSDaemon *)self _updateDirectMessagingMetadataForRemoteObject:v4 shouldBroadcastForRemoteObject:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)wakeClientForService:(id)a3 stream:(id)a4 flags:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ((a5 & 0x40) != 0)
  {
    v10 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
LABEL_8:
    v9 = *v10;
    goto LABEL_9;
  }

  if ((a5 & 0x20) != 0)
  {
    v10 = &kIDSListenerCapConsumesLaunchOnDemandIncomingData;
    goto LABEL_8;
  }

  if ((a5 & 0x80) != 0)
  {
    v9 = kIDSListenerCapConsumesLaunchOnDemandIncomingProtobuf;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  v11 = 100;
  if ((a5 & 0x10) == 0)
  {
    v11 = 200;
  }

  if ((a5 & 8) != 0)
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
  v28 = v8;
  v15 = xpc_string_create([v8 UTF8String]);
  IMInsertBoolsToXPCDictionary();
  v29 = v15;
  xpc_dictionary_set_value(v14, "object", v15);
  v16 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v16, @"object-type", @"direct-messaging-socket-received");
  v17 = [NSNumber numberWithUnsignedLongLong:a5, 1, 0];
  if (v17)
  {
    CFDictionarySetValue(v16, @"object-flags", v17);
  }

  if (v7)
  {
    CFDictionarySetValue(v16, @"object-recipient", v7);
  }

  v27 = [(__CFDictionary *)v16 copy];
  IMInsertKeyedCodableObjectsToXPCDictionary();

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "issuing connected socket to client %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = v7;
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
  v34 = v7;
  v23 = v21;
  v24 = v7;
  v25 = v13;
  v26 = v20;
  [v22 performBlockWithPriority:v32 priority:v30];
}

+ (void)sendMessageWithIDSSendParameters:(id)a3 messageContext:(id)a4 threadContext:(id)a5 progressBlock:(id)a6 onObject:(id)a7
{
  v12 = a3;
  v38 = a4;
  v13 = a5;
  v34 = a6;
  v36 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v53 = _os_activity_create(&_mh_execute_header, "Daemon sendMessage with parameters", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v53, &state);
  v14 = [v13 serviceIdentifier];
  v35 = [v13 servicePushTopic];
  v37 = [v13 listenerID];
  v15 = [v13 entitlements];
  v16 = [v13 serviceAdHocType];
  v17 = [v13 accountDescription];
  v18 = [v13 subService];
  if ([v18 length])
  {
    [v13 subService];
  }

  else
  {
    [v13 serviceIdentifier];
  }
  v19 = ;

  v33 = [v13 silentlyFailMessagesOnSwitch];
  if (([a1 entitlementDictionary:v15 isEntitledToAccessService:v14 forEntitlement:kIDSMessagingEntitlement forAccount:v17 shouldWarn:0] & 1) == 0)
  {
    goto LABEL_37;
  }

  if ([a1 entitlementDictionary:v15 isEntitledToAccessService:v14 forEntitlement:kIDSBypassSizeCheckEntitlement forAccount:v17 shouldWarn:0])
  {
    [v12 setBypassSizeCheck:1];
  }

  v20 = [v12 priority];
  v21 = +[IDSTrafficMonitor sharedInstance];
  v22 = [v21 noteOutgoingMessageForService:v19 serviceType:v16 requestor:v37];

  if (v22)
  {
    v23 = [v12 homeKitPayload];
    [v12 setEncryptPayload:1];
    if (v23)
    {
      [v12 setCompressPayload:0];
      [v12 setEncryptPayload:0];
    }

    if ([v14 isEqualToString:@"com.apple.private.alloy.bulletinboard"])
    {
      [v12 setEncryptPayload:0];
    }

    if ([v12 forceEncryptionOff] && objc_msgSend(v14, "isEqualToString:", @"com.apple.private.alloy.keychainsync") && objc_msgSend(a1, "entitlementDictionary:isEntitledToAccessService:forEntitlement:forAccount:shouldWarn:", v15, v14, kIDSForceEncryptionOffEntitlement, v17, 0))
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v14;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Forcing encryption off for message on %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v31 = v14;
        _IDSLogV();
      }

      [v12 setEncryptPayload:{0, v31}];
    }

    [v38 setShouldBoost:v20 == 300];
    v25 = [v12 requireAllRegistrationProperties];
    if (v25 || ([v12 interestingRegistrationProperties], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v29 = [v12 requireLackOfRegistrationProperties];
      v30 = v29 == 0;

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
    v50 = v12;
    v51 = v38;
    v32 = objc_retainBlock(v49);

LABEL_25:
    v26 = _os_activity_create(&_mh_execute_header, "Send message with send parameters", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    if ([a1 shouldProcessOutgoingMessageWithSendParameters:v12 messageContext:v38 threadContext:v13 onObject:v36])
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10064E0FC;
      v39[3] = &unk_100BE31F8;
      v40 = v26;
      v41 = v12;
      v42 = v38;
      v48 = v33;
      v43 = v19;
      v44 = v13;
      v47 = a1;
      v45 = v36;
      v46 = v35;
      [a1 _sendMessageWithSendParameters:v41 threadContext:v44 onObject:v45 willSendBlock:v32 progressBlock:v34 completionBlock:v39];
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

+ (void)_forwardSendMessageToAccountWithSendParameters:(id)a3 service:(id)a4 threadContext:(id)a5 guid:(id)a6 dataProtectionClass:(unsigned int)a7 willSendBlock:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10
{
  v14 = a3;
  v15 = a4;
  v36 = a5;
  v16 = a6;
  v37 = a8;
  v38 = a9;
  v17 = a10;
  v18 = [v14 data];

  if (v18)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = v15;
      v21 = [v14 accountUUID];
      v22 = [v14 data];
      v23 = [v22 length];
      v24 = [v14 destinations];
      v25 = [v14 identifier];
      *buf = 138413314;
      v45 = v21;
      v46 = 1024;
      *v47 = v23;
      *&v47[4] = 2112;
      *&v47[6] = v24;
      *&v47[14] = 2112;
      *&v47[16] = v25;
      *&v47[24] = 2112;
      *&v47[26] = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "account %@ sendMessage with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);

      v15 = v20;
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = [v14 accountUUID];
      v27 = [v14 data];
      [v27 length];
      v28 = [v14 destinations];
      v29 = [v14 identifier];
      _IDSLogV();
LABEL_12:
    }
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v14 accountUUID];
      v32 = [v14 message];
      v33 = [v14 destinations];
      v34 = [v14 identifier];
      *buf = 138413314;
      v45 = v31;
      v46 = 2112;
      *v47 = v32;
      *&v47[8] = 2112;
      *&v47[10] = v33;
      *&v47[18] = 2112;
      *&v47[20] = v34;
      *&v47[28] = 2112;
      *&v47[30] = v16;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "account %@ sendMessage: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = [v14 accountUUID];
      v27 = [v14 message];
      v28 = [v14 destinations];
      v29 = [v14 identifier];
      _IDSLogV();
      goto LABEL_12;
    }
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10064F838;
  v39[3] = &unk_100BE3220;
  v42 = v17;
  v40 = v16;
  v41 = v14;
  v43 = a7;
  [IDSDAccount sendMessageWithSendParameters:v41 service:v15 threadContext:v36 willSendBlock:v37 progressBlock:v38 completionBlock:v39];
}

+ (void)_sendMessageWithSendParameters:(id)a3 threadContext:(id)a4 onObject:(id)a5 willSendBlock:(id)a6 progressBlock:(id)a7 completionBlock:(id)a8
{
  v13 = a3;
  v14 = a4;
  v230 = a5;
  v231 = a6;
  v232 = a7;
  v239 = a8;
  v15 = [v14 subService];
  if ([v15 length])
  {
    [v14 subService];
  }

  else
  {
    [v14 serviceIdentifier];
  }
  v238 = ;

  v236 = [v13 subService];
  v233 = [v14 serviceDuetIdentifiers];
  [v14 serviceIsDSBased];
  v234 = [v14 primaryRegistrationDSHandle];
  v16 = [v14 serviceAdHocType];
  v235 = [v14 aliasStrings];
  v227 = [v14 dataProtectionClass];
  v17 = [v14 isRegistrationActive];
  v18 = [v14 shouldProtectTrafficUsingClassA];
  v19 = [v14 dataProtectionClass];
  v20 = [v14 serviceIdentifier];
  v21 = sub_100019928(v18, v19, v20);

  if (v17)
  {
    v220 = v21;
    if (!v21 || (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), [v22 pairedDeviceUniqueID], v23 = objc_claimAutoreleasedReturnValue(), v24 = +[IDSEncryptionHelpers areDataProtectionKeysAvailableForService:withDataProtectionClass:fromDevice:](IDSEncryptionHelpers, "areDataProtectionKeysAvailableForService:withDataProtectionClass:fromDevice:", v238, 1, v23), v23, v22, (v24 & 1) != 0))
    {
      v226 = [v13 fromID];
      if (([v13 disableAliasValidation] & 1) == 0)
      {
        v229 = v226;
        v224 = [(__CFString *)v229 _stripFZIDPrefix];

        v258 = 0u;
        v259 = 0u;
        v256 = 0u;
        v257 = 0u;
        v25 = [v13 destinations];
        v26 = [v25 destinationURIs];

        v27 = [v26 countByEnumeratingWithState:&v256 objects:v280 count:16];
        if (v27)
        {
          v28 = *v257;
          while (2)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v257 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v256 + 1) + 8 * i);
              if ([(__CFString *)v30 hasSuffix:@"inbox.appleid.apple.com"])
              {
                v37 = +[IMIDSLog daemon];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v13 messageUUID];
                  v39 = [v13 destinations];
                  *buf = 138412802;
                  v263 = v30;
                  v264 = 2114;
                  v265 = v38;
                  v266 = 2112;
                  v267 = v39;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "At least one destination is mako {destinationURI: %@, guid: %{public}@, destinations: %@}", buf, 0x20u);
                }

                goto LABEL_27;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v256 objects:v280 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v228 = [v234 _stripFZIDPrefix];
        _IDSPrefersPhoneNumbersForServiceIdentifier();
        v40 = [v14 pseudonyms];
        v226 = _IDSCopyCallerIDWithSelfMessagingHint();

        [v13 setFromID:v226];
        v225 = [v226 _bestGuessURI];
        if (v229 && v225 && ([(__CFString *)v225 isEqualToString:v229]& 1) == 0)
        {
          v63 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v263 = v229;
            v264 = 2112;
            v265 = v225;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "sendMessage - fromID (%@) does not match the account (%@). We are forced to fail this message send.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }

          if (!v239)
          {
            goto LABEL_313;
          }

          v64 = [NSError alloc];
          v222 = [v64 initWithDomain:IDSSendErrorDomain code:7 userInfo:0];
          v223 = [[IDSDeliveryContext alloc] initWithResponseCode:7 error:v222 lastCall:1];
          v239[2](v239, v223);
LABEL_312:

LABEL_313:
          goto LABEL_314;
        }
      }

      if ([v236 length])
      {
        v229 = v236;
      }

      else
      {
        v229 = [v14 servicePushTopic];
      }

      v41 = [a1 serviceController];
      v228 = [v41 serviceWithPushTopic:v229];

      v42 = [IDSURI alloc];
      v43 = [v13 fromID];
      v44 = [v43 _bestGuessURI];
      v225 = [v42 initWithPrefixedURI:v44];

      if ([v228 supportsOfflineDelivery])
      {
        v45 = +[IDSPeerIDManager sharedInstance];
        v46 = [v45 shortHandleForURI:v225 fromURI:v225];
        [v13 setFromShortHandle:v46];
      }

      v47 = [v13 destinations];
      v48 = [v47 destinationURIs];
      v49 = kIDSServiceDefaultsSentinelSelfAlias;
      v50 = [v48 containsObject:kIDSServiceDefaultsSentinelSelfAlias];

      if (v50)
      {
        v51 = [v13 destinations];
        v52 = [v51 destinationURIs];
        v47 = [v52 mutableCopy];

        [v47 removeObject:v49];
        if (v234)
        {
          [v47 addObject:v234];
        }

        v53 = [IDSDestination destinationWithStrings:v47];
        [v13 setDestinations:v53];
      }

      v54 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        if ([v13 priority] == 300)
        {
          v55 = @"URGENT";
        }

        else if ([v13 priority] == 200)
        {
          v55 = @"Default";
        }

        else
        {
          v55 = @"Sync";
        }

        v56 = [v13 identifier];
        v57 = [v13 messageType];
        v47 = [v13 destinations];
        v58 = IMLoggingStringForArray();
        v59 = qos_class_self();
        *buf = 138545410;
        v60 = @"not local type";
        v61 = v16 == 5 || v16 == 2;
        v263 = v55;
        v264 = 2114;
        if (v61)
        {
          v60 = @"adhoc type 2";
        }

        v265 = v56;
        v266 = 2112;
        v267 = v57;
        v268 = 2112;
        v269 = v238;
        v270 = 2112;
        v271 = v47;
        v272 = 2112;
        v273 = v226;
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
        if ([v13 priority] == 300)
        {
          v62 = @"URGENT";
        }

        else
        {
          v62 = [v13 priority] == 200 ? @"Default" : @"Sync";
        }

        v65 = [v13 identifier];
        v47 = [v13 messageType];
        v66 = [v13 destinations];
        v67 = IMLoggingStringForArray();
        v68 = v16 == 5 || v16 == 2;
        v69 = v68 ? @"adhoc type 2" : @"not local type";
        v211 = v69;
        v212 = qos_class_self();
        v186 = v62;
        v199 = v65;
        v209 = v226;
        v210 = v67;
        v206 = v238;
        v208 = v66;
        v203 = v47;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          if ([v13 priority] == 300)
          {
            v70 = @"URGENT";
          }

          else if ([v13 priority] == 200)
          {
            v70 = @"Default";
          }

          else
          {
            v70 = @"Sync";
          }

          v71 = [v13 identifier];
          v47 = [v13 messageType];
          v72 = [v13 destinations];
          v73 = IMLoggingStringForArray();
          v211 = v69;
          v212 = qos_class_self();
          v209 = v226;
          v210 = v73;
          v206 = v238;
          v208 = v72;
          v199 = v71;
          v203 = v47;
          v186 = v70;
          _IDSLogV();
        }
      }

      if ([v13 homeKitPayload])
      {
        [v13 setCommand:&off_100C3CE80];
      }

      v74 = [v13 command];
      v75 = v74 == 0;

      if (v75)
      {
        v76 = [v13 protobuf];

        if (v76)
        {
          v77 = &off_100C3CE98;
        }

        else
        {
          v78 = [v13 data];

          if (v78)
          {
            v77 = &off_100C3CEB0;
          }

          else
          {
            v77 = &off_100C3CEC8;
          }
        }

        [v13 setCommand:v77];
      }

      v79 = v16 == 2;
      if (v16 == 5)
      {
        v79 = 1;
      }

      v218 = v79;
      if (v16 == 5 || v16 == 2)
      {
        if ([v13 priority] < 101 || objc_msgSend(v13, "nonWaking"))
        {
          [v13 setLocalDelivery:1];
        }

        v47 = [a1 uTunDeliveryController];
        v80 = [v47 localSetupInProgress];
      }

      else
      {
        v80 = 0;
      }

      if (v16 == 5 || v16 == 2)
      {
      }

      if (v80)
      {
        [v13 setBypassDuet:1];
      }

      if ([a1 _shouldReplaceLocalDestination:v14])
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

        v82 = [a1 pairingManager];
        v83 = [v82 pairedDeviceUniqueID];
        [v13 setLocalDestinationDeviceUUID:v83];
      }

      v84 = [v13 localDestinationDeviceUUID];
      v85 = [v84 length];

      if ((v16 == 5 || v16 == 2) && !v85)
      {
        v86 = [v13 destinations];
        v87 = [v86 destinationURIs];
        v88 = [v87 allObjects];
        v89 = [v88 firstObject];
        v255 = 0;
        v223 = [v89 _stripPotentialTokenURIWithToken:&v255];
        v222 = v255;

        v90 = [v13 destinations];
        v91 = [v90 destinationURIs];
        v92 = [v91 allObjects];
        v93 = [v92 firstObject];
        v94 = [v93 isEqualToIgnoringCase:IDSDefaultPairedDevice];

        v95 = +[IDSPairingManager sharedInstance];
        LODWORD(v90) = [v95 activePairedDeviceHasPairingType:1];

        if (!([v14 serviceWantsTinkerDevices] & 1 | ((v94 & v90 & 1) == 0)))
        {
          v98 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            v99 = [v13 messageUUID];
            *buf = 138412546;
            v263 = v99;
            v264 = 2112;
            v265 = v238;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "sendMessage - sending to tinker IDSDefaultPairedDevice. Failing message... { guid: %@, service: %@ }", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v191 = [v13 messageUUID];
            _IDSWarnV();

            v192 = [v13 messageUUID];
            _IDSLogV();

            v193 = [v13 messageUUID];
            _IDSLogTransport();
          }

          if (!v239)
          {
            goto LABEL_312;
          }

          v100 = [NSError alloc];
          v260 = NSDebugDescriptionErrorKey;
          v261 = @"Default paired watch is Tinker, but sending service is not Tinker aware. If you need to send locally to a Tinker watch, please contact IDS Engineering to have your service reconfigured";
          v101 = [NSDictionary dictionaryWithObjects:&v261 forKeys:&v260 count:1];
          v221 = [v100 initWithDomain:IDSSendErrorDomain code:32 userInfo:v101];

          v102 = [[IDSDeliveryContext alloc] initWithResponseCode:32 error:v221 lastCall:1];
          v239[2](v239, v102);
          goto LABEL_311;
        }

        if ((v94 & 1) != 0 || [v223 isEqualToIgnoringCase:IDSLocalDeviceIdentity])
        {
          v96 = +[IDSPairingManager sharedInstance];
          v97 = [v96 pairedDeviceUniqueID];
        }

        else
        {
          v103 = [v13 destinations];
          v104 = [v103 destinationURIs];
          v105 = [v104 allObjects];
          v96 = [v105 firstObject];

          v97 = [v96 _stripFZIDPrefix];
        }

        v106 = v97;
        [v13 setLocalDestinationDeviceUUID:v97];
      }

      if ([v13 liveMessageDelivery] && (objc_msgSend(v14, "serviceAllowLiveMessageDelivery") & 1) != 0)
      {
        v107 = 7;
      }

      else if (v16 == 5 || v16 == 2)
      {
        if (([v13 allowCloudDelivery] & 1) != 0 || objc_msgSend(v13, "nonCloudWaking")) && (objc_msgSend(v14, "shouldAllowCloudDelivery"))
        {
          v107 = 6;
        }

        else if ([v14 serviceAllowProxyDelivery])
        {
          v107 = 2;
        }

        else
        {
          v107 = 4;
        }
      }

      else if ([v14 serviceAllowLocalDelivery] && objc_msgSend(v14, "serviceAdHocType") == 1)
      {
        v107 = 5;
      }

      else
      {
        v107 = 1;
      }

      v108 = [NSNumber numberWithLongLong:v107];
      [v13 setMessageType:v108];

      if ([v13 priority] == 300)
      {
        v108 = [v13 messageType];
        v109 = [v108 integerValue] == 1;

        if (v109 || ([a1 accountController], v108 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "accountUUID"), v110 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v108, "accountWithUniqueID:", v110), v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "accountType") == 2, v111, v110, v108, !v112))
        {
          [v13 setBypassStorage:1];
        }
      }

      if ([a1 _canBulkMessageWithPriority:objc_msgSend(v13 adHocServiceType:{"priority"), v16}])
      {
        v222 = 0;
      }

      else
      {
        v222 = [v13 identifier];
      }

      v223 = [a1 messageStoreForDataProtectionClass:v227];
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

        if (!v239)
        {
          goto LABEL_312;
        }

        v115 = [NSError alloc];
        v221 = [v115 initWithDomain:IDSSendErrorDomain code:18 userInfo:0];
        v102 = [[IDSDeliveryContext alloc] initWithResponseCode:18 error:v221 lastCall:1];
        v239[2](v239, v102);
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

      if ([v13 priority] == 300)
      {
        if (v16 == 5 || v16 == 2)
        {
          v108 = +[IDSUTunDeliveryController sharedInstance];
          v217 = [v108 hasSpaceForMessagesWithPriority:300 dataProtectionClass:v227];
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

      v221 = [v228 allowedTrafficClasses];
      if ([v221 containsObject:@"com.apple.ids.trafficclass.nanoregistry.check"] & 1) != 0 || (objc_msgSend(v221, "containsObject:", @"com.apple.ids.trafficclass.nanoregistry.configure"))
      {
        v215 = 1;
      }

      else
      {
        v215 = [v221 containsObject:@"com.apple.ids.trafficclass.nanoregistry.update"];
      }

      if ([v13 bypassStorage] & 1) != 0 || (objc_msgSend(v13, "bypassDuet") & 1) != 0 || (objc_msgSend(v13, "requireBluetooth"))
      {
        v118 = 1;
      }

      else
      {
        v118 = [v13 requireLocalWiFi] | v215;
      }

      v219 = v118;
      if (v16 == 5 || v16 == 2)
      {
        v108 = [a1 uTunDeliveryController];
        v119 = ([v108 hasSpaceForMessagesWithPriority:objc_msgSend(v13 dataProtectionClass:{"priority"), v227}] ^ 1) & v219;
      }

      else
      {
        v119 = 0;
      }

      if (v16 == 5 || v16 == 2)
      {
      }

      if (v119)
      {
        v120 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          if ([v13 priority] == 300)
          {
            v121 = @"URGENT";
          }

          else if ([v13 priority] == 200)
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
          if ([v13 priority] == 300)
          {
            v123 = @"URGENT";
          }

          else
          {
            v123 = [v13 priority] == 200 ? @"Default" : @"Sync";
          }

          IDSDataProtectionClassStringFromDataProtectionClass();
          v200 = v190 = v123;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            if ([v13 priority] == 300)
            {
              v124 = @"URGENT";
            }

            else if ([v13 priority] == 200)
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
        v239[2](v239, v125);
      }

      v126 = [v13 message];

      if (!v126)
      {
LABEL_258:
        v157 = [a1 pairingManager];
        v102 = [v157 pairedDeviceUniqueID];

        v158 = [v13 localDestinationDeviceUUID];
        LODWORD(v157) = [v102 isEqualToIgnoringCase:v158];
        v159 = [v158 length] == 0;
        v160 = v220;
        if (((v159 | v157) & 1) == 0)
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
        v162 = [v13 protobuf];

        if (v162)
        {
          v163 = [IDSProtobuf alloc];
          v164 = [v13 protobuf];
          v165 = [v163 initWithDictionary:v164];

          v166 = [v165 data];
          v167 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:v166 toDevice:v158 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];

          if (v167)
          {
            [v165 setData:v167];
            v168 = [v165 dictionaryRepresentation];
            [v13 setProtobuf:v168];

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
              v263 = v222;
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
              v198 = v222;
              v202 = v181;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v205 = v182;
                v207 = v183;
                v198 = v222;
                v202 = v181;
                _IDSLogV();
              }
            }

            v184 = [IDSDaemonPriorityQueueController sharedInstance:v198];
            v185 = [v184 queueForPriority:{objc_msgSend(v13, "priority")}];
            v240[0] = _NSConcreteStackBlock;
            v240[1] = 3221225472;
            v240[2] = sub_100652D18;
            v240[3] = &unk_100BE3338;
            v247 = v239;
            v241 = v13;
            v250 = a1;
            v242 = v228;
            v243 = v14;
            v251 = v227;
            v248 = v231;
            v249 = v232;
            v252 = v218;
            v244 = v230;
            v245 = v238;
            v246 = v233;
            [v223 storeOutgoingMessageWithSendParameters:v241 guid:v222 canSend:(v217 | v219) & 1 canBypassSimilarMessages:v219 & 1 fromQueue:v185 completionBlock:v240];

LABEL_310:
            goto LABEL_311;
          }

          v167 = v165;
        }

        else
        {
          v169 = [v13 data];

          if (v169)
          {
            v170 = [v13 data];
            v167 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:v170 toDevice:v158 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];

            if (v167)
            {
              [v13 setData:v167];
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
            v239[2](v239, v174);

            goto LABEL_310;
          }

          v167 = [v13 message];
          v175 = JWEncodeDictionary();
          v176 = [IDSEncryptionHelpers encryptLocalDeliveryPayload:v175 toDevice:v158 forService:v238 withDataProtectionClass:1 encryptionType:1 priority:300 error:&v253];
          if (v176)
          {
            [v13 setData:v176];
            [v13 setMessage:0];

            goto LABEL_285;
          }
        }

        goto LABEL_276;
      }

      v102 = [v13 message];
      v127 = objc_opt_class();
      v128 = IDSMessageResourceTransferURLKey;
      v216 = sub_10001B8C4(v127, v102, IDSMessageResourceTransferURLKey);
      if (!v216)
      {
LABEL_257:

        goto LABEL_258;
      }

      [v13 setEnforceRemoteTimeouts:1];
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
      v132 = [v13 identifier];
      v133 = [NSArray arrayWithObjects:v130, @"/Library/IdentityServices/files/", v132, 0];
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

        if (v239)
        {
          v141 = [NSError alloc];
          v142 = [v141 initWithDomain:IDSSendErrorDomain code:22 userInfo:0];
          v143 = [[IDSDeliveryContext alloc] initWithResponseCode:22 error:v142 lastCall:1];
          v239[2](v239, v143);
        }

        goto LABEL_270;
      }

      v136 = objc_opt_class();
      v137 = sub_10001B8C4(v136, v102, IDSMessageResourceTransferSandboxExtensionKey);
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
      v146 = sub_10001B8C4(v145, v102, IDSMessageResourceTransferOriginalFileSandboxExtensionKey);
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
        v151 = [NSMutableDictionary dictionaryWithDictionary:v102];
        [v151 setObject:v150 forKey:v128];
        [v13 setMessage:v151];
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
          v154 = [v13 dictionaryRepresentation];
          *buf = 138412802;
          v263 = v216;
          v264 = 2112;
          v265 = 0;
          v266 = 2112;
          v267 = v154;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "file persistence - failed to move file %@ => %@ params %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            [v13 dictionaryRepresentation];
            v204 = v201 = 0;
            v197 = v216;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              [v13 dictionaryRepresentation];
              v204 = v201 = 0;
              v197 = v216;
              _IDSLogV();
            }
          }
        }

        if (!v239)
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
        v239[2](v239, v156);
      }

      goto LABEL_256;
    }

    v34 = [NSError alloc];
    v35 = [v34 initWithDomain:IDSSendErrorDomain code:27 userInfo:0];
    v36 = [[IDSDeliveryContext alloc] initWithResponseCode:27 error:v35 lastCall:1];
    v239[2](v239, v36);
  }

  else
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v13 accountUUID];
      *buf = 138412290;
      v263 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v187 = [v13 accountUUID];
      _IDSWarnV();

      v188 = [v13 accountUUID];
      _IDSLogV();

      v189 = [v13 accountUUID];
      _IDSLogTransport();
    }

    if (v239)
    {
      v33 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
      v239[2](v239, v33);
    }
  }

LABEL_314:
}

+ (BOOL)_shouldReplaceLocalDestination:(id)a3
{
  v3 = a3;
  v4 = [v3 serviceAdHocType];
  v6 = v4 == 2 || v4 == 5;
  v7 = [v3 serviceAllowProxyDelivery];

  return v6 & v7;
}

+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)a3 threadContext:(id)a4 priority:(int64_t)a5 dataProtectionClass:(unsigned int)a6
{
  v6 = *&a6;
  v9 = a3;
  v68 = a4;
  v64 = v9;
  if (v9)
  {
    v10 = +[IDSUTunDeliveryController sharedInstance];
    v11 = [v10 hasSpaceForMessagesWithPriority:a5 dataProtectionClass:v6];

    if (v11)
    {
      v61 = objc_autoreleasePoolPush();
      v12 = +[IDSPairingManager sharedInstance];
      v62 = [v12 pairedDeviceUniqueID];

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"Sync";
        if (a5 == 200)
        {
          v14 = @"Default";
        }

        if (a5 == 300)
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
        *&v84[20] = v62;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performing query for account UUID %@ priority %@ class %@ Local Device ID %@ ", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v16 = @"Sync";
        if (a5 == 200)
        {
          v16 = @"Default";
        }

        if (a5 == 300)
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
        v60 = v62;
        v56 = v64;
        v58 = v16;
        _IDSLogV();
      }

      v70 = [IDSDMessageStore sharedInstanceForDataProtectionClass:v6, v56, v58, v59, v60];
      v63 = [v70 unsentNonUrgentMessagesForAccountUUID:v64 priority:a5 byteLimit:0x200000 upToLimit:10 localDestinationDeviceID:v62];
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
            v22 = [v21 guid];
            [v70 markOutgoingMessageWithGUID:v22 asSent:1];

            v23 = [v21 copySendParameters];
            v24 = [v23 data];

            if (v24)
            {
              v25 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = [v68 accountDescription];
                v27 = [v23 data];
                v28 = [v27 length];
                v29 = [v23 destinations];
                v30 = [v23 identifier];
                v31 = [v21 guid];
                *buf = 138413314;
                v82 = v26;
                v83 = 1024;
                *v84 = v28;
                *&v84[4] = 2112;
                *&v84[6] = v29;
                *&v84[14] = 2112;
                *&v84[16] = v30;
                *&v84[24] = 2112;
                *&v84[26] = v31;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v32 = [v68 accountDescription];
                v33 = [v23 data];
                [v33 length];
                v34 = [v23 destinations];
                v35 = [v23 identifier];
                v36 = [v21 guid];
                _IDSLogV();
LABEL_46:
              }
            }

            else
            {
              v37 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v38 = [v68 accountDescription];
                v39 = [v23 message];
                v40 = [v23 destinations];
                v41 = [v23 identifier];
                v42 = [v21 guid];
                *buf = 138413314;
                v82 = v38;
                v83 = 2112;
                *v84 = v39;
                *&v84[8] = 2112;
                *&v84[10] = v40;
                *&v84[18] = 2112;
                *&v84[20] = v41;
                *&v84[28] = 2112;
                *&v84[30] = v42;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v32 = [v68 accountDescription];
                v33 = [v23 message];
                v34 = [v23 destinations];
                v35 = [v23 identifier];
                v36 = [v21 guid];
                _IDSLogV();
                goto LABEL_46;
              }
            }

            v72[0] = _NSConcreteStackBlock;
            v72[1] = 3221225472;
            v72[2] = sub_100654FF4;
            v72[3] = &unk_100BDF220;
            v43 = v68;
            v73 = v43;
            v44 = v23;
            v74 = v44;
            v75 = v21;
            v76 = v70;
            v45 = objc_retainBlock(v72);
            v46 = [v43 servicePushTopic];
            v47 = +[IDSDaemon sharedInstance];
            v48 = [a1 progressBlockForSendParameters:v44 messageContext:0 topic:v46 forObject:v47];

            v49 = [a1 serviceController];
            v50 = [v43 servicePushTopic];
            v51 = [v49 serviceWithPushTopic:v50];

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
        if (a5 == 200)
        {
          v54 = @"Default";
        }

        if (a5 == 300)
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

+ (void)_sendLocalDeliveryMessagesForAccountUUID:(id)a3 threadContext:(id)a4 priority:(int64_t)a5 messageTypes:(id)a6 dataProtectionClass:(unsigned int)a7
{
  v7 = *&a7;
  v11 = a3;
  v71 = a4;
  v66 = a6;
  v67 = v11;
  if (v11)
  {
    v12 = +[IDSUTunDeliveryController sharedInstance];
    v13 = [v12 hasSpaceForMessagesWithPriority:a5 dataProtectionClass:v7];

    if (v13)
    {
      v63 = objc_autoreleasePoolPush();
      v14 = +[IDSPairingManager sharedInstance];
      v64 = [v14 pairedDeviceUniqueID];

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"Sync";
        if (a5 == 200)
        {
          v16 = @"Default";
        }

        if (a5 == 300)
        {
          v16 = @"URGENT";
        }

        v17 = @"Class D";
        if (v7 == 1)
        {
          v17 = @"Class A";
        }

        *buf = 138413058;
        v85 = v11;
        *v87 = v16;
        v86 = 2112;
        *&v87[8] = 2112;
        if (!v7)
        {
          v17 = @"Class C";
        }

        *&v87[10] = v17;
        *&v87[18] = 2112;
        *&v87[20] = v64;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Performing query for account UUID %@ priority %@ class %@ Local Device ID %@ ", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v18 = @"Sync";
        if (a5 == 200)
        {
          v18 = @"Default";
        }

        if (a5 == 300)
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
        v62 = v64;
        v58 = v11;
        v60 = v18;
        _IDSLogV();
      }

      v73 = [IDSDMessageStore sharedInstanceForDataProtectionClass:v7, v58, v60, v61, v62];
      v65 = [v73 unsentNonUrgentMessagesForAccountUUID:v11 priority:a5 byteLimit:0x200000 upToLimit:10 localDestinationDeviceID:v64 messageTypes:v66];
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
            v24 = [v23 guid];
            [v73 markOutgoingMessageWithGUID:v24 asSent:1];

            v25 = [v23 copySendParameters];
            v26 = [v25 data];

            if (v26)
            {
              v27 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = [v71 accountDescription];
                v29 = [v25 data];
                v30 = [v29 length];
                v31 = [v25 destinations];
                v32 = [v25 identifier];
                v33 = [v23 guid];
                *buf = 138413314;
                v85 = v28;
                v86 = 1024;
                *v87 = v30;
                *&v87[4] = 2112;
                *&v87[6] = v31;
                *&v87[14] = 2112;
                *&v87[16] = v32;
                *&v87[24] = 2112;
                *&v87[26] = v33;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v34 = [v71 accountDescription];
                v35 = [v25 data];
                [v35 length];
                v36 = [v25 destinations];
                v37 = [v25 identifier];
                v38 = [v23 guid];
                _IDSLogV();
LABEL_46:
              }
            }

            else
            {
              v39 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                v40 = [v71 accountDescription];
                v41 = [v25 message];
                v42 = [v25 destinations];
                v43 = [v25 identifier];
                v44 = [v23 guid];
                *buf = 138413314;
                v85 = v40;
                v86 = 2112;
                *v87 = v41;
                *&v87[8] = 2112;
                *&v87[10] = v42;
                *&v87[18] = 2112;
                *&v87[20] = v43;
                *&v87[28] = 2112;
                *&v87[30] = v44;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "account %@ _sendLocalDeliveryMessagesForAccountUUID: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v34 = [v71 accountDescription];
                v35 = [v25 message];
                v36 = [v25 destinations];
                v37 = [v25 identifier];
                v38 = [v23 guid];
                _IDSLogV();
                goto LABEL_46;
              }
            }

            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = sub_1006563F8;
            v75[3] = &unk_100BDF220;
            v45 = v71;
            v76 = v45;
            v46 = v25;
            v77 = v46;
            v78 = v23;
            v79 = v73;
            v47 = objc_retainBlock(v75);
            v48 = [v45 servicePushTopic];
            v49 = +[IDSDaemon sharedInstance];
            v50 = [a1 progressBlockForSendParameters:v46 messageContext:0 topic:v48 forObject:v49];

            v51 = [a1 serviceController];
            v52 = [v45 servicePushTopic];
            v53 = [v51 serviceWithPushTopic:v52];

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
        if (a5 == 200)
        {
          v56 = @"Default";
        }

        if (a5 == 300)
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

- (void)_failSavedMessagesCleanly:(id)a3 withResponseCode:(int64_t)a4
{
  v6 = a3;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100656AF4;
  v9[3] = &unk_100BE04B0;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  [v7 performBlockMainQueue:v9];
}

- (void)_failSavedMessageCleanly:(id)a3 withResponseCode:(int64_t)a4
{
  v6 = a3;
  im_assert_primary_base_queue();
  v7 = +[IDSDAccountController sharedInstance];
  v8 = [v6 accountGUID];
  v9 = [v7 accountWithUniqueID:v8];

  v10 = +[IDSDAccountController sharedInstance];
  v11 = [v6 mainAccountGuid];
  v12 = [v10 accountWithUniqueID:v11];

  v13 = [v9 service];
  v14 = [v13 pushTopic];

  v15 = [v12 service];
  v16 = [v15 pushTopic];

  v17 = +[IDSDaemonPriorityQueueController sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100656DAC;
  v21[3] = &unk_100BDE160;
  v22 = v14;
  v23 = self;
  v25 = v16;
  v26 = a4;
  v24 = v6;
  v18 = v16;
  v19 = v6;
  v20 = v14;
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

- (void)sendServerMessage:(id)a3 command:(id)a4 usingAccountWithUniqueID:(id)a5 messageContext:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSDAccountController sharedInstance];
  v14 = [v13 accountWithUniqueID:v11];

  if (v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = sub_10000AAD4;
    v38 = sub_10000BCDC;
    v39 = 0;
    v15 = [v12 localObject];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100657D28;
    v30[3] = &unk_100BDE0D8;
    v30[4] = self;
    v16 = v14;
    v31 = v16;
    p_buf = &buf;
    [(IDSDaemon *)self validateListenerForLocalObject:v15 andPerformBlock:v30];

    if (*(*(&buf + 1) + 40))
    {
      v17 = +[IDSTrafficMonitor sharedInstance];
      v18 = [v16 service];
      v19 = [v18 identifier];
      v20 = [v16 service];
      v21 = [v20 adHocServiceType];
      v22 = [v17 noteOutgoingServerMessageForService:v19 serviceType:v21 requestor:*(*(&buf + 1) + 40)];

      if (v22)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100657DE0;
        v26[3] = &unk_100BE33F8;
        v27 = v12;
        v28 = v16;
        v29 = v10;
        [v28 sendServerMessage:v25 command:v29 completionBlock:v26];
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
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No account found for ID: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (BOOL)_canSendMessageWithAccount:(id)a3 toDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v6;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Daemon Attempting To Send message from account %@ to destinations %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v37 = v6;
    v39 = v7;
    _IDSLogV();
  }

  if ([v6 accountType] != 2)
  {
    goto LABEL_25;
  }

  v9 = [v7 destinationURIs];
  v10 = [v9 count] > 1;

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

  v12 = [v6 service];
  v13 = [v12 shouldAllowProxyDelivery];

  if (v13)
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

  v15 = [v6 service];
  v16 = [v15 allowSendingMessagesToInactiveDevice];

  if (v16)
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

  v20 = [(IDSDaemon *)self pairingManager];
  v21 = [v20 pairedDevicePushToken];
  v22 = [v21 __imHexString];

  v23 = [(IDSDaemon *)self pairingManager];
  v24 = [v23 pairedDeviceUniqueID];

  v25 = [v7 destinationURIs];
  v26 = [v25 allObjects];
  v27 = [v26 __imFirstObject];

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Looking at local destination %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = v7;
    _IDSLogV();
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = v22;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "The paired device push token is %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = v22;
    _IDSLogV();
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = v24;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "The paired device UUID is %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = v24;
    _IDSLogV();
  }

  v31 = [v27 isEqualToIgnoringCase:{IDSDefaultPairedDevice, v38}];
  v32 = [v27 _stripFZIDPrefix];
  v33 = [v32 isEqualToIgnoringCase:v24];

  v34 = [v27 length];
  if (v34)
  {
    v34 = [v22 length];
    if (v34)
    {
      LODWORD(v34) = [v27 containsString:v22];
    }
  }

  if (((v31 | v33) & 1) != 0 || v34)
  {
    v35 = +[IDSQuickSwitchHelper sharedInstance];
    v36 = [v35 isQuickSwitchingToAnotherDevice];

    v18 = v36 ^ 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_26:
  return v18;
}

- (void)_fetchAccountEntitlements:(id *)a3 listenerID:(id *)a4 inContext:(id)a5
{
  v8 = [a5 localObject];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006588D0;
  v9[3] = &unk_100BE3418;
  v9[4] = a3;
  v9[5] = a4;
  [(IDSDaemon *)self validateListenerForLocalObject:v8 andPerformBlock:v9];
}

- (void)sendOpportunisticData:(id)a3 onService:(id)a4 usingAccountWithUniqueID:(id)a5 withIdentifier:(id)a6 options:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v19 localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:v20 andCheckEntitlement:kIDSMessagingEntitlement])
  {

LABEL_4:
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v17;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received data %@ to be cached and sent opportunistically on service %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = v17;
      v29 = v15;
      _IDSLogV();
    }

    v24 = [(IDSDaemon *)self opportunisticDeliveryController:v28];
    v25 = [[IDSOpportunisticOptions alloc] initWithDictionary:v18];
    [v24 addOpportunisticData:v14 serviceName:v15 accountUniqueID:v16 identifier:v17 options:v25 completion:0];

    goto LABEL_10;
  }

  v21 = [v19 localObject];
  v22 = [(IDSDaemon *)self validateListenerForLocalObject:v21 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v22)
  {
    goto LABEL_4;
  }

  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v19 localObject];
    *buf = 138412546;
    v31 = v27;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Tried to send opportunistic data without entitlement {localObject: %@, uniqueID: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v24 = [v19 localObject];
    _IDSLogV();
LABEL_10:
  }
}

- (void)cancelOpportunisticDataOnService:(id)a3 withIdentifier:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localObject];
  if ([(IDSDaemon *)self validateListenerForLocalObject:v11 andCheckEntitlement:kIDSMessagingEntitlement])
  {

LABEL_4:
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cancel opportunistic send {identifier: %@, serviceName: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v18 = v9;
      v19 = v8;
      _IDSLogV();
    }

    v15 = [(IDSDaemon *)self opportunisticDeliveryController:v18];
    [v15 removeOpportunisticDataForIdentifier:v9 serviceName:v8 completion:0];
    goto LABEL_10;
  }

  v12 = [v10 localObject];
  v13 = [(IDSDaemon *)self validateListenerForLocalObject:v12 andCheckEntitlement:kIDSTestToolEntitlement];

  if (v13)
  {
    goto LABEL_4;
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 localObject];
    *buf = 138412546;
    v21 = v17;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Tried to cancel opportunistic data without entitlement {localObject: %@, identifier: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = [v10 localObject];
    _IDSLogV();
LABEL_10:
  }
}

- (BOOL)dropMessageIfDropPointIsDetectedWithSendParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 dropMessageIndicatorCommand];

  if (v4)
  {
    v5 = [v3 dropMessageIndicatorCommand];
    v6 = [v5 integerValue];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%li Drop point detected.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (v6 == 100)
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

      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)shouldDropMessageIfOutOfFamilyPhoneNumber:(id)a3 forService:(id)a4 withAppleIDAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 iCloudBasedService] && objc_msgSend(v8, "isFamilyService"))
  {
    v10 = [v9 prefixedURIStringsFromRegistration];
    v11 = [v10 containsObject:v7] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (int64_t)_signatureTypeForSigningAlgorithm:(int64_t)a3
{
  v3 = -1000;
  if (a3 == 2)
  {
    v3 = 1;
  }

  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 onService:(id)a5 options:(id)a6 requestUUID:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100659368;
  block[3] = &unk_100BE1170;
  v26 = v18;
  v27 = v16;
  v28 = v17;
  v29 = v14;
  v31 = self;
  v32 = a4;
  v30 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v17;
  v23 = v16;
  v24 = v18;
  dispatch_async(v19, block);
}

- (void)verifySignedData:(id)a3 matchesData:(id)a4 forAlgorithm:(int64_t)a5 onService:(id)a6 tokenUri:(id)a7 options:(id)a8 requestUUID:(id)a9 messageContext:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100659CA0;
  block[3] = &unk_100BE3440;
  v32 = v22;
  v33 = v20;
  v34 = v21;
  v35 = v16;
  v39 = self;
  v40 = a5;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v21;
  v29 = v20;
  v30 = v22;
  dispatch_async(v23, block);
}

- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 onService:(id)a5 options:(id)a6 requestUUID:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10065AD3C;
  block[3] = &unk_100BE1170;
  v26 = v18;
  v27 = v16;
  v28 = v14;
  v29 = v17;
  v31 = self;
  v32 = a4;
  v30 = v15;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  v23 = v16;
  v24 = v18;
  dispatch_async(v19, block);
}

- (void)sendMessageWithSendParameters:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10065BB70;
  block[3] = &unk_100BD6E18;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v11);
}

- (void)sendCertifiedDeliveryReceipt:(id)a3 serviceName:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v84 = a4;
  v8 = a5;
  v83 = v7;
  if (v7 && v84)
  {
    v80 = v8;
    v9 = +[IDSServerStorageStateMachine sharedInstance];
    [v9 extendClientAckTimeoutTimerForTopic:v84];

    v10 = [[IDSCertifiedDeliveryContext alloc] initWithDictionaryRepresentation:v7];
    if ([v10 generateDeliveryReceipt])
    {
      v11 = +[IDSDaemon sharedInstance];
      v12 = [v11 queryUpdateNotifier];
      v13 = [IDSURI alloc];
      v14 = [v10 localURI];
      v15 = [v13 initWithPrefixedURI:v14];
      v16 = +[IDSDServiceController sharedInstance];
      v17 = [v10 service];
      v18 = [v16 serviceWithPushTopic:v17];
      v19 = [v12 devicesHashForURI:v15 andService:v18];

      if (v19)
      {
        v20 = [[IDSCertifiedDeliveryContext alloc] initWithCertifiedDeliveryContext:v10 queryHash:v19];

        v21 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v19 debugDescription];
          v23 = [v20 localURI];
          v24 = [v20 service];
          *buf = 134218754;
          v90 = v20;
          v91 = 2112;
          v92 = v22;
          v93 = 2112;
          v94 = v23;
          v95 = 2112;
          v96 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Added query update hash to certified delivery receipt {certifiedDeliveryReceipt: %p, hash: %@, fromURI: %@, service: %@}", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v25 = [v19 debugDescription];
          v26 = [v20 localURI];
          [v20 service];
          v72 = v71 = v26;
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

    v30 = [v29 replayKey];

    if (v30)
    {
      replayKeyToMessageUUIDMap = self->_replayKeyToMessageUUIDMap;
      v32 = [v29 replayKey];
      [(NSMutableDictionary *)replayKeyToMessageUUIDMap removeObjectForKey:v32];
    }

    v33 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v29];
    if (_os_feature_enabled_impl() && [v29 originalEncryptionType] == 5 && objc_msgSend(v33, "certifiedDeliveryVersion") == 2)
    {
      v34 = [v29 remoteURI];
      v35 = [v29 service];
      v78 = [IDSURI URIWithPrefixedURI:v34 withServiceLoggingHint:v35];

      v36 = [v29 localURI];
      v37 = [v29 service];
      v77 = [IDSURI URIWithPrefixedURI:v36 withServiceLoggingHint:v37];

      v79 = +[NSMutableDictionary dictionary];
      if (_os_feature_enabled_impl())
      {
        v38 = [v29 originalGUID];
        v39 = [(IDSDaemon *)self _populateDictionaryWithSenderKeyCheck:v79 remoteURI:v78 localURI:v77 originalGUID:v38];

        v79 = v39;
      }

      v40 = [v33 queryHash];
      v41 = [v40 copy];

      if (!v41)
      {
        v41 = [[NSMutableData alloc] initWithLength:32];
      }

      v73 = v41;
      [v79 setObject:v41 forKey:IDSQueryHashKey];
      v42 = [v79 copy];
      v76 = JWEncodeDictionary();

      v43 = +[IDSPeerIDManager sharedInstance];
      v44 = [v29 senderToken];
      v45 = [v29 service];
      v46 = [IDSPushToken pushTokenWithData:v44 withServiceLoggingHint:v45];
      v47 = [v29 service];
      v75 = [v43 endpointForPushToken:v46 URI:v78 service:v47 fromURI:v77];

      v86 = 2;
      v74 = [IDSCryptionContext alloc];
      v82 = [v29 originalGUID];
      v48 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
      v49 = [v48 pushToken];
      v50 = [IDSPushToken pushTokenWithData:v49];
      v51 = [v29 senderToken];
      v52 = [v29 service];
      v53 = [IDSPushToken pushTokenWithData:v51 withServiceLoggingHint:v52];
      v54 = [v29 service];
      v55 = [(IDSCryptionContext *)v74 initWithGuid:v82 sendingURI:v77 sendingPushToken:v50 receivingURI:v78 receivingPushToken:v53 service:v54];

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
          v60 = [v58 localizedDescription];
          *buf = 138412290;
          v90 = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Failed to encrypt certified delivery receipt { encryptionError: %@ } ", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v68 = [v58 localizedDescription];
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
        v63 = [v79 allKeys];
        *buf = 138412546;
        v90 = v58;
        v91 = 2112;
        v92 = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Will send encrypted receipt { encryptionError: %@, dictToSerialize.keys: %@ }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v70 = [v79 allKeys];
        _IDSLogV();
      }
    }

    v64 = [[IDSSendReason alloc] initWithReason:5 subreason:1 pathID:1];
    v65 = [IDSSendReasonContainer createWithReason:v64];
    [v33 setSendReasonContainer:v65];

    v66 = +[IDSDeliveryController sharedInstance];
    [v66 sendIDSMessage:v33 service:0 topic:v84 completionBlock:0];

    v8 = v80;
  }
}

- (void)sendBatchMessageProcessedContext:(id)a3 serviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [v6 batchMessageContext];
    v9 = [v8 serverStorageFetchContext];
    if (v9)
    {
      v10 = [(IDSDaemon *)self serverStorageStateMachine];
      v11 = [v9 serverStorageSSM];
      [v10 receivedBatchProcessedForTopic:v7 ssm:v11];
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

- (void)noteMetricOfType:(int64_t)a3 context:(id)a4 serviceName:(id)a5 messageContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 localObject];
    *buf = 134218754;
    v30 = a3;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2048;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "noteMetricOfType: %ld context: %@ serviceName: %@ localObject %p", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v12 localObject];
    v28 = v27 = v11;
    v25 = a3;
    v26 = v10;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self cloudTelemetryMetricReporter:v25];
  if (a3 == 1)
  {
    v23 = [v10 timestampDictionary];
    v24 = [v10 identifier];
    [v15 reportIncomingSendMetricWithDictionary:v23 samplingID:v24];
  }

  else if (!a3)
  {
    v16 = [v10 timestamp];
    [v16 doubleValue];
    v18 = v17;

    v19 = [(IDSDaemon *)self serverStorageStateMachine];
    v20 = [v19 storageRequestReceivedTimeForTopic:v11];
    [v20 timeIntervalSince1970];
    v22 = v21;

    [v15 reportUpToDateMetricWithStorageRequestReceivedTime:v22 storageMessagesProcessedTime:v18];
  }
}

- (void)cancelMessageWithQueueOneIdentifier:(id)a3 fromID:(id)a4 service:(id)a5 accountUniqueID:(id)a6 messageIdentifier:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 localObject];
    *buf = 138413570;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    v45 = 2112;
    v46 = v18;
    v47 = 2112;
    v48 = v17;
    v49 = 2048;
    v50 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cancelMessageWithQueueOneIdentifier: %@  fromID: %@  service: %@ messageIdentifier: %@ accountUniqueID: %@ localObject %p", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v19 localObject];
    v31 = v30 = v17;
    v28 = v16;
    v29 = v18;
    v26 = v14;
    v27 = v15;
    _IDSLogV();
  }

  if ([v14 length])
  {
    v22 = [v19 localObject];
    v23 = [(IDSDaemon *)self validateListenerForLocalObject:v22 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v16];

    if (v23)
    {
      v24 = [[IDSCancelMessage alloc] initWithQueueOneIdentifier:v14 fromID:v15];
      v25 = +[IDSDeliveryController sharedInstance];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10065F2F0;
      v32[3] = &unk_100BE34B8;
      v33 = v14;
      v34 = v15;
      v35 = v16;
      v36 = v18;
      v37 = v19;
      v38 = v17;
      [v25 sendIDSMessage:v24 service:0 topic:v35 completionBlock:v32];
    }
  }
}

- (void)_sendErrorMessage:(id)a3 originalCommand:(id)a4 fromURI:(id)a5 toDestinations:(id)a6 usingAccountWithUniqueID:(id)a7 useDictAsTopLevel:(BOOL)a8 dataToEncrypt:(id)a9 wantsResponse:(BOOL)a10 timeout:(double)a11 command:(id)a12 priority:(int64_t)a13 sendReasonPathID:(int64_t)a14 completionBlock:(id)a15
{
  v61 = a8;
  v21 = a3;
  v22 = a4;
  v64 = a5;
  v23 = a6;
  v24 = a7;
  v62 = a9;
  v25 = a12;
  v63 = a15;
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

  v27 = [(IDSDaemon *)self accountController];
  v65 = [v27 accountWithUniqueID:v24];

  if (v65)
  {
    if ([v22 integerValue] == 101)
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

      v31 = [v65 primaryRegistration];
      v32 = [v31 dsHandle];
      v59 = [v32 _stripFZIDPrefix];

      v33 = [v65 service];
      [v33 shouldRegisterUsingDSHandle];

      v34 = [v65 service];
      v35 = [v34 identifier];
      _IDSPrefersPhoneNumbersForServiceIdentifier();

      v36 = [v64 unprefixedURI];
      v37 = [v65 unprefixedURIStringsFromRegistration];
      v38 = [v65 pseudonyms];
      v60 = _IDSCopyCallerIDWithPseudonyms();

      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [v65 unprefixedURIStringsFromRegistration];
        *buf = 138412546;
        v70 = v60;
        v71 = 2112;
        v72 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "sendErrorMessage - using fromID %@ given aliases %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v65 unprefixedURIStringsFromRegistration];
        v54 = v53 = v60;
        _IDSLogV();
      }

      v41 = [v23 destinationURIs];
      v42 = [v41 allObjects];
      v58 = sub_10043996C(v42, v65);

      v43 = [NSSet setWithArray:v58];
      v44 = [IDSDestination destinationWithStrings:v43];

      v45 = +[NSString stringGUID];
      v46 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v70 = v65;
        v71 = 2112;
        v72 = v21;
        v73 = 2112;
        v74 = v44;
        v75 = 2112;
        v76 = v45;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "account %@ sendErrorMessage: %@ to: %@ - guid %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v55 = v21;
        _IDSLogV();
      }

      v47 = objc_alloc_init(IDSSendParameters);
      v48 = [[IDSSendReason alloc] initWithReason:6 subreason:5 pathID:a14];
      v49 = [IDSSendReasonContainer createWithReason:v48];
      [v47 setSendReasonContainer:v49];

      v50 = [NSDate dateWithTimeIntervalSinceNow:a11];
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10065FF34;
      v66[3] = &unk_100BE34E0;
      v68 = v63;
      v51 = v45;
      v67 = v51;
      LOWORD(v57) = 0;
      LOWORD(v56) = 0;
      BYTE1(v55) = a10;
      LOBYTE(v55) = 0;
      [v65 sendMessage:v21 params:v47 bulkedPayload:0 fromID:v60 toDestinations:v44 useDictAsTopLevel:v61 dataToEncrypt:v62 encryptPayload:v55 wantsResponse:v50 expirationDate:v25 command:v56 wantsDeliveryStatus:0 wantsCertifiedDelivery:0 deliveryStatusContext:a13 messageUUID:v57 priority:0 localDelivery:v66 disallowRefresh:? willSendBlock:? completionBlock:?];

      v23 = v44;
    }
  }

  else
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v24;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "(Messaging) No account found for ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    IMLogBacktrace();
  }
}

- (void)_sendCertifiedDeliveryReceiptIfNeededForNiceMessage:(id)a3 service:(id)a4 failureReason:(id)a5 failureReasonMessage:(id)a6 generateDeliveryReceipt:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v39 = a4;
  v35 = a5;
  v36 = a6;
  v12 = [v11 certifiedDeliveryVersion];
  v13 = [v12 integerValue];

  if (v13 >= 1)
  {
    v38 = [v11 certifiedDeliveryRTS];
    v37 = [v11 pushUUID];
    if (!v38)
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = v37;
        v42 = 2048;
        v43 = v13;
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
    v16 = [v11 encryptionTypeStr];
    v17 = IDSEncryptionTypeFromEncryptionTypeString();
    v18 = [v11 senderPushToken];
    v19 = [v18 rawToken];
    v20 = [v15 initWithGUID:v37 service:v39 encryptionType:v17 certifiedDeliveryVersion:v13 certifiedDeliveryRTS:v38 senderToken:v19 failureReason:v35 failureReasonMessage:v36];

    if (v7)
    {
      v33 = [IDSCertifiedDeliveryContext alloc];
      v34 = [v11 encryptionTypeStr];
      v21 = IDSEncryptionTypeFromEncryptionTypeString();
      v22 = [v11 senderPushToken];
      v23 = [v22 rawToken];
      v24 = [v11 toURI];
      v25 = [v24 prefixedURI];
      v26 = [v11 fromURI];
      v27 = [v26 prefixedURI];
      v28 = [v33 initWithGUID:v37 service:v39 encryptionType:v21 certifiedDeliveryVersion:v13 certifiedDeliveryRTS:v38 senderToken:v23 localURI:v25 remoteURI:v27];

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
    [v32 sendIDSMessage:v29 service:0 topic:v39 completionBlock:0];
  }
}

- (void)_sendCertifiedDeliveryReceiptForSenderKeyDistributionMessage:(id)a3 service:(id)a4 keyIDs:(id)a5
{
  v7 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v7;
  v8 = [v7 certifiedDeliveryVersion];
  v9 = [v8 integerValue];

  if (v9)
  {
    v10 = [IDSCertifiedDeliveryContext alloc];
    v29 = [v7 pushUUID];
    v11 = [v7 encryptionTypeStr];
    v28 = IDSEncryptionTypeFromEncryptionTypeString();
    v12 = [v7 certifiedDeliveryRTS];
    v13 = [v7 senderPushToken];
    v14 = [v13 rawToken];
    v15 = [v7 toURI];
    v16 = [v15 prefixedURI];
    v17 = [v32 fromURI];
    v18 = [v17 prefixedURI];
    v19 = [v10 initWithGUID:v29 service:v30 encryptionType:v28 certifiedDeliveryVersion:v9 certifiedDeliveryRTS:v12 senderToken:v14 localURI:v16 remoteURI:v18];

    if ([v31 count])
    {
      v37 = IDSSenderKeyIDCheckKey;
      v38 = v31;
      v20 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v19 setDeliveryStatusContext:v20];

      [v19 setGenerateDeliveryReceipt:1];
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v19 generateDeliveryReceipt];
      v23 = @"NO";
      if (v22)
      {
        v23 = @"YES";
      }

      *buf = 138412546;
      v34 = v31;
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
    [v27 sendIDSMessage:v24 service:0 topic:v30 completionBlock:0];
  }
}

- (void)_processCertifiedDeliveryReceiptForSenderKeyDistribution:(id)a3 service:(id)a4
{
  v11 = a3;
  v5 = objc_opt_class();
  v6 = [v11 rawMessage];
  v7 = sub_10001B8C4(v5, v6, IDSDeliveryStatusContextKey);

  if (v7)
  {
    v8 = [v7 _arrayForKey:IDSSenderKeyIDCheckKey];
    v9 = [v11 senderPushToken];
    v10 = [(IDSDaemon *)self senderKeyDistributionManager];
    [v10 updateDeliveredStateWithKeyIDStrings:v8 pushToken:v9];
  }
}

- (void)setPreferInfraWiFi:(BOOL)a3 service:(id)a4 messageContext:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = [a5 localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:v9 andCheckEntitlement:kIDSPreferInfraWiFiEntitlement forAccessToServiceWithIdentifier:v8];

  if (self)
  {
    v10 = +[IDSUTunDeliveryController sharedInstance];
    v12 = v8;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 defaultPeerSetPreferInfraWiFi:v6 services:v11];
  }
}

- (void)setLinkPreferences:(id)a3 service:(id)a4 messageContext:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 localObject];
  LODWORD(self) = [(IDSDaemon *)self validateListenerForLocalObject:v9 andCheckEntitlement:kIDSLinkPreferencesEntitlement forAccessToServiceWithIdentifier:v8];

  if (self)
  {
    v10 = +[IDSLinkPreferencesManager sharedInstance];
    [v10 updateService:v8 withPreferences:v12];

    v11 = +[IDSUTunDeliveryController sharedInstance];
    [v11 defaultPeerSetLinkPreferences:v8];
  }
}

- (void)startOTRTest:(id)a3 priority:(int64_t)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "start OTR test for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = v7;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = v7;
        _IDSLogV();
      }
    }
  }

  v10 = +[IDSUTunDeliveryController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100660CF4;
  v13[3] = &unk_100BE3508;
  v14 = v8;
  v11 = v8;
  [v10 findDefaultPeerToForceOTRNegotiation:v7 priority:a4 completionBlock:v13];
}

- (void)testCloudQRConnection:(id)a3 messageContext:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)failedDecryptingMessage:(id)a3 reason:(int64_t)a4 forGroupID:(id)a5 onService:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v37 = a5;
  v46 = a6;
  v38 = a7;
  v13 = [IDSIncomingNiceMessage alloc];
  v14 = objc_opt_class();
  v40 = v12;
  v15 = sub_10001B8C4(v14, v12, IDSIncomingMessagePushPayloadKey);
  v16 = [v13 initWithMessageDictionary:v15 topic:v46];

  v41 = [v16 fromURI];
  v45 = [v16 toURI];
  v42 = [v16 senderPushToken];
  value = [v16 pushUUID];
  v39 = [v16 command];
  v17 = [(IDSDaemon *)self serviceController];
  v44 = [v17 serviceWithPushTopic:v46];

  v18 = +[IDSDAccountController sharedInstance];
  v19 = [v45 prefixedURI];
  v20 = [v18 accountOnService:v44 withAliasURI:v19];

  if (v20)
  {
    if ([v20 shouldRegisterUsingDSHandle] & 1) != 0 || (objc_msgSend(v45, "prefixedURI"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "hasAliasURI:", v21), v21, (v22))
    {
      v36 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:v40 topic:v46];
      v23 = [NSNumber numberWithInteger:a4];
      [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v36 service:v46 failureReason:v23 failureReasonMessage:0 generateDeliveryReceipt:0];

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

      v26 = [NSNumber numberWithInteger:a4];
      if (v26)
      {
        CFDictionarySetValue(v24, IDSFailureReasonKey, v26);
      }

      v27 = [v42 rawToken];
      v28 = [v41 prefixedURI];
      v29 = _IDSCopyIDForTokenWithURI();

      v30 = [NSSet setWithObject:v29];
      v31 = [IDSDestination destinationWithStrings:v30];
      v32 = [v20 uniqueID];
      v33 = [NSNumber numberWithInteger:120];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100661670;
      v47[3] = &unk_100BD9D10;
      v48 = v42;
      LOBYTE(v35) = 1;
      [(IDSDaemon *)self _sendErrorMessage:v24 originalCommand:v39 fromURI:v45 toDestinations:v31 usingAccountWithUniqueID:v32 useDictAsTopLevel:1 dataToEncrypt:-1.0 wantsResponse:0 timeout:v35 command:v33 priority:300 sendReasonPathID:12 completionBlock:v47];
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = v20;
        v51 = 2112;
        v52 = v45;
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

- (id)_populateDictionaryWithSenderKeyCheck:(id)a3 remoteURI:(id)a4 localURI:(id)a5 originalGUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v49 = a6;
  v13 = +[IDSPeerIDManager sharedInstance];
  v65 = v11;
  v14 = [NSArray arrayWithObjects:&v65 count:1];
  v63 = IDSRegistrationPropertySupportsSenderKey;
  v64 = &__kCFBooleanTrue;
  v15 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v16 = [v13 endpointsForURIs:v14 service:IDSServiceNameiMessage fromURI:v12 withCapabilities:v15];

  v17 = [v16 objectForKey:v11];
  if ([v17 count])
  {
    v18 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager encryptingKeyIDsFor:v11 localURI:v12];
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

    v22 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager decryptingKeyIDsFor:v11 localURI:v12];
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

    v26 = [(IDSDaemon *)self persistenceManager];
    v27 = [v26 senderKeyMessageSupportedFor:v17];

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      *buf = 138413570;
      v52 = v49;
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
      v60 = v11;
      v61 = 2112;
      v62 = v12;
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

      v47 = v11;
      v48 = v12;
      v45 = v21;
      v46 = v25;
      v42 = v49;
      v44 = v30;
      _IDSLogV();
    }

    if (v27)
    {
      if ([v21 count])
      {
        v31 = JWEncodeArray();
        [v10 setObject:v31 forKeyedSubscript:IDSDeliveryEncryptingSenderKeyIDs];
      }

      if (![v25 count])
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v11;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "We have no decryptingKeyIDs from remoteURI: %@ - sending empty", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v43 = v11;
          _IDSLogV();
        }
      }

      v50 = 0;
      v33 = [NSPropertyListSerialization dataWithPropertyList:v25 format:200 options:0 error:&v50, v43];
      v34 = v50;
      v35 = v34;
      if (v33 || !v34)
      {
        [v10 setObject:v33 forKeyedSubscript:IDSDeliveryDecryptingSenderKeyIDs];
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
      v37 = [v21 firstObject];

      if (v37)
      {
        v38 = [NSData alloc];
        v39 = [v21 firstObject];
        v40 = [v38 initWithBase64EncodedString:v39 options:0];

        [v10 setObject:v40 forKeyedSubscript:@"sK-E"];
      }

      v35 = [v25 __imArrayByApplyingBlock:{&stru_100BE3528, v42, v44, v45, v46, v47, v48}];
      v33 = JWEncodeArray();
      [v10 setObject:v33 forKeyedSubscript:@"sK-D"];
    }
  }

  return v10;
}

- (void)_handleDeliveryReceiptForSenderKeyCheck:(id)a3 remoteURI:(id)a4 remotePushToken:(id)a5 localURI:(id)a6 originalGUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v64 = a5;
  v14 = a6;
  v63 = a7;
  Value = 0;
  if (v12 && IDSDeliveryEncryptingSenderKeyIDs)
  {
    Value = CFDictionaryGetValue(v12, IDSDeliveryEncryptingSenderKeyIDs);
  }

  v61 = Value;
  v16 = JWDecodeArray();
  if (IDSDeliveryDecryptingSenderKeyIDs)
  {
    v17 = v12 != 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = CFDictionaryGetValue(v12, IDSDeliveryDecryptingSenderKeyIDs);
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
    v68 = v63;
    v69 = 2112;
    v70 = v14;
    v71 = 2112;
    v72 = v13;
    v73 = 2112;
    v74 = v64;
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
    v50 = v13;
    v52 = v64;
    v44 = v63;
    v47 = v14;
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
      v28 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager remoteMissingDecryptingKeyIDs:v19 remoteURI:v13 localURI:v14];
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

      [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager updateDeliveredStateWithKeyIDStrings:v19 pushToken:v64, v45, v48];
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = v13;
        v69 = 2112;
        v70 = v64;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Received empty decryptingKeyIDs from remoteURI: %@ remotePushToken: %@ - we should reset", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v45 = v13;
        v48 = v64;
        _IDSLogV();
      }

      [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager resetKeyStateWithKeyIDs:0 senderURI:v14 receiverURI:v13, v45, v48];
    }
  }

  if ([v20 count] || objc_msgSend(v65, "count"))
  {
    [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager triggerKeyRecoveryToURI:v13 fromURI:v14 keysToSend:v65 keysToRequest:v20];
  }

  else
  {
    if (v12)
    {
      v60 = CFDictionaryGetValue(v12, @"sK-E");
      v35 = CFDictionaryGetValue(v12, @"sK-D");
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
        v72 = v14;
        v73 = 2112;
        v74 = v13;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "(Legacy) Do we have the keyID needed to decrypt from them? %@ %@ {localURI: %@, remoteURI:%@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v51 = v14;
        v53 = v13;
        v46 = v38;
        v49 = v58;
        _IDSLogV();
      }
    }

    if ([v59 count])
    {
      v40 = [v59 __imArrayByApplyingBlock:&stru_100BE3548];
      v41 = [(IDSSenderKeyDistributionManager *)self->_senderKeyDistributionManager remoteMissingDecryptingKeyIDs:v40 remoteURI:v13 localURI:v14];
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
        v72 = v14;
        v73 = 2112;
        v74 = v13;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(Legacy) Do they have the keyID needed to decrypt from us? %@ %@ {localURI: %@, remoteURI:%@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)deliveryControllerHasSpaceforUrgentMessages:(id)a3 dataProtectionClass:(unsigned int)a4 ofTypes:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
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
  [(IDSDaemon *)self _handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:v14 withMessageTypes:v9];
}

- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 ofTypes:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a6;
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = @"Sync";
    if (a4 == 200)
    {
      v13 = @"Default";
    }

    if (a4 == 300)
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
    if (a4 == 200)
    {
      v14 = @"Default";
    }

    if (a4 == 300)
    {
      v14 = @"URGENT";
    }

    v19 = v14;
    _IDSLogV();
  }

  v15 = [NSNumber numberWithInteger:a4, v19];
  v16 = [NSArray arrayWithObject:v15];
  v17 = [NSNumber numberWithUnsignedInt:v7];
  v18 = [NSArray arrayWithObject:v17];
  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:v16 dataProtectionClasses:v18 messageTypes:v11];
}

- (void)deliveryControllerHasSpaceforNonUrgentMessages:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"Sync";
    if (a4 == 200)
    {
      v10 = @"Default";
    }

    if (a4 == 300)
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
    if (a4 == 200)
    {
      v11 = @"Default";
    }

    if (a4 == 300)
    {
      v11 = @"URGENT";
    }

    v16 = v11;
    _IDSLogV();
  }

  v12 = [NSNumber numberWithInteger:a4, v16];
  v13 = [NSArray arrayWithObject:v12];
  v14 = [NSNumber numberWithUnsignedInt:v5];
  v15 = [NSArray arrayWithObject:v14];
  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:v13 dataProtectionClasses:v15];
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priorities:(id)a4 dataProtectionClasses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resource availability changed, identifiers: %@ priorities %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = v8;
      v20 = v9;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v19 = v8;
        v20 = v9;
        _IDSLogV();
      }
    }
  }

  if (![v9 count])
  {
    v11 = [NSArray arrayWithObjects:&off_100C3CEF8, &off_100C3CEE0, 0];

    v9 = v11;
  }

  if (![v23 count])
  {
    v12 = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];

    v23 = v12;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v9;
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
        v15 = v23;
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

              -[IDSDaemon _resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:](self, "_resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:", v8, [v14 integerValue], objc_msgSend(*(*(&v25 + 1) + 8 * v18), "intValue"));
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

- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priorities:(id)a4 dataProtectionClasses:(id)a5 messageTypes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v27 = a5;
  v12 = a6;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resource availability changed, identifiers: %@ priorities %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v23 = v10;
      v24 = v11;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v23 = v10;
        v24 = v11;
        _IDSLogV();
      }
    }
  }

  if (![v11 count])
  {
    v14 = [NSArray arrayWithObjects:&off_100C3CEF8, &off_100C3CEE0, 0];

    v11 = v14;
  }

  if (![v27 count])
  {
    v15 = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];

    v27 = v15;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v11;
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
        v19 = v27;
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

              -[IDSDaemon _resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:messageTypes:](self, "_resourceAvailabilityChangedForIdentifiers:priority:dataProtectionClass:messageTypes:", v10, [v18 integerValue], objc_msgSend(*(*(&v30 + 1) + 8 * v22), "intValue"), v12);
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

- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5
{
  v8 = a3;
  im_assert_primary_base_queue();
  v9 = objc_alloc_init(NSMutableSet);
  v10 = [v8 count];
  v42 = v8;
  if ([v8 count])
  {
    v36 = v10;
    v37 = a5;
    v39 = a4;
    context = objc_autoreleasePoolPush();
    v38 = self;
    v11 = [(IDSDaemon *)self serviceController];
    v12 = [v11 allServices];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v12;
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
                v23 = [v16 duetIdentifiers];
                LODWORD(v22) = [v23 containsObject:v22];

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

                        v31 = [*(*(&v49 + 1) + 8 * k) uniqueID];
                        [v9 addObject:v31];
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
    self = v38;
    a4 = v39;
    a5 = v37;
    v10 = v36;
  }

  v32 = v10 != 0;
  v33 = +[IDSDaemonPriorityQueueController sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1006638BC;
  v43[3] = &unk_100BDD0C0;
  v45 = self;
  v46 = a4;
  v47 = a5;
  v48 = v32;
  v44 = v9;
  v34 = v9;
  [v33 performBlockWithPriority:v43 priority:a4];
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 messageTypes:(id)a6
{
  v10 = a3;
  v11 = a6;
  im_assert_primary_base_queue();
  v12 = objc_alloc_init(NSMutableSet);
  v13 = [v10 count];
  v44 = v10;
  if ([v10 count])
  {
    v38 = v13;
    v39 = v11;
    v40 = a5;
    context = objc_autoreleasePoolPush();
    v41 = self;
    v14 = [(IDSDaemon *)self serviceController];
    v15 = [v14 allServices];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v15;
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
                v24 = [v17 duetIdentifiers];
                LODWORD(v23) = [v24 containsObject:v23];

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

                        v32 = [*(*(&v53 + 1) + 8 * k) uniqueID];
                        [v12 addObject:v32];
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
    self = v41;
    a5 = v40;
    v13 = v38;
    v11 = v39;
  }

  v33 = v13 != 0;
  v34 = +[IDSDaemonPriorityQueueController sharedInstance];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100664000;
  v46[3] = &unk_100BE35C0;
  v51 = a5;
  v52 = v33;
  v47 = v11;
  v48 = v12;
  v49 = self;
  v50 = a4;
  v35 = v12;
  v36 = v11;
  [v34 performBlockWithPriority:v46 priority:a4];
}

- (void)_processLocalMessagesWithAccountUUIDs:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5
{
  v48 = a3;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v48 count];
    v9 = @"Sync";
    if (a4 == 200)
    {
      v9 = @"Default";
    }

    if (a4 == 300)
    {
      v9 = @"URGENT";
    }

    v10 = @"Class A";
    if (a5 != 1)
    {
      v10 = @"Class D";
    }

    *buf = 67109634;
    *v64 = v8;
    *&v64[4] = 2112;
    *&v64[6] = v9;
    if (a5)
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
    v12 = [v48 count];
    v13 = @"Sync";
    if (a4 == 200)
    {
      v13 = @"Default";
    }

    if (a4 == 300)
    {
      v13 = @"URGENT";
    }

    v14 = @"Class D";
    if (a5 == 1)
    {
      v14 = @"Class A";
    }

    if (!a5)
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
    if (a4 == 200)
    {
      v16 = @"Default";
    }

    if (a4 == 300)
    {
      v16 = @"URGENT";
    }

    v17 = @"Class A";
    if (a5 != 1)
    {
      v17 = @"Class D";
    }

    *buf = 138412802;
    *v64 = v48;
    *&v64[10] = v16;
    *&v64[8] = 2112;
    if (!a5)
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
    if (a4 == 200)
    {
      v18 = @"Default";
    }

    if (a4 == 300)
    {
      v18 = @"URGENT";
    }

    v19 = @"Class D";
    if (a5 == 1)
    {
      v19 = @"Class A";
    }

    if (!a5)
    {
      v19 = @"Class C";
    }

    v43 = v18;
    v44 = v19;
    v42 = v48;
    _IDSLogV();
  }

  if ([v48 count])
  {
    v47 = [v48 objectAtIndex:0];
    [v48 removeObjectAtIndex:0];
    v20 = +[IDSDAccountController sharedInstance];
    v21 = [v20 accountWithUniqueID:v47];

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100664B88;
    v59[3] = &unk_100BE3570;
    v59[4] = self;
    v60 = v48;
    v61 = a4;
    v62 = a5;
    block = objc_retainBlock(v59);
    if (!v21)
    {
      v22 = im_primary_queue();
      dispatch_async(v22, block);
    }

    v23 = [v21 service];
    if ([v23 adHocServiceType] == 2)
    {
    }

    else
    {
      v25 = [v21 service];
      v26 = [v25 adHocServiceType] == 5;

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
    [v27 setPriority:a4];
    v28 = [v21 superAccount];
    v29 = v28;
    if (!v28 || (v30 = -[NSObject newSendMessageContext](v28, "newSendMessageContext"), [v21 service], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "pushTopic"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "setSubService:", v32), v32, v31, !v30))
    {
      v30 = [v21 newSendMessageContext];
    }

    v33 = [v30 subService];
    if ([v33 length])
    {
      [v30 subService];
    }

    else
    {
      [v30 serviceIdentifier];
    }
    v34 = ;

    v35 = [v30 serviceDuetIdentifiers];
    v36 = +[IDSDaemonPriorityQueueController sharedInstance];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100664B9C;
    v49[3] = &unk_100BE3638;
    v49[4] = self;
    v50 = v34;
    v51 = v35;
    v52 = v27;
    v57 = a4;
    v53 = v21;
    v54 = v30;
    v58 = a5;
    v56 = block;
    v55 = v47;
    v37 = v30;
    v38 = v27;
    v39 = v35;
    v40 = v34;
    [v36 performBlockWithPriority:v49 priority:a4];

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

- (void)_processLocalMessagesWithAccountUUIDs:(id)a3 priority:(int64_t)a4 dataProtectionClass:(unsigned int)a5 messageTypes:(id)a6
{
  v51 = a3;
  v50 = a6;
  im_assert_primary_base_queue();
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v51 count];
    v12 = @"Sync";
    if (a4 == 200)
    {
      v12 = @"Default";
    }

    if (a4 == 300)
    {
      v12 = @"URGENT";
    }

    v13 = @"Class A";
    if (a5 != 1)
    {
      v13 = @"Class D";
    }

    *buf = 67109634;
    *v69 = v11;
    *&v69[4] = 2112;
    *&v69[6] = v12;
    if (a5)
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
    v15 = [v51 count];
    v16 = @"Sync";
    if (a4 == 200)
    {
      v16 = @"Default";
    }

    if (a4 == 300)
    {
      v16 = @"URGENT";
    }

    v17 = @"Class D";
    if (a5 == 1)
    {
      v17 = @"Class A";
    }

    if (!a5)
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
    if (a4 == 200)
    {
      v19 = @"Default";
    }

    if (a4 == 300)
    {
      v19 = @"URGENT";
    }

    v20 = @"Class A";
    if (a5 != 1)
    {
      v20 = @"Class D";
    }

    *buf = 138412802;
    *v69 = v51;
    *&v69[10] = v19;
    *&v69[8] = 2112;
    if (!a5)
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
    if (a4 == 200)
    {
      v21 = @"Default";
    }

    if (a4 == 300)
    {
      v21 = @"URGENT";
    }

    v22 = @"Class D";
    if (a5 == 1)
    {
      v22 = @"Class A";
    }

    if (!a5)
    {
      v22 = @"Class C";
    }

    v45 = v21;
    v46 = v22;
    v44 = v51;
    _IDSLogV();
  }

  if ([v51 count])
  {
    v49 = [v51 objectAtIndex:0];
    [v51 removeObjectAtIndex:0];
    v23 = +[IDSDAccountController sharedInstance];
    v24 = [v23 accountWithUniqueID:v49];

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100665830;
    v63[3] = &unk_100BE3598;
    v63[4] = self;
    v64 = v51;
    v66 = a4;
    v67 = a5;
    v25 = v50;
    v65 = v25;
    block = objc_retainBlock(v63);
    if (!v24)
    {
      v26 = im_primary_queue();
      dispatch_async(v26, block);
    }

    v27 = [v24 service];
    if ([v27 adHocServiceType] == 2)
    {
    }

    else
    {
      v29 = [v24 service];
      v30 = [v29 adHocServiceType] == 5;

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

        v48 = im_primary_queue();
        dispatch_async(v48, block);
        goto LABEL_68;
      }
    }

    v31 = objc_alloc_init(IDSSendParameters);
    [v31 setPriority:a4];
    v48 = [v24 superAccount];
    if (!v48 || (v32 = -[NSObject newSendMessageContext](v48, "newSendMessageContext"), [v24 service], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "pushTopic"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "setSubService:", v34), v34, v33, !v32))
    {
      v32 = [v24 newSendMessageContext];
    }

    v35 = [v32 subService];
    if ([v35 length])
    {
      [v32 subService];
    }

    else
    {
      [v32 serviceIdentifier];
    }
    v36 = ;

    v37 = [v32 serviceDuetIdentifiers];
    v38 = +[IDSDaemonPriorityQueueController sharedInstance];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100665844;
    v52[3] = &unk_100BE36B0;
    v52[4] = self;
    v53 = v36;
    v54 = v37;
    v55 = v31;
    v61 = a4;
    v56 = v24;
    v57 = v32;
    v58 = v25;
    v62 = a5;
    v60 = block;
    v59 = v49;
    v39 = v32;
    v40 = v31;
    v41 = v37;
    v42 = v36;
    [v38 performBlockWithPriority:v52 priority:a4];

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

+ (void)_performDuetCheckAndSendForServiceIdentifier:(id)a3 serviceDuetIdentifiers:(id)a4 sendParameters:(id)a5 logString:(id)a6 fromQueue:(id)a7 completionBlock:(id)a8
{
  v13 = a3;
  v37 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  dispatch_assert_queue_V2(v16);
  v18 = [v14 duetIdentifiersOverride];
  if (![v18 count])
  {
    v19 = v37;

    v18 = v19;
  }

  v20 = [v14 priority];
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v20 == 300)
    {
      v22 = @"URGENT";
    }

    else
    {
      v22 = @"non-urgent";
    }

    v23 = [v14 accountUUID];
    v24 = [v14 bypassDuet];
    v25 = @"NO";
    *buf = 138413570;
    v39 = v22;
    v40 = 2112;
    if (v24)
    {
      v25 = @"YES";
    }

    v41 = v23;
    v42 = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v25;
    v48 = 2112;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing duet check for priority %@ for account %@ serviceIdentifier %@ duetIdentifiers %@ bypassDuet %@  logString: %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (v20 == 300)
    {
      v26 = @"URGENT";
    }

    else
    {
      v26 = @"non-urgent";
    }

    v27 = [v14 accountUUID];
    v28 = [v14 bypassDuet];
    v29 = @"NO";
    if (v28)
    {
      v29 = @"YES";
    }

    v35 = v29;
    v36 = v15;
    v33 = v13;
    v34 = v18;
    v31 = v26;
    v32 = v27;
    _IDSLogV();
  }

  if (![v14 bypassDuet])
  {
    if (v20 == 300)
    {
      if (v17)
      {
        v17[2](v17, 1);
      }

      v17 = 0;
    }

    v30 = +[IDSDuetInterface sharedInstance];
    [v30 checkAvailabilityForValues:v18 priority:objc_msgSend(v14 logString:"priority") fromQueue:v15 withCompletionBlock:{v16, v17}];

    goto LABEL_26;
  }

  if (v17)
  {
    v17[2](v17, 1);
LABEL_26:
  }
}

- (void)_performDuetCheckAndSendForAccount:(id)a3 sendParameters:(id)a4 logString:(id)a5 fromQueue:(id)a6 completionBlock:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_class();
  v20 = [v15 service];
  v17 = [v20 identifier];
  v18 = [v15 service];

  v19 = [v18 duetIdentifiers];
  [v16 _performDuetCheckAndSendForServiceIdentifier:v17 serviceDuetIdentifiers:v19 sendParameters:v14 logString:v13 fromQueue:v12 completionBlock:v11];
}

- (BOOL)_canBulkMessageWithParameters:(id)a3
{
  v3 = a3;
  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v3 accountUUID];
  v6 = [v4 accountWithUniqueID:v5];

  v7 = [v6 service];
  if ([v7 adHocServiceType] == 2)
  {
  }

  else
  {
    v8 = [v6 service];
    v9 = [v8 adHocServiceType];

    if (v9 != 5)
    {
      v10 = [v3 priority] != 300;
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
    v4 = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
    *buf = 138412290;
    v22 = *&v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling a non-urgent internet send timer if needed. Existing timer fire date? %@", buf, 0xCu);
  }

  if ((os_log_shim_legacy_logging_enabled() & 1) != 0 && _IDSShouldLog())
  {
    v19 = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
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

    v9 = [(IDSDaemon *)self serverBagForBagType:1, v19];
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
  v2 = [(IMDispatchTimer *)self->_nonUrgentInternetSendTimer fireDate];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [v2 timeIntervalSinceNow];
    *buf = 138412546;
    v10 = v2;
    v11 = 2048;
    v12 = fabs(v4);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking _hasNonUrgentInternetSendingBudget, fireDate is %@, %f", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v2 timeIntervalSinceNow];
    _IDSLogV();
  }

  if (v2 && ([v2 timeIntervalSinceNow], fabs(v5) > 60.0))
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v2;
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
  v8 = [v5 second];

  return v8 + v7;
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
    v35 = [(IDSDaemon *)self _currentSecondsIntoDay];
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

            else if (v35 >= [v8 integerValue] && v35 <= objc_msgSend(v9, "integerValue"))
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
                v48 = v35;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "We are currently in send window (%@, %@, %@). The time is currently %ld", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v31 = v11;
                v32 = v35;
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
  v3 = [(IDSDaemon *)self _currentSecondsIntoDay];
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
      v8 = v3 - nonUrgentInternetLastAttempt;
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

  self->_nonUrgentInternetLastAttempt = v3;
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

- (BOOL)_canSendNonUrgentInternetMessageForTopic:(id)a3
{
  v4 = a3;
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

  v6 = [(IDSDaemon *)self pushHandlerForAPSDelegatePort];
  v7 = [v6 isConnected];

  if ((v7 & 1) == 0)
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

  if (v9 && ([v9 containsObject:v4] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
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
  v4 = [v3 isConnected];

  if ((v4 & 1) == 0)
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
      v82 = v103;
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
        v14 = [v12 accountGUID];
        v15 = [v13 accountWithUniqueID:v14];

        v16 = [v15 service];
        v17 = [v16 dataProtectionClass];

        if (v15)
        {
          v18 = [v15 service];
          if ([v18 adHocServiceType] == 2)
          {

LABEL_28:
            ++v110;
            goto LABEL_39;
          }

          v19 = [v15 service];
          v20 = [v19 adHocServiceType] == 5;

          if (v20)
          {
            goto LABEL_28;
          }
        }

        v21 = [v12 dataToEncrypt];
        if (v21)
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
          v23 = [v12 guid];
          *buf = 138412290;
          v135 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not combining encrypted message - %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v82 = [v12 guid];
          _IDSLogV();
        }

        [v100 addObject:{v12, v82}];
LABEL_38:
        v24 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:v17];
        v25 = [v12 guid];
        [v24 markOutgoingMessageWithGUID:v25 asSent:1];

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
            v82 = v103;
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
                v42 = [v39 accountGUID];
                v113 = [v41 accountWithUniqueID:v42];

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
                    v82 = v113;
                    _IDSLogV();
                  }

                  v119[0] = _NSConcreteStackBlock;
                  v119[1] = 3221225472;
                  v119[2] = sub_1006692A4;
                  v119[3] = &unk_100BE36D8;
                  v104 = v113;
                  v120 = v104;
                  v105 = objc_retainBlock(v119);
                  v44 = [v39 combinedMessages];
                  v45 = [v44 count] == 0;

                  if (v45)
                  {
                    (v105[2])(v105, v39);
                  }

                  else
                  {
                    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                    if (Mutable)
                    {
                      v47 = [v39 message];
                      v48 = v47 == 0;

                      if (!v48)
                      {
                        v49 = [v39 message];
                        CFArrayAppendValue(Mutable, v49);
                      }
                    }

                    v117 = 0u;
                    v118 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    v50 = [v39 combinedMessages];
                    v51 = [v50 countByEnumeratingWithState:&v115 objects:v144 count:16];
                    if (v51)
                    {
                      v52 = *v116;
                      do
                      {
                        for (j = 0; j != v51; j = j + 1)
                        {
                          if (*v116 != v52)
                          {
                            objc_enumerationMutation(v50);
                          }

                          if (Mutable)
                          {
                            v54 = *(*(&v115 + 1) + 8 * j);
                            v55 = [v54 message];
                            v56 = v55 == 0;

                            if (!v56)
                            {
                              v57 = [v54 message];
                              CFArrayAppendValue(Mutable, v57);
                            }
                          }
                        }

                        v51 = [v50 countByEnumeratingWithState:&v115 objects:v144 count:16];
                      }

                      while (v51);
                    }

                    v58 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      v59 = [v39 combinedMessages];
                      v60 = [v59 count];
                      v61 = [v39 destinations];
                      v62 = [v39 fromID];
                      [v39 guid];
                      v64 = v63 = v60 + 1;
                      *buf = 138413314;
                      v135 = v104;
                      v136 = 2048;
                      v137 = v63;
                      v138 = 2112;
                      v139 = v61;
                      v140 = 2112;
                      v141 = v62;
                      v142 = 2112;
                      v143 = v64;
                      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "account %@ sendNonUrgentInternetMessage: bulked: %lu to: %@ identifier: %@ guid: %@", buf, 0x34u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLog())
                      {
                        v65 = [v39 combinedMessages];
                        v66 = [v65 count];
                        v67 = [v39 destinations];
                        v68 = [v39 fromID];
                        [v39 guid];
                        v91 = v90 = v68;
                        v85 = v66 + 1;
                        v89 = v67;
                        v83 = v104;
                        _IDSLogV();
                      }
                    }

                    v69 = [v39 copySendParameters];
                    v70 = [v39 fromID];
                    v71 = [v39 destinations];
                    v97 = [v39 useDictAsTopLevel];
                    v72 = [v39 dataToEncrypt];
                    v96 = [v39 encryptPayload];
                    v95 = [v39 wantsResponse];
                    v102 = [v39 expirationDate];
                    v101 = [v39 command];
                    v94 = [v39 wantsDeliveryStatus];
                    v73 = [v39 wantsCertifiedDelivery];
                    v74 = [v39 deliveryStatusContext];
                    v75 = [v39 messageUUID];
                    [v39 priority];
                    v114 = v111;
                    BYTE1(v91) = v73;
                    LOBYTE(v91) = v94;
                    v88 = v102;
                    v90 = v101;
                    BYTE1(v84) = v95;
                    LOBYTE(v84) = v96;
                    v82 = v72;
                    [v104 sendMessage:0 params:v69 bulkedPayload:Mutable fromID:v70 toDestinations:v71 useDictAsTopLevel:v97 dataToEncrypt:? encryptPayload:? wantsResponse:? expirationDate:? command:? wantsDeliveryStatus:? wantsCertifiedDelivery:? deliveryStatusContext:? messageUUID:? priority:? localDelivery:? disallowRefresh:? willSendBlock:? completionBlock:?];
                  }
                }

                else
                {
                  v76 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    v77 = [v39 accountGUID];
                    v78 = [v39 guid];
                    *buf = 138412546;
                    v135 = v77;
                    v136 = 2112;
                    v137 = v78;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "No account found for ID: %@ - can't send %@", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    v79 = [v39 accountGUID];
                    v86 = [v39 guid];
                    _IDSWarnV();

                    v80 = [v39 accountGUID];
                    v87 = [v39 guid];
                    _IDSLogV();

                    v81 = [v39 accountGUID];
                    [v39 guid];
                    v84 = v82 = v81;
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

- (void)_enqueueBlock:(id)a3 identifier:(id)a4 withTimeout:(double)a5 forKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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

  v18 = [(IMMultiQueue *)incomingMessageMultiQueue addBlock:v10 withTimeout:v12 forKey:v11 description:a5];
  v19 = +[IMIDSLog daemon];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = [(IMMultiQueue *)self->_incomingMessageMultiQueue loggableOverviewForKey:v12];
      v22 = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enqueueing block in multiqueue {key: %@, identifier: %@, queueState: %@}", &v22, 0x20u);
    }
  }

  else if (v20)
  {
    v22 = 138412546;
    v23 = v12;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enqueueing block in multiqueue {key: %@, identifier: %@}", &v22, 0x16u);
  }
}

- (BOOL)_shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:(int64_t)a3
{
  result = 1;
  if (a3 > 801)
  {
    if ((a3 - 900) >= 4 && a3 != 804 && a3 != 802)
    {
      return result;
    }

    return 0;
  }

  if (a3 > 499)
  {
    if ((a3 - 500) >= 2)
    {
      return result;
    }

    return 0;
  }

  if (!a3 || a3 == 202 || a3 == 400)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldRateLimitCacheClearForPeerTokensForDecryptionErrorType:(int64_t)a3 withOriginalDecryptionError:(id)a4 fromURI:(id)a5 toURI:(id)a6 service:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v11 userInfo];
  v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v17 = [v11 domain];
  if (([v17 isEqualToString:IDSDecryptionErrorDomain] & 1) != 0 || objc_msgSend(v11, "code") != 15)
  {

LABEL_6:
    v21 = [[IMPair alloc] initWithFirst:v12 second:v13];
    v22 = [(IDSRateLimiter *)self->_decryptionErrorCacheClearRateLimiter underLimitForItem:v21];
    if (v22)
    {
      [(IDSRateLimiter *)self->_decryptionErrorCacheClearRateLimiter noteItem:v21];
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
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
        v27 = v12;
        v28 = 2112;
        v29 = v13;
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

  v18 = [v16 domain];
  v19 = [v18 isEqualToString:@"MessageProtection.TetraRatchetingErrors"];

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)_shouldForgetCachedPeerTokensForDecryptionErrorType:(int64_t)a3 withOriginalDecryptionError:(id)a4
{
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v8 = [v5 domain];
  v9 = IDSDecryptionErrorDomain;
  if (![v8 isEqualToString:IDSDecryptionErrorDomain] || objc_msgSend(v5, "code") != 15)
  {
    goto LABEL_7;
  }

  v10 = [v7 domain];
  if (([v10 isEqualToString:@"com.apple.messageprotection"] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v11 = [v7 code];

  if (v11 == 802)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_8:
  v12 = [v5 domain];
  if ([v12 isEqualToString:v9] && objc_msgSend(v5, "code") == 15)
  {
    v13 = [v7 domain];
    v14 = [v13 isEqualToString:@"MessageProtection.TetraRatchetingErrors"];

    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = 1;
  if (a3 > 600)
  {
    if ((a3 - 900) < 4 || a3 == 601)
    {
      goto LABEL_19;
    }
  }

  else if (!a3 || a3 == 202 || a3 == 501)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v15;
}

- (BOOL)_shouldReplyWithRemoteDecryptionErrorMessageForDecryptionErrorType:(int64_t)a3
{
  result = 1;
  if (a3 <= 600)
  {
    if (a3 && a3 != 202 && a3 != 501)
    {
      return result;
    }

    return 0;
  }

  if ((a3 - 900) < 4 || a3 == 601)
  {
    return 0;
  }

  return result;
}

- (BOOL)_shouldRetryForDecryptionErrorType:(int64_t)a3
{
  result = 1;
  if (a3 > 899)
  {
    if ((a3 - 900) > 3)
    {
      return result;
    }

    return 0;
  }

  if (!a3 || a3 == 202 || a3 == 501)
  {
    return 0;
  }

  return result;
}

- (id)_failureReasonMessageFromSecondaryError:(id)a3 ECError:(id)a4 andLegacyError:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [IDSMessageMetricReporter errorToReportForNGMError:a3];
  v10 = [IDSMessageMetricReporter errorToReportForNGMError:v8];

  v11 = [IDSMessageMetricReporter errorToReportForLegacyError:v7];

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
    v16 = [v9 domain];
    v17 = [v9 code];
    v18 = [v10 domain];
    v19 = [v10 code];
    v20 = [v11 domain];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld ec-%@-%ld legacy-%@-%ld", v16, v17, v18, v19, v20, [v11 code]);

LABEL_21:
LABEL_22:

    goto LABEL_23;
  }

  if (v13)
  {
    v16 = [v9 domain];
    v15 = [v9 code];
    v18 = [v10 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld ec-%@-%ld", v16, v15, v18, [v10 code]);
    v21 = LABEL_20:;
    goto LABEL_21;
  }

  if (v10 && v11)
  {
    v16 = [v10 domain];
    v22 = [v10 code];
    v18 = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ec-%@-%ld legacy-%@-%ld", v16, v22, v18, [v11 code]);
    goto LABEL_20;
  }

  if (v9 && v11)
  {
    v16 = [v9 domain];
    v23 = [v9 code];
    v18 = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld legacy-%@-%ld", v16, v23, v18, [v11 code]);
    goto LABEL_20;
  }

  if (v9)
  {
    v16 = [v9 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"secondary-%@-%ld", v16, [v9 code]);
    v21 = LABEL_32:;
    goto LABEL_22;
  }

  if (v10)
  {
    v16 = [v10 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ec-%@-%ld", v16, [v10 code]);
    goto LABEL_32;
  }

  if (v11)
  {
    v16 = [v11 domain];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"legacy-%@-%ld", v16, [v11 code]);
    goto LABEL_32;
  }

  v21 = &stru_100C06028;
LABEL_23:

  return v21;
}

- (double)_decryptionRetryIntervalForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:IDSDecryptionErrorDomain])
  {
    v5 = [v3 code];

    v6 = 2.0;
    if (v5 == 2)
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

+ (BOOL)_topicAllowsNoEncryption:(id)a3 fromURI:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSSet alloc] initWithObjects:{@"mailto:support@apple.com", @"mailto:info@apple.com", @"mailto:alert@apple.com", 0}];
  v8 = [v6 prefixedURI];
  if (IMStringIsEmail())
  {
    v9 = [v6 prefixedURI];
    if ([v9 hasSuffix:@".apple.com"])
    {
      v10 = 0;
    }

    else
    {
      v11 = [v6 prefixedURI];
      v12 = [v7 containsObject:v11];

      v10 = v12 ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  if ([v5 isEqualToString:@"com.apple.madrid"] && !v10 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.private.alloy.bulletinboard") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.private.alloy.keychainsync") & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = [v5 isEqualToString:@"com.apple.private.alloy.willow"];
  }

  return v13;
}

- (void)_submitLastResortCacheMetricForGUID:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IDSMissingMessageMetric alloc] initWithReason:706 guid:v6 service:v5 additionalInformation:0];

  [IDSMissingMessageMetricReporter sendMetric:v7];
}

- (void)_sendNiceMessageCheckpointIfNecessary:(id)a3 checkpoint:(int64_t)a4 service:(id)a5 additionalInformation:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 pushUUID];
  v14 = [v10 wantsCheckpointing];
  v15 = [v14 BOOLValue];

  v16 = [(IDSDaemon *)self serverBagForBagType:1];
  v17 = [v16 objectForKey:@"disable-message-checkpointing"];
  v18 = [v17 BOOLValue];

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 134218754;
    v24 = a4;
    if (v15)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (v18)
    {
      v20 = @"YES";
    }

    v25 = 2112;
    v26 = v13;
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

  if (!(v18 & 1 | ((v15 & 1) == 0)))
  {
    v22 = [[IDSMissingMessageMetric alloc] initWithReason:a4 guid:v13 service:v11 additionalInformation:v12];
    [IDSMissingMessageMetricReporter sendMetric:v22];
  }
}

- (void)_callReplayCommitBlockForIncomingMessages:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
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
        v9 = [v8 message];
        v10 = [IDSIncomingNiceMessage alloc];
        v11 = [v8 topic];
        v12 = [v10 initWithMessageDictionary:v9 topic:v11];

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

- (id)_replayKeyForNiceMessage:(id)a3 encryptedData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 pushUUID];
  if (v6 || ([v5 encryptedPayload], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [v5 groupIDData];
    if (v8)
    {
      v9 = [[ENGroupID alloc] initWithDataRepresentation:v8];

      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = [v5 encryptionTypeStr];
    v12 = IDSEncryptionTypeFromEncryptionTypeString();
    v13 = 3;
    if (v10)
    {
      v13 = v12;
    }

    if ((v13 + 1) < 5 || v13 == 6)
    {
      v14 = +[IDSRegistrationKeyManager sharedInstance];
      v15 = [v14 fullDeviceIdentityContainer];
      v16 = [v15 legacyFullIdentity];
    }

    else
    {
      v16 = 0;
    }

    v17 = [IDSCertifiedDeliveryReplayKey alloc];
    v18 = [v6 _FTOptionallyDecompressData];
    v19 = [v17 initWithPayload:v18 legacyIdentity:v16];
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
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

- (void)_optionallyDecryptNiceMessage:(id)a3 encryptedData:(id)a4 forGroupID:(id)a5 forTopic:(id)a6 fromURI:(id)a7 certifiedDeliveryContext:(id)a8 isLiveRetry:(BOOL)a9 incomingMetric:(id)a10 completionBlock:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v86 = a7;
  v21 = a8;
  v85 = a10;
  v22 = a11;
  v23 = v22;
  if (v17 && v22)
  {
    v24 = [v18 _FTOptionallyDecompressData];
    if (!v24)
    {
      v25 = [(__CFString *)v17 encryptedPayload];
      v24 = [v25 _FTOptionallyDecompressData];
    }

    if (CUTIsInternalInstall())
    {
      v80 = [(__CFString *)v17 payloadMetadataData];
    }

    else
    {
      v80 = 0;
    }

    value = [(__CFString *)v17 encryptionTypeStr];
    v26 = IDSEncryptionTypeFromEncryptionTypeString();
    v27 = 3;
    if (!v19)
    {
      v27 = v26;
    }

    v79 = v27;
    v28 = [(IDSDaemon *)self serviceController];
    v84 = [v28 serviceWithPushTopic:v20];

    v83 = [(__CFString *)v17 toURI];
    v82 = [(__CFString *)v17 senderPushToken];
    v81 = [(__CFString *)v17 command];
    v29 = [v84 IPMessageFormat];
    if (v24)
    {
      v30 = v29;
      if (v79 == 2)
      {
        if (([objc_opt_class() _topicAllowsNoEncryption:v20 fromURI:v86] & 1) == 0 && v30 != 1)
        {
          v31 = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0];
          v32 = objc_alloc_init(NSMutableDictionary);
          v33 = [(__CFString *)v17 rawMessage];
          if (v33)
          {
            CFDictionarySetValue(v32, IDSIncomingMessagePushPayloadKey, v33);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092DFD8();
          }

          if (value)
          {
            CFDictionarySetValue(v32, IDSIncomingMessageOriginalEncryptionTypeKey, value);
          }

          (v23)[2](v23, v32, v31, v21);

LABEL_26:
          goto LABEL_27;
        }
      }

      else if (v29 != 1)
      {
        if (v83 && v82)
        {
          if (v84)
          {
            v78 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:v83 service:v84 outPseudonym:0];
            if (v78)
            {
              v36 = [v86 prefixedURI];
              if ([v36 _appearsToBePseudonymID])
              {
                [v86 prefixedURI];
              }

              else
              {
                [v82 rawToken];
              }
              v73 = ;

              v43 = +[IDSEncryptionController sharedInstance];
              v44 = [v43 failedTokenCache];
              v74 = [v44 underLimitForItem:v73];

              v77 = [v84 queryService];
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
                v113 = v82;
                v114 = 2112;
                v115 = v77;
                v116 = 2112;
                v117 = v86;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Noting peer token {shouldNoteToken: %@, token: %@, service: %@, fromIdentifier: %@}", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v47 = @"NO";
                if (v74)
                {
                  v47 = @"YES";
                }

                v62 = v77;
                v64 = v86;
                v58 = v47;
                v60 = v82;
                _IDSLogV();
              }

              if (v74)
              {
                v48 = +[IDSPeerIDManager sharedInstance];
                [v48 notePeerToken:v82 forURI:v86 fromURI:v83 service:v77];

                v49 = +[IDSIDStatusQueryController sharedInstance];
                [v49 noteIncomingID:v86 fromService:v77];
              }

              v75 = [(__CFString *)v17 pushUUID:v58];
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
                [v81 integerValue];
                kdebug_trace();
              }

              [(IDSDaemon *)self _sendNiceMessageCheckpointIfNecessary:v17 checkpoint:9200 service:v20 additionalInformation:0, v59, v61];
              v51 = +[IMLockdownManager sharedInstance];
              v52 = [v51 isInternalInstall];

              if (v52)
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

              v53 = [(IDSDaemon *)self _replayKeyForNiceMessage:v17 encryptedData:v24];
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
              v70 = v81;
              v89 = v70;
              v90 = v80;
              v69 = v86;
              v91 = v69;
              v68 = v82;
              v92 = v68;
              v93 = self;
              v72 = v75;
              v94 = v72;
              v95 = v20;
              v67 = v83;
              v96 = v67;
              v97 = v84;
              v109 = a9;
              v98 = v17;
              v99 = v18;
              v66 = v19;
              v100 = v66;
              v101 = v21;
              v65 = v85;
              v102 = v65;
              v107 = v23;
              v108 = v79;
              v103 = value;
              v55 = v24;
              v104 = v55;
              v56 = v78;
              v105 = v56;
              v76 = v71;
              v106 = v76;
              v57 = objc_retainBlock(v88);
              LOBYTE(v63) = a9;
              [v56 decryptMessageData:v55 guid:v72 localURI:v67 remoteURI:v69 pushToken:v68 groupID:v66 command:v70 encryptionType:v79 isLiveRetry:v63 replayKey:v76 incomingMetric:v65 completionBlock:v57];
            }

            else
            {
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v111 = v20;
                v112 = 2112;
                v113 = v83;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "No account found for topic: %@   toURI: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                _IDSLogTransport();
              }

              (v23)[2](v23, 0, 0, v21);
            }
          }

          else
          {
            v41 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v111 = v20;
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
            v111 = v17;
            v112 = 2112;
            v113 = v83;
            v114 = 2112;
            v115 = v82;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Incoming message %@ missing routing information -- failing {toURI: %@, senderPushToken: %@}", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v60 = v83;
            v62 = v82;
            v58 = v17;
            _IDSLogTransport();
          }

          v38 = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0, v58, v60, v62];
          v39 = objc_alloc_init(NSMutableDictionary);
          v40 = [(__CFString *)v17 rawMessage];
          if (v40)
          {
            CFDictionarySetValue(v39, IDSIncomingMessagePushPayloadKey, v40);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092DFD8();
          }

          if (value)
          {
            CFDictionarySetValue(v39, IDSIncomingMessageOriginalEncryptionTypeKey, value);
          }

          (v23)[2](v23, v39, v38, v21);
        }

        goto LABEL_26;
      }
    }

    v34 = objc_alloc_init(NSMutableDictionary);
    v35 = [(__CFString *)v17 rawMessage];
    if (v35)
    {
      CFDictionarySetValue(v34, IDSIncomingMessagePushPayloadKey, v35);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092DFD8();
    }

    if (value)
    {
      CFDictionarySetValue(v34, IDSIncomingMessageOriginalEncryptionTypeKey, value);
    }

    if (v24)
    {
      CFDictionarySetValue(v34, IDSIncomingMessageDecryptedDataKey, v24);
    }

    (v23)[2](v23, v34, 0, v21);

    goto LABEL_26;
  }

LABEL_27:
}

- (void)_handleIncomingNiceAttachmentMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 certifiedDeliveryContext:(id)a6 completionBlock:(id)a7
{
  v11 = a3;
  v53 = a4;
  v12 = a5;
  v52 = a6;
  v13 = a7;
  v54 = v11;
  if (v11 && v13)
  {
    v49 = v13;
    v14 = [v11 toURI];
    v15 = [v11 senderPushToken];
    v48 = [v11 pushUUID];
    v16 = [(IDSDaemon *)self serviceController];
    v50 = [v16 serviceWithPushTopic:v53];

    v17 = v50;
    if (!v50)
    {
LABEL_43:

      v13 = v49;
      goto LABEL_44;
    }

    v46 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:v14 service:v50 outPseudonym:0];
    if (!v46)
    {
      (*(v49 + 2))(v49, 0, 0, v52);
LABEL_42:

      v17 = v50;
      goto LABEL_43;
    }

    v18 = [v11 encryptedPayload];
    v47 = [v18 _FTOptionallyDecompressData];

    value = [v11 encryptionTypeStr];
    v42 = IDSEncryptionTypeFromEncryptionTypeString();
    v44 = [(IDSDaemon *)self _replayKeyForNiceMessage:v11 encryptedData:v47];
    if (v44)
    {
      replayKeyToMessageUUIDMap = self->_replayKeyToMessageUUIDMap;
      v20 = [v11 pushUUID];
      [(NSMutableDictionary *)replayKeyToMessageUUIDMap setObject:v20 forKey:v44];
    }

    v43 = [v11 payloadMetadataData];
    if (!v47)
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
            [v26 notePeerToken:v15 forURI:v12 fromURI:v14 service:v25];

            v27 = +[IDSIDStatusQueryController sharedInstance];
            [v27 noteIncomingID:v12 fromService:v25];
          }

          v22 = [(__CFDictionary *)theDict countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v22);
      }

      v28 = [v12 isEqualToURI:v14];
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = @"NO";
        *buf = 134218754;
        v76 = v47;
        if (v28)
        {
          v30 = @"YES";
        }

        v77 = 2112;
        v78 = v48;
        v79 = 2112;
        v80 = v12;
        v81 = 2112;
        v82 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Incoming message attachment data: %p ID: %@  from: %@ fromMe: %@", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v41 = v12;
        _IDSLogEventV();
      }

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10066DC20;
      v56[3] = &unk_100BE3810;
      v31 = v54;
      v57 = v31;
      v58 = v43;
      v32 = v12;
      v59 = v32;
      v33 = v15;
      v60 = v33;
      v61 = self;
      v34 = v14;
      v62 = v34;
      v63 = v50;
      v35 = v48;
      v64 = v35;
      v69 = v49;
      v65 = value;
      v66 = v52;
      v70 = v42;
      v67 = v53;
      v36 = v46;
      v68 = v36;
      v37 = objc_retainBlock(v56);
      v38 = [v31 command];
      LOBYTE(v41) = 0;
      [v36 decryptMessageData:v47 guid:v35 localURI:v34 remoteURI:v32 pushToken:v33 groupID:0 command:v38 encryptionType:v42 isLiveRetry:v41 replayKey:v44 incomingMetric:0 completionBlock:v37];

      goto LABEL_41;
    }

    if (![objc_opt_class() _topicAllowsNoEncryption:v53 fromURI:v12])
    {
      theDict = [NSError errorWithDomain:IDSGenericErrorDomain code:202 userInfo:0];
      v39 = objc_alloc_init(NSMutableDictionary);
      v40 = [v11 rawMessage];
      if (v40)
      {
        CFDictionarySetValue(v39, IDSIncomingMessagePushPayloadKey, v40);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      if (value)
      {
        CFDictionarySetValue(v39, IDSIncomingMessageOriginalEncryptionTypeKey, value);
      }

      (*(v49 + 2))(v49, v39, theDict, v52);
    }

    else
    {
LABEL_10:
      theDict = objc_alloc_init(NSMutableDictionary);
      v21 = [v11 rawMessage];
      if (v21)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessagePushPayloadKey, v21);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092DFD8();
      }

      if (value)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessageOriginalEncryptionTypeKey, value);
      }

      if (v47)
      {
        CFDictionarySetValue(theDict, IDSIncomingMessageDecryptedDataKey, v47);
      }

      (*(v49 + 2))(v49, theDict, 0, v52);
    }

LABEL_41:

    goto LABEL_42;
  }

LABEL_44:
}

- (void)getLocalIncomingPowerAssertion:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_incomingLocalPowerAssertionLock);
  if (!self->_incomingLocalPowerAssertion)
  {
    v8 = [IMPowerAssertion alloc];
    v9 = [v6 identifier];
    v10 = [NSString stringWithFormat:@"IDS-receive-%@", v9];
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
  dispatch_after(v14, v7, block);
}

- (void)_processIncomingLocalMessage:(id)a3 topic:(id)a4 command:(id)a5 deviceID:(id)a6 btUUID:(id)a7 context:(id)a8 storedGUID:(id)a9 priority:(id)a10 connectionType:(int64_t)a11 didWakeHint:(BOOL)a12
{
  v178 = a3;
  v17 = a4;
  v180 = a5;
  v177 = a6;
  v172 = a7;
  v18 = a8;
  v179 = a9;
  v176 = a10;
  im_assert_primary_base_queue();
  key = IDSMessageContextOutgoingResponseIdentifierKey;
  v181 = [(__CFDictionary *)v18 _stringForKey:?];
  v173 = [(__CFDictionary *)v18 _numberForKey:IDSMessageContextSequenceNumberKey];
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v269 = v181;
    v270 = 2112;
    v271 = v17;
    v272 = 1024;
    LODWORD(v273) = a12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "INCOMING-LOCAL_DELIVERY:%@ SERVICE:%@ didWakeHint:%d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v138 = v17;
    v143 = a12;
    v135 = v181;
    _IDSLogV();
  }

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v269 = v179;
    v270 = 2112;
    v271 = v181;
    v272 = 2112;
    v273 = v17;
    v274 = 2112;
    v275 = v180;
    v276 = 1024;
    v277 = a12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Broadcast: Processing incoming local message storage guid %@ real message guid %@ topic %@ command %@ didWakeHint %d", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v146 = v180;
    v148 = a12;
    v138 = v181;
    v143 = v17;
    v135 = v179;
    _IDSLogTransport();
  }

  v21 = [(IDSDaemon *)self serviceController:v135];
  v182 = [v21 serviceWithPushTopic:v17];

  if (v182)
  {
    v22 = [v182 serviceName];
    v23 = [v22 isEqualToString:@"com.apple.private.alloy.connectivity.monitor"];

    if (v23)
    {
      -[IDSDaemon _ackMessageWithSequenceNumber:forDeviceID:priority:dataProtectionClass:connectionType:guid:](self, "_ackMessageWithSequenceNumber:forDeviceID:priority:dataProtectionClass:connectionType:guid:", [v173 unsignedIntValue], v177, objc_msgSend(v176, "integerValue"), objc_msgSend(v182, "dataProtectionClass"), a11, v181);
      goto LABEL_94;
    }

    v25 = +[IDSTrafficMonitor sharedInstance];
    v26 = [v182 identifier];
    [v25 noteIncomingLocalMessageForService:v26];

    if (a12)
    {
      v266[0] = @"IDSDeviceDidWakeHintTopic";
      v266[1] = @"IDSDeviceDidWakeHintGUID";
      v27 = v181;
      if (!v181)
      {
        v27 = &stru_100C06028;
      }

      v267[0] = v17;
      v267[1] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v267 forKeys:v266 count:2];
      [(IDSDaemon *)self _IDSPowerLogDictionary:@"IDS Local Message Received" info:v28];
    }

    v29 = +[IDSDAccountController sharedInstance];
    v170 = [v29 appleIDAccountOnService:v182];

    if ([v170 isRegistered])
    {
      v30 = [v170 prefixedURIStringsFromRegistration];
      v31 = [v30 firstObject];
    }

    else
    {
      v31 = 0;
    }

    v32 = [v182 queryService];
    v161 = [IDSURI URIWithPrefixedURI:v31 withServiceLoggingHint:v32];

    v171 = [v170 fromIDForCBUUID:v172 deviceID:v177];
    if (!v171)
    {
      v33 = +[IDSPairingManager sharedInstance];
      v34 = [v33 pairedDeviceUniqueID];
      v171 = _IDSCopyIDForDeviceUniqueID();
    }

    v35 = [v182 queryService];
    v169 = [IDSURI URIWithPrefixedURI:v171 withServiceLoggingHint:v35];

    v168 = -[IDSIncomingMessageBroadcast initWithBroadcastBlock:needsClientAck:messageUUID:priority:senderID:sequenceNumber:]([IDSIncomingMessageBroadcast alloc], "initWithBroadcastBlock:needsClientAck:messageUUID:priority:senderID:sequenceNumber:", 0, 0, v181, [v176 intValue], v177, objc_msgSend(v173, "unsignedIntValue"));
    if ([v169 isTokenURI])
    {
      v36 = +[IDSPeerIDManager sharedInstance];
      v37 = [v169 tokenFreeURI];
      v38 = [v169 pushToken];
      v39 = [v182 queryService];
      v40 = [v36 senderCorrelationIdentifierForURI:v37 pushToken:v38 fromURI:v161 service:v39];

      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v169 tokenFreeURI];
        v43 = [v169 pushToken];
        *buf = 138413058;
        v269 = v181;
        v270 = 2112;
        v271 = v40;
        v272 = 2112;
        v273 = v42;
        v274 = 2112;
        v275 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found sender correlation identifier { guid: %@, senderCorrelationIdentifier: %@, fromID: %@, token: %@ }", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v44 = [v169 tokenFreeURI];
        [v169 pushToken];
        v147 = v144 = v44;
        v136 = v181;
        v139 = v40;
        _IDSLogV();
      }
    }

    else
    {
      v40 = 0;
    }

    Mutable = [(__CFDictionary *)v18 mutableCopy:v136];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v46 = v179;
    if (v46)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextStorageGuidKey, v46);
    }

    v47 = v180;
    v180 = v47;
    if (v47)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextOriginalCommandKey, v47);
      v47 = v180;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v48 = [NSNumber numberWithDouble:?];
    if (v48)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextBroadcastTimeKey, v48);
    }

    v49 = v176;
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

    v17 = v17;
    if (v17)
    {
      CFDictionarySetValue(Mutable, IDSMessageContextServiceIdentifierKey, v17);
    }

    v52 = v31;
    if (v52)
    {
      v53 = v52;
      CFDictionarySetValue(Mutable, IDSMessageContextToIDKey, v52);
      v52 = v53;
    }

    v162 = v52;

    v54 = [NSNumber numberWithLongLong:a11];
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
      v59 = [v178 objectForKey:IDSMessageResourceTransferSandboxExtensionKey];
      if (v59)
      {
        CFDictionarySetValue(Mutable, v58, v59);
      }

      v60 = IDSMessageResourceTransferURLKey;
      v61 = [v178 objectForKey:IDSMessageResourceTransferURLKey];
      if (v61)
      {
        CFDictionarySetValue(Mutable, v60, v61);
      }

      v62 = IDSMessageResourceTransferMetadataKey;
      v63 = [v178 objectForKey:IDSMessageResourceTransferMetadataKey];
      if (v63)
      {
        CFDictionarySetValue(Mutable, v62, v63);
      }
    }

    v167 = Mutable;

    v163 = [v182 superService];
    if ([v163 length])
    {
      v64 = v163;

      v17 = v64;
    }

    v65 = [v180 unsignedIntegerValue];
    if (v65 <= 148)
    {
      v66 = v65 - 100;
      v67 = v182;
      if ((v65 - 100) <= 0x2F)
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
            v239[4] = v178;
            v240 = v46;
            v241 = v17;
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

            v18 = v167;
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
                v74 = [(IDSIncomingMessageBroadcast *)v168 broadcastID];
                *buf = 138412546;
                v269 = v57;
                v270 = 2048;
                v271 = v74;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Broadcast: incoming local message %@ requires client ack, broadcast ID %lld\n", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                v137 = v57;
                v140 = [(IDSIncomingMessageBroadcast *)v168 broadcastID];
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
              v194[0] = v17;
              v194[1] = v180;
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
              v186 = v17;
              v187[0] = v180;
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
    if (v65 <= 226)
    {
      if ((v65 - 149) <= 0x2F)
      {
        if (((1 << (v65 + 107)) & 0xC20380000000) != 0)
        {
LABEL_76:
          v68 = v230;
          v230[0] = _NSConcreteStackBlock;
          v230[1] = 3221225472;
          v230[2] = sub_100672108;
          v230[3] = &unk_100BE3860;
          v230[4] = v170;
          v231 = v67;
          v232 = v178;
          v180 = v180;
          v233 = v180;
          v234 = v46;
          v235 = v17;
          v236 = v162;
          v237 = v171;
          v238 = v167;
          keya = objc_retainBlock(v230);

LABEL_77:
          v69 = &kIDSListenerCapConsumesLaunchOnDemandIncomingMessages;
          goto LABEL_78;
        }

        if (v65 == 149)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_117;
    }

    if (v65 > 241)
    {
      switch(v65)
      {
        case 242:
          v68 = v245;
          v245[0] = _NSConcreteStackBlock;
          v245[1] = 3221225472;
          v245[2] = sub_100671F90;
          v245[3] = &unk_100BE3838;
          v245[4] = v178;
          v246 = v46;
          v247 = v17;
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
          v251[4] = v178;
          v252 = v46;
          v253 = v17;
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
          v227 = v17;
          v228 = v162;
          v229 = v167;
          keya = objc_retainBlock(v225);
          [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

          v180 = 0;
          v70 = kIDSListenerCapConsumesLaunchOnDemandOutgoingMessageUpdates;
          goto LABEL_79;
      }

      goto LABEL_117;
    }

    if (v65 == 227)
    {
      v68 = v257;
      v257[0] = _NSConcreteStackBlock;
      v257[1] = 3221225472;
      v257[2] = sub_100671D50;
      v257[3] = &unk_100BDEBC8;
      v180 = v180;
      v257[4] = v180;
      v258 = v178;
      v259 = v46;
      v260 = v17;
      v261 = v162;
      v262 = v171;
      v263 = v167;
      keya = objc_retainBlock(v257);
      [(IDSIncomingMessageBroadcast *)v168 setBroadcastNeedsClientAck:1];

      goto LABEL_77;
    }

    if (v65 == 228)
    {
      v159 = [v178 _FTOptionallyDecompressData];
      v157 = JWDecodeDictionary();
      v87 = [[IDSSendParameters alloc] initWithDictionary:v157];
      v88 = [v87 groupData];

      if (v88)
      {
        v89 = objc_opt_class();
        v90 = [v87 groupData];
        v91 = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:v89 withData:v90];

        [v87 setDestinations:v91];
      }

      else
      {
        v91 = [v87 destinations];
        v99 = [NSSet setWithArray:v91];
        v100 = [IDSDestination destinationWithStrings:v99];

        [v87 setDestinations:v100];
      }

      v101 = [(IDSDaemon *)self serviceController];
      v155 = [v101 serviceWithPushTopic:v17];

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
            v108 = [v107 unprefixedURIStringsFromRegistration];
            v109 = [v87 originalfromID];
            v110 = [v109 _stripFZIDPrefix];
            v111 = [v108 containsObject:v110];

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
        v114 = [v87 messageUUID];
        v115 = [v87 destinations];
        *buf = 138412802;
        v269 = v114;
        v270 = 2112;
        v271 = v115;
        v272 = 2112;
        v273 = keyb;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Proxy message original parameters {messageUUID: %@, destinations: %@, targettingAccount: %@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v116 = [v87 messageUUID];
        v140 = [v87 destinations];
        v145 = keyb;
        v137 = v116;
        _IDSLogV();
      }

      v117 = objc_alloc_init(NSMutableSet);
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v118 = [v87 destinations];
      v119 = [v118 destinationURIs];

      v120 = [v119 countByEnumeratingWithState:&v217 objects:v264 count:16];
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
              objc_enumerationMutation(v119);
            }

            v124 = *(*(&v217 + 1) + 8 * j);
            if (([v124 isEqualToString:{v122, v137, v140, v145}] & 1) == 0)
            {
              [v117 addObject:v124];
            }
          }

          v120 = [v119 countByEnumeratingWithState:&v217 objects:v264 count:16];
        }

        while (v120);
      }

      v125 = [IDSDestination destinationWithStrings:v117];
      [v87 setDestinations:v125];

      v126 = [keyb uniqueID];
      [v87 setAccountUUID:v126];

      [keyb sendMessageWithSendParameters:v87 willSendBlock:&stru_100BE3880 completionBlock:&stru_100BE38A0];
      goto LABEL_162;
    }

    if (v65 != 229)
    {
LABEL_117:
      v85 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = [v180 unsignedIntegerValue];
        *buf = 136315394;
        v269 = "[IDSDaemon(Messaging) _processIncomingLocalMessage:topic:command:deviceID:btUUID:context:storedGUID:priority:connectionType:didWakeHint:]";
        v270 = 2048;
        v271 = v86;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%s: Unknown incoming local message type received, %lu", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v141 = [v180 unsignedIntegerValue];
        _IDSWarnV();
        v142 = [v180 unsignedIntegerValue];
        _IDSLogV();
        [v180 unsignedIntegerValue];
        _IDSLogTransport();
      }

LABEL_162:
      v18 = v167;

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

    v152 = [v178 _numberForKey:IDSCommandKey];
    v150 = [v178 _dictionaryForKey:IDSProxyTopLevelPayloadKey];
    v149 = [v178 _dataForKey:IDSProxyPayloadKey];
    v156 = [v178 _stringForKey:IDSProxyGuidKey];
    v153 = [v178 _stringForKey:IDSProxyToIDKey];
    v151 = [v178 _stringForKey:IDSProxyFromIDKey];
    v154 = [(IDSDaemon *)self _checkIfDupeAndNoteGuid:v156 local:0 topic:v17];
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
      v18 = v167;
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

    v18 = v92;
    v95 = v152;

    v96 = [v95 integerValue];
    keya = 0;
    v70 = 0;
    if (v96 <= 137)
    {
      if ((v96 - 100) > 0x1A)
      {
        goto LABEL_169;
      }

      v97 = 1 << (v96 - 100);
      v98 = 67174647;
    }

    else
    {
      if (v96 > 226)
      {
        if (v96 != 227)
        {
          if (v96 == 242)
          {
            v205[0] = _NSConcreteStackBlock;
            v205[1] = 3221225472;
            v205[2] = sub_100672D78;
            v205[3] = &unk_100BE3838;
            v206 = v149;
            v207 = v93;
            v208 = v17;
            v209 = v94;
            v210 = v151;
            v211 = v18;
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
            if (v96 != 243)
            {
              goto LABEL_169;
            }

            v198[0] = _NSConcreteStackBlock;
            v198[1] = 3221225472;
            v198[2] = sub_100672F34;
            v198[3] = &unk_100BE3838;
            v199 = v149;
            v200 = v93;
            v201 = v17;
            v202 = v94;
            v203 = v151;
            v204 = v18;
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
        v212[5] = v178;
        v212[6] = v150;
        v212[7] = v93;
        v212[8] = v17;
        v212[9] = v94;
        v213 = v151;
        v214 = v18;
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

      if ((v96 - 138) > 0x3A)
      {
LABEL_169:

        v180 = v95;
        goto LABEL_170;
      }

      v97 = 1 << (v96 + 118);
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
      v215[6] = v178;
      v215[7] = v17;
      v215[8] = v94;
      v215[9] = v151;
      v216 = v18;
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
    v271 = v17;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s: could not find IDSServiceProperties for topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    v136 = "[IDSDaemon(Messaging) _processIncomingLocalMessage:topic:command:deviceID:btUUID:context:storedGUID:priority:connectionType:didWakeHint:]";
    v139 = v17;
    _IDSLogTransport();
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:v179, v136, v139];
LABEL_94:
}

- (void)_processStoredIncomingLocalMessage:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 guid];
    v7 = [v4 topic];
    *buf = 138412546;
    v61 = v6;
    v62 = 2112;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing stored incoming local message %@ topic %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = [v4 guid];
    [v4 topic];
    v48 = v45 = v8;
    _IDSLogV();
  }

  v9 = [v4 message];
  v10 = [v9 _stringForKey:@"IDSIncomingLocalMessageService"];
  v58 = [v9 _stringForKey:@"IDSIncomingLocalMessageDeviceID"];
  v57 = [v9 _stringForKey:@"IDSIncomingLocalMessageBTUUID"];
  v59 = [v9 _numberForKey:@"IDSIncomingLocalMessageCommand"];
  v55 = [v9 objectForKey:@"IDSIncomingLocalMessagePayload"];
  v11 = [NSMutableDictionary alloc];
  v12 = [v9 _dictionaryForKey:@"IDSIncomingLocalMessageContext"];
  v13 = [v11 initWithDictionary:v12];

  v14 = [v4 guid];
  [v13 setObject:v14 forKey:IDSMessageContextStorageGuidKey];

  v15 = [(IDSDaemon *)self serviceController];
  v16 = [v15 serviceWithPushTopic:v10];

  if (!sub_100019928([v16 shouldProtectTrafficUsingClassA], objc_msgSend(v16, "dataProtectionClass"), v10))
  {
    v56 = [v4 guid];
    LOBYTE(v51) = 0;
    [(IDSDaemon *)self _processIncomingLocalMessage:v55 topic:v10 command:v59 deviceID:v58 btUUID:v57 context:v13 storedGUID:v56 priority:0 connectionType:0 didWakeHint:v51];
    goto LABEL_48;
  }

  v17 = +[IDSDAccountController sharedInstance];
  v18 = [(IDSDaemon *)self serviceController];
  v19 = [v18 serviceWithPushTopic:v10];
  v56 = [v17 localAccountOnService:v19];

  v20 = [v56 fromIDForCBUUID:v57 deviceID:v58];
  if (!v20)
  {
    v21 = +[IDSPairingManager sharedInstance];
    v22 = [v21 pairedDeviceUniqueID];
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

  v24 = [v20 _stripFZIDPrefix];
  v25 = [IDSEncryptionHelpers areDataProtectionKeysAvailableForService:v10 withDataProtectionClass:1 fromDevice:v24];

  if (!v25)
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v4 guid];
      v31 = [v4 topic];
      *buf = 138412546;
      v61 = v30;
      v62 = 2112;
      v63 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Class A key not avaialble for message %@ on topic %@", buf, 0x16u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_36;
    }

    v28 = [v4 guid];
    v54 = [v4 topic];
    _IDSLogV();
LABEL_35:

LABEL_36:
    goto LABEL_48;
  }

  v26 = [v59 unsignedIntegerValue];
  if (v26 == 243)
  {
    v34 = [[IDSProtobuf alloc] initWithDictionary:v55];
    v35 = [v34 data];
    v36 = [v20 _stripFZIDPrefix];
    v54 = [(IDSDaemon *)self _decryptAOverCMessage:v35 topic:v10 fromDeviceID:v36 error:0];

    if (v54)
    {
      [v34 setData:?];
      v28 = [v34 dictionaryRepresentation];
    }

    else
    {
      v28 = 0;
    }

LABEL_33:
    if (v28)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (v26 == 242)
  {
    v32 = [v20 _stripFZIDPrefix];
    v33 = [(IDSDaemon *)self _decryptAOverCMessage:v55 topic:v10 fromDeviceID:v32 error:0];

    if (v33)
    {
      v28 = v33;
      v54 = v28;
LABEL_34:
      v37 = [v4 guid];
      LOBYTE(v51) = 0;
      [(IDSDaemon *)self _processIncomingLocalMessage:v28 topic:v10 command:v59 deviceID:v58 btUUID:v57 context:v13 storedGUID:v37 priority:0 connectionType:0 didWakeHint:v51];

      goto LABEL_35;
    }
  }

  else if (v26 == 227)
  {
    v27 = [v20 _stripFZIDPrefix];
    v54 = [(IDSDaemon *)self _decryptAOverCMessage:v55 topic:v10 fromDeviceID:v27 error:0];

    if (v54)
    {
      v28 = JWDecodeDictionary();
      goto LABEL_33;
    }
  }

  v54 = 0;
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

  v44 = [v4 guid];
  [IDSDMessageStore deleteIncomingMessageWithGUID:v44];

LABEL_48:
}

- (void)_processStoredIncomingRemoteMessagesWithGUIDs:(id)a3 ignoringGUIDs:(id)a4 controlCategory:(unsigned int)a5 lastTimeInterval:(double)a6 repeatedAttempt:(BOOL)a7
{
  v8 = a7;
  v88 = a3;
  v84 = a4;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v101 = _os_activity_create(&_mh_execute_header, "Processing stored incoming remote messages", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v101, &state);
  v87 = self;
  if (self->_processingStoredIncomingRemoteMessages && !v8)
  {
    if (!self->_processingStoredIncomingRemoteMessagesControlCategories)
    {
      v12 = objc_alloc_init(NSMutableArray);
      processingStoredIncomingRemoteMessagesControlCategories = self->_processingStoredIncomingRemoteMessagesControlCategories;
      self->_processingStoredIncomingRemoteMessagesControlCategories = v12;
    }

    v85 = [NSNumber numberWithUnsignedInt:a5];
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
    v17 = [v88 count];
    v18 = @"NO";
    v104 = "[IDSDaemon(Messaging) _processStoredIncomingRemoteMessagesWithGUIDs:ignoringGUIDs:controlCategory:lastTimeInterval:repeatedAttempt:]";
    *buf = 136315650;
    if (v8)
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
    v19 = [v88 count];
    v20 = @"NO";
    if (v8)
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
  if (v84)
  {
    v85 = [NSMutableSet setWithSet:?];
  }

  else
  {
    v85 = 0;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = [IDSDMessageStore incomingMessagesUpToLimit:500 controlCategory:a5 messageTransportType:2 success:0];
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
      v34 = [v33 topic];
      v35 = [(IDSDaemon *)v87 serviceController];
      v36 = [v35 serviceWithPushTopic:v34];

      v37 = objc_autoreleasePoolPush();
      v38 = +[IMSystemMonitor sharedInstance];
      v39 = [v38 isUnderFirstDataProtectionLock];

      if (!v39 || [v36 dataProtectionClass])
      {
        if (v88)
        {
          v7 = [v33 guid];
          if (([v88 containsObject:v7] & 1) == 0)
          {

LABEL_55:
            ++v83;
            goto LABEL_69;
          }

          if (!v84)
          {

            goto LABEL_56;
          }
        }

        else if (!v84)
        {
LABEL_56:
          if (!v85 && v81 >= 0x1F4)
          {
            v85 = +[NSMutableSet set];
          }

          v43 = [v33 guid];
          [v85 addObject:v43];

          if ([v33 controlCategory] && objc_msgSend(v33, "expirationDate") && (v44 = objc_msgSend(v33, "expirationDate"), +[NSDate date](NSDate, "date"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "timeIntervalSince1970"), LODWORD(v44) = v46 > v44, v45, v44))
          {
            v47 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = [v33 guid];
              *buf = 138412802;
              v104 = v34;
              v105 = 2112;
              v106 = *&v48;
              v107 = 2112;
              v108 = v33;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Found expired message for topic %@ storedGuid %@: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [v33 guid];
              v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v78 = v33;
              v74 = v34;
              _IDSLogV();
            }

            v49 = [v33 guid];
            [IDSDMessageStore deleteIncomingMessageWithGUID:v49];
          }

          else
          {
            v50 = [IDSIncomingNiceMessage alloc];
            v51 = [v33 message];
            v52 = [v33 topic];
            v53 = [v50 initWithMessageDictionary:v51 topic:v52];

            v54 = [v33 fromID];
            v55 = [IDSURI URIWithPrefixedURI:v54 withServiceLoggingHint:v34];

            v56 = [v33 guid];
            [(IDSDaemon *)v87 _processIncomingRemoteNiceMessage:v53 forTopic:v34 fromURI:v55 storedGuid:v56 messageContext:0];
          }

          goto LABEL_69;
        }

        v40 = [v33 guid];
        v41 = [v84 containsObject:v40];

        if (v88)
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

    [(IDSDaemon *)v87 _minimumNextStoredLoadTime];
    v22 = a6 / (500 - v83) * 500.0;
    if (v22 < v57)
    {
      [(IDSDaemon *)v87 _minimumNextStoredLoadTime];
      goto LABEL_77;
    }

    [(IDSDaemon *)v87 _maximumNextStoredLoadTime];
    if (v22 > v72)
    {
LABEL_76:
      [(IDSDaemon *)v87 _maximumNextStoredLoadTime];
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
    v91[4] = v87;
    v92 = v88;
    v93 = v85;
    v95 = a5;
    v94 = v22;
    dispatch_after(v67, v68, v91);
  }

  else
  {
    v87->_processingStoredIncomingRemoteMessages = 0;
    if ([(NSMutableArray *)v87->_processingStoredIncomingRemoteMessagesControlCategories count])
    {
      v62 = [(NSMutableArray *)v87->_processingStoredIncomingRemoteMessagesControlCategories firstObject];
      v63 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v87->_processingStoredIncomingRemoteMessagesControlCategories;
        *buf = 138412546;
        v104 = v62;
        v105 = 2112;
        v106 = *&v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Finished processing queued messages, moving onto queued categories {controlCategory %@, queued %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v74 = v62;
        v76 = *&v87->_processingStoredIncomingRemoteMessagesControlCategories;
        _IDSLogV();
      }

      [(NSMutableArray *)v87->_processingStoredIncomingRemoteMessagesControlCategories removeFirstObject:v74];
      v65 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100674C10;
      block[3] = &unk_100BD6E40;
      block[4] = v87;
      v90 = v62;
      v66 = v62;
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

      v70 = v87->_processingStoredIncomingRemoteMessagesControlCategories;
      v87->_processingStoredIncomingRemoteMessagesControlCategories = 0;

      v71 = [(IDSDaemon *)v87 serverStorageStateMachine];
      [v71 sendSSMProcessedForPersistedTopics];
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

- (void)_processDeletingMessagesWithPriority:(int64_t)a3 reason:(id)a4 responseCode:(int64_t)a5 allowedTrafficClasses:(id)a6
{
  v10 = a4;
  v11 = a6;
  im_assert_primary_base_queue();
  v12 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100674DD0;
  v15[3] = &unk_100BE39A8;
  v16 = v11;
  v17 = self;
  v19 = a3;
  v20 = a5;
  v18 = v10;
  v13 = v10;
  v14 = v11;
  [v12 performBlockWithPriority:v15 priority:a3];
}

- (void)_processDisallowedMessages
{
  v3 = +[IDSUTunDeliveryController sharedInstance];
  v4 = [v3 allowedTrafficClasses];

  [(IDSDaemon *)self _processDeletingMessagesWithPriority:300 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:v4];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:200 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:v4];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:100 reason:@"Revision lock forced failure" responseCode:20 allowedTrafficClasses:v4];
}

- (void)_processMessagesUponUnpairing
{
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:300 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];
  [(IDSDaemon *)self _processDeletingMessagesWithPriority:200 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];

  [(IDSDaemon *)self _processDeletingMessagesWithPriority:100 reason:@"Destination device has unpaired" responseCode:14 allowedTrafficClasses:0];
}

- (void)_processStoredOutgoingUrgentMessagesProcessLocalAccounts:(BOOL)a3
{
  v3 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
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
    if (v3)
    {
      v6 = @"YES";
    }

    v54 = v6;
    _IDSLogV();
  }

  v7 = +[IDSDAccountController sharedInstance];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 accountsWithType:2];
    v10 = [NSMutableArray arrayWithArray:v9];

    v11 = +[IDSPairingManager sharedInstance];
    v66 = [v11 pairedDeviceUniqueID];
  }

  else
  {
    v12 = [v7 accountsWithType:1];
    v10 = [NSMutableArray arrayWithArray:v12];

    v11 = +[IDSDAccountController sharedInstance];
    v13 = [v11 accountsWithType:0];
    [v10 addObjectsFromArray:v13];

    v66 = 0;
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
        v18 = [v17 uniqueID];

        if (v18)
        {
          v19 = [v17 uniqueID];
          [v70 addObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v14);
  }

  v20 = [IDSDMessageStore allUnsentOutgoingMessagesForAccounts:v70 localDestinationDeviceID:v66 priority:300 hardLimit:10000];
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
    v55 = [v20 count];
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
        v25 = [IDSDAccountController sharedInstance:v55];
        v26 = [v24 accountGUID];
        v27 = [v25 accountWithUniqueID:v26];

        if (!v27)
        {
          v28 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v24 accountGUID];
            *buf = 138412290;
            v88 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Found stored outgoing message from account with guid %@ which no longer exists.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v57 = [v24 accountGUID];
            _IDSWarnV();

            v58 = [v24 accountGUID];
            _IDSLogV();

            v56 = [v24 accountGUID];
            _IDSLogTransport();
          }
        }

        v30 = [(__CFString *)v27 service];
        v73 = [v30 pushTopic];

        if (v73)
        {
          v31 = [v24 copySendParameters];
          v32 = [v31 data];

          if (v32)
          {
            v33 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v31 data];
              v35 = [v34 length];
              v36 = [v31 destinations];
              v37 = [v31 identifier];
              v38 = [v24 guid];
              *buf = 138413314;
              v88 = v27;
              v89 = 1024;
              *v90 = v35;
              *&v90[4] = 2112;
              *&v90[6] = v36;
              *&v90[14] = 2112;
              *&v90[16] = v37;
              *&v90[24] = 2112;
              *&v90[26] = v38;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "account %@ _processStoredOutgoingUrgentMessagesProcessLocalAccounts for with data size: %d to: %@ identifier: %@ guid: %@", buf, 0x30u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = [v31 data];
              v40 = [v39 length];
              v41 = [v31 destinations];
              v42 = [v31 identifier];
              v43 = [v24 guid];
              v63 = v42;
              v64 = v43;
              v61 = v40;
              v62 = v41;
              v55 = v27;
              _IDSLogV();
              goto LABEL_54;
            }
          }

          else
          {
            v48 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v49 = [v31 message];
              v50 = [v31 destinations];
              v51 = [v31 identifier];
              v52 = [v24 guid];
              *buf = 138413314;
              v88 = v27;
              v89 = 2112;
              *v90 = v49;
              *&v90[8] = 2112;
              *&v90[10] = v50;
              *&v90[18] = 2112;
              *&v90[20] = v51;
              *&v90[28] = 2112;
              *&v90[30] = v52;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "account %@ _processStoredOutgoingUrgentMessagesProcessLocalAccounts for message: %@ to: %@ identifier: %@ guid: %@", buf, 0x34u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = [v31 message];
              v41 = [v31 destinations];
              v42 = [v31 identifier];
              v43 = [v24 guid];
              v63 = v42;
              v64 = v43;
              v61 = v39;
              v62 = v41;
              v55 = v27;
              _IDSLogV();
LABEL_54:
            }
          }

          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100676AD4;
          v74[3] = &unk_100BDF220;
          v75 = v73;
          v76 = self;
          v77 = v24;
          v46 = v31;
          v78 = v46;
          v47 = objc_retainBlock(v74);
          [(__CFString *)v27 sendMessageWithSendParameters:v46 willSendBlock:0 completionBlock:v47];

          goto LABEL_56;
        }

        v44 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = [v24 guid];
          *buf = 138412290;
          v88 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Old outgoing message %@ has no relevant account, cleaning up.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v59 = [v24 guid];
          _IDSWarnV();

          v60 = [v24 guid];
          _IDSLogV();

          v55 = [v24 guid];
          _IDSLogTransport();
        }

        v46 = [v24 guid];
        v47 = [v24 alternateGUID];
        [IDSDMessageStore deleteOutgoingMessageWithGUID:v46 alternateGUID:v47];
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

- (void)_handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:(id)a3 withMessageTypes:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if (!v5)
  {
    v5 = [NSArray arrayWithObjects:&off_100C3CF10, &off_100C3CF28, &off_100C3CF40, 0];
  }

  v8 = &off_100C3DD90;
  v35 = 0u;
  v36 = 0u;
  if (v6)
  {
    v8 = v6;
  }

  v25 = v8;
  v33 = 0uLL;
  v34 = 0uLL;
  obj = v5;
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
                v19 = [v18 service];
                if ([v19 adHocServiceType] == 2)
                {
                }

                else
                {
                  v20 = [v18 service];
                  v21 = [v20 adHocServiceType] == 5;

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

- (void)_processStoredMessagesIncludingClassD:(BOOL)a3
{
  v3 = a3;
  +[IDSDMessageStore deletePostponedMessages];
  [(IDSDaemon *)self _processStoredIncomingMessages];
  [IDSDMessageStore markOutgoingMessagesAsUnsentIncludingClassD:v3];
  [(IDSDaemon *)self _handleSpaceBecomingAvailableForUrgentLocalMessagesWithDataProtectionClasses:0 withMessageTypes:0];
  [(IDSDaemon *)self _updateNonUrgentInternetSendTimer];

  [(IDSDaemon *)self _resourceAvailabilityChangedForIdentifiers:0 priorities:0 dataProtectionClasses:0];
}

- (void)_processMessageError:(BOOL)a3 topLevelMessage:(id)a4 error:(id)a5 messageID:(id)a6 failureReasonMessage:(id)a7 service:(id)a8 serviceType:(id)a9 pushToken:(id)a10 fromURI:(id)a11 toURI:(id)a12 groupID:(id)a13 completionBlock:(id)a14
{
  v44 = a3;
  v45 = a4;
  v52 = a5;
  v47 = a6;
  v53 = a7;
  v49 = a8;
  v50 = a9;
  v51 = a10;
  v18 = a11;
  v19 = a12;
  v48 = a13;
  v20 = a14;
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

  v22 = [v18 isEqualToURI:v19];
  v23 = [v52 intValue];
  if ([IDSNGMPublicDeviceIdentity shouldMarkForStateReset:v53])
  {
    v24 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    v25 = [v24 pushToken];
    v26 = [IDSPushToken pushTokenWithData:v25];

    v27 = +[IDSEncryptionController sharedInstance];
    v28 = [v49 identifier];
    v29 = [v27 markForStateResetWithOurURI:v19 ourPushToken:v26 theirURI:v18 theirPushToken:v51 service:v28];

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

  if ([(IDSDaemon *)self _shouldForgetCachedPeerTokensForIncomingRemoteDecryptionErrorType:v23, v43])
  {
    v33 = +[IDSPeerIDManager sharedInstance];
    [v33 forgetPeerTokensForURI:v18 fromURI:v19 service:v50 reason:2];
  }

  v34 = [(IDSDaemon *)self _shouldDropMessageForIncomingErrorMessageWithDecryptionErrorType:v23];
  if (v23 <= 499)
  {
    if (v23 <= 200)
    {
      if (v23)
      {
        if (v23 == 120)
        {
          if (!v22 || v44)
          {
            v41 = +[IDSEncryptionController sharedInstance];
            [v41 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:0];
          }
        }

        else if (v23 == 200 && (!v22 || v44))
        {
          v37 = +[IDSEncryptionController sharedInstance];
          [v37 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:1];
        }
      }

      goto LABEL_69;
    }

    if (v23 > 249)
    {
      if (v23 == 250 && (!v22 || v44))
      {
        v40 = +[IDSEncryptionController sharedInstance];
        [v40 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:1];
      }

      goto LABEL_69;
    }

    if (v23 == 201)
    {
      if (!v22 || v44)
      {
        v39 = +[IDSEncryptionController sharedInstance];
        [v39 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:1];
      }

      goto LABEL_69;
    }

    if (v23 != 202)
    {
      goto LABEL_69;
    }

    [IDSDMessageStore deleteIncomingMessageWithGUID:v47];
    (*(v20 + 2))(v20, 0, 0, v34);
  }

  else
  {
    if (v23 <= 800)
    {
      if (v23 <= 600)
      {
        if (v23 == 600 && (!v22 || v44))
        {
          v35 = +[IDSEncryptionController sharedInstance];
          [v35 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:1];
        }

        goto LABEL_69;
      }

      if (v23 == 601)
      {
        if (!v22 || v44)
        {
          v42 = +[IDSEncryptionController sharedInstance];
          [v42 logRemoteDecryptionErrorForToken:v51 deviceID:0 forURI:v18 fromURI:v19 forService:v50 messageData:0 type:1];
        }

        goto LABEL_69;
      }

      if (v23 == 800)
      {
        v38 = +[IDSDGroupContextController sharedInstance];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10067816C;
        v54[3] = &unk_100BE3A20;
        v55 = v48;
        v56 = v20;
        v57 = v34;
        [v38 groupContextForProtectionSpace:0 withCompletion:v54];

        goto LABEL_70;
      }

LABEL_69:
      (*(v20 + 2))(v20, 0, 0, v34);
      goto LABEL_70;
    }

    if (v23 > 802 || v23 == 801)
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

- (id)_payloadFromDecryptedData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 _FTOptionallyDecompressData];
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

+ (BOOL)_commandIsSessionCommand:(int64_t)a3
{
  if (qword_100CBF450 != -1)
  {
    sub_10092E060();
  }

  v4 = qword_100CBF448;
  v5 = [NSNumber numberWithInteger:a3];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

+ (BOOL)_commandIsSessionGroupSessionCommand:(int64_t)a3
{
  if (qword_100CBF460 != -1)
  {
    sub_10092E074();
  }

  v4 = qword_100CBF458;
  v5 = [NSNumber numberWithInteger:a3];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

- (BOOL)_processMessagingPayloadWithCommand:(id)a3 dictionaryPayload:(id)a4 senderPushToken:(id)a5 topic:(id)a6 toURI:(id)a7 fromURI:(id)a8 peerResponseIdentifier:(id)a9 guid:(id)a10 service:(id)a11 idsMessageContext:(id)a12 messageContext:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v50 = a6;
  v47 = a7;
  v51 = a8;
  v48 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = v24;
  if (v18)
  {
    if (!v24)
    {
      v25 = objc_alloc_init(IMMessageContext);
      [v25 setShouldBoost:1];
    }

    v26 = [v22 identifier];
    v27 = v20;
    v28 = [v26 isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"];

    if (v28 && [(__CFString *)v18 integerValue]== 242)
    {
      v29 = objc_opt_class();
      v30 = sub_10001B8C4(v29, v19, IDSQuickRelayGroupSessionUUID);
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
            v33 = sub_10001B8C4(v32, v19, IDSQuickRelayDedupeTimestamp);
            v45 = v33;
            if (v33)
            {
              [v33 doubleValue];
              v34 = [v46 didProcessParticipantUpdateFrom:v20 dedupTimestamp:?];
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
                v55 = v51;
                v56 = 2112;
                v57 = v20;
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
                v53 = v18;
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
              v55 = v18;
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
          v53 = v18;
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
          v53 = v18;
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
    v27 = v20;
  }

LABEL_45:

  return v34;
}

- (BOOL)_processNonMessagingPayloadWithCommand:(id)a3 dictionaryPayload:(id)a4 senderPushToken:(id)a5 topic:(id)a6 toURI:(id)a7 fromURI:(id)a8 peerResponseIdentifier:(id)a9 guid:(id)a10 service:(id)a11 idsMessageContext:(id)a12 messageContext:(id)a13
{
  v18 = a11;
  v19 = a3;
  v20 = a4;
  v71 = a5;
  v21 = a6;
  v69 = a7;
  v22 = a8;
  v68 = a9;
  v64 = a10;
  v65 = a11;
  v70 = a12;
  v23 = a13;
  v24 = v23;
  if (!v19)
  {
    v30 = 0;
    goto LABEL_90;
  }

  if (!v23)
  {
    v24 = objc_alloc_init(IMMessageContext);
    [v24 setShouldBoost:1];
  }

  v25 = [v19 integerValue];
  v26 = [IDSDaemon _commandIsSessionCommand:v25];
  if (v25 != 232 && v26)
  {
    v27 = objc_opt_class();
    v28 = sub_10001B8C4(v27, v20, IDSDSessionMessageSessionID);
    if ([v28 length])
    {
      v29 = +[IDSDSessionController sharedInstance];
      v18 = [v29 sessionWithUniqueID:v28];

      if (v18)
      {

        goto LABEL_9;
      }

      v38 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v79 = v28;
        v80 = 2112;
        v81 = v19;
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
        v79 = v19;
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
  if (v25 > 233)
  {
    if (v25 <= 236)
    {
      if (v25 == 234)
      {
        v51 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = v22;
          v80 = 2112;
          v81 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Received decline response fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = v22;
          _IDSLogV();
        }

        v28 = [IDSDSessionController sharedInstance:v61];
        [v28 processIncomingSessionDeclineMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
      }

      else if (v25 == 235)
      {
        v49 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = v22;
          v80 = 2112;
          v81 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received cancel response fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = v22;
          _IDSLogV();
        }

        v28 = [IDSDSessionController sharedInstance:v61];
        [v28 processIncomingSessionCancelMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
      }

      else
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = v22;
          v80 = 2112;
          v81 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received session message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = v22;
          _IDSLogV();
        }

        v28 = [IDSDSessionController sharedInstance:v61];
        [v28 processIncomingSessionMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
      }

      goto LABEL_89;
    }

    if (v25 <= 238)
    {
      if (v25 == 237)
      {
        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = v22;
          v80 = 2112;
          v81 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Received session end message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = v22;
          _IDSLogV();
        }

        v28 = [IDSDSessionController sharedInstance:v61];
        [v28 processIncomingSessionEndMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
      }

      else
      {
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = IDSLoggableDescriptionForObjectOnService();
          *buf = 138412546;
          v79 = v22;
          v80 = 2112;
          v81 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received session reinitiate message fromID %@, processing message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          IDSLoggableDescriptionForObjectOnService();
          v62 = v61 = v22;
          _IDSLogV();
        }

        v28 = [IDSDSessionController sharedInstance:v61];
        [v28 processIncomingSessionReinitiateMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
      }

      goto LABEL_89;
    }

    if (v25 == 239)
    {
      goto LABEL_11;
    }

    if (v25 != 244)
    {
      goto LABEL_90;
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    v41 = [v71 rawToken];
    v42 = [v41 length];
    if (v42 && ([v22 prefixedURI], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "length")))
    {
      v43 = [v71 rawToken];
      v44 = [v22 prefixedURI];
      v28 = _IDSCopyIDForTokenWithURI();
    }

    else
    {
      v53 = v42 == 0;
      v28 = [v22 prefixedURI];
      if (v53)
      {
LABEL_84:

        v54 = [IDSURI URIWithPrefixedURI:v28 withServiceLoggingHint:v21];
        if (v28)
        {
          CFDictionarySetValue(theDict, IDSMessageContextFromIDKey, v28);
        }

        v55 = IDSMessageContextFromServerStorageKey;
        v56 = [v70 objectForKey:IDSMessageContextFromServerStorageKey];
        if (v56)
        {
          CFDictionarySetValue(theDict, v55, v56);
        }

        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100679DB0;
        v72[3] = &unk_100BDA870;
        v73 = v68;
        v74 = v21;
        v75 = v69;
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

  if ((v25 - 206) < 6)
  {
LABEL_11:
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = v22;
      v80 = 2112;
      v81 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received group session message fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = v22;
      _IDSLogV();
    }

    v28 = [IDSDSessionController sharedInstance:v61];
    [v28 processIncomingGroupSessionMessage:v20 fromToken:v71 fromURI:v22 toURI:v69 topic:v21 idsMessageContext:v70];
    goto LABEL_89;
  }

  if (v25 == 232)
  {
    v45 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = v22;
      v80 = 2112;
      v81 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Received session invitation fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = v22;
      _IDSLogV();
    }

    v28 = [IDSDSessionController sharedInstance:v61];
    [v28 processIncomingInvitationWithPayload:v20 topic:v21 fromToken:v71 fromURI:v22 toURI:v69 idsMessageContext:v70 messageContext:v24];
    goto LABEL_89;
  }

  if (v25 == 233)
  {
    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v79 = v22;
      v80 = 2112;
      v81 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received accept response fromID %@, processing message %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      IDSLoggableDescriptionForObjectOnService();
      v62 = v61 = v22;
      _IDSLogV();
    }

    v28 = [IDSDSessionController sharedInstance:v61];
    [v28 processIncomingSessionAcceptMessage:v20 fromToken:v71 fromURI:v22 idsMessageContext:v70];
    goto LABEL_89;
  }

LABEL_90:

  return v30;
}

- (BOOL)_doesNiceMessageContainValidCombination:(id)a3
{
  v3 = a3;
  v4 = [v3 originalCommand];
  v5 = [v3 command];
  v6 = v5;
  if (v4 && ([v5 isEqualToNumber:&off_100C3D138] & 1) == 0)
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

- (id)_validAccountForIncomingMessageSentToURI:(id)a3 service:(id)a4 outPseudonym:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(IDSDaemon *)self accountController];
  v37 = v8;
  v10 = [v9 accountsOnService:v8];

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
        v33 = [v15 uniqueID];
        v34 = [v15 unprefixedURIStringsFromRegistration];
        v35 = [v15 aliases];
        *buf = 138413058;
        v46 = v7;
        v47 = 2112;
        v48 = v33;
        v49 = 2112;
        v50 = v34;
        v51 = 2112;
        v52 = v35;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Checking if this message corresponds to a selected alias {toURI: %@, accountUniqueID: %@, aliasStrings: %@, aliases: %@}", buf, 0x2Au);
      }

      v17 = [v15 unprefixedURIStringsFromRegistration];
      v18 = [v7 unprefixedURI];
      v19 = [v17 containsObject:v18];

      v20 = [v15 aliases];
      v21 = [v7 unprefixedURI];
      v22 = [v20 containsObject:v21] ? objc_msgSend(v15, "isEnabled") : 0;

      v23 = [v15 dsHandle];
      v24 = [v7 prefixedURI];
      v25 = [v23 isEqualToString:v24];

      v26 = [v7 prefixedURI];
      LODWORD(v23) = [v26 _appearsToBePseudonymID];

      if (v23)
      {
        v27 = [v7 prefixedURI];
        v28 = [v15 pseudonymForPseudonymURIString:v27];

        v29 = v28 != 0;
        if (a5 && v28)
        {
          v30 = v28;
          *a5 = v28;
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

- (BOOL)_shouldRejectMessageOnCrossAccountService:(id)a3 fromSenderURI:(id)a4
{
  v6 = a4;
  if ([a3 tinkerMessagingOnly])
  {
    v7 = [(IDSDaemon *)self pairingManager];
    v8 = [v7 pairedDeviceHandlesWithPairingType:1];

    v9 = [v6 prefixedURI];
    v10 = [v8 containsObject:v9];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldRejectMessageOnFamilyService:(id)a3 fromSenderURI:(id)a4
{
  v6 = a4;
  if ([a3 isFamilyService])
  {
    v7 = [(IDSDaemon *)self familyManager];
    v8 = [v7 familyHandles];
    v9 = [v6 unprefixedURI];
    v10 = [v8 containsObject:v9];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_primaryAccountExistsForService:(id)a3 withURI:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSDaemon *)self accountController];
  v9 = [v8 accountsOnService:v7];

  if (v9 && [v9 count])
  {
    v10 = [v9 firstObject];
    v11 = [v10 primaryAccount];

    v12 = [v11 service];
    v13 = [(IDSDaemon *)self accountController];
    v14 = [v6 prefixedURI];
    v15 = [v13 accountOnService:v12 withAliasURI:v14];

    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)firewallDatabaseAllowsFromURI:(id)a3 mergeID:(id)a4 service:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[IDSFirewallEntry alloc] initWithURI:v7 andLastSeenDate:0];
  [v10 setMergeID:v9];

  v11 = +[IDSFirewallStore sharedInstance];
  v12 = [v8 controlCategory];

  LOBYTE(v12) = [v11 isAllowed:v10 category:v12];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v7 prefixedURI];
    v13 = [IMUserDefaults handleInFirewallAllowList:v14];
  }

  return v13;
}

- (BOOL)firewallDatabaseAllowsFromURI:(id)a3 mergeID:(id)a4 isDonated:(BOOL)a5 service:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [[IDSFirewallEntry alloc] initWithURI:v9 andLastSeenDate:0];
  [v12 setMergeID:v11];

  v13 = +[IDSFirewallStore sharedInstance];
  v14 = [v10 controlCategory];

  LOBYTE(v7) = [v13 isAllowed:v12 category:v14 isDonated:v7];
  if (v7)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v9 prefixedURI];
    v15 = [IMUserDefaults handleInFirewallAllowList:v16];
  }

  return v15;
}

- (BOOL)isFirewallEnabledForService:(id)a3
{
  v3 = a3;
  if (+[IMUserDefaults shouldFirewallDropForAllCategories])
  {
    v4 = [v3 allowCrossAccountMessages];
  }

  else
  {
    v4 = [v3 isFirewallEnabled];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isFirewallOnForService:(id)a3
{
  v4 = a3;
  if ([(IDSDaemon *)self isFirewallOn])
  {
    v5 = [(IDSDaemon *)self isFirewallEnabledForService:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldFirewallDropMessageForFromURI:(id)a3 mergeID:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSDaemon *)self isFirewallOnForService:v10]&& ![(IDSDaemon *)self isMessageFromSelfForFromURI:v8 service:v10])
  {
    v11 = ![(IDSDaemon *)self firewallDatabaseAllowsFromURI:v8 mergeID:v9 service:v10];
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)noteBlockedMessageFromURI:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [[IDSFirewallEntry alloc] initWithURI:v6 andLastSeenDate:0];

  v7 = +[IDSFirewallStore sharedInstance];
  v8 = [v5 controlCategory];

  [v7 addToBlockedList:v9 forCategory:v8];
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

- (BOOL)deferMessageForBatchDelivery:(id)a3 service:(id)a4
{
  v6 = a3;
  if ([a4 supportsBatchDelivery])
  {
    v7 = [(IDSDaemon *)self batchMemberMessageFromIncomingNiceMessage:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)batchMemberMessageFromIncomingNiceMessage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMessageFromSelfForFromURI:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDaemon *)self accountController];
  v9 = [v6 prefixedURI];
  v10 = [v8 accountOnService:v7 withAliasURI:v9];

  if (v10)
  {
    goto LABEL_2;
  }

  v12 = [(IDSDaemon *)self accountController];
  v13 = [v6 unprefixedURI];
  v10 = [v12 accountOnService:v7 withVettedAliasURI:v13];

  if ([v10 shouldAutoRegisterAllHandles])
  {

LABEL_6:
    v11 = [(IDSDaemon *)self _primaryAccountExistsForService:v7 withURI:v6];
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

- (void)queryHashForceUpdate:(id)a3 fromURI:(id)a4 messageUUID:(id)a5 updateHash:(id)a6 toURI:(id)a7 service:(id)a8
{
  v20 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v20 unsignedIntegerValue] == 101 && +[IMUserDefaults forceFlushOnDeliveryReceipt](IMUserDefaults, "forceFlushOnDeliveryReceipt");
  if ([IDSRegistrationCacheStateTransportPolicy shouldHandleMessageWithUpdateHash:v16 command:v20]|| v19)
  {
    [(IDSRegistrationHashProcessor *)self->_queryUpdateNotifier handleRegistrationUpdateForHash:v16 localURI:v17 remoteURI:v14 service:v18 guid:v15 forceUpdate:v19];
  }
}

- (void)_processKTPeerUpdateMessageForService:(id)a3 localURI:(id)a4 remoteURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing KTPeerUpdateMessage { service: %@ localURI: %@ remoteURI: %@ }", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = v9;
      v29 = v11;
      v25 = v8;
      _IDSLogV();
    }

    v13 = [IDSIDStatusQueryController sharedInstance:v25];
    [v13 removeCachedIDStatusForURI:v11 service:v8];

    v14 = +[IDSPeerIDManager sharedInstance];
    [v14 forgetPeerTokensForURI:v11 service:v8 reason:11];

    v15 = +[IDSKeyTransparencyVerifier sharedInstance];
    [v15 clearTransparencyCacheForService:v8 peerURI:v11];

    v16 = [(IDSDaemon *)self serviceController];
    v17 = [v16 serviceWithIdentifier:v8];

    if (v17)
    {
      v18 = +[IDSDaemon sharedInstance];
      v19 = [v17 pushTopic];
      v20 = objc_alloc_init(IMMessageContext);
      v21 = [v18 broadcasterForTopic:v19 ignoreServiceListener:1 messageContext:v20];

      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v8;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Broadcasting didFlushCacheFromKTPeerUpdateForService { service: %@ peerURI: %@ }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v26 = v8;
        v28 = v11;
        _IDSLogV();
      }

      v23 = [v11 prefixedURI];
      [v21 didFlushCacheFromKTPeerUpdateForService:v8 peerURI:v23];
    }

    else
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No idsService registered for %@ -- not broadcasting didFlushCacheFromKTPeerUpdateForService", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)_processIncomingRemoteNiceMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 storedGuid:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v182 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v229 = _os_activity_create(&_mh_execute_header, "Incoming remote message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v229, &state);
  v183 = [(IDSDaemon *)self batchMemberMessageFromIncomingNiceMessage:v12];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v183;
    if (!v183)
    {
      v17 = v12;
    }

    *buf = 138413314;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v231 = v13;
    *v232 = 2112;
    *&v232[2] = v15;
    *&v232[10] = 2112;
    *&v232[12] = @"YES";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_processIncomingRemoteMessage: %@ fromID: %@ forTopic: %@ storedGUID %@ IDSXAccountBlastdoor %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v183;
    if (!v183)
    {
      v18 = v12;
    }

    v139 = v15;
    v142 = @"YES";
    v131 = v14;
    v136 = v13;
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

  v20 = [v12 command];
  if (![(IDSDaemon *)self _isUnlistenedCommand:v20])
  {
    if ([v13 isEqualToString:IDSServiceNameiMessage])
    {
      v23 = [v12 command];
      if ([v23 integerValue] != 100)
      {
        v181 = 0;
        goto LABEL_25;
      }

      v24 = [v12 samplingUUID];
      v25 = v24 == 0;

      if (!v25)
      {
        v26 = [IDSMessageSendMetric alloc];
        v27 = [v12 pushUUID];
        v181 = [v26 initWithType:1 guid:v27 service:v13];

        v28 = [(IDSDaemon *)self currentServerTime];
        [v28 currentServerTimeInterval];
        v29 = [NSNumber numberWithDouble:?];
        v30 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys incomingReceivedKey];
        [v181 addEntry:v29 forKey:v30];

        v23 = [v12 deviceID];
        v31 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys fanoutDeviceID];
        [v181 addEntry:v23 forKey:v31];

LABEL_25:
LABEL_26:
        v32 = +[IMLockdownManager sharedInstance];
        if ([v32 isInternalInstall])
        {
          v33 = [v13 isEqualToString:@"com.apple.madrid"];

          if (v33 && +[IMUserDefaults isDroppingMadridMessages])
          {
            [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
            v34 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v14;
              *&buf[22] = 2112;
              v231 = v13;
              *v232 = 2112;
              *&v232[2] = v15;
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

        if (!v13)
        {
          [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
LABEL_248:

          goto LABEL_249;
        }

        if ([v13 isEqualToString:IDSStewieT911Topic] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", IDSStewieT911RSATopic))
        {
          goto LABEL_248;
        }

        v35 = [(IDSDaemon *)self serviceController];
        v180 = [v35 serviceWithPushTopic:v13];

        if (!v180)
        {
          v36 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Found no service for topic! %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v124 = v13;
            _IDSLogTransport();
          }
        }

        v175 = [v12 pushUUID];
        v174 = [v12 senderPushToken];
        v37 = [v12 toURI];
        v38 = [v180 IPMessageFormat];
        v168 = v38 == 1;
        if (v38 != 1)
        {
          v176 = v37;
          v42 = v14;
          v179 = v12;
          goto LABEL_74;
        }

        v39 = [NSMutableDictionary alloc];
        v40 = [v12 rawMessage];
        theDict = [v39 initWithDictionary:v40];

        v177 = [v12 receiverShortHandle];
        if (v37)
        {
          v41 = [(__CFString *)v37 prefixedURI];
          if ([v41 length])
          {
LABEL_54:

            goto LABEL_55;
          }

          if (!v177)
          {
LABEL_55:
            v172 = [v12 senderShortHandle];
            if (v14)
            {
              v45 = [v14 prefixedURI];
              if ([v45 length])
              {
                v42 = v14;
LABEL_63:

                goto LABEL_64;
              }

              if (!v172)
              {
                v42 = v14;
                goto LABEL_64;
              }
            }

            else if (!v172)
            {
              v42 = 0;
LABEL_64:
              v179 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:theDict topic:v13];

              v176 = [v179 toURI];

              v47 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                *&buf[4] = v176;
                *&buf[12] = 2112;
                *&buf[14] = v177;
                *&buf[22] = 2112;
                v231 = v42;
                *v232 = 2112;
                *&v232[2] = v172;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Incoming iML, gathering full handles toURI: %@, receiverShortHandle: %@, fromURI: %@, senderShortHandle: %@", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v137 = v42;
                v140 = v172;
                v125 = v176;
                v132 = v177;
                _IDSLogV();
              }

              if (v174 && v176 && v42)
              {
                v48 = im_primary_queue();
                v223[0] = _NSConcreteStackBlock;
                v223[1] = 3221225472;
                v223[2] = sub_10067E000;
                v223[3] = &unk_100BD7020;
                v223[4] = self;
                v224 = v174;
                v225 = v176;
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
                  *&buf[4] = v175;
                  *&buf[12] = 2112;
                  *&buf[14] = v42;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Message %@ is coming from an account that is not permited to send to this device. Sender Was: %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v126 = v175;
                  v133 = v42;
                  _IDSLogV();
                }

                [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v126] deleteIncomingMessageWithGUID:v15];
                v173 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:v175 service:v13 additionalInformation:0];
                [IDSMissingMessageMetricReporter sendMetric:v173];
                [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:v13 failureReason:&off_100C3D150 failureReasonMessage:0 generateDeliveryReceipt:0];
                goto LABEL_247;
              }

              v50 = +[IDSPeerIDManager sharedInstance];
              v51 = [v180 queryService];
              v173 = [v50 senderCorrelationIdentifierForURI:v42 fromURI:v176 service:v51];

              v52 = v42;
              if (sub_1006D6B44(v42))
              {
                v53 = [(IDSDaemon *)self accountController];
                v54 = [v42 prefixedURI];
                v55 = [v53 accountOnService:v180 withAliasURI:v54];

                if (!v55)
                {
                  v65 = sub_10067E058();
                  v66 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    v67 = @"NO";
                    *buf = 138412802;
                    *&buf[4] = v175;
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
                    v126 = v175;
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
                      *&buf[14] = v175;
                      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "URI: %@ has been allowed to bypass the blocklist, NOT dropping message %@", buf, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }

                    goto LABEL_247;
                  }

                  [(IDSDaemon *)self noteBlockedMessageFromURI:v42 service:v180];
                  [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
                  v64 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:v175 service:v13 additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v64];
                  if (v65)
                  {
                    [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:v13 failureReason:0 failureReasonMessage:0 generateDeliveryReceipt:1];
                  }

                  else
                  {
                    [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:v13 failureReason:&off_100C3D150 failureReasonMessage:0 generateDeliveryReceipt:0];
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
                  v63 = [v180 identifier];
                  *buf = 138412802;
                  *&buf[4] = v175;
                  *&buf[12] = 2112;
                  *&buf[14] = v63;
                  *&buf[22] = 2112;
                  v231 = v42;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Dropping message %@ from %@ because it is not on the cross-account allowlist and is coming from %@", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v134 = [v180 identifier];
                  v138 = v42;
                  v127 = v175;
                  _IDSLogV();
                }

                [IDSDMessageStore deleteIncomingMessageWithGUID:v15, v127, v134, v138];
                v64 = [[IDSMissingMessageMetric alloc] initWithReason:710 guid:v175 service:v13 additionalInformation:0];
                [IDSMissingMessageMetricReporter sendMetric:v64];
                [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v179 service:v13 failureReason:&off_100C3D168 failureReasonMessage:0 generateDeliveryReceipt:0];
                goto LABEL_246;
              }

              if (![(IDSDaemon *)self _doesNiceMessageContainValidCombination:v179])
              {
                [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
LABEL_247:

                v14 = v178;
                v12 = v179;
                goto LABEL_248;
              }

              v57 = [v179 expirationDate];
              v167 = v57;
              if ([v57 unsignedLongLongValue])
              {
                theDicta = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(v57, "unsignedLongLongValue")}];
                v58 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v57;
                  *&buf[12] = 2112;
                  *&buf[14] = theDicta;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Message specifies an expiration date %@ %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v127 = v57;
                  v134 = theDicta;
                  _IDSLogV();
                }

                [(__CFDictionary *)theDicta timeIntervalSinceNow:v127];
                if (v59 + 5.0 < 0.0)
                {
                  v60 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v175;
                    *&buf[12] = 2112;
                    *&buf[14] = v13;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Message %@ for topic %@ has expired! Dropping.", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v127 = v175;
                    v134 = v13;
                    _IDSLogV();
                  }

                  [IDSDMessageStore deleteIncomingMessageWithGUID:v15, v127, v134];
                  v61 = [[IDSMissingMessageMetric alloc] initWithReason:712 guid:v175 service:v13 additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v61];
                  goto LABEL_245;
                }
              }

              if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:v175 local:0 topic:v13])
              {
                v70 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v175;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Received remote message %@ is a duplicate. Ignoring.", buf, 0xCu);
                }

                v64 = v57;
                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v127 = v175;
                  _IDSLogV();
                }

                [IDSDMessageStore deleteIncomingMessageWithGUID:v15, v127];
                goto LABEL_246;
              }

              [v182 setShouldBoost:1];
              theDicta = [v179 commandContext];
              v71 = [v179 reportID];
              v72 = [v179 groupIDData];
              if (v72)
              {
                v160 = [[ENGroupID alloc] initWithDataRepresentation:v72];
              }

              else
              {
                v160 = 0;
              }

              v162 = [v179 peerResponseIdentifier];
              v163 = [v179 wantsAppAck];
              v161 = [v179 expectsPeerResponse];
              v152 = [v20 integerValue] == 104;
              v149 = [v20 integerValue] == 120;
              v73 = [v20 integerValue];
              v156 = [v20 integerValue];
              if ([v13 isEqualToString:@"com.apple.private.alloy.willow"])
              {
                v74 = [v20 integerValue];
                v75 = [v20 integerValue];
                v77 = v74 == 250 || v75 == 251;
                v154 = v77;
              }

              else
              {
                v154 = 0;
              }

              v166 = [v179 deliveryStatusContext];
              v158 = v71;
              v159 = v72;
              if ([v20 integerValue] == 101)
              {
                v78 = [v166 objectForKey:IDSSenderKeyIDCheckKey];
                v79 = v78 != 0;
              }

              else
              {
                v79 = 0;
              }

              v164 = [v179 senderPushToken];
              v80 = +[IDSTrafficMonitor sharedInstance];
              v81 = [v180 identifier];
              [v80 noteIncomingMessageForService:v81];

              v82 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v175;
                *&buf[12] = 2112;
                *&buf[14] = v13;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "INCOMING-APS_DELIVERY:%@ SERVICE:%@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v127 = v175;
                v134 = v13;
                _IDSLogV();
              }

              if (([v179 ifUnknownAction] & 3) != 0)
              {
                v83 = [(IDSDaemon *)self communicationTrustWrapper];
                v219[0] = _NSConcreteStackBlock;
                v219[1] = 3221225472;
                v219[2] = sub_10067E0D8;
                v219[3] = &unk_100BDD7B8;
                v220 = v178;
                v221 = v13;
                v222 = v180;
                [v83 donateServerTrustFor:v220 serverTrust:0 service:v221 completionHandler:v219];
              }

              v84 = [v179 certifiedDeliveryVersion];
              v85 = [v84 integerValue];

              v165 = [v179 updateHash];
              v86 = [v179 encryptedPayload];
              v87 = v176;
              v88 = v86;
              if (v79)
              {
                v89 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v175;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Received delivery receipt for sender key distribution message %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v128 = v175;
                  _IDSLogV();
                }

                [(IDSDaemon *)self _processCertifiedDeliveryReceiptForSenderKeyDistribution:v179 service:v13, v128];
                [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
                goto LABEL_244;
              }

              if (v86 && [v20 unsignedIntValue] == 101)
              {
                v90 = 1;
              }

              else
              {
                [(IDSDaemon *)self queryHashForceUpdate:v20 fromURI:v178 messageUUID:v175 updateHash:v165 toURI:v176 service:v180];
                v90 = 0;
              }

              if (v73 == 130)
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
                [IDSDMessageStore deleteIncomingMessageWithGUID:v15];
LABEL_244:

                v61 = v158;
LABEL_245:

                v64 = v167;
LABEL_246:

                goto LABEL_247;
              }

              if (v156 == 132)
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

                [(IDSDaemon *)self _processKTPeerUpdateMessageForService:v13 localURI:v176 remoteURI:v178];
                goto LABEL_186;
              }

              if (v176)
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
                v95 = [(IDSDaemon *)self _validAccountForIncomingMessageSentToURI:v176 service:v180 outPseudonym:&v218];
                v157 = v218;
                if (!v95)
                {
                  v103 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    *&buf[4] = v175;
                    *&buf[12] = 2112;
                    *&buf[14] = v15;
                    *&buf[22] = 2112;
                    v231 = v176;
                    *v232 = 2112;
                    *&v232[2] = v179;
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "Processing received message for which we couldn't find a relevant account, cleaning it up. { messageUUID: %@, storedGuid: %@, toURI: %@, message: %@ }", buf, 0x2Au);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    _IDSWarnV();
                    _IDSLogV();
                    v138 = v176;
                    v141 = v179;
                    v128 = v175;
                    v135 = v15;
                    _IDSLogTransport();
                  }

                  [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v128] deleteIncomingMessageWithGUID:v15];
                  v104 = [[IDSMissingMessageMetric alloc] initWithReason:702 guid:v175 service:v13 additionalInformation:0];
                  [IDSMissingMessageMetricReporter sendMetric:v104];
                  if (v85 >= 1)
                  {
                    v105 = [v179 certifiedDeliveryRTS];
                    if (!v105)
                    {
                      v106 = OSLogHandleForIDSCategory();
                      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        *&buf[4] = v175;
                        *&buf[12] = 2048;
                        *&buf[14] = v85;
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
                    v108 = [v164 rawToken];
                    v109 = [v107 initWithGUID:v175 service:v13 certifiedDeliveryVersion:v85 certifiedDeliveryRTS:v105 senderToken:v108];

                    v110 = [[IDSCertifiedDeliveryReceiptMessage alloc] initWithCertifiedDeliveryContext:v109];
                    v111 = +[IDSDeliveryController sharedInstance];
                    v216[0] = _NSConcreteStackBlock;
                    v216[1] = 3221225472;
                    v216[2] = sub_10067E304;
                    v216[3] = &unk_100BD9D10;
                    v112 = v109;
                    v217 = v112;
                    [v111 sendIDSMessage:v110 service:0 topic:v13 completionBlock:v216];
                  }

                  goto LABEL_243;
                }

                v87 = v176;
                v94 = v157;
              }

              v187[0] = _NSConcreteStackBlock;
              v187[1] = 3221225472;
              v187[2] = sub_10067E444;
              v187[3] = &unk_100BE3CA8;
              v188 = v183;
              v155 = v179;
              v189 = v155;
              v96 = v13;
              v190 = v96;
              v191 = v181;
              v192 = self;
              v146 = v180;
              v193 = v146;
              v147 = v175;
              v194 = v147;
              v145 = v178;
              v195 = v145;
              v144 = v87;
              v196 = v144;
              v197 = v164;
              v198 = v20;
              v199 = v162;
              v200 = v163;
              v201 = v161;
              v212 = v90;
              v202 = v148;
              v203 = v173;
              v213 = v168;
              v204 = theDicta;
              v157 = v94;
              v205 = v157;
              v206 = v159;
              v207 = v166;
              v143 = v182;
              v208 = v143;
              v209 = v160;
              v214 = v149;
              v210 = v158;
              v211 = v85;
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

              v100 = [(IDSDaemon *)self _isUnderFirstDataProtectionLock];
              if (v15 || ([v146 shouldHaveRestrictedStorage] & 1) != 0)
              {
                if (v100)
                {
                  v101 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v147;
                    *&buf[12] = 2112;
                    *&buf[14] = v15;
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
                    *&buf[4] = v15;
                    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Processing message for stored guid %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }

                  (v98[2])(v98, v15, 1, 1);
                }
              }

              else
              {
                v113 = [(IDSDaemon *)self serviceController];
                v114 = [v113 serviceWithPushTopic:v96];

                v115 = [v114 dataProtectionClass];
                v153 = [v155 encryptedPayload];
                if (v100)
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

                  v117 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:v115, v129];
                  v150 = [v155 rawMessage];
                  v118 = [v145 prefixedURI];
                  v119 = [v114 controlCategory];
                  BYTE4(v130) = [(IDSDaemon *)self _dedupBehaviorForNiceMessage:v155];
                  LODWORD(v130) = v119;
                  [v117 storeIncomingMessage:v150 forTopic:v96 fromID:v118 messageUUID:v147 messagePayload:v153 isLocal:0 controlCategory:v130 dedupBehavior:0 completionBlock:?];

                  [(IDSDaemon *)self _sendCertifiedDeliveryReceiptIfNeededForNiceMessage:v155 service:v96 failureReason:&off_100C3D1B0 failureReasonMessage:0 generateDeliveryReceipt:0];
                  if ([v146 wantsPendingMessageUpdates])
                  {
                    [(IDSDaemon *)self _broadcastPendingMessageUpdateForNiceMessage:v155 fromURI:v145 toURI:v144 forTopic:v96 messageContext:v143];
                  }
                }

                else
                {
                  v120 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:v115];
                  v151 = [v155 rawMessage];
                  v121 = [v145 prefixedURI];
                  v122 = [v114 controlCategory];
                  BYTE4(v129) = [(IDSDaemon *)self _dedupBehaviorForNiceMessage:v155];
                  LODWORD(v129) = v122;
                  [v120 storeIncomingMessage:v151 forTopic:v96 fromID:v121 messageUUID:v147 messagePayload:v153 isLocal:0 controlCategory:v129 dedupBehavior:v98 completionBlock:?];
                }
              }

              v104 = v188;
LABEL_243:

              v88 = v148;
              goto LABEL_244;
            }

            v46 = +[IDSPeerIDManager sharedInstance];
            v42 = [v46 uriForShortHandle:v172];

            v45 = [v42 prefixedURI];
            if (v45)
            {
              CFDictionarySetValue(theDict, IDSSenderIDKey, v45);
            }

            goto LABEL_63;
          }
        }

        else if (!v177)
        {
          goto LABEL_55;
        }

        v43 = +[IDSPeerIDManager sharedInstance];
        v41 = [v43 uriForShortHandle:v177];

        v44 = [v41 prefixedURI];
        if (v44)
        {
          CFDictionarySetValue(theDict, IDSReceiverIDKey, v44);
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
    v22 = [v12 pushUUID];
    *buf = 138412802;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v231 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "_processIncomingRemoteMessage: %@ on topic %@ with command %@ we aren't listening for. Dropping.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v12 pushUUID];
    v132 = v13;
    v124 = v137 = v20;
    _IDSLogV();
  }

  [(objc_class *)[(IDSDaemon *)self _messageStoreClass:v124] deleteIncomingMessageWithGUID:v15];
LABEL_249:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)broadcastBatchMessage:(id)a3 topic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDaemon *)self serviceController];
  v9 = [v8 serviceWithPushTopic:v7];

  if ([v9 supportsBatchDelivery])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
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
    v11 = v6;
    v24 = v11;
    v12 = v7;
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
    v21 = self;
    v22 = v13;
    v20 = v12;
    v16 = kIDSMessagingEntitlement;
    v17 = v13;
    [(IDSDaemon *)self enqueueBroadcast:v18 forTopic:v20 entitlement:v16 command:0 capabilities:v15 messageContext:v14];
  }
}

- (void)_broadcastPendingMessageUpdateForNiceMessage:(id)a3 fromURI:(id)a4 toURI:(id)a5 forTopic:(id)a6 messageContext:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [v15 command];
  v17 = [v15 encryptedPayload];
  v18 = [v15 pushUUID];

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (v16)
  {
    CFDictionarySetValue(v19, IDSMessageContextOriginalCommandKey, v16);
  }

  v36 = v16;
  v21 = [v12 prefixedURI];
  if (v21)
  {
    CFDictionarySetValue(v20, IDSMessageContextToIDKey, v21);
  }

  v33 = kIDSListenerCapConsumesLaunchOnDemandPendingMessageUpdates;

  v22 = [v11 prefixedURI];
  if (v22)
  {
    CFDictionarySetValue(v20, IDSMessageContextFromIDKey, v22);
  }

  v35 = v17;

  v23 = [NSNumber numberWithBool:v17 != 0];
  if (v23)
  {
    CFDictionarySetValue(v20, IDSMessageContextMessageHadEncryptedData, v23);
  }

  [v14 setShouldBoost:1];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1006879E0;
  v41[3] = &unk_100BDA870;
  v24 = v18;
  v42 = v24;
  v25 = v13;
  v43 = v25;
  v44 = v12;
  v45 = v11;
  v46 = v20;
  v26 = v20;
  v27 = v11;
  v28 = v12;
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
  [(IDSDaemon *)self enqueueBroadcast:v37 forTopic:v30 entitlement:v29 command:0 capabilities:v33 messageContext:v14];
}

- (void)_processIncomingRemoteResourceTransferMessage:(id)a3 forceDownload:(BOOL)a4 guid:(id)a5 context:(id)a6 specificOriginatorURI:(id)a7 broadcastTopic:(id)a8 toURI:(id)a9 topic:(id)a10 messageContext:(id)a11
{
  v15 = a4;
  v61 = a3;
  key = a5;
  v58 = a6;
  v54 = a7;
  v55 = a8;
  v57 = a9;
  v62 = a10;
  v56 = a11;
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
    v19 = [v61 objectForKey:IDSIncomingMessageDecryptedDataKey];
    v20 = v19;
    v21 = @"NO";
    if (v15)
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
      if (v15)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      [v61 objectForKey:IDSIncomingMessageDecryptedDataKey];
      v48 = v47 = v24;
      _IDSLogV();
    }
  }

  else
  {
    v23 = IDSIncomingMessageDecryptedDataKey;
  }

  v25 = [v61 objectForKey:{v23, v47, v48}];
  v26 = JWDecodeDictionary();

  v53 = [(__CFString *)v26 _dictionaryForKey:@"attach-meta"];
  v27 = [(__CFString *)v26 _dictionaryForKey:@"attach-mmcs-dict"];
  v59 = [[IDSServiceProperties alloc] initWithServiceIdentifier:v62];
  if ([v59 wantsPendingResourceUpdates] && !v15)
  {
    v28 = [v27 _numberForKey:@"file-size"];
    v29 = [v28 integerValue];

    v30 = [v58 mutableCopy];
    v31 = [NSNumber numberWithInteger:v29];
    [v30 setObject:v31 forKeyedSubscript:IDSMessageContextFileSize];

    if (!self->_pendingIncomingResources)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      pendingIncomingResources = self->_pendingIncomingResources;
      self->_pendingIncomingResources = Mutable;
    }

    v34 = objc_alloc_init(IDSPendingIncomingResourceTransfer);
    [(IDSPendingIncomingResourceTransfer *)v34 setTopLevelPayload:v61];
    [(IDSPendingIncomingResourceTransfer *)v34 setGuid:key];
    [(IDSPendingIncomingResourceTransfer *)v34 setContext:v58];
    [(IDSPendingIncomingResourceTransfer *)v34 setSpecificOriginatorURI:v54];
    [(IDSPendingIncomingResourceTransfer *)v34 setBroadcastTopic:v55];
    [(IDSPendingIncomingResourceTransfer *)v34 setToURI:v57];
    [(IDSPendingIncomingResourceTransfer *)v34 setTopic:v62];
    [(IDSPendingIncomingResourceTransfer *)v34 setMessageContext:v56];
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
    v36 = v55;
    v81 = v36;
    v82 = v57;
    v83 = v54;
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
    [(IDSDaemon *)self enqueueBroadcast:v73 forTopic:v75 entitlement:kIDSMessagingEntitlement command:v39 capabilities:kIDSListenerCapConsumesLaunchOnDemandPendingResource messageContext:v56];

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
    v49 = [v42 integerValue];

    v52 = [v27 _stringForKey:@"mmcs-signature-hex"];
    v38 = [v27 _stringForKey:@"mmcs-url"];
    v40 = [v27 _stringForKey:@"mmcs-owner"];
    v43 = +[NSFileManager defaultManager];
    v44 = [v43 _randomTemporaryPathWithSuffix:0];

    v45 = [v59 dataUsageBundleID];
    v51 = [(IDSDaemon *)self _IMTransferServiceController];
    v50 = +[NSString stringGUID];
    v46 = [v52 _FTDataFromHexString];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100688760;
    v63[3] = &unk_100BE3D70;
    v64 = key;
    v65 = v26;
    v66 = v58;
    v67 = v55;
    v68 = v57;
    v69 = v54;
    v70 = self;
    v71 = v62;
    v72 = v56;
    [v51 receiveFileTransfer:v50 topic:v67 path:v44 requestURLString:v38 ownerID:v40 sourceAppID:v45 signature:v46 decryptionKey:v34 fileSize:v49 progressBlock:0 completionBlock:v63];

LABEL_31:
  }
}

- (void)_handleIncomingPushNiceMessage:(id)a3 forTopic:(id)a4 fromURI:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v46 = a5;
  v12 = a6;
  [(IDSDaemon *)self _sendNiceMessageCheckpointIfNecessary:v10 checkpoint:9100 service:v11 additionalInformation:0];
  v13 = [v10 storageFlags];
  v14 = [v10 command];
  v15 = [v13 unsignedIntValue];
  v16 = [v13 unsignedIntValue];
  if (v16)
  {
    v17 = [(IDSDaemon *)self serverStorageStateMachine];
    [v17 receivedMessageFromStorageForTopic:v11];
  }

  v18 = v15 & 2;
  if ((v15 & 2) != 0)
  {
    v19 = [(IDSDaemon *)self serverStorageStateMachine];
    [v19 receivedLastMessageFromStorageForTopic:v11];

    if ([v14 integerValue] == 255)
    {
      [(IDSDaemon *)self _noteLastItemFromStorage:0];
      goto LABEL_34;
    }

LABEL_9:
    v20 = [(IDSDaemon *)self serviceController];
    v45 = [v20 serviceWithPushTopic:v11];

    v42 = [v45 dataProtectionClass];
    v21 = [(IDSDaemon *)self systemMonitor];
    v22 = v12;
    v23 = [v21 isUnderFirstDataProtectionLock];

    v24 = v45;
    if (!v23 || [v45 dataProtectionClass] || (objc_msgSend(v45, "shouldHaveRestrictedStorage") & 1) != 0)
    {
      if (([v45 passThroughMessagesFromStorage] & 1) != 0 || objc_msgSend(v45, "shouldHaveRestrictedStorage"))
      {
        v25 = self;
        v26 = v10;
        v27 = v11;
        v28 = v46;
        v12 = v22;
LABEL_15:
        [(IDSDaemon *)v25 _processIncomingRemoteNiceMessage:v26 forTopic:v27 fromURI:v28 storedGuid:0 messageContext:v22];
LABEL_33:

        goto LABEL_34;
      }

      v29 = [(IDSDaemon *)self _isBulkingStorageMessagesForService:v11];
      if ((v16 & 1) == 0 && (v29 & 1) == 0 && !v18)
      {
        v12 = v22;
        v25 = self;
        v26 = v10;
        v27 = v11;
        v28 = v46;
        goto LABEL_15;
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.opaque[0]) = 138412290;
        *(buf.opaque + 4) = v10;
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
      v31 = v10;
      v51 = v18 >> 1;
      v12 = v22;
      v48 = v31;
      v49 = self;
      v50 = v22;
      v32 = objc_retainBlock(v47);
      v43 = [(IDSDaemon *)self _messageStoreForDataProtectionClass:v42];
      v41 = [v31 rawMessage];
      v40 = [v46 prefixedURI];
      v39 = [v31 pushUUID];
      v33 = [v31 encryptedPayload];
      [v43 storeIncomingMessage:v41 forTopic:v11 fromID:v40 messageUUID:v39 messagePayload:v33 dedupBehavior:-[IDSDaemon _dedupBehaviorForNiceMessage:](self completionBlock:{"_dedupBehaviorForNiceMessage:", v31), v32}];
    }

    else
    {
      v53 = _os_activity_create(&_mh_execute_header, "Storing under first lock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      memset(&buf, 170, sizeof(buf));
      os_activity_scope_enter(v53, &buf);
      v34 = OSLogHandleForIDSCategory();
      v12 = v22;
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
      v36 = [v10 rawMessage];
      v44 = [v46 prefixedURI];
      v37 = [v10 pushUUID];
      v38 = [v10 encryptedPayload];
      [v35 storeIncomingMessage:v36 forTopic:v11 fromID:v44 messageUUID:v37 messagePayload:v38 dedupBehavior:-[IDSDaemon _dedupBehaviorForNiceMessage:](self completionBlock:{"_dedupBehaviorForNiceMessage:", v10), 0}];

      os_activity_scope_leave(&buf);
      cut_arc_os_release();
    }

    v24 = v45;
    goto LABEL_33;
  }

  if ([v14 integerValue] != 255)
  {
    goto LABEL_9;
  }

  if (v16)
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

- (void)_updateStorageTimerWithInterval:(double)a3
{
  if (a3 > 0.0)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a3;
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
    v10 = [v8 initWithQueue:v9 interval:a3 repeats:0 handlerBlock:v12];
    v11 = self->_storageTimer;
    self->_storageTimer = v10;
  }
}

- (void)_noteItemFromStorage:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Noting item from storage (%@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = v4;
    _IDSLogV();
  }

  if (!self->_messagesReceivedDuringStorage)
  {
    v6 = objc_alloc_init(NSMutableSet);
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = v6;
  }

  if (v4)
  {
    [(NSMutableSet *)self->_messagesReceivedDuringStorage addObject:v4];
  }

  [(IDSDaemon *)self _updateStorageTimerWithInterval:15.0, v8];
}

- (void)_noteLastItemFromStorage:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Noting last item from storage (%@)", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = v4;
    _IDSLogV();
  }

  if (!self->_messagesReceivedDuringStorage)
  {
    v6 = objc_alloc_init(NSMutableSet);
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = v6;
  }

  if (v4)
  {
    [(NSMutableSet *)self->_messagesReceivedDuringStorage addObject:v4];
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
  v3 = [(IDSDaemon *)self _cleanupFrequencyForRestrictedMessages];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = v3;
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
  v9 = [v7 initWithQueue:v8 interval:v3 repeats:1 handlerBlock:v11];
  storageTimer = self->_storageTimer;
  self->_storageTimer = v9;
}

- (BOOL)_isBulkingStorageMessagesForService:(id)a3
{
  if (!self->_storageTimer)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IDSDaemon *)self serverStorageStateMachine];
  v6 = [v5 inflightServerStorageStateMachineForTopic:v4];

  return v6;
}

- (void)networkStateChangedForLogTransportHint:(id)a3
{
  v20 = a3;
  v4 = [v20 name];
  v5 = [v4 isEqualToString:IMNetworkChangedNotification];

  if (v5)
  {
    v19 = [v20 userInfo];
    v6 = [v19 objectForKeyedSubscript:IMNetworkChangedNotificationNetworkAvailableKey];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [(IDSDaemon *)self serviceController];
      v9 = [v8 allServices];

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
              objc_enumerationMutation(v9);
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
              v17 = [v15 pushTopic];
              [(IDSDaemon *)self enqueueBroadcast:v21 forTopic:v17 entitlement:v12 command:0 capabilities:v13 messageContext:0];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)handler:(id)a3 isConnectedChanged:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSPushHandler signaled isConnected %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v90 = a3;
  v93 = a4;
  v12 = a5;
  v13 = a6;
  v92 = a7;
  v89 = v13;
  v91 = [IDSURI URIWithPrefixedURI:v13 withServiceLoggingHint:v12];
  v14 = [[IDSIncomingNiceMessage alloc] initWithMessageDictionary:v93 topic:v12];
  v15 = [v14 command];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v118 = v90;
    v119 = 2112;
    v120 = v14;
    v121 = 2112;
    *v122 = v91;
    *&v122[8] = 2112;
    *v123 = v12;
    *&v123[8] = 2048;
    v124 = v92;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handler %@ didReceiveMessage: %@ fromURI: %@ forTopic: %@ context: %p", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v69 = v12;
    v72 = v92;
    v63 = v14;
    v66 = v91;
    v59 = v90;
    _IDSLogV();
  }

  v17 = [(IDSDaemon *)self serviceController:v59];
  v18 = [v17 serviceWithPushTopic:v12];

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v14 pushUUID];
    v21 = [v18 constraintType];
    v22 = [v18 allowedCommandGroup];
    *buf = 138413314;
    v118 = v20;
    v119 = 2112;
    v120 = v12;
    v121 = 1024;
    *v122 = v21;
    *&v122[4] = 1024;
    *&v122[6] = v22;
    *v123 = 2112;
    *&v123[2] = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enforcing incoming push constraint for %@ Service %@ ConstraintType %u AllowedCommandGroups %u IncomingCommand %@", buf, 0x2Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v23 = [v14 pushUUID];
    v24 = [v18 constraintType];
    v70 = [v18 allowedCommandGroup];
    v73 = v15;
    v64 = v12;
    v67 = v24;
    v60 = v23;
    _IDSLogV();
  }

  v25 = [v15 intValue];
  v26 = [v14 fromURI];
  v27 = [(IDSDaemon *)self _shouldDropCommand:v25 senderURI:v26 forService:v18];

  if (!v27)
  {
    if ([(IDSDaemon *)self _isUnlistenedCommand:v15])
    {
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v14 pushUUID];
        *buf = 138412802;
        v118 = v31;
        v119 = 2112;
        v120 = v12;
        v121 = 2112;
        *v122 = v15;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "didReceiveMessage: %@ on topic %@ with command %@ we aren't listening for. Dropping.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        goto LABEL_16;
      }

      goto LABEL_62;
    }

    v32 = [(IDSDaemon *)self serverStorageStateMachine];
    [v32 logCurrentStateForTopic:v12];

    v88 = [v14 serverStorageSSM];
    v33 = [v18 ignoreServerStorageSSM];
    v84 = [v14 pushUUID];
    v87 = [v14 batchNumber];
    v86 = [v14 totalBatchCount];
    v85 = [v14 storageFlags];
    v34 = [v85 unsignedIntValue];
    v35 = [v85 unsignedIntValue];
    v77 = v34 & 1;
    if (v33)
    {
      v36 = 0;
    }

    else if (v88)
    {
      v36 = v34 & 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
    if (v87 && v86)
    {
      v37 = [v87 isEqualToNumber:v86];
    }

    v38 = [v18 supportsBatchDelivery];
    if ([v18 supportsBatchDelivery])
    {
      v76 = 0;
      if (!v36)
      {
LABEL_36:
        v40 = [v14 messageList];

        v79 = v35 & 2;
        v41 = v38 & v36;
        if (v40)
        {
          v81 = v41;
          v42 = [v14 messageList];
          v43 = [v42 __imArrayByFilteringWithBlock:&stru_100BE3DE0];

          v44 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v43 count];
            v46 = @"YES";
            *buf = 138413570;
            v118 = v84;
            if ((v35 & 2) == 0)
            {
              v46 = @"NO";
            }

            v119 = 2112;
            v120 = v88;
            v121 = 2112;
            *v122 = v87;
            *&v122[8] = 2112;
            *v123 = v86;
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
            [(IDSDaemon *)self _handleIncomingPushNiceMessage:v14 forTopic:v12 fromURI:v91 messageContext:v92];
LABEL_61:

            goto LABEL_62;
          }

          v81 = v41;
          v47 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = @"YES";
            *buf = 138413314;
            v118 = v84;
            if (!v79)
            {
              v48 = @"NO";
            }

            v119 = 2112;
            v120 = v88;
            v121 = 2112;
            *v122 = v87;
            *&v122[8] = 2112;
            *v123 = v86;
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

            v71 = v86;
            v74 = v49;
            v65 = v88;
            v68 = v87;
            v61 = v84;
            _IDSLogV();
          }

          v50 = [v14 rawMessage];
          v116 = v50;
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
        v53 = v12;
        v107 = v53;
        v108 = self;
        v115 = v81;
        v54 = v84;
        v109 = v54;
        v110 = v51;
        v80 = v52;
        v111 = v80;
        v112 = v92;
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
          v97 = v88;
          v101 = v75;
          v98 = v87;
          v99 = v86;
          v100 = self;
          [v58 registerResultBlock:v94];
        }

        else if (v76)
        {
          v83 = [(IDSDaemon *)self serverStorageStateMachine];
          [v83 sendBatchProcessedForTopic:v53];
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

    v39 = [(IDSDaemon *)self serverStorageStateMachine];
    [v39 noteReceivedSSMForTopic:v12 ssm:v88];

    goto LABEL_36;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v14 pushUUID];
    *buf = 138412290;
    v118 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Dropping message %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
LABEL_16:
    v62 = [v14 pushUUID];
    _IDSLogV();
  }

LABEL_62:
}

- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "receivedOfflineMessagePendingForTopic: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v9;
    _IDSLogV();
  }

  [(IDSDaemon *)self _updateStorageTimerWithInterval:15.0, v14];
  v12 = [(IDSDaemon *)self serverStorageStateMachine];
  [v12 incomingStorageRequestForTopic:v9 primary:1 messageContext:v10 sendReasonPathID:26];

  v13 = [(IDSDaemon *)self serverStorageStateMachine];
  [v13 receivedStorageRequestForTopic:v9];
}

- (void)handler:(id)a3 receivedNoStorageResponseForTopic:(id)a4 identifier:(id)a5 messageContext:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = [(IDSDaemon *)self serverStorageStateMachine];
  [v10 receivedNoStorageResponseForTopic:v9 messageContext:v8];
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forUnknownTopic:(id)a5 messageContext:(id)a6
{
  v15 = a4;
  v7 = IDSUUIDKey;
  v8 = a5;
  v9 = [v15 objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v15 objectForKey:v7];
    v11 = [NSData _IDSDataFromBase64String:v10];
LABEL_5:
    v12 = v11;
    v13 = JWUUIDPushObjectToString();

    goto LABEL_7;
  }

  v10 = [v15 objectForKey:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v15 objectForKey:v7];
    goto LABEL_5;
  }

  v13 = JWUUIDPushObjectToString();
LABEL_7:

  v14 = [[IDSMissingMessageMetric alloc] initWithReason:707 guid:v13 service:v8 additionalInformation:0];
  [IDSMissingMessageMetricReporter sendMetric:v14];
}

- (id)_decryptAOverCMessage:(id)a3 topic:(id)a4 fromDeviceID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[IDSCurrentDevice sharedInstance];
  v13 = [v12 encryptionClassAKey];

  if (v13)
  {
    v20 = 0;
    v14 = [IDSEncryptionHelpers decryptLocalDeliveryPayload:v9 forService:v10 withDataProtectionClass:1 fromDevice:v11 encryptionType:1 priority:300 error:&v20];
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

      if (a6)
      {
        v18 = v15;
        *a6 = v15;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isUnlistenedCommand:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(IDSDaemon *)self _commands];
  LOBYTE(self) = [v5 containsObject:v4];

  v6 = self ^ 1;
  return v6;
}

- (BOOL)_shouldDropCommand:(int64_t)a3 senderURI:(id)a4 forService:(id)a5
{
  v8 = a4;
  v9 = a5;
  LODWORD(a3) = [(IDSDaemon *)self commandGroupForCommand:a3];
  v10 = ([v9 allowedCommandGroup] & a3) == 0 || objc_msgSend(v9, "constraintType") == 3 && !-[IDSContactsUtilities doesContactMatchingURIExists:](self->_contactsUtilities, "doesContactMatchingURIExists:", v8);

  return v10;
}

- (unsigned)commandGroupForCommand:(int64_t)a3
{
  if ((a3 - 100) > 0x95)
  {
    return 128;
  }

  else
  {
    return dword_1009AC054[a3 - 100];
  }
}

- (void)deliveryController:(id)a3 didReceiveMessage:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 messageID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
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
  v27 = v16;
  v28 = v17;
  v29 = v15;
  v30 = v18;
  v22 = v18;
  v23 = v15;
  v24 = v17;
  v25 = v16;
  dispatch_async(v21, block);
}

- (id)_incomingMessageStorageDictionaryForPayload:(id)a3 topic:(id)a4 deviceID:(id)a5 btUUID:(id)a6 command:(id)a7 messageUUID:(id)a8 sequenceNumber:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12
{
  v29 = a3;
  v17 = a4;
  v30 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a12;
  if ([v17 length])
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = v24;
    if (v20)
    {
      CFDictionarySetValue(v24, IDSMessageContextOutgoingResponseIdentifierKey, v20);
    }

    if (v22)
    {
      CFDictionarySetValue(v25, IDSMessageContextIncomingResponseIdentifierKey, v22);
    }

    v26 = [NSNumber numberWithBool:a11];
    if (v26)
    {
      CFDictionarySetValue(v25, IDSMessageContextExpectsPeerResponseKey, v26);
    }

    if (a10)
    {
      CFDictionarySetValue(v25, IDSMessageContextWantsAppAckKey, &__kCFBooleanTrue);
    }

    if (v21)
    {
      CFDictionarySetValue(v25, IDSMessageContextSequenceNumberKey, v21);
    }

    if (v25)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageContext", v25);
    }

    if (v29)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessagePayload", v29);
    }

    if (v17)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageService", v17);
    }

    if (v30)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageDeviceID", v30);
    }

    if (v18)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageBTUUID", v18);
    }

    if (v19)
    {
      CFDictionarySetValue(v23, @"IDSIncomingLocalMessageCommand", v19);
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

- (BOOL)_shouldStoreBeforeFirstUnlockIncomingLocalMessage:(id)a3 from:(id)a4 forTopic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && [v10 length])
  {
    v12 = [(IDSDaemon *)self serviceController];
    v13 = [v12 serviceWithPushTopic:v11];

    if (!sub_100019928([v13 shouldProtectTrafficUsingClassA], objc_msgSend(v13, "dataProtectionClass"), v11))
    {
      goto LABEL_11;
    }

    v14 = +[IDSPairingManager sharedInstance];
    v15 = [v14 pairedDeviceUniqueID];
    v16 = [IDSEncryptionHelpers areDataProtectionKeysAvailableForService:v11 withDataProtectionClass:1 fromDevice:v15];

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
      [v21 storeIncomingMessage:v8 forTopic:v24 fromID:v9 messageUUID:0 messagePayload:0 isLocal:1 dedupBehavior:v22 completionBlock:v23];

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

- (void)deliveryController:(id)a3 protobufReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17
{
  v45 = a3;
  v48 = a4;
  v23 = a5;
  v49 = a6;
  v24 = a7;
  v47 = a8;
  v25 = a9;
  v46 = a12;
  v26 = a13;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v70 = v48;
    v71 = 2112;
    v72 = v23;
    v73 = 2112;
    v74 = v49;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming protobuf %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v42 = v23;
      v44 = v49;
      v41 = v48;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v42 = v23;
        v44 = v49;
        v41 = v48;
        _IDSLogV();
      }
    }
  }

  if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:v26 local:1 topic:v23, v41, v42, v44])
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v26;
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
    v63 = v23;
    v64 = v25;
    v65 = v24;
    v67 = a14;
    v68 = a16;
    v66 = v26;
    v30 = v26;
    v31 = v24;
    v32 = v25;
    v33 = v23;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v29, v34);
  }

  else
  {
    v35 = [v48 dictionaryRepresentation];
    LOWORD(v43) = __PAIR16__(a11, a10);
    v36 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:v35 topic:v23 deviceID:v24 btUUID:v47 command:v49 messageUUID:v26 sequenceNumber:v25 wantsAppAck:v43 expectsPeerResponse:v46 peerResponseIdentifier:?];

    v37 = im_primary_queue();
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10068D9B4;
    v50[3] = &unk_100BE3EC0;
    v50[4] = self;
    v51 = v23;
    v52 = v36;
    v53 = v47;
    v54 = v25;
    v59 = a14;
    v60 = a16;
    v55 = v24;
    v56 = v26;
    v57 = v48;
    v58 = v49;
    v61 = a17;
    v38 = v26;
    v30 = v24;
    v31 = v25;
    v32 = v36;
    v39 = v23;
    v40 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v50);
    dispatch_async(v37, v40);
  }
}

- (void)deliveryController:(id)a3 dataReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17
{
  v44 = a3;
  v47 = a4;
  v23 = a5;
  v48 = a6;
  v24 = a7;
  v46 = a8;
  v25 = a9;
  v45 = a12;
  v26 = a13;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v69 = v47;
    v70 = 2112;
    v71 = v23;
    v72 = 2112;
    v73 = v48;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming data %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v41 = v23;
      v43 = v48;
      v40 = v47;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v41 = v23;
        v43 = v48;
        v40 = v47;
        _IDSLogV();
      }
    }
  }

  if ([(IDSDaemon *)self _checkIfDupeAndNoteGuid:v26 local:1 topic:v23, v40, v41, v43])
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v26;
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
    v62 = v23;
    v63 = v25;
    v64 = v24;
    v66 = a14;
    v67 = a16;
    v65 = v26;
    v30 = v26;
    v31 = v24;
    v32 = v25;
    v33 = v23;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v29, v34);
  }

  else
  {
    LOWORD(v42) = __PAIR16__(a11, a10);
    v35 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:v47 topic:v23 deviceID:v24 btUUID:v46 command:v48 messageUUID:v26 sequenceNumber:v25 wantsAppAck:v42 expectsPeerResponse:v45 peerResponseIdentifier:?];
    v36 = im_primary_queue();
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10068E3BC;
    v49[3] = &unk_100BE3EC0;
    v49[4] = self;
    v50 = v23;
    v51 = v35;
    v52 = v46;
    v53 = v25;
    v58 = a14;
    v59 = a16;
    v54 = v24;
    v55 = v26;
    v56 = v47;
    v57 = v48;
    v60 = a17;
    v37 = v26;
    v30 = v24;
    v31 = v25;
    v32 = v35;
    v38 = v23;
    v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v49);
    dispatch_async(v36, v39);
  }
}

- (void)deliveryController:(id)a3 messageReceived:(id)a4 topic:(id)a5 command:(id)a6 deviceID:(id)a7 btUUID:(id)a8 messageID:(id)a9 wantsAppAck:(BOOL)a10 expectsPeerResponse:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 priority:(int64_t)a14 isCompressed:(BOOL)a15 connectionType:(int64_t)a16 didWakeHint:(BOOL)a17
{
  v48 = a3;
  v52 = a4;
  v23 = a5;
  v24 = a6;
  v50 = a7;
  v49 = a8;
  v51 = a9;
  v25 = a12;
  v26 = a13;
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = v52;
    v74 = 2112;
    v75 = v23;
    v76 = 2112;
    v77 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Incoming message %p on service %@ command %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v46 = v23;
      v47 = v24;
      v45 = v52;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v46 = v23;
        v47 = v24;
        v45 = v52;
        _IDSLogV();
      }
    }
  }

  if (-[IDSDaemon _checkIfDupeAndNoteGuid:local:topic:forceNoteGuid:](self, "_checkIfDupeAndNoteGuid:local:topic:forceNoteGuid:", v26, 1, v23, +[IDSDaemon _commandIsSessionCommand:](IDSDaemon, "_commandIsSessionCommand:", [v24 integerValue])))
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v26;
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
    v68 = v23;
    v69 = v51;
    v70 = v50;
    v71[1] = a14;
    v71[2] = a16;
    v71[0] = v26;
    v30 = v51;
    v31 = v26;
    v32 = v50;
    v33 = v23;
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
    v54 = v23;
    v55 = v49;
    v56 = v50;
    v57 = v52;
    v58 = v24;
    v59 = v26;
    v60 = v51;
    v64 = a10;
    v65 = a11;
    v61 = v25;
    v62 = a14;
    v63 = a16;
    v66 = a17;
    v40 = v51;
    v41 = v26;
    v42 = v50;
    v43 = v23;
    v44 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v53);
    dispatch_async(v39, v44);

    v35 = &v54;
    v36 = &v55;
    v37 = &v56;
    v38 = &v57;
    v29 = v58;
  }
}

- (void)deliveryController:(id)a3 receivedAppLevelAckWithTopic:(id)a4 deviceID:(id)a5 btUUID:(id)a6 messageID:(id)a7 peerResponseIdentifier:(id)a8 priority:(int64_t)a9 connectionType:(int64_t)a10
{
  v29 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v16;
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
  v22 = [(IDSDaemon *)self _incomingMessageStorageDictionaryForPayload:0 topic:v16 deviceID:v17 btUUID:v18 command:&off_100C3D1C8 messageUUID:v20 sequenceNumber:v19 wantsAppAck:v28 expectsPeerResponse:v20 peerResponseIdentifier:?];
  v23 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10068F704;
  block[3] = &unk_100BE3F10;
  block[4] = self;
  v31 = v22;
  v32 = v18;
  v33 = v16;
  v34 = &off_100C3D1C8;
  v35 = v17;
  v36 = a9;
  v37 = a10;
  v24 = v17;
  v25 = v16;
  v26 = v18;
  v27 = v22;
  dispatch_async(v23, block);
}

- (void)cancelItemWithIdentifier:(id)a3 service:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 localObject];
    *buf = 138412546;
    v19 = v8;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received cancel request for message %@ from localObject %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v10 localObject];
    v17 = v16 = v8;
    _IDSLogV();
  }

  v13 = [v10 localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:v13 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v9];

  if (v14 && [v8 length])
  {
    [IDSDMessageStore deleteOutgoingMessageWithGUID:v8 alternateGUID:0];
    v15 = +[IDSUTunDeliveryController sharedInstance];
    [v15 cancelMessageID:v8];
  }
}

- (void)downloadPendingResourceWithMessageGUID:(id)a3 messageContext:(id)a4
{
  v13 = [(NSMutableDictionary *)self->_pendingIncomingResources objectForKey:a3, a4];
  v5 = [v13 topLevelPayload];
  v6 = [v13 guid];
  v7 = [v13 context];
  v8 = [v13 specificOriginatorURI];
  v9 = [v13 broadcastTopic];
  v10 = [v13 toURI];
  v11 = [v13 topic];
  v12 = [v13 messageContext];
  [(IDSDaemon *)self _processIncomingRemoteResourceTransferMessage:v5 forceDownload:1 guid:v6 context:v7 specificOriginatorURI:v8 broadcastTopic:v9 toURI:v10 topic:v11 messageContext:v12];
}

- (void)deletePendingResourceWithMessageGUID:(id)a3 messageContext:(id)a4
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    pendingIncomingResources = self->_pendingIncomingResources;
    if (pendingIncomingResources)
    {
      CFDictionaryRemoveValue(pendingIncomingResources, v5);
      v5 = v7;
    }
  }

  [IDSDMessageStore deleteIncomingMessageWithGUID:v5];
}

- (void)getProgressUpdateForIdentifier:(id)a3 service:(id)a4 messageContext:(id)a5
{
  v31 = a3;
  v29 = a4;
  v34 = a5;
  v7 = [v34 localObject];
  LODWORD(a4) = [(IDSDaemon *)self validateListenerForLocalObject:v7 andCheckEntitlement:kIDSMessagingEntitlement forAccessToServiceWithIdentifier:v29];

  if (a4 && [v31 length])
  {
    [IDSDMessageStore allOutgoingMessagesByGUID:v31];
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
          v11 = [v10 copySendParameters];
          [v11 setWantsProgress:1];
          if ([v10 sent])
          {
            v12 = +[IDSUTunDeliveryController sharedInstance];
            [v12 kickProgressBlockForMessageID:v31];
          }

          else
          {
            v13 = [v34 localObject];
            v12 = [(IDSDaemon *)self broadcasterForLocalObject:v13 messageContext:v34];

            if (v12)
            {
              v14 = objc_alloc_init(IDSDeliveryContext);
              [v14 setIdsResponseCode:0];
              [v14 setLastCall:0];
              v15 = objc_alloc_init(NSMutableDictionary);
              v16 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v11 identifier];
                v18 = [v14 idsResponseCode];
                v19 = [v14 responseError];
                *buf = 138412802;
                v40 = v17;
                v41 = 2048;
                v42 = v18;
                v43 = 2112;
                v44 = v19;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending not started update to listener on %@ with responseCode %ld error %@ - 0/0 bytes", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v20 = [v11 identifier];
                v21 = [v14 idsResponseCode];
                [v14 responseError];
                v28 = v27 = v21;
                v26 = v20;
                _IDSLogV();
              }

              v22 = [v11 identifier];
              v23 = [v11 alternateCallbackID];
              v24 = [v11 mainAccountUUID];
              v25 = [v14 responseError];
              v26 = v15;
              [v12 messageIdentifier:v22 alternateCallbackID:v23 forAccount:v24 updatedWithResponseCode:0 error:v25 lastCall:objc_msgSend(v14 context:"lastCall")];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v8);
    }
  }
}

+ (id)progressBlockForSendParameters:(id)a3 messageContext:(id)a4 topic:(id)a5 forObject:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 wantsProgress])
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
    v17 = v9;
    v18 = v10;
    v19 = v12;
    v20 = v11;
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

- (void)_ackMessageWithSequenceNumber:(unsigned int)a3 forDeviceID:(id)a4 priority:(int64_t)a5 dataProtectionClass:(unsigned int)a6 connectionType:(int64_t)a7 guid:(id)a8
{
  v10 = *&a6;
  v12 = *&a3;
  v14 = a4;
  v15 = a8;
  if (a5 == 100 || a5 == 200 || a5 == 300)
  {
    v16 = [(IDSDaemon *)self uTunDeliveryController];
    v17 = [v16 copyPeerWithID:v14];

    if ([v17 sendAckForMessageWithSequenceNumber:v12 priority:a5 dataProtectionClass:v10 connectionType:a7])
    {
      [(IDSDaemon *)self _addIncomingGUIDsWithGuid:v15 isLocal:1 hasLock:0];
    }

    else
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v21 = v12;
        v22 = 2112;
        v23 = v17;
        v24 = 2048;
        v25 = a5;
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
      v21 = a5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot ack message locally without proper priority value (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_addIncomingGUIDsWithGuid:(id)a3 isLocal:(BOOL)a4 hasLock:(BOOL)a5
{
  v6 = a4;
  v15 = a3;
  if (!a5)
  {
    pthread_mutex_lock(&self->_localIncomingGUIDsLock);
  }

  v8 = &OBJC_IVAR___IDSDaemon__remoteIncomingGUIDs;
  if (v6)
  {
    v8 = &OBJC_IVAR___IDSDaemon__localIncomingGUIDs;
  }

  v9 = *v8;
  v10 = [*(&self->super.isa + v9) first];
  v11 = [*(&self->super.isa + v9) second];
  if ([v10 containsObject:v15] & 1) != 0 || (objc_msgSend(v11, "containsObject:", v15))
  {
LABEL_10:
    if (a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v10 || [v10 count] >= 0x1F4)
  {
    v12 = [[NSMutableSet alloc] initWithObjects:{v15, 0}];
    v13 = [[IMPair alloc] initWithFirst:v12 second:v10];
    v14 = *(&self->super.isa + v9);
    *(&self->super.isa + v9) = v13;

    goto LABEL_10;
  }

  [v10 addObject:v15];
  if (!a5)
  {
LABEL_11:
    pthread_mutex_unlock(&self->_localIncomingGUIDsLock);
  }

LABEL_12:
}

- (void)acknowledgeOutgoingMessageWithGUID:(id)a3 alternateCallbackID:(id)a4 forAccountWithUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 localObject];
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received acknowledgement for outgoing message %@ alternateCallbackID %@ from localObject %p", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v13 localObject];
    v20 = v19 = v11;
    v18 = v10;
    _IDSLogV();
  }

  v16 = [v13 localObject];
  v17 = [(IDSDaemon *)self accountWithIdentifier:v12 localObject:v16 requiredEntitlement:kIDSMessagingEntitlement];
}

- (void)acknowledgeMessageWithStorageGUID:(id)a3 realGUID:(id)a4 forAccountWithUniqueID:(id)a5 broadcastTime:(id)a6 messageSize:(id)a7 priority:(id)a8 broadcastID:(int64_t)a9 connectionType:(int64_t)a10 messageContext:(id)a11
{
  v17 = a3;
  v55 = a4;
  v54 = a5;
  v18 = a6;
  v53 = a7;
  v19 = a8;
  v20 = a11;
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 localObject];
    v23 = [v20 localObject];
    v24 = [v23 processName];
    *buf = 138544130;
    v64 = v17;
    v65 = 2114;
    v66 = v55;
    v67 = 2048;
    v68 = v22;
    v69 = 2114;
    v70 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Broadcast: Received acknowledgement for message stored as %{public}@ real guid %{public}@ from localObject %p processName %{public}@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v25 = [v20 localObject];
    v26 = [v20 localObject];
    [v26 processName];
    v52 = v51 = v25;
    v47 = v17;
    v50 = v55;
    _IDSLogTransport();
  }

  v27 = [v20 localObject];
  v28 = [(IDSDaemon *)self accountWithIdentifier:v54 localObject:v27 requiredEntitlement:kIDSMessagingEntitlement];

  if (v28)
  {
    if (a9 >= 1)
    {
      v29 = +[IDSDaemonPriorityQueueController sharedInstance];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10069179C;
      v56[3] = &unk_100BE3F60;
      v57 = v28;
      v58 = self;
      v61 = a9;
      v59 = v55;
      v60 = v19;
      v62 = a10;
      [v29 performBlock:v56 withImplicitPriority:{objc_msgSend(v60, "intValue")}];
    }

    if (v17)
    {
      [IDSDMessageStore deleteIncomingMessageWithGUID:v17];
    }

    if (v18)
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v28 service];
        v32 = [v31 identifier];
        *buf = 138412802;
        v64 = v32;
        v65 = 2112;
        v66 = v17;
        v67 = 2112;
        v68 = v18;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Message on %@ with storage guid %@ experienced broadcast time %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v33 = [v28 service];
          v48 = [v33 identifier];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v34 = [v28 service];
            v49 = [v34 identifier];
            _IDSLogV();
          }
        }
      }

      v35 = [IDSClientProcessReceivedMessageMetric alloc];
      v36 = [v28 service];
      v37 = [v36 identifier];
      v38 = [v53 unsignedIntegerValue];
      [v18 doubleValue];
      v40 = [v35 initWithServiceIdentifier:v37 messageSize:v38 deltaTime:(v39 * 1000.0) priority:{objc_msgSend(v19, "integerValue")}];

      v41 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v41 logMetric:v40];

      v42 = +[IDSAWDLogging sharedInstance];
      v43 = [v28 service];
      v44 = [v43 identifier];
      v45 = [v53 unsignedIntegerValue];
      [v18 doubleValue];
      [v42 clientProcessReceivedMessage:v44 messageSize:v45 deltaTime:(v46 * 1000.0) priority:{objc_msgSend(v19, "integerValue")}];
    }
  }
}

- (void)acknowledgeMessageWithGUID:(id)a3 forAccountWithUniqueID:(id)a4 broadcastTime:(id)a5 messageSize:(id)a6 priority:(id)a7 messageContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v44 = a6;
  v43 = a7;
  v17 = a8;
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 localObject];
    *buf = 138412546;
    v46 = v14;
    v47 = 2048;
    v48 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received acknowledgement for message %@ from localObject %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v17 localObject];
    v42 = v39 = v14;
    _IDSLogV();
  }

  v20 = [v17 localObject];
  v21 = [(IDSDaemon *)self accountWithIdentifier:v15 localObject:v20 requiredEntitlement:kIDSMessagingEntitlement];

  if (v21)
  {
    if (v14)
    {
      [IDSDMessageStore deleteIncomingMessageWithGUID:v14];
    }

    if (v16)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v21 service];
        v24 = [v23 identifier];
        *buf = 138412802;
        v46 = v24;
        v47 = 2112;
        v48 = v14;
        v49 = 2112;
        v50 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Message on %@ with storage guid %@ experienced broadcast time %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v25 = [v21 service];
          v40 = [v25 identifier];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v26 = [v21 service];
            v41 = [v26 identifier];
            _IDSLogV();
          }
        }
      }

      v27 = [IDSClientProcessReceivedMessageMetric alloc];
      v28 = [v21 service];
      v29 = [v28 identifier];
      v30 = [v44 unsignedIntegerValue];
      [v16 doubleValue];
      v32 = [v27 initWithServiceIdentifier:v29 messageSize:v30 deltaTime:(v31 * 1000.0) priority:{objc_msgSend(v43, "integerValue")}];

      v33 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v33 logMetric:v32];

      v34 = +[IDSAWDLogging sharedInstance];
      v35 = [v21 service];
      v36 = [v35 identifier];
      v37 = [v44 unsignedIntegerValue];
      [v16 doubleValue];
      [v34 clientProcessReceivedMessage:v36 messageSize:v37 deltaTime:(v38 * 1000.0) priority:{objc_msgSend(v43, "integerValue")}];
    }
  }
}

- (void)sendAppAckWithGUID:(id)a3 toDestination:(id)a4 forAccountWithUniqueID:(id)a5 connectionType:(int64_t)a6 messageContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 localObject];
    *buf = 138412802;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    v35 = 2048;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request to send app-level ack for message %@ to %@ from localObject %p", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v26 = [v14 localObject];
    _IDSLogV();
  }

  if (v11 && v12)
  {
    v17 = [v14 localObject];
    v18 = [(IDSDaemon *)self accountWithIdentifier:v13 localObject:v17 requiredEntitlement:kIDSMessagingEntitlement];

    if (v18)
    {
      v19 = [NSArray arrayWithObject:v12];
      v27 = sub_10043996C(v19, v18);

      v20 = [NSSet setWithArray:v27];
      v21 = [IDSDestination destinationWithStrings:v20];

      v22 = objc_alloc_init(IDSSendParameters);
      v23 = +[NSDictionary dictionary];
      [v22 setMessage:v23];

      [v22 setDestinations:v21];
      [v22 setUseDictAsTopLevel:1];
      [v22 setPeerResponseIdentifier:v11];
      v24 = [NSNumber numberWithInteger:244];
      [v22 setCommand:v24];

      [v22 setPriority:300];
      v25 = [NSNumber numberWithLongLong:[(IDSDaemon *)self _messageTypeForConnection:a6]];
      [v22 setMessageType:v25];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1006921C4;
      v29[3] = &unk_100BD9D10;
      v30 = v11;
      [v18 sendMessageWithSendParameters:v22 willSendBlock:0 completionBlock:v29];
    }
  }
}

- (int64_t)_messageTypeForConnection:(int64_t)a3
{
  v3 = 4;
  if (a3 != 1)
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_checkIfDupeAndNoteGuid:(id)a3 local:(BOOL)a4 topic:(id)a5 forceNoteGuid:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  if ([v10 length])
  {
    v12 = [(IDSDaemon *)self serviceController];
    v13 = [v12 serviceWithIdentifier:v11];

    if ([v13 allowsDuplicates])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }

    pthread_mutex_lock(&self->_localIncomingGUIDsLock);
    v15 = [(IMPair *)self->_localIncomingGUIDs first];
    if ([v15 containsObject:v10])
    {

      v14 = 1;
      if (!v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = [(IMPair *)self->_localIncomingGUIDs second];
      v17 = [v16 containsObject:v10];

      if (!v8)
      {
        if (v17)
        {
          v14 = 1;
        }

        else
        {
          if ([v11 containsString:@"continuity"])
          {
            v19 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v28 = v10;
              v29 = 2112;
              v30 = @"Cloud Fallback";
              v31 = 2112;
              v32 = v11;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "The delivery path for message with guid %@ is %@, service: %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v25 = @"Cloud Fallback";
              v26 = v11;
              v24 = v10;
              _IDSLogV();
            }
          }

          v14 = 0;
        }

        goto LABEL_25;
      }

      if ((v17 & 1) == 0)
      {
        v18 = [(IMPair *)self->_remoteIncomingGUIDs first];
        if ([v18 containsObject:v10])
        {
        }

        else
        {
          v20 = [(IMPair *)self->_remoteIncomingGUIDs second];
          v21 = [v20 containsObject:v10];

          if ((v21 & 1) == 0)
          {
            if ([v11 containsString:@"continuity"])
            {
              v23 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v28 = v10;
                v29 = 2112;
                v30 = @"Local";
                v31 = 2112;
                v32 = v11;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "The delivery path for message with guid %@ is %@, service: %@", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v25 = @"Local";
                v26 = v11;
                v24 = v10;
                _IDSLogV();
              }
            }

            v14 = 0;
            if (!v8)
            {
              goto LABEL_25;
            }

LABEL_24:
            if (!v6)
            {
LABEL_26:
              pthread_mutex_unlock(&self->_localIncomingGUIDsLock);
              goto LABEL_27;
            }

LABEL_25:
            [(IDSDaemon *)self _addIncomingGUIDsWithGuid:v10 isLocal:v8 hasLock:1, v24, v25, v26];
            goto LABEL_26;
          }
        }
      }

      v14 = 1;
    }

    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (BOOL)shouldProxyMessageForService:(id)a3 toIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  im_assert_primary_base_queue();
  v8 = [(IDSDaemon *)self pairingManager];
  v9 = [v8 isPaired];

  if (v9 && (-[IDSDaemon pairingManager](self, "pairingManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 activePairedDeviceHasPairingType:1], v10, (v11 & 1) == 0) && objc_msgSend(v6, "shouldAllowProxyDelivery"))
  {
    v12 = +[IDSDAccountController sharedInstance];
    v36 = [v12 accountsOnService:v6];

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
            v19 = [*(*(&v41 + 1) + 8 * v17) defaultPairedDependentRegistration];
            if (v19)
            {
              v20 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v29 = v19;
                _IDSLogV();
              }

              v21 = [v19 _arrayForKey:{v31, v29}];
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
                      v48 = v7;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      v29 = v26;
                      v30 = v7;
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

- (BOOL)_shouldMessageBeProxied:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 pushTopic];
  v8 = [v7 isEqualToString:@"com.apple.madrid"];

  if (v8 && ([v5 command], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToNumber:", &off_100C3D1E0), v9, v10) && (objc_msgSend(v5, "dataToEncrypt"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 messageUUID];
      *buf = 138412290;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not Proxying this message %@ payload is currently a typing indicator", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v17 = [v5 messageUUID];
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

- (BOOL)_shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 fromID];
  im_assert_primary_base_queue();
  v9 = [(IDSDaemon *)self pairingManager];
  v10 = [v9 isPaired];

  if (!v10)
  {
    goto LABEL_5;
  }

  if (![v7 shouldAllowProxyDelivery])
  {
    goto LABEL_5;
  }

  v11 = [(IDSDaemon *)self pairingManager];
  v12 = [v11 isCurrentDeviceTinkerConfiguredWatch];

  if (v12)
  {
    goto LABEL_5;
  }

  v13 = [(IDSDaemon *)self pairingManager];
  v14 = [v13 activePairedDeviceHasPairingType:1];

  if (v14)
  {
    goto LABEL_5;
  }

  v17 = [v7 pushTopic];
  v18 = IDSServiceNameiMessage;
  if (![v17 isEqualToString:IDSServiceNameiMessage])
  {
    goto LABEL_14;
  }

  v19 = [v6 command];
  if (![v19 isEqualToNumber:&off_100C3CEE0] || (objc_msgSend(v6, "deliveryMinimumTime"), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_14:
    goto LABEL_15;
  }

  v21 = [v6 queueOneIdentifier];

  if (v21)
  {
    v22 = [(IDSDaemon *)self pairingManager];
    v23 = [v22 pairedDeviceSupportsSendLaterMessages];

    if ((v23 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_15:
  v24 = [v7 pushTopic];
  if ([v24 isEqualToString:v18])
  {
    v25 = [v6 command];
    v26 = [v25 isEqualToNumber:&off_100C3D1F8];

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
  v46 = [v27 accountsOnService:v7];

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

          v47 = [*(*(&v52 + 1) + 8 * i) defaultPairedDependentRegistration];
          if (v47)
          {
            v30 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = v47;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = v47;
              _IDSLogV();
            }

            v31 = [v47 objectForKey:{v41, v39}];
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
                    v59 = v8;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v39 = v36;
                    v40 = v8;
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

- (BOOL)_isDeviceInAccountRegistration:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && [v6 length])
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
          v15 = [v14 dependentRegistrations];
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v30 + 1) + 8 * j) _dataForKey:v12];
                v21 = [v5 rawToken];
                v22 = [v20 isEqualToData:v21];

                if (v22)
                {
                  v27 = 1;
                  goto LABEL_18;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
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

- (unsigned)_dedupBehaviorForNiceMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 certifiedDeliveryVersion];
  v5 = [v3 storageFlags];
  if ([v4 integerValue] < 1 || objc_msgSend(v5, "integerValue") < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 retryCount];
    if ([v6 integerValue] <= 0)
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

- (BOOL)_checkContinuityEntitlementForMessageContext:(id)a3
{
  v4 = [a3 localObject];
  LOBYTE(self) = [(IDSDaemon *)self validateListenerForLocalObject:v4 andCheckEntitlement:kIDSContinuityEntitlement];

  return self;
}

- (void)continuityClientInstanceCreatedWithMessageContext:(id)a3
{
  v5 = a3;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:?])
  {
    v4 = [(IDSDaemon *)self wpLinkManager];
    [v4 clientInstanceCreatedWithMessageContext:v5];
  }
}

- (void)continuityStartAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5 messageContext:(id)a6
{
  v12 = a4;
  v10 = a5;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a6])
  {
    v11 = [(IDSDaemon *)self wpLinkManager];
    [v11 startAdvertisingOfType:a3 withData:v12 withOptions:v10];
  }
}

- (void)continuityStopAdvertisingOfType:(int64_t)a3 messageContext:(id)a4
{
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a4])
  {
    v6 = [(IDSDaemon *)self wpLinkManager];
    [v6 stopAdvertisingOfType:a3];
  }
}

- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 messageContext:(id)a7
{
  v15 = a4;
  v12 = a5;
  v13 = a6;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a7])
  {
    v14 = [(IDSDaemon *)self wpLinkManager];
    [v14 startScanningForType:a3 withData:v15 mask:v12 peers:v13];
  }
}

- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 messageContext:(id)a6
{
  v12 = a4;
  v10 = a5;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a6])
  {
    v11 = [(IDSDaemon *)self wpLinkManager];
    [v11 startScanningForType:a3 withData:v12 mask:v10];
  }
}

- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8 messageContext:(id)a9
{
  v9 = a8;
  v10 = a7;
  v18 = a4;
  v15 = a5;
  v16 = a6;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a9])
  {
    v17 = [(IDSDaemon *)self wpLinkManager];
    [v17 startScanningForType:a3 withData:v18 mask:v15 peers:v16 boostedScan:v10 duplicates:v9];
  }
}

- (void)continuityStartScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 boostedScan:(BOOL)a6 duplicates:(BOOL)a7 messageContext:(id)a8
{
  v9 = a7;
  v10 = a6;
  v16 = a4;
  v14 = a5;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a8])
  {
    v15 = [(IDSDaemon *)self wpLinkManager];
    [v15 startScanningForType:a3 withData:v16 mask:v14 boostedScan:v10 duplicates:v9];
  }
}

- (void)continuityStopScanningForType:(int64_t)a3 messageContext:(id)a4
{
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a4])
  {
    v6 = [(IDSDaemon *)self wpLinkManager];
    [v6 stopScanningForType:a3];
  }
}

- (void)continuityStartTrackingPeer:(id)a3 forType:(int64_t)a4 messageContext:(id)a5
{
  v9 = a3;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a5])
  {
    v8 = [(IDSDaemon *)self wpLinkManager];
    [v8 continuityStartTrackingPeer:v9 forType:a4];
  }
}

- (void)continuityStopTrackingPeer:(id)a3 forType:(int64_t)a4 messageContext:(id)a5
{
  v9 = a3;
  if ([(IDSDaemon *)self _checkContinuityEntitlementForMessageContext:a5])
  {
    v8 = [(IDSDaemon *)self wpLinkManager];
    [v8 continuityStopTrackingPeer:v9 forType:a4];
  }
}

- (void)reportiMessageSpam:(id)a3 toURI:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 localObject];
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Told to report iMessage spam with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = [v10 localObject];
    _IDSLogV();
  }

  v13 = [v10 localObject];
  v14 = [(IDSDaemon *)self validateListenerForLocalObject:v13 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v14)
  {
    v15 = [v9 _stripFZIDPrefix];
    v16 = [v15 _bestGuessURI];

    v17 = +[IDSDAccountController sharedInstance];
    v18 = [v17 accountWithServiceName:@"com.apple.madrid" aliasURI:v16];

    if (v18)
    {
      [v18 reportSpamWithMessages:v8 toURI:v16];
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Couldn't find iMessage account with alias %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v9 = v16;
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

- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8 messageContext:(id)a9
{
  v11 = a6;
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 localObject];
    *buf = 138412290;
    v32 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Told to report iMessage unknown sender with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v30 = [v19 localObject];
    _IDSLogV();
  }

  v22 = [v19 localObject];
  v23 = [(IDSDaemon *)self validateListenerForLocalObject:v22 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v23)
  {
    v24 = [v18 _stripFZIDPrefix];
    v25 = [v24 _bestGuessURI];

    v26 = +[IDSDAccountController sharedInstance];
    v27 = [v26 accountWithServiceName:@"com.apple.madrid" aliasURI:v25];

    if (v27)
    {
      [v27 reportiMessageUnknownSender:v15 messageID:v16 isBlackholed:v12 isJunked:v11 messageServerTimestamp:v17 toURI:v25];
    }

    else
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Couldn't find iMessage account with alias %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v18 = v25;
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

- (void)reportiMessageSpamCheckUnknown:(id)a3 count:(id)a4 requestID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 localObject];
    *buf = 138412290;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Told to check unknown sender with localObject %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = [v13 localObject];
    _IDSLogV();
  }

  v16 = [v13 localObject];
  v17 = [(IDSDaemon *)self validateListenerForLocalObject:v16 andCheckEntitlement:kIDSReportiMessageSpamEntitlement];

  if (v17)
  {
    v18 = +[IDSRegistrationCenter sharedInstance];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006DA148;
    v21[3] = &unk_100BE59B0;
    v21[4] = self;
    v22 = v13;
    v23 = v12;
    [v18 reportiMessageSpamCheckUnknown:v10 count:v11 completionBlock:v21];
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

- (BOOL)_checkEntitlement:(id)a3 forAccountWithID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSDAccountController sharedInstance];
  v12 = [v11 accountWithUniqueID:v9];

  if (v12)
  {
    v13 = [v10 localObject];
    v14 = [v12 service];
    v15 = [v14 identifier];
    v16 = [(IDSDaemon *)self validateListenerForLocalObject:v13 andCheckEntitlement:v8 forAccessToServiceWithIdentifier:v15];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v9;
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

- (id)_sessionWithUniqueID:(id)a3 messageContext:(id)a4 requiredEntitlement:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[IDSDSessionController sharedInstance];
  v12 = [v11 sessionWithUniqueID:v10];

  if (v12 && ([v12 accountID], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[IDSDaemon _checkEntitlement:forAccountWithID:messageContext:](self, "_checkEntitlement:forAccountWithID:messageContext:", v9, v13, v8), v13, v14))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_sessionWithInstanceID:(id)a3 messageContext:(id)a4 requiredEntitlement:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[IDSDSessionController sharedInstance];
  v12 = [v11 sessionWithInstanceID:v10];

  if (v12 && ([v12 accountID], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[IDSDaemon _checkEntitlement:forAccountWithID:messageContext:](self, "_checkEntitlement:forAccountWithID:messageContext:", v9, v13, v8), v13, v14))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setupNewSessionWithConfiguration:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setupNewSession configuration: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v6;
    _IDSLogV();
  }

  v9 = [v6 objectForKey:{IDSSessionAccountIDKey, v15}];
  if ([(IDSDaemon *)self _checkEntitlement:kIDSSessionEntitlement forAccountWithID:v9 messageContext:v7])
  {
    v10 = [v6 objectForKey:IDSSessionClientID];
    v11 = +[IDSDSessionController sharedInstance];
    v12 = [v11 setupNewOutgoingSessionWithOptions:v6];

    v13 = [v7 localObject];
    v14 = sub_10000BE90(v10, v13);
    [v12 setClientID:v14];
  }
}

- (void)cleanupSession:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localObject];
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cleanup session %@ local object %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v7 localObject];
    v14 = v13 = v6;
    _IDSLogV();
  }

  v10 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v13, v14];
  if (v10)
  {
    v11 = +[IDSDSessionController sharedInstance];
    [v11 cleanupSession:v6 shouldCleanSessionStatus:1];
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find session with uniqueID %@ to clean up, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)cleanupSessionWithInstanceID:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localObject];
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cleanup session instance %@ local object %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v7 localObject];
    v14 = v13 = v6;
    _IDSLogV();
  }

  v10 = [(IDSDaemon *)self _sessionWithInstanceID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v13, v14];
  if (v10)
  {
    v11 = +[IDSDSessionController sharedInstance];
    [v11 cleanupSessionWithInstanceID:v6];
  }

  else
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find session with instanceID %@ to clean up, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)sendInvitation:(id)a3 withOptions:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15];
  v13 = v12;
  if (v12)
  {
    [v12 sendInvitationWithOptions:v9 declineOnError:0];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"IDSDaemon";
      v18 = 2112;
      v19 = v8;
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

- (void)sendInvitation:(id)a3 withData:(id)a4 declineOnError:(BOOL)a5 messageContext:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 138412802;
    v23 = v10;
    v24 = 2112;
    if (v7)
    {
      v14 = @"YES";
    }

    v25 = v11;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendInvitation %@ with data %@ declineOnError %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = @"NO";
    if (v7)
    {
      v15 = @"YES";
    }

    v20 = v11;
    v21 = v15;
    v19 = v10;
    _IDSLogV();
  }

  v16 = [(IDSDaemon *)self _sessionWithUniqueID:v10 messageContext:v12 requiredEntitlement:kIDSSessionPrivateEntitlement, v19, v20, v21];
  v17 = v16;
  if (v16)
  {
    [v16 sendInvitationWithData:v11 declineOnError:v7];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = @"IDSDaemon";
      v24 = 2112;
      v25 = v10;
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

- (void)acceptInvitation:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "acceptInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)acceptInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "acceptInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 acceptInvitationWithData:v9];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)cancelInvitation:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)cancelInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 cancelInvitationWithData:v9];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)cancelInvitation:(id)a3 withRemoteEndedReasonOverride:(unsigned int)a4 messageContext:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v8;
    v18 = 1024;
    LODWORD(v19) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cancelInvitation %@ with remote ended reason override %u", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v8;
    v15 = v6;
    _IDSLogV();
  }

  v11 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionPrivateEntitlement, v14, v15];
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
      v19 = v8;
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

- (void)declineInvitation:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "declineInvitation %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)declineInvitation:(id)a3 withData:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "declineInvitation %@ with data %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 declineInvitationWithData:v9];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)reconnectSessionWithUniqueID:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reconnectSessionWithUniqueID %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)endSession:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "endSession %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)endSession:(id)a3 withData:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2048;
    v20 = [v9 length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "endSessionWithData %@ (data length %lu)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = [v9 length];
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionPrivateEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 endSessionWithData:v9];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4 forSessionWithUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendSessionMessage %@ to session %@ with context %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v12;
    v20 = v13;
    v18 = v10;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v12 messageContext:v13 requiredEntitlement:kIDSSessionPrivateEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 sendSessionMessage:v10 toDestinations:v11];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = v12;
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

- (void)setAudioEnabled:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setAudioEnabled:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    v16 = v8;
    v17 = v12;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setAudioEnabled:v6];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = v8;
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

- (void)setMuted:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setMuted:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    v16 = v8;
    v17 = v12;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setMuted:v6];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = v8;
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

- (void)setPreferences:(id)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setPreferences:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v9;
    v16 = v8;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v9 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 setPreferences:v8];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v9;
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

- (void)setLinkSelectionStrategyWithData:(id)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setLinkSelectionStrategyWithData:forSessionWithUniqueID %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v9;
    v16 = v8;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v9 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 setLinkSelectionStrategyWithData:v8];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v9;
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

- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4 forSessionWithUniqueID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setRequiredCapabilities:requiredCapabilities:forSessionWithUniqueID %@ %@ %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v10;
    v20 = v11;
    v18 = v12;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v12 messageContext:v13 requiredEntitlement:kIDSSessionEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 setRequiredCapabilities:v10 requiredLackOfCapabilities:v11];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = v12;
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

- (void)setInviteTimetout:(int64_t)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v8;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setInviteTimeout:forSessionWithUniqueID %@ %ld", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v8;
    v15 = a3;
    _IDSLogV();
  }

  v11 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v14, v15];
  v12 = v11;
  if (v11)
  {
    [v11 setInviteTimeout:a3];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = @"IDSDaemon";
      v18 = 2112;
      v19 = v8;
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

- (void)acknowledgeSessionID:(id)a3 clientID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "acknowledge sessionID: %@ clientID: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = v8;
    v17 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  if (v12)
  {
    v13 = [v10 localObject];
    v14 = sub_10000BE90(v9, v13);
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
      v21 = v8;
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

- (void)sendAllocationRequest:(id)a3 options:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sendAllocationRequest %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v8;
    _IDSLogV();
  }

  v12 = +[IMLockdownManager sharedInstance];
  v13 = [v12 isInternalInstall];

  if (v13)
  {
    v14 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement];
    v15 = v14;
    if (v14)
    {
      [v14 sendAllocationRequest:v9];
    }

    else
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = @"IDSDaemon";
        v21 = 2112;
        v22 = v8;
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

- (void)updateMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withContext:(id)a6 messagingCapabilities:(id)a7 triggeredLocally:(BOOL)a8 lightweightStatusDict:(id)a9 messageContext:(id)a10
{
  v10 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v21 count];
    v25 = @"NO";
    *buf = 138413570;
    *&buf[4] = v16;
    if (v10)
    {
      v25 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = v17;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = v25;
    v43 = 2048;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updateMembers %@, for Group %@, context %@, capabilities %@, triggered locally %@, lightweightStatusDict count:%lu", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if (v10)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v34 = v26;
    v35 = [v21 count];
    v32 = v19;
    v33 = v20;
    v30 = v16;
    v31 = v17;
    _IDSLogV();
  }

  v27 = [(IDSDaemon *)self _sessionWithUniqueID:v18 messageContext:v22 requiredEntitlement:kIDSSessionEntitlement, v30, v31, v32, v33, v34, v35, *buf];
  v28 = v27;
  if (v27)
  {
    [v27 updateMembers:v16 withContext:v19 messagingCapabilities:v20 triggeredLocally:v10 lightweightStatusDict:v21];
  }

  else
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = @"IDSDaemon";
      *&buf[12] = 2112;
      *&buf[14] = v18;
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

- (void)manageDesignatedMembers:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withType:(unsigned __int16)a6 messageContext:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 1024;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "manageDesignatedMembers %@, for Group %@, type: %u", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v21 = v13;
    v22 = v8;
    v20 = v12;
    _IDSLogV();
  }

  v17 = [(IDSDaemon *)self _sessionWithUniqueID:v14 messageContext:v15 requiredEntitlement:kIDSSessionEntitlement, v20, v21, v22];
  v18 = v17;
  if (v17)
  {
    [v17 manageDesignatedMembers:v12 withType:v8];
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = @"IDSDaemon";
      v25 = 2112;
      v26 = v14;
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

- (void)removeParticipantIDs:(id)a3 forGroup:(id)a4 sessionID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "removeParticipantIDs %@, for Group %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v10;
    v19 = v11;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v12 messageContext:v13 requiredEntitlement:kIDSSessionEntitlement, v18, v19];
  v16 = v15;
  if (v15)
  {
    [v15 removeParticipantIDs:v10];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = @"IDSDaemon";
      v22 = 2112;
      v23 = v12;
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

- (void)updateParticipantData:(id)a3 forGroup:(id)a4 sessionID:(id)a5 withContext:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "updateParticipantData %@, for Group %@, context %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = v13;
    v23 = v15;
    v21 = v12;
    _IDSLogV();
  }

  v18 = [(IDSDaemon *)self _sessionWithUniqueID:v14 messageContext:v16 requiredEntitlement:kIDSSessionEntitlement, v21, v22, v23];
  v19 = v18;
  if (v18)
  {
    [v18 updateParticipantData:v12 withContext:v15];
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = @"IDSDaemon";
      v26 = 2112;
      v27 = v14;
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

- (void)updateParticipantInfo:(id)a3 forGroup:(id)a4 sessionID:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateParticipantData %@, for Group %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v10;
    v19 = v11;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v12 messageContext:v13 requiredEntitlement:kIDSSessionEntitlement, v18, v19];
  v16 = v15;
  if (v15)
  {
    [v15 updateParticipantInfo:v10];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = @"IDSDaemon";
      v22 = 2112;
      v23 = v12;
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

- (void)updateParticipantType:(unsigned __int16)a3 forGroup:(id)a4 sessionID:(id)a5 members:(id)a6 triggeredLocally:(BOOL)a7 withContext:(id)a8 lightweightStatusDict:(id)a9 messageContext:(id)a10
{
  v11 = a7;
  v14 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v30 = v14;
    *&v30[4] = 2112;
    *&v30[6] = v16;
    *&v30[14] = 2112;
    *&v30[16] = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "updateParticipantType %u, for Group %@, context %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = v16;
    v28 = v19;
    v26 = v14;
    _IDSLogV();
  }

  v23 = [(IDSDaemon *)self _sessionWithUniqueID:v17 messageContext:v21 requiredEntitlement:kIDSSessionEntitlement, v26, v27, v28];
  v24 = v23;
  if (v23)
  {
    [v23 updateParticipantType:v14 members:v18 triggeredLocally:v11 withContext:v19 lightweightStatusDict:v20];
  }

  else
  {
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v30 = @"IDSDaemon";
      *&v30[8] = 2112;
      *&v30[10] = v17;
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

- (void)updateParticipantType:(unsigned __int16)a3 forGroup:(id)a4 sessionID:(id)a5 members:(id)a6 triggeredLocally:(BOOL)a7 withContext:(id)a8 lightweightStatusDict:(id)a9 timestamp:(double)a10 identifier:(unint64_t)a11 messageContext:(id)a12
{
  v14 = a7;
  v17 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v25 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v33 = v17;
    *&v33[4] = 2112;
    *&v33[6] = v19;
    *&v33[14] = 2112;
    *&v33[16] = v22;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "updateParticipantType %u, for Group %@, context %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v30 = v19;
    v31 = v22;
    v29 = v17;
    _IDSLogV();
  }

  v26 = [(IDSDaemon *)self _sessionWithUniqueID:v20 messageContext:v24 requiredEntitlement:kIDSSessionEntitlement, v29, v30, v31];
  v27 = v26;
  if (v26)
  {
    [v26 updateParticipantType:v17 members:v21 triggeredLocally:v14 withContext:v22 lightweightStatusDict:v23 timestamp:a11 identifier:a10];
  }

  else
  {
    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v33 = @"IDSDaemon";
      *&v33[8] = 2112;
      *&v33[10] = v20;
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

- (void)joinGroupSession:(id)a3 withOptions:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "joinGroupSession %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 joinWithOptions:v9 messageContext:v10];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)setQuickRelayUserTypeForSession:(id)a3 withUserType:(unsigned __int16)a4 messageContext:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setQuickRelayUserTypeForSession %u", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v14 = v6;
    _IDSLogV();
  }

  v11 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v14];
  v12 = v11;
  if (v11)
  {
    [v11 setQuickRelayUserTypeForSession:v6];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = @"IDSDaemon";
      v17 = 2112;
      v18 = v8;
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

- (void)leaveGroupSession:(id)a3 participantInfo:(id)a4 options:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "leaveGroupSession %@, participantInfo: %@ options: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v11;
    v20 = v12;
    v18 = v10;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v10 messageContext:v13 requiredEntitlement:kIDSSessionEntitlement, v18, v19, v20];
  v16 = v15;
  if (v15)
  {
    [v15 leaveGroupSession:v11 options:v12];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"IDSDaemon";
      v23 = 2112;
      v24 = v10;
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

- (void)requestActiveParticipantsForGroupSession:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestActiveParticipants for group session: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)requestURIsForParticipantIDs:(id)a3 withRequestID:(id)a4 forGroupSession:(id)a5 messageContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs for group session: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v12;
    _IDSLogV();
  }

  v15 = [(IDSDaemon *)self _sessionWithUniqueID:v12 messageContext:v13 requiredEntitlement:kIDSSessionEntitlement, v18];
  v16 = v15;
  if (v15)
  {
    [v15 requestURIsForParticipantIDs:v10 withRequestID:v11];
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = @"IDSDaemon";
      v21 = 2112;
      v22 = v12;
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

- (void)registerPluginForGroup:(id)a3 options:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "registerPluginForGroup %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 registerPluginWithOptions:v9 messageContext:v10];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)unregisterPluginForGroup:(id)a3 options:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "unregisterPluginForGroup %@, options: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v8;
    v16 = v9;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16];
  v13 = v12;
  if (v12)
  {
    [v12 unregisterPluginWithOptions:v9 messageContext:v10];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = @"IDSDaemon";
      v19 = 2112;
      v20 = v8;
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

- (void)requestEncryptionKeyForGroup:(id)a3 participants:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = v8;
    v20 = 2048;
    v21 = [v9 count];
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "requestEncryptionKeyForGroup %@, for %lu participants %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = [v9 count];
    v17 = v9;
    v15 = v8;
    _IDSLogV();
  }

  v12 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v10 requiredEntitlement:kIDSSessionEntitlement, v15, v16, v17];
  v13 = v12;
  if (v12)
  {
    [v12 requestEncryptionKeyForParticipantIDs:v9];
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

- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 sessionID:(id)a5 messageContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = a3;
    v18 = v10;
    _IDSLogV();
  }

  v14 = [(IDSDaemon *)self _sessionWithUniqueID:v11 messageContext:v12 requiredEntitlement:kIDSSessionEntitlement, v17, v18];
  v15 = v14;
  if (v14)
  {
    [v14 createAliasForParticipantID:a3 salt:v10];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = @"IDSDaemon";
      v21 = 2112;
      v22 = v11;
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

- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 sessionID:(id)a5 messageContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getParticipantIDForAlias %llu salt %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = a3;
    v18 = v10;
    _IDSLogV();
  }

  v14 = [(IDSDaemon *)self _sessionWithUniqueID:v11 messageContext:v12 requiredEntitlement:kIDSSessionEntitlement, v17, v18];
  v15 = v14;
  if (v14)
  {
    [v14 getParticipantIDForAlias:a3 salt:v10];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = @"IDSDaemon";
      v21 = 2112;
      v22 = v11;
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

- (void)enableP2PlinksForSession:(id)a3 messageContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enableP2PlinksForSession %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v6;
    _IDSLogV();
  }

  v9 = [(IDSDaemon *)self _sessionWithUniqueID:v6 messageContext:v7 requiredEntitlement:kIDSSessionEntitlement, v12];
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
      v16 = v6;
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

- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setForceTCPFallbackOnWiFiUsingReinitiate: %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    v16 = v12;
    v17 = v8;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setForceTCPFallbackOnWiFiUsingReinitiate:v6];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = v8;
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

- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)a3 forSessionWithUniqueID:(id)a4 messageContext:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setForceTCPFallbackOnCellUsingReinitiate: %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    v16 = v12;
    v17 = v8;
    _IDSLogV();
  }

  v13 = [(IDSDaemon *)self _sessionWithUniqueID:v8 messageContext:v9 requiredEntitlement:kIDSSessionEntitlement, v16, v17];
  v14 = v13;
  if (v13)
  {
    [v13 setForceTCPFallbackOnCellUsingReinitiate:v6];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = @"IDSDaemon";
      v20 = 2112;
      v21 = v8;
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