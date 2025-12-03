@interface CDPDAnalyticsTransport
+ (BOOL)isEventPrivacyApproved:(id)approved;
+ (id)approvedRecoveryContactEventsForADPAndDNU;
+ (id)defaultTransport;
+ (id)getAllEventsForDataSanitization;
+ (id)getAllowedADPEvents;
+ (id)getAllowedAccountAccessEvents;
+ (id)getAllowedCfuType;
+ (id)getAllowedDNUEvents;
+ (id)getAllowedElementIdentifiers;
+ (id)getAllowedErrorDomain;
+ (id)getAllowedEscapeOffer;
+ (id)getAllowedHandlerKey;
+ (id)getAllowedHookName;
+ (id)getAllowedLocalSecretType;
+ (id)getAllowedSecurityEvents;
+ (id)getAllowedStringsForInternalTelemetry;
+ (id)getAllowedStringsForTelemetry;
+ (id)getApprovedEvents:(id)events;
+ (id)getApprovedEventsForADPAndDNU;
+ (id)getApprovedEventsForAll;
+ (id)transportForClientType:(id)type clientBundleId:(id)id clientName:(id)name;
+ (id)transportForEvent:(id)event;
+ (void)flushCaches;
+ (void)flushTransportCache;
- (BOOL)_isEventPrivacyApprovedIdentifiable:(id)identifiable;
- (BOOL)shouldEnforcePrivacyComplianceForEvent:(id)event;
- (BOOL)shouldSanitizeEventForInternalReporting:(id)reporting;
- (CDPDAnalyticsTransport)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name;
- (id)_sendEvent:(id)event;
- (void)_enforceIdentifiableDataPrivacyComplianceOnEvent:(id)event manager:(id)manager;
- (void)_renewMissingDeviceSessionIDIfNeeded:(id)needed manager:(id)manager account:(id)account;
- (void)_replaceClientNameWithEvent:(id)event;
- (void)_updateEventWithDefaultMetadata:(id)metadata;
- (void)configureSessionForEvent:(id)event sendEventBlock:(id)block telemetryQueue:(id)queue;
- (void)enforcePrivacyComplianceOnEvent:(id)event key:(id)key value:(id)value;
- (void)sanitizeEventForInternalReporting:(id)reporting key:(id)key value:(id)value;
- (void)santizeEventForPendingCFUType:(id)type value:(id)value;
- (void)sendEvent:(id)event;
@end

@implementation CDPDAnalyticsTransport

+ (id)getAllowedStringsForTelemetry
{
  if (getAllowedStringsForTelemetry_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedStringsForTelemetry];
  }

  v3 = getAllowedStringsForTelemetry_allowedStringsDict;

  return v3;
}

- (CDPDAnalyticsTransport)initWithClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = CDPDAnalyticsTransport;
  v12 = [(CDPDAnalyticsTransport *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientType, type);
    objc_storeStrong(&v13->_clientBundleId, id);
    objc_storeStrong(&v13->_clientName, name);
    if (!idCopy)
    {
      v14 = _CDPLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CDPDAnalyticsTransport initWithClientType:clientBundleId:clientName:];
      }

      clientBundleId = v13->_clientBundleId;
      v13->_clientBundleId = @"unknown";
    }

    v16 = [MEMORY[0x277CE44F8] analyticsTransportRTCWithClientType:typeCopy clientBundleId:idCopy clientName:nameCopy];
    transport = v13->_transport;
    v13->_transport = v16;

    if (!v13->_transport)
    {
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v27 = v13->_clientBundleId;
        *buf = 138412802;
        v30 = typeCopy;
        v31 = 2112;
        v32 = v27;
        v33 = 2112;
        v34 = nameCopy;
        _os_log_fault_impl(&dword_24510B000, v18, OS_LOG_TYPE_FAULT, "Underlying transport is nil. clientType = %@, clientBundleId = %@, clientName = %@", buf, 0x20u);
      }
    }

    v19 = +[CDPDAnalyticsTransport getAllowedStringsForTelemetry];
    v20 = allowedStringsForTelemetry;
    allowedStringsForTelemetry = v19;

    v21 = +[CDPDAnalyticsTransport getAllowedStringsForInternalTelemetry];
    v22 = allowedStringsForInternalTelemetry;
    allowedStringsForInternalTelemetry = v21;

    v23 = objc_alloc_init(CDPDTTRController);
    ttrController = v13->_ttrController;
    v13->_ttrController = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)defaultTransport
{
  v3 = *MEMORY[0x277CFD928];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [self transportForClientType:v3 clientBundleId:bundleIdentifier clientName:*MEMORY[0x277CFD920]];

  return v6;
}

+ (id)transportForEvent:(id)event
{
  eventCopy = event;
  v4 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDAnalyticsTransport transportForEvent:eventCopy];
  }

  clientName = [eventCopy clientName];
  v6 = [clientName isEqualToString:*MEMORY[0x277CFD920]];

  if (v6)
  {
    v7 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277CE4588]];

    if (v7)
    {
      [eventCopy setClientName:*MEMORY[0x277CFD918]];
      v8 = _CDPLogSystemAnalytics();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPDAnalyticsTransport transportForEvent:eventCopy];
      }
    }
  }

  clientType = [eventCopy clientType];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  clientName2 = [eventCopy clientName];
  v13 = [CDPDAnalyticsTransport transportForClientType:clientType clientBundleId:bundleIdentifier clientName:clientName2];

  return v13;
}

+ (void)flushTransportCache
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)flushCaches
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)getAllEventsForDataSanitization
{
  if (getAllEventsForDataSanitization_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllEventsForDataSanitization];
  }

  v3 = getAllEventsForDataSanitization_eventsForDataSanitization;

  return v3;
}

uint64_t __57__CDPDAnalyticsTransport_getAllEventsForDataSanitization__block_invoke()
{
  getAllEventsForDataSanitization_eventsForDataSanitization = [MEMORY[0x277CBEB98] setWithArray:&unk_2858222E8];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedSecurityEvents
{
  if (getAllowedSecurityEvents_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedSecurityEvents];
  }

  v3 = getAllowedSecurityEvents_approvedSecurityEvents;

  return v3;
}

uint64_t __50__CDPDAnalyticsTransport_getAllowedSecurityEvents__block_invoke()
{
  getAllowedSecurityEvents_approvedSecurityEvents = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.security.primaryAccountAdded", @"com.apple.security.idMSSecurityLevel", @"com.apple.security.cloudKitAccountAvailability", @"com.apple.security.initiatorCreatesPacket1", @"com.apple.security.acceptorCreatesPacket2", @"com.apple.security.kVSSyncAndWait", @"com.apple.security.flush", @"com.apple.security.validatedStashedAccountCredential", @"com.apple.security.initiatorCreatesPacket3", @"com.apple.security.fetchMachineID", @"com.apple.security.prepareIdentityInTPH", @"com.apple.security.createSOSApplication", @"com.apple.security.acceptorCreatesPacket4", @"com.apple.security.verifySOSApplication", @"com.apple.security.createSOSCircleBlob", @"com.apple.security.cKKSTLKFetch", @"com.apple.security.updateTrust", @"com.apple.security.initiatorJoinsTrustSystems", @"com.apple.security.initiatorJoinSOS", @"com.apple.security.updateTDL", @"com.apple.security.fetchAndPersistChanges", @"com.apple.security.fetchPolicyDocument", @"com.apple.security.joinWithVoucher", @"com.apple.security.initiatorWaitsForUpgrade", @"com.apple.security.preApprovedJoin", @"com.apple.security.acceptorCreatesPacket5", @"com.apple.security.initiatorImportsInitialSyncData", @"com.apple.security.acceptorCreatesVoucher", @"com.apple.security.acceptorFetchesInitialSyncData", @"com.apple.security.ckks.launchStart", @"com.apple.security.ckks.syncingPolicySet", @"com.apple.security.ckks.CKAccountLogin", @"com.apple.security.ckks.zoneChangeFetch", @"com.apple.security.ckks.zoneCreation", @"com.apple.security.ckks.trustGain", @"com.apple.security.ckks.trustLoss", @"com.apple.security.ckks.healKeyHierarchy", @"com.apple.security.ckks.healKeyHierarchy.healBrokenRecords", @"com.apple.security.ckks.healKeyHierarchy.uploadHealedTLKShares", @"com.apple.security.ckks.healTLKShares", @"com.apple.security.ckks.healTLKShares.createMissingTLKShares", @"com.apple.security.ckks.healTLKShares.uploadMissingTLKShares", @"com.apple.security.ckks.processIncomingQueue", @"com.apple.security.ckks.processIncomingQueue.loadAndProcessIQEs", @"com.apple.security.ckks.processIncomingQueue.fixMismatchedViewItems", @"com.apple.security.ckks.processReceivedKeys", @"com.apple.security.ckks.scanLocalItems", @"com.apple.security.ckks.scanLocalItems.querySyncableItems", @"com.apple.security.ckks.scanLocalItems.onboardMissingItems", @"com.apple.security.ckks.processOutgoingQueue", @"com.apple.security.ckks.processOutgoingQueue.uploadOQEstoCK", @"com.apple.security.ckks.processOutgoingQueue.saveCKMirrorEntries", @"com.apple.security.ckks.firstManateeKeyFetch", @"com.apple.security.ckks.localSyncFinish", @"com.apple.security.ckks.contentSyncFinish", @"com.apple.security.ckks.deviceLocked", @"com.apple.security.ckks.deviceUnlocked", @"com.apple.security.ckks.localReset", @"com.apple.security.cliqueMemberIdentifier", @"com.apple.security.duplicateMachineID", @"com.apple.security.midVanishedFromTDL"}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedDNUEvents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CDPDAnalyticsTransport_getAllowedDNUEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getAllowedDNUEvents_onceToken != -1)
  {
    dispatch_once(&getAllowedDNUEvents_onceToken, block);
  }

  v2 = getAllowedDNUEvents_approvedDNUEvents;

  return v2;
}

void __45__CDPDAnalyticsTransport_getAllowedDNUEvents__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_285822300];
  v3 = getAllowedDNUEvents_approvedDNUEvents;
  getAllowedDNUEvents_approvedDNUEvents = v2;

  v9 = [MEMORY[0x277CBEB58] setWithSet:getAllowedDNUEvents_approvedDNUEvents];
  v4 = [*(a1 + 32) getApprovedEventsForADPAndDNU];
  [v9 unionSet:v4];

  v5 = [*(a1 + 32) getAllowedSecurityEvents];
  [v9 unionSet:v5];

  v6 = [*(a1 + 32) approvedRecoveryContactEventsForADPAndDNU];
  [v9 unionSet:v6];

  v7 = [v9 copy];
  v8 = getAllowedDNUEvents_approvedDNUEvents;
  getAllowedDNUEvents_approvedDNUEvents = v7;
}

+ (id)getAllowedADPEvents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CDPDAnalyticsTransport_getAllowedADPEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getAllowedADPEvents_onceToken != -1)
  {
    dispatch_once(&getAllowedADPEvents_onceToken, block);
  }

  v2 = getAllowedADPEvents_approvedADPEvents;

  return v2;
}

void __45__CDPDAnalyticsTransport_getAllowedADPEvents__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v13[0] = *MEMORY[0x277CFD700];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v4 = [v2 setWithArray:v3];
  v5 = getAllowedADPEvents_approvedADPEvents;
  getAllowedADPEvents_approvedADPEvents = v4;

  v6 = [MEMORY[0x277CBEB58] setWithSet:getAllowedADPEvents_approvedADPEvents];
  v7 = [*(a1 + 32) getApprovedEventsForADPAndDNU];
  [v6 unionSet:v7];

  v8 = [*(a1 + 32) getAllowedSecurityEvents];
  [v6 unionSet:v8];

  v9 = [*(a1 + 32) approvedRecoveryContactEventsForADPAndDNU];
  [v6 unionSet:v9];

  v10 = [v6 copy];
  v11 = getAllowedADPEvents_approvedADPEvents;
  getAllowedADPEvents_approvedADPEvents = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)getAllowedAccountAccessEvents
{
  if (getAllowedAccountAccessEvents_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedAccountAccessEvents];
  }

  v3 = getAllowedAccountAccessEvents_approvedAccountAccessEvents;

  return v3;
}

uint64_t __55__CDPDAnalyticsTransport_getAllowedAccountAccessEvents__block_invoke()
{
  getAllowedAccountAccessEvents_approvedAccountAccessEvents = [MEMORY[0x277CBEB58] set];

  return MEMORY[0x2821F96F8]();
}

+ (id)getApprovedEventsForADPAndDNU
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CDPDAnalyticsTransport_getApprovedEventsForADPAndDNU__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getApprovedEventsForADPAndDNU_onceToken != -1)
  {
    dispatch_once(&getApprovedEventsForADPAndDNU_onceToken, block);
  }

  v2 = getApprovedEventsForADPAndDNU_approvedEvents;

  return v2;
}

void __55__CDPDAnalyticsTransport_getApprovedEventsForADPAndDNU__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277CE4568];
  v31 = *MEMORY[0x277CFD658];
  v30 = *MEMORY[0x277CFD7C0];
  v29 = *MEMORY[0x277CFD800];
  v28 = *MEMORY[0x277CFD7B0];
  v27 = *MEMORY[0x277CFD848];
  v26 = *MEMORY[0x277CFD868];
  v25 = *MEMORY[0x277CFD858];
  v24 = *MEMORY[0x277CFD8C8];
  v23 = *MEMORY[0x277CFD6E8];
  v22 = *MEMORY[0x277CFD678];
  v21 = *MEMORY[0x277CFD738];
  v20 = *MEMORY[0x277CFD698];
  v19 = *MEMORY[0x277CFD8D0];
  v18 = *MEMORY[0x277CFD8D8];
  v17 = *MEMORY[0x277CFD700];
  v16 = *MEMORY[0x277CFD8B8];
  v15 = *MEMORY[0x277CFD6F8];
  v14 = *MEMORY[0x277CFD8E8];
  v13 = *MEMORY[0x277CFD8F0];
  v12 = *MEMORY[0x277CEC8F8];
  v11 = *MEMORY[0x277CFD620];
  v10 = *MEMORY[0x277CFD628];
  v9 = *MEMORY[0x277CFD630];
  v8 = *MEMORY[0x277CFD638];
  v7 = *MEMORY[0x277CFD640];
  v1 = [MEMORY[0x277CBEB58] setWithObjects:{*MEMORY[0x277CFD728], *MEMORY[0x277CFD768], *MEMORY[0x277CFD648], *MEMORY[0x277CFD690], *MEMORY[0x277CFD880], *MEMORY[0x277CFD820], *MEMORY[0x277CFD828], *MEMORY[0x277CFD6D0], *MEMORY[0x277CFD6E0], *MEMORY[0x277CFD6B0], *MEMORY[0x277CFD898], *MEMORY[0x277CFD740], *MEMORY[0x277CFD830], *MEMORY[0x277CFD7D0], *MEMORY[0x277CFD6F0], *MEMORY[0x277CFD708], *MEMORY[0x277CFD890], *MEMORY[0x277CFD888], *MEMORY[0x277CFD650], *MEMORY[0x277CE45D0], *MEMORY[0x277CE4570], *MEMORY[0x277CE4568], *MEMORY[0x277CFD660], *MEMORY[0x277CFD658], *MEMORY[0x277CFD6A8], *MEMORY[0x277CFD7C0], *MEMORY[0x277CFD7C8], *MEMORY[0x277CFD800], *MEMORY[0x277CFD7B8], *MEMORY[0x277CFD7B0], *MEMORY[0x277CFD750], *MEMORY[0x277CFD848], *MEMORY[0x277CFD850], *MEMORY[0x277CFD868], *MEMORY[0x277CFD860], *MEMORY[0x277CFD858], *MEMORY[0x277CFD840], *MEMORY[0x277CFD8C8], *MEMORY[0x277CFD8E0], kAKAnalyticsEventMIDInvalidation, @"com.apple.authkit.proximityAuthentication", *MEMORY[0x277CFD838], @"com.apple.appleaccount.iCloudAuthLoginAndUpdate", @"com.apple.appleaccount.iCloudAuthPreflightSave", *MEMORY[0x277CFD730], @"com.apple.appleid.accountHealthEvent", @"com.apple.appleaccount.iCloudAccountAdd", *MEMORY[0x277CFD8C0], *MEMORY[0x277CFD7D8], @"com.apple.appleaccount.escapeOfferSelected", *MEMORY[0x277CEC8E8], *MEMORY[0x277CEC8E0], *MEMORY[0x277CEC8D0], *MEMORY[0x277CEC8D8], *MEMORY[0x277CEC8A0], *MEMORY[0x277CEC8B8], *MEMORY[0x277CEC8C8], *MEMORY[0x277CEC8B0], *MEMORY[0x277CEC8A8], @"com.apple.authkit.baa.signing.cached", @"com.apple.authkit.baa.signing"}];
  v2 = getApprovedEventsForADPAndDNU_approvedEvents;
  getApprovedEventsForADPAndDNU_approvedEvents = v1;

  v34 = [MEMORY[0x277CBEB58] setWithSet:getApprovedEventsForADPAndDNU_approvedEvents];
  v3 = [*(a1 + 32) getAllowedSecurityEvents];
  [v34 unionSet:v3];

  v4 = [*(a1 + 32) approvedRecoveryContactEventsForADPAndDNU];
  [v34 unionSet:v4];

  v5 = [v34 copy];
  v6 = getApprovedEventsForADPAndDNU_approvedEvents;
  getApprovedEventsForADPAndDNU_approvedEvents = v5;
}

+ (id)approvedRecoveryContactEventsForADPAndDNU
{
  v33[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v33[0] = @"com.apple.appleAccount.recoveryContactCodeEntryLanding";
  v33[1] = @"com.apple.appleAccount.recoveryContactRecoveryLanding";
  v3 = *MEMORY[0x277CFD7E8];
  v33[2] = *MEMORY[0x277CFD7F0];
  v33[3] = v3;
  v33[4] = *MEMORY[0x277CFD7E0];
  v33[5] = @"com.apple.appleaccount.addRecoveryContactLanding";
  v33[6] = @"com.apple.appleaccount.localSecretCollection";
  v33[7] = @"com.apple.appleaccount.selectRecoveryContact";
  v33[8] = @"com.apple.appleaccount.recoveryContactSendMessageLanding";
  v33[9] = @"com.apple.appleaccount.custodian.ui.openAccountRecovery";
  v33[10] = @"com.apple.appleaccount.custodian.ui.exitAccountRecovery";
  v33[11] = @"com.apple.appleaccount.custodian.ui.openCustodianDetails";
  v33[12] = @"com.apple.appleaccount.custodian.ui.exitCustodianDetails";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:13];
  v5 = [v2 setWithArray:v4];

  v6 = MEMORY[0x277CBEB98];
  v7 = *MEMORY[0x277CEC978];
  v32[0] = *MEMORY[0x277CEC970];
  v32[1] = v7;
  v32[2] = *MEMORY[0x277CEC918];
  v32[3] = @"com.apple.appleaccount.custodian.preflight.crk.stateChangedFromGoodToBad";
  v32[4] = @"com.apple.appleaccount.custodian.healthcheck.owner";
  v32[5] = @"com.apple.appleaccount.custodian.healthcheck.owner.sendRecoveryInfoMessage";
  v32[6] = @"com.apple.appleaccount.custodian.healthcheck.owner.confirmCustodianWithServer";
  v32[7] = @"com.apple.appleaccount.custodian.healthcheck.owner.finalizeSetupWithServer";
  v32[8] = @"com.apple.appleaccount.fetchUserInfo";
  v32[9] = @"com.apple.appleaccount.custodian.healthcheck.ownerUpdatedCustodianRecord";
  v32[10] = @"com.apple.appleaccount.custodian.healthcheck.custodian";
  v32[11] = @"com.apple.appleaccount.custodian.healthcheck.incompleteinvitation.custodianResendInvitationAcceptanceMessage";
  v32[12] = @"com.apple.appleaccount.custodian.setupFailSafe.pending";
  v32[13] = @"com.apple.appleaccount.custodian.setupFailSafe.ready";
  v32[14] = @"com.apple.appleaccount.custodian.setupFailSafe.gracePeriodExpired";
  v32[15] = @"com.apple.appleaccount.custodian.setupFailSafe.tearDown";
  v32[16] = @"com.apple.appleaccount.custodian.setupFailSafe";
  v32[17] = @"com.apple.appleaccount.custodian.setupFailSafe.healthCheckRun";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:18];
  v9 = [v6 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v11 = *MEMORY[0x277CEC928];
  v31[0] = *MEMORY[0x277CEC910];
  v31[1] = v11;
  v12 = *MEMORY[0x277CEC938];
  v31[2] = *MEMORY[0x277CEC930];
  v31[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v14 = [v10 setWithArray:v13];

  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_285822318];
  v16 = MEMORY[0x277CBEB98];
  v17 = *MEMORY[0x277CEC8C0];
  v30[0] = @"com.apple.appleaccount.recoveryContactInviteSent";
  v30[1] = v17;
  v30[2] = @"com.apple.appleaccount.custodianFirstTimeSetup";
  v30[3] = @"com.apple.appleaccount.familyCustodianAdded";
  v18 = *MEMORY[0x277CEC920];
  v30[4] = @"com.apple.appleaccount.custodianInviteSent";
  v30[5] = v18;
  v30[6] = @"com.apple.appleaccount.custodian.setup.newCustodian";
  v30[7] = @"com.apple.appleaccount.custodian.setup.ownerGenerateCustodianRecoveryKey";
  v30[8] = @"com.apple.appleaccount.custodian.setup.ownerGenerateEncryptedCPRK";
  v30[9] = @"com.apple.appleaccount.custodian.setup.ownerStoredCustodianRecordToCloud";
  v30[10] = @"com.apple.appleaccount.custodian.setup.sendInvitation";
  v30[11] = @"com.apple.appleaccount.custodian.setup.resendInvitation";
  v30[12] = @"com.apple.appleaccount.custodian.setup.processInvitationAcceptanceResponse";
  v30[13] = @"com.apple.appleaccount.custodian.setup.processInvitationDeclineResponse";
  v30[14] = @"com.apple.appleaccount.custodian.setup.processDecline.cleanup";
  v30[15] = @"com.apple.appleaccount.custodian.setup.processNotReachable";
  v30[16] = @"com.apple.appleaccount.custodian.setup.ownerUpdatedCustodianRecord";
  v30[17] = @"com.apple.appleaccount.custodian.setup.processAccept.fetchRecoveryInfo";
  v30[18] = @"com.apple.appleaccount.custodian.setup.processAccept.createRecoveryInfoShare";
  v30[19] = @"com.apple.appleaccount.custodian.setup.processAccept.sendRecoveryInfoMessage";
  v30[20] = @"com.apple.appleaccount.custodian.setup.processFinalizeSetupMessage";
  v30[21] = @"com.apple.appleaccount.custodian.setup.finalizeSetupWithServer";
  v30[22] = @"com.apple.appleaccount.custodian.setup.remove.sendRemovalMessageToCustodian";
  v30[23] = @"com.apple.appleaccount.custodian.setup.cleanup.revokeCustodianFromServer";
  v30[24] = @"com.apple.appleaccount.custodian.setup.cleanup.deleteRecoveryKeyByCustodianIDFromSecurity";
  v30[25] = @"com.apple.appleaccount.custodian.setup.cleanup.deleteRecoveryKeyByOctagonIDFromSecurity";
  v30[26] = @"com.apple.appleaccount.custodian.setup.cleanup.deleteCustodianshipRecordFromCloud";
  v30[27] = @"com.apple.appleaccount.custodian.setup.processInvitation";
  v30[28] = @"com.apple.appleaccount.custodian.setup.accountEligibilityCheck";
  v30[29] = @"com.apple.appleaccount.custodian.setup.familyMemberCheck";
  v30[30] = @"com.apple.appleaccount.custodian.setup.storeInvitationToCloud";
  v30[31] = @"com.apple.appleaccount.custodian.setup.invitationProcessedForManualAccept";
  v30[32] = @"com.apple.appleaccount.custodian.setup.accountNotEligible";
  v30[33] = @"com.apple.appleaccount.custodian.setup.sendAutoAcceptInvitationMessage";
  v30[34] = @"com.apple.appleaccount.custodian.setup.processSharedRecoveryInfo";
  v30[35] = @"com.apple.appleaccount.custodian.setup.acceptSharedRecoveryInfo";
  v30[36] = @"com.apple.appleaccount.custodian.setup.sendFinalizeSetupMessage";
  v30[37] = @"com.apple.appleaccount.custodian.setup.processRemoveCustodian";
  v30[38] = @"com.apple.appleaccount.custodian.setup.stopBeingCustodian";
  v30[39] = @"com.apple.appleaccount.custodian.setup.respondToInvite";
  v30[40] = @"com.apple.appleaccount.custodian.setup.custodianUpdatedCustodianshipRecord";
  v30[41] = @"com.apple.appleaccount.custodian.setup.sendInvitationAcceptanceMessage";
  v30[42] = @"com.apple.appleaccount.custodian.setup.sendInvitationDeclineMessage";
  v30[43] = @"com.apple.appleaccount.custodian.decodeIDSMessage";
  v30[44] = @"com.apple.appleaccount.custodian.setup.newCustodian.signpost.begin";
  v30[45] = @"com.apple.appleaccount.custodian.setup.processInvitation.signpost.begin";
  v30[46] = @"com.apple.appleaccount.custodian.setup.respondToInvite.signpost.begin";
  v30[47] = @"com.apple.appleaccount.custodian.setup.processInvitationResponse.signpost.begin";
  v30[48] = @"com.apple.appleaccount.custodian.setup.processSharedRecoveryInfosignpost.begin";
  v30[49] = @"com.apple.appleaccount.custodian.setup.processFinalizeSetupMessage.begin";
  v30[50] = @"com.apple.appleaccount.custodian.setup.success";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:51];
  v20 = [v16 setWithArray:v19];

  v21 = MEMORY[0x277CBEB98];
  v29[0] = *MEMORY[0x277CEC908];
  v29[1] = @"com.apple.appleaccount.custodian.fetchRecoveryConfiguration";
  v29[2] = @"com.apple.appleaccount.custodian.generate";
  v29[3] = @"com.apple.appleaccount.custodian.fetchCustodianshipInfo";
  v29[4] = @"com.apple.appleaccount.custodian.fetchRecoveryInfo";
  v29[5] = @"com.apple.appleaccount.custodian.fetchCustodianHealthRecord";
  v29[6] = @"com.apple.appleaccount.custodian.fetchRecoverySessionCreatedByOwner";
  v29[7] = @"com.apple.appleaccount.custodian.keyexchange.begin";
  v29[8] = @"com.apple.appleaccount.custodian.keyexchange.generateCustodianKeys";
  v29[9] = @"com.apple.appleaccount.custodian.keyexchange.generateOwnerKeys";
  v29[10] = @"com.apple.appleaccount.custodian.keyexchange.finalize";
  v29[11] = @"com.apple.appleaccount.custodian.keyexchange.complete";
  v29[12] = @"com.apple.appleaccount.custodian.keyexchange.error";
  v29[13] = @"com.apple.appleaccount.custodian.keyexchange.sendMessage";
  v29[14] = @"com.apple.appleaccount.custodian.keyexchange.retry";
  v29[15] = @"com.apple.appleaccount.custodian.recovery.ownerCreateSession";
  v29[16] = @"com.apple.appleaccount.custodian.dataRecovery";
  v29[17] = @"com.apple.appleaccount.custodian.accountRecovery";
  v29[18] = @"com.apple.appleaccount.custodian.recovery.fetchAPSToken";
  v29[19] = @"com.apple.appleaccount.custodian.recovery.initializeSessionWithServer";
  v29[20] = @"com.apple.appleaccount.custodian.recovery.ownerValidateCode";
  v29[21] = @"com.apple.appleaccount.custodian.recovery.ownerFetchCustodianRecoveryKeys";
  v29[22] = @"com.apple.appleaccount.custodian.recovery.cancel";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:23];
  v23 = [v21 setWithArray:v22];

  v24 = [MEMORY[0x277CBEB98] setWithArray:&unk_285822330];
  v25 = [MEMORY[0x277CBEB98] setWithArray:&unk_285822348];
  v26 = [MEMORY[0x277CBEB58] set];
  [v26 unionSet:v5];
  [v26 unionSet:v9];
  [v26 unionSet:v14];
  [v26 unionSet:v20];
  [v26 unionSet:v23];
  [v26 unionSet:v24];
  [v26 unionSet:v25];
  [v26 unionSet:v15];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)getApprovedEventsForAll
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CDPDAnalyticsTransport_getApprovedEventsForAll__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getApprovedEventsForAll_onceToken != -1)
  {
    dispatch_once(&getApprovedEventsForAll_onceToken, block);
  }

  v2 = getApprovedEventsForAll_approvedEvents;

  return v2;
}

void __49__CDPDAnalyticsTransport_getApprovedEventsForAll__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = getApprovedEventsForAll_approvedEvents;
  getApprovedEventsForAll_approvedEvents = v2;

  v4 = getApprovedEventsForAll_approvedEvents;
  v5 = [*(a1 + 32) getAllowedADPEvents];
  [v4 unionSet:v5];

  v6 = getApprovedEventsForAll_approvedEvents;
  v7 = [*(a1 + 32) getAllowedDNUEvents];
  [v6 unionSet:v7];

  v8 = getApprovedEventsForAll_approvedEvents;
  v9 = [*(a1 + 32) getAllowedAccountAccessEvents];
  [v8 unionSet:v9];
}

+ (id)getApprovedEvents:(id)events
{
  if (events)
  {
    getApprovedEventsForAll = [self getApprovedEventsForAll];
  }

  else
  {
    getApprovedEventsForAll = 0;
  }

  return getApprovedEventsForAll;
}

+ (BOOL)isEventPrivacyApproved:(id)approved
{
  approvedCopy = approved;
  v4 = [CDPDAnalyticsTransport getApprovedEvents:approvedCopy];
  eventName = [approvedCopy eventName];

  LOBYTE(approvedCopy) = [v4 containsObject:eventName];
  return approvedCopy;
}

+ (id)getAllowedLocalSecretType
{
  if (getAllowedLocalSecretType_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedLocalSecretType];
  }

  v3 = getAllowedLocalSecretType_approvedSecretTypes;

  return v3;
}

uint64_t __51__CDPDAnalyticsTransport_getAllowedLocalSecretType__block_invoke()
{
  getAllowedLocalSecretType_approvedSecretTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"None", @"Passcode", @"Password", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedEscapeOffer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CDPDAnalyticsTransport_getAllowedEscapeOffer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (getAllowedEscapeOffer_onceToken != -1)
  {
    dispatch_once(&getAllowedEscapeOffer_onceToken, block);
  }

  v2 = getAllowedEscapeOffer_approvedEscapeOffers;

  return v2;
}

void __47__CDPDAnalyticsTransport_getAllowedEscapeOffer__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CFD948];
  v2 = *MEMORY[0x277CFD998];
  v3 = *MEMORY[0x277CFD9A0];
  v4 = *MEMORY[0x277CFD970];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CFD950], *MEMORY[0x277CFD958], *MEMORY[0x277CFD968], *MEMORY[0x277CFD978], *MEMORY[0x277CFD980], *MEMORY[0x277CFD988], *MEMORY[0x277CFDA38], *MEMORY[0x277CFDA40], *MEMORY[0x277CFDA48], *MEMORY[0x277CFD938], *MEMORY[0x277CFD940], *MEMORY[0x277CFD948], *MEMORY[0x277CFD990], *MEMORY[0x277CFD998], *MEMORY[0x277CFD9A8], *MEMORY[0x277CFD9A0], *MEMORY[0x277CFD9B8], *MEMORY[0x277CFD9C0], *MEMORY[0x277CFD9C8], *MEMORY[0x277CFD9D0], *MEMORY[0x277CFD9D8], *MEMORY[0x277CFD9E0], *MEMORY[0x277CFD9E8], *MEMORY[0x277CFD9F0], *MEMORY[0x277CFD9F8], *MEMORY[0x277CFDA00], *MEMORY[0x277CFDA08], *MEMORY[0x277CFDA10], *MEMORY[0x277CFDA18], *MEMORY[0x277CFDA20], *MEMORY[0x277CFDA30], *MEMORY[0x277CFD970], *MEMORY[0x277CFDA28], *MEMORY[0x277CFD960], 0}];
  v6 = getAllowedEscapeOffer_approvedEscapeOffers;
  getAllowedEscapeOffer_approvedEscapeOffers = v5;

  v11 = [MEMORY[0x277CBEB58] setWithSet:getAllowedEscapeOffer_approvedEscapeOffers];
  v7 = [*(a1 + 32) getAllowedElementIdentifiers];
  [v11 unionSet:v7];

  v8 = [v11 copy];
  v9 = getAllowedEscapeOffer_approvedEscapeOffers;
  getAllowedEscapeOffer_approvedEscapeOffers = v8;
}

+ (id)getAllowedErrorDomain
{
  if (getAllowedErrorDomain_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedErrorDomain];
  }

  v3 = getAllowedErrorDomain_approvedErrorDomains;

  return v3;
}

uint64_t __47__CDPDAnalyticsTransport_getAllowedErrorDomain__block_invoke()
{
  v0 = *MEMORY[0x277CCA590];
  v1 = *MEMORY[0x277CFB298];
  getAllowedErrorDomain_approvedErrorDomains = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCA050], *MEMORY[0x277CCA590], *MEMORY[0x277CCA5B8], *MEMORY[0x277CCA738], *MEMORY[0x277CDBCF8], *MEMORY[0x277CBBF50], *MEMORY[0x277CBBF98], *MEMORY[0x277CBE2C8], *MEMORY[0x277CFD418], *MEMORY[0x277CEFF48], *MEMORY[0x277CFB2F0], *MEMORY[0x277CFB298], *MEMORY[0x277CFB290], *MEMORY[0x277CEFF18], @"securityd", @"EscrowProxyErrorDomain", @"FLErrorDomain", @"SyncedDefaults", @"AKUnderlyingADIErrors", @"CKKSResultOperationError", @"com.apple.security.trustedpeers", @"com.apple.security.trustedpeers.EscrowKeys", @"com.apple.security.trustedpeers.container", @"com.apple.security.trustedpeers.peerstatus", @"com.apple.security.sos.error", @"com.apple.security.keychaincircle", @"com.apple.LocalAuthentication", @"com.apple.AppleIDAuthSupport", @"com.apple.appleaccount", @"com.apple.protectedcloudstorage", @"com.apple.security.octagon", @"com.apple.accounts", @"com.apple.accounts.keychain", @"AOSErrorDomain", @"AKAuthenticationServerError", @"com.apple.AppleAccount.Error", @"com.apple.utilities.sqlite3", @"com.apple.security.kcparingchannel", @"CKKSResultOperationDescriptionError", @"com.appple.ckks.state", @"com.apple.security.octagon.state", @"AACustodianErrors", @"AACustodianRecoveryErrors", @"CKKSResultOperationDescriptionError", @"com.apple.security.trustedpeers.RecoveryKeySetError", @"com.apple.security.octagon.state", @"com.apple.MobileActivation.ErrorDomain", @"com.apple.MobileActivation.ServerErrorDomain", @"CryptoTokenKit", @"AACustodianSystemStateError", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedCfuType
{
  if (getAllowedCfuType_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedCfuType];
  }

  v3 = getAllowedCfuType_approvedCFUTypes;

  return v3;
}

uint64_t __43__CDPDAnalyticsTransport_getAllowedCfuType__block_invoke()
{
  getAllowedCfuType_approvedCFUTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"RepairCDPState", @"OfflineLocalSecretChange", @"RegenerateCDPRecoveryKey", @"SecureTerms", @"ConfirmExistingSecret", @"kCDPConfirmExistingSecret", @"SOSCompatibilityMode", @"com.apple.AAFollowUpIdentifier.RenewCredentials", @"com.apple.AAFollowUpIdentifier.custodianRemoved", @"com.apple.AAFollowUpIdentifier.custodianWalrusNoLiveness", @"com.apple.AAFollowUpIdentifier.custodianWalrusRemoved", @"com.apple.AAFollowUpIdentifier.walrusUserRecoveryFactorsMissing", @"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch", @"com.apple.CDPFollowUpIdentifier.adpStateHealing", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedHookName
{
  if (getAllowedHookName_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedHookName];
  }

  v3 = getAllowedHookName_approvedHookNames;

  return v3;
}

uint64_t __44__CDPDAnalyticsTransport_getAllowedHookName__block_invoke()
{
  getAllowedHookName_approvedHookNames = [MEMORY[0x277CBEB98] setWithObjects:{@"account:signout", @"account:navigateToSignIn", @"ak:auth", @"code:generate", @"database:revoke", @"emails:update", @"custodian:add", @"rk:regenerate", @"rk:enable", @"rk:disable", @"rk:verify", @"cdp:repair", @"cdp:upgrade", @"icsc:verify", @"custodian:startSession", @"custodian:startApproval", @"inheritance:show", @"recoveryOptions:show", @"beneficiary:contactName", @"custodian:verify", @"action:matterhornUpsell", @"action:hideMyEmailUpdateCache", @"passcode:validate", @"ams:paymentVerification", @"recovery:print", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedHandlerKey
{
  if (getAllowedHandlerKey_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedHandlerKey];
  }

  v3 = getAllowedHandlerKey_approvedHandlerKeys;

  return v3;
}

uint64_t __46__CDPDAnalyticsTransport_getAllowedHandlerKey__block_invoke()
{
  getAllowedHandlerKey_approvedHandlerKeys = [MEMORY[0x277CBEB98] setWithObjects:{@"start-icsc", @"Complete", @"mk-validation", @"continue", @"read", @"cancel", @"delete", @"teardown", @"open", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)getAllowedElementIdentifiers
{
  if (getAllowedElementIdentifiers_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedElementIdentifiers];
  }

  v3 = getAllowedElementIdentifiers_approvedElementIdentifiers;

  return v3;
}

uint64_t __54__CDPDAnalyticsTransport_getAllowedElementIdentifiers__block_invoke()
{
  getAllowedElementIdentifiers_approvedElementIdentifiers = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.remoteui.iforgot_account_inactive", @"com.apple.remoteui.iforgot_account_locked", @"com.apple.remoteui.iforgot_account_not-eligible", @"com.apple.remoteui.iforgot_appleid_locked", @"com.apple.remoteui.iforgot_appleid_settings_dismiss", @"com.apple.remoteui.iforgot_dismiss", @"com.apple.remoteui.iforgot_email_add", @"com.apple.remoteui.iforgot_embargo_cancel", @"com.apple.remoteui.iforgot_embargo_cancel_page", @"com.apple.remoteui.iforgot_embargo_cancel_choice_1", @"com.apple.remoteui.iforgot_embargo_cancel_teardown", @"com.apple.remoteui.iforgot_embargo_inprogress", @"com.apple.remoteui.iforgot_embargo_inprogress_page", @"com.apple.remoteui.iforgot_embargo_inprogress_multiChoice_2", @"com.apple.remoteui.iforgot_embargo_inprogress_multiChoice_1", @"com.apple.remoteui.iforgot_embargo_inprogress_choice_2", @"com.apple.remoteui.iforgot_embargo_inprogress_choice_1", @"com.apple.remoteui.iforgot_embargo_inprogress_button_1", @"com.apple.remoteui.iforgot_embargo_inprogress_alert", @"com.apple.remoteui.iforgot_embargo_recovery_startover", @"com.apple.remoteui.iforgot_embargo_verification_startover", @"com.apple.remoteui.iforgot_embargo_verify_existingphone_account", @"com.apple.remoteui.iforgot_embargo_verify_existingphone_account_send", @"com.apple.remoteui.iforgot_embargo_verify_existingphone_trusted", @"com.apple.remoteui.iforgot_embargo_verify_existingphone_trusted_send", @"com.apple.remoteui.iforgot_embargo_verify_newphone", @"com.apple.remoteui.iforgot_embargo_verify_newphone_send", @"com.apple.remoteui.iforgot_embargo_verify_newphone_smscode", @"com.apple.remoteui.iforgot_embargo_verify_phoneoptions", @"com.apple.remoteui.iforgot_embargo_verify_recoverycode", @"com.apple.remoteui.iforgot_embargo_verify_recoverycode_send", @"com.apple.remoteui.iforgot_embargo_verify_recoveryphone", @"com.apple.remoteui.iforgot_embargo_verify_trustedphone", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_pinView_1", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_page", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_footer_1", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_button_1", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_alert_1", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_alert", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_send", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_send_pinView_1", @"com.apple.remoteui.iforgot_embargo_verify_verificationcode_send_page", @"com.apple.remoteui.iforgot_iforgot_password_reset", @"com.apple.remoteui.iforgot_iforgot_password_verify_appleid", @"com.apple.remoteui.iforgot_password_authenticationmethod", @"com.apple.remoteui.iforgot_password_authenticationmethod_page", @"com.apple.remoteui.iforgot_password_authenticationmethod_linkRow_1", @"com.apple.remoteui.iforgot_password_authenticationmethod_button_1", @"com.apple.remoteui.iforgot_password_authenticationmethod_alert_1", @"com.apple.remoteui.iforgot_password_resend_securitycode", @"com.apple.remoteui.iforgot_password_reset", @"com.apple.remoteui.iforgot_password_reset_buttonBarItem_1", @"com.apple.remoteui.iforgot_password_reset_editableTextRow_1", @"com.apple.remoteui.iforgot_password_reset_editableTextRow_2", @"com.apple.remoteui.iforgot_password_reset_footer_1", @"com.apple.remoteui.iforgot_password_reset_multiChoice_1", @"com.apple.remoteui.iforgot_password_reset_page", @"com.apple.remoteui.iforgot_password_reset_navigationBar_1", @"com.apple.remoteui.iforgot_password_reset_header_1", @"com.apple.remoteui.iforgot_password_reset_choice_1"}];

  return MEMORY[0x2821F96F8]();
}

void __55__CDPDAnalyticsTransport_getAllowedStringsForTelemetry__block_invoke()
{
  v16[12] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277CFD770];
  v14 = +[CDPDAnalyticsTransport getAllowedLocalSecretType];
  v16[0] = v14;
  v15[1] = *MEMORY[0x277CFD6C8];
  v13 = +[CDPDAnalyticsTransport getAllowedEscapeOffer];
  v16[1] = v13;
  v15[2] = *MEMORY[0x277CFD6D8];
  v0 = +[CDPDAnalyticsTransport getAllowedEscapeOffer];
  v16[2] = v0;
  v15[3] = *MEMORY[0x277CE45A0];
  v1 = +[CDPDAnalyticsTransport getAllowedErrorDomain];
  v16[3] = v1;
  v15[4] = *MEMORY[0x277CFD680];
  v2 = +[CDPDAnalyticsTransport getAllowedCfuType];
  v16[4] = v2;
  v15[5] = *MEMORY[0x277CE45C8];
  v3 = +[CDPDAnalyticsTransport getAllowedCfuType];
  v16[5] = v3;
  v15[6] = @"underlyingErrorDomain1";
  v4 = +[CDPDAnalyticsTransport getAllowedErrorDomain];
  v16[6] = v4;
  v15[7] = @"underlyingErrorDomain2";
  v5 = +[CDPDAnalyticsTransport getAllowedErrorDomain];
  v16[7] = v5;
  v15[8] = @"underlyingErrorDomain3";
  v6 = +[CDPDAnalyticsTransport getAllowedErrorDomain];
  v16[8] = v6;
  v15[9] = *MEMORY[0x277CF0360];
  v7 = +[CDPDAnalyticsTransport getAllowedElementIdentifiers];
  v16[9] = v7;
  v15[10] = *MEMORY[0x277CF0368];
  v8 = +[CDPDAnalyticsTransport getAllowedHandlerKey];
  v16[10] = v8;
  v15[11] = *MEMORY[0x277CF0370];
  v9 = +[CDPDAnalyticsTransport getAllowedHookName];
  v16[11] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:12];
  v11 = getAllowedStringsForTelemetry_allowedStringsDict;
  getAllowedStringsForTelemetry_allowedStringsDict = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)getAllowedStringsForInternalTelemetry
{
  if (getAllowedStringsForInternalTelemetry_onceToken != -1)
  {
    +[CDPDAnalyticsTransport getAllowedStringsForInternalTelemetry];
  }

  v3 = getAllowedStringsForInternalTelemetry_allowedAttributesDict;

  return v3;
}

void __63__CDPDAnalyticsTransport_getAllowedStringsForInternalTelemetry__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE45C8];
  v0 = +[CDPDAnalyticsTransport getAllowedCfuType];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = getAllowedStringsForInternalTelemetry_allowedAttributesDict;
  getAllowedStringsForInternalTelemetry_allowedAttributesDict = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)transportForClientType:(id)type clientBundleId:(id)id clientName:(id)name
{
  typeCopy = type;
  idCopy = id;
  nameCopy = name;
  if (transportCacheToken == -1)
  {
    if (!typeCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    +[CDPDAnalyticsTransport transportForClientType:clientBundleId:clientName:];
    if (!typeCopy)
    {
      goto LABEL_7;
    }
  }

  if (idCopy && nameCopy)
  {
    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", nameCopy, typeCopy, idCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2;
    v15[3] = &unk_278E249A8;
    v16 = idCopy;
    selfCopy = self;
    v17 = typeCopy;
    v18 = idCopy;
    v19 = nameCopy;
    v12 = idCopy;
    os_unfair_lock_lock(&cacheLock);
    v13 = __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2(v15);
    os_unfair_lock_unlock(&cacheLock);

    goto LABEL_10;
  }

LABEL_7:
  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[CDPDAnalyticsTransport transportForClientType:clientBundleId:clientName:];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

uint64_t __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke()
{
  transportCache = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

id __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2_cold_1(a1);
  }

  v3 = (a1 + 32);
  v4 = [transportCache objectForKeyedSubscript:*(a1 + 32)];
  if (!v4)
  {
    v4 = [objc_alloc(*(a1 + 64)) initWithClientType:*(a1 + 40) clientBundleId:*(a1 + 48) clientName:*(a1 + 56)];
    [transportCache setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  v5 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2_cold_2(v3);
  }

  return v4;
}

- (BOOL)_isEventPrivacyApprovedIdentifiable:(id)identifiable
{
  identifiableCopy = identifiable;
  v4 = +[CDPDAnalyticsTransport getAllowedADPEvents];
  v5 = +[CDPDAnalyticsTransport getAllowedAccountAccessEvents];
  eventName = [identifiableCopy eventName];
  if ([v4 containsObject:eventName])
  {
    v7 = 1;
  }

  else
  {
    eventName2 = [identifiableCopy eventName];
    v7 = [v5 containsObject:eventName2];
  }

  return v7;
}

- (void)_renewMissingDeviceSessionIDIfNeeded:(id)needed manager:(id)manager account:(id)account
{
  neededCopy = needed;
  managerCopy = manager;
  accountCopy = account;
  v10 = *MEMORY[0x277CE4588];
  v11 = [neededCopy objectForKeyedSubscript:*MEMORY[0x277CE4588]];
  if (v11 == *MEMORY[0x277CF00F0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = _CDPLogSystemAnalytics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAnalyticsTransport _renewMissingDeviceSessionIDIfNeeded:neededCopy manager:? account:?];
    }

    v13 = [managerCopy renewDeviceSessionIDForAccount:accountCopy];
    [neededCopy setObject:v13 forKeyedSubscript:v10];
  }
}

- (void)_enforceIdentifiableDataPrivacyComplianceOnEvent:(id)event manager:(id)manager
{
  eventCopy = event;
  managerCopy = manager;
  if (eventCopy)
  {
    v8 = *MEMORY[0x277CE4588];
    v9 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277CE4588]];
    v10 = [(CDPDAnalyticsTransport *)self _isEventPrivacyApprovedIdentifiable:eventCopy];
    altDSID = [eventCopy altDSID];
    v12 = [managerCopy authKitAccountWithAltDSID:altDSID];
    if (!v10 || v9)
    {
      if (v9)
      {
        v15 = v10;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        v16 = _CDPLogSystemAnalytics();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [CDPDAnalyticsTransport _enforceIdentifiableDataPrivacyComplianceOnEvent:eventCopy manager:?];
        }

        [eventCopy setObject:0 forKeyedSubscript:v8];
      }
    }

    else
    {
      v13 = _CDPLogSystemAnalytics();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CDPDAnalyticsTransport _enforceIdentifiableDataPrivacyComplianceOnEvent:eventCopy manager:?];
      }

      v14 = [managerCopy telemetryDeviceSessionIDForAccount:v12];
      [eventCopy setObject:v14 forKeyedSubscript:v8];
    }

    [(CDPDAnalyticsTransport *)self _renewMissingDeviceSessionIDIfNeeded:eventCopy manager:managerCopy account:v12];
  }
}

- (void)_replaceClientNameWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v6 = eventCopy;
    v4 = [eventCopy objectForKeyedSubscript:*MEMORY[0x277CE4588]];

    v5 = MEMORY[0x277CFD920];
    if (v4)
    {
      v5 = MEMORY[0x277CFD918];
    }

    [v6 setClientName:*v5];
    eventCopy = v6;
  }
}

- (void)enforcePrivacyComplianceOnEvent:(id)event key:(id)key value:(id)value
{
  v44 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  keyCopy = key;
  valueCopy = value;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  [(CDPDAnalyticsTransport *)self _enforceIdentifiableDataPrivacyComplianceOnEvent:eventCopy manager:mEMORY[0x277CF0130]];
  [(CDPDAnalyticsTransport *)self _replaceClientNameWithEvent:eventCopy];
  v12 = [eventCopy objectForKeyedSubscript:keyCopy];

  if (v12)
  {
    if ([keyCopy isEqualToString:*MEMORY[0x277CFD6C8]])
    {
      v30 = mEMORY[0x277CF0130];
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v32 = keyCopy;
      v14 = [eventCopy objectForKeyedSubscript:keyCopy];
      v15 = [v14 componentsSeparatedByString:{@", "}];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        v20 = *MEMORY[0x277CFDA50];
        v31 = eventCopy;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v33 + 1) + 8 * i);
            if ([valueCopy containsObject:v22])
            {
              [v13 addObject:v22];
            }

            else
            {
              [v13 addObject:v20];
              v23 = _CDPLogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                eventName = [eventCopy eventName];
                *buf = 138412802;
                v38 = v22;
                v39 = 2112;
                v40 = eventName;
                v41 = 2112;
                v42 = v32;
                _os_log_fault_impl(&dword_24510B000, v23, OS_LOG_TYPE_FAULT, "Received not approved data %@ for event %@ attribute %@", buf, 0x20u);

                eventCopy = v31;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v18);
      }

      aaf_arrayAsCommaSeperatedString = [v13 aaf_arrayAsCommaSeperatedString];
      keyCopy = v32;
      [eventCopy setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:v32];

      mEMORY[0x277CF0130] = v30;
    }

    else if ([keyCopy isEqualToString:*MEMORY[0x277CE45C8]])
    {
      [(CDPDAnalyticsTransport *)self santizeEventForPendingCFUType:eventCopy value:valueCopy];
    }

    else
    {
      v26 = [eventCopy objectForKeyedSubscript:keyCopy];
      v27 = [valueCopy containsObject:v26];

      if ((v27 & 1) == 0)
      {
        v28 = _CDPLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [CDPDAnalyticsTransport enforcePrivacyComplianceOnEvent:eventCopy key:keyCopy value:v28];
        }

        [eventCopy setObject:*MEMORY[0x277CFDA50] forKeyedSubscript:keyCopy];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnforcePrivacyComplianceForEvent:(id)event
{
  eventCopy = event;
  if ([MEMORY[0x277CFD560] isInternalBuild])
  {
    v4 = 0;
  }

  else
  {
    eventCategory = [eventCopy eventCategory];
    v4 = [eventCategory isEqualToNumber:*MEMORY[0x277CFD930]];
  }

  return v4;
}

- (void)santizeEventForPendingCFUType:(id)type value:(id)value
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valueCopy = value;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *MEMORY[0x277CE45C8];
  v20 = typeCopy;
  v9 = [typeCopy objectForKeyedSubscript:*MEMORY[0x277CE45C8]];
  v10 = [v9 componentsSeparatedByString:{@", "}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ([valueCopy containsObject:v16])
        {
          [v7 addObject:v16];
        }

        else
        {
          v17 = _CDPLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v26 = v16;
            v27 = 2112;
            v28 = v8;
            _os_log_debug_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEBUG, "Unapproved CFUType %@ received in telemetry for %@ attribute", buf, 0x16u);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  aaf_arrayAsCommaSeperatedString = [v7 aaf_arrayAsCommaSeperatedString];
  [v20 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:v8];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sanitizeEventForInternalReporting:(id)reporting key:(id)key value:(id)value
{
  reportingCopy = reporting;
  keyCopy = key;
  valueCopy = value;
  v10 = [reportingCopy objectForKeyedSubscript:keyCopy];

  if (v10 && [keyCopy isEqualToString:*MEMORY[0x277CE45C8]])
  {
    [(CDPDAnalyticsTransport *)self santizeEventForPendingCFUType:reportingCopy value:valueCopy];
  }
}

- (BOOL)shouldSanitizeEventForInternalReporting:(id)reporting
{
  reportingCopy = reporting;
  if ([MEMORY[0x277CFD560] isInternalBuild])
  {
    v4 = +[CDPDAnalyticsTransport getAllEventsForDataSanitization];
    eventName = [reportingCopy eventName];
    v6 = [v4 containsObject:eventName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if (sendEvent__onceToken != -1)
  {
    [CDPDAnalyticsTransport sendEvent:];
  }

  [(CDPDAnalyticsTransport *)self _updateEventWithDefaultMetadata:eventCopy];
  v5 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDAnalyticsTransport sendEvent:eventCopy];
  }

  v6 = os_transaction_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2114;
  aBlock[3] = &unk_278E249F8;
  aBlock[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  transport = [(CDPDAnalyticsTransport *)self transport];
  v10 = [transport conformsToProtocol:&unk_28583B6D0];

  if (v10)
  {
    v11 = sendEvent__telemetryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178;
    block[3] = &unk_278E24A20;
    block[4] = self;
    v14 = eventCopy;
    v15 = v8;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CDPDAnalyticsTransport sendEvent:];
    }
  }
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke()
{
  v0 = objc_opt_new();
  v1 = flowToSequenceMap;
  flowToSequenceMap = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.cdpd.telemetryQueue", v4);
  v3 = sendEvent__telemetryQueue;
  sendEvent__telemetryQueue = v2;
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2114(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2114_cold_1(a1);
  }

  v5 = [*(a1 + 32) _sendEvent:v3];

  if (v5)
  {
    v6 = dispatch_time(0, 300000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2115;
    block[3] = &unk_278E249D0;
    v8 = *(a1 + 40);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2115()
{
  v0 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2115_cold_1();
  }
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) transport];
  v4 = [v3 sessionState];

  switch(v4)
  {
    case 3:
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 48) + 16);

      v14();
      break;
    case 2:
      v9 = _CDPLogSystemAnalytics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178_cold_1(a1);
      }

      v10 = [*(a1 + 32) transport];
      v11 = [v10 eventQueue];
      [v11 addObject:*(a1 + 40)];

      v12 = _CDPLogSystemAnalytics();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178_cold_2(v2);
      }

      break;
    case 1:
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = sendEvent__telemetryQueue;

      [v5 configureSessionForEvent:v6 sendEventBlock:v7 telemetryQueue:v8];
      break;
  }
}

- (void)configureSessionForEvent:(id)event sendEventBlock:(id)block telemetryQueue:(id)queue
{
  eventCopy = event;
  blockCopy = block;
  queueCopy = queue;
  v11 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDAnalyticsTransport configureSessionForEvent:sendEventBlock:telemetryQueue:];
  }

  transport = [(CDPDAnalyticsTransport *)self transport];
  [transport setSessionState:2];

  transport2 = [(CDPDAnalyticsTransport *)self transport];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke;
  v19[3] = &unk_278E24A70;
  v20 = queueCopy;
  selfCopy = self;
  v22 = blockCopy;
  v14 = blockCopy;
  v15 = queueCopy;
  [transport2 configureReportingSessionWithCompletion:v19];

  v16 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [CDPDAnalyticsTransport configureSessionForEvent:sendEventBlock:telemetryQueue:];
  }

  transport3 = [(CDPDAnalyticsTransport *)self transport];
  eventQueue = [transport3 eventQueue];
  [eventQueue addObject:eventCopy];
}

void __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2;
  v9 = &unk_278E24898;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v3;
  dispatch_async(v2, &v6);
  v4 = [*(a1 + 40) transport];
  v5 = dispatch_time(0, 1000000000 * [v4 sessionGracePeriod]);
  dispatch_after(v5, MEMORY[0x277D85CD0], &__block_literal_global_2183);
}

void __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2_cold_1(a1);
  }

  v3 = [*(a1 + 32) transport];
  [v3 setSessionState:3];

  v4 = [*(a1 + 32) transport];
  v5 = [v4 eventQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2179;
  v8[3] = &unk_278E24A48;
  v9 = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = [*(a1 + 32) transport];
  v7 = [v6 eventQueue];
  [v7 removeAllObjects];
}

uint64_t __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2_2181()
{
  v0 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2_2181_cold_1();
  }

  return +[CDPDAnalyticsTransport flushTransportCache];
}

- (void)_updateEventWithDefaultMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = *MEMORY[0x277CFD8F8];
  v5 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277CFD8F8]];

  if (!v5)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v7 = currentConnection;
    if (currentConnection)
    {
      aaf_processName = [currentConnection aaf_processName];
      if (aaf_processName)
      {
        v9 = aaf_processName;
        [metadataCopy setObject:aaf_processName forKeyedSubscript:v4];
      }
    }
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = 0;
  v10 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277CE45B8]];
  v11 = v10;
  if (v10)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v25 = __58__CDPDAnalyticsTransport__updateEventWithDefaultMetadata___block_invoke;
    v26 = &unk_278E24A98;
    v29 = v30;
    v27 = v10;
    v28 = metadataCopy;
    v12 = v24;
    os_unfair_lock_lock(&cacheLock);
    v25(v12);

    os_unfair_lock_unlock(&cacheLock);
  }

  if ([MEMORY[0x277CFD560] isInternalBuild])
  {
    v13 = *MEMORY[0x277CE45D8];
    v14 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277CE45D8]];

    if (!v14)
    {
      v15 = CFPreferencesCopyAppValue(@"TelemetryInternalSignature", @"com.apple.AAAFoundation");
      if (v15)
      {
        [metadataCopy setObject:v15 forKeyedSubscript:v13];
      }

      else
      {
        mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
        mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
        primaryAuthKitAccount = [mEMORY[0x277CF0130]2 primaryAuthKitAccount];
        v19 = [mEMORY[0x277CF0130] DSIDForAccount:primaryAuthKitAccount];

        mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
        serialNumber = [mEMORY[0x277CFD4F8] serialNumber];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v19, serialNumber];;
        [metadataCopy setObject:v22 forKeyedSubscript:v13];
      }
    }
  }

  if ([MEMORY[0x277CFD560] isVirtualMachine])
  {
    v23 = @"VM";
LABEL_18:
    [metadataCopy setObject:v23 forKeyedSubscript:*MEMORY[0x277CFD6B8]];
    goto LABEL_19;
  }

  if ([MEMORY[0x277CFD560] isDemoDevice])
  {
    v23 = @"Demo";
    goto LABEL_18;
  }

LABEL_19:

  _Block_object_dispose(v30, 8);
}

void __58__CDPDAnalyticsTransport__updateEventWithDefaultMetadata___block_invoke(uint64_t a1)
{
  v2 = [flowToSequenceMap objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v6, "longValue") + 1}];
    v8 = *(*(a1 + 48) + 8);
    v6 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    *(v5 + 40) = &unk_2858221C8;
  }

  [flowToSequenceMap setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  [*(a1 + 40) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*MEMORY[0x277CFD900]];
  v9 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __58__CDPDAnalyticsTransport__updateEventWithDefaultMetadata___block_invoke_cold_1();
  }
}

- (id)_sendEvent:(id)event
{
  eventCopy = event;
  if ([(CDPDAnalyticsTransport *)self shouldSanitizeEventForInternalReporting:eventCopy])
  {
    v5 = allowedStringsForInternalTelemetry;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__CDPDAnalyticsTransport__sendEvent___block_invoke;
    v19[3] = &unk_278E24AC0;
    v19[4] = self;
    v20 = eventCopy;
    [v5 enumerateKeysAndObjectsUsingBlock:v19];
  }

  if ([(CDPDAnalyticsTransport *)self shouldEnforcePrivacyComplianceForEvent:eventCopy])
  {
    if (![CDPDAnalyticsTransport isEventPrivacyApproved:eventCopy])
    {
      v7 = 0;
      goto LABEL_20;
    }

    v6 = allowedStringsForTelemetry;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __37__CDPDAnalyticsTransport__sendEvent___block_invoke_2;
    v16 = &unk_278E24AC0;
    selfCopy = self;
    v18 = eventCopy;
    [v6 enumerateKeysAndObjectsUsingBlock:&v13];
  }

  v7 = [eventCopy objectForKeyedSubscript:{*MEMORY[0x277CFD900], v13, v14, v15, v16, selfCopy}];
  if (v7)
  {
    v8 = _CDPLogSystemAnalytics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAnalyticsTransport _sendEvent:eventCopy];
    }
  }

  transport = self->_transport;
  if (!transport)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CDPDAnalyticsTransport _sendEvent:];
    }

    transport = self->_transport;
  }

  [(AAFAnalyticsTransportInProcessRTC *)transport sendEvent:eventCopy];
  if (v7)
  {
    v11 = _CDPLogSystemAnalytics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAnalyticsTransport _sendEvent:eventCopy];
    }
  }

  [(CDPDTTRController *)self->_ttrController requestTTRIfSupportedForEvent:eventCopy];
LABEL_20:

  return v7;
}

- (void)initWithClientType:clientBundleId:clientName:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  v4 = v0;
  _os_log_fault_impl(&dword_24510B000, v1, OS_LOG_TYPE_FAULT, "clientBundleID is nil, transport will not be initialized properly. clientType = %@, clientName = %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)transportForEvent:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)transportForEvent:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __75__CDPDAnalyticsTransport_transportForClientType_clientBundleId_clientName___block_invoke_2_cold_2(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v6 = v2;
  _os_log_debug_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEBUG, "Returning transport for key: %@ - %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_renewMissingDeviceSessionIDIfNeeded:(void *)a1 manager:account:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_enforceIdentifiableDataPrivacyComplianceOnEvent:(void *)a1 manager:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_enforceIdentifiableDataPrivacyComplianceOnEvent:(void *)a1 manager:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enforcePrivacyComplianceOnEvent:(void *)a1 key:(uint64_t)a2 value:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = [a1 eventName];
  v11 = 138412802;
  v12 = v6;
  OUTLINED_FUNCTION_4();
  v13 = v8;
  v14 = v9;
  v15 = a2;
  _os_log_fault_impl(&dword_24510B000, a3, OS_LOG_TYPE_FAULT, "Received not approved data %@ for event %@ attribute %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2114_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) transport];
  [v1 sessionState];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2115_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __36__CDPDAnalyticsTransport_sendEvent___block_invoke_2178_cold_2(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 transport];
  v2 = [v1 eventQueue];
  [v2 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configureSessionForEvent:sendEventBlock:telemetryQueue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureSessionForEvent:sendEventBlock:telemetryQueue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) transport];
  v2 = [v1 eventQueue];
  [v2 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__CDPDAnalyticsTransport_configureSessionForEvent_sendEventBlock_telemetryQueue___block_invoke_2_2181_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__CDPDAnalyticsTransport__updateEventWithDefaultMetadata___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendEvent:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendEvent:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, v0, OS_LOG_TYPE_FAULT, "Transport is nil, event: %@ will not be sent.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_sendEvent:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end