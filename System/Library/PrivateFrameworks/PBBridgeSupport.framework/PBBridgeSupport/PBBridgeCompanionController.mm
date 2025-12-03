@interface PBBridgeCompanionController
+ (id)displayNameWithFirstName:(id)name lastName:(id)lastName;
+ (void)iCloudFirstName:(id *)name lastName:(id *)lastName;
+ (void)meCardFirstName:(id *)name lastName:(id *)lastName;
- (BOOL)shouldHandleMessageType:(unsigned __int16)type fromId:(id)id;
- (PBBridgeCompanionController)init;
- (PBBridgeConnectionDelegate)delegate;
- (RUILoaderDelegate)ruiDelegate;
- (id)_connectionWithRequest:(id)request;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (id)currentNetworks:(BOOL)networks;
- (id)currentWiFiNetworkName;
- (id)viewControllerForAlertPresentation;
- (void)_cleanup;
- (void)_processActivationData;
- (void)acknowledgeBuysOnWatchCredentialIngestion:(id)ingestion;
- (void)activationTimedOut;
- (void)beganWaitingForPresentationOfActivationEvent;
- (void)beganWaitingForUserResponseToActivationEvent;
- (void)beginSetupTransaction;
- (void)checkApplicationInstallAllowedWithCompletion:(id)completion;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)enableSiriForGizmo:(id)gizmo;
- (void)endSetupTransaction;
- (void)getCompanionLanguage:(id)language;
- (void)getCompanionRegion:(id)region;
- (void)getSiriState:(id)state;
- (void)gizmoActivationFailed:(id)failed;
- (void)gizmoBecameAvailableWantsConfirmation:(id)confirmation;
- (void)gizmoDidBeginActivating:(id)activating;
- (void)gizmoDidBeginUnlockPairing:(id)pairing;
- (void)gizmoDidEndPasscodeChange:(id)change;
- (void)gizmoDidEndPasscodeCreation:(id)creation;
- (void)gizmoDidEndUnlockPairing:(id)pairing;
- (void)gizmoDidFinishActivating:(id)activating;
- (void)gizmoFailedToCreatePasscode:(id)passcode;
- (void)handleAppViewListImageResponse:(id)response;
- (void)handleApplicationInstallRestrictionResponse:(id)response;
- (void)handleDeviceManagementResponse:(id)response;
- (void)handleOfflineTermsResponse:(id)response;
- (void)handlePerformanceResults:(id)results;
- (void)handleRemoteActivationDetails:(id)details;
- (void)handleWarrantySentinelResponse:(id)response;
- (void)invalidateTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)queryGizmoForOfflineTerms;
- (void)queryGizmoForShowWarrantySentinelAndRestoreDeviceName:(id)name;
- (void)refreshTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state;
- (void)requestProxiedDeviceForWatchWithCompletion:(id)completion;
- (void)retrieveAppViewListImageFromGizmo:(CGSize)gizmo completion:(id)completion;
- (void)returnedRemoteAccountForDevice:(id)device;
- (void)sendBuysOnWatchUsername:(id)username andPassword:(id)password withCompletion:(id)completion;
- (void)sendComputedTimeZoneToGizmo;
- (void)sendDemoWatchWirelessCredentials;
- (void)sendGizmoPasscodeRestrictions;
- (void)sendProxyActivationRequest:(id)request;
- (void)sendProxyActivationWithCustomRequest:(id)request;
- (void)sendTinkerAccountCredentialsWithContext:(id)context completion:(id)completion;
- (void)setupServiceMessageSelectorMappings;
- (void)tellGizmoToBeginActivation;
- (void)tellGizmoToDeleteWarrantySentinel;
- (void)tellGizmoToKeepAliveForActivationEvent;
- (void)tellGizmoToPopToControllerType:(unint64_t)type;
- (void)tellGizmoToPrepareForInitialSyncWithCompletion:(id)completion;
- (void)tellGizmoToPushControllerType:(unint64_t)type;
- (void)tellGizmoToRetryActivation;
- (void)tellGizmoToShowLockedOnAnimationTimeToFlash:(double)flash animationCompletion:(id)completion;
- (void)tellGizmoToUpdateNanoRegistryToNormalState;
- (void)tellGizmoToUpdateSyncProgressTo:(double)to withState:(int64_t)state;
- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:(BOOL)address withCompletion:(id)completion;
- (void)tellWatchToChangeDeviceNameFor:(id)for;
- (void)tellWatchToConfigureDeviceManagementWithData:(id)data completion:(id)completion;
- (void)tellWatchToPrepareForForcedSUWithCompletion:(id)completion;
- (void)tellWatchToSetLauncherViewMode:(int64_t)mode;
- (void)tinkerFinishedHealthSharingOptIn:(id)in;
- (void)tinkerWatchIngestedCredentials:(id)credentials;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)watchDidApplyWirelessCredentials:(id)credentials;
- (void)watchDidIngestWirelessCredentials:(id)credentials;
- (void)watchDidPrepareForForcedSU:(id)u;
- (void)watchDidPrepareForInitialSync:(id)sync;
- (void)watchDidRespondWithLanguageAndLocaleStatus:(id)status;
@end

@implementation PBBridgeCompanionController

- (PBBridgeCompanionController)init
{
  v7.receiver = self;
  v7.super_class = PBBridgeCompanionController;
  v2 = [(PBBridgeCompanionController *)&v7 init];
  if (v2)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_8);
    if (PBIsInternalInstall())
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v2->_allowAnyHTTPSCertificate = [standardUserDefaults BOOLForKey:@"ActivationAllowAnyHTTPSCertificate"];
    }

    v4 = dispatch_queue_create("com.apple.Bridge.timeout.tracker.queue", 0);
    timeoutTrackerQueue = v2->_timeoutTrackerQueue;
    v2->_timeoutTrackerQueue = v4;
  }

  return v2;
}

- (void)setupServiceMessageSelectorMappings
{
  service = [(PBBridgeIDSServiceDelegate *)self service];
  [service setProtobufAction:sel_gizmoBecameAvailableWantsConfirmation_ forIncomingRequestsOfType:1];

  service2 = [(PBBridgeIDSServiceDelegate *)self service];
  [service2 setProtobufAction:sel_sendProxyActivationRequest_ forIncomingRequestsOfType:2];

  service3 = [(PBBridgeIDSServiceDelegate *)self service];
  [service3 setProtobufAction:sel_gizmoDidBeginActivating_ forIncomingRequestsOfType:3];

  service4 = [(PBBridgeIDSServiceDelegate *)self service];
  [service4 setProtobufAction:sel_gizmoDidFinishActivating_ forIncomingRequestsOfType:4];

  service5 = [(PBBridgeIDSServiceDelegate *)self service];
  [service5 setProtobufAction:sel_gizmoDidFinishActivating_ forIncomingRequestsOfType:21];

  service6 = [(PBBridgeIDSServiceDelegate *)self service];
  [service6 setProtobufAction:sel_getCompanionLanguage_ forIncomingRequestsOfType:5];

  service7 = [(PBBridgeIDSServiceDelegate *)self service];
  [service7 setProtobufAction:sel_getCompanionRegion_ forIncomingRequestsOfType:6];

  service8 = [(PBBridgeIDSServiceDelegate *)self service];
  [service8 setProtobufAction:sel_gizmoDidEndPasscodeCreation_ forIncomingRequestsOfType:7];

  service9 = [(PBBridgeIDSServiceDelegate *)self service];
  [service9 setProtobufAction:sel_gizmoDidEndPasscodeChange_ forIncomingRequestsOfType:28];

  service10 = [(PBBridgeIDSServiceDelegate *)self service];
  [service10 setProtobufAction:sel_gizmoDidBeginUnlockPairing_ forIncomingRequestsOfType:19];

  service11 = [(PBBridgeIDSServiceDelegate *)self service];
  [service11 setProtobufAction:sel_gizmoDidEndUnlockPairing_ forIncomingRequestsOfType:13];

  service12 = [(PBBridgeIDSServiceDelegate *)self service];
  [service12 setProtobufAction:sel_getSiriState_ forIncomingRequestsOfType:8];

  service13 = [(PBBridgeIDSServiceDelegate *)self service];
  [service13 setProtobufAction:sel_gizmoActivationFailed_ forIncomingRequestsOfType:12];

  service14 = [(PBBridgeIDSServiceDelegate *)self service];
  [service14 setProtobufAction:sel_handlePerformanceResults_ forIncomingRequestsOfType:16];

  service15 = [(PBBridgeIDSServiceDelegate *)self service];
  [service15 setProtobufAction:sel_handleWarrantySentinelResponse_ forIncomingResponsesOfType:14];

  service16 = [(PBBridgeIDSServiceDelegate *)self service];
  [service16 setProtobufAction:sel_handleOfflineTermsResponse_ forIncomingResponsesOfType:15];

  service17 = [(PBBridgeIDSServiceDelegate *)self service];
  [service17 setProtobufAction:sel_gizmoFailedToCreatePasscode_ forIncomingRequestsOfType:17];

  service18 = [(PBBridgeIDSServiceDelegate *)self service];
  [service18 setProtobufAction:sel_watchDidPrepareForInitialSync_ forIncomingResponsesOfType:18];

  service19 = [(PBBridgeIDSServiceDelegate *)self service];
  [service19 setProtobufAction:sel_watchDidRespondWithLanguageAndLocaleStatus_ forIncomingRequestsOfType:20];

  service20 = [(PBBridgeIDSServiceDelegate *)self service];
  [service20 setProtobufAction:sel_watchDidIngestWirelessCredentials_ forIncomingRequestsOfType:22];

  service21 = [(PBBridgeIDSServiceDelegate *)self service];
  [service21 setProtobufAction:sel_watchDidPrepareForForcedSU_ forIncomingResponsesOfType:23];

  service22 = [(PBBridgeIDSServiceDelegate *)self service];
  [service22 setProtobufAction:sel_handleRemoteActivationDetails_ forIncomingRequestsOfType:27];

  service23 = [(PBBridgeIDSServiceDelegate *)self service];
  [service23 setProtobufAction:sel_returnedRemoteAccountForDevice_ forIncomingResponsesOfType:25];

  service24 = [(PBBridgeIDSServiceDelegate *)self service];
  [service24 setProtobufAction:sel_tinkerWatchIngestedCredentials_ forIncomingResponsesOfType:26];

  service25 = [(PBBridgeIDSServiceDelegate *)self service];
  [service25 setProtobufAction:sel_tinkerFinishedHealthSharingOptIn_ forIncomingRequestsOfType:29];

  service26 = [(PBBridgeIDSServiceDelegate *)self service];
  [service26 setProtobufAction:sel_acknowledgeBuysOnWatchCredentialIngestion_ forIncomingResponsesOfType:30];

  service27 = [(PBBridgeIDSServiceDelegate *)self service];
  [service27 setProtobufAction:sel_handleAppViewListImageResponse_ forIncomingResponsesOfType:102];

  service28 = [(PBBridgeIDSServiceDelegate *)self service];
  [service28 setProtobufAction:sel_handleDeviceManagementResponse_ forIncomingResponsesOfType:31];

  service29 = [(PBBridgeIDSServiceDelegate *)self service];
  [service29 setProtobufAction:sel_handleApplicationInstallRestrictionResponse_ forIncomingResponsesOfType:32];

  service30 = [(PBBridgeIDSServiceDelegate *)self service];
  [service30 setProtobufAction:sel_watchDidApplyWirelessCredentials_ forIncomingResponsesOfType:33];
}

- (void)beginSetupTransaction
{
  v3.receiver = self;
  v3.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v3 beginSetupTransaction];
  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0];
}

- (void)endSetupTransaction
{
  v10.receiver = self;
  v10.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v10 endSetupTransaction];
  languageLocaleCompletion = self->_languageLocaleCompletion;
  self->_languageLocaleCompletion = 0;

  remoteActivationUserAgent = self->_remoteActivationUserAgent;
  self->_remoteActivationUserAgent = 0;

  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0];
  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  activationData = self->_activationData;
  self->_activationData = 0;

  contentType = self->_contentType;
  self->_contentType = 0;

  [(RUILoader *)self->_ruiLoader cancel];
  [(RUILoader *)self->_ruiLoader setDelegate:0];
  ruiLoader = self->_ruiLoader;
  self->_ruiLoader = 0;

  self->_connectionFailed = 0;
  self->_nonSilentActivation = 0;
  self->_sentSessionRequest = 0;
  self->_sentActivationRequest = 0;
}

- (BOOL)shouldHandleMessageType:(unsigned __int16)type fromId:(id)id
{
  typeCopy = type;
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  service = [(PBBridgeIDSServiceDelegate *)self service];
  v8 = [service linkedDeviceForFromID:idCopy withRelationship:3];

  if (!v8)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PBBCMessageDescription(typeCopy);
      v13 = 138412546;
      v14 = v10;
      v15 = 2114;
      v16 = idCopy;
      _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Dropping stale message %@ received from: %{public}@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (void)getCompanionLanguage:(id)language
{
  v18 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = 610;
    v16 = 2080;
    v17 = "[PBBridgeCompanionController getCompanionLanguage:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [languageCopy type];
  context = [languageCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v13 = firstObject;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:5 withArguments:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getCompanionRegion:(id)region
{
  v17 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = 622;
    v15 = 2080;
    v16 = "[PBBridgeCompanionController getCompanionRegion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [regionCopy type];
  context = [regionCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = currentLocale;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:6 withArguments:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)gizmoBecameAvailableWantsConfirmation:(id)confirmation
{
  v23 = *MEMORY[0x277D85DE8];
  confirmationCopy = confirmation;
  type = [confirmationCopy type];
  context = [confirmationCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoBecameActive alloc];
    data = [confirmationCopy data];
    v10 = [(PBBProtoBecameActive *)v8 initWithData:data];

    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 67109378;
      v20[1] = 640;
      v21 = 2080;
      v22 = "[PBBridgeCompanionController gizmoBecameAvailableWantsConfirmation:]";
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%d %s", v20, 0x12u);
    }

    if ([(PBBProtoBecameActive *)v10 wantsConfirmation])
    {
      [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:1 withArguments:&unk_286FB4220];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidBecomeAvailable];

    if (PBLogPerformanceMetrics())
    {
      v13 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      context2 = [confirmationCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v13 addMilestone:v16 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getSiriState:(id)state
{
  v13[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  type = [stateCopy type];
  context = [stateCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D30]] != 0;

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:7 withArguments:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableSiriForGizmo:(id)gizmo
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 665;
    v7 = 2080;
    v8 = "[PBBridgeCompanionController enableSiriForGizmo:]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v6, 0x12u);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setBoolValue:1 forSetting:*MEMORY[0x277D25D30]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:(BOOL)address withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_activationState == 6)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:6];
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v11 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:localeIdentifier];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
  archivedPreferences = [MEMORY[0x277CBEAF8] archivedPreferences];
  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = archivedPreferences;
    _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "archivedPreferences dictionary contains:\n%@", buf, 0xCu);
  }

  if (!address)
  {
    v15 = [archivedPreferences objectForKey:@"ArchivedInflection"];

    if (v15)
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:archivedPreferences];
      [v16 removeObjectForKey:@"ArchivedInflection"];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v16];

      v18 = pbb_setup_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "Pairing watch doesn't support term of address; removed ArchivedInflection key", buf, 2u);
      }

      archivedPreferences = v17;
    }
  }

  v19 = preferredLanguages;
  if (preferredLanguages)
  {
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_20:
    v21 = pbb_setupflow_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
    }

    v12 = &stru_286FA8098;
    if (archivedPreferences)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v20 = pbb_setupflow_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
  }

  v19 = MEMORY[0x277CBEBF8];
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (!archivedPreferences)
  {
LABEL_23:
    v22 = pbb_setupflow_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:];
    }

    archivedPreferences = MEMORY[0x277CBEC10];
    goto LABEL_26;
  }

  if (!preferredLanguages)
  {
LABEL_26:
    getpid();
    v23 = MEMORY[0x277CCACA8];
    firstObject = [v19 firstObject];
    v25 = [v23 stringWithFormat:@"Error! Invalid Language/Locale/Region/archivedPreferences (%@/%@/%@/%@)", firstObject, localeIdentifier, v12, archivedPreferences];
    SimulateCrash();
  }

  v26 = MEMORY[0x25F8A6750](completionCopy);
  languageLocaleCompletion = self->_languageLocaleCompletion;
  self->_languageLocaleCompletion = v26;

  v30[0] = v19;
  v30[1] = v12;
  v30[2] = archivedPreferences;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:25 withArguments:v28];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)watchDidRespondWithLanguageAndLocaleStatus:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  type = [statusCopy type];
  context = [statusCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoTellCompanionLanguageAndLocaleChangeStatus alloc];
    data = [statusCopy data];
    v10 = [(PBBProtoTellCompanionLanguageAndLocaleChangeStatus *)v8 initWithData:data];

    [(PBBProtoTellCompanionLanguageAndLocaleChangeStatus *)v10 status];
    v12 = v11;
    v13 = pbb_setupflow_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
      *buf = 136315394;
      v20 = "[PBBridgeCompanionController watchDidRespondWithLanguageAndLocaleStatus:]";
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "%s (Status: %@)", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__PBBridgeCompanionController_watchDidRespondWithLanguageAndLocaleStatus___block_invoke;
    v16[3] = &unk_2799F4B78;
    objc_copyWeak(&v17, buf);
    v18 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__PBBridgeCompanionController_watchDidRespondWithLanguageAndLocaleStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained languageLocaleCompletion];

    if (v3)
    {
      v4 = [v6 languageLocaleCompletion];
      v4[2](v4, *(a1 + 40));

      [v6 setLanguageLocaleCompletion:0];
    }

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 setIsLanguageAndLocaleFinished:1];

    WeakRetained = v6;
  }
}

- (void)beganWaitingForPresentationOfActivationEvent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeCompanionController beganWaitingForPresentationOfActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:6];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:22 withArguments:MEMORY[0x277CBEBF8]];
  PBNotifyClientOfActivity();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)beganWaitingForUserResponseToActivationEvent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeCompanionController beganWaitingForUserResponseToActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:6];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:23 withArguments:MEMORY[0x277CBEBF8]];
  PBNotifyClientOfActivity();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)gizmoDidBeginActivating:(id)activating
{
  v17 = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[PBBridgeCompanionController gizmoDidBeginActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  type = [activatingCopy type];
  context = [activatingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:4];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeGizmoDidBeginActivatingNotification" object:0];

    if (PBLogPerformanceMetrics())
    {
      v10 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      context2 = [activatingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v10 addMilestone:@"GizmoDidBeginActivating" activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)gizmoDidFinishActivating:(id)activating
{
  v18 = *MEMORY[0x277D85DE8];
  activatingCopy = activating;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[PBBridgeCompanionController gizmoDidFinishActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  type = [activatingCopy type];
  context = [activatingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:0xFFFFLL];
    if ([activatingCopy type] == 21)
    {
      v9 = @"DeKOTA";
    }

    else
    {
      v9 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeGizmoDidFinishActivatingNotification" object:v9];

    if (PBLogPerformanceMetrics())
    {
      v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      context2 = [activatingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v11 addMilestone:@"GizmoDidFinishActivating" activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)gizmoActivationFailed:(id)failed
{
  v24 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[PBBridgeCompanionController gizmoActivationFailed:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v22, 0xCu);
  }

  type = [failedCopy type];
  context = [failedCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v9 = [PBBProtoGizmoActivationFailed alloc];
    data = [failedCopy data];
    v11 = [(PBBProtoGizmoActivationFailed *)v9 initWithData:data];

    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:5];
    failureDescription = [(PBBProtoGizmoActivationFailed *)v11 failureDescription];
    v13 = pbb_activation_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController gizmoActivationFailed:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidFailActivation:4 description:failureDescription];

    if (PBLogPerformanceMetrics())
    {
      v15 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      context2 = [failedCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v15 addMilestone:v18 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handlePerformanceResults:(id)results
{
  v48 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[PBBridgeCompanionController handlePerformanceResults:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  type = [resultsCopy type];
  context = [resultsCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    selfCopy = self;
    v9 = [PBBProtoTransferPerformanceResults alloc];
    data = [resultsCopy data];
    v11 = [(PBBProtoTransferPerformanceResults *)v9 initWithData:data];

    v12 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    measures = [(PBBProtoTransferPerformanceResults *)v11 measures];
    [v12 setRemoteMeasurements:measures];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    macroActivites = [(PBBProtoTransferPerformanceResults *)v11 macroActivites];
    v16 = [macroActivites countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(macroActivites);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          activityType = [v20 activityType];
          [dictionary setObject:v20 forKey:activityType];
        }

        v17 = [macroActivites countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v17);
    }

    [v12 setRemoteMacroActivities:dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v11;
    milestones = [(PBBProtoTransferPerformanceResults *)v11 milestones];
    v24 = [milestones countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(milestones);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          identifier = [v28 identifier];
          [dictionary2 setObject:v28 forKey:identifier];
        }

        v25 = [milestones countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v25);
    }

    [v12 setRemoteMilestones:dictionary2];
    [v12 endMonitorTransaction];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = objc_loadWeakRetained(&selfCopy->_delegate);
      [v32 didHandlePerformanceResults];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_connectionWithRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[PBBridgeCompanionController _connectionWithRequest:]";
    v13 = 2112;
    v14 = requestCopy;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s: Request (%@)", &v11, 0x16u);
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  [requestCopy setValue:@"WiFi" forHTTPHeaderField:@"X-iOS-Activation-Medium"];
  self->_connectionFailed = 0;
  v7 = [objc_alloc(MEMORY[0x277CCACE8]) _initWithRequest:requestCopy delegate:self usesCache:1 maxContentLength:0 startImmediately:1 connectionProperties:v6];
  p_sentSessionRequest = &self->_sentSessionRequest;
  if (!self->_sentSessionRequest || (p_sentSessionRequest = &self->_sentActivationRequest, !self->_sentActivationRequest))
  {
    *p_sentSessionRequest = 1;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendProxyActivationRequest:(id)request
{
  v71 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  type = [requestCopy type];
  context = [requestCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"__SkipReachabilityChecks"];

    if (v9)
    {
      v10 = pbb_activation_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendProxyActivationRequest:];
      }

LABEL_38:

      PBNotifyClientOfActivity();
      goto LABEL_39;
    }

    v11 = [PBBProtoProxyActivationFetch alloc];
    data = [requestCopy data];
    v10 = [(PBBProtoProxyActivationFetch *)v11 initWithData:data];

    if (PBLogPerformanceMetrics())
    {
      v13 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      context2 = [requestCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v13 addMilestone:v16 activityType:outgoingResponseIdentifier activityIdentifier:Current];

      v19 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v19 endMacroActivity:@"PBBridgeProxyActivationStageOneActivityName" beginTime:CFAbsoluteTimeGetCurrent()];
      v21 = v20;

      [PBBridgeCAReporter pushTimingType:2 withValue:v21];
      v22 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v22 beginMacroActivity:@"PBBridgeProxyActivationStageTwoActivityName" beginTime:CFAbsoluteTimeGetCurrent()];
    }

    request = [v10 request];

    v24 = request == 0;
    v25 = pbb_activation_log();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendProxyActivationRequest:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained remoteDidFailActivation:4 description:@"Gizmo Sent nil Activation Data"];

      goto LABEL_38;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      request2 = [v10 request];
      *buf = 136315394;
      v68 = "[PBBridgeCompanionController sendProxyActivationRequest:]";
      v69 = 2048;
      v70 = [request2 length];
      _os_log_impl(&dword_25DE64000, v26, OS_LOG_TYPE_DEFAULT, "%s request length (%ld bytes)", buf, 0x16u);
    }

    v28 = objc_alloc(MEMORY[0x277CCAAC8]);
    request3 = [v10 request];
    v66 = 0;
    v30 = [v28 initForReadingFromData:request3 error:&v66];
    v31 = v66;

    if (v31)
    {
      v32 = pbb_activation_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = v32;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          request4 = [v10 request];
          v61 = [request4 length];
          *buf = 138412546;
          v68 = v31;
          v69 = 2048;
          v70 = v61;
          _os_log_error_impl(&dword_25DE64000, v33, OS_LOG_TYPE_ERROR, "Error (%@) decoding request (%ld bytes)", buf, 0x16u);
        }
      }
    }

    v34 = [v30 decodeObjectOfClass:objc_opt_class() forKey:@"PBBridgeActivationRequestKey"];
    v35 = [v34 copy];
    activationRequest = self->_activationRequest;
    self->_activationRequest = v35;

    if (self->_activationRequest || ([v30 error], v52 = objc_claimAutoreleasedReturnValue(), v53 = v52 == 0, v52, v53))
    {
      v37 = pbb_activation_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_activationRequest;
        *buf = 138543362;
        v68 = v38;
        _os_log_impl(&dword_25DE64000, v37, OS_LOG_TYPE_DEFAULT, "Activation Request %{public}@", buf, 0xCu);
      }

      [v30 finishDecoding];
      v39 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"User-Agent"];
      v40 = [v39 copy];
      remoteActivationUserAgent = self->_remoteActivationUserAgent;
      self->_remoteActivationUserAgent = v40;

      if (PBIsInternalInstall() && [(PBBridgeCompanionController *)self _dumpActivationRequests])
      {
        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Request-%f.txt", CFAbsoluteTimeGetCurrent()];
        v43 = MEMORY[0x277CCACA8];
        v44 = [(NSMutableURLRequest *)self->_activationRequest URL];
        allHTTPHeaderFields = [(NSMutableURLRequest *)self->_activationRequest allHTTPHeaderFields];
        v46 = objc_alloc(MEMORY[0x277CCACA8]);
        hTTPBody = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
        v48 = [v46 initWithData:hTTPBody encoding:4];
        v49 = [v43 stringWithFormat:@"%@\n%@\n%@", v44, allHTTPHeaderFields, v48];

        [v49 writeToFile:v42 atomically:1 encoding:4 error:0];
        v50 = pbb_activation_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v42;
          _os_log_impl(&dword_25DE64000, v50, OS_LOG_TYPE_DEFAULT, "Writing Activation Request to %@", buf, 0xCu);
        }
      }

      if (self->_activationRequest)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__PBBridgeCompanionController_sendProxyActivationRequest___block_invoke;
        block[3] = &unk_2799F4468;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        v57 = pbb_activation_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController sendProxyActivationRequest:];
        }

        v58 = objc_loadWeakRetained(&self->_delegate);
        [v58 remoteDidFailActivation:4 description:@"Decoded request from Gizmo is nil"];
      }

      goto LABEL_38;
    }

    v54 = pbb_activation_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        error = [v30 error];
        request5 = [v10 request];
        v64 = [request5 length];
        *buf = 138543618;
        v68 = error;
        v69 = 2048;
        v70 = v64;
        _os_log_error_impl(&dword_25DE64000, v55, OS_LOG_TYPE_ERROR, "Decoding error (%{public}@) while decoding request (%ld bytes)", buf, 0x16u);
      }
    }

    v56 = objc_loadWeakRetained(&self->_delegate);
    [v56 remoteDidFailActivation:4 description:@"Exception decoding request from Gizmo"];
  }

LABEL_39:

  v59 = *MEMORY[0x277D85DE8];
}

void __58__PBBridgeCompanionController_sendProxyActivationRequest___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 120);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Sending Proxy Activation: (%@)", &v12, 0xCu);
  }

  *(*(a1 + 32) + 76) = 1;
  [*(a1 + 32) refreshTimeoutTimerWithNewActivationGranularState:2];
  v4 = *(a1 + 32);
  if (*(v4 + 68))
  {
    v5 = MEMORY[0x277CCAD20];
    v6 = [*(v4 + 120) URL];
    v7 = [v6 host];
    [v5 setAllowsAnyHTTPSCertificate:1 forHost:v7];

    v4 = *(a1 + 32);
  }

  v8 = [v4 _connectionWithRequest:*(v4 + 120)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendProxyActivationWithCustomRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    if (self->_granularActivationState == -1)
    {
      WeakRetained = pbb_activation_log();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DE64000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Custom Activation Request was issued after Watch was already activated. Dropping it on the floor.", buf, 2u);
      }
    }

    else
    {
      self->_awaitingCustomResponse = 1;
      v6 = [requestCopy mutableCopy];
      activationRequest = self->_activationRequest;
      self->_activationRequest = v6;

      [v5 setValue:self->_remoteActivationUserAgent forHTTPHeaderField:@"User-Agent"];
      if (PBIsInternalInstall() && [(PBBridgeCompanionController *)self _dumpActivationRequests])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-BuddyML-CustomRequest-%f.txt", CFAbsoluteTimeGetCurrent()];
        v9 = MEMORY[0x277CCACA8];
        v10 = [v5 URL];
        allHTTPHeaderFields = [v5 allHTTPHeaderFields];
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        hTTPBody = [v5 HTTPBody];
        v14 = [v12 initWithData:hTTPBody encoding:4];
        v15 = [v9 stringWithFormat:@"%@\n%@\n%@", v10, allHTTPHeaderFields, v14];

        [v15 writeToFile:v8 atomically:1 encoding:4 error:0];
        v16 = pbb_activation_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v8;
          _os_log_impl(&dword_25DE64000, v16, OS_LOG_TYPE_DEFAULT, "Writing BuddyML Custom Request to %@", buf, 0xCu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__PBBridgeCompanionController_sendProxyActivationWithCustomRequest___block_invoke;
      block[3] = &unk_2799F4710;
      v21 = v5;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      WeakRetained = v21;
    }
  }

  else
  {
    v18 = pbb_activation_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController sendProxyActivationWithCustomRequest:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteDidFailActivation:4 description:@"Gizmo Sent nil Activation Data"];
  }

  PBNotifyClientOfActivity();
  v19 = *MEMORY[0x277D85DE8];
}

void __68__PBBridgeCompanionController_sendProxyActivationWithCustomRequest___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 136315394;
    v13 = "[PBBridgeCompanionController sendProxyActivationWithCustomRequest:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: Sending Proxy Activation Custom Request (%@)", &v12, 0x16u);
  }

  *(*(a1 + 40) + 76) = 1;
  [*(a1 + 40) refreshTimeoutTimerWithNewActivationGranularState:2];
  v4 = *(a1 + 40);
  if (v4[68] == 1)
  {
    v5 = MEMORY[0x277CCAD20];
    v6 = [*(a1 + 32) URL];
    v7 = [v6 host];
    [v5 setAllowsAnyHTTPSCertificate:1 forHost:v7];

    v4 = *(a1 + 40);
  }

  v8 = [v4 _connectionWithRequest:*(a1 + 32)];
  v9 = *(a1 + 40);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidFinishLoading:(id)loading
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_activationConnection != loading)
  {
    goto LABEL_44;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PBBridgeActivationServerRespondedNotification" object:0];

  _testActivationResponseType = [(PBBridgeCompanionController *)self _testActivationResponseType];
  if (_testActivationResponseType)
  {
    v6 = pbb_activation_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (_testActivationResponseType > 5)
      {
        v7 = &stru_286FA8098;
      }

      else
      {
        v7 = off_2799F4C10[_testActivationResponseType - 1];
      }

      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Testing Fake Activation Response Type: %@", buf, 0xCu);
    }

    v8 = _ResponseDataForTestType(_testActivationResponseType);
    activationData = self->_activationData;
    self->_activationData = v8;
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
  contentType = self->_contentType;
  if (contentType)
  {
    v12 = [(NSString *)contentType isEqualToString:@"application/x-buddyml"];
  }

  else
  {
    v12 = [v10 rangeOfString:@"<xmlui"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (PBIsInternalInstall() && [(PBBridgeCompanionController *)self _dumpActivationRequests])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Response-Data-%f.txt", CFAbsoluteTimeGetCurrent()];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
    [v14 writeToFile:v13 atomically:1 encoding:4 error:0];

    v15 = pbb_activation_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, "Writing Activation Response Data to %@", buf, 0xCu);
    }
  }

  v16 = !v12;
  if (_testActivationResponseType)
  {
    v16 = 0;
  }

  if (!v16)
  {
    self->_nonSilentActivation = 1;
    if ((self->_activationState | 4) == 7)
    {
      v17 = pbb_activation_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "ActivationStateNotSilentPOSTActivation";
LABEL_29:
        _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      }
    }

    else
    {
      v17 = pbb_activation_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "ActivationStateNotSilentPREActivation";
        goto LABEL_29;
      }
    }

    [(PBBridgeCompanionController *)self invalidateTimeoutTimerWithNewActivationGranularState:6];
    ruiLoader = self->_ruiLoader;
    if (ruiLoader)
    {
      [(RUILoader *)ruiLoader cancel];
      [(RUILoader *)self->_ruiLoader setDelegate:0];
    }

    v25 = objc_alloc_init(MEMORY[0x277D461D0]);
    v26 = self->_ruiLoader;
    self->_ruiLoader = v25;

    [(RUILoader *)self->_ruiLoader setStyle:self->_remoteUIStyle];
    [(RUILoader *)self->_ruiLoader setDelegate:self];
    v27 = self->_ruiLoader;
    v28 = self->_activationData;
    v29 = [(NSMutableURLRequest *)self->_activationRequest URL];
    [(RUILoader *)v27 loadXMLUIWithData:v28 baseURL:v29];

    goto LABEL_37;
  }

  activationState = self->_activationState;
  if (activationState == 6 || activationState == 1)
  {
    v20 = pbb_activation_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "ActivationStateTryActivate";
      v22 = v20;
      v23 = 2;
LABEL_35:
      _os_log_impl(&dword_25DE64000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  else
  {
    v20 = pbb_activation_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_activationState;
      *buf = 67109120;
      LODWORD(v36) = v30;
      v21 = "Unhandled Activation State %d";
      v22 = v20;
      v23 = 8;
      goto LABEL_35;
    }
  }

  [(PBBridgeCompanionController *)self _processActivationData];
LABEL_37:
  if (self->_awaitingCustomResponse && PBIsInternalInstall() && [(PBBridgeCompanionController *)self _dumpActivationRequests])
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-BuddyML-CustomReponse-%f.txt", CFAbsoluteTimeGetCurrent()];
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
    [v32 writeToFile:v31 atomically:1 encoding:4 error:0];

    v33 = pbb_activation_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v31;
      _os_log_impl(&dword_25DE64000, v33, OS_LOG_TYPE_DEFAULT, "Writing BuddyML Custom Response to %@", buf, 0xCu);
    }
  }

  self->_awaitingCustomResponse = 0;

LABEL_44:
  v34 = *MEMORY[0x277D85DE8];
}

- (id)viewControllerForAlertPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];

  return navigationController;
}

- (void)loader:(id)loader didFailWithError:(id)error
{
  errorCopy = error;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy didFailWithError:errorCopy];

  if (errorCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_activationData encoding:4];
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController loader:didFailWithError:];
    }
  }
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  modelCopy = model;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy receivedObjectModel:modelCopy actionSignal:signal];
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  loaderCopy = loader;
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);
  [WeakRetained loader:loaderCopy didReceiveHTTPResponse:responseCopy];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  self->_awaitingCustomResponse = 0;
  v6 = pbb_activation_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:didFailWithError:];
  }

  activationState = self->_activationState;
  if (activationState != 4)
  {
    self->_connectionFailed = 1;
    if ((activationState | 4) == 7)
    {
      v8 = pbb_activation_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController connection:didFailWithError:];
      }
    }

    else
    {
      v8 = pbb_activation_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController connection:didFailWithError:];
      }
    }
  }

  if (errorCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = PBUserCorrectableNetworkError([errorCopy code]);
  }

  else
  {
    v9 = 0;
  }

  if (self->_activationRetries <= 0)
  {
    v12 = pbb_activation_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      activationRequest = self->_activationRequest;
      *buf = 138412290;
      v18 = activationRequest;
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Retrying activation due to correctable failure: %@", buf, 0xCu);
    }

    v14 = [(PBBridgeCompanionController *)self _connectionWithRequest:self->_activationRequest];
    activationConnection = self->_activationConnection;
    self->_activationConnection = v14;

    ++self->_activationRetries;
  }

  else
  {
    [(PBBridgeCompanionController *)self _processActivationData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Proxy Activation Request Failed: (%@)", errorCopy];
    [WeakRetained remoteDidFailActivation:5 description:errorCopy userActionable:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  connectionCopy = connection;
  requestCopy = request;
  responseCopy = response;
  v11 = pbb_activation_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:requestCopy willSendRequest:self redirectResponse:v11];
  }

  if (responseCopy)
  {
    if ([responseCopy statusCode] == 302)
    {
      activationRequest = self->_activationRequest;
      if (activationRequest)
      {
        hTTPBody = [(NSMutableURLRequest *)activationRequest HTTPBody];

        if (hTTPBody)
        {
          v14 = [(NSMutableURLRequest *)requestCopy mutableCopy];
          [(NSMutableURLRequest *)v14 setHTTPMethod:@"POST"];
          v15 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"Content-Type"];
          [(NSMutableURLRequest *)v14 setValue:v15 forHTTPHeaderField:@"Content-Type"];

          v16 = [(NSMutableURLRequest *)self->_activationRequest valueForHTTPHeaderField:@"Content-Length"];
          [(NSMutableURLRequest *)v14 setValue:v16 forHTTPHeaderField:@"Content-Length"];

          hTTPBody2 = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
          [(NSMutableURLRequest *)v14 setHTTPBody:hTTPBody2];

          requestCopy = v14;
        }
      }
    }
  }

  if (self->_activationConnection == connectionCopy && self->_activationRequest != requestCopy)
  {
    v18 = [(NSMutableURLRequest *)requestCopy mutableCopy];
    v19 = self->_activationRequest;
    self->_activationRequest = v18;
  }

  return requestCopy;
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  v43 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = pbb_activation_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v40 = 1238;
    *&v40[4] = 2080;
    *&v40[6] = "[PBBridgeCompanionController connection:didReceiveResponse:]";
    v41 = 2112;
    v42 = responseCopy;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%d %s -- %@", buf, 0x1Cu);
  }

  statusCode = [responseCopy statusCode];
  self->_activationRetries = 0;
  if (PBIsInternalInstall() && [(PBBridgeCompanionController *)self _dumpActivationRequests])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Response-%f.txt", CFAbsoluteTimeGetCurrent()];
    v9 = MEMORY[0x277CCACA8];
    v10 = [responseCopy URL];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
    allHeaderFields = [responseCopy allHeaderFields];
    v13 = [v9 stringWithFormat:@"%@\n%@\n%@", v10, v11, allHeaderFields];

    v38 = v13;
    [v13 writeToFile:v8 atomically:1 encoding:4 error:0];
    v14 = pbb_activation_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v40 = v8;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "Writing Activation Response to %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Bridge-Activation-Request-%f.txt", CFAbsoluteTimeGetCurrent()];
    v16 = MEMORY[0x277CCACA8];
    v17 = [(NSMutableURLRequest *)self->_activationRequest URL];
    allHTTPHeaderFields = [(NSMutableURLRequest *)self->_activationRequest allHTTPHeaderFields];
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    hTTPBody = [(NSMutableURLRequest *)self->_activationRequest HTTPBody];
    v21 = [v19 initWithData:hTTPBody encoding:4];
    v22 = [v16 stringWithFormat:@"%@%@\n%@", v17, allHTTPHeaderFields, v21];

    [v22 writeToFile:v15 atomically:1 encoding:4 error:0];
    v23 = pbb_activation_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v40 = v15;
      _os_log_impl(&dword_25DE64000, v23, OS_LOG_TYPE_DEFAULT, "Writing Activation Request to %@", buf, 0xCu);
    }
  }

  if (statusCode < 400)
  {
    goto LABEL_18;
  }

  v24 = pbb_activation_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [PBBridgeCompanionController connection:didReceiveResponse:];
  }

  if (!self->_sentActivationRequest)
  {
    v31 = pbb_activation_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v31, OS_LOG_TYPE_DEFAULT, "Passing Session failure to MA for fallback.", buf, 2u);
    }

LABEL_18:
    v32 = objc_alloc_init(MEMORY[0x277CBEB28]);
    activationData = self->_activationData;
    self->_activationData = v32;

    allHeaderFields2 = [responseCopy allHeaderFields];
    allHeaders = self->_allHeaders;
    self->_allHeaders = allHeaderFields2;

    WeakRetained = [(NSDictionary *)self->_allHeaders objectForKey:@"Content-Type"];
    v36 = [WeakRetained copy];
    contentType = self->_contentType;
    self->_contentType = v36;
    goto LABEL_19;
  }

  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  v27 = self->_contentType;
  self->_contentType = 0;

  v28 = self->_activationData;
  self->_activationData = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  contentType = [MEMORY[0x277CCACA8] stringWithFormat:@"Activation Failed with Status: %d", statusCode];
  [WeakRetained remoteDidFailActivation:7 description:contentType];
LABEL_19:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  connectionCopy = connection;
  v8 = pbb_activation_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[PBBridgeCompanionController connection:didReceiveData:]";
    v16 = 2048;
    v17 = [dataCopy length];
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%s: Bytes received %lu", &v14, 0x16u);
  }

  activationConnection = self->_activationConnection;
  if (activationConnection == connectionCopy)
  {
    [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:3];
    activationData = self->_activationData;
    if (activationData)
    {
      [(NSMutableData *)activationData appendData:dataCopy];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:dataCopy];
      v12 = self->_activationData;
      self->_activationData = v11;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processActivationData
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PBBridgeCompanionController__processActivationData__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D37B50] sharedInstance];
    v4 = [v3 compatibilityState];

    if (v4 < 2)
    {
      v6 = pbb_activation_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __53__PBBridgeCompanionController__processActivationData__block_invoke_cold_1();
      }
    }

    else
    {
      v5 = *(a1 + 32);
      v10[0] = WeakRetained[16];
      v10[1] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      [WeakRetained _sendRemoteCommandWithMessageID:2 withArguments:v6];
    }

    if (PBLogPerformanceMetrics())
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__PBBridgeCompanionController__processActivationData__block_invoke_581;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      *&v9[4] = Current;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }

    [WeakRetained _cleanup];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__PBBridgeCompanionController__processActivationData__block_invoke_581(uint64_t a1)
{
  v2 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
  [v2 beginMacroActivity:@"PBBridgeProxyActivationStageThreeActivityName" beginTime:*(a1 + 32)];
}

- (void)_cleanup
{
  self->_nonSilentActivation = 0;
  [(NSURLConnection *)self->_activationConnection cancel];
  activationConnection = self->_activationConnection;
  self->_activationConnection = 0;

  activationRequest = self->_activationRequest;
  self->_activationRequest = 0;

  contentType = self->_contentType;
  self->_contentType = 0;

  activationData = self->_activationData;
  self->_activationData = 0;

  self->_activationRetries = 0;
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  v19 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  buttonCopy = button;
  attributesCopy = attributes;
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = modelCopy;
    v15 = 2112;
    v16 = buttonCopy;
    v17 = 2112;
    v18 = attributesCopy;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Pressed RUI Button... (RUIObjectModel %@, buttonName %@, attributes %@)", &v13, 0x20u);
  }

  [(PBBridgeCompanionController *)self tellGizmoToBeginActivation];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)gizmoDidEndPasscodeCreation:(id)creation
{
  v35 = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  type = [creationCopy type];
  context = [creationCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidEndPasscodeCreation alloc];
    data = [creationCopy data];
    v10 = [(PBBProtoDidEndPasscodeCreation *)v8 initWithData:data];

    self->_passcodeSet = [(PBBProtoDidEndPasscodeCreation *)v10 success];
    isLong = [(PBBProtoDidEndPasscodeCreation *)v10 isLong];
    if (isLong)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      activeWatch = [mEMORY[0x277D75128] activeWatch];

      v14 = [activeWatch valueForProperty:*MEMORY[0x277D2BBB8]];
      v15 = [activeWatch valueForProperty:*MEMORY[0x277D2BB60]];
      v16 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanosystemsettings" pairingID:v14 pairingDataStore:v15];
      [v16 setBool:0 forKey:@"simple-passcode"];
      synchronize = [v16 synchronize];
    }

    v18 = pbb_setupflow_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      passcodeSet = self->_passcodeSet;
      v28[0] = 67109890;
      v28[1] = 1404;
      v29 = 2080;
      v30 = "[PBBridgeCompanionController gizmoDidEndPasscodeCreation:]";
      v31 = 1024;
      v32 = passcodeSet;
      v33 = 1024;
      v34 = isLong;
      _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Passcode: %d, is long: %d)", v28, 0x1Eu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompletePasscodeCreationNotification" object:0];

    if (PBLogPerformanceMetrics())
    {
      v21 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      context2 = [creationCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v21 addMilestone:v24 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)gizmoFailedToCreatePasscode:(id)passcode
{
  passcodeCopy = passcode;
  type = [passcodeCopy type];
  context = [passcodeCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoDidFailToCreatePasscode alloc];
    data = [passcodeCopy data];
    v10 = [(PBBProtoDidFailToCreatePasscode *)v8 initWithData:data];

    [(PBBProtoDidFailToCreatePasscode *)v10 error];
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController gizmoFailedToCreatePasscode:];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidFailToCreatePasscodeNotification" object:0];

    PBNotifyClientOfActivity();
  }
}

- (void)gizmoDidEndPasscodeChange:(id)change
{
  v35 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  type = [changeCopy type];
  context = [changeCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidEndPasscodeCreation alloc];
    data = [changeCopy data];
    v10 = [(PBBProtoDidEndPasscodeCreation *)v8 initWithData:data];

    self->_passcodeSet = [(PBBProtoDidEndPasscodeCreation *)v10 success];
    isLong = [(PBBProtoDidEndPasscodeCreation *)v10 isLong];
    if (isLong)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      activeWatch = [mEMORY[0x277D75128] activeWatch];

      v14 = [activeWatch valueForProperty:*MEMORY[0x277D2BBB8]];
      v15 = [activeWatch valueForProperty:*MEMORY[0x277D2BB60]];
      v16 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanosystemsettings" pairingID:v14 pairingDataStore:v15];
      [v16 setBool:0 forKey:@"simple-passcode"];
      synchronize = [v16 synchronize];
    }

    v18 = pbb_setupflow_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      passcodeSet = self->_passcodeSet;
      v28[0] = 67109890;
      v28[1] = 1453;
      v29 = 2080;
      v30 = "[PBBridgeCompanionController gizmoDidEndPasscodeChange:]";
      v31 = 1024;
      v32 = passcodeSet;
      v33 = 1024;
      v34 = isLong;
      _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Passcode: %d, is long: %d)", v28, 0x1Eu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompletePasscodeChangeNotification" object:0];

    if (PBLogPerformanceMetrics())
    {
      v21 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      context2 = [changeCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v21 addMilestone:v24 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    PBNotifyClientOfActivity();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)gizmoDidBeginUnlockPairing:(id)pairing
{
  v17 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = 1466;
    v15 = 2080;
    v16 = "[PBBridgeCompanionController gizmoDidBeginUnlockPairing:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  type = [pairingCopy type];
  context = [pairingCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    unlockPairingAssertion = self->_unlockPairingAssertion;
    if (unlockPairingAssertion)
    {
      CFRelease(unlockPairingAssertion);
    }

    v11[0] = @"MKBAssertionKey";
    v11[1] = @"MKBAssertionTimeout";
    v12[0] = @"RemoteProfile";
    v12[1] = &unk_286FB41F0;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    self->_unlockPairingAssertion = MKBDeviceLockAssertion();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)gizmoDidEndUnlockPairing:(id)pairing
{
  v27 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  type = [pairingCopy type];
  context = [pairingCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDidMakeAutoLockChoice alloc];
    data = [pairingCopy data];
    v10 = [(PBBProtoDidMakeAutoLockChoice *)v8 initWithData:data];

    self->_selectedPairedUnlock = [(PBBProtoDidMakeAutoLockChoice *)v10 accept];
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      selectedPairedUnlock = self->_selectedPairedUnlock;
      v22[0] = 67109634;
      v22[1] = 1489;
      v23 = 2080;
      v24 = "[PBBridgeCompanionController gizmoDidEndUnlockPairing:]";
      v25 = 1024;
      v26 = selectedPairedUnlock;
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%d %s (Enabled Paired Unlock %d)", v22, 0x18u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeDidCompleteUnlockPairingNotification" object:0];

    if (PBLogPerformanceMetrics())
    {
      v14 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      context2 = [pairingCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v14 addMilestone:v17 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    unlockPairingAssertion = self->_unlockPairingAssertion;
    if (unlockPairingAssertion)
    {
      CFRelease(unlockPairingAssertion);
      self->_unlockPairingAssertion = 0;
    }

    PBNotifyClientOfActivity();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendGizmoPasscodeRestrictions
{
  v38 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  effectiveRestrictions = [mEMORY[0x277D262A0] effectiveRestrictions];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [effectiveRestrictions objectForKey:*MEMORY[0x277D26158]];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = *MEMORY[0x277D26160];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v5 objectForKey:v11];
        v13 = [v12 objectForKey:v9];

        if (v13)
        {
          [dictionary setObject:v13 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v26 = effectiveRestrictions;
  v14 = [effectiveRestrictions objectForKey:*MEMORY[0x277D26168]];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    v18 = *MEMORY[0x277D26170];
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        v21 = [v14 objectForKey:v20];
        v22 = [v21 objectForKey:v18];

        if (v22)
        {
          [dictionary setObject:v22 forKey:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v16);
  }

  v35 = dictionary;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:20 withArguments:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)tellWatchToSetLauncherViewMode:(int64_t)mode
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:112 withArguments:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAppViewListImageFromGizmo:(CGSize)gizmo completion:(id)completion
{
  height = gizmo.height;
  width = gizmo.width;
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  appViewListImageCompletion = self->_appViewListImageCompletion;
  if (appViewListImageCompletion)
  {
    appViewListImageCompletion[2](appViewListImageCompletion, 0);
  }

  v9 = [completionCopy copy];
  v10 = self->_appViewListImageCompletion;
  self->_appViewListImageCompletion = v9;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = v12;

  v14 = pbb_setupflow_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27.width = width;
    v27.height = height;
    v15 = NSStringFromSize(v27);
    *buf = 138412546;
    v23 = v15;
    v24 = 2048;
    v25 = v13;
    _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, ">>>> retrieve app view list image from gizmo %@ %f", buf, 0x16u);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v21[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v21[1] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v21[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:113 withArguments:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleAppViewListImageResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoAppViewListImageResponse alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoAppViewListImageResponse *)v8 initWithData:data];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__PBBridgeCompanionController_handleAppViewListImageResponse___block_invoke;
    v12[3] = &unk_2799F4710;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __62__PBBridgeCompanionController_handleAppViewListImageResponse___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 264))
  {
    if ([*(a1 + 40) hasImageData])
    {
      v2 = MEMORY[0x277D755B8];
      v3 = [*(a1 + 40) imageData];
      v6 = [v2 imageWithData:v3 scale:2.0];
    }

    else
    {
      v6 = 0;
    }

    (*(*(*(a1 + 32) + 264) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 264);
    *(v4 + 264) = 0;
  }
}

- (void)tellGizmoToPushControllerType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PBBuddyControllerDescription(type);
    *buf = 67109378;
    typeCopy = type;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Telling Gizmo to push (%d - %@)", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:3 withArguments:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToPopToControllerType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PBBuddyControllerDescription(type);
    *buf = 67109378;
    typeCopy = type;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Telling Gizmo to pop to (%d - %@)", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:4 withArguments:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToShowLockedOnAnimationTimeToFlash:(double)flash animationCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [completion copy];
  lockedOnAnimationCompletion = self->_lockedOnAnimationCompletion;
  self->_lockedOnAnimationCompletion = v6;

  v8 = *&PBBridgeAnimationSyncOffsetTime - flash;
  v9 = 0.0;
  if (*&PBBridgeAnimationSyncOffsetTime - flash < 0.0)
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      flashCopy = flash;
      v20 = 2048;
      v21 = PBBridgeAnimationSyncOffsetTime;
      _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Time to flash is too long (%f vs %f). Pushing back animation.", buf, 0x16u);
    }

    v9 = fabs(v8);
    v8 = 0.0;
  }

  v11 = dispatch_time(0, (v8 * 1000000000.0));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__PBBridgeCompanionController_tellGizmoToShowLockedOnAnimationTimeToFlash_animationCompletion___block_invoke;
  v16[3] = &unk_2799F4468;
  v16[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], v16);
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Telling Gizmo show Lock-On Animation", buf, 2u);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v17 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:17 withArguments:v14];

  PBNotifyClientOfActivity();
  v15 = *MEMORY[0x277D85DE8];
}

void __95__PBBridgeCompanionController_tellGizmoToShowLockedOnAnimationTimeToFlash_animationCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 184);
    *(v3 + 184) = 0;
  }
}

- (void)tellGizmoToUpdateSyncProgressTo:(double)to withState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    toCopy = to;
    v15 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Telling Gizmo To Update Sync Progress to: %f and state: %ld", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:to];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{state, v8}];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:19 withArguments:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToBeginActivation
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PBBridgeCompanionController tellGizmoToBeginActivation]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:1];
  setupController = [*MEMORY[0x277D76620] setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:12 withValue:MEMORY[0x277CBEC38] withError:0];
  [pairingReportManager checkInWithOpenPairingTimeEvent:18];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:11 withArguments:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToRetryActivation
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeCompanionController tellGizmoToRetryActivation]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PBBridgeCompanionController *)self refreshTimeoutTimerWithNewActivationGranularState:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:15 withArguments:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidateTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state
{
  dispatch_assert_queue_not_V2(self->_timeoutTrackerQueue);
  timeoutTrackerQueue = self->_timeoutTrackerQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__PBBridgeCompanionController_invalidateTimeoutTimerWithNewActivationGranularState___block_invoke;
  v6[3] = &unk_2799F4BC8;
  stateCopy = state;
  v6[4] = self;
  dispatch_sync(timeoutTrackerQueue, v6);
}

void __84__PBBridgeCompanionController_invalidateTimeoutTimerWithNewActivationGranularState___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBActivationGranularStateDescription(*(a1 + 40));
    v8 = 136315394;
    v9 = "[PBBridgeCompanionController invalidateTimeoutTimerWithNewActivationGranularState:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: new state (%@)", &v8, 0x16u);
  }

  *(*(a1 + 32) + 74) = *(a1 + 40);
  v4 = *(*(a1 + 32) + 160);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)refreshTimeoutTimerWithNewActivationGranularState:(unsigned __int16)state
{
  dispatch_assert_queue_not_V2(self->_timeoutTrackerQueue);
  timeoutTrackerQueue = self->_timeoutTrackerQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke;
  v6[3] = &unk_2799F4BC8;
  stateCopy = state;
  v6[4] = self;
  dispatch_sync(timeoutTrackerQueue, v6);
}

void __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBActivationGranularStateDescription(*(a1 + 40));
    *buf = 136315394;
    v22 = COERCE_DOUBLE("[PBBridgeCompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke");
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "%s: new state (%@)", buf, 0x16u);
  }

  *(*(a1 + 32) + 74) = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v4[20])
  {
    dispatch_source_cancel(v4[20]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = 0;

    v4 = *(a1 + 32);
  }

  v7 = [(dispatch_source_t *)v4 service];

  if (v7)
  {
    v8 = 0.0;
    if (*(*(a1 + 32) + 74) - 1 <= 5)
    {
      v8 = dbl_25DEB52D0[(*(*(a1 + 32) + 74) - 1)];
    }

    v9 = pbb_activation_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PBActivationGranularStateDescription(*(*(a1 + 32) + 74));
      *buf = 134218242;
      v22 = v8 / 60.0;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Setting %1.f minute timeout for activation phase %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
    *(v12 + 160) = v11;

    v14 = *(*(a1 + 32) + 160);
    v15 = dispatch_time(0, (v8 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = *(*(a1 + 32) + 160);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke_610;
    handler[3] = &unk_2799F4BF0;
    objc_copyWeak(&v20, buf);
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(*(*(a1 + 32) + 160));
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = pbb_activation_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "Skipped Timeout Refresh Because Service Was Nil", buf, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __81__PBBridgeCompanionController_refreshTimeoutTimerWithNewActivationGranularState___block_invoke_610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActivationTimeout:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 activationTimedOut];
}

- (void)activationTimedOut
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = PBActivationGranularStateDescription(self);
  v11 = *(a2 + 168);
  OUTLINED_FUNCTION_4(&dword_25DE64000, v3, v4, "%s: Activation time out in phase %@ (Last message sent was %@)", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToKeepAliveForActivationEvent
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_activation_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 1771;
    v6 = 2080;
    v7 = "[PBBridgeCompanionController tellGizmoToKeepAliveForActivationEvent]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", v5, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:24 withArguments:MEMORY[0x277CBEBF8]];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteActivationDetails:(id)details
{
  detailsCopy = details;
  type = [detailsCopy type];
  context = [detailsCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoRemoteActivationFailureReport alloc];
    data = [detailsCopy data];
    v10 = [(PBBProtoRemoteActivationFailureReport *)v8 initWithData:data];

    activationError = [(PBBProtoRemoteActivationFailureReport *)v10 activationError];
    v17 = 0;
    v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:activationError error:&v17];
    v13 = v17;
    if (v13)
    {
      v14 = pbb_activation_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PBBridgeCompanionController *)v13 handleRemoteActivationDetails:activationError];
      }
    }

    v15 = [v12 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    [v12 finishDecoding];
    v16 = pbb_activation_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeCompanionController handleRemoteActivationDetails:];
    }
  }
}

- (void)queryGizmoForShowWarrantySentinelAndRestoreDeviceName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v23 = 1803;
    v24 = 2080;
    v25 = "[PBBridgeCompanionController queryGizmoForShowWarrantySentinelAndRestoreDeviceName:]";
    v26 = 2112;
    v27 = nameCopy;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s -- Querying for Warranty Sentinel; Device name: %@", buf, 0x1Cu);
  }

  null = [MEMORY[0x277CBEB68] null];
  v21 = null;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  if (nameCopy)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v20 = 0;
  [objc_opt_class() iCloudFirstName:&v20 lastName:&v19];
  v8 = v20;
  v9 = v19;
  v10 = v9;
  if (!v8)
  {

    v17 = 0;
    v18 = 0;
    [objc_opt_class() meCardFirstName:&v18 lastName:&v17];
    v8 = v18;
    v10 = v17;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v11 = [objc_opt_class() displayNameWithFirstName:v8 lastName:v10];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DEVICE_NAME" value:&stru_286FA8098 table:@"Localizable"];
  nameCopy = [v12 stringWithFormat:v14, v11];

  if (nameCopy)
  {
LABEL_7:
    v15 = [v7 arrayByAddingObject:nameCopy];

    v10 = nameCopy;
    v7 = v15;
LABEL_8:
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:14 withArguments:v7];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToDeleteWarrantySentinel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 1833;
    v6 = 2080;
    v7 = "[PBBridgeCompanionController tellGizmoToDeleteWarrantySentinel]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s -- Telling Gizmo to delete its Warranty Sentinel", v5, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:14 withArguments:&unk_286FB4238];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleWarrantySentinelResponse:(id)response
{
  v30 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoWarrantySentinel alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoWarrantySentinel *)v8 initWithData:data];

    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Got Warranty Sentinel Response: (%@)", buf, 0xCu);
    }

    if ([(PBBProtoWarrantySentinel *)v10 hasSentinelExists])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBBProtoWarrantySentinel sentinelExists](v10, "sentinelExists", @"PBBridgeWarrantySentinelExistsKey"}];
      v27 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v14 = [v13 mutableCopy];

      appleLanguages = [(PBBProtoWarrantySentinel *)v10 appleLanguages];

      if (appleLanguages)
      {
        appleLanguages2 = [(PBBProtoWarrantySentinel *)v10 appleLanguages];
        [v14 setObject:appleLanguages2 forKeyedSubscript:@"PBBridgeGizmoAppleLanguagesKey"];
      }

      if ([(PBBProtoWarrantySentinel *)v10 hasAppleLocale])
      {
        appleLocale = [(PBBProtoWarrantySentinel *)v10 appleLocale];
        [v14 setObject:appleLocale forKeyedSubscript:@"PBBridgeGizmoAppleLocaleKey"];
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"PBBridgeWarrantySentinelNotification" object:0 userInfo:v14];
    }

    if (PBLogPerformanceMetrics())
    {
      v19 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      context2 = [responseCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v19 addMilestone:v22 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)tellGizmoToPrepareForInitialSyncWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [completion copy];
  initialSyncPrepCompletion = self->_initialSyncPrepCompletion;
  self->_initialSyncPrepCompletion = v4;

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = 1874;
    v9 = 2080;
    v10 = "[PBBridgeCompanionController tellGizmoToPrepareForInitialSyncWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%d %s", v8, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:21 withArguments:MEMORY[0x277CBEBF8]];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)watchDidPrepareForInitialSync:(id)sync
{
  v15 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  type = [syncCopy type];
  context = [syncCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109378;
      v12[1] = 1884;
      v13 = 2080;
      v14 = "[PBBridgeCompanionController watchDidPrepareForInitialSync:]";
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s", v12, 0x12u);
    }

    initialSyncPrepCompletion = self->_initialSyncPrepCompletion;
    if (initialSyncPrepCompletion)
    {
      initialSyncPrepCompletion[2]();
      v10 = self->_initialSyncPrepCompletion;
      self->_initialSyncPrepCompletion = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryGizmoForOfflineTerms
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 1897;
    v6 = 2080;
    v7 = "[PBBridgeCompanionController queryGizmoForOfflineTerms]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%d %s -- Querying for Offline Terms", v5, 0x12u);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:16 withArguments:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleOfflineTermsResponse:(id)response
{
  v64 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(self) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (self)
  {
    v8 = [PBBProtoOfflineTerms alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoOfflineTerms *)v8 initWithData:data];

    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      license = [(PBBProtoOfflineTerms *)v10 license];
      v13 = [license length];
      multiterms = [(PBBProtoOfflineTerms *)v10 multiterms];
      v15 = [multiterms length];
      warranty = [(PBBProtoOfflineTerms *)v10 warranty];
      *buf = 134218752;
      v57 = v10;
      v58 = 2048;
      v59 = v13;
      v60 = 2048;
      v61 = v15;
      v62 = 2048;
      v63 = [warranty length];
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Got Offline Terms Response: (%p); license: (%lu bytes); multiterms: (%lu bytes); warranty: (%lu bytes);", buf, 0x2Au);
    }

    if (PBLogPerformanceMetrics())
    {
      v17 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      context2 = [responseCopy context];
      outgoingResponseIdentifier = [context2 outgoingResponseIdentifier];
      [v17 addMilestone:v20 activityType:outgoingResponseIdentifier activityIdentifier:Current];
    }

    v54 = @"PBBridgeOfflineTermsLicenseKey";
    license2 = [(PBBProtoOfflineTerms *)v10 license];
    v55 = license2;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v25 = [v24 mutableCopy];

    if ([(PBBProtoOfflineTerms *)v10 hasMultiterms])
    {
      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      multiterms2 = [(PBBProtoOfflineTerms *)v10 multiterms];
      v53 = [v26 initWithData:multiterms2 encoding:4];

      v47 = MEMORY[0x277CCACA8];
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = v25;
      v52 = [v50 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_286FA8098 table:@"Localizable"];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v49 localizedStringForKey:@"IMPORTANT" value:&stru_286FA8098 table:@"Localizable"];
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [v46 localizedStringForKey:@"Part1" value:&stru_286FA8098 table:@"Localizable"];
      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v45 localizedStringForKey:@"TC_HEADER" value:&stru_286FA8098 table:@"Localizable"];
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v43 localizedStringForKey:@"WARRANTY_HEADER" value:&stru_286FA8098 table:@"Localizable"];
      v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v41 localizedStringForKey:@"Part2" value:&stru_286FA8098 table:@"Localizable"];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v38 localizedStringForKey:@"Part3" value:&stru_286FA8098 table:@"Localizable"];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"AGREE" value:&stru_286FA8098 table:@"Localizable"];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"DISAGREE" value:&stru_286FA8098 table:@"Localizable"];
      v48 = [v47 stringWithFormat:v53, v52, v44, v42, v40, v39, v28, v29, v31, v33];

      v25 = v51;
      v34 = [v48 dataUsingEncoding:4];
      [v51 setObject:v34 forKeyedSubscript:@"PBBridgeOfflineTermsMultitermsKey"];
    }

    if ([(PBBProtoOfflineTerms *)v10 hasWarranty])
    {
      warranty2 = [(PBBProtoOfflineTerms *)v10 warranty];
      [v25 setObject:warranty2 forKeyedSubscript:@"PBBridgeOfflineTermsWarrantyKey"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PBBridgeOfflineTermsNotification" object:0 userInfo:v25];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)transportBecameReachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v11 transportBecameReachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v5 = pbb_setupflow_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 136446210;
      v13 = "[PBBridgeCompanionController transportBecameReachable]";
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 transportBecameReachable];
  }

  else if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 136446466;
    v13 = "[PBBridgeCompanionController transportBecameReachable]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameReachable", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)transportBecameUnreachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeCompanionController;
  [(PBBridgeIDSServiceDelegate *)&v11 transportBecameUnreachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v5 = pbb_setupflow_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 136446210;
      v13 = "[PBBridgeCompanionController transportBecameUnreachable]";
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 transportBecameUnreachable];
  }

  else if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 136446466;
    v13 = "[PBBridgeCompanionController transportBecameUnreachable]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameUnreachable", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)meCardFirstName:(id *)name lastName:(id *)lastName
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = 1966;
    v17 = 2080;
    v18 = "+[PBBridgeCompanionController meCardFirstName:lastName:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%d %s: contactStore: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    v8 = *MEMORY[0x277CBCFF8];
    v23[0] = *MEMORY[0x277CBD000];
    v23[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v14 = 0;
    v10 = [v6 _ios_meContactWithKeysToFetch:v9 error:&v14];
    v11 = v14;

    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v16 = 1972;
      v17 = 2080;
      v18 = "+[PBBridgeCompanionController meCardFirstName:lastName:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%d %s: meContact: %@, error: %@", buf, 0x26u);
    }

    if (v10)
    {
      *name = [v10 givenName];
      *lastName = [v10 familyName];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)iCloudFirstName:(id *)name lastName:(id *)lastName
{
  v7 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];
  *name = [aa_primaryAppleAccount aa_firstName];
  *lastName = [aa_primaryAppleAccount aa_lastName];
}

+ (id)displayNameWithFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  if (nameCopy)
  {
    v7 = nameCopy;
    if ([v7 _containsCJKScriptsOnly] && objc_msgSend(lastNameCopy, "length") && objc_msgSend(lastNameCopy, "_containsCJKScriptsOnly"))
    {
      v8 = [lastNameCopy stringByAppendingString:v7];

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tellWatchToChangeDeviceNameFor:(id)for
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (for)
  {
    forCopy = for;
    v5 = objc_opt_class();
    firstName = [forCopy firstName];
    lastName = [forCopy lastName];

    v8 = [v5 displayNameWithFirstName:firstName lastName:lastName];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DEVICE_NAME" value:&stru_286FA8098 table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11, v8];

    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:110 withArguments:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendDemoWatchWirelessCredentials
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(PBBridgeCompanionController *)self currentNetworks:0];
  firstObject = [v3 firstObject];

  v5 = [firstObject objectForKey:@"SSID_STR"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286FA8098;
  }

  v8 = v7;

  v9 = [firstObject objectForKey:*MEMORY[0x277D29878]];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_286FA8098;
  }

  v12 = v11;

  v15[0] = v8;
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:26 withArguments:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)currentNetworks:(BOOL)networks
{
  networksCopy = networks;
  v46 = *MEMORY[0x277D85DE8];
  v4 = 0x277CBE000uLL;
  v5 = objc_opt_new();
  v6 = *MEMORY[0x277CBECE8];
  if (WiFiManagerClientCreate())
  {
    v7 = WiFiManagerClientCopyDevices();
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) >= 1)
      {
        CFArrayGetValueAtIndex(v8, 0);
        if (networksCopy)
        {
          v9 = WiFiManagerClientCopyNetworks();
        }

        else
        {
          *values = WiFiDeviceClientCopyCurrentNetwork();
          if (!*values)
          {
            v30 = pbb_setupflow_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DE64000, v30, OS_LOG_TYPE_DEFAULT, "Unable to share network, none available", buf, 2u);
            }

            goto LABEL_31;
          }

          v9 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
        }

        v10 = v9;
        if (v9)
        {
          cf = v8;
          v36 = v5;
          if (CFArrayGetCount(v9) >= 1)
          {
            v11 = 0;
            v34 = *MEMORY[0x277D29878];
            v37 = v10;
            do
            {
              CFArrayGetValueAtIndex(v10, v11);
              if (WiFiNetworkIsCaptive() || WiFiNetworkIsProfileBased() || WiFiNetworkIsEAP())
              {
                v12 = pbb_setupflow_log();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  SSID = WiFiNetworkGetSSID();
                  v14 = SSID;
                  if (SSID)
                  {
                    v15 = SSID;
                  }

                  else
                  {
                    v15 = &stru_286FA8098;
                  }

                  IsCaptive = WiFiNetworkIsCaptive();
                  IsProfileBased = WiFiNetworkIsProfileBased();
                  IsEAP = WiFiNetworkIsEAP();
                  *values = 138413058;
                  *&values[4] = v15;
                  v40 = 1024;
                  v41 = IsCaptive;
                  v42 = 1024;
                  v43 = IsProfileBased;
                  v44 = 1024;
                  v45 = IsEAP;
                  _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Could not share: %@ - Captive: %{BOOL}d ProfileBased: %{BOOL}d EAP: %{BOOL}d", values, 0x1Eu);

                  v10 = v37;
                }
              }

              else
              {
                v12 = WiFiNetworkCopyRecord();
                v19 = [v12 mutableCopy];
                [v19 removeObjectForKey:@"CHANNEL"];
                v20 = *(v4 + 2840);
                v21 = objc_opt_new();
                v22 = [v19 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                v23 = [v22 count];

                if (v23)
                {
                  v24 = 0;
                  do
                  {
                    v25 = [v19 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                    v26 = [v25 objectAtIndex:v24];

                    [v26 removeObjectForKey:@"CHANNEL"];
                    [v21 insertObject:v26 atIndex:v24];

                    ++v24;
                    v27 = [v19 objectForKeyedSubscript:@"networkKnownBSSListKey"];
                    v28 = [v27 count];
                  }

                  while (v28 > v24);
                }

                [v19 setObject:v21 forKeyedSubscript:@"networkKnownBSSListKey"];
                v29 = WiFiNetworkCopyPassword();
                if (v29)
                {
                  [v19 setObject:v29 forKey:v34];
                }

                [v36 addObject:v19];

                v4 = 0x277CBE000;
                v10 = v37;
              }

              ++v11;
            }

            while (CFArrayGetCount(v10) > v11);
          }

          CFRelease(cf);
          v5 = v36;
          goto LABEL_32;
        }
      }

LABEL_31:
      v10 = v8;
LABEL_32:
      CFRelease(v10);
    }
  }

  v31 = pbb_setupflow_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *values = 0;
    _os_log_impl(&dword_25DE64000, v31, OS_LOG_TYPE_DEFAULT, "return from current networks", values, 2u);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)currentWiFiNetworkName
{
  v2 = *MEMORY[0x277CBECE8];
  if (WiFiManagerClientCreate())
  {
    v3 = WiFiManagerClientCopyDevices();
    if (v3)
    {
      v4 = v3;
      if (CFArrayGetCount(v3) >= 1)
      {
        CFArrayGetValueAtIndex(v4, 0);
        v5 = WiFiDeviceClientCopyCurrentNetwork();
        if (!v5)
        {
LABEL_8:
          CFRelease(v4);
          goto LABEL_10;
        }

        if (!WiFiNetworkIsCaptive() && !WiFiNetworkIsProfileBased())
        {
          v5 = WiFiNetworkGetSSID();
          goto LABEL_8;
        }
      }

      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)watchDidIngestWirelessCredentials:(id)credentials
{
  v12 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[PBBridgeCompanionController watchDidIngestWirelessCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  type = [credentialsCopy type];
  context = [credentialsCopy context];

  fromID = [context fromID];
  [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)watchDidApplyWirelessCredentials:(id)credentials
{
  v15 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[PBBridgeCompanionController watchDidApplyWirelessCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  type = [credentialsCopy type];
  context = [credentialsCopy context];

  fromID = [context fromID];
  v9 = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (v9)
  {
    setupController = [*MEMORY[0x277D76620] setupController];
    linkUpgradeMonitor = [setupController linkUpgradeMonitor];
    [linkUpgradeMonitor wirelessCredentialUpdateCompletedWithResult:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)tellWatchToPrepareForForcedSUWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PBBridgeCompanionController tellWatchToPrepareForForcedSUWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v9, 0xCu);
  }

  v6 = [completionCopy copy];
  prepareWatchForForcedSUCompletion = self->_prepareWatchForForcedSUCompletion;
  self->_prepareWatchForForcedSUCompletion = v6;

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:27 withArguments:MEMORY[0x277CBEBF8]];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)watchDidPrepareForForcedSU:(id)u
{
  v14 = *MEMORY[0x277D85DE8];
  uCopy = u;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[PBBridgeCompanionController watchDidPrepareForForcedSU:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v12, 0xCu);
  }

  type = [uCopy type];
  context = [uCopy context];

  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    prepareWatchForForcedSUCompletion = self->_prepareWatchForForcedSUCompletion;
    if (prepareWatchForForcedSUCompletion)
    {
      prepareWatchForForcedSUCompletion[2]();
      v10 = self->_prepareWatchForForcedSUCompletion;
      self->_prepareWatchForForcedSUCompletion = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendBuysOnWatchUsername:(id)username andPassword:(id)password withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  v10 = [completion copy];
  buysOnWatchCredentialsIngestedCompletion = self->_buysOnWatchCredentialsIngestedCompletion;
  self->_buysOnWatchCredentialsIngestedCompletion = v10;

  v12 = pbb_accountsignin_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PBBridgeCompanionController sendBuysOnWatchUsername:andPassword:withCompletion:]";
    v18 = 2112;
    v19 = usernameCopy;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%s -- username %@", buf, 0x16u);
  }

  v15[0] = usernameCopy;
  v15[1] = passwordCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:32 withArguments:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestProxiedDeviceForWatchWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [completion copy];
  remoteAccountForDeviceCompletion = self->_remoteAccountForDeviceCompletion;
  self->_remoteAccountForDeviceCompletion = v4;

  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PBBridgeCompanionController requestProxiedDeviceForWatchWithCompletion:]";
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "%s:", &v8, 0xCu);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:29 withArguments:MEMORY[0x277CBEBF8]];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)returnedRemoteAccountForDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  type = [deviceCopy type];
  context = [deviceCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoRemoteAccountForDevice alloc];
    data = [deviceCopy data];
    v10 = [(PBBProtoRemoteAccountForDevice *)v8 initWithData:data];

    v11 = pbb_accountsignin_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[PBBridgeCompanionController returnedRemoteAccountForDevice:]";
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%s:", &v17, 0xCu);
    }

    serializedDevice = [(PBBProtoRemoteAccountForDevice *)v10 serializedDevice];
    v13 = [MEMORY[0x277CF0218] deviceWithSerializedData:serializedDevice];
    [v13 setLinkType:2];
    remoteAccountForDeviceCompletion = self->_remoteAccountForDeviceCompletion;
    if (remoteAccountForDeviceCompletion)
    {
      remoteAccountForDeviceCompletion[2](remoteAccountForDeviceCompletion, v13);
      v15 = self->_remoteAccountForDeviceCompletion;
      self->_remoteAccountForDeviceCompletion = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendComputedTimeZoneToGizmo
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = TMCopyComputedTimeZone();
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PBBridgeCompanionController sendComputedTimeZoneToGizmo]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%s Sending computed time zone %@ to gizmo", buf, 0x16u);
  }

  if (v3)
  {
    v7 = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
    [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:111 withArguments:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendTinkerAccountCredentialsWithContext:(id)context completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [completion copy];
  tinkerCredentialsIngestedCompletion = self->_tinkerCredentialsIngestedCompletion;
  selfCopy = self;
  self->_tinkerCredentialsIngestedCompletion = v7;

  setupController = [*MEMORY[0x277D76620] setupController];
  username = [contextCopy username];
  [setupController setTinkerSignInId:username];

  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    username2 = [contextCopy username];
    *buf = 136315394;
    v38 = "[PBBridgeCompanionController sendTinkerAccountCredentialsWithContext:completion:]";
    v39 = 2112;
    v40 = username2;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%s: username %@", buf, 0x16u);
  }

  acceptedTermsInfo = [contextCopy acceptedTermsInfo];

  if (acceptedTermsInfo)
  {
    v14 = MEMORY[0x277CCAAB0];
    acceptedTermsInfo2 = [contextCopy acceptedTermsInfo];
    v35 = 0;
    v16 = [v14 archivedDataWithRootObject:acceptedTermsInfo2 requiringSecureCoding:1 error:&v35];
    v17 = v35;

    if (v17)
    {
      v18 = pbb_accountsignin_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeCompanionController sendTinkerAccountCredentialsWithContext:completion:];
      }

      v33 = v17;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v16 = 0;
  }

  username3 = [contextCopy username];
  v20 = username3;
  if (!username3)
  {
    username3 = [MEMORY[0x277CBEB68] null];
  }

  v32 = username3;
  v36[0] = username3;
  password = [contextCopy password];
  v22 = password;
  if (!password)
  {
    password = [MEMORY[0x277CBEB68] null];
  }

  v30 = password;
  v36[1] = password;
  null = v16;
  if (!v16)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v36[2] = null;
  pairingParentUsername = [contextCopy pairingParentUsername];
  null2 = pairingParentUsername;
  if (!pairingParentUsername)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v36[3] = null2;
  pairingParentAltDSID = [contextCopy pairingParentAltDSID];
  null3 = pairingParentAltDSID;
  if (!pairingParentAltDSID)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v36[4] = null3;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
  if (!pairingParentAltDSID)
  {
  }

  if (!pairingParentUsername)
  {
  }

  if (v16)
  {
    if (v22)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!v20)
  {
  }

  [(PBBridgeCompanionController *)selfCopy _sendRemoteCommandWithMessageID:30 withArguments:v28];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)tinkerWatchIngestedCredentials:(id)credentials
{
  v33 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  type = [credentialsCopy type];
  context = [credentialsCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoTinkerAccountCredentialsIngested alloc];
    data = [credentialsCopy data];
    v10 = [(PBBProtoTinkerAccountCredentialsIngested *)v8 initWithData:data];

    success = [(PBBProtoTinkerAccountCredentialsIngested *)v10 success];
    cdpStatus = [(PBBProtoTinkerAccountCredentialsIngested *)v10 cdpStatus];
    errorDescription = [(PBBProtoTinkerAccountCredentialsIngested *)v10 errorDescription];
    detailedError = [(PBBProtoTinkerAccountCredentialsIngested *)v10 detailedError];
    if (detailedError)
    {
      v22 = 0;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:detailedError error:&v22];
      v16 = v22;
      if (v16)
      {
        v17 = pbb_accountsignin_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController tinkerWatchIngestedCredentials:];
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = pbb_accountsignin_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:success];
      *buf = 136316162;
      v24 = "[PBBridgeCompanionController tinkerWatchIngestedCredentials:]";
      v25 = 2112;
      v26 = v19;
      v27 = 2114;
      v28 = errorDescription;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      v32 = cdpStatus;
      _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, " %s: Success %@ (Error message %{public}@) detailed: %{public}@ status: %ld", buf, 0x34u);
    }

    tinkerCredentialsIngestedCompletion = self->_tinkerCredentialsIngestedCompletion;
    if (tinkerCredentialsIngestedCompletion)
    {
      tinkerCredentialsIngestedCompletion[2](tinkerCredentialsIngestedCompletion, success, cdpStatus, errorDescription, v15);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)tinkerFinishedHealthSharingOptIn:(id)in
{
  inCopy = in;
  type = [inCopy type];
  context = [inCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v7 = [PBBProtoHealthSharingEnabled alloc];
    data = [inCopy data];
    v9 = [(PBBProtoHealthSharingEnabled *)v7 initWithData:data];

    enabled = [(PBBProtoHealthSharingEnabled *)v9 enabled];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 remoteFinishedHealthSharingOptInWithSelection:enabled];
    }
  }
}

- (void)acknowledgeBuysOnWatchCredentialIngestion:(id)ingestion
{
  v28 = *MEMORY[0x277D85DE8];
  ingestionCopy = ingestion;
  type = [ingestionCopy type];
  context = [ingestionCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoAcknowledgeBuysOnWatchCredentialIngestion alloc];
    data = [ingestionCopy data];
    v10 = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v8 initWithData:data];

    success = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 success];
    errorCode = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 errorCode];
    errorDescription = [(PBBProtoAcknowledgeBuysOnWatchCredentialIngestion *)v10 errorDescription];
    v14 = pbb_accountsignin_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:success];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:errorCode];
      v20 = 136315906;
      v21 = "[PBBridgeCompanionController acknowledgeBuysOnWatchCredentialIngestion:]";
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = errorDescription;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "%s -- success: %@ (Error: %@ %@)", &v20, 0x2Au);
    }

    buysOnWatchCredentialsIngestedCompletion = self->_buysOnWatchCredentialsIngestedCompletion;
    if (buysOnWatchCredentialsIngestedCompletion)
    {
      buysOnWatchCredentialsIngestedCompletion[2](buysOnWatchCredentialsIngestedCompletion, success, errorCode, errorDescription);
      v18 = self->_buysOnWatchCredentialsIngestedCompletion;
      self->_buysOnWatchCredentialsIngestedCompletion = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)tellWatchToConfigureDeviceManagementWithData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = MEMORY[0x25F8A6750](completion);
  setupDeviceManagementCompletion = self->_setupDeviceManagementCompletion;
  self->_setupDeviceManagementCompletion = v7;

  v9 = pbb_devicemanagement_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[PBBridgeCompanionController tellWatchToConfigureDeviceManagementWithData:completion:]";
    v15 = 1024;
    v16 = dataCopy != 0;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "%s -- configuration data: %{BOOL}d", buf, 0x12u);
  }

  v12 = dataCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:34 withArguments:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceManagementResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v8 = [PBBProtoDeviceManagementSetupResponse alloc];
    data = [responseCopy data];
    v10 = [(PBBProtoDeviceManagementSetupResponse *)v8 initWithData:data];

    success = [(PBBProtoDeviceManagementSetupResponse *)v10 success];
    error = [(PBBProtoDeviceManagementSetupResponse *)v10 error];
    if (error)
    {
      v18 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:error error:&v18];
      v14 = v18;
      if (v14)
      {
        v15 = pbb_devicemanagement_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeCompanionController handleDeviceManagementResponse:];
        }
      }
    }

    else
    {
      v13 = 0;
    }

    setupDeviceManagementCompletion = self->_setupDeviceManagementCompletion;
    if (setupDeviceManagementCompletion)
    {
      setupDeviceManagementCompletion[2](setupDeviceManagementCompletion, success, v13);
      v17 = self->_setupDeviceManagementCompletion;
      self->_setupDeviceManagementCompletion = 0;
    }
  }
}

- (void)checkApplicationInstallAllowedWithCompletion:(id)completion
{
  v4 = MEMORY[0x25F8A6750](completion, a2);
  applicationInstallAllowedCompletion = self->_applicationInstallAllowedCompletion;
  self->_applicationInstallAllowedCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:35 withArguments:v6];
}

- (void)handleApplicationInstallRestrictionResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  context = [responseCopy context];
  fromID = [context fromID];
  LODWORD(type) = [(PBBridgeCompanionController *)self shouldHandleMessageType:type fromId:fromID];

  if (type)
  {
    v7 = [PBBProtoApplicationInstallRestrictionResponse alloc];
    data = [responseCopy data];
    v9 = [(PBBProtoApplicationInstallRestrictionResponse *)v7 initWithData:data];

    allowed = [(PBBProtoApplicationInstallRestrictionResponse *)v9 allowed];
    applicationInstallAllowedCompletion = self->_applicationInstallAllowedCompletion;
    if (applicationInstallAllowedCompletion)
    {
      applicationInstallAllowedCompletion[2](applicationInstallAllowedCompletion, allowed);
      v12 = self->_applicationInstallAllowedCompletion;
      self->_applicationInstallAllowedCompletion = 0;
    }
  }
}

- (void)tellGizmoToUpdateNanoRegistryToNormalState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeCompanionController tellGizmoToUpdateNanoRegistryToNormalState]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PBBridgeCompanionController *)self _sendRemoteCommandWithMessageID:36 withArguments:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (RUILoaderDelegate)ruiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ruiDelegate);

  return WeakRetained;
}

- (PBBridgeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tellWatchLanguagesAndLocaleSupportingTermOfAddress:withCompletion:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gizmoActivationFailed:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendProxyActivationRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendProxyActivationRequest:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendProxyActivationRequest:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendProxyActivationWithCustomRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:didFailWithError:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connection:didFailWithError:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connection:(uint64_t)a1 willSendRequest:(uint64_t)a2 redirectResponse:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 120);
  v5[0] = 67109890;
  v5[1] = 1219;
  v6 = 2080;
  v7 = "[PBBridgeCompanionController connection:willSendRequest:redirectResponse:]";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "%d %s -- %@ %@", v5, 0x26u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)connection:didReceiveResponse:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__PBBridgeCompanionController__processActivationData__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)gizmoFailedToCreatePasscode:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteActivationDetails:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a2 length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25DE64000, v2, v3, "%s Error (%{public}@) decoding request (%ld bytes)", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteActivationDetails:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendTinkerAccountCredentialsWithContext:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tinkerWatchIngestedCredentials:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceManagementResponse:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end