@interface PBBridgeGizmoController
+ (id)prepareOfflineTermsResponse:(id)a3;
- (BOOL)_getActivationData:(BOOL)a3 forRequest:(id)a4 withCompletion:(id)a5;
- (BOOL)getActivationDataForRequest:(id)a3 withCompletion:(id)a4;
- (BOOL)getSessionDataForRequest:(id)a3 withCompletion:(id)a4;
- (BOOL)reportRemoteActivationFailureError:(id)a3;
- (BOOL)tellCompanionGizmoFailedActivating:(id)a3;
- (BOOL)tellCompanionGizmoFinishedActivating;
- (BOOL)tellCompanionGizmoFinishedActivatingAsDeKOTA;
- (BOOL)updateLanguageIdentifierWithCompletion:(id)a3;
- (BOOL)updateRegionIdentifierWithCompletion:(id)a3;
- (PBBridgeConnectionDelegate)delegate;
- (PBBridgeGizmoController)init;
- (void)activationTimeout:(id)a3;
- (void)beganAwaitingAbilityToActivate;
- (void)checkAppInstallationAllowed:(id)a3;
- (void)companionBecameAvailableWantsConfirmation:(id)a3;
- (void)companionDidSendDemoWirelessCredentials:(id)a3;
- (void)companionDidSendLanguageAndLocale:(id)a3;
- (void)companionDidSendTinkerWirelessCredentials:(id)a3;
- (void)companionTermsResponse:(id)a3;
- (void)doInitialSyncPrep:(id)a3;
- (void)enableSiriForGizmoWithCompletion:(id)a3;
- (void)enabledSiri:(id)a3;
- (void)endSetupTransaction;
- (void)fetchTermsAndConditions:(id)a3;
- (void)getSiriStateWithCompletion:(id)a3;
- (void)gotSiriState:(id)a3;
- (void)handleActivationData:(id)a3;
- (void)handleBuysOnWatchIngestion:(id)a3;
- (void)handleOfflineTermsRequest:(id)a3;
- (void)handleRenameDeviceRequest:(id)a3;
- (void)handleSetLauncherViewModeForTinker:(id)a3;
- (void)handleWarrantySentinelRequest:(id)a3;
- (void)ingestTinkerCredentials:(id)a3;
- (void)invalidateTimeoutTimer;
- (void)parseNetworkRecordsAndApplyWirelessCredentialsFromData:(id)a3;
- (void)popToControllerType:(id)a3;
- (void)prepareForForcedWatchSU:(id)a3;
- (void)processReceivedPairingWirelessCredentials:(id)a3;
- (void)provideAppViewListImage:(id)a3;
- (void)pushControllerType:(id)a3;
- (void)refreshTimeoutTimer;
- (void)remoteRequestToKeepAlive:(id)a3;
- (void)retryActivation:(id)a3;
- (void)returnProxiedDeviceForDeviceWithData:(id)a3;
- (void)setActivationState:(unsigned __int16)a3;
- (void)setCanBeginActivating:(id)a3;
- (void)setCompanionLanguage:(id)a3;
- (void)setCompanionRegion:(id)a3;
- (void)setComputedTimeZone:(id)a3;
- (void)setCrownOrientationRight:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setDiagnosticsEnabled:(id)a3;
- (void)setFitnessRouteAuthorizationForTinker:(id)a3;
- (void)setLocationEnabled:(id)a3;
- (void)setPasscodeRestrictions:(id)a3;
- (void)setSiriEnabled:(id)a3;
- (void)setupDeviceManagement:(id)a3;
- (void)setupServiceMessageSelectorMappings;
- (void)showLockedOnAnimation:(id)a3;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)updateNanoRegistryToNormalState:(id)a3;
- (void)updateSynchProgress:(id)a3;
- (void)waitForDynamicActivationEventPresentation:(id)a3;
- (void)waitForUserResponseToDynamicEventPresentation:(id)a3;
@end

@implementation PBBridgeGizmoController

- (PBBridgeGizmoController)init
{
  v4.receiver = self;
  v4.super_class = PBBridgeGizmoController;
  v2 = [(PBBridgeGizmoController *)&v4 init];
  if (v2)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_7);
  }

  return v2;
}

- (void)setupServiceMessageSelectorMappings
{
  v3 = [(PBBridgeIDSServiceDelegate *)self service];
  [v3 setProtobufAction:sel_companionBecameAvailableWantsConfirmation_ forIncomingRequestsOfType:1];

  v4 = [(PBBridgeIDSServiceDelegate *)self service];
  [v4 setProtobufAction:sel_pushControllerType_ forIncomingRequestsOfType:3];

  v5 = [(PBBridgeIDSServiceDelegate *)self service];
  [v5 setProtobufAction:sel_popToControllerType_ forIncomingRequestsOfType:4];

  v6 = [(PBBridgeIDSServiceDelegate *)self service];
  [v6 setProtobufAction:sel_handleActivationData_ forIncomingRequestsOfType:2];

  v7 = [(PBBridgeIDSServiceDelegate *)self service];
  [v7 setProtobufAction:sel_setCompanionLanguage_ forIncomingRequestsOfType:5];

  v8 = [(PBBridgeIDSServiceDelegate *)self service];
  [v8 setProtobufAction:sel_setCompanionRegion_ forIncomingRequestsOfType:6];

  v9 = [(PBBridgeIDSServiceDelegate *)self service];
  [v9 setProtobufAction:sel_gotSiriState_ forIncomingRequestsOfType:7];

  v10 = [(PBBridgeIDSServiceDelegate *)self service];
  [v10 setProtobufAction:sel_setLocationEnabled_ forIncomingRequestsOfType:8];

  v11 = [(PBBridgeIDSServiceDelegate *)self service];
  [v11 setProtobufAction:sel_setDiagnosticsEnabled_ forIncomingRequestsOfType:10];

  v12 = [(PBBridgeIDSServiceDelegate *)self service];
  [v12 setProtobufAction:sel_setCanBeginActivating_ forIncomingRequestsOfType:11];

  v13 = [(PBBridgeIDSServiceDelegate *)self service];
  [v13 setProtobufAction:sel_waitForDynamicActivationEventPresentation_ forIncomingRequestsOfType:22];

  v14 = [(PBBridgeIDSServiceDelegate *)self service];
  [v14 setProtobufAction:sel_waitForUserResponseToDynamicEventPresentation_ forIncomingRequestsOfType:23];

  v15 = [(PBBridgeIDSServiceDelegate *)self service];
  [v15 setProtobufAction:sel_retryActivation_ forIncomingRequestsOfType:15];

  v16 = [(PBBridgeIDSServiceDelegate *)self service];
  [v16 setProtobufAction:sel_handleWarrantySentinelRequest_ forIncomingRequestsOfType:14];

  v17 = [(PBBridgeIDSServiceDelegate *)self service];
  [v17 setProtobufAction:sel_handleOfflineTermsRequest_ forIncomingRequestsOfType:16];

  v18 = [(PBBridgeIDSServiceDelegate *)self service];
  [v18 setProtobufAction:sel_showLockedOnAnimation_ forIncomingRequestsOfType:17];

  v19 = [(PBBridgeIDSServiceDelegate *)self service];
  [v19 setProtobufAction:sel_setCrownOrientationRight_ forIncomingRequestsOfType:18];

  v20 = [(PBBridgeIDSServiceDelegate *)self service];
  [v20 setProtobufAction:sel_setPasscodeRestrictions_ forIncomingRequestsOfType:20];

  v21 = [(PBBridgeIDSServiceDelegate *)self service];
  [v21 setProtobufAction:sel_updateSynchProgress_ forIncomingRequestsOfType:19];

  v22 = [(PBBridgeIDSServiceDelegate *)self service];
  [v22 setProtobufAction:sel_doInitialSyncPrep_ forIncomingRequestsOfType:21];

  v23 = [(PBBridgeIDSServiceDelegate *)self service];
  [v23 setProtobufAction:sel_remoteRequestToKeepAlive_ forIncomingRequestsOfType:24];

  v24 = [(PBBridgeIDSServiceDelegate *)self service];
  [v24 setProtobufAction:sel_companionDidSendLanguageAndLocale_ forIncomingRequestsOfType:25];

  v25 = [(PBBridgeIDSServiceDelegate *)self service];
  [v25 setProtobufAction:sel_companionDidSendDemoWirelessCredentials_ forIncomingRequestsOfType:26];

  v26 = [(PBBridgeIDSServiceDelegate *)self service];
  [v26 setProtobufAction:sel_prepareForForcedWatchSU_ forIncomingRequestsOfType:27];

  v27 = [(PBBridgeIDSServiceDelegate *)self service];
  [v27 setProtobufAction:sel_fetchTermsAndConditions_ forIncomingRequestsOfType:102];

  v28 = [(PBBridgeIDSServiceDelegate *)self service];
  [v28 setProtobufAction:sel_companionTermsResponse_ forIncomingRequestsOfType:103];

  v29 = [(PBBridgeIDSServiceDelegate *)self service];
  [v29 setProtobufAction:sel_setSiriEnabled_ forIncomingRequestsOfType:28];

  v30 = [(PBBridgeIDSServiceDelegate *)self service];
  [v30 setProtobufAction:sel_returnProxiedDeviceForDeviceWithData_ forIncomingRequestsOfType:29];

  v31 = [(PBBridgeIDSServiceDelegate *)self service];
  [v31 setProtobufAction:sel_setComputedTimeZone_ forIncomingRequestsOfType:111];

  v32 = [(PBBridgeIDSServiceDelegate *)self service];
  [v32 setProtobufAction:sel_ingestTinkerCredentials_ forIncomingRequestsOfType:30];

  v33 = [(PBBridgeIDSServiceDelegate *)self service];
  [v33 setProtobufAction:sel_companionDidSendTinkerWirelessCredentials_ forIncomingRequestsOfType:104];

  v34 = [(PBBridgeIDSServiceDelegate *)self service];
  [v34 setProtobufAction:sel_setMessagesInCloudEnabledForTinker_ forIncomingRequestsOfType:31];

  v35 = [(PBBridgeIDSServiceDelegate *)self service];
  [v35 setProtobufAction:sel_setFitnessRouteAuthorizationForTinker_ forIncomingRequestsOfType:33];

  v36 = [(PBBridgeIDSServiceDelegate *)self service];
  [v36 setProtobufAction:sel_handleRenameDeviceRequest_ forIncomingRequestsOfType:110];

  v37 = [(PBBridgeIDSServiceDelegate *)self service];
  [v37 setProtobufAction:sel_handleBuysOnWatchIngestion_ forIncomingRequestsOfType:32];

  v38 = [(PBBridgeIDSServiceDelegate *)self service];
  [v38 setProtobufAction:sel_handleSetLauncherViewModeForTinker_ forIncomingRequestsOfType:112];

  v39 = [(PBBridgeIDSServiceDelegate *)self service];
  [v39 setProtobufAction:sel_provideAppViewListImage_ forIncomingRequestsOfType:113];

  v40 = [(PBBridgeIDSServiceDelegate *)self service];
  [v40 setProtobufAction:sel_setupDeviceManagement_ forIncomingRequestsOfType:34];

  v41 = [(PBBridgeIDSServiceDelegate *)self service];
  [v41 setProtobufAction:sel_checkAppInstallationAllowed_ forIncomingRequestsOfType:35];

  v42 = [(PBBridgeIDSServiceDelegate *)self service];
  [v42 setProtobufAction:sel_updateNanoRegistryToNormalState_ forIncomingRequestsOfType:36];

  v43 = [(PBBridgeIDSServiceDelegate *)self service];
  [v43 setProtobufAction:sel_processReceivedPairingWirelessCredentials_ forIncomingRequestsOfType:37];
}

- (void)endSetupTransaction
{
  v10.receiver = self;
  v10.super_class = PBBridgeGizmoController;
  [(PBBridgeIDSServiceDelegate *)&v10 endSetupTransaction];
  self->_activationState = 0;
  [(NSTimer *)self->_activationTimeout invalidate];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = 0;

  updateLanguageCompletion = self->_updateLanguageCompletion;
  self->_updateLanguageCompletion = 0;

  updateRegionCompletion = self->_updateRegionCompletion;
  self->_updateRegionCompletion = 0;

  sessionCompletion = self->_sessionCompletion;
  self->_sessionCompletion = 0;

  activationCompletion = self->_activationCompletion;
  self->_activationCompletion = 0;

  siriStateCompletion = self->_siriStateCompletion;
  self->_siriStateCompletion = 0;

  enableSiriCompletion = self->_enableSiriCompletion;
  self->_enableSiriCompletion = 0;
}

- (void)setActivationState:(unsigned __int16)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_activationState >= a3)
  {
    v5 = pbb_activation_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((self->_activationState - 2) > 3u)
      {
        v6 = @"Idle";
      }

      else
      {
        v6 = off_2799F4AF8[(self->_activationState - 2)];
      }

      if ((a3 - 2) > 3u)
      {
        v7 = @"Idle";
      }

      else
      {
        v7 = off_2799F4AF8[(a3 - 2)];
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Prevented misordered state change (%@ --> %@)", &v9, 0x16u);
    }
  }

  else
  {
    self->_activationState = a3;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateLanguageIdentifierWithCompletion:(id)a3
{
  v4 = [a3 copy];
  updateLanguageCompletion = self->_updateLanguageCompletion;
  self->_updateLanguageCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:5 withArguments:v6];
}

- (BOOL)updateRegionIdentifierWithCompletion:(id)a3
{
  v4 = [a3 copy];
  updateRegionCompletion = self->_updateRegionCompletion;
  self->_updateRegionCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:6 withArguments:v6];
}

- (BOOL)tellCompanionGizmoFinishedActivating
{
  [(PBBridgeGizmoController *)self _recordThatWatchFinishedActivating];
  v3 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:4 withArguments:v3];
}

- (BOOL)tellCompanionGizmoFinishedActivatingAsDeKOTA
{
  [(PBBridgeGizmoController *)self _recordThatWatchFinishedActivating];
  v3 = MEMORY[0x277CBEBF8];

  return [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:21 withArguments:v3];
}

- (BOOL)tellCompanionGizmoFailedActivating:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  self->_activationState = 1;
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  LOBYTE(self) = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:12 withArguments:v5];
  v6 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)setCompanionLanguage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = 534;
    v16 = 2080;
    v17 = "[PBBridgeGizmoController setCompanionLanguage:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v15, 0x12u);
  }

  v6 = [PBBProtoSetLanguage alloc];
  v7 = [v4 data];

  v8 = [(PBBProtoSetLanguage *)v6 initWithData:v7];
  v9 = [(PBBProtoSetLanguage *)v8 language];
  v10 = [v9 copy];
  languageIdentifer = self->_languageIdentifer;
  self->_languageIdentifer = v10;

  updateLanguageCompletion = self->_updateLanguageCompletion;
  if (updateLanguageCompletion)
  {
    updateLanguageCompletion[2](updateLanguageCompletion, self->_languageIdentifer);
    v13 = self->_updateLanguageCompletion;
    self->_updateLanguageCompletion = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCompanionRegion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = 548;
    v16 = 2080;
    v17 = "[PBBridgeGizmoController setCompanionRegion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v15, 0x12u);
  }

  v6 = [PBBProtoSetRegion alloc];
  v7 = [v4 data];

  v8 = [(PBBProtoSetRegion *)v6 initWithData:v7];
  v9 = [(PBBProtoSetRegion *)v8 region];
  v10 = [v9 copy];
  regionIdentifer = self->_regionIdentifer;
  self->_regionIdentifer = v10;

  updateRegionCompletion = self->_updateRegionCompletion;
  if (updateRegionCompletion)
  {
    updateRegionCompletion[2](updateRegionCompletion, self->_regionIdentifer);
    v13 = self->_updateRegionCompletion;
    self->_updateRegionCompletion = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getSiriStateWithCompletion:(id)a3
{
  v4 = [a3 copy];
  siriStateCompletion = self->_siriStateCompletion;
  self->_siriStateCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:8 withArguments:v6];
}

- (void)enableSiriForGizmoWithCompletion:(id)a3
{
  v4 = [a3 copy];
  enableSiriCompletion = self->_enableSiriCompletion;
  self->_enableSiriCompletion = v4;

  v6 = MEMORY[0x277CBEBF8];

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:9 withArguments:v6];
}

- (void)gotSiriState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109378;
    v18[1] = 574;
    v19 = 2080;
    v20 = "[PBBridgeGizmoController gotSiriState:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v18, 0x12u);
  }

  v6 = [PBBProtoSiriEnabled alloc];
  v7 = [v4 data];
  v8 = [(PBBProtoSiriEnabled *)v6 initWithData:v7];

  siriStateCompletion = self->_siriStateCompletion;
  if (siriStateCompletion)
  {
    siriStateCompletion[2](siriStateCompletion, [(PBBProtoSiriEnabled *)v8 enabled]);
    v10 = self->_siriStateCompletion;
    self->_siriStateCompletion = 0;
  }

  if (PBLogPerformanceMetrics())
  {
    v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v4 context];
    v16 = [v15 outgoingResponseIdentifier];
    [v11 addMilestone:v14 activityType:v16 activityIdentifier:Current];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enabledSiri:(id)a3
{
  enableSiriCompletion = self->_enableSiriCompletion;
  if (enableSiriCompletion)
  {
    enableSiriCompletion[2](enableSiriCompletion, a2, a3);
    v5 = self->_enableSiriCompletion;
    self->_enableSiriCompletion = 0;
  }
}

- (void)companionBecameAvailableWantsConfirmation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoBecameActive alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoBecameActive *)v5 initWithData:v6];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = 600;
    v12 = 2080;
    v13 = "[PBBridgeGizmoController companionBecameAvailableWantsConfirmation:]";
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s", v11, 0x12u);
  }

  if (![(PBBProtoBecameActive *)v7 wantsConfirmation])
  {
    [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:1 withArguments:&unk_286FB4208];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteDidBecomeAvailable];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_getActivationData:(BOOL)a3 forRequest:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = pbb_activation_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[PBBridgeGizmoController _getActivationData:forRequest:withCompletion:]";
    _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  if (v6)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  if (v6)
  {
    v12 = &OBJC_IVAR___PBBridgeGizmoController__sessionCompletion;
  }

  else
  {
    v12 = &OBJC_IVAR___PBBridgeGizmoController__activationCompletion;
  }

  [(PBBridgeGizmoController *)self setActivationState:v11];
  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  v13 = [v9 copy];
  v14 = *v12;
  v15 = *(&self->super.super.isa + v14);
  *(&self->super.super.isa + v14) = v13;

  if (v8)
  {
    v20 = v8;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v17 = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:2 withArguments:v16];
  }

  else
  {
    v17 = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:2 withArguments:0];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)getSessionDataForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PBBridgeGizmoController_getSessionDataForRequest_withCompletion___block_invoke;
  v11[3] = &unk_2799F49A8;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x25F8A6750](v11);
  LOBYTE(self) = [(PBBridgeGizmoController *)self _getActivationData:1 forRequest:v8 withCompletion:v9];

  return self;
}

uint64_t __67__PBBridgeGizmoController_getSessionDataForRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)getActivationDataForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__PBBridgeGizmoController_getActivationDataForRequest_withCompletion___block_invoke;
  v11[3] = &unk_2799F49A8;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x25F8A6750](v11);
  LOBYTE(self) = [(PBBridgeGizmoController *)self _getActivationData:0 forRequest:v8 withCompletion:v9];

  return self;
}

uint64_t __70__PBBridgeGizmoController_getActivationDataForRequest_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)reportRemoteActivationFailureError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  LOBYTE(self) = [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:27 withArguments:v6, v9, v10];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)handleActivationData:(id)a3
{
  *&v44[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained checkBrickedState];
  }

  else
  {
    v6 = 1;
  }

  v7 = pbb_activation_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v44 = "[PBBridgeGizmoController handleActivationData:]";
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v6)
  {
    [(PBBridgeGizmoController *)self setActivationState:5];
    [(PBBridgeGizmoController *)self refreshTimeoutTimer];
    v8 = [PBBProtoHandleActivationData alloc];
    v9 = [v4 data];
    v10 = [(PBBProtoHandleActivationData *)v8 initWithData:v9];

    if (PBLogPerformanceMetrics())
    {
      v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v4 context];
      v16 = [v15 outgoingResponseIdentifier];
      [v11 addMilestone:v14 activityType:v16 activityIdentifier:Current];
    }

    v17 = pbb_activation_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v44[0] = 685;
      LOWORD(v44[1]) = 2080;
      *(&v44[1] + 2) = "[PBBridgeGizmoController handleActivationData:]";
      _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
    }

    sessionCompletion = self->_sessionCompletion;
    if (sessionCompletion)
    {
      v19 = [v10 activationData];
      sessionCompletion[2](sessionCompletion, v19, 0);

      v20 = self->_sessionCompletion;
      self->_sessionCompletion = 0;
    }

    else if (self->_activationCompletion)
    {
      v28 = objc_alloc(MEMORY[0x277CCAAC8]);
      v29 = [v10 responseHeaders];
      v41 = 0;
      v30 = [v28 initForReadingFromData:v29 error:&v41];
      v20 = v41;

      if (v20)
      {
        v31 = pbb_activation_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [PBBridgeGizmoController handleActivationData:];
        }
      }

      v32 = MEMORY[0x277CBEB98];
      v42[0] = objc_opt_class();
      v42[1] = objc_opt_class();
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v34 = [v32 setWithArray:v33];
      v35 = [v30 decodeObjectOfClasses:v34 forKey:@"PBBridgeActivationRequestKey"];
      v36 = [v35 copy];

      [v30 finishDecoding];
      activationCompletion = self->_activationCompletion;
      v38 = [v10 activationData];
      activationCompletion[2](activationCompletion, v38, v36);

      v39 = self->_activationCompletion;
      self->_activationCompletion = 0;
    }

    else
    {
      v20 = pbb_activation_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeGizmoController handleActivationData:v20];
      }
    }
  }

  else
  {
    v10 = pbb_activation_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeGizmoController *)v10 handleActivationData:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  PBNotifyClientOfActivity();
  v40 = *MEMORY[0x277D85DE8];
}

- (void)setDiagnosticsEnabled:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PBBProtoDiagnosticsEnabled alloc];
  v5 = [v3 data];
  v6 = [(PBBProtoDiagnosticsEnabled *)v4 initWithData:v5];

  v7 = [(PBBProtoDiagnosticsEnabled *)v6 enabled];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (v7)
    {
      v9 = @"enabled";
    }

    v18[0] = 67109634;
    v18[1] = 717;
    v19 = 2080;
    v20 = "[PBBridgeGizmoController setDiagnosticsEnabled:]";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s %@", v18, 0x1Cu);
  }

  v10 = [MEMORY[0x277D262A0] sharedConnection];
  [v10 setBoolValue:v7 forSetting:*MEMORY[0x277D25E58]];

  if (PBLogPerformanceMetrics())
  {
    v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v3 context];
    v16 = [v15 outgoingResponseIdentifier];
    [v11 addMilestone:v14 activityType:v16 activityIdentifier:Current];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setLocationEnabled:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PBBProtoLocationServicesEnabled alloc];
  v5 = [v3 data];
  v6 = [(PBBProtoLocationServicesEnabled *)v4 initWithData:v5];

  v7 = [(PBBProtoLocationServicesEnabled *)v6 enabled];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (v7)
    {
      v9 = @"enabled";
    }

    v17[0] = 67109634;
    v17[1] = 730;
    v18 = 2080;
    v19 = "[PBBridgeGizmoController setLocationEnabled:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s %@", v17, 0x1Cu);
  }

  [MEMORY[0x277CBFC10] setLocationServicesEnabled:v7];
  if (PBLogPerformanceMetrics())
  {
    v10 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v3 context];
    v15 = [v14 outgoingResponseIdentifier];
    [v10 addMilestone:v13 activityType:v15 activityIdentifier:Current];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setSiriEnabled:(id)a3
{
  v3 = a3;
  v4 = [PBBProtoSetSiriEnabled alloc];
  v5 = [v3 data];

  v10 = [(PBBProtoSetSiriEnabled *)v4 initWithData:v5];
  v6 = [(PBBProtoSetSiriEnabled *)v10 enabled];
  v7 = [getAFPreferencesClass() sharedPreferences];
  [v7 setAssistantIsEnabled:v6];

  v8 = [getAFPreferencesClass() sharedPreferences];
  [v8 setDictationIsEnabled:v6];

  v9 = [getAFPreferencesClass() sharedPreferences];
  [v9 synchronize];
}

- (void)setFitnessRouteAuthorizationForTinker:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PBBProtoTinkerFitnessRouteTrackingEnabled alloc];
  v5 = [v3 data];

  v6 = [(PBBProtoTinkerFitnessRouteTrackingEnabled *)v4 initWithData:v5];
  v7 = [(PBBProtoTinkerFitnessRouteTrackingEnabled *)v6 enabled];
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (v7)
    {
      v9 = @"enabled";
    }

    v14[0] = 67109634;
    v14[1] = 777;
    v15 = 2080;
    v16 = "[PBBridgeGizmoController setFitnessRouteAuthorizationForTinker:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%d %s %@", v14, 0x1Cu);
  }

  v10 = MEMORY[0x277CBFC10];
  if (v7)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];
  [v10 setAuthorizationStatusByType:v11 forBundle:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)companionDidSendLanguageAndLocale:(id)a3
{
  v29[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoSendLanguageAndLocale alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoSendLanguageAndLocale *)v5 initWithData:v6];
  v8 = [(PBBProtoSendLanguageAndLocale *)v7 appleLanguages];
  v9 = [(PBBProtoSendLanguageAndLocale *)v7 appleLocale];
  v10 = objc_alloc(MEMORY[0x277CCAAC8]);
  v11 = [(PBBProtoSendLanguageAndLocale *)v7 archivedPreferences];
  v26 = 0;
  v12 = [v10 initForReadingFromData:v11 error:&v26];
  v13 = v26;

  if (v13)
  {
    v14 = pbb_setupflow_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController handleActivationData:];
    }
  }

  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v29[4] = objc_opt_class();
  v29[5] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];
  v17 = [v15 initWithArray:v16];
  v18 = [v12 decodeObjectOfClasses:v17 forKey:@"PBBridgeLocalePreferencesKey"];
  v19 = [v18 copy];

  [v12 finishDecoding];
  v20 = pbb_setupflow_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, "languages %@", buf, 0xCu);
  }

  v21 = pbb_setupflow_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&dword_25DE64000, v21, OS_LOG_TYPE_DEFAULT, "locale %@", buf, 0xCu);
  }

  v22 = pbb_setupflow_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&dword_25DE64000, v22, OS_LOG_TYPE_DEFAULT, "localePreferences %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained ingestLocalePreferences:v19];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained selectLanguageFromAppleLanguages:v8 andLocale:v9];
  }

  else
  {
    v24 = pbb_setupflow_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_25DE64000, v24, OS_LOG_TYPE_DEFAULT, "locale %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)companionDidSendDemoWirelessCredentials:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoDemoWirelessCredentials alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoDemoWirelessCredentials *)v5 initWithData:v6];
  v8 = [(PBBProtoDemoWirelessCredentials *)v7 ssid];
  v9 = [(PBBProtoDemoWirelessCredentials *)v7 password];
  v10 = [(PBBProtoDemoWirelessCredentials *)v7 companionDemoConfig];
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "Received Credentials for %@", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareWithNetwork:v8 andPassword:v9 withCompanionConfiguration:v10];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareWithNetwork:v8 andPassword:v9];
  }

  [(PBBridgeGizmoController *)self _sendRemoteCommandWithMessageID:22 withArguments:MEMORY[0x277CBEBF8]];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)companionDidSendTinkerWirelessCredentials:(id)a3
{
  v4 = a3;
  v5 = [PBBProtoTinkerWirelessCredentials alloc];
  v6 = [v4 data];

  v8 = [(PBBProtoTinkerWirelessCredentials *)v5 initWithData:v6];
  v7 = [(PBBProtoTinkerWirelessCredentials *)v8 serializedNetworkRecords];
  [(PBBridgeGizmoController *)self parseNetworkRecordsAndApplyWirelessCredentialsFromData:v7];
}

- (void)processReceivedPairingWirelessCredentials:(id)a3
{
  v4 = a3;
  v5 = [PBBProtoSendWirelessCredentialsToWatch alloc];
  v6 = [v4 data];
  v8 = [(PBBProtoSendWirelessCredentialsToWatch *)v5 initWithData:v6];

  v7 = [(PBBProtoSendWirelessCredentialsToWatch *)v8 serializedNetworkRecords];
  [(PBBridgeGizmoController *)self parseNetworkRecordsAndApplyWirelessCredentialsFromData:v7];

  [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:33 withArguments:MEMORY[0x277CBEBF8]];
}

- (void)parseNetworkRecordsAndApplyWirelessCredentialsFromData:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v30 = objc_opt_new();
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = [v3 count];
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Received %lu network records from the phone", buf, 0xCu);
  }

  if ([v3 count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CCA308];
    do
    {
      v7 = objc_alloc(MEMORY[0x277CCAAC8]);
      v8 = [v3 objectAtIndex:v5];
      v9 = [v7 initForReadingFromData:v8 error:0];

      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
      v31 = 0;
      v17 = [v9 decodeTopLevelObjectOfClasses:v16 forKey:v6 error:&v31];
      v18 = v31;
      if (v18)
      {
        v19 = pbb_setupflow_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v18;
          v20 = v19;
          v21 = "Error unarchiving: %@";
          v22 = 12;
LABEL_8:
          _os_log_impl(&dword_25DE64000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
        }
      }

      else
      {
        v19 = pbb_setupflow_log();
        v23 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v23)
          {
            v24 = [v17 objectForKeyedSubscript:@"SSID_STR"];
            *buf = 138412290;
            v33 = v24;
            _os_log_impl(&dword_25DE64000, v19, OS_LOG_TYPE_DEFAULT, "Adding: %@", buf, 0xCu);
          }

          [v30 addObject:v17];
          goto LABEL_14;
        }

        if (v23)
        {
          *buf = 0;
          v20 = v19;
          v21 = "empty data";
          v22 = 2;
          goto LABEL_8;
        }
      }

LABEL_14:
      ++v5;
    }

    while ([v3 count] > v5);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v26 = v30;
    [WeakRetained applyWirelessNetworkCredentials:v30];
  }

  else
  {
    v27 = pbb_setupflow_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v27, OS_LOG_TYPE_DEFAULT, "delegate doesn't respond to applyWirelessNetworkCredentials", buf, 2u);
    }

    v26 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleSetLauncherViewModeForTinker:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoTinkerSetLauncherViewMode alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoTinkerSetLauncherViewMode *)v5 initWithData:v6];
  v8 = [(PBBProtoTinkerSetLauncherViewMode *)v7 launcherViewMode];
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = 900;
    v14 = 2080;
    v15 = "[PBBridgeGizmoController handleSetLauncherViewModeForTinker:]";
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, ">>>> %d %s launcherViewMode %d", v13, 0x18u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [WeakRetained setLauncherViewMode:v11];
  }

  else
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, ">>>> delegate doesn't respond to setLauncherViewMode:", v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCanBeginActivating:(id)a3
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_activation_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109378;
    v17[0] = 952;
    LOWORD(v17[1]) = 2080;
    *(&v17[1] + 2) = "[PBBridgeGizmoController setCanBeginActivating:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s -- Companion says we can activate!", &v16, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [WeakRetained checkBrickedState];
  v8 = pbb_activation_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Activated";
    if (v7)
    {
      v9 = @"Bricked";
    }

    v16 = 138412290;
    *v17 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Watch Is %@!", &v16, 0xCu);
  }

  if (!v7)
  {
    [(PBBridgeGizmoController *)self tellCompanionGizmoFinishedActivating];
  }

  else
  {
LABEL_9:
    self->_canBeginActivation = 1;
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"PBBridgeGizmoControllerActivationAbilityChanged" object:0 userInfo:0];

    if (PBLogPerformanceMetrics())
    {
      v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      Current = CFAbsoluteTimeGetCurrent();
      v13 = [v4 context];
      v14 = [v13 outgoingResponseIdentifier];
      [v11 addMilestone:@"CanBeginActivating" activityType:v14 activityIdentifier:Current];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)waitForDynamicActivationEventPresentation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  self->_activationState = 6;
  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 976;
    v7 = 2080;
    v8 = "[PBBridgeGizmoController waitForDynamicActivationEventPresentation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v6, 0x12u);
  }

  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  PBNotifyClientOfActivity();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForUserResponseToDynamicEventPresentation:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  self->_activationState = 6;
  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 984;
    v7 = 2080;
    v8 = "[PBBridgeGizmoController waitForUserResponseToDynamicEventPresentation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v6, 0x12u);
  }

  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  PBNotifyClientOfActivity();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retryActivation:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = 991;
    v8 = 2080;
    v9 = "[PBBridgeGizmoController retryActivation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s -- Companion says we can activate!", v7, 0x12u);
  }

  self->_canBeginActivation = 1;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PBBridgeGizmoControllerRetryActivation" object:0 userInfo:0];

  PBNotifyClientOfActivity();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)beganAwaitingAbilityToActivate
{
  [(PBBridgeGizmoController *)self setActivationState:2];

  [(PBBridgeGizmoController *)self refreshTimeoutTimer];
}

- (void)invalidateTimeoutTimer
{
  [(NSTimer *)self->_activationTimeout invalidate];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = 0;
}

- (void)refreshTimeoutTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (self->_activationState - 2 <= 4)
  {
    v3 = dbl_25DEB5280[(self->_activationState - 2)];
  }

  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((self->_activationState - 2) > 3u)
    {
      v5 = @"Idle";
    }

    else
    {
      v5 = off_2799F4AF8[(self->_activationState - 2)];
    }

    v10 = 134218242;
    v11 = v3 / 60.0;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Setting %1.f minute timeout for activation phase (%@)", &v10, 0x16u);
  }

  [(NSTimer *)self->_activationTimeout invalidate];
  v6 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_activationTimeout_ selector:0 userInfo:0 repeats:v3];
  activationTimeout = self->_activationTimeout;
  self->_activationTimeout = v6;

  v8 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v8 addTimer:self->_activationTimeout forMode:*MEMORY[0x277CBE738]];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)activationTimeout:(id)a3
{
  [(PBBridgeGizmoController *)self invalidateTimeoutTimer];
  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(PBBridgeGizmoController *)self activationTimeout:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activation Timed Out in Phase Proxy Activation"];
  [WeakRetained remoteDidFailActivation:6 description:v6];
}

- (void)remoteRequestToKeepAlive:(id)a3
{
  v4 = pbb_activation_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Companion requested we refresh our activation timeout", v7, 2u);
  }

  activationState = self->_activationState;
  if (activationState >= 3 && activationState != 0xFFFF)
  {
    [(PBBridgeGizmoController *)self refreshTimeoutTimer];
  }
}

- (void)pushControllerType:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoPushControllerType alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoPushControllerType *)v5 initWithData:v6];

  v8 = [(PBBProtoPushControllerType *)v7 controllerType];
  [(PBBProtoPushControllerType *)v7 intendedFireDate];
  v10 = v9;
  if (PBLogPerformanceMetrics())
  {
    v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v4 context];
    v16 = [v15 outgoingResponseIdentifier];
    [v11 addMilestone:v14 activityType:v16 activityIdentifier:Current];
  }

  v17 = pbb_setupflow_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PBBuddyControllerDescription(v8);
    v22[0] = 67109890;
    v22[1] = 1123;
    v23 = 2080;
    v24 = "[PBBridgeGizmoController pushControllerType:]";
    v25 = 1024;
    v26 = v8;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "%d %s (%d %@)", v22, 0x22u);
  }

  v19 = CleanIntendedFireTimeOffset(v10);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushControllerType:v8 withIntendedFireTime:v19];
  PBNotifyClientOfActivity();

  v21 = *MEMORY[0x277D85DE8];
}

- (void)popToControllerType:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoPopToControllerType alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoPopToControllerType *)v5 initWithData:v6];

  v8 = [(PBBProtoPopToControllerType *)v7 controllerType];
  [(PBBProtoPopToControllerType *)v7 intendedFireDate];
  v10 = v9;
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PBBuddyControllerDescription(v8);
    v22[0] = 67109890;
    v22[1] = 1138;
    v23 = 2080;
    v24 = "[PBBridgeGizmoController popToControllerType:]";
    v25 = 1024;
    v26 = v8;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%d %s (%d %@)", v22, 0x22u);
  }

  v13 = CleanIntendedFireTimeOffset(v10);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained popToControllerType:v8 withIntendedFireTime:v13];
  if (PBLogPerformanceMetrics())
  {
    v15 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v4 context];
    v20 = [v19 outgoingResponseIdentifier];
    [v15 addMilestone:v18 activityType:v20 activityIdentifier:Current];
  }

  PBNotifyClientOfActivity();

  v21 = *MEMORY[0x277D85DE8];
}

- (void)showLockedOnAnimation:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = 1153;
    v8 = 2080;
    v9 = "[PBBridgeGizmoController showLockedOnAnimation:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showLockedOnAnimation];
  PBNotifyClientOfActivity();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPasscodeRestrictions:(id)a3
{
  v54[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PBBProtoSetPasscodeRestrictions alloc];
  v38 = v3;
  v5 = [v3 data];
  v6 = [(PBBProtoSetPasscodeRestrictions *)v4 initWithData:v5];

  v7 = objc_alloc(MEMORY[0x277CCAAC8]);
  v37 = v6;
  v8 = [(PBBProtoSetPasscodeRestrictions *)v6 restrictions];
  v48 = 0;
  v9 = [v7 initForReadingFromData:v8 error:&v48];
  v10 = v48;

  if (v10)
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController handleActivationData:];
    }
  }

  v12 = *MEMORY[0x277D26060];
  v54[0] = *MEMORY[0x277D25FF8];
  v54[1] = v12;
  v54[2] = *MEMORY[0x277D25CF8];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v14 = *MEMORY[0x277D25F88];
  v53[0] = *MEMORY[0x277D25F98];
  v53[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v16 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        if ([v9 containsValueForKey:v22])
        {
          v23 = [v9 decodeObjectOfClass:objc_opt_class() forKey:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 MCSetBoolRestriction:v22 value:v23 != 0];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v15;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        if ([v9 containsValueForKey:v29])
        {
          v30 = [v9 decodeObjectOfClass:objc_opt_class() forKey:v29];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 MCSetValueRestriction:v29 value:v30];
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v26);
  }

  [v9 finishDecoding];
  v31 = pbb_setupflow_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v16;
    _os_log_impl(&dword_25DE64000, v31, OS_LOG_TYPE_DEFAULT, "Trying to apply passcode restrictions: %@", buf, 0xCu);
  }

  v32 = [MEMORY[0x277D262A0] sharedConnection];
  v39 = 0;
  [v32 applyRestrictionDictionary:v16 clientType:@"NanoPreferencesSync" clientUUID:@"com.apple.nanobuddy" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v39];
  v33 = v39;

  if (v33)
  {
    v34 = pbb_setupflow_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PBBridgeGizmoController setPasscodeRestrictions:];
    }
  }

  self->_readyToCreatePasscode = 1;
  PBNotifyClientOfActivity();

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setCrownOrientationRight:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoTellGizmoToSetCrownOrientation alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoTellGizmoToSetCrownOrientation *)v5 initWithData:v6];
  v8 = [(PBBProtoTellGizmoToSetCrownOrientation *)v7 crownOrientationRight];
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Left";
    if (v8)
    {
      v10 = @"Right";
    }

    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "setCrownOrientationRight: %@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCrownOrientationRight:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateSynchProgress:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoInitialSyncStateUpdate alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoInitialSyncStateUpdate *)v5 initWithData:v6];
  [(PBBProtoInitialSyncStateUpdate *)v7 progress];
  v9 = v8;
  v10 = [(PBBProtoInitialSyncStateUpdate *)v7 state];
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "updateSynchProgress: %f state: %ld", &v14, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setSyncProgress:v10 andState:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)doInitialSyncPrep:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = 1292;
    v10 = 2080;
    v11 = "[PBBridgeGizmoController doInitialSyncPrep:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareForInitialSync];
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Warning!! Delegate did not handle prepareForInitialSync!", v9, 2u);
    }
  }

  [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:18 withArguments:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleWarrantySentinelRequest:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoWarrantySentinel alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoWarrantySentinel *)v5 initWithData:v6];

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v7;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Got Warranty Sentinel request: (%@)", buf, 0xCu);
  }

  if (PBLogPerformanceMetrics())
  {
    v9 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v4 context];
    v14 = [v13 outgoingResponseIdentifier];
    [v9 addMilestone:v12 activityType:v14 activityIdentifier:Current];
  }

  if ([(PBBProtoWarrantySentinel *)v7 hasDeviceName])
  {
    v15 = [(PBBProtoWarrantySentinel *)v7 deviceName];
    [(PBBridgeGizmoController *)self setDeviceName:v15];
  }

  v16 = 0x277CBE000;
  if ([(PBBProtoWarrantySentinel *)v7 hasAppleLocale])
  {
    v57 = self;
    v17 = pbb_setupflow_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "Applying Locale workaround for 28393103", buf, 2u);
    }

    v18 = *MEMORY[0x277CBF028];
    v19 = 1;
    while (1)
    {
      v20 = [MEMORY[0x277CBEAF8] currentLocale];
      v21 = [v20 localeIdentifier];

      v22 = CFPreferencesCopyAppValue(@"AppleLocale", v18);
      v23 = pbb_setupflow_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v59 = v21;
        v60 = 2112;
        v61 = v22;
        _os_log_impl(&dword_25DE64000, v23, OS_LOG_TYPE_DEFAULT, "Locale from NSLocale: (%@); Locale from CFPref: (%@)", buf, 0x16u);
      }

      if ([v22 isEqualToString:v21])
      {
        break;
      }

      CFPreferencesFlushCaches();
      _CFLocaleResetCurrent();

      if (++v19 == 11)
      {
        goto LABEL_19;
      }
    }

    v24 = pbb_setupflow_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v59) = v19;
      _os_log_impl(&dword_25DE64000, v24, OS_LOG_TYPE_DEFAULT, "Workaround did the trick after (%d) iterations", buf, 8u);
    }

LABEL_19:
    v25 = [MEMORY[0x277CBEAF8] currentLocale];
    v26 = [v25 localeIdentifier];

    v27 = pbb_setupflow_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v26;
      _os_log_impl(&dword_25DE64000, v27, OS_LOG_TYPE_DEFAULT, "Current locale identifier: %@", buf, 0xCu);
    }

    v28 = MEMORY[0x277CBEAF8];
    v29 = [(PBBProtoWarrantySentinel *)v7 appleLocale];
    v30 = [v28 componentsFromLocaleIdentifier:v29];

    v31 = [v30 objectForKeyedSubscript:@"calendar"];
    v32 = [MEMORY[0x277D218D0] supportedCalendars];
    v33 = [v32 containsObject:v31];

    if ((v33 & 1) == 0)
    {

      v31 = 0;
    }

    v34 = [v30 objectForKeyedSubscript:@"numbers"];
    v35 = [MEMORY[0x277D218D0] numberingSystemsForLocaleID:v26];
    if ([v35 containsObject:v34])
    {
      v36 = [MEMORY[0x277D218D0] numberingSystemForLocaleID:v26];
      v37 = [v34 isEqualToString:v36];

      if (!v37)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v34 = 0;
LABEL_28:
    v38 = MEMORY[0x277CBEB38];
    v39 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v26];
    v40 = [v38 dictionaryWithDictionary:v39];

    if (v31)
    {
      [v40 setObject:v31 forKeyedSubscript:@"calendar"];
    }

    if (v34)
    {
      [v40 setObject:v34 forKeyedSubscript:@"numbers"];
    }

    v41 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromComponents:v40];
    v42 = pbb_setupflow_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = v41;
      v60 = 2112;
      v61 = v40;
      _os_log_impl(&dword_25DE64000, v42, OS_LOG_TYPE_DEFAULT, "Will set new locale: %@, given components: %@", buf, 0x16u);
    }

    [MEMORY[0x277CBEAF8] setLocaleAndResetTimeFormat:v41];
    _CFLocaleResetCurrent();
    v43 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v44 = pbb_setupflow_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v43;
      _os_log_impl(&dword_25DE64000, v44, OS_LOG_TYPE_DEFAULT, "Set locale to %@ (read back from CFPref)", buf, 0xCu);
    }

    self = v57;
    v16 = 0x277CBE000uLL;
  }

  if ([(PBBProtoWarrantySentinel *)v7 appleLanguagesCount])
  {
    v45 = [(PBBProtoWarrantySentinel *)v7 appleLanguages];
    v46 = *(v16 + 2808);
    v47 = [v46 supportedCJLanguageIdentifiers];
    v48 = [v46 mostPreferredLanguageOf:v47 withPreferredLanguages:v45 forUsage:1 options:4];

    if ([v48 length])
    {
      v49 = *(v16 + 2808);
      v50 = [v49 preferredLanguages];
      v51 = [v50 firstObject];
      [v49 setLanguageToPreferredLanguages:v51 fallback:v48];

      v52 = pbb_setupflow_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [*(v16 + 2808) preferredLanguages];
        *buf = 138412290;
        v59 = v53;
        _os_log_impl(&dword_25DE64000, v52, OS_LOG_TYPE_DEFAULT, "Set languages to %@", buf, 0xCu);
      }
    }
  }

  if ([(PBBProtoWarrantySentinel *)v7 hasRemoveSentinel]&& [(PBBProtoWarrantySentinel *)v7 removeSentinel])
  {
    v54 = pbb_setupflow_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v54, OS_LOG_TYPE_DEFAULT, "Removing Warranty Sentinel", buf, 2u);
    }

    v55 = [MEMORY[0x277CCAA00] defaultManager];
    [v55 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty" error:0];
  }

  else
  {
    [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:14 withArguments:0];
  }

  PBNotifyClientOfActivity();

  v56 = *MEMORY[0x277D85DE8];
}

- (void)handleOfflineTermsRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoOfflineTerms alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoOfflineTerms *)v5 initWithData:v6];

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Got Offline Terms request: (%@)", buf, 0xCu);
  }

  if (PBLogPerformanceMetrics())
  {
    v9 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    Current = CFAbsoluteTimeGetCurrent();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v4 context];
    v14 = [v13 outgoingResponseIdentifier];
    [v9 addMilestone:v12 activityType:v14 activityIdentifier:Current];
  }

  v15 = [(PBBProtoOfflineTerms *)v7 languageCode];
  v20[0] = v15;
  v16 = [(PBBProtoOfflineTerms *)v7 countryCode];
  v20[1] = v16;
  v17 = [(PBBProtoOfflineTerms *)v7 appleLanguages];
  v20[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:15 withArguments:v18];
  PBNotifyClientOfActivity();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleRenameDeviceRequest:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoDeviceName alloc];
  v6 = [v4 data];

  v7 = [(PBBProtoDeviceName *)v5 initWithData:v6];
  v8 = [(PBBProtoDeviceName *)v7 deviceName];
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Received device name request (%@)", &v11, 0xCu);
  }

  [(PBBridgeGizmoController *)self setDeviceName:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceName:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Setting device name to '%@'", buf, 0xCu);
    }

    v5 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PBBridgeGizmoController_setDeviceName___block_invoke;
    block[3] = &unk_2799F4468;
    v8 = v3;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __41__PBBridgeGizmoController_setDeviceName___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (lockdown_connect())
  {
    v2 = *MEMORY[0x277D82A08];
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = lockdown_set_value();
    lockdown_disconnect();
    v6 = pbb_setupflow_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_1(v3, v5, v7);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v3;
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Successfully set name: (%@)", &v10, 0xCu);
    }
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_2(v7);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)prepareOfflineTermsResponse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PBBProtoOfflineTerms);
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v4 objectAtIndexedSubscript:1];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_3;
  v17[3] = &unk_2799F49D0;
  v20 = a1;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = MEMORY[0x25F8A6750](v17);
  v11 = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke();
  [(PBBProtoOfflineTerms *)v5 setLicense:v11];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  if (v13)
  {
    v14 = __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_2();
    [(PBBProtoOfflineTerms *)v5 setMultiterms:v14];

    v15 = v10[2](v10);
    [(PBBProtoOfflineTerms *)v5 setWarranty:v15];
  }

  return v5;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = SFLicenseFilePath();
  v2 = [v0 stringWithContentsOfFile:v1 encoding:4 error:0];

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TERMS_CONDITIONS_LINK" value:&stru_286FA8098 table:@"Localizable"];

  v5 = MEMORY[0x277CBEAF8];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v6 objectAtIndex:0];
  v8 = [v5 characterDirectionForLanguage:v7];

  v9 = @"ltr";
  if (v8 == 2)
  {
    v9 = @"rtl";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<body><p dir=%@ class=p1><b>%@</b></p><p class=p1><br></p>", v9, v4];
  v11 = [v2 stringByReplacingOccurrencesOfString:@"<body>" withString:v10];

  v12 = [v11 dataUsingEncoding:4];

  return v12;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 pathForResource:@"multiterms" ofType:@"xml"];

  v2 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v1 encoding:4 error:0];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

id __55__PBBridgeGizmoController_prepareOfflineTermsResponse___block_invoke_3(void *a1)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = a1[6];
  v4 = [objc_opt_class() warrantyFilePathForLanguageCode:a1[4] countryCode:a1[5]];
  v5 = [v2 dataWithContentsOfFile:v4];

  return v5;
}

- (void)transportBecameReachable
{
  v4.receiver = self;
  v4.super_class = PBBridgeGizmoController;
  [(PBBridgeIDSServiceDelegate *)&v4 transportBecameReachable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained transportBecameReachable];
  }
}

- (void)transportBecameUnreachable
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PBBridgeGizmoController;
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
      v13 = "[PBBridgeGizmoController transportBecameUnreachable]";
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    [WeakRetained transportBecameUnreachable];
  }

  else
  {
    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 136446466;
      v13 = "[PBBridgeGizmoController transportBecameUnreachable]";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Delegate (%@) missing transportBecameUnreachable", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)prepareForForcedWatchSU:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PBBridgeGizmoController prepareForForcedWatchSU:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained prepareForForcedSU];
  }

  [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:23 withArguments:MEMORY[0x277CBEBF8]];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchTermsAndConditions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v24 = 1558;
    v25 = 2080;
    v26 = "[PBBridgeGizmoController fetchTermsAndConditions:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  if (v7)
  {
    v22[0] = &unk_286FB4250;
    v22[1] = &unk_286FB42A0;
    v22[2] = &unk_286FB4278;
    v8 = MEMORY[0x277CBEA60];
    v9 = v22;
    v10 = 3;
  }

  else
  {
    v21[0] = &unk_286FB4250;
    v21[1] = &unk_286FB42A0;
    v8 = MEMORY[0x277CBEA60];
    v9 = v21;
    v10 = 2;
  }

  v11 = [v8 arrayWithObjects:v9 count:v10];
  v19[0] = @"terms";
  v19[1] = @"format";
  v12 = *MEMORY[0x277CEC948];
  v20[0] = v11;
  v20[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v14 = [objc_alloc(MEMORY[0x277CEC800]) initWithParameters:v13];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke;
  v17[3] = &unk_2799F4A20;
  v17[4] = self;
  v18 = v4;
  v15 = v4;
  [v14 performRequestWithHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke_2;
  v11[3] = &unk_2799F49F8;
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __51__PBBridgeGizmoController_fetchTermsAndConditions___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 responseData];
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 length];
    v6 = *(a1 + 40);
    *buf = 134218242;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Terms request completed with data length %llu, error (non-nil does not imply failure) = %{public}@", buf, 0x16u);
  }

  v7 = [v3 length];
  v8 = pbb_setupflow_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "sending online terms", buf, 2u);
    }

    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v14 = v3;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v11 _sendResponseToMessage:v10 withResponseMessageID:101 withArguments:v12];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "requesting offline terms", buf, 2u);
    }

    [*(a1 + 48) _sendResponseToMessage:*(a1 + 56) withResponseMessageID:101 withArguments:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)companionTermsResponse:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    v15 = 1592;
    v16 = 2080;
    *v17 = "[PBBridgeGizmoController companionTermsResponse:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v14, 0x12u);
  }

  v5 = [PBBProtoCompanionTermsResponse alloc];
  v6 = [v3 data];

  v7 = [(PBBProtoCompanionTermsResponse *)v5 initWithData:v6];
  if ([(PBBProtoCompanionTermsResponse *)v7 hasTermsAccepted])
  {
    v8 = [(PBBProtoCompanionTermsResponse *)v7 termsAccepted];
  }

  else
  {
    v8 = 0;
  }

  if ([(PBBProtoCompanionTermsResponse *)v7 hasIsExistingAccountTerms])
  {
    v9 = [(PBBProtoCompanionTermsResponse *)v7 isExistingAccountTerms];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PBBProtoCompanionTermsResponse *)v7 responseData];
  v11 = [(PBBProtoCompanionTermsResponse *)v7 userAgent];
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109890;
    v15 = v8;
    v16 = 1024;
    *v17 = v9;
    *&v17[4] = 2112;
    *&v17[6] = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "companion terms response: hasTermsAccepted: %d isExistingAccountTerms: %d responseData %@ userAgent %@", &v14, 0x22u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)returnProxiedDeviceForDeviceWithData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = 1608;
    v13 = 2080;
    v14 = "[PBBridgeGizmoController returnProxiedDeviceForDeviceWithData:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [MEMORY[0x277CF0218] currentDevice];
  v7 = [v6 serializedData];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:25 withArguments:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setComputedTimeZone:(id)a3
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109378;
    v12[0] = 1622;
    LOWORD(v12[1]) = 2080;
    *(&v12[1] + 2) = "[PBBridgeGizmoController setComputedTimeZone:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s", &v11, 0x12u);
  }

  v5 = [PBBProtoSendComputedTimeZone alloc];
  v6 = [v3 data];

  v7 = [(PBBProtoSendComputedTimeZone *)v5 initWithData:v6];
  v8 = [(PBBProtoSendComputedTimeZone *)v7 computedTimeZone];
  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    *v12 = v8;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "settings computed time zone to %@", &v11, 0xCu);
  }

  TMSetSourceTimeZone();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)ingestTinkerCredentials:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v32 = 1635;
    v33 = 2080;
    v34 = "[PBBridgeGizmoController ingestTinkerCredentials:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v6 = [PBBProtoSendTinkerAccountCredentials alloc];
  v7 = [v4 data];
  v8 = [(PBBProtoSendTinkerAccountCredentials *)v6 initWithData:v7];

  v25 = [(PBBProtoSendTinkerAccountCredentials *)v8 username];
  v9 = [(PBBProtoSendTinkerAccountCredentials *)v8 password];
  v10 = [(PBBProtoSendTinkerAccountCredentials *)v8 acceptedTermsData];
  v24 = [(PBBProtoSendTinkerAccountCredentials *)v8 pairingParentAppleID];
  v11 = [(PBBProtoSendTinkerAccountCredentials *)v8 pairingParentAltDSID];
  if (v10)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = objc_opt_class();
    v30 = 0;
    v14 = [v12 unarchivedDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() fromData:v10 error:&v30];
    v15 = v30;
    if (v15)
    {
      v16 = pbb_accountsignin_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PBBridgeGizmoController ingestTinkerCredentials:];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = objc_opt_new();
  [v17 setUsername:v25];
  [v17 setPassword:v9];
  [v17 setAcceptedTermsInfo:v14];
  [v17 setPairingParentAltDSID:v11];
  [v17 setPairingParentUsername:v24];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke;
  v28[3] = &unk_2799F4A48;
  v28[4] = self;
  v18 = v4;
  v29 = v18;
  v19 = MEMORY[0x25F8A6750](v28);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke_386;
  v26[3] = &unk_2799F4A70;
  v26[4] = self;
  v20 = v18;
  v27 = v20;
  v21 = MEMORY[0x25F8A6750](v26);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained ingestTinkerCredentialsWithContext:v17 completion:v21];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained ingestTinkerCredentials:v9 forUser:v25 responseCompletion:v19];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = a3;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "response completion called with status: %ld", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15[1] = v12;
  v15[2] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [v10 _sendResponseToMessage:v9 withResponseMessageID:26 withArguments:v13];

  v14 = *MEMORY[0x277D85DE8];
}

void __51__PBBridgeGizmoController_ingestTinkerCredentials___block_invoke_386(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = a3;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "response completion called with status: %ld error: %@", buf, 0x16u);
  }

  v9 = [v7 localizedDescription];
  v10 = v9;
  v11 = &stru_286FA8098;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v22[0] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v22[1] = v14;
  v22[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  if (v7)
  {
    v21 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v21];
    v17 = v21;
    if (v17)
    {
      v18 = pbb_accountsignin_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "error serializing incoming error: %@", buf, 0xCu);
      }
    }

    if (v16)
    {
      v19 = [v15 arrayByAddingObject:v16];

      v15 = v19;
    }
  }

  [*(a1 + 32) _sendResponseToMessage:*(a1 + 40) withResponseMessageID:26 withArguments:v15];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleBuysOnWatchIngestion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [PBBProtoSendBuysOnWatchCredentials alloc];
  v7 = [v4 data];
  v8 = [(PBBProtoSendBuysOnWatchCredentials *)v6 initWithData:v7];

  v9 = [(PBBProtoSendBuysOnWatchCredentials *)v8 username];
  v10 = [(PBBProtoSendBuysOnWatchCredentials *)v8 password];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __54__PBBridgeGizmoController_handleBuysOnWatchIngestion___block_invoke;
  v19 = &unk_2799F4A48;
  v20 = self;
  v11 = v4;
  v21 = v11;
  v12 = MEMORY[0x25F8A6750](&v16);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained ingestBuysOnWatchCredentialsUsername:v9 andPassword:v10 responseCompletion:{v12, v16, v17, v18, v19, v20}];
  }

  else
  {
    v14 = pbb_accountsignin_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]";
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "%s -- Client doesn't implement handler.", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__PBBridgeGizmoController_handleBuysOnWatchIngestion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 136315394;
    v20 = "[PBBridgeGizmoController handleBuysOnWatchIngestion:]_block_invoke";
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "%s -- Success: %@", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v18[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14 = v13;
  v15 = @"no error";
  if (v7)
  {
    v15 = v7;
  }

  v18[1] = v13;
  v18[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [v11 _sendResponseToMessage:v10 withResponseMessageID:30 withArguments:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)provideAppViewListImage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PBBProtoAppViewListImageRequest alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoAppViewListImageRequest *)v5 initWithData:v6];

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x6B704000302;
    v22 = 2080;
    v23 = "[PBBridgeGizmoController provideAppViewListImage:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, ">>>> %d %s request for app view list image received %@", &buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&buf, self);
    [(PBBProtoAppViewListImageRequest *)v7 width];
    v11 = v10;
    [(PBBProtoAppViewListImageRequest *)v7 height];
    v13 = v12;
    [(PBBProtoAppViewListImageRequest *)v7 scale];
    v15 = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__PBBridgeGizmoController_provideAppViewListImage___block_invoke;
    v18[3] = &unk_2799F4A98;
    objc_copyWeak(&v20, &buf);
    v19 = v4;
    [WeakRetained provideAppViewListImage:v18 height:v11 scale:v13 completion:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  else
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25DE64000, v16, OS_LOG_TYPE_DEFAULT, ">>>> delegate doesn't respond to provideAppViewListImage:width:height:completion", &buf, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__PBBridgeGizmoController_provideAppViewListImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, ">>>> got response to provideAppViewListImage:width:height:completion imageData %@ error %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v11 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  [WeakRetained _sendResponseToMessage:*(a1 + 32) withResponseMessageID:102 withArguments:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setupDeviceManagement:(id)a3
{
  v4 = a3;
  v5 = [PBBProtoDeviceManagementSetupRequest alloc];
  v6 = [v4 data];
  v7 = [(PBBProtoDeviceManagementSetupRequest *)v5 initWithData:v6];

  v8 = [(PBBProtoDeviceManagementSetupRequest *)v7 configurationData];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke;
    v11[3] = &unk_2799F4AC0;
    v12 = v9;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    [WeakRetained setupDeviceManagementWithData:v8 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [v9 addObject:MEMORY[0x277CBEC28]];
    [(PBBridgeGizmoController *)self _sendResponseToMessage:v4 withResponseMessageID:31 withArguments:v9];
  }
}

void __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v12 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = pbb_devicemanagement_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v9 addObject:v10];

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendResponseToMessage:*(a1 + 40) withResponseMessageID:31 withArguments:*(a1 + 32)];
}

- (void)checkAppInstallationAllowed:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D25D18]] == 2;

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(PBBridgeGizmoController *)self _sendResponseToMessage:v5 withResponseMessageID:32 withArguments:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateNanoRegistryToNormalState:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PBBridgeGizmoController updateNanoRegistryToNormalState:]";
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 updateNanoRegisryToNormalState];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PBBridgeConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendRemoteCommandWithMessageID:withArguments:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, v0, v1, "Error archiving NSError: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleActivationData:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, a1, a3, "Tried to do %s while already unbricked.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleActivationData:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, v0, v1, "Error Unarchiving Object! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)activationTimeout:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 50) - 2) > 3u)
  {
    v2 = @"Idle";
  }

  else
  {
    v2 = off_2799F4AF8[(*(a1 + 50) - 2)];
  }

  v3 = *(a1 + 88);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_25DE64000, a2, OS_LOG_TYPE_ERROR, "Activation timeout in phase (%@) (Last message sent was %@)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setPasscodeRestrictions:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, v0, v1, "Couldn’t apply passcode restrictions! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PBBridgeGizmoController_setDeviceName___block_invoke_cold_1(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "Failed to set define name (%@) with error: %d", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)ingestTinkerCredentials:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, v0, v1, "error unarchiving terms info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PBBridgeGizmoController_setupDeviceManagement___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_25DE64000, v0, v1, "error serializing device management information: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end