@interface MDMServerCore
- (BOOL)_handleHTTPStatusGoneResponse;
- (BOOL)_isAwaitingUserConfigured;
- (BOOL)_memberQueueParseMDMConfigurationDict:(id)a3;
- (BOOL)_readConfigurationOutError:(id *)a3 isUproot:(BOOL)a4;
- (BOOL)_serverHasCapabilityForMessageType:(id)a3;
- (BOOL)_shouldListenToEnvironment:(unint64_t)a3;
- (BOOL)isAppInstallBlocked;
- (BOOL)startOutError:(id *)a3;
- (BOOL)userSwitchAlreadyInitiated;
- (MDMServerCore)initWithChannelType:(unint64_t)a3;
- (NSDictionary)MDMOptions;
- (NSDictionary)organizationInfo;
- (NSDictionary)softwareUpdatePathFromDisk;
- (NSString)daemonIdentifier;
- (NSString)organizationName;
- (NSString)serverName;
- (id)_cachedResponse;
- (id)_createBadInstallationError;
- (id)_createEmptyTokenErrorWithUnderlyingError:(id)a3;
- (id)_createNoInstallationError;
- (id)_createServerMissingBootstrapTokenCapabilityError;
- (id)_createTokenUnsupportedError;
- (id)_eraseWatchFailedWithUnderlayingError:(id)a3;
- (id)_httpErrorFromTransaction:(id)a3 assertion:(id)a4 rmAccountID:(id)a5 enrollmentMode:(id)a6 reauthQueue:(id)a7;
- (id)_idleResponse;
- (id)_mdmFilePathForChannelType:(unint64_t)a3;
- (id)_mdmOutstandingActivitiesFilePathForChannelType:(unint64_t)a3;
- (id)_mdmPropertiesFilePathForChannelType:(unint64_t)a3;
- (id)_memberQueueCachedResponse;
- (id)_memberQueueLastPushTokenHash;
- (id)_memberQueuePushMagicMismatchDateMarker;
- (id)_prefixNameForChannelType:(unint64_t)a3;
- (id)_processAccountDrivenUnauthorizedFromTransaction:(id)a3 rmAccountID:(id)a4 reauthQueue:(id)a5;
- (id)_processTraditionalErrorFromTransaction:(id)a3;
- (id)_processTraditionalUnauthorizedFromTransaction:(id)a3 assertion:(id)a4;
- (id)_processUnauthorizedFromTransaction:(id)a3 authParams:(id)a4 rmAccountID:(id)a5 rmAccountUsername:(id)a6 reauthQueue:(id)a7;
- (id)_reasonStringWithReason:(id)a3;
- (id)_requiredServerCapabilityForMessageType:(id)a3;
- (id)_sendResponseSynchornously:(id)a3;
- (id)_transactionForResponse:(id)a3;
- (id)_triggerReauthenticationForTransaction:(id)a3 authenticator:(id)a4 authParams:(id)a5 rmAccountID:(id)a6 rmAccountUsername:(id)a7;
- (id)_triggerRefreshTokenForTransaction:(id)a3 authenticator:(id)a4 authParams:(id)a5 rmAccountID:(id)a6 rmAccountUsername:(id)a7 reauthQueue:(id)a8;
- (id)_userEnrollmentAuthenticationDict;
- (id)_userFieldsForResponse;
- (id)responseFromBasicResponse:(id)a3;
- (id)sendResponseSynchronously:(id)a3 outStatusCode:(int64_t *)a4 outError:(id *)a5;
- (int)_listenForOneTimeGlobalNotification:(id)a3 callbackQueue:(id)a4 notificationHandler:(id)a5;
- (int64_t)_memberQueueTokenUpdateCount;
- (int64_t)_tokenUpdateCount;
- (int64_t)_tokenUpdateRetryCount;
- (unsigned)_registerForDispatchNotification:(id)a3 outToken:(int *)a4 targetQueue:(id)a5 handler:(id)a6;
- (void)_backgroundPollFromTask:(id)a3;
- (void)_changeOrganizationNameForRMAccountIdentifier:(id)a3 personaID:(id)a4 organizationName:(id)a5;
- (void)_clearCoreFollowup;
- (void)_clearMAIDNotification;
- (void)_currentLocaleDidChange:(id)a3;
- (void)_decreaseTokenUpdateRetryCount;
- (void)_executeBlockWhenPushTokenIsAvailable:(id)a3;
- (void)_executePushTokenWaitContinuationBlock;
- (void)_executionQueueCheckForOutstandingActivityIsReachabilityEvent:(BOOL)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_executionQueueHandleRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
- (void)_executionQueuePollServerForCommandWithAssertion:(id)a3 completionBlock:(id)a4;
- (void)_executionQueueRemoveMDMProfileWithAssertion:(id)a3;
- (void)_executionQueueScheduleTokenUpdateRetryIfNeeded;
- (void)_executionQueueTellServerAboutDeviceTokenWithAssertion:(id)a3 completionBlock:(id)a4;
- (void)_keybagStateDidChange;
- (void)_listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate;
- (void)_listenForManagedAppleAccountLongLivedTokenChangedNotificationsOnQueue:(id)a3 perform:(id)a4;
- (void)_makeGetTokenRequestWithRequestDict:(id)a3 completionHandler:(id)a4;
- (void)_memberQueueDecrementTokenUpdateRequestCount;
- (void)_memberQueueDeregisterForRRTSIdleEvents;
- (void)_memberQueueDeviceDidBecomeActive;
- (void)_memberQueueDeviceDidBecomeIdleWithTimeoutInterval:(double)a3;
- (void)_memberQueueForgetCurrentConfiguration;
- (void)_memberQueueInactivityTaskFired:(id)a3;
- (void)_memberQueueIncrementTokenUpdateRequestCount;
- (void)_memberQueueLogLatestPushTokenIfNeeded:(id)a3;
- (void)_memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask:(id)a3;
- (void)_memberQueueRRTSTimeoutReached;
- (void)_memberQueueRegisterForRRTSIdleEvents;
- (void)_memberQueueRemoveOutstandingActivityForKey:(id)a3;
- (void)_memberQueueScheduleRRTSInactivityTaskWithInterval:(double)a3;
- (void)_memberQueueSetCachedResponse:(id)a3;
- (void)_memberQueueSetLastPollingAttempt;
- (void)_memberQueueSetLastPollingSuccess;
- (void)_memberQueueSetLastPushTokenHash:(id)a3;
- (void)_memberQueueSetOutstandingActivity:(id)a3 forKey:(id)a4;
- (void)_memberQueueSetPushMagicMismatchDateMarker:(id)a3;
- (void)_memberQueueSetTokenUpdateRequestCount:(int64_t)a3;
- (void)_memberQueueSetupAPSConnectionIsMDMConfigurationValid:(BOOL)a3 isUserDaemon:(BOOL)a4;
- (void)_memberQueueStartListeningForInterestingEvents;
- (void)_memberQueueStopListeningForInterestingEvents;
- (void)_memberQueueUpdateOrganizationInfo:(id)a3;
- (void)_networkReachabilityDidChange;
- (void)_pollFromServerIfNeeded:(BOOL)a3 isReachabilityEvent:(BOOL)a4 completionHandler:(id)a5;
- (void)_pollOrScheduleNextPollForHRN;
- (void)_pollingSucceeded;
- (void)_postReauthFollowUpChangedNotification;
- (void)_presentFollowUpForAuthURL:(id)a3 accountUsername:(id)a4 isMAIDAccount:(BOOL)a5;
- (void)_processRequest:(id)a3 encodeResponse:(BOOL)a4 completion:(id)a5;
- (void)_registerAsUserSwitchStakeholder;
- (void)_scheduleNextPollWithInterval:(double)a3;
- (void)_schedulePollingServerForCommand;
- (void)_sendCheckInRequestAndHandleErrorForMessageType:(id)a3 requestDict:(id)a4 completionHandler:(id)a5;
- (void)_sendResponse:(id)a3 completionBlock:(id)a4;
- (void)_setCachedResponse:(id)a3;
- (void)_setLastPollingAttempt;
- (void)_setLastPollingSuccess;
- (void)_setTokenUpdateRequestCountToZero;
- (void)_syncBootstrapTokenToMDMWithToken:(id)a3 retryCount:(int64_t)a4 completionHandler:(id)a5;
- (void)blockAppInstallsWithCompletion:(id)a3;
- (void)blockMDMCommandsWithCompletion:(id)a3;
- (void)buddyDidFinish;
- (void)dealloc;
- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5;
- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5;
- (void)depPushTokenWithCompletion:(id)a3;
- (void)disablePushWakeWithCompletion:(id)a3;
- (void)enablePushWakeWithCompletion:(id)a3;
- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4;
- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4;
- (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4;
- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4;
- (void)getAssertionDescriptionsWithCompletion:(id)a3;
- (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3;
- (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6;
- (void)isAwaitingUserConfiguredWithCompletion:(id)a3;
- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3;
- (void)monitorDEPPushTokenWithCompletion:(id)a3;
- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)a3;
- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15;
- (void)notifyNewConfigurationWithCompletion:(id)a3;
- (void)prepareToObliterationWithCompletionHandler:(id)a3;
- (void)preserveAppsWithCompletion:(id)a3;
- (void)pushServiceManager:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5 environment:(unint64_t)a6;
- (void)pushServiceManager:(id)a3 didReceivePublicToken:(id)a4 forEnvironment:(unint64_t)a5;
- (void)pushTokenWithCompletion:(id)a3;
- (void)reauthenticationCompleteWithCompletion:(id)a3;
- (void)removeUnusedPreservedAppsWithCompletion:(id)a3;
- (void)requestDeviceObliterationWithPreserveDataPlan:(BOOL)a3 disallowProximitySetup:(BOOL)a4 completionHandler:(id)a5;
- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3;
- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3;
- (void)requestReturnToServiceObliterationWithPreserveDataPlan:(BOOL)a3 disallowProximitySetup:(BOOL)a4 mdmProfileData:(id)a5 wifiProfileData:(id)a6 revertToSnapshotName:(id)a7 bootstrapToken:(id)a8 completionHandler:(id)a9;
- (void)retryNotNowWithCompletion:(id)a3;
- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)a3;
- (void)scheduleTokenUpdateWithCompletion:(id)a3;
- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3;
- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3;
- (void)setMDMOptions:(id)a3;
- (void)setOrganizationInfo:(id)a3;
- (void)setUserSwitchAlreadyInitiated:(BOOL)a3;
- (void)simulateDEPPushWithCompletion:(id)a3;
- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3;
- (void)simulatePushWithCompletion:(id)a3;
- (void)stopNaggingForMigrationWithCompletion:(id)a3;
- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4;
- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4;
- (void)touchWithCompletion:(id)a3;
- (void)unblockAppInstallsWithCompletion:(id)a3;
- (void)unblockMDMCommandsWithCompletion:(id)a3;
- (void)uprootMDMWithCompletion:(id)a3;
- (void)willSwitchUser;
@end

@implementation MDMServerCore

- (MDMServerCore)initWithChannelType:(unint64_t)a3
{
  v42.receiver = self;
  v42.super_class = MDMServerCore;
  v4 = [(MDMServerCore *)&v42 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("MDMServerCore member queue", v5);
    v7 = *(v4 + 12);
    *(v4 + 12) = v6;

    v8 = dispatch_queue_create("MDMServerCore notification queue", v5);
    v9 = *(v4 + 13);
    *(v4 + 13) = v8;

    v10 = dispatch_queue_create("MDMServerCore checkIn queue", v5);
    v11 = *(v4 + 14);
    *(v4 + 14) = v10;

    v12 = [objc_alloc(MEMORY[0x277D03510]) initWithQoS:-1 hangThreshold:@"MDMServerCore" owner:70.0];
    [v12 setShouldDumpStackshot:1];
    v13 = [objc_alloc(MEMORY[0x277D03518]) initWithExecutionQueue:v12];
    v14 = *(v4 + 15);
    *(v4 + 15) = v13;

    v15 = objc_alloc_init(MDMServerAppInstallBlocking);
    v16 = *(v4 + 7);
    *(v4 + 7) = v15;

    [*(v4 + 7) setServer:v4];
    *(v4 + 6) = a3;
    v17 = objc_opt_new();
    v18 = *(v4 + 8);
    *(v4 + 8) = v17;

    *(v4 + 2) = -1;
    *(v4 + 28) = -1;
    *(v4 + 36) = -1;
    *(v4 + 45) = 0;
    if ([MEMORY[0x277D034F8] isRRTSMDMTimeoutEnabled])
    {
      v19 = [objc_alloc(MEMORY[0x277D032B8]) initWithName:@"com.apple.devicemanagementclient.mdmd.rrts" queue:*(v4 + 12)];
      v20 = *(v4 + 46);
      *(v4 + 46) = v19;
    }

    v21 = objc_opt_new();
    v22 = *(v4 + 11);
    *(v4 + 11) = v21;

    v23 = [[MDMPushServiceManager alloc] initWithChannel:a3];
    v24 = *(v4 + 16);
    *(v4 + 16) = v23;

    v25 = [[MDMDEPPushTokenManager alloc] initWithPushServiceManager:*(v4 + 16) networkMonitor:*(v4 + 11)];
    v26 = *(v4 + 17);
    *(v4 + 17) = v25;

    [v4 _registerAsUserSwitchStakeholder];
    v27 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "MDMServerCore subscribing to locale changes.", buf, 2u);
    }

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v4 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x277CBE620] object:0];

    v29 = [objc_alloc(MEMORY[0x277D032B8]) initWithName:@"com.apple.devicemanagementclient.mdmd.polling" queue:0];
    v30 = *(v4 + 9);
    *(v4 + 9) = v29;

    if ([MEMORY[0x277D034F8] isRRTSUEATimeoutEnabled] && *(v4 + 8) == -1)
    {
      v31 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_DEFAULT, "Registering for Rapid Return to Service notification.", buf, 2u);
      }

      v32 = *MEMORY[0x277D26150];
      v33 = [v4 memberQueue];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __37__MDMServerCore_initWithChannelType___block_invoke;
      v39[3] = &unk_27982CC38;
      v40 = v4;
      [v40 _registerForDispatchNotification:v32 outToken:v4 + 32 targetQueue:v33 handler:v39];
    }

    v34 = objc_opt_new();
    v35 = *(v4 + 18);
    *(v4 + 18) = v34;

    v36 = [objc_alloc(MEMORY[0x277D032D0]) initWithTaskName:@"com.apple.devicemanagementclient.mdm.DMCNagScheduler" delegate:*(v4 + 18)];
    v37 = *(v4 + 10);
    *(v4 + 10) = v36;

    [*(v4 + 18) setNagScheduler:*(v4 + 10)];
    [*(v4 + 10) evaluateNags];
  }

  return v4;
}

uint64_t __37__MDMServerCore_initWithChannelType___block_invoke(uint64_t a1)
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "Rapid Return to Service has been initiated.", v4, 2u);
  }

  return [*(a1 + 32) _memberQueueRRTSTimeoutReached];
}

- (void)dealloc
{
  if (self->_rrtsEventToken != -1)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering Rapid Return to Service notification.", buf, 2u);
    }

    [(MDMServerCore *)self _cancelDispatchNotificationWithToken:self->_rrtsEventToken];
    self->_rrtsEventToken = -1;
  }

  if ([(MDMServerCore *)self memberQueueIdentity])
  {
    CFRelease([(MDMServerCore *)self memberQueueIdentity]);
  }

  v4.receiver = self;
  v4.super_class = MDMServerCore;
  [(MDMServerCore *)&v4 dealloc];
}

- (BOOL)startOutError:(id *)a3
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*(v4 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore startOutError:];
  }

  v5 = objc_alloc(MEMORY[0x277D03558]);
  v6 = [(MDMServerCore *)self _reasonStringWithReason:@"StartMDMDServer"];
  v7 = [v5 initWithReason:v6];

  +[MDMMCInterface profiledCheckIn];
  v8 = [(MDMServerCore *)self pushServiceManager];
  [v8 addPushServiceObserver:self];

  v9 = [(MDMServerCore *)self depPushTokenManager];
  [v9 startMonitoringDEPPushTokenChangeShouldForce:0];

  if ([MEMORY[0x277D034F8] isMDMMigrationEnabled])
  {
    v10 = [(MDMServerCore *)self mdmMigrationManager];
    [v10 startMonitoringDEPServerPushIfNeeded];
  }

  v17 = 0;
  v11 = [(MDMServerCore *)self _readConfigurationOutError:&v17 isUproot:0];
  v12 = v17;
  if (v11)
  {
    v13 = [(MDMServerCore *)self jobQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__MDMServerCore_startOutError___block_invoke;
    v15[3] = &unk_27982CC60;
    v15[4] = self;
    v16 = v7;
    [v13 fromFunction:"-[MDMServerCore startOutError:]" enqueueJob:v15];
  }

  return v11;
}

void __31__MDMServerCore_startOutError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MDMServerCore_startOutError___block_invoke_2;
  v6[3] = &unk_27982CA78;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

- (void)_schedulePollingServerForCommand
{
  v3 = [(MDMServerCore *)self jobQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__MDMServerCore__schedulePollingServerForCommand__block_invoke;
  v4[3] = &unk_27982CCB0;
  v4[4] = self;
  [v3 fromFunction:"-[MDMServerCore _schedulePollingServerForCommand]" enqueueJob:v4];
}

void __49__MDMServerCore__schedulePollingServerForCommand__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__MDMServerCore__schedulePollingServerForCommand__block_invoke_2;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

- (void)_pollFromServerIfNeeded:(BOOL)a3 isReachabilityEvent:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x277D035A0]);
    v10 = [(MDMServerCore *)self _reasonStringWithReason:@"Polling"];
    v11 = [v9 initWithReason:v10];

    v12 = [(MDMServerCore *)self _cachedResponse];

    if (!v12)
    {
      v13 = [(MDMServerCore *)self _idleResponse];
      [(MDMServerCore *)self _setCachedResponse:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = [(MDMServerCore *)self jobQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MDMServerCore__pollFromServerIfNeeded_isReachabilityEvent_completionHandler___block_invoke;
  v17[3] = &unk_27982CCD8;
  v20 = a4;
  v17[4] = self;
  v18 = v11;
  v19 = v8;
  v15 = v8;
  v16 = v11;
  [v14 queueBlock:v17];
}

void __79__MDMServerCore__pollFromServerIfNeeded_isReachabilityEvent_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__MDMServerCore__pollFromServerIfNeeded_isReachabilityEvent_completionHandler___block_invoke_2;
  v4[3] = &unk_27982CC88;
  v5 = *(a1 + 48);
  [v2 _executionQueueUpdateTokenIfNeededAndCheckForOutstandingActivityIsReachabilityEvent:v1 assertion:v3 completionBlock:v4];
}

uint64_t __79__MDMServerCore__pollFromServerIfNeeded_isReachabilityEvent_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __127__MDMServerCore__executionQueueUpdateTokenIfNeededAndCheckForOutstandingActivityIsReachabilityEvent_assertion_completionBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsMDMConfigurationValid];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_executionQueueCheckForOutstandingActivityIsReachabilityEvent:(BOOL)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MDMServerCore *)self _cachedResponse];

  if (v10)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = [(MDMServerCore *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__MDMServerCore__executionQueueCheckForOutstandingActivityIsReachabilityEvent_assertion_completionBlock___block_invoke;
    block[3] = &unk_27982BB40;
    block[4] = self;
    block[5] = buf;
    dispatch_async_and_wait(v11, block);

    if (v6 && v19[24] == 1 && DMCIsDeviceLocked())
    {
      v12 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Not polling in response to reachability change. Waiting for device to unlock first.", v16, 2u);
      }

      v13 = 1;
    }

    else
    {
      v14 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Polling MDM server.", v16, 2u);
      }

      [(MDMServerCore *)self _executionQueuePollServerForCommandWithAssertion:v8 completionBlock:v9];
      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v13)
    {
      v9[2](v9);
    }

    goto LABEL_18;
  }

  v15 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "No cached response to send.", buf, 2u);
  }

  v13 = 1;
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_18:
}

uint64_t __105__MDMServerCore__executionQueueCheckForOutstandingActivityIsReachabilityEvent_assertion_completionBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueLastResponseWasNotNow];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_executionQueueTellServerAboutDeviceTokenWithAssertion:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MDMServerCore *)self executionQueueIsCheckinInProgress])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke;
    v16[3] = &unk_27982CD00;
    v17 = v7;
    v8 = v7;
    [(MDMServerCore *)self _executeBlockWhenPushTokenIsAvailable:v16];
    v9 = v17;
  }

  else
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "Telling server about new device token.", buf, 2u);
    }

    [(MDMServerCore *)self setExecutionQueueIsCheckinInProgress:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_78;
    v12[3] = &unk_27982CDF0;
    v12[4] = self;
    v14 = v7;
    v13 = v6;
    v11 = v7;
    [(MDMServerCore *)self _executeBlockWhenPushTokenIsAvailable:v12];

    v9 = v14;
  }
}

uint64_t __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_78(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] jobQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_2;
  v6[3] = &unk_27982CDC8;
  v6[4] = a1[4];
  v7 = v3;
  v9 = a1[6];
  v8 = a1[5];
  v5 = v3;
  [v4 queueBlock:v6];
}

void __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_2(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = DMCHasMDMMigrated();
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__10;
  v58[4] = __Block_byref_object_dispose__10;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__10;
  v56[4] = __Block_byref_object_dispose__10;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__10;
  v54[4] = __Block_byref_object_dispose__10;
  v55 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__10;
  v51[4] = __Block_byref_object_dispose__10;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v3 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_79;
  block[3] = &unk_27982CD28;
  block[4] = *(a1 + 32);
  block[5] = &v64;
  block[6] = &v60;
  block[7] = v58;
  block[8] = v56;
  block[9] = v54;
  block[10] = v53;
  block[11] = v51;
  block[12] = v49;
  block[13] = v47;
  dispatch_async_and_wait(v3, block);

  v4 = a1;
  v5 = v2 && *(v65 + 24) == 1 && *(a1 + 40) != 0;
  v6 = [MEMORY[0x277D03498] sharedInstance];
  v7 = [v6 hrnMode];

  v8 = *(v4 + 32);
  if (!v5 && v7 != 2)
  {
    [v8 setExecutionQueueIsCheckinInProgress:0];
    if ([*(v4 + 32) _isTokenUpdateScheduled])
    {
      [*(v4 + 32) _executionQueueScheduleTokenUpdateRetryIfNeeded];
    }

    if ((v2 & 1) == 0)
    {
      v10 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "Skipped token update due to incomplete migration.", &buf, 2u);
      }

      [*(v4 + 32) _listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate];
    }

    goto LABEL_20;
  }

  if (([v8 _isTokenUpdateScheduled] & 1) == 0)
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_INFO, "Token update is not scheduled.", &buf, 2u);
    }

    goto LABEL_19;
  }

  if ([*(v4 + 32) userSwitchAlreadyInitiated])
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_INFO, "User switch already initiated. Not telling server about new token right now.", &buf, 2u);
    }

LABEL_19:
    [*(v4 + 32) setExecutionQueueIsCheckinInProgress:0];
LABEL_20:
    v12 = *(v4 + 56);
    if (v12)
    {
      (*(v12 + 16))();
    }

    goto LABEL_22;
  }

  v14 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Telling MDM Check-In Server about new device token.", &buf, 2u);
  }

  if (([MEMORY[0x277D03530] isAppleTV] & 1) != 0 || (objc_msgSend(MEMORY[0x277D24640], "sharedConfiguration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "userMode") == 1, v15, v16) || (v61[3] & 4) == 0)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    if (MDMKeybagCreateMDMEscrowWithPasscode(&stru_2868451F0, 0))
    {
      v32 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_DEFAULT, "Generated new unlock token because there's no passcode", &buf, 2u);
      }
    }

    v45 = 0;
    v17 = MDMKeybagRetrieveMDMEscrowDataIfPresent(&v45);
    v33 = v45;
    v18 = v33;
    if (v17)
    {
      v34 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_DEFAULT, "Found unlock token; including in TokenUpdate message.", &buf, 2u);
      }
    }

    else
    {
      if (v33)
      {
        v35 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_2561F5000, v35, OS_LOG_TYPE_ERROR, "Could not retrieve unlock token to include in TokenUpdate message: %@", &buf, 0xCu);
        }
      }

      v17 = 0;
    }
  }

  v19 = [*(v4 + 32) memberQueue];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_86;
  v44[3] = &unk_27982BA78;
  v44[4] = *(v4 + 32);
  dispatch_async_and_wait(v19, v44);

  if ([*(v4 + 32) channelType])
  {
    v20 = [*(v4 + 32) _isAwaitingUserConfigured];
  }

  else
  {
    v20 = +[MDMMCInterface isAwaitingDeviceConfigured];
  }

  v71 = *MEMORY[0x277D248B8];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  v72[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
  v23 = [v22 mutableCopy];

  if (v7 != 2)
  {
    v24 = *(v4 + 40);
    if (v24)
    {
      [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x277D248F0]];
    }
  }

  if ((v61[3] & 4) != 0)
  {
    [v23 setObject:v17 forKeyedSubscript:*MEMORY[0x277D24930]];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v69 = 0x2020000000;
  v70 = 0;
  v25 = MEMORY[0x277D24630];
  v26 = [*(v4 + 32) channelType];
  v27 = v4;
  v28 = *MEMORY[0x277D24920];
  v29 = v7 != 2;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_2_90;
  v37[3] = &unk_27982CDA0;
  v37[4] = *(v27 + 32);
  v38 = *(v27 + 48);
  v30 = v23;
  v39 = v30;
  v42 = *(v27 + 56);
  v40 = *(v27 + 40);
  p_buf = &buf;
  v31 = v17;
  v41 = v31;
  LOWORD(v36) = 1;
  [v25 executeRequestForMessageType:v28 channelType:v26 requestDict:v30 isCheckout:0 shouldIncludeTopic:v29 shouldIncludePushMagic:v29 isEnrollmentRequired:v36 isShortTransaction:v37 completionHandler:?];

  _Block_object_dispose(&buf, 8);
LABEL_22:
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_79(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueIsMDMConfigurationValid];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) memberQueueAccessRights];
  v2 = [*(a1 + 32) memberQueueTopic];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) memberQueuePushMagic];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) memberQueueCheckInURL];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) memberQueueIdentity];
  v11 = [*(a1 + 32) memberQueueCheckInPinnedSecCertificateRefs];
  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 32) memberQueuePinningRevocationCheckRequired];
  result = [*(a1 + 32) memberQueueSignMessage];
  *(*(*(a1 + 104) + 8) + 24) = result;
  return result;
}

void __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_2_90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) jobQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_3;
  v18[3] = &unk_27982CD78;
  v9 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v7;
  v20 = v6;
  v10 = v9;
  v11 = *(a1 + 48);
  v23 = *(a1 + 72);
  v12 = *(a1 + 56);
  v24 = *(a1 + 80);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  v16 = v6;
  v17 = v7;
  [v8 queueBlock:v18];
}

void __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setExecutionQueueIsCheckinInProgress:0];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277D24648] sharedConfiguration];
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v8 = [v3 rmAccountID];
    v9 = [v4 enrollmentMode];
    v10 = [*(a1 + 32) notificationQueue];
    v11 = [v6 _httpErrorFromTransaction:v5 assertion:v7 rmAccountID:v8 enrollmentMode:v9 reauthQueue:v10];

    v2 = v11;
  }

  if (v2)
  {
    v12 = objc_opt_new();
    [v12 logErrorEventForTopic:*MEMORY[0x277D03328] reason:@"Token Update failed" error:v2 details:*(a1 + 64)];

    v13 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v2;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_ERROR, "Cannot tell server of a new push token. Error: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _executionQueueScheduleTokenUpdateRetryIfNeeded];
    v14 = *(a1 + 88);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }

  else
  {
    v15 = +[MDMEvents sharedInstance];
    v16 = [*(a1 + 72) DMCSHA256Hash];
    v17 = [*(a1 + 32) memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_97;
    block[3] = &unk_27982CD50;
    block[4] = *(a1 + 32);
    v18 = v16;
    v19 = *(a1 + 96);
    v28 = v18;
    v29 = v19;
    dispatch_async_and_wait(v17, block);

    [v15 recordDateForEvent:@"PushTokenSentToServerKey"];
    [v15 recordData:*(a1 + 72) forEvent:@"PushTokenDataSentToServerKey"];
    if (*(a1 + 80))
    {
      [v15 recordDateForEvent:@"UnlockTokenSentToServerDate"];
      v20 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_DEFAULT, "Successfully delivered unlock token in TokenUpdate", buf, 2u);
      }

      MDMKeybagDeleteMDMEscrowData();
    }

    v21 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 48);
      v23 = v21;
      v24 = [v22 statusCode];
      *buf = 67109120;
      LODWORD(v31) = v24;
      _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_DEFAULT, "Transaction completed. Status: %d", buf, 8u);
    }

    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      [*(a1 + 32) _executionQueueTellServerAboutDeviceTokenWithAssertion:*(a1 + 56) completionBlock:*(a1 + 88)];
    }

    else
    {
      v25 = *(a1 + 88);
      if (v25)
      {
        (*(v25 + 16))();
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __88__MDMServerCore__executionQueueTellServerAboutDeviceTokenWithAssertion_completionBlock___block_invoke_97(uint64_t a1)
{
  [*(a1 + 32) _memberQueueSetLastPushTokenHash:*(a1 + 40)];
  [*(a1 + 32) _memberQueueDecrementTokenUpdateRequestCount];
  result = [*(a1 + 32) _memberQueueTokenUpdateCount];
  if (result >= 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_executionQueueScheduleTokenUpdateRetryIfNeeded
{
  if ([(MDMServerCore *)self _tokenUpdateRetryCount]<= 0)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDMServerCore retried token update enough. Aborting...", buf, 2u);
    }
  }

  else
  {
    [(MDMServerCore *)self _decreaseTokenUpdateRetryCount];
    v3 = DMCHasMDMMigrated();
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "MDMServerCore will retry token update...", v7, 2u);
    }

    if (v3)
    {
      v5 = 10.0;
    }

    else
    {
      v5 = 300.0;
    }

    [(MDMServerCore *)self _scheduleNextPollWithInterval:v5];
  }
}

- (void)_executionQueuePollServerForCommandWithAssertion:(id)a3 completionBlock:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__10;
  v37 = __Block_byref_object_dispose__10;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke;
  block[3] = &unk_27982CE18;
  block[4] = self;
  block[5] = &v39;
  block[6] = &v33;
  block[7] = &v29;
  dispatch_async_and_wait(v8, block);

  if (*(v40 + 24) == 1 && *(v30 + 24) != 1)
  {
    v13 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v34[5];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Polling MDM server %{public}@ for next command.", &buf, 0xCu);
    }

    v12 = [(MDMServerCore *)self _cachedResponse];
    if (!v12)
    {
      v12 = [(MDMServerCore *)self _idleResponse];
    }

    if ([(MDMServerCore *)self userSwitchAlreadyInitiated])
    {
      v15 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "User switch already initiated. Not polling the MDM server for commands right now.", &buf, 2u);
      }

      v16 = [(MDMServerCore *)self _cachedResponse];
      v17 = v16 == 0;

      if (v17)
      {
        v18 = [(MDMServerCore *)self _idleResponse];
        [(MDMServerCore *)self _setCachedResponse:v18];
      }

      if (v7)
      {
        v19 = dispatch_get_global_queue(0, 0);
        dispatch_async(v19, v7);
      }
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v44 = 0x2020000000;
      v45 = 0;
      v20 = [(MDMServerCore *)self memberQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_99;
      v27[3] = &unk_27982BB40;
      v27[4] = self;
      v27[5] = &buf;
      dispatch_async_and_wait(v20, v27);

      v21 = *(*(&buf + 1) + 24);
      if (v21)
      {
        [(MDMServerCore *)self _scheduleNextPollWithInterval:(120 * v21)];
      }

      [(MDMServerCore *)self _setLastPollingAttempt];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_2;
      v23[3] = &unk_27982CE90;
      v23[4] = self;
      v24 = v6;
      v26 = v7;
      v12 = v12;
      v25 = v12;
      [(MDMServerCore *)self _sendResponse:v12 completionBlock:v23];

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_21;
  }

  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v40 + 24);
    v11 = *(v30 + 24);
    LODWORD(buf) = 67240448;
    DWORD1(buf) = v10;
    WORD4(buf) = 1026;
    *(&buf + 10) = v11;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring MDM server poll. Config Valid? %{public}d. Is Uprooting? %{public}d", &buf, 0xEu);
  }

  if (v7)
  {
    v12 = dispatch_get_global_queue(0, 0);
    dispatch_async(v12, v7);
LABEL_21:
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueIsMDMConfigurationValid];
  v2 = [*(a1 + 32) memberQueueServerURL];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) memberQueueIsUprooting];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_99(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePollingInterval];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedIntegerValue];
}

void __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) jobQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_3;
  v7[3] = &unk_27982CE68;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v6 = v3;
  [v4 queueBlock:v7];
}

void __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_3(id *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = [v2 rmAccountID];
  v7 = [v2 enrollmentMode];
  v8 = [a1[4] notificationQueue];
  v9 = [v3 _httpErrorFromTransaction:v4 assertion:v5 rmAccountID:v6 enrollmentMode:v7 reauthQueue:v8];

  v10 = *(DMCLogObjects() + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      v15 = a1[5];
      v16 = v10;
      v17 = [v15 statusCode];
      v18 = [a1[7] objectForKeyedSubscript:@"CommandUUID"];
      v19 = v18;
      v20 = @"(Idle)";
      if (v18)
      {
        v20 = v18;
      }

      *buf = 67109378;
      *v56 = v17;
      *&v56[4] = 2114;
      *&v56[6] = v20;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEFAULT, "Transaction completed. Status: %d, ResponseUUID: %{public}@", buf, 0x12u);
    }

    [a1[4] _setCachedResponse:0];
    v21 = MEMORY[0x277CCAC58];
    v22 = [a1[5] responseData];
    v54 = 0;
    v23 = [v21 DMCSafePropertyListWithData:v22 options:0 format:0 error:&v54];
    v24 = v54;

    v25 = [a1[5] responseData];
    if ([v25 length])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v27 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v56 = v24;
          _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_ERROR, "Could not parse command. Error: %{public}@", buf, 0xCu);
        }

        v28 = a1[4];
        v29 = +[MDMParser malformedRequestErrorResult];
        [v28 _setCachedResponse:v29];

        [a1[4] _schedulePollingServerForCommand];
        [a1[4] _pollingFailed];
        goto LABEL_26;
      }
    }

    else
    {
    }

    v30 = [a1[5] responseData];
    if ([v30 length])
    {
      v31 = [v23 count];

      if (v31)
      {
        [a1[4] _pollingSucceeded];
        v32 = objc_alloc(MEMORY[0x277D035A0]);
        v33 = a1[4];
        v34 = MEMORY[0x277CCACA8];
        v35 = [v23 objectForKeyedSubscript:@"Command"];
        v36 = [v35 objectForKeyedSubscript:@"RequestType"];
        v37 = [v34 stringWithFormat:@"Request-%@", v36];
        v38 = [v33 _reasonStringWithReason:v37];
        v39 = [v32 initWithReason:v38];

        v40 = a1[4];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_3_111;
        v48[3] = &unk_27982CE40;
        v48[4] = v40;
        v49 = a1[8];
        [v40 _executionQueueHandleRequest:v23 assertion:v39 completionBlock:v48];

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
    }

    v41 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_DEFAULT, "Server has no commands for this device.", buf, 2u);
    }

    [a1[4] _pollingSucceeded];
    v42 = [a1[7] objectForKey:@"Status"];
    v43 = [v42 isEqualToString:@"NotNow"];

    v44 = [a1[4] memberQueue];
    if (v43)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_105;
      block[3] = &unk_27982BAC8;
      block[4] = a1[4];
      v45 = &v53;
      v53 = a1[6];
      dispatch_async(v44, block);
    }

    else
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_2_106;
      v50[3] = &unk_27982BAC8;
      v50[4] = a1[4];
      v45 = &v51;
      v51 = a1[6];
      dispatch_barrier_async(v44, v50);
    }

LABEL_26:
    v46 = a1[8];
    if (v46)
    {
      v46[2]();
    }

    goto LABEL_28;
  }

  if (v11)
  {
    v12 = v10;
    v13 = [v9 DMCVerboseDescription];
    *buf = 138543362;
    *v56 = v13;
    _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Could not send response to MDM server. Error: %{public}@", buf, 0xCu);
  }

  [a1[4] _pollingFailed];
  v14 = a1[8];
  if (v14)
  {
    v14[2]();
  }

LABEL_29:

  v47 = *MEMORY[0x277D85DE8];
}

void __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_105(uint64_t a1)
{
  [*(a1 + 32) setMemberQueueLastResponseWasNotNow:1];
  v2 = *(a1 + 32);
  v3 = [v2 _idleResponse];
  [v2 _memberQueueSetCachedResponse:v3];
}

uint64_t __82__MDMServerCore__executionQueuePollServerForCommandWithAssertion_completionBlock___block_invoke_3_111(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setCachedResponse:a2];
  if (a2)
  {
    [*(a1 + 32) _schedulePollingServerForCommand];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)sendResponseSynchronously:(id)a3 outStatusCode:(int64_t *)a4 outError:(id *)a5
{
  v7 = [(MDMServerCore *)self _sendResponseSynchornously:a3];
  v8 = [v7 responseData];
  v9 = [v7 statusCode];
  v10 = [v7 error];
  if (a5)
  {
    v10 = v10;
    *a5 = v10;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return v8;
}

- (void)_sendResponse:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [(MDMServerCore *)self _transactionForResponse:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__MDMServerCore__sendResponse_completionBlock___block_invoke;
  v10[3] = &unk_27982B898;
  v11 = v7;
  v12 = v6;
  v8 = v7;
  v9 = v6;
  [v8 performCompletionBlock:v10];
}

uint64_t __47__MDMServerCore__sendResponse_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)_sendResponseSynchornously:(id)a3
{
  v3 = [(MDMServerCore *)self _transactionForResponse:a3];
  [v3 performSynchronously];

  return v3;
}

- (id)_transactionForResponse:(id)a3
{
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__10;
  v41 = __Block_byref_object_dispose__10;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  v5 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MDMServerCore__transactionForResponse___block_invoke;
  block[3] = &unk_27982CEB8;
  block[4] = self;
  block[5] = &v43;
  block[6] = &v37;
  block[7] = &v33;
  block[8] = &v29;
  block[9] = &v23;
  dispatch_async_and_wait(v5, block);

  if ([(MDMServerCore *)self channelType]== 1)
  {
    v6 = [v4 mutableCopy];
    v7 = [(MDMServerCore *)self _userFieldsForResponse];
    [v6 addEntriesFromDictionary:v7];

    v8 = [v6 copy];
    v4 = v8;
  }

  v9 = [(MDMServerCore *)self _responseDataFromResponseDictionary:v4];
  v10 = objc_alloc(MEMORY[0x277D24668]);
  v11 = v24[5];
  v12 = v44[3];
  v13 = v38[5];
  v14 = *(v34 + 24);
  v15 = *(v30 + 24);
  v16 = [MEMORY[0x277D24648] sharedConfiguration];
  v17 = [v16 rmAccountID];
  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  v18 = [v10 initWithURL:v11 data:v9 identity:v12 pinnedCertificates:v13 pinningRevocationCheckRequired:v14 signMessage:v15 isCheckin:v21 isCheckout:v17 isShortTransaction:? rmAccountID:?];

  if ([MEMORY[0x277D03500] shouldSimulateMDMCommunication])
  {
    v19 = [MEMORY[0x277D24668] emptySuccessResponseBlock];
    [v18 setSimulatedTransactionBlock:v19];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v18;
}

uint64_t __41__MDMServerCore__transactionForResponse___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueIdentity];
  v2 = [*(a1 + 32) memberQueueServerPinnedSecCertificateRefs];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) memberQueuePinningRevocationCheckRequired];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) memberQueueSignMessage];
  v5 = [*(a1 + 32) memberQueueServerURL];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (void)_processRequest:(id)a3 encodeResponse:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x277D035A0]);
  v11 = MEMORY[0x277CCACA8];
  v12 = [v8 objectForKeyedSubscript:@"Command"];
  v13 = [v12 objectForKeyedSubscript:@"RequestType"];
  v14 = [v11 stringWithFormat:@"ProcessRequest-%@", v13];
  v15 = [v10 initWithReason:v14];

  v16 = [(MDMServerCore *)self jobQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__MDMServerCore__processRequest_encodeResponse_completion___block_invoke;
  v20[3] = &unk_27982CF08;
  v20[4] = self;
  v21 = v8;
  v22 = v15;
  v23 = v9;
  v24 = a4;
  v17 = v9;
  v18 = v15;
  v19 = v8;
  [v16 fromFunction:"-[MDMServerCore _processRequest:encodeResponse:completion:]" enqueueJob:v20];
}

void __59__MDMServerCore__processRequest_encodeResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__MDMServerCore__processRequest_encodeResponse_completion___block_invoke_2;
  v9[3] = &unk_27982CEE0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = *(a1 + 64);
  v9[4] = *(a1 + 32);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v4 _executionQueueHandleRequest:v5 assertion:v6 completionBlock:v9];
}

void __59__MDMServerCore__processRequest_encodeResponse_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      v4 = [*(a1 + 32) _responseDataFromResponseDictionary:v5];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(v3 + 16))(v3, 0, v5, 0);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_executionQueueHandleRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__10;
  v42 = __Block_byref_object_dispose__10;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v11 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MDMServerCore__executionQueueHandleRequest_assertion_completionBlock___block_invoke;
  block[3] = &unk_27982CE18;
  block[4] = self;
  block[5] = &v38;
  block[6] = &v34;
  block[7] = &v30;
  dispatch_async_and_wait(v11, block);

  v12 = [(MDMServerCore *)self channelType];
  if (v12)
  {
    if (v12 != 1)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v13 = &off_27982A780;
  }

  else
  {
    v13 = off_27982A6E0;
  }

  v14 = objc_alloc(*v13);
  v15 = [v14 initWithManagingProfileIdentifier:v39[5]];
LABEL_7:
  [v15 setServer:self];
  [v15 setIsMDMCommandBlocked:*(v31 + 24)];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v8 objectForKey:@"CommandUUID"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v8 objectForKey:@"Command"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = [(MDMServerCore *)self memberQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__MDMServerCore__executionQueueHandleRequest_assertion_completionBlock___block_invoke_2;
        v27[3] = &unk_27982BAC8;
        v27[4] = self;
        v19 = v16;
        v28 = v19;
        dispatch_async(v18, v27);

        v20 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v19;
          _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_DEFAULT, "Processing command UUID: %{public}@", buf, 0xCu);
        }

        v21 = v35[3];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __72__MDMServerCore__executionQueueHandleRequest_assertion_completionBlock___block_invoke_120;
        v25[3] = &unk_27982CE40;
        v25[4] = self;
        v26 = v10;
        [v15 processRequest:v17 accessRights:v21 assertion:v9 completionBlock:v25];

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  if (v10 && v22)
  {
    v23 = +[MDMParser malformedRequestErrorResult];
    (*(v10 + 2))(v10, v23);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __72__MDMServerCore__executionQueueHandleRequest_assertion_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueManagingProfileIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) memberQueueAccessRights];
  result = [*(a1 + 32) memberQueueIsBlockingMDMCommands];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __72__MDMServerCore__executionQueueHandleRequest_assertion_completionBlock___block_invoke_120(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) responseFromBasicResponse:v3];
    v5 = [v4 objectForKey:@"Settings"];
    v6 = v5;
    if (v5)
    {
      v19 = v4;
      v20 = v3;
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        v12 = *MEMORY[0x277D24928];
        v13 = *MEMORY[0x277D247C0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v15 = [*(a1 + 32) responseFromBasicResponse:*(*(&v21 + 1) + 8 * i)];
            [v15 removeObjectForKey:@"CommandUUID"];
            [v15 removeObjectForKey:v12];
            [v15 removeObjectForKey:v13];
            [v7 addObject:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

      v4 = v19;
      [v19 setObject:v7 forKey:@"Settings"];

      v3 = v20;
      v6 = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore sendMDMAuthenticationRequestWithCompletionHandler:];
  }

  v6 = objc_alloc(MEMORY[0x277D035A0]);
  v7 = [(MDMServerCore *)self _reasonStringWithReason:@"Authenticate"];
  v8 = [v6 initWithReason:v7];

  v9 = [(MDMServerCore *)self checkInQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MDMServerCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke;
  block[3] = &unk_27982BE10;
  v13 = v8;
  v14 = v4;
  block[4] = self;
  v10 = v8;
  v11 = v4;
  dispatch_async(v9, block);
}

void __67__MDMServerCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke(id *a1)
{
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 isUserEnrollment];
  v4 = a1[4];
  if (v3)
  {
    v5 = [a1[4] _userEnrollmentAuthenticationDict];
  }

  else
  {
    v6 = [v2 accessRights];
    v7 = [v2 personaID];
    v5 = [v4 _deviceEnrollmentAuthenticationDictWithAccessRights:v6 isDataSeparated:v7 != 0];
  }

  v8 = MEMORY[0x277D24630];
  v9 = *MEMORY[0x277D248F8];
  v10 = [a1[4] channelType];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__MDMServerCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_27982CF30;
  v14 = a1[6];
  v13 = a1[5];
  LOWORD(v11) = 0;
  [v8 executeRequestForMessageType:v9 channelType:v10 requestDict:v5 isCheckout:0 shouldIncludeTopic:1 shouldIncludePushMagic:0 isEnrollmentRequired:v11 isShortTransaction:v12 completionHandler:?];
}

void __67__MDMServerCore_sendMDMAuthenticationRequestWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDMServerCore: Authentication failed with error: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore sendMDMCheckOutRequestWithCompletionHandler:];
  }

  v6 = objc_alloc(MEMORY[0x277D035A0]);
  v7 = [(MDMServerCore *)self _reasonStringWithReason:@"CheckOut"];
  v8 = [v6 initWithReason:v7];

  v9 = [(MDMServerCore *)self checkInQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MDMServerCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke;
  block[3] = &unk_27982BE10;
  v13 = v8;
  v14 = v4;
  block[4] = self;
  v10 = v8;
  v11 = v4;
  dispatch_async(v9, block);
}

void __61__MDMServerCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke(id *a1)
{
  v2 = MEMORY[0x277D24630];
  v3 = *MEMORY[0x277D24900];
  v4 = [a1[4] channelType];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__MDMServerCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_27982CF30;
  v8 = a1[6];
  v7 = a1[5];
  LOWORD(v5) = 257;
  [v2 executeRequestForMessageType:v3 channelType:v4 requestDict:0 isCheckout:1 shouldIncludeTopic:1 shouldIncludePushMagic:0 isEnrollmentRequired:v5 isShortTransaction:v6 completionHandler:?];
}

void __61__MDMServerCore_sendMDMCheckOutRequestWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDMServerCore: CheckOut failed with error: %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyNewConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore notifyNewConfigurationWithCompletion:];
  }

  v6 = objc_alloc(MEMORY[0x277D035A0]);
  v7 = [(MDMServerCore *)self _reasonStringWithReason:@"NewConfig"];
  v8 = [v6 initWithReason:v7];

  v9 = [(MDMServerCore *)self jobQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__MDMServerCore_notifyNewConfigurationWithCompletion___block_invoke;
  v12[3] = &unk_27982CF58;
  v13 = v8;
  v14 = v4;
  v12[4] = self;
  v10 = v8;
  v11 = v4;
  [v9 fromFunction:"-[MDMServerCore notifyNewConfigurationWithCompletion:]" enqueueJob:v12];
}

void __54__MDMServerCore_notifyNewConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 _readConfigurationOutError:0 isUproot:0];
  if ([MEMORY[0x277D034F8] isMDMMigrationEnabled])
  {
    v4 = [*(a1 + 32) mdmMigrationManager];
    [v4 startMonitoringDEPServerPushIfNeeded];
  }

  if ([MEMORY[0x277D034F8] isMigrationEligibilityReportEnabled])
  {
    MDMSendMigrationEligibilityChangedNotification();
  }

  (*(*(a1 + 48) + 16))();
  v5[2]();
}

- (void)scheduleTokenUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore scheduleTokenUpdateWithCompletion:];
  }

  v6 = [(MDMServerCore *)self jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__MDMServerCore_scheduleTokenUpdateWithCompletion___block_invoke;
  v8[3] = &unk_27982CFA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fromFunction:"-[MDMServerCore scheduleTokenUpdateWithCompletion:]" enqueueJob:v8];
}

void __51__MDMServerCore_scheduleTokenUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MDMServerCore_scheduleTokenUpdateWithCompletion___block_invoke_2;
  block[3] = &unk_27982BA78;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);

  v5 = [*(a1 + 32) _cachedResponse];
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277D03498] sharedInstance];
  v7 = [v6 hrnMode];

  if (v7 != 1)
  {
    v8 = *(a1 + 32);
    v5 = [v8 _idleResponse];
    [v8 _setCachedResponse:v5];
LABEL_4:
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__MDMServerCore_scheduleTokenUpdateWithCompletion___block_invoke_3;
  v11[3] = &unk_27982CF80;
  v9 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v3;
  v10 = v3;
  [v9 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v11];
}

uint64_t __51__MDMServerCore_scheduleTokenUpdateWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore scheduleTokenUpdateIfNecessaryWithCompletion:];
  }

  v6 = [(MDMServerCore *)self jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__MDMServerCore_scheduleTokenUpdateIfNecessaryWithCompletion___block_invoke;
  v8[3] = &unk_27982CFA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fromFunction:"-[MDMServerCore scheduleTokenUpdateIfNecessaryWithCompletion:]" enqueueJob:v8];
}

void __62__MDMServerCore_scheduleTokenUpdateIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__MDMServerCore_scheduleTokenUpdateIfNecessaryWithCompletion___block_invoke_2;
  v6[3] = &unk_27982CF80;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __62__MDMServerCore_scheduleTokenUpdateIfNecessaryWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)simulatePushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore simulatePushWithCompletion:];
  }

  v6 = [(MDMServerCore *)self jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__MDMServerCore_simulatePushWithCompletion___block_invoke;
  v8[3] = &unk_27982CFA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fromFunction:"-[MDMServerCore simulatePushWithCompletion:]" enqueueJob:v8];
}

void __44__MDMServerCore_simulatePushWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__MDMServerCore_simulatePushWithCompletion___block_invoke_2;
  v6[3] = &unk_27982CF80;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:1 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __44__MDMServerCore_simulatePushWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)simulatePushIfNetworkTetheredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore simulatePushIfNetworkTetheredWithCompletion:];
  }

  if (DMCDeviceIsNetworkTethered())
  {
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v6 installedMDMProfileIdentifier];

    if (v7)
    {
      v8 = [(MDMServerCore *)self jobQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __61__MDMServerCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke;
      v15[3] = &unk_27982CFA8;
      v15[4] = self;
      v16 = v4;
      [v8 fromFunction:"-[MDMServerCore simulatePushIfNetworkTetheredWithCompletion:]" enqueueJob:v15];
    }

    else if (v4)
    {
      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Asked to poll server if tethered, but no MDM installation exists.", buf, 2u);
      }

      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v12 = [v9 DMCErrorWithDomain:v10 code:12081 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], 0}];

    if (v4)
    {
      (*(v4 + 2))(v4, v12);
    }
  }
}

void __61__MDMServerCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__MDMServerCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke_2;
  v6[3] = &unk_27982CF80;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:1 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __61__MDMServerCore_simulatePushIfNetworkTetheredWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)retryNotNowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore retryNotNowWithCompletion:];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMServerCore_retryNotNowWithCompletion___block_invoke;
  block[3] = &unk_27982BB40;
  block[4] = self;
  block[5] = &v15;
  dispatch_async_and_wait(v6, block);

  v7 = [(MDMServerCore *)self _cachedResponse];
  if (v7 && (v8 = *(v16 + 24), v7, v8 == 1))
  {
    v9 = [(MDMServerCore *)self jobQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__MDMServerCore_retryNotNowWithCompletion___block_invoke_2;
    v12[3] = &unk_27982CFA8;
    v12[4] = self;
    v13 = v4;
    [v9 fromFunction:"-[MDMServerCore retryNotNowWithCompletion:]" enqueueJob:v12];
  }

  else
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_INFO, "Last response was not a NotNow. Ignoring poll request.", v11, 2u);
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __43__MDMServerCore_retryNotNowWithCompletion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueLastResponseWasNotNow];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __43__MDMServerCore_retryNotNowWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MDMServerCore_retryNotNowWithCompletion___block_invoke_3;
  v6[3] = &unk_27982CF80;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __43__MDMServerCore_retryNotNowWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)reauthenticationCompleteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore reauthenticationCompleteWithCompletion:];
  }

  [(MDMServerCore *)self _clearCoreFollowup];
  [(MDMServerCore *)self _postReauthFollowUpChangedNotification];
  [(MDMServerCore *)self simulatePushWithCompletion:v4];
}

- (void)preserveAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self dmcAppsHelper];
  [v5 preserveAppsWithCompletionHandler:v4];
}

- (void)removeUnusedPreservedAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self dmcAppsHelper];
  [v5 removeUnusedPreservedAppsWithCompletionHandler:v4];
}

- (void)uprootMDMWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore uprootMDMWithCompletion:];
  }

  v6 = objc_alloc(MEMORY[0x277D035A0]);
  v7 = [(MDMServerCore *)self _reasonStringWithReason:@"UprootMDM"];
  v8 = [v6 initWithReason:v7];

  v9 = +[MDMEvents sharedInstance];
  [v9 recordDateForEvent:@"LastUproot"];

  v10 = MEMORY[0x277CBEAC0];
  v11 = [(MDMServerCore *)self _mdmFilePathForChannelType:0];
  v12 = [v10 DMCDictionaryFromFile:v11];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D248B0]];
  v14 = [(MDMServerCore *)self jobQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__MDMServerCore_uprootMDMWithCompletion___block_invoke;
  v18[3] = &unk_27982CFF0;
  v19 = v13;
  v20 = self;
  v21 = v8;
  v22 = v4;
  v15 = v8;
  v16 = v4;
  v17 = v13;
  [v14 fromFunction:"-[MDMServerCore uprootMDMWithCompletion:]" enqueueJob:v18];
}

void __41__MDMServerCore_uprootMDMWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v56 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_INFO, "MDMServerCore uprooting MDM installation...", buf, 2u);
  }

  v4 = *(a1 + 32);
  v71 = 0;
  v5 = [MDMDeclarativeManagementCommand unenrollWithProfileIdentifier:v4 error:&v71];
  v6 = v71;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      v8 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v75 = v7;
        _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "MDMServerCore failed to execute remote management unenrollment with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v54 = v7;
  v57 = [MEMORY[0x277D04BF8] systemConnection];
  v55 = a1;
  v9 = [*(a1 + 40) dmcAppsHelper];
  v70 = 0;
  v10 = [v9 preservedAppIDsAndReturnError:&v70];
  v11 = v70;

  if (!v10)
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v75 = v11;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_ERROR, "MDMServerCore failed to retrieve preserved App IDs with error: %{public}@", buf, 0xCu);
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = +[MDMMCInterface managedAppIDs];
  v14 = [v13 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v67;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v67 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v66 + 1) + 8 * i);
        v19 = objc_opt_new();
        [v19 setBundleIdentifier:v18];
        if (v10 && [v10 containsObject:v18])
        {
          [v19 setShouldPreserveAppBinary:1];
        }

        v65 = 0;
        v20 = [v57 performRequest:v19 error:&v65];
        v21 = v65;
        v22 = *(DMCLogObjects() + 8);
        if (v21)
        {
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138543618;
          v75 = v18;
          v76 = 2114;
          v77 = v21;
          v23 = v22;
          v24 = OS_LOG_TYPE_ERROR;
          v25 = "MDMServerCore uproot failed to stop managing app: '%{public}@' with error: %{public}@";
          v26 = 22;
        }

        else
        {
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *buf = 138543362;
          v75 = v18;
          v23 = v22;
          v24 = OS_LOG_TYPE_DEFAULT;
          v25 = "MDMServerCore uproot successfully stopped managing app: '%{public}@'";
          v26 = 12;
        }

        _os_log_impl(&dword_2561F5000, v23, v24, v25, buf, v26);
LABEL_24:
      }

      v15 = [v13 countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v15);
  }

  [*(v55 + 40) _clearCoreFollowup];
  [*(v55 + 40) _clearMAIDNotification];
  v27 = *(DMCLogObjects() + 8);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  v29 = *MEMORY[0x277D24DD8];
  if (v28)
  {
    *buf = 138543362;
    v75 = v29;
    _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "MDMServerCore posting MDM uprooted notifications: %{public}@", buf, 0xCu);
  }

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 postNotificationName:v29 object:0];

  v31 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v31 postNotificationName:v29 object:0];

  v32 = +[MDMAttestation sharedInstance];
  [v32 reset];

  v33 = [*(v55 + 40) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MDMServerCore_uprootMDMWithCompletion___block_invoke_148;
  block[3] = &unk_27982BA78;
  block[4] = *(v55 + 40);
  dispatch_async_and_wait(v33, block);

  v34 = objc_opt_new();
  v63 = 0;
  v35 = [v57 performRequest:v34 error:&v63];
  v36 = v63;

  if (v36)
  {
    v37 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v75 = v36;
      _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_ERROR, "MDMServerCore ignoring stop managing books with error: %{public}@", buf, 0xCu);
    }
  }

  v38 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = [*(v55 + 40) _mdmPropertiesFilePathForChannelType:{objc_msgSend(*(v55 + 40), "channelType")}];
  v73[0] = v39;
  v40 = MDMAppManagementFilePath();
  v73[1] = v40;
  v41 = [*(v55 + 40) _mdmOutstandingActivitiesFilePathForChannelType:{objc_msgSend(*(v55 + 40), "channelType")}];
  v73[2] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v43 = v42;
  v44 = [v43 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v60;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v38 removeItemAtPath:*(*(&v59 + 1) + 8 * j) error:0];
      }

      v45 = [v43 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v45);
  }

  v48 = [MEMORY[0x277D24648] sharedConfiguration];
  v58 = 0;
  [v48 removeMDMConfigurationWithError:&v58];
  v49 = v58;

  if (v49)
  {
    v50 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v75 = v49;
      _os_log_impl(&dword_2561F5000, v50, OS_LOG_TYPE_ERROR, "MDMServerCore failed to remove MDM.plist with error: %{public}@", buf, 0xCu);
    }
  }

  if (([MEMORY[0x277D031B0] hasIncompleteMigration] & 1) == 0)
  {
    [*(v55 + 40) evaluateMigrationStatusWithPollFromServer:0 completionHandler:&__block_literal_global_7];
  }

  v51 = *(v55 + 56);
  if (v51)
  {
    (*(v51 + 16))(v51, 0);
  }

  v56[2](v56);

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __41__MDMServerCore_uprootMDMWithCompletion___block_invoke_148(uint64_t a1)
{
  [*(a1 + 32) _memberQueueSetCachedResponse:0];
  v2 = *(a1 + 32);

  return [v2 _memberQueueSetTokenUpdateRequestCount:0];
}

- (void)pushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore pushTokenWithCompletion:];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v6 = objc_alloc(MEMORY[0x277D03558]);
    v7 = [(MDMServerCore *)self _reasonStringWithReason:@"PushToken"];
    v8 = [v6 initWithReason:v7];

    v9 = [(MDMServerCore *)self jobQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__MDMServerCore_pushTokenWithCompletion___block_invoke;
    v11[3] = &unk_27982CF58;
    v11[4] = self;
    v12 = v8;
    v13 = v4;
    v10 = v8;
    [v9 fromFunction:"-[MDMServerCore pushTokenWithCompletion:]" enqueueJob:v11];
  }

LABEL_4:
}

void __41__MDMServerCore_pushTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v4 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MDMServerCore_pushTokenWithCompletion___block_invoke_2;
  block[3] = &unk_27982D018;
  block[4] = *(a1 + 32);
  block[5] = &v11;
  dispatch_async_and_wait(v4, block);

  v5 = v12[5];
  v6 = *(a1 + 48);
  if (v5)
  {
    (*(v6 + 16))(v6, v5, 0);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = DMCErrorArray();
    v9 = [v7 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12011 descriptionArray:v8 errorType:{*MEMORY[0x277D032F8], 0}];
    (*(v6 + 16))(v6, 0, v9);
  }

  v3[2](v3);
  _Block_object_dispose(&v11, 8);
}

uint64_t __41__MDMServerCore_pushTokenWithCompletion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsMDMConfigurationValid];
  if (result)
  {
    v3 = [*(a1 + 32) memberQueuePushToken];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)touchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore touchWithCompletion:];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v6 = [(MDMServerCore *)self jobQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__MDMServerCore_touchWithCompletion___block_invoke;
    v7[3] = &unk_27982D040;
    v8 = v4;
    [v6 fromFunction:"-[MDMServerCore touchWithCompletion:]" enqueueJob:v7];
  }

LABEL_4:
}

void __37__MDMServerCore_touchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, 0);
  v4[2]();
}

- (void)nagWithID:(id)a3 clientID:(id)a4 schedule:(id)a5 title:(id)a6 message:(id)a7 notificationTitle:(id)a8 notificationMessage:(id)a9 actionTitle:(id)a10 actionURL:(id)a11 dismissTitle:(id)a12 dismissURL:(id)a13 deadlineURL:(id)a14 completion:(id)a15
{
  v37 = a15;
  v36 = a14;
  v35 = a13;
  v34 = a12;
  v33 = a11;
  v32 = a10;
  v31 = a9;
  v30 = a8;
  v29 = a7;
  v39 = a6;
  v19 = a5;
  v28 = a4;
  v20 = a3;
  v21 = DMCLogObjects();
  if (os_log_type_enabled(*(v21 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore nagWithID:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismissURL:deadlineURL:completion:];
  }

  v26 = [objc_alloc(MEMORY[0x277D032C8]) initWithStyle:1 identifier:v20 clientID:v28 schedule:v19 title:v39 message:v29 notificationTitle:v30 notificationMessage:v31 actionTitle:v32 actionURL:v33 dismissTitle:v34 dismissURL:v35 deadlineURL:v36];

  v22 = [(MDMServerCore *)self jobQueue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __166__MDMServerCore_nagWithID_clientID_schedule_title_message_notificationTitle_notificationMessage_actionTitle_actionURL_dismissTitle_dismissURL_deadlineURL_completion___block_invoke;
  v40[3] = &unk_27982D068;
  v40[4] = self;
  v41 = v26;
  v42 = v37;
  v23 = v37;
  v24 = v26;
  [v22 fromFunction:"-[MDMServerCore nagWithID:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismissURL:deadlineURL:completion:]" enqueueJob:v40];
}

void __166__MDMServerCore_nagWithID_clientID_schedule_title_message_notificationTitle_notificationMessage_actionTitle_actionURL_dismissTitle_dismissURL_deadlineURL_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 nagScheduler];
  v6 = a1[5];
  v8 = 0;
  [v5 startNaggingItem:v6 error:&v8];
  v7 = v8;

  (*(a1[6] + 16))();
  v4[2](v4);
}

- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D24640] sharedConfiguration];
  v6 = [v5 details];
  v7 = v6;
  v8 = MEMORY[0x277CBEC10];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03090]];
  [v10 setObject:&unk_286850440 forKeyedSubscript:*MEMORY[0x277D03038]];
  v11 = [MEMORY[0x277D262A0] sharedConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke;
  v14[3] = &unk_27982D090;
  v15 = v10;
  v16 = self;
  v17 = v4;
  v12 = v4;
  v13 = v10;
  [v11 storeCloudConfigurationDetails:v13 completion:v14];
}

void __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:1800.0];
  v5 = [v2 stringFromDate:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277D030C0]];

  [*(a1 + 32) setObject:@"rundmc.MDMMigration.Nag" forKeyedSubscript:*MEMORY[0x277D030D0]];
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke_2;
  v9[3] = &unk_27982D090;
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = *(a1 + 48);
  [v6 storePendingCloudConfigurationDetailsForMigration:v7 completionHandler:v9];
}

void __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "MDMServerCore failed to store test nag cloud config with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke_2_169;
  v8[3] = &unk_27982D068;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  [v5 fromFunction:"-[MDMServerCore nagForMigrationWithHardCodedValuesWithCompletion:]_block_invoke" enqueueJob:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __66__MDMServerCore_nagForMigrationWithHardCodedValuesWithCompletion___block_invoke_2_169(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 mdmMigrationManager];
  [v4 nagWithCloudConfigDetails:a1[5]];

  (*(a1[6] + 16))();
  v5[2]();
}

- (void)stopNaggingForMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MDMServerCore_stopNaggingForMigrationWithCompletion___block_invoke;
  v7[3] = &unk_27982D0B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 storePendingCloudConfigurationDetailsForMigration:0 completionHandler:v7];
}

void __55__MDMServerCore_stopNaggingForMigrationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "MDMServerCore failed to clear test nag cloud config with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MDMServerCore_stopNaggingForMigrationWithCompletion___block_invoke_2;
  v8[3] = &unk_27982CFA8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  [v5 fromFunction:"-[MDMServerCore stopNaggingForMigrationWithCompletion:]_block_invoke" enqueueJob:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __55__MDMServerCore_stopNaggingForMigrationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 mdmMigrationManager];
  [v4 stopNagging];

  (*(*(a1 + 40) + 16))();
  v5[2]();
}

- (void)isAwaitingUserConfiguredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore isAwaitingUserConfiguredWithCompletion:];
  }

  v4[2](v4, [(MDMServerCore *)self _isAwaitingUserConfigured], 0);
}

- (BOOL)_isAwaitingUserConfigured
{
  v2 = [MEMORY[0x277D03538] awaitUserConfigurationEnabled];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x277D03538] isCurrentUserConfigured] ^ 1;
  }

  return v2;
}

- (void)depPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore depPushTokenWithCompletion:];
  }

  v6 = [(MDMServerCore *)self depPushTokenManager];
  v7 = [v6 depPushToken];

  v4[2](v4, v7, 0);
}

- (void)syncDEPPushTokenWithDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = DMCLogObjects();
  if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore syncDEPPushTokenWithDelay:completion:];
  }

  v8 = [(MDMServerCore *)self depPushTokenManager];
  [v8 syncDEPPushTokenWithDelay:v6 completion:a3];
}

- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore monitorDEPPushTokenIfNeededWithCompletion:];
  }

  v6 = [(MDMServerCore *)self depPushTokenManager];
  [v6 startMonitoringDEPPushTokenChangeShouldForce:0];

  v7 = [(MDMServerCore *)self depPushTokenManager];
  [v7 scheduleMandatoryDEPPushTokenSyncWithRandomDelay:0];

  v4[2](v4, 0);
}

- (void)monitorDEPPushTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore monitorDEPPushTokenWithCompletion:];
  }

  v6 = [(MDMServerCore *)self depPushTokenManager];
  [v6 startMonitoringDEPPushTokenChangeShouldForce:1];

  v7 = [(MDMServerCore *)self depPushTokenManager];
  [v7 scheduleMandatoryDEPPushTokenSyncWithRandomDelay:0];

  v4[2](v4, 0);
}

- (void)simulateDEPPushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore simulateDEPPushWithCompletion:];
  }

  v6 = [(MDMServerCore *)self depPushTokenManager];
  [v6 simulateDEPPush];

  v4[2](v4, 0);
}

- (void)requestDeviceObliterationWithPreserveDataPlan:(BOOL)a3 disallowProximitySetup:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = DMCLogObjects();
  if (os_log_type_enabled(*(v9 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore requestDeviceObliterationWithPreserveDataPlan:disallowProximitySetup:completionHandler:];
  }

  v10 = [(MDMServerCore *)self jobQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__MDMServerCore_requestDeviceObliterationWithPreserveDataPlan_disallowProximitySetup_completionHandler___block_invoke;
  v12[3] = &unk_27982D108;
  v14 = a3;
  v15 = a4;
  v13 = v8;
  v11 = v8;
  [v10 fromFunction:"-[MDMServerCore requestDeviceObliterationWithPreserveDataPlan:disallowProximitySetup:completionHandler:]" enqueueJob:v12];
}

void __104__MDMServerCore_requestDeviceObliterationWithPreserveDataPlan_disallowProximitySetup_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__MDMServerCore_requestDeviceObliterationWithPreserveDataPlan_disallowProximitySetup_completionHandler___block_invoke_2;
  v7[3] = &unk_27982D0E0;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [MDMObliterationUtilities obliterateDeviceWithPreserveDataPlan:v4 disallowProximitySetup:v5 preObliterationAction:0 completionHander:v7];
}

uint64_t __104__MDMServerCore_requestDeviceObliterationWithPreserveDataPlan_disallowProximitySetup_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)requestReturnToServiceObliterationWithPreserveDataPlan:(BOOL)a3 disallowProximitySetup:(BOOL)a4 mdmProfileData:(id)a5 wifiProfileData:(id)a6 revertToSnapshotName:(id)a7 bootstrapToken:(id)a8 completionHandler:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = DMCLogObjects();
  if (os_log_type_enabled(*(v20 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore requestReturnToServiceObliterationWithPreserveDataPlan:disallowProximitySetup:mdmProfileData:wifiProfileData:revertToSnapshotName:bootstrapToken:completionHandler:];
  }

  v21 = [(MDMServerCore *)self jobQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __180__MDMServerCore_requestReturnToServiceObliterationWithPreserveDataPlan_disallowProximitySetup_mdmProfileData_wifiProfileData_revertToSnapshotName_bootstrapToken_completionHandler___block_invoke;
  v27[3] = &unk_27982D130;
  v33 = a3;
  v34 = a4;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  [v21 fromFunction:"-[MDMServerCore requestReturnToServiceObliterationWithPreserveDataPlan:disallowProximitySetup:mdmProfileData:wifiProfileData:revertToSnapshotName:bootstrapToken:completionHandler:]" enqueueJob:v27];
}

void __180__MDMServerCore_requestReturnToServiceObliterationWithPreserveDataPlan_disallowProximitySetup_mdmProfileData_wifiProfileData_revertToSnapshotName_bootstrapToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __180__MDMServerCore_requestReturnToServiceObliterationWithPreserveDataPlan_disallowProximitySetup_mdmProfileData_wifiProfileData_revertToSnapshotName_bootstrapToken_completionHandler___block_invoke_2;
  v11[3] = &unk_27982D0E0;
  v12 = *(a1 + 64);
  v13 = v3;
  v10 = v3;
  [MDMReturnToServiceUtilities triggerReturnToServiceObliterationWithPreserveDataPlan:v4 disallowProximitySetup:v5 mdmProfileData:v6 wifiProfileData:v7 revertToSnapshotName:v8 bootstrapToken:v9 preObliterationAction:0 completionHandler:v11];
}

uint64_t __180__MDMServerCore_requestReturnToServiceObliterationWithPreserveDataPlan_disallowProximitySetup_mdmProfileData_wifiProfileData_revertToSnapshotName_bootstrapToken_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore requestRRTSCheckInAndValidationWithCompletionHandler:];
  }

  v6 = [(MDMServerCore *)self jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke;
  v8[3] = &unk_27982CFA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fromFunction:"-[MDMServerCore requestRRTSCheckInAndValidationWithCompletionHandler:]" enqueueJob:v8];
}

void __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) checkInQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_27982CF80;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke_3;
  v2[3] = &unk_27982D158;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [MDMReturnToServiceUtilities performRRTSCheckInAndValidationWithCompletionHandler:v2];
}

uint64_t __70__MDMServerCore_requestRRTSCheckInAndValidationWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)generateBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = DMCLogObjects();
  if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore generateBootstrapTokenWithDevicePasscode:completionHandler:];
  }

  [MDMBootstrapTokenUtilities generateBootstrapTokenWithDevicePasscode:v6 completionHandler:v5];
}

- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = DMCLogObjects();
  if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore generateBootstrapTokenWithDevicePasscodeContext:completionHandler:];
  }

  [MDMBootstrapTokenUtilities generateBootstrapTokenWithDevicePasscodeContext:v6 completionHandler:v5];
}

- (void)syncBootstrapTokenToMDMWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMCLogObjects();
  if (os_log_type_enabled(*(v8 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore syncBootstrapTokenToMDMWithToken:completionHandler:];
  }

  v9 = [(MDMServerCore *)self jobQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__MDMServerCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke;
  v12[3] = &unk_27982CF58;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 fromFunction:"-[MDMServerCore syncBootstrapTokenToMDMWithToken:completionHandler:]" enqueueJob:v12];
}

void __68__MDMServerCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _serverHasCapabilityForMessageType:*MEMORY[0x277D24918]])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__MDMServerCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke_176;
    v9[3] = &unk_27982D180;
    v10 = *(a1 + 48);
    v11 = v3;
    [v4 _syncBootstrapTokenToMDMWithToken:v5 retryCount:1 completionHandler:v9];
  }

  else
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDM server doesn't have capability to store incoming bootstrap token.", buf, 2u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) _createServerMissingBootstrapTokenCapabilityError];
    (*(v7 + 16))(v7, v8);

    v3[2](v3);
  }
}

uint64_t __68__MDMServerCore_syncBootstrapTokenToMDMWithToken_completionHandler___block_invoke_176(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_syncBootstrapTokenToMDMWithToken:(id)a3 retryCount:(int64_t)a4 completionHandler:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v22 = *MEMORY[0x277D24790];
  v23[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v11 = [(MDMServerCore *)self networkMonitor];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__MDMServerCore__syncBootstrapTokenToMDMWithToken_retryCount_completionHandler___block_invoke;
  v17[3] = &unk_27982D1D0;
  v12 = a4 == 0;
  v17[4] = self;
  v18 = v10;
  v20 = v9;
  v21 = a4;
  v19 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [v11 waitForNetworkWithTimeout:v12 strict:v17 completionHandler:10.0];

  v16 = *MEMORY[0x277D85DE8];
}

void __80__MDMServerCore__syncBootstrapTokenToMDMWithToken_retryCount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D24918];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__MDMServerCore__syncBootstrapTokenToMDMWithToken_retryCount_completionHandler___block_invoke_2;
  v5[3] = &unk_27982D1A8;
  v8 = *(a1 + 64);
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _sendCheckInRequestAndHandleErrorForMessageType:v2 requestDict:v4 completionHandler:v5];
}

void __80__MDMServerCore__syncBootstrapTokenToMDMWithToken_retryCount_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DMCLogObjects();
  if (!v6)
  {
    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "MDMServerCore: Successfully send bootstrap token to mdm server", &v16, 2u);
    }

    v13 = *(*(a1 + 48) + 16);
    goto LABEL_15;
  }

  v8 = *(v7 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "MDMServerCore: Failed to sync bootstrap token with error: %{public}@.", &v16, 0xCu);
  }

  if (*(a1 + 56) < 1 || ([v6 DMCErrorType], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D03308]), v9, !v10))
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_ERROR, "MDMServerCore: sync bootstrap token request failed with error: %{public}@", &v16, 0xCu);
    }

    v13 = *(*(a1 + 48) + 16);
LABEL_15:
    v13();
    goto LABEL_16;
  }

  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_INFO, "MDMServerCore: Retry syncing bootstrap token...", &v16, 2u);
  }

  [*(a1 + 32) _syncBootstrapTokenToMDMWithToken:*(a1 + 40) retryCount:*(a1 + 56) - 1 completionHandler:*(a1 + 48)];
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscode:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = DMCLogObjects();
  if (os_log_type_enabled(*(v10 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore deleteBootstrapTokenWithToken:devicePasscode:completionHandler:];
  }

  [MDMBootstrapTokenUtilities deleteBootstrapTokenWithToken:v9 devicePasscode:v8 completionHandler:v7];
}

- (void)deleteBootstrapTokenWithToken:(id)a3 devicePasscodeContext:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = DMCLogObjects();
  if (os_log_type_enabled(*(v10 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore deleteBootstrapTokenWithToken:devicePasscodeContext:completionHandler:];
  }

  [MDMBootstrapTokenUtilities deleteBootstrapTokenWithToken:v9 devicePasscodeContext:v8 completionHandler:v7];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMCLogObjects();
  if (os_log_type_enabled(*(v8 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore generateAndSyncBootstrapTokenWithDevicePasscode:completionHandler:];
  }

  v9 = [(MDMServerCore *)self jobQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke;
  v12[3] = &unk_27982CF58;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 fromFunction:"-[MDMServerCore generateAndSyncBootstrapTokenWithDevicePasscode:completionHandler:]" enqueueJob:v12];
}

void __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _serverHasCapabilityForMessageType:*MEMORY[0x277D24918]])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_178;
    v12[3] = &unk_27982D248;
    v14 = *(a1 + 48);
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v6;
    v12[4] = v7;
    v13 = v8;
    [v4 generateBootstrapTokenWithDevicePasscode:v5 completionHandler:v12];
  }

  else
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "MDM server doesn't have capability to store incoming bootstrap token.", buf, 2u);
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) _createServerMissingBootstrapTokenCapabilityError];
    (*(v10 + 16))(v10, 0, v11);

    v3[2](v3);
  }
}

void __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_178(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Failed to create bootstrap token with error: %{public}@", buf, 0xCu);
    }

    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_179;
      v12[3] = &unk_27982D220;
      v13 = 0;
      v14 = v9;
      v15 = v5;
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      [v9 _syncBootstrapTokenToMDMWithToken:v15 retryCount:2 completionHandler:v12];

      goto LABEL_8;
    }

    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "No bootstrap token was created. Continue...", buf, 2u);
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
  (*(*(a1 + 56) + 16))();
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

void __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_179(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(DMCLogObjects() + 8);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to sync bootstrap token with error: %{public}@", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_180;
    v10[3] = &unk_27982D1F8;
    v8 = *(a1 + 56);
    v12 = *(a1 + 64);
    v11 = v3;
    v13 = *(a1 + 72);
    [v6 deleteBootstrapTokenWithToken:v7 devicePasscode:v8 completionHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Bootstrap token synced.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __83__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscode_completionHandler___block_invoke_180(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to delete bootstrap token with error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = a1[4];
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DMCLogObjects();
  if (os_log_type_enabled(*(v8 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore generateAndSyncBootstrapTokenWithDevicePasscodeContext:completionHandler:];
  }

  v9 = [(MDMServerCore *)self jobQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke;
  v12[3] = &unk_27982CF58;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 fromFunction:"-[MDMServerCore generateAndSyncBootstrapTokenWithDevicePasscodeContext:completionHandler:]" enqueueJob:v12];
}

void __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _serverHasCapabilityForMessageType:*MEMORY[0x277D24918]])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_182;
    v12[3] = &unk_27982D248;
    v14 = *(a1 + 48);
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v6;
    v12[4] = v7;
    v13 = v8;
    [v4 generateBootstrapTokenWithDevicePasscodeContext:v5 completionHandler:v12];
  }

  else
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "MDM server doesn't have capability to store incoming bootstrap token.", buf, 2u);
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) _createServerMissingBootstrapTokenCapabilityError];
    (*(v10 + 16))(v10, 0, v11);

    v3[2](v3);
  }
}

void __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_182(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D03478]])
    {
      v9 = [v7 code];

      if (v9 == 66001)
      {
        v10 = *DMCLogObjects();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "Bootstrap user exists.";
LABEL_14:
          _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v13 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_ERROR, "Failed to create bootstrap token with error: %{public}@", buf, 0xCu);
    }

    v14 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  if (!v5)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "No bootstrap token was created. Continue...";
      goto LABEL_14;
    }

LABEL_15:
    v14 = *(*(a1 + 48) + 16);
LABEL_16:
    v14();
    (*(*(a1 + 56) + 16))();
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_183;
  v16[3] = &unk_27982D220;
  v17 = 0;
  v18 = v12;
  v19 = v5;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  [v12 _syncBootstrapTokenToMDMWithToken:v19 retryCount:2 completionHandler:v16];

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

void __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_183(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(DMCLogObjects() + 8);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to sync bootstrap token with error: %{public}@", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_184;
    v10[3] = &unk_27982D1F8;
    v8 = *(a1 + 56);
    v12 = *(a1 + 64);
    v11 = v3;
    v13 = *(a1 + 72);
    [v6 deleteBootstrapTokenWithToken:v7 devicePasscodeContext:v8 completionHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Bootstrap token synced.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __90__MDMServerCore_generateAndSyncBootstrapTokenWithDevicePasscodeContext_completionHandler___block_invoke_184(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Failed to delete bootstrap token with error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = a1[4];
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)blockMDMCommandsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore blockMDMCommandsWithCompletion:];
  }

  v6 = [(MDMServerCore *)self jobQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke;
  v8[3] = &unk_27982CFA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fromFunction:"-[MDMServerCore blockMDMCommandsWithCompletion:]" enqueueJob:v8];
}

void __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke_2;
  block[3] = &unk_27982BB40;
  block[4] = *(a1 + 32);
  block[5] = &v14;
  dispatch_async_and_wait(v4, block);

  if (*(v15 + 24) == 1)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_FAULT, "MDMServerCore: MDM commands is being blocked already.", buf, 2u);
    }

    v6 = *(a1 + 40);
    v7 = MEMORY[0x277CCA9B8];
    v8 = DMCErrorArray();
    v9 = [v7 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12010 descriptionArray:v8 errorType:{*MEMORY[0x277D03310], 0}];
    (*(v6 + 16))(v6, v9);
  }

  else
  {
    v10 = [*(a1 + 32) memberQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke_188;
    v11[3] = &unk_27982BA78;
    v11[4] = *(a1 + 32);
    dispatch_async(v10, v11);

    (*(*(a1 + 40) + 16))();
  }

  v3[2](v3);
  _Block_object_dispose(&v14, 8);
}

uint64_t __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsBlockingMDMCommands];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __48__MDMServerCore_blockMDMCommandsWithCompletion___block_invoke_188(uint64_t a1)
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMServerCore: Blocking future MDM commands", v4, 2u);
  }

  return [*(a1 + 32) setMemberQueueIsBlockingMDMCommands:1];
}

- (void)unblockMDMCommandsWithCompletion:(id)a3
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*(v4 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore unblockMDMCommandsWithCompletion:];
  }

  v5 = [(MDMServerCore *)self jobQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MDMServerCore_unblockMDMCommandsWithCompletion___block_invoke;
  v6[3] = &unk_27982CCB0;
  v6[4] = self;
  [v5 fromFunction:"-[MDMServerCore unblockMDMCommandsWithCompletion:]" enqueueJob:v6];

  [(MDMServerCore *)self retryNotNowWithCompletion:&__block_literal_global_191];
}

void __50__MDMServerCore_unblockMDMCommandsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MDMServerCore_unblockMDMCommandsWithCompletion___block_invoke_2;
  block[3] = &unk_27982BA78;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v5, block);

  v4[2](v4);
}

uint64_t __50__MDMServerCore_unblockMDMCommandsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMServerCore: Unblocking future MDM commands", v4, 2u);
  }

  return [*(a1 + 32) setMemberQueueIsBlockingMDMCommands:0];
}

void __50__MDMServerCore_unblockMDMCommandsWithCompletion___block_invoke_189(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[MDMServerCore unblockMDMCommandsWithCompletion:]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "%s retry NotNow completed. Error %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DMCLogObjects();
  if (os_log_type_enabled(*(v14 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore getWatchPairingTokenForPhoneID:watchID:securityToken:completionHandler:];
  }

  v15 = [(MDMServerCore *)self jobQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__MDMServerCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke;
  v20[3] = &unk_27982D298;
  v23 = v11;
  v24 = v13;
  v20[4] = self;
  v21 = v12;
  v22 = v10;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  v19 = v13;
  [v15 fromFunction:"-[MDMServerCore getWatchPairingTokenForPhoneID:watchID:securityToken:completionHandler:]" enqueueJob:v20];
}

void __88__MDMServerCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) _serverHasCapabilityForMessageType:*MEMORY[0x277D24908]])
  {
    v4 = *MEMORY[0x277D24DA8];
    v20 = *(a1 + 40);
    v5 = *MEMORY[0x277D24DA0];
    v19[0] = v4;
    v19[1] = v5;
    v19[2] = *MEMORY[0x277D24DB0];
    v21 = *(a1 + 56);
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:v19 count:3];
    v7 = *MEMORY[0x277D24DC8];
    v8 = *MEMORY[0x277D24D98];
    v17[0] = *MEMORY[0x277D24DC0];
    v17[1] = v8;
    v18[0] = v7;
    v18[1] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v10 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__MDMServerCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke_2;
    v14[3] = &unk_27982D270;
    v15 = *(a1 + 64);
    v16 = v3;
    [v10 _makeGetTokenRequestWithRequestDict:v9 completionHandler:v14];
  }

  else
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 32) _createTokenUnsupportedError];
    (*(v11 + 16))(v11, 0, v12);

    v3[2](v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __88__MDMServerCore_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore getOrgTokenForMAIDWithCompletionHandler:];
  }

  if ([(MDMServerCore *)self _serverHasCapabilityForMessageType:*MEMORY[0x277D24908]])
  {
    v10 = *MEMORY[0x277D24DC0];
    v11[0] = *MEMORY[0x277D24DB8];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__MDMServerCore_getOrgTokenForMAIDWithCompletionHandler___block_invoke;
    v8[3] = &unk_27982D2C0;
    v9 = v4;
    [(MDMServerCore *)self _makeGetTokenRequestWithRequestDict:v6 completionHandler:v8];
  }

  else
  {
    v6 = [(MDMServerCore *)self _createTokenUnsupportedError];
    (*(v4 + 2))(v4, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __57__MDMServerCore_getOrgTokenForMAIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 logErrorEventForTopic:*MEMORY[0x277D03320] reason:@"Failed to get org token" error:v5 details:0];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enablePushWakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore enablePushWakeWithCompletion:];
  }

  v6 = [(MDMServerCore *)self pushServiceManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__MDMServerCore_enablePushWakeWithCompletion___block_invoke;
  v8[3] = &unk_27982CC88;
  v9 = v4;
  v7 = v4;
  [v6 enablePushWakeWithCompletionHandler:v8];
}

- (void)disablePushWakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*(v5 + 8), OS_LOG_TYPE_DEBUG))
  {
    [MDMServerCore disablePushWakeWithCompletion:];
  }

  v6 = [(MDMServerCore *)self pushServiceManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__MDMServerCore_disablePushWakeWithCompletion___block_invoke;
  v8[3] = &unk_27982CC88;
  v9 = v4;
  v7 = v4;
  [v6 disablePushWakeWithCompletionHandler:v8];
}

- (BOOL)isAppInstallBlocked
{
  v2 = [(MDMServerCore *)self appInstallBlocker];
  v3 = [v2 isAppInstallBlocked];

  return v3;
}

- (void)blockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self appInstallBlocker];
  [v5 blockAppInstallsWithCompletion:v4];
}

- (void)unblockAppInstallsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self appInstallBlocker];
  [v5 unblockAppInstallsWithCompletion:v4];
}

- (void)requestInstallOfAppsInRestoreWithCompletion:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "request install, received request to install all pending applications", buf, 2u);
  }

  *buf = 0;
  v7 = buf;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__MDMServerCore_requestInstallOfAppsInRestoreWithCompletion___block_invoke;
  v5[3] = &unk_27982D2E8;
  v5[4] = buf;
  [MEMORY[0x277D1C1C0] enumerateCoordinatorsUsingBlock:v5];
  if (v3)
  {
    v3[2](v3, *(v7 + 5));
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __61__MDMServerCore_requestInstallOfAppsInRestoreWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 | v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v41 = v5;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "request install, enumerating coordinators, coordinator: %{public}@", buf, 0xCu);
    }

    if (v6)
    {
      v9 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v6;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "request install, unable to enumerate install coordinators: %{public}@", buf, 0xCu);
      }

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      goto LABEL_10;
    }

    v13 = [v5 bundleID];
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v13;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "request install, enumerating coordinators, coordinator for bundle ID: %{public}@", buf, 0xCu);
    }

    if (([v5 conformsToProtocol:&unk_286867978] & 1) == 0)
    {
      v21 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, "request install, enumerating coordinators, coordinator is not IXCoordinatorWithAppAssetPromise", buf, 2u);
      }

      goto LABEL_42;
    }

    v15 = v5;
    v39 = 0;
    v16 = [v15 appAssetPromiseResponsibleClientWithError:&v39];
    v17 = v39;
    v18 = *(DMCLogObjects() + 8);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16 != 23)
    {
      if (v16)
      {
        if (v19)
        {
          *buf = 134217984;
          v41 = v16;
          v20 = "request install, enumerating coordinators, coordinator does not belong to Device Management, client: %lu";
          goto LABEL_33;
        }
      }

      else if (v19)
      {
        *buf = 138543362;
        v41 = v17;
        v20 = "request install, unable to determine client for coordinator, skipping: %{public}@";
LABEL_33:
        _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      }

LABEL_41:

LABEL_42:
      v10 = 1;
      goto LABEL_11;
    }

    if (v19)
    {
      *buf = 138543362;
      v41 = v13;
      _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "request install, unable to ask MDM server to install app %{public}@, canceling install coordinator", buf, 0xCu);
    }

    v22 = [objc_alloc(MEMORY[0x277D1C1A8]) initWithName:v13 client:23 diskSpaceNeeded:0];
    v23 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v22;
      _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_DEFAULT, "request install, enumerating coordinators, promise created: %{public}@", buf, 0xCu);
    }

    v38 = 0;
    v24 = [v15 setAppAssetPromise:v22 error:&v38];
    v25 = v38;
    v26 = DMCLogObjects();
    v27 = *(v26 + 8);
    if ((v24 & 1) == 0)
    {
      if (os_log_type_enabled(*(v26 + 8), OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v25;
        _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_ERROR, "request install, unable to set app asset promise: %{public}@", buf, 0xCu);
      }

      goto LABEL_40;
    }

    v36 = v25;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_DEFAULT, "request install, enumerating coordinators, promise set", buf, 2u);
    }

    v28 = IXCreateUserPresentableError();
    v37 = 0;
    v29 = [v22 cancelForReason:v28 client:23 error:&v37];
    v30 = v37;
    v31 = *(DMCLogObjects() + 8);
    if (v29)
    {
      v25 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "request install, enumerating coordinators, promise canceled";
        v33 = v31;
        v34 = OS_LOG_TYPE_DEFAULT;
        v35 = 2;
LABEL_38:
        _os_log_impl(&dword_2561F5000, v33, v34, v32, buf, v35);
      }
    }

    else
    {
      v25 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v30;
        v32 = "request install, unable to cancel app asset promise: %{public}@";
        v33 = v31;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = 12;
        goto LABEL_38;
      }
    }

LABEL_40:
    goto LABEL_41;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "request install, enumerating coordinators, enumeration done", buf, 2u);
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)getAssertionDescriptionsWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277D035A0];
    v5 = a3;
    v6 = [v4 assertionDescriptions];
    (*(a3 + 2))(v5, v6, 0);
  }
}

- (BOOL)_readConfigurationOutError:(id *)a3 isUproot:(BOOL)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v7 = [(MDMServerCore *)self memberQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__MDMServerCore__readConfigurationOutError_isUproot___block_invoke;
  v10[3] = &unk_27982D310;
  v10[4] = self;
  v10[5] = &v18;
  v11 = a4;
  v10[6] = &v12;
  dispatch_async_and_wait(v7, v10);

  if (a3 && (v19[3] & 1) == 0)
  {
    *a3 = v13[5];
  }

  if (![(MDMServerCore *)self channelType])
  {
    [(MDMServerCore *)self _pollOrScheduleNextPollForHRN];
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __53__MDMServerCore__readConfigurationOutError_isUproot___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _memberQueueForgetCurrentConfiguration];
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  [v2 refreshDetailsFromDisk];

  v3 = MEMORY[0x277CBEAC0];
  v4 = [*(a1 + 32) _mdmFilePathForChannelType:0];
  v5 = [v3 DMCDictionaryFromFile:v4];

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _memberQueueParseMDMConfigurationDict:v5];
  [*(a1 + 32) _memberQueueSetupAPSConnectionIfNeeeded:*(a1 + 56) valid:*(*(*(a1 + 40) + 8) + 24)];
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = *(DMCLogObjects() + 8);
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_INFO, "Valid MDM configuration found.", &v17, 2u);
    }

    [*(a1 + 32) _memberQueueStartListeningForInterestingEvents];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "No valid MDM installation found. MDM will not listen to push messages. Error: %{public}@", &v17, 0xCu);
    }

    [*(a1 + 32) _memberQueueStopListeningForInterestingEvents];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [*(a1 + 32) _mdmOutstandingActivitiesFilePathForChannelType:{objc_msgSend(*(a1 + 32), "channelType")}];
    [v9 removeItemAtPath:v10 error:0];

    v11 = [*(a1 + 32) pushServiceManager];
    [v11 stopListeningForAllMDMPushMessagesWithEnvironment:0];

    v12 = [*(a1 + 32) pushServiceManager];
    [v12 stopListeningForAllMDMPushMessagesWithEnvironment:1];

    [*(a1 + 32) _memberQueueForgetCurrentConfiguration];
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = [*(a1 + 32) _createBadInstallationError];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  [*(a1 + 32) setMemberQueueIsMDMConfigurationValid:*(*(*(a1 + 40) + 8) + 24)];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_memberQueueForgetCurrentConfiguration
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMDServer: memberQueueForgetCurrentConfiguration.", v4, 2u);
  }

  [(MDMServerCore *)self setMemberQueueIsMDMConfigurationValid:0];
  if ([(MDMServerCore *)self memberQueueIdentity])
  {
    CFRelease([(MDMServerCore *)self memberQueueIdentity]);
    [(MDMServerCore *)self setMemberQueueIdentity:0];
  }

  [(MDMServerCore *)self setMemberQueueAccessRights:0];
  [(MDMServerCore *)self setMemberQueueCheckInPinnedSecCertificateRefs:0];
  [(MDMServerCore *)self setMemberQueueCheckInURL:0];
  [(MDMServerCore *)self setMemberQueueEnrollmentID:0];
  [(MDMServerCore *)self setMemberQueueIsMDMConfigurationValid:0];
  [(MDMServerCore *)self setMemberQueueLastPollingAttempt:0];
  [(MDMServerCore *)self setMemberQueueLastPollingAttemptMonotonicTime:0];
  [(MDMServerCore *)self setMemberQueueLastPollingAttemptRTCResetCount:0];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccess:0];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccessMonotonicTime:0];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccessRTCResetCount:0];
  [(MDMServerCore *)self setMemberQueueManagingProfileIdentifier:0];
  [(MDMServerCore *)self setMemberQueueMDMOptions:0];
  [(MDMServerCore *)self setMemberQueueOrganizationInfo:0];
  [(MDMServerCore *)self setMemberQueuePinningRevocationCheckRequired:0];
  [(MDMServerCore *)self setMemberQueuePollingInterval:0];
  [(MDMServerCore *)self setMemberQueuePushMagic:0];
  [(MDMServerCore *)self setMemberQueuePushToken:0];
  [(MDMServerCore *)self setMemberQueueServerCapabilities:0];
  [(MDMServerCore *)self setMemberQueueServerPinnedSecCertificateRefs:0];
  [(MDMServerCore *)self setMemberQueueServerURL:0];
  [(MDMServerCore *)self setMemberQueueSignMessage:0];
  [(MDMServerCore *)self setMemberQueueTopic:0];
  [(MDMServerCore *)self setMemberQueueUseDevelopmentAPNS:0];
  [(MDMServerCore *)self setMemberQueueUseEnrollmentID:0];
}

- (BOOL)_memberQueueParseMDMConfigurationDict:(id)a3
{
  v162 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v66 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v68 = *MEMORY[0x277D032F8];
    v69 = v66;
    v70 = v67;
    v71 = 12079;
LABEL_35:
    v73 = [v69 DMCErrorWithDomain:v70 code:v71 descriptionArray:v11 errorType:{v68, 0}];
    v6 = 0;
    goto LABEL_85;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v72 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277D03480];
    v11 = DMCErrorArray();
    v68 = *MEMORY[0x277D032F8];
    v69 = v72;
    v70 = v67;
    v71 = 12011;
    goto LABEL_35;
  }

  v5 = *MEMORY[0x277D24808];
  v6 = [v4 objectForKey:*MEMORY[0x277D24808]];
  if (!v6)
  {
    goto LABEL_83;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_83;
  }

  v7 = MEMORY[0x277D03520];
  v8 = [MEMORY[0x277D24648] sharedConfiguration];
  v9 = [v8 personaID];
  -[MDMServerCore setMemberQueueIdentity:](self, "setMemberQueueIdentity:", [v7 copyIdentityWithPersistentID:v6 useSystemKeychain:1 enforcePersonalPersona:v9 != 0]);

  if (![(MDMServerCore *)self memberQueueIdentity])
  {
    v74 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277D03480];
    v158 = 0;
    v11 = DMCErrorArray();
    v75 = *MEMORY[0x277D032F8];
    v76 = v74;
    v77 = v67;
    v78 = 12016;
LABEL_84:
    v73 = [v76 DMCErrorWithDomain:v77 code:v78 descriptionArray:v11 errorType:{v75, v158, v159}];
    goto LABEL_85;
  }

  v10 = *MEMORY[0x277D24CE8];
  v11 = [v4 objectForKey:*MEMORY[0x277D24CE8]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  v12 = objc_opt_class();
  v13 = [MEMORY[0x277D24648] sharedConfiguration];
  v14 = [v13 personaID];
  v15 = [v12 copyCertificatesWithPersistentIDs:v11 useSystemKeychain:1 enforcePersonalPersona:v14 != 0];
  [(MDMServerCore *)self setMemberQueueServerPinnedSecCertificateRefs:v15];

  v10 = *MEMORY[0x277D247A0];
  v11 = [v4 objectForKey:*MEMORY[0x277D247A0]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  v16 = objc_opt_class();
  v17 = [MEMORY[0x277D24648] sharedConfiguration];
  v18 = [v17 personaID];
  v19 = [v16 copyCertificatesWithPersistentIDs:v11 useSystemKeychain:1 enforcePersonalPersona:v18 != 0];
  [(MDMServerCore *)self setMemberQueueCheckInPinnedSecCertificateRefs:v19];

  v10 = *MEMORY[0x277D24BF0];
  v11 = [v4 objectForKey:*MEMORY[0x277D24BF0]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  -[MDMServerCore setMemberQueuePinningRevocationCheckRequired:](self, "setMemberQueuePinningRevocationCheckRequired:", [v11 BOOLValue]);

  v5 = *MEMORY[0x277D248B0];
  v20 = [v4 objectForKey:*MEMORY[0x277D248B0]];
  [(MDMServerCore *)self setMemberQueueManagingProfileIdentifier:v20];

  v21 = [(MDMServerCore *)self memberQueueManagingProfileIdentifier];
  if (!v21 || (v22 = v21, [(MDMServerCore *)self memberQueueManagingProfileIdentifier], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, v22, (isKindOfClass & 1) == 0))
  {
LABEL_83:
    v141 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277D03480];
    v158 = v5;
    v159 = 0;
    v11 = DMCErrorArray();
    v75 = *MEMORY[0x277D032F8];
    v76 = v141;
    v77 = v67;
    v78 = 12011;
    goto LABEL_84;
  }

  v25 = [MEMORY[0x277D03498] sharedInstance];
  v26 = [v25 hrnMode];

  if (v26 == 2)
  {
    v5 = *MEMORY[0x277D24BF8];
    v84 = [v4 objectForKey:*MEMORY[0x277D24BF8]];
    [(MDMServerCore *)self setMemberQueuePollingInterval:v84];

    v85 = [(MDMServerCore *)self memberQueuePollingInterval];
    if (!v85)
    {
      goto LABEL_83;
    }

    v86 = v85;
    v87 = [(MDMServerCore *)self memberQueuePollingInterval];
    objc_opt_class();
    v88 = objc_opt_isKindOfClass();

    if ((v88 & 1) == 0)
    {
      goto LABEL_83;
    }

    v5 = *MEMORY[0x277D24810];
    v89 = [v4 objectForKey:*MEMORY[0x277D24810]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttempt:v89];

    v90 = [(MDMServerCore *)self memberQueueLastPollingAttempt];
    if (v90)
    {
      v91 = v90;
      v92 = [(MDMServerCore *)self memberQueueLastPollingAttempt];
      objc_opt_class();
      v93 = objc_opt_isKindOfClass();

      if ((v93 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24828];
    v94 = [v4 objectForKey:*MEMORY[0x277D24828]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccess:v94];

    v95 = [(MDMServerCore *)self memberQueueLastPollingSuccess];
    if (v95)
    {
      v96 = v95;
      v97 = [(MDMServerCore *)self memberQueueLastPollingSuccess];
      objc_opt_class();
      v98 = objc_opt_isKindOfClass();

      if ((v98 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24818];
    v99 = [v4 objectForKey:*MEMORY[0x277D24818]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttemptMonotonicTime:v99];

    v100 = [(MDMServerCore *)self memberQueueLastPollingAttemptMonotonicTime];
    if (v100)
    {
      v101 = v100;
      v102 = [(MDMServerCore *)self memberQueueLastPollingAttemptMonotonicTime];
      objc_opt_class();
      v103 = objc_opt_isKindOfClass();

      if ((v103 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24820];
    v104 = [v4 objectForKey:*MEMORY[0x277D24820]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttemptRTCResetCount:v104];

    v105 = [(MDMServerCore *)self memberQueueLastPollingAttemptRTCResetCount];
    if (v105)
    {
      v106 = v105;
      v107 = [(MDMServerCore *)self memberQueueLastPollingAttemptRTCResetCount];
      objc_opt_class();
      v108 = objc_opt_isKindOfClass();

      if ((v108 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24830];
    v109 = [v4 objectForKey:*MEMORY[0x277D24830]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccessMonotonicTime:v109];

    v110 = [(MDMServerCore *)self memberQueueLastPollingSuccessMonotonicTime];
    if (v110)
    {
      v111 = v110;
      v112 = [(MDMServerCore *)self memberQueueLastPollingSuccessMonotonicTime];
      objc_opt_class();
      v113 = objc_opt_isKindOfClass();

      if ((v113 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24838];
    v114 = [v4 objectForKey:*MEMORY[0x277D24838]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccessRTCResetCount:v114];

    v63 = [(MDMServerCore *)self memberQueueLastPollingSuccessRTCResetCount];
    if (!v63)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v26 == 1)
    {
      v5 = *MEMORY[0x277D24DD0];
      v79 = [v4 objectForKey:*MEMORY[0x277D24DD0]];
      [(MDMServerCore *)self setMemberQueueTopic:v79];

      v80 = [(MDMServerCore *)self memberQueueTopic];
      if (!v80)
      {
        goto LABEL_83;
      }

      v64 = v80;
      v65 = [(MDMServerCore *)self memberQueueTopic];
      goto LABEL_39;
    }

    if (v26)
    {
      goto LABEL_40;
    }

    v5 = *MEMORY[0x277D24DD0];
    v27 = [v4 objectForKey:*MEMORY[0x277D24DD0]];
    [(MDMServerCore *)self setMemberQueueTopic:v27];

    v28 = [(MDMServerCore *)self memberQueueTopic];
    if (v28)
    {
      v29 = v28;
      v30 = [(MDMServerCore *)self memberQueueTopic];
      objc_opt_class();
      v31 = objc_opt_isKindOfClass();

      if ((v31 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24BF8];
    v32 = [v4 objectForKey:*MEMORY[0x277D24BF8]];
    [(MDMServerCore *)self setMemberQueuePollingInterval:v32];

    v33 = [(MDMServerCore *)self memberQueuePollingInterval];
    if (v33)
    {
      v34 = v33;
      v35 = [(MDMServerCore *)self memberQueuePollingInterval];
      objc_opt_class();
      v36 = objc_opt_isKindOfClass();

      if ((v36 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24810];
    v37 = [v4 objectForKey:*MEMORY[0x277D24810]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttempt:v37];

    v38 = [(MDMServerCore *)self memberQueueLastPollingAttempt];
    if (v38)
    {
      v39 = v38;
      v40 = [(MDMServerCore *)self memberQueueLastPollingAttempt];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if ((v41 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24828];
    v42 = [v4 objectForKey:*MEMORY[0x277D24828]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccess:v42];

    v43 = [(MDMServerCore *)self memberQueueLastPollingSuccess];
    if (v43)
    {
      v44 = v43;
      v45 = [(MDMServerCore *)self memberQueueLastPollingSuccess];
      objc_opt_class();
      v46 = objc_opt_isKindOfClass();

      if ((v46 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24818];
    v47 = [v4 objectForKey:*MEMORY[0x277D24818]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttemptMonotonicTime:v47];

    v48 = [(MDMServerCore *)self memberQueueLastPollingAttemptMonotonicTime];
    if (v48)
    {
      v49 = v48;
      v50 = [(MDMServerCore *)self memberQueueLastPollingAttemptMonotonicTime];
      objc_opt_class();
      v51 = objc_opt_isKindOfClass();

      if ((v51 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24820];
    v52 = [v4 objectForKey:*MEMORY[0x277D24820]];
    [(MDMServerCore *)self setMemberQueueLastPollingAttemptRTCResetCount:v52];

    v53 = [(MDMServerCore *)self memberQueueLastPollingAttemptRTCResetCount];
    if (v53)
    {
      v54 = v53;
      v55 = [(MDMServerCore *)self memberQueueLastPollingAttemptRTCResetCount];
      objc_opt_class();
      v56 = objc_opt_isKindOfClass();

      if ((v56 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24830];
    v57 = [v4 objectForKey:*MEMORY[0x277D24830]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccessMonotonicTime:v57];

    v58 = [(MDMServerCore *)self memberQueueLastPollingSuccessMonotonicTime];
    if (v58)
    {
      v59 = v58;
      v60 = [(MDMServerCore *)self memberQueueLastPollingSuccessMonotonicTime];
      objc_opt_class();
      v61 = objc_opt_isKindOfClass();

      if ((v61 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v5 = *MEMORY[0x277D24838];
    v62 = [v4 objectForKey:*MEMORY[0x277D24838]];
    [(MDMServerCore *)self setMemberQueueLastPollingSuccessRTCResetCount:v62];

    v63 = [(MDMServerCore *)self memberQueueLastPollingSuccessRTCResetCount];
    if (!v63)
    {
      goto LABEL_40;
    }
  }

  v64 = v63;
  v65 = [(MDMServerCore *)self memberQueueLastPollingSuccessRTCResetCount];
LABEL_39:
  objc_opt_class();
  v81 = objc_opt_isKindOfClass();

  if ((v81 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_40:
  v10 = *MEMORY[0x277D24CF0];
  v11 = [v4 objectForKey:*MEMORY[0x277D24CF0]];
  if (!v11)
  {
    goto LABEL_97;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_97;
  }

  v82 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
  [(MDMServerCore *)self setMemberQueueServerURL:v82];

  v10 = *MEMORY[0x277D247A8];
  v11 = [v4 objectForKey:*MEMORY[0x277D247A8]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }

    v83 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    [(MDMServerCore *)self setMemberQueueCheckInURL:v83];
  }

  else
  {
    v83 = [(MDMServerCore *)self memberQueueServerURL];
    v115 = [v83 copy];
    [(MDMServerCore *)self setMemberQueueCheckInURL:v115];
  }

  v10 = *MEMORY[0x277D246B0];
  v11 = [v4 objectForKey:*MEMORY[0x277D246B0]];
  if (!v11)
  {
    goto LABEL_97;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_97;
  }

  -[MDMServerCore setMemberQueueAccessRights:](self, "setMemberQueueAccessRights:", [v11 unsignedIntValue]);

  v10 = *MEMORY[0x277D24DE0];
  v11 = [v4 objectForKey:*MEMORY[0x277D24DE0]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  -[MDMServerCore setMemberQueueUseDevelopmentAPNS:](self, "setMemberQueueUseDevelopmentAPNS:", [v11 BOOLValue]);

  v10 = *MEMORY[0x277D24D80];
  v11 = [v4 objectForKey:*MEMORY[0x277D24D80]];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  -[MDMServerCore setMemberQueueSignMessage:](self, "setMemberQueueSignMessage:", [v11 BOOLValue]);

  v5 = *MEMORY[0x277D24CA0];
  v116 = [v4 objectForKey:*MEMORY[0x277D24CA0]];
  [(MDMServerCore *)self setMemberQueuePushMagic:v116];

  v117 = [(MDMServerCore *)self memberQueuePushMagic];
  if (!v117)
  {
    goto LABEL_83;
  }

  v118 = v117;
  v119 = [(MDMServerCore *)self memberQueuePushMagic];
  objc_opt_class();
  v120 = objc_opt_isKindOfClass();

  if ((v120 & 1) == 0)
  {
    goto LABEL_83;
  }

  v5 = *MEMORY[0x277D24978];
  v121 = [v4 objectForKey:*MEMORY[0x277D24978]];
  [(MDMServerCore *)self setMemberQueueOrganizationInfo:v121];

  v122 = [(MDMServerCore *)self memberQueueOrganizationInfo];
  if (v122)
  {
    v123 = v122;
    v124 = [(MDMServerCore *)self memberQueueOrganizationInfo];
    objc_opt_class();
    v125 = objc_opt_isKindOfClass();

    if ((v125 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  v5 = *MEMORY[0x277D24970];
  v126 = [v4 objectForKey:*MEMORY[0x277D24970]];
  [(MDMServerCore *)self setMemberQueueMDMOptions:v126];

  v127 = [(MDMServerCore *)self memberQueueMDMOptions];
  if (v127)
  {
    v128 = v127;
    v129 = [(MDMServerCore *)self memberQueueMDMOptions];
    objc_opt_class();
    v130 = objc_opt_isKindOfClass();

    if ((v130 & 1) == 0)
    {
      goto LABEL_83;
    }
  }

  v10 = *MEMORY[0x277D24DF8];
  v11 = [v4 objectForKey:*MEMORY[0x277D24DF8]];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    -[MDMServerCore setMemberQueueUseEnrollmentID:](self, "setMemberQueueUseEnrollmentID:", [v11 BOOLValue]);

    v5 = *MEMORY[0x277D247C0];
    v131 = [v4 objectForKey:*MEMORY[0x277D247C0]];
    [(MDMServerCore *)self setMemberQueueEnrollmentID:v131];

    v132 = [(MDMServerCore *)self memberQueueEnrollmentID];
    if (!v132 || (v133 = v132, [(MDMServerCore *)self memberQueueEnrollmentID], v134 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v135 = objc_opt_isKindOfClass(), v134, v133, (v135 & 1) != 0))
    {
      v5 = *MEMORY[0x277D24CE0];
      v136 = [v4 objectForKey:*MEMORY[0x277D24CE0]];
      [(MDMServerCore *)self setMemberQueueServerCapabilities:v136];

      v137 = [(MDMServerCore *)self memberQueueServerCapabilities];
      if (!v137 || (v136 = v137, [(MDMServerCore *)self memberQueueServerCapabilities], v138 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v139 = objc_opt_isKindOfClass(), v138, v136, (v139 & 1) != 0))
      {
        if ([(MDMServerCore *)self channelType]!= 1)
        {
LABEL_102:
          v150 = 1;
          goto LABEL_96;
        }

        v140 = [MEMORY[0x277D03538] isSharediPad];
        if (v140)
        {
          v136 = [(MDMServerCore *)self memberQueueServerCapabilities];
          if (([v136 containsObject:*MEMORY[0x277D24BE8]] & 1) == 0)
          {

LABEL_104:
            v157 = MEMORY[0x277CCA9B8];
            v67 = *MEMORY[0x277D03480];
            v158 = 0;
            v11 = DMCErrorArray();
            v75 = *MEMORY[0x277D032F8];
            v76 = v157;
            v77 = v67;
            v78 = 12076;
            goto LABEL_84;
          }

          if ([MEMORY[0x277D03538] isSharediPad])
          {

            goto LABEL_102;
          }
        }

        else if ([MEMORY[0x277D03538] isSharediPad])
        {
          goto LABEL_102;
        }

        v155 = [(MDMServerCore *)self memberQueueServerCapabilities];
        v156 = [v155 containsObject:*MEMORY[0x277D24DF0]];

        if (v140)
        {
        }

        if (v156)
        {
          goto LABEL_102;
        }

        goto LABEL_104;
      }
    }

    goto LABEL_83;
  }

LABEL_97:
  v153 = MEMORY[0x277CCA9B8];
  v67 = *MEMORY[0x277D03480];
  v154 = DMCErrorArray();
  v73 = [v153 DMCErrorWithDomain:v67 code:12011 descriptionArray:v154 errorType:{*MEMORY[0x277D032F8], v10, 0}];

LABEL_85:
  if (v73)
  {
    v142 = [v73 domain];
    if ([v142 isEqualToString:v67])
    {
      v143 = [v73 code];

      if (v143 == 12079)
      {
        v144 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v145 = "No MDM installation found";
          v146 = v144;
          v147 = OS_LOG_TYPE_DEFAULT;
          v148 = 2;
LABEL_93:
          _os_log_impl(&dword_2561F5000, v146, v147, v145, buf, v148);
          goto LABEL_94;
        }

        goto LABEL_94;
      }
    }

    else
    {
    }

    v149 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v161 = v73;
      v145 = "Failed to parse MDM configuration: %{public}@";
      v146 = v149;
      v147 = OS_LOG_TYPE_ERROR;
      v148 = 12;
      goto LABEL_93;
    }

LABEL_94:
  }

  v150 = 0;
LABEL_96:

  v151 = *MEMORY[0x277D85DE8];
  return v150;
}

- (void)_memberQueueUpdateOrganizationInfo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D030F0]];
  v6 = [MEMORY[0x277D24648] sharedConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__MDMServerCore__memberQueueUpdateOrganizationInfo___block_invoke;
  v14[3] = &unk_27982C098;
  v7 = v4;
  v15 = v7;
  v13 = 0;
  [v6 updateMDMConfigurationWithUpdateBlock:v14 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "MDMServerCore: Failed to update organization info with error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [(MDMServerCore *)self setMemberQueueOrganizationInfo:v7];
    if (v5)
    {
      v10 = [v6 rmAccountID];
      v11 = [v6 personaID];
      [(MDMServerCore *)self _changeOrganizationNameForRMAccountIdentifier:v10 personaID:v11 organizationName:v5];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)organizationInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MDMServerCore_organizationInfo__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__MDMServerCore_organizationInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueOrganizationInfo];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setOrganizationInfo:(id)a3
{
  v4 = [a3 copy];
  v5 = [(MDMServerCore *)self memberQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MDMServerCore_setOrganizationInfo___block_invoke;
  v7[3] = &unk_27982BAC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__MDMServerCore_setOrganizationInfo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = [*(a1 + 32) _mdmFilePathForChannelType:0];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  if (v4)
  {
    [*(a1 + 32) _memberQueueUpdateOrganizationInfo:*(a1 + 40)];
    MDMSendManagingOrgInfoChangedNotification();
  }
}

- (NSDictionary)MDMOptions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__MDMServerCore_MDMOptions__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__MDMServerCore_MDMOptions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueMDMOptions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setMDMOptions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  v5 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MDMServerCore_setMDMOptions___block_invoke;
  block[3] = &unk_27982BAC8;
  v6 = v4;
  v26 = v6;
  v27 = self;
  dispatch_barrier_async(v5, block);

  v7 = *MEMORY[0x277D24968];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D24968]];
  v9 = [v8 intValue];

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = *(DMCLogObjects() + 8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9 < 1)
  {
    v13 = *MEMORY[0x277CBED10];
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v29 = v13;
    v14 = "SERVER CORE: CONFIG IS BEING SET TO FALSE: %@";
  }

  else
  {
    v13 = *MEMORY[0x277CBED28];
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v29 = v13;
    v14 = "SERVER CORE: CONFIG IS BEING SET TO TRUE: %@";
  }

  _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
LABEL_7:
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CEE030], v13);
  v15 = aks_set_configuration();
  v16 = *(DMCLogObjects() + 8);
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v29) = v15;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "Error calling aks_set_configuration with kAKSConfigInactivityRebootEnabled config! Error code:  %x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v6 objectForKeyedSubscript:v7];
    *buf = 138412290;
    v29 = v18;
    _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Successfully set kAKSConfigInactivityRebootEnabled config with value: %@", buf, 0xCu);
  }

  CFRelease(Mutable);
  v19 = dispatch_semaphore_create(0);
  v20 = [(MDMServerCore *)self memberQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __31__MDMServerCore_setMDMOptions___block_invoke_271;
  v23[3] = &unk_27982BA78;
  v24 = v19;
  v21 = v19;
  dispatch_async(v20, v23);

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v22 = *MEMORY[0x277D85DE8];
}

void __31__MDMServerCore_setMDMOptions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__MDMServerCore_setMDMOptions___block_invoke_2;
  v5[3] = &unk_27982C098;
  v6 = *(a1 + 32);
  v4 = 0;
  [v2 updateMDMConfigurationWithUpdateBlock:v5 error:&v4];
  v3 = v4;

  if (!v3)
  {
    [*(a1 + 40) setMemberQueueMDMOptions:*(a1 + 32)];
    MDMSendManagingOrgInfoChangedNotification();
  }
}

void __31__MDMServerCore_setMDMOptions___block_invoke_271(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __31__MDMServerCore_setMDMOptions___block_invoke_2_273;
  v1[3] = &unk_27982C048;
  v2 = *(a1 + 32);
  [MDMFindMyUtilities enableActivationLockWithCompletion:v1];
}

- (BOOL)userSwitchAlreadyInitiated
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v3 = [(MDMServerCore *)self memberQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__MDMServerCore_userSwitchAlreadyInitiated__block_invoke;
    v6[3] = &unk_27982BB40;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_async_and_wait(v3, v6);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __43__MDMServerCore_userSwitchAlreadyInitiated__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueUserSwitchAlreadyInitiated];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setUserSwitchAlreadyInitiated:(BOOL)a3
{
  v5 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__MDMServerCore_setUserSwitchAlreadyInitiated___block_invoke;
  v6[3] = &unk_27982BB18;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (NSDictionary)softwareUpdatePathFromDisk
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(MDMServerCore *)self _mdmFilePathForChannelType:0];
  v4 = [v2 DMCDictionaryFromFile:v3];

  v5 = [v4 objectForKeyedSubscript:@"SoftwareUpdateSettings"];

  return v5;
}

- (NSString)organizationName
{
  v2 = [(MDMServerCore *)self organizationInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030F0]];

  return v3;
}

- (NSString)serverName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__MDMServerCore_serverName__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = [v8[5] host];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __27__MDMServerCore_serverName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueServerURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)daemonIdentifier
{
  v2 = [(MDMServerCore *)self channelType];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = kMDMDUserIdentifier;
  }

  else
  {
    v3 = kMDMDIdentifier;
  }

  v2 = *v3;
LABEL_6:

  return v2;
}

- (void)_executeBlockWhenPushTokenIsAvailable:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D03558]);
  v6 = [(MDMServerCore *)self _reasonStringWithReason:@"PushToken"];
  v7 = [v5 initWithReason:v6];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v8 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke;
  block[3] = &unk_27982BB40;
  block[4] = self;
  block[5] = &v22;
  dispatch_async_and_wait(v8, block);

  if (v23[5] || ([MEMORY[0x277D03498] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hrnMode") == 1, v9, !v10))
  {
    if (v4)
    {
      v13 = [(MDMServerCore *)self jobQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_4;
      v15[3] = &unk_27982D360;
      v16 = v4;
      v17 = &v22;
      [v13 queueBlock:v15];
    }
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[MDMServerCore _executeBlockWhenPushTokenIsAvailable:]";
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "%s: Waiting for push token...", buf, 0xCu);
    }

    v12 = [(MDMServerCore *)self jobQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_274;
    v18[3] = &unk_27982BE10;
    v18[4] = self;
    v20 = v4;
    v19 = v7;
    [v12 queueBlock:v18];
  }

  _Block_object_dispose(&v22, 8);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePushToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_274(id *a1)
{
  v2 = [a1[4] executionQueuePushTokenWaitContinuationBlock];
  objc_initWeak(&location, a1[4]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_2;
  v4[3] = &unk_27982D338;
  objc_copyWeak(&v8, &location);
  v3 = v2;
  v6 = v3;
  v7 = a1[6];
  v5 = a1[5];
  [a1[4] setExecutionQueuePushTokenWaitContinuationBlock:v4];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__10;
    v12 = __Block_byref_object_dispose__10;
    v13 = 0;
    v4 = [WeakRetained memberQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_3;
    v7[3] = &unk_27982BB40;
    v7[4] = v3;
    v7[5] = &v8;
    dispatch_async_and_wait(v4, v7);

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v9[5]);
    }

    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __55__MDMServerCore__executeBlockWhenPushTokenIsAvailable___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePushToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_executePushTokenWaitContinuationBlock
{
  v3 = [(MDMServerCore *)self jobQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MDMServerCore__executePushTokenWaitContinuationBlock__block_invoke;
  v4[3] = &unk_27982BA78;
  v4[4] = self;
  [v3 queueBlock:v4];
}

void __55__MDMServerCore__executePushTokenWaitContinuationBlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executionQueuePushTokenWaitContinuationBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) executionQueuePushTokenWaitContinuationBlock];
    [*(a1 + 32) setExecutionQueuePushTokenWaitContinuationBlock:0];
    v3[2]();
  }
}

void __63__MDMServerCore__memberQueueSetupAPSConnectionIfNeeeded_valid___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 0;
  [v1 _readConfigurationOutError:&v5 isUproot:*(a1 + 40)];
  v2 = v5;
  if (v2)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "No valid MDM configuration found. Error: %{public}@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_memberQueueSetupAPSConnectionIsMDMConfigurationValid:(BOOL)a3 isUserDaemon:(BOOL)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "MDMDServerCore has a valid MDM configuration", buf, 2u);
    }

    [(MDMServerCore *)self setMemberQueueIsUprooting:0];
    v6 = [(MDMServerCore *)self memberQueueTopic];

    if (v6)
    {
      v7 = [(MDMServerCore *)self memberQueueUseDevelopmentAPNS];
      v8 = [(MDMServerCore *)self memberQueueUseDevelopmentAPNS]^ 1;
      v9 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        if ([(MDMServerCore *)self memberQueueUseDevelopmentAPNS])
        {
          v11 = @"Dev";
        }

        else
        {
          v11 = @"Prod";
        }

        v12 = [(MDMServerCore *)self memberQueueTopic];
        *buf = 138543618;
        v28 = v11;
        v29 = 2114;
        v30 = v12;
        _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMDServerCore using %{public}@ APS, enabling topic: %{public}@", buf, 0x16u);
      }

      v13 = [(MDMServerCore *)self pushServiceManager];
      v14 = [(MDMServerCore *)self memberQueueTopic];
      [v13 startListeningForMDMPushMessageWithTopic:v14 environment:v7];

      v15 = [(MDMServerCore *)self pushServiceManager];
      [v15 requestPublicTokenWithEnvironment:v7];

      v16 = [(MDMServerCore *)self pushServiceManager];
      [v16 stopListeningForAllMDMPushMessagesWithEnvironment:v8];
    }

    if ([MEMORY[0x277D03500] fakePushToken])
    {
      v17 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "Using fake push token for this device...", buf, 2u);
      }

      v18 = [@"FakePushToken" dataUsingEncoding:4];
      [(MDMServerCore *)self setMemberQueuePushToken:v18];
    }

    v19 = [(MDMServerCore *)self memberQueuePushToken];

    if (v19)
    {
      v20 = [(MDMServerCore *)self _memberQueueLastPushTokenHash];
      v21 = [(MDMServerCore *)self memberQueuePushToken];
      v22 = [v21 DMCSHA256Hash];

      if (([v20 isEqualToData:v22]& 1) == 0)
      {
        v23 = [(MDMServerCore *)self memberQueuePushToken];
        [(MDMServerCore *)self _memberQueueLogLatestPushTokenIfNeeded:v23];
      }
    }

    else
    {
      v24 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_DEFAULT, "MDMDServerCore waiting for push token to be assigned to this device...", buf, 2u);
      }

      v20 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__MDMServerCore__memberQueueSetupAPSConnectionIsMDMConfigurationValid_isUserDaemon___block_invoke;
      block[3] = &unk_27982BA78;
      block[4] = self;
      dispatch_async(v20, block);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_memberQueuePushMagicMismatchDateMarker
{
  v2 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v3 = [v2 pushMagicMismatchDateMarker];

  return v3;
}

- (void)_memberQueueSetPushMagicMismatchDateMarker:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MDMServerCore__memberQueueSetPushMagicMismatchDateMarker___block_invoke;
  v7[3] = &unk_27982C098;
  v8 = v4;
  v6 = v4;
  [v5 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v7 error:0];
}

- (void)_memberQueueLogLatestPushTokenIfNeeded:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MDMServerCore *)self memberQueueLastLoggedPushToken];
  v6 = [(__CFString *)v4 isEqualToData:v5];

  if ((v6 & 1) == 0)
  {
    [(MDMServerCore *)self setMemberQueueLastLoggedPushToken:v4];
    v7 = objc_opt_new();
    v8 = *MEMORY[0x277D03328];
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = &stru_2868451F0;
    }

    v13[0] = @"Token";
    v13[1] = @"Channel";
    v14[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MDMServerCore channelType](self, "channelType")}];
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v7 logRegularEventForTopic:v8 reason:@"New Push Token Received" details:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldListenToEnvironment:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MDMServerCore__shouldListenToEnvironment___block_invoke;
  block[3] = &unk_27982D388;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_async_and_wait(v5, block);

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

uint64_t __44__MDMServerCore__shouldListenToEnvironment___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueUseDevelopmentAPNS];
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) == result;
  return result;
}

- (void)pushServiceManager:(id)a3 didReceivePublicToken:(id)a4 forEnvironment:(unint64_t)a5
{
  v7 = a4;
  if ([(MDMServerCore *)self _shouldListenToEnvironment:a5])
  {
    v8 = [(MDMServerCore *)self jobQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke;
    v9[3] = &unk_27982BAC8;
    v10 = v7;
    v11 = self;
    [v8 queueBlock:v9];
  }
}

void __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "Push token received.", buf, 2u);
  }

  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v4 memberQueueTopic];
    v8 = [*(a1 + 40) memberQueuePushMagic];
    *buf = 138543874;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v28 = v8;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Push token data: '%{public}@' Topic: '%{public}@' Magic: '%{public}@'", buf, 0x20u);
  }

  v9 = [*(a1 + 40) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_297;
  block[3] = &unk_27982BAC8;
  v18 = *(a1 + 32);
  v10 = v18.i64[0];
  v26 = vextq_s8(v18, v18, 8uLL);
  dispatch_async_and_wait(v9, block);

  [*(a1 + 40) _executePushTokenWaitContinuationBlock];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v28) = 0;
  v11 = [*(a1 + 32) DMCSHA256Hash];
  v12 = [*(a1 + 40) memberQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_2;
  v21[3] = &unk_27982D3B0;
  v21[4] = *(a1 + 40);
  v13 = v11;
  v22 = v13;
  v23 = *(a1 + 32);
  v24 = buf;
  dispatch_async_and_wait(v12, v21);

  if (*(*&buf[8] + 24) == 1)
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEBUG, "Push token is new, need to update", v20, 2u);
    }

    v15 = [*(a1 + 40) jobQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_2_298;
    v19[3] = &unk_27982CCB0;
    v19[4] = *(a1 + 40);
    [v15 fromFunction:"-[MDMServerCore pushServiceManager:didReceivePublicToken:forEnvironment:]_block_invoke" enqueueJob:v19];
  }

  else
  {
    v16 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEBUG, "Push token is not new, don't need to update", v20, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _memberQueueLastPushTokenHash];
  if (([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) _memberQueueLogLatestPushTokenIfNeeded:*(a1 + 48)];
    [*(a1 + 32) _memberQueueIncrementTokenUpdateRequestCount];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_2_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__MDMServerCore_pushServiceManager_didReceivePublicToken_forEnvironment___block_invoke_3;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

- (void)pushServiceManager:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5 environment:(unint64_t)a6
{
  v80 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MDMServerCore *)self _shouldListenToEnvironment:a6])
  {
    v13 = objc_alloc(MEMORY[0x277D035A0]);
    v14 = [(MDMServerCore *)self _reasonStringWithReason:@"ReceivedMessageForTopic"];
    v49 = [v13 initWithReason:v14];

    v15 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "Received push notification.", &buf, 2u);
    }

    v16 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_DEBUG, "Push notification data: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__10;
    v78 = __Block_byref_object_dispose__10;
    v79 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__10;
    v64 = __Block_byref_object_dispose__10;
    v65 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v17 = [(MDMServerCore *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke;
    block[3] = &unk_27982CE18;
    block[4] = self;
    block[5] = &buf;
    block[6] = &v60;
    block[7] = &v56;
    dispatch_async_and_wait(v17, block);

    if (*(v57 + 24) == 1)
    {
      v18 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v70) = 0;
        _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring push notification because MDM uproot already began", &v70, 2u);
      }

      v19 = 0;
      v20 = 0;
      goto LABEL_43;
    }

    if ([v11 isEqualToString:*(*(&buf + 1) + 40)])
    {
      v21 = *MEMORY[0x277D24C98];
      v22 = [v12 objectForKey:*MEMORY[0x277D24C98]];
      v23 = v22 == 0;

      if (v23)
      {
        v32 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v70) = 138543362;
          *(&v70 + 4) = v21;
          _os_log_impl(&dword_2561F5000, v32, OS_LOG_TYPE_ERROR, "Rejecting MDM push dictionary because it does not contain the %{public}@ key", &v70, 0xCu);
        }

        v19 = 0;
        v20 = 0;
      }

      else
      {
        v24 = [v12 objectForKey:v21];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v26 = [v12 objectForKey:v21];
          v27 = [v26 isEqualToString:v61[5]];

          if (v27)
          {
            if ([v12 count] >= 2)
            {
              v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v12];
              [v28 removeObjectForKey:v21];
              v29 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                LODWORD(v70) = 138543362;
                *(&v70 + 4) = v28;
                _os_log_impl(&dword_2561F5000, v29, OS_LOG_TYPE_INFO, "Ignoring extra keys in push dictionary: %{public}@", &v70, 0xCu);
              }
            }

            v20 = 0;
            v19 = 0;
            v30 = 1;
            goto LABEL_45;
          }

          v34 = *(DMCLogObjects() + 8);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v70) = 0;
            _os_log_impl(&dword_2561F5000, v34, OS_LOG_TYPE_ERROR, "Rejecting MDM push dictionary because it does not have the right magic string.", &v70, 2u);
          }

          *&v70 = 0;
          *(&v70 + 1) = &v70;
          v71 = 0x3032000000;
          v72 = __Block_byref_object_copy__10;
          v73 = __Block_byref_object_dispose__10;
          v74 = 0;
          v35 = [(MDMServerCore *)self memberQueue];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_302;
          v54[3] = &unk_27982BB40;
          v54[4] = self;
          v54[5] = &v70;
          dispatch_async_and_wait(v35, v54);

          v36 = *(*(&v70 + 1) + 40);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = *(*(&v70 + 1) + 40);
              *v66 = 138543362;
              v67 = v38;
              _os_log_impl(&dword_2561F5000, v37, OS_LOG_TYPE_DEFAULT, "Push magic mismatch marker already exists with date: %{public}@", v66, 0xCu);
            }

            [*(*(&v70 + 1) + 40) timeIntervalSinceNow];
            v40 = v39;
            if (v39 < -90000.0)
            {
              v41 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *v66 = 134218240;
                v67 = 0x40F5F90000000000;
                v68 = 2048;
                v69 = -v40;
                _os_log_impl(&dword_2561F5000, v41, OS_LOG_TYPE_DEFAULT, "Existing push magic mismatch marker is older than %f seconds (%f seconds old), scheduling token update", v66, 0x16u);
              }

              v42 = [MEMORY[0x277D24638] sharedClient];
              [v42 scheduleTokenUpdate];

              v19 = 0;
              v20 = 1;
              goto LABEL_42;
            }

            v19 = 0;
          }

          else
          {
            v43 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [MEMORY[0x277CBEAA8] date];
              *v66 = 138543362;
              v67 = v44;
              _os_log_impl(&dword_2561F5000, v43, OS_LOG_TYPE_DEFAULT, "Setting push magic mismatch marker with date: %{public}@", v66, 0xCu);
            }

            v19 = [MEMORY[0x277CBEAA8] date];
          }

          v20 = 0;
LABEL_42:
          _Block_object_dispose(&v70, 8);

          goto LABEL_43;
        }

        v33 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v70) = 138543362;
          *(&v70 + 4) = v21;
          _os_log_impl(&dword_2561F5000, v33, OS_LOG_TYPE_ERROR, "Rejecting MDM push dictionary because the %{public}@ key is not a string.", &v70, 0xCu);
        }

        v19 = 0;
        v20 = 0;
      }
    }

    else
    {
      v31 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v70) = 138543362;
        *(&v70 + 4) = v11;
        _os_log_impl(&dword_2561F5000, v31, OS_LOG_TYPE_ERROR, "Ignoring push notification with mismatched topic: %{public}@", &v70, 0xCu);
      }

      v19 = 0;
      v20 = 0;
    }

LABEL_43:
    v30 = 0;
    if ((v20 & 1) == 0 && !v19)
    {
LABEL_47:
      v47 = [MEMORY[0x277D24648] sharedConfiguration];
      [v47 isUserEnrollment];
      MDMAnalyticsSendPushEvent();

      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(&v60, 8);

      _Block_object_dispose(&buf, 8);
      goto LABEL_48;
    }

LABEL_45:
    v45 = [(MDMServerCore *)self memberQueue];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_304;
    v52[3] = &unk_27982BAC8;
    v52[4] = self;
    v19 = v19;
    v53 = v19;
    dispatch_barrier_async(v45, v52);

    if ((v30 | v20) == 1)
    {
      v46 = [(MDMServerCore *)self jobQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_2;
      v51[3] = &unk_27982CCB0;
      v51[4] = self;
      [v46 fromFunction:"-[MDMServerCore pushServiceManager:didReceiveMessageForTopic:userInfo:environment:]" enqueueJob:v51];
    }

    goto LABEL_47;
  }

LABEL_48:

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueTopic];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) memberQueuePushMagic];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  result = [*(a1 + 32) memberQueueIsUprooting];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_302(uint64_t a1)
{
  v2 = [*(a1 + 32) _memberQueuePushMagicMismatchDateMarker];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__MDMServerCore_pushServiceManager_didReceiveMessageForTopic_userInfo_environment___block_invoke_3;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:1 isReachabilityEvent:0 completionHandler:v6];
}

- (id)_httpErrorFromTransaction:(id)a3 assertion:(id)a4 rmAccountID:(id)a5 enrollmentMode:(id)a6 reauthQueue:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 error];

  if (!v17)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v18 = [v12 statusCode];
  if (v18 == 410)
  {
    if ([(MDMServerCore *)self _handleHTTPStatusGoneResponse])
    {
      v20 = [(MDMServerCore *)self _processTraditionalErrorFromTransaction:v12];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v18 == 403)
  {
    v22 = [v12 error];
    v23 = [v22 code];

    if (v23 == 23008)
    {
      v24 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_DEFAULT, "Received 403 with UnrecognizedDevice error for transaction", &v27, 2u);
      }

      goto LABEL_14;
    }

LABEL_17:
    v20 = [v12 error];
    goto LABEL_18;
  }

  if (v18 != 401)
  {
    goto LABEL_17;
  }

  v19 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543362;
    v28 = v15;
    _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEFAULT, "Received 401 for transaction. EnrollmentMode: %{public}@", &v27, 0xCu);
  }

  if (!v15 || [v15 isEqualToString:*MEMORY[0x277D247D8]])
  {
LABEL_14:
    v20 = [(MDMServerCore *)self _processTraditionalUnauthorizedFromTransaction:v12 assertion:v13];
    goto LABEL_18;
  }

  v20 = [(MDMServerCore *)self _processAccountDrivenUnauthorizedFromTransaction:v12 rmAccountID:v14 reauthQueue:v16];
LABEL_18:
  v21 = v20;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_handleHTTPStatusGoneResponse
{
  v2 = [(MDMServerCore *)self channelType];
  if (v2 == 1)
  {
    v3 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDM server returned 410 response, does not want to manage the current user.", v5, 2u);
    }
  }

  return v2 == 1;
}

- (id)_processTraditionalErrorFromTransaction:(id)a3
{
  v4 = a3;
  if ([v4 isCheckIn])
  {
    [(MDMServerCore *)self _setTokenUpdateRequestCountToZero];
  }

  else
  {
    [(MDMServerCore *)self _clearCachedResponse];
  }

  v5 = [v4 error];

  return v5;
}

- (id)_processTraditionalUnauthorizedFromTransaction:(id)a3 assertion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isCheckIn])
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v6 error];
      v11 = [v10 DMCVerboseDescription];
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Cannot tell MDM server about updated token. Error: %{public}@", &v19, 0xCu);
    }
  }

  v12 = objc_opt_new();
  v13 = *MEMORY[0x277D03330];
  v14 = [MEMORY[0x277D24668] unauthorizedByServerError];
  [v12 logErrorEventForTopic:v13 reason:@"Received 401 / 403(code: Unrecognized) error from server" error:v14 details:0];

  [(MDMServerCore *)self _executionQueueRemoveMDMProfileWithAssertion:v7];
  v15 = [(MDMServerCore *)self _processTraditionalErrorFromTransaction:v6];
  v16 = [MEMORY[0x277D24668] unauthorizedByServerError];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_processAccountDrivenUnauthorizedFromTransaction:(id)a3 rmAccountID:(id)a4 reauthQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v23 = 0;
    v11 = [MEMORY[0x277D24610] rmAccountWithIdentifier:v9 fromStore:0 error:&v23];
    v12 = v23;
    v13 = v12;
    if (v11)
    {
      v14 = [v8 responseHeaders];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D03368]];

      v22 = 0;
      v16 = [MEMORY[0x277D24618] enrollmentMethodFromAuthenticateString:v15 outParams:&v22];
      v17 = v22;
      if (v16 > 5 || ((1 << v16) & 0x26) == 0)
      {
        v20 = [v8 error];
      }

      else
      {
        v19 = [v11 username];
        v20 = [(MDMServerCore *)self _processUnauthorizedFromTransaction:v8 authParams:v17 rmAccountID:v9 rmAccountUsername:v19 reauthQueue:v10];
      }
    }

    else
    {
      v20 = v12;
    }
  }

  else
  {
    v20 = [v8 error];
  }

  return v20;
}

- (void)_executionQueueRemoveMDMProfileWithAssertion:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MDMServerCore__executionQueueRemoveMDMProfileWithAssertion___block_invoke;
  block[3] = &unk_27982CE18;
  block[4] = self;
  block[5] = &v22;
  block[6] = &v12;
  block[7] = &v18;
  dispatch_async_and_wait(v5, block);

  if (*(v19 + 24) == 1)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "MDMServerCore ignoring extraneous remove MDM profile request", v10, 2u);
    }
  }

  else if (*(v23 + 24) == 1)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMServerCore removing MDM profile...", v10, 2u);
    }

    v8 = objc_opt_new();
    [v8 setProfileIdentifier:v13[5]];
    [v8 setType:0];
    v9 = [MEMORY[0x277D04BF8] systemConnection];
    [v9 performRequest:v8 completion:&__block_literal_global_314];

    [(MDMServerCore *)self _readConfigurationOutError:0 isUproot:1];
    [(MDMServerCore *)self _setTokenUpdateRequestCountToZero];
    [(MDMServerCore *)self _clearCachedResponse];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __62__MDMServerCore__executionQueueRemoveMDMProfileWithAssertion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueIsMDMConfigurationValid];
  v2 = [*(a1 + 32) memberQueueManagingProfileIdentifier];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if ([*(a1 + 32) memberQueueIsUprooting])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v5 = [*(a1 + 32) pushServiceManager];
      [v5 stopListeningForAllMDMPushMessagesWithEnvironment:0];

      v6 = [*(a1 + 32) pushServiceManager];
      [v6 stopListeningForAllMDMPushMessagesWithEnvironment:1];

      v7 = *(a1 + 32);

      [v7 setMemberQueueIsUprooting:1];
    }
  }
}

void __62__MDMServerCore__executionQueueRemoveMDMProfileWithAssertion___block_invoke_311(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "MDMServerCore could not remove MDM profile. Error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_processUnauthorizedFromTransaction:(id)a3 authParams:(id)a4 rmAccountID:(id)a5 rmAccountUsername:(id)a6 reauthQueue:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 authenticator];
  if ([v17 conformsToProtocol:&unk_286867B08])
  {
    if ([v17 validAuthParams:v13])
    {
      if ([v17 canRefreshToken])
      {
        [(MDMServerCore *)self _triggerRefreshTokenForTransaction:v12 authenticator:v17 authParams:v13 rmAccountID:v14 rmAccountUsername:v15 reauthQueue:v16];
      }

      else
      {
        [(MDMServerCore *)self _triggerReauthenticationForTransaction:v12 authenticator:v17 authParams:v13 rmAccountID:v14 rmAccountUsername:v15];
      }
      v18 = ;
      goto LABEL_12;
    }

    v23 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v27 = 138543362;
      *&v27[4] = v13;
      v20 = "Invalid Bearer token refresh params: %{public}@";
      v21 = v23;
      v22 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      v20 = "Error refreshing Bearer token";
      v21 = v19;
      v22 = 2;
LABEL_10:
      _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, v20, v27, v22);
    }
  }

  v18 = [v12 error];
LABEL_12:
  v24 = v18;

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_triggerReauthenticationForTransaction:(id)a3 authenticator:(id)a4 authParams:(id)a5 rmAccountID:(id)a6 rmAccountUsername:(id)a7
{
  v11 = a4;
  v12 = a7;
  v19 = 0;
  v13 = [v11 prepareForReauthenticationWithAuthParams:a5 accountID:a6 error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    objc_opt_class();
    [(MDMServerCore *)self _presentFollowUpForAuthURL:v13 accountUsername:v12 isMAIDAccount:objc_opt_isKindOfClass() & 1];
    [(MDMServerCore *)self _postReauthFollowUpChangedNotification];
    v16 = [MEMORY[0x277D24668] reauthRequiredThirdPartyError];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;

  return v17;
}

- (id)_triggerRefreshTokenForTransaction:(id)a3 authenticator:(id)a4 authParams:(id)a5 rmAccountID:(id)a6 rmAccountUsername:(id)a7 reauthQueue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__10;
  v45 = __Block_byref_object_dispose__10;
  v46 = 0;
  v20 = objc_opt_new();
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __119__MDMServerCore__triggerRefreshTokenForTransaction_authenticator_authParams_rmAccountID_rmAccountUsername_reauthQueue___block_invoke;
  v38[3] = &unk_27982D3D8;
  v40 = &v41;
  v21 = v20;
  v39 = v21;
  [v15 refreshTokenWithAuthParams:v16 accountID:v17 completionHandler:v38];
  [v21 waitForCompletion];
  v22 = v42[5];
  if (v22)
  {
    v23 = [v22 domain];
    v24 = v23;
    if (v23 == *MEMORY[0x277D032F0])
    {
      v27 = [v42[5] code];

      if (v27 == 15009)
      {
        objc_initWeak(&buf, self);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __119__MDMServerCore__triggerRefreshTokenForTransaction_authenticator_authParams_rmAccountID_rmAccountUsername_reauthQueue___block_invoke_2;
        v30[3] = &unk_27982D400;
        objc_copyWeak(&v36, &buf);
        v31 = v14;
        v32 = v16;
        v33 = v17;
        v34 = v18;
        v35 = v19;
        [(MDMServerCore *)self _listenForManagedAppleAccountLongLivedTokenChangedNotificationsOnQueue:v35 perform:v30];
        v28 = v42[5];

        objc_destroyWeak(&v36);
        objc_destroyWeak(&buf);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v26 = [(MDMServerCore *)self _triggerReauthenticationForTransaction:v14 authenticator:v15 authParams:v16 rmAccountID:v17 rmAccountUsername:v18];
  }

  else
  {
    v25 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2561F5000, v25, OS_LOG_TYPE_INFO, "Successfully refreshed MAID credentials automatically. Saving bearer token and re-doing HTTP transaction...", &buf, 2u);
    }

    [(MDMServerCore *)self _clearCoreFollowup];
    [v14 performSynchronously];
    v26 = [v14 error];
  }

  v28 = v26;
LABEL_11:

  _Block_object_dispose(&v41, 8);

  return v28;
}

void __119__MDMServerCore__triggerRefreshTokenForTransaction_authenticator_authParams_rmAccountID_rmAccountUsername_reauthQueue___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) complete];
}

void __119__MDMServerCore__triggerRefreshTokenForTransaction_authenticator_authParams_rmAccountID_rmAccountUsername_reauthQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _processUnauthorizedFromTransaction:*(a1 + 32) authParams:*(a1 + 40) rmAccountID:*(a1 + 48) rmAccountUsername:*(a1 + 56) reauthQueue:*(a1 + 64)];
    WeakRetained = v4;
  }
}

- (void)_listenForManagedAppleAccountLongLivedTokenChangedNotificationsOnQueue:(id)a3 perform:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277D245F0];
  v8 = a3;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_INFO, "idMS invalidated Managed Apple Account.", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__MDMServerCore__listenForManagedAppleAccountLongLivedTokenChangedNotificationsOnQueue_perform___block_invoke;
  v12[3] = &unk_27982CA78;
  v12[4] = self;
  v13 = v6;
  v10 = v6;
  v11 = [(MDMServerCore *)self _listenForOneTimeGlobalNotification:v7 callbackQueue:v8 notificationHandler:v12];

  self->_reauthMAIDNotifyToken = v11;
}

- (void)_presentFollowUpForAuthURL:(id)a3 accountUsername:(id)a4 isMAIDAccount:(BOOL)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v9 = *MEMORY[0x277D24D60];
  v10 = [MEMORY[0x277D03230] itemSpecifierIDForReauthAccountUsername:a4];
  v11 = [v8 stringWithFormat:@"%@/%@", v9, v10];

  v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
  if (v12)
  {
    v13 = DMCLocalizedString();
    v14 = DMCLocalizedString();
    v15 = objc_alloc(MEMORY[0x277D032C0]);
    v16 = [(MDMServerCore *)self daemonIdentifier];
    v26 = @"auth-url";
    v24 = v7;
    v17 = [v7 absoluteString];
    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v15 initWithStyle:0 identifier:@"com.apple.devicemanagementclient.followup.reauth" clientID:v16 userInfo:v18 title:v13 message:v14 notificationTitle:v13 notificationMessage:v14 actionTitle:v13 actionURL:v12 dismissTitle:0 dismissURL:0];

    v25 = 0;
    [v19 presentAndReturnError:&v25];
    v20 = v25;
    if (v20)
    {
      v21 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v20;
        _os_log_impl(&dword_2561F5000, v21, OS_LOG_TYPE_ERROR, "MDMServerCore failed to present reauth FollowUp with error: %{public}@", buf, 0xCu);
      }
    }

    v7 = v24;
  }

  else
  {
    v22 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_ERROR, "MDMServerCore failed to create URL for reauth FollowUp from string: %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_clearCoreFollowup
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D032C0];
  v3 = [(MDMServerCore *)self daemonIdentifier];
  v7 = 0;
  [v2 clearWithClientID:v3 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "MDMServerCore failed to clear reauth FollowUp with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_postReauthFollowUpChangedNotification
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D24CC8] object:0];
}

- (void)_memberQueueInactivityTaskFired:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Begin processing of Rapid Return to Service Task", buf, 2u);
  }

  [MEMORY[0x277D03538] temporarySessionTimeout];
  if (v6 <= 0.0)
  {
    v15 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_DEFAULT, "Cancelling idle timeout task; there's no longer a timeout in place!", buf, 2u);
    }

    goto LABEL_17;
  }

  v7 = v6;
  v8 = [(MDMServerCore *)self rrtsLastInactivityTime];
  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v10 = v9;
  if (v9 > v8)
  {
    v11 = (v9 - v8) / 0x3B9ACA00;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = *&v8;
    v29 = 2048;
    v30 = *&v10;
    _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Last idle time: %llus; now: %llus", buf, 0x16u);
  }

  v13 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = *&v11;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_2561F5000, v13, OS_LOG_TYPE_DEFAULT, "Elapsed idle time: %llus; target idle time: %fs", buf, 0x16u);
  }

  if (v7 + -5.0 < v11)
  {
    v14 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_DEFAULT, "Invoking idle timer handler", buf, 2u);
    }

    [(MDMServerCore *)self _memberQueueRRTSTimeoutReached];
LABEL_17:
    [v4 setCompleted];
    [(MDMServerCore *)self setRrtsInactivityTaskScheduled:0];
    goto LABEL_29;
  }

  [MEMORY[0x277D032B8] minimumExtensionInterval];
  v17 = v16;
  v18 = v7 - v11;
  v19 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = v18;
    _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEFAULT, "Timeout task fired early with %fs remaining", buf, 0xCu);
  }

  if (v18 < v17)
  {
    v18 = v17;
  }

  v20 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = v18;
    _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_DEFAULT, "Extending idle timeout for additional %fs", buf, 0xCu);
  }

  v26 = 0;
  v21 = [v4 extendForInterval:&v26 error:v18];
  v22 = v26;
  if ((v21 & 1) == 0)
  {
    v23 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = *&v22;
      _os_log_impl(&dword_2561F5000, v23, OS_LOG_TYPE_ERROR, "Failed to extend idle timeout task: %{public}@", buf, 0xCu);
    }

    [(MDMServerCore *)self setRrtsInactivityTaskScheduled:0];
  }

LABEL_29:
  v24 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_DEFAULT, "End processing of Rapid Return to Service Task", buf, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_memberQueueScheduleRRTSInactivityTaskWithInterval:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling idle timeout task with interval: %f", buf, 0xCu);
  }

  [(MDMServerCore *)self setRrtsIdleTimeout:a3];
  objc_initWeak(buf, self);
  v6 = [(MDMServerCore *)self rrtsIdleTimeoutTask];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__MDMServerCore__memberQueueScheduleRRTSInactivityTaskWithInterval___block_invoke;
  v8[3] = &unk_27982D428;
  objc_copyWeak(&v9, buf);
  [v6 submitRequestWithInterval:24 tolerance:v8 requirements:a3 completion:5.0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __68__MDMServerCore__memberQueueScheduleRRTSInactivityTaskWithInterval___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _memberQueueInactivityTaskFired:v5];
  }
}

- (void)_memberQueueDeviceDidBecomeIdleWithTimeoutInterval:(double)a3
{
  v5 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Recording last inactivity date", buf, 2u);
  }

  [(MDMServerCore *)self setRrtsLastInactivityTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  if ([(MDMServerCore *)self isRRTSInactivityTaskScheduled])
  {
    [(MDMServerCore *)self rrtsIdleTimeout];
    if (v6 > a3 + 5.0)
    {
      v7 = *(DMCLogObjects() + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Current active timeout task is significantly longer than the current timeout; cancelling. This may result in extended timeout delays", v9, 2u);
      }

      v8 = [(MDMServerCore *)self rrtsIdleTimeoutTask];
      [v8 cancel];

      [(MDMServerCore *)self _memberQueueScheduleRRTSInactivityTaskWithInterval:a3];
    }
  }

  else
  {
    [(MDMServerCore *)self _memberQueueScheduleRRTSInactivityTaskWithInterval:a3];
    [(MDMServerCore *)self setRrtsInactivityTaskScheduled:1];
  }
}

- (void)_memberQueueDeviceDidBecomeActive
{
  v3 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Clearing last inactivity date", v4, 2u);
  }

  [(MDMServerCore *)self setRrtsLastInactivityTime:-1];
}

- (void)_memberQueueRegisterForRRTSIdleEvents
{
  if ([MEMORY[0x277D034F8] isRRTSMDMTimeoutEnabled])
  {
    v3 = [MEMORY[0x277D24640] sharedConfiguration];
    [v3 refreshDetailsFromDisk];

    v4 = [MEMORY[0x277D24640] sharedConfiguration];
    v5 = [v4 isRapidReturnToService];

    if (v5)
    {
      v6 = *(DMCLogObjects() + 48);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Registering to keep mdmd alive", buf, 2u);
      }

      [(MDMServerCore *)self _memberQueueSetOutstandingActivity:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D246C8]];
      v7 = *(DMCLogObjects() + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Registering for IOKit power notifications", buf, 2u);
      }

      v8 = [(MDMServerCore *)self memberQueue];
      self->_userActivityHandle = IOPMScheduleUserActivityLevelNotificationWithTimeout();

      v9 = *(DMCLogObjects() + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Registered IOPMActivityLevelNotifications", buf, 2u);
      }
    }
  }
}

uint64_t __54__MDMServerCore__memberQueueRegisterForRRTSIdleEvents__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v4 = "Device has become active.";
      v5 = &v10;
LABEL_10:
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      return [*(a1 + 32) _memberQueueDeviceDidBecomeActive];
    }

    return [*(a1 + 32) _memberQueueDeviceDidBecomeActive];
  }

  [MEMORY[0x277D03538] temporarySessionTimeout];
  v7 = v6;
  v3 = *(DMCLogObjects() + 48);
  v8 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v7 <= 0.0)
  {
    if (v8)
    {
      *v11 = 0;
      v4 = "Device has become inactive, but no temporary session timeout is set";
      v5 = v11;
      goto LABEL_10;
    }

    return [*(a1 + 32) _memberQueueDeviceDidBecomeActive];
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Device has become inactive.", buf, 2u);
  }

  return [*(a1 + 32) _memberQueueDeviceDidBecomeIdleWithTimeoutInterval:v7];
}

- (void)_memberQueueStartListeningForInterestingEvents
{
  if (!self->_isObservingReachability)
  {
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v3 addNetworkReachableObserver:self selector:sel__networkReachabilityDidChange];

    self->_isObservingReachability = 1;
  }

  if (self->_keybagEventToken == -1 && (![MEMORY[0x277D03538] isSharediPad] || objc_msgSend(MEMORY[0x277D03538], "inSharediPadUserSession")))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D28B30]];
    v5 = [(MDMServerCore *)self memberQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__MDMServerCore__memberQueueStartListeningForInterestingEvents__block_invoke;
    v9[3] = &unk_27982CC38;
    v9[4] = self;
    [(MDMServerCore *)self _registerForDispatchNotification:v4 outToken:&self->_keybagEventToken targetQueue:v5 handler:v9];
  }

  if (self->_buddyDoneEventToken == -1)
  {
    v6 = DMCBYSetupAssistantFinishedDarwinNotification();
    if (v6)
    {
      v7 = [(MDMServerCore *)self memberQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__MDMServerCore__memberQueueStartListeningForInterestingEvents__block_invoke_2;
      v8[3] = &unk_27982CC38;
      v8[4] = self;
      [(MDMServerCore *)self _registerForDispatchNotification:v6 outToken:&self->_buddyDoneEventToken targetQueue:v7 handler:v8];
    }
  }

  [(MDMServerCore *)self _memberQueueRegisterForRRTSIdleEvents];
}

- (void)_memberQueueDeregisterForRRTSIdleEvents
{
  if ([MEMORY[0x277D034F8] isRRTSMDMTimeoutEnabled])
  {
    v3 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Deregistering keep-alive", buf, 2u);
    }

    [(MDMServerCore *)self _memberQueueRemoveOutstandingActivityForKey:*MEMORY[0x277D246C8]];
    if (self->_userActivityHandle)
    {
      v4 = *(DMCLogObjects() + 48);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Unregistering for IOKit power notifications.", v9, 2u);
      }

      userActivityHandle = self->_userActivityHandle;
      IOPMUnregisterNotification();
      self->_userActivityHandle = 0;
    }

    v6 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Unregistering Rapid Return to Service Background tasks.", v8, 2u);
    }

    v7 = [(MDMServerCore *)self rrtsIdleTimeoutTask];
    [v7 cancel];
  }
}

- (void)_memberQueueStopListeningForInterestingEvents
{
  if (self->_isObservingReachability)
  {
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    [v3 removeNetworkReachableObserver:self];

    self->_isObservingReachability = 0;
  }

  if (self->_keybagEventToken != -1)
  {
    [(MDMServerCore *)self _cancelDispatchNotificationWithToken:?];
    self->_keybagEventToken = -1;
  }

  if (self->_pairedNRDeviceEventToken != -1)
  {
    [(MDMServerCore *)self _cancelDispatchNotificationWithToken:?];
    self->_pairedNRDeviceEventToken = -1;
  }

  if (self->_buddyDoneEventToken != -1)
  {
    [(MDMServerCore *)self _cancelDispatchNotificationWithToken:?];
    self->_buddyDoneEventToken = -1;
  }

  [(MDMServerCore *)self _memberQueueDeregisterForRRTSIdleEvents];
}

- (void)_memberQueueRRTSTimeoutReached
{
  v3 = [MEMORY[0x277D24640] sharedConfiguration];
  [v3 refreshDetailsFromDisk];

  v4 = [MEMORY[0x277D24640] sharedConfiguration];
  v5 = [v4 isRapidReturnToService];

  if (!v5)
  {
    v8 = *(DMCLogObjects() + 48);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *v13 = 0;
    v9 = "RRTS timeout fired but we're not in RRTS mode!?";
    v10 = v8;
    v11 = OS_LOG_TYPE_FAULT;
    goto LABEL_8;
  }

  [MEMORY[0x277D03538] temporarySessionTimeout];
  if (v6 > 0.0)
  {
    v7 = [(MDMServerCore *)self jobQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__MDMServerCore__memberQueueRRTSTimeoutReached__block_invoke;
    v14[3] = &unk_27982CCB0;
    v14[4] = self;
    [v7 fromFunction:"-[MDMServerCore _memberQueueRRTSTimeoutReached]" enqueueJob:v14];

    return;
  }

  v12 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    v9 = "Ignoring idle timeout, as no temporary session timeout is set";
    v10 = v12;
    v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
    _os_log_impl(&dword_2561F5000, v10, v11, v9, v13, 2u);
  }
}

void __47__MDMServerCore__memberQueueRRTSTimeoutReached__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(DMCLogObjects() + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "Processing Rapid Return to Service idle timeout task", buf, 2u);
  }

  if (DMCIsSetupBuddyDone())
  {
    v5 = [MEMORY[0x277D03500] shouldSuppressRRTSOnIdleTimeout];
    v6 = *(DMCLogObjects() + 48);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v18 = 0;
        v8 = "Skipping RRTS machinery because default is set!";
        v9 = &v18;
        v10 = v6;
LABEL_9:
        _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *v17 = 0;
        _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Invoking RRTS flow controller", v17, 2u);
      }

      v12 = [*(a1 + 32) rrtsController];

      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277D031B8]);
        [*(a1 + 32) setRrtsController:v13];

        v14 = *(a1 + 32);
        v15 = [v14 rrtsController];
        [v15 setDelegate:v14];
      }

      v16 = [*(a1 + 32) rrtsController];
      [v16 requestRapidReturnToServiceWithCompletion:&__block_literal_global_369];
    }
  }

  else
  {
    v11 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      v8 = "Skipping RRTS machinery because device hasn't been setup (still in Setup Assistant)!";
      v9 = v19;
      v10 = v11;
      goto LABEL_9;
    }
  }

  v3[2](v3);
}

void __47__MDMServerCore__memberQueueRRTSTimeoutReached__block_invoke_367(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = *(DMCLogObjects() + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "RRTS process failed: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_networkReachabilityDidChange
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Network reachability has changed.", buf, 2u);
  }

  v4 = [(MDMServerCore *)self jobQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__MDMServerCore__networkReachabilityDidChange__block_invoke;
  v5[3] = &unk_27982CCB0;
  v5[4] = self;
  [v4 fromFunction:"-[MDMServerCore _networkReachabilityDidChange]" enqueueJob:v5];
}

void __46__MDMServerCore__networkReachabilityDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__MDMServerCore__networkReachabilityDidChange__block_invoke_2;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:1 completionHandler:v6];
}

- (void)_keybagStateDidChange
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Keybag state has changed.", buf, 2u);
  }

  if ((DMCIsDeviceLocked() & 1) == 0)
  {
    v4 = dispatch_time(0, 3000000000);
    v5 = [(MDMServerCore *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__MDMServerCore__keybagStateDidChange__block_invoke;
    block[3] = &unk_27982BA78;
    block[4] = self;
    dispatch_after(v4, v5, block);
  }
}

void __38__MDMServerCore__keybagStateDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jobQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__MDMServerCore__keybagStateDidChange__block_invoke_2;
  v3[3] = &unk_27982CCB0;
  v3[4] = *(a1 + 32);
  [v2 fromFunction:"-[MDMServerCore _keybagStateDidChange]_block_invoke" enqueueJob:v3];
}

void __38__MDMServerCore__keybagStateDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MDMServerCore__keybagStateDidChange__block_invoke_3;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:1 completionHandler:v6];
}

- (void)buddyDidFinish
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Buddy did finish.", buf, 2u);
  }

  v4 = [(MDMServerCore *)self jobQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__MDMServerCore_buddyDidFinish__block_invoke;
  v5[3] = &unk_27982CCB0;
  v5[4] = self;
  [v4 fromFunction:"-[MDMServerCore buddyDidFinish]" enqueueJob:v5];
}

void __31__MDMServerCore_buddyDidFinish__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MDMServerCore_buddyDidFinish__block_invoke_2;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:1 completionHandler:v6];
}

- (unsigned)_registerForDispatchNotification:(id)a3 outToken:(int *)a4 targetQueue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  LODWORD(a4) = notify_register_dispatch([a3 UTF8String], a4, v12, v11);

  return a4;
}

- (void)_clearMAIDNotification
{
  v12 = *MEMORY[0x277D85DE8];
  reauthMAIDNotifyToken = self->_reauthMAIDNotifyToken;
  if (reauthMAIDNotifyToken != -1)
  {
    v4 = notify_cancel(reauthMAIDNotifyToken);
    v5 = *(DMCLogObjects() + 8);
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11[0] = 67109120;
        v11[1] = v4;
        v6 = "MDMServerCore couldn't cancel notification: %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 8;
LABEL_7:
        _os_log_impl(&dword_2561F5000, v7, v8, v6, v11, v9);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11[0]) = 0;
      v6 = "MDMServerCore cancelled notification";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEBUG;
      v9 = 2;
      goto LABEL_7;
    }

    self->_reauthMAIDNotifyToken = -1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_currentLocaleDidChange:(id)a3
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "Notified of locale change. Exiting when clean.", v4, 2u);
  }

  xpc_transaction_exit_clean();
}

- (id)_createBadInstallationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = DMCLocalizedString();
  v6 = DMCUSEnglishString();
  v7 = [v2 DMCErrorWithDomain:v3 code:12011 descriptionArray:v4 suggestion:v5 USEnglishSuggestion:v6 underlyingError:0 errorType:*MEMORY[0x277D032F8]];

  return v7;
}

- (id)_createTokenUnsupportedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15008 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_createNoInstallationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12079 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_createEmptyTokenErrorWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D032F0];
  v5 = a3;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:15033 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

- (id)_createServerMissingBootstrapTokenCapabilityError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12132 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (void)_pollOrScheduleNextPollForHRN
{
  if (([MEMORY[0x277D03538] isSharediPad] & 1) == 0)
  {
    v3 = [(MDMServerCore *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__MDMServerCore__pollOrScheduleNextPollForHRN__block_invoke;
    block[3] = &unk_27982BA78;
    block[4] = self;
    dispatch_async_and_wait(v3, block);
  }
}

- (void)_memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self memberQueuePollingInterval];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    v7 = MEMORY[0x259C5F2C0]();
    v8 = TMGetRTCResetCount();
    v9 = [(MDMServerCore *)self memberQueueLastPollingAttemptMonotonicTime];
    [v9 doubleValue];
    v11 = v10;
    v12 = [(MDMServerCore *)self memberQueueLastPollingAttemptRTCResetCount];
    v13 = [v12 unsignedIntValue];
    v14 = *(DMCLogObjects() + 8);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v9 && v12 && v8 == v13 && (v16 = v11 + (60 * v6), v16 > v7))
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_INFO, "MDMServerCore HRN scheduling next poll...", buf, 2u);
      }

      [v4 setCompleted];
      [(MDMServerCore *)self _scheduleNextPollWithInterval:v16 - v7];
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_INFO, "MDMServerCore HRN polling now...", buf, 2u);
      }

      v17 = [(MDMServerCore *)self jobQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__MDMServerCore__memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask___block_invoke;
      v18[3] = &unk_27982CC60;
      v18[4] = self;
      v19 = v4;
      [v17 fromFunction:"-[MDMServerCore _memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask:]" enqueueJob:v18];
    }
  }

  else
  {
    [v4 setCompleted];
  }
}

void __76__MDMServerCore__memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__MDMServerCore__memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask___block_invoke_2;
  v6[3] = &unk_27982B898;
  v8 = v3;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v3;
  [v4 _pollFromServerIfNeeded:1 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __76__MDMServerCore__memberQueuePollOrScheduleNextPollForHRNFromBackgroundTask___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setCompleted];
}

- (void)_scheduleNextPollWithInterval:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(MDMServerCore *)self pollTask];
  [v5 targetDate];
  v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v6 == 0.0 || ([MEMORY[0x277CBEAA8] now], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "dateByAddingTimeInterval:", a3), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "compare:", *&v6), v8, v7, v9 != 1))
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      v17 = a3;
      v18 = 2050;
      v19 = a3 * 0.1;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_DEFAULT, "MDMServerCore scheduling poll in %{public}f (+%{public}f) seconds.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12 = [(MDMServerCore *)self pollTask];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__MDMServerCore__scheduleNextPollWithInterval___block_invoke;
    v14[3] = &unk_27982D428;
    objc_copyWeak(&v15, buf);
    [v12 submitRequestWithInterval:4 tolerance:v14 requirements:a3 completion:a3 * 0.1];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      v17 = a3;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "MDMServerCore ignoring excessive poll scheduling (in %{public}f seconds). Next poll expected at: %{public}@.", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __47__MDMServerCore__scheduleNextPollWithInterval___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _backgroundPollFromTask:v5];
  }
}

- (void)_backgroundPollFromTask:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self jobQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MDMServerCore__backgroundPollFromTask___block_invoke;
  v7[3] = &unk_27982BAC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 queueBlock:v7];
}

void __41__MDMServerCore__backgroundPollFromTask___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D03498] sharedInstance];
  v3 = [v2 hrnMode];

  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    v5 = [v4 memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__MDMServerCore__backgroundPollFromTask___block_invoke_2;
    block[3] = &unk_27982BAC8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v7 = &v12;
    v12 = v6;
    dispatch_async_and_wait(v5, block);
  }

  else
  {
    v5 = [v4 jobQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__MDMServerCore__backgroundPollFromTask___block_invoke_3;
    v9[3] = &unk_27982CC60;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v7 = &v10;
    v10 = v8;
    [v5 fromFunction:"[MDMServerCore _backgroundPollFromTask:]_block_invoke" enqueueJob:v9];
  }
}

void __41__MDMServerCore__backgroundPollFromTask___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MDMServerCore__backgroundPollFromTask___block_invoke_4;
  v6[3] = &unk_27982B898;
  v8 = v3;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

uint64_t __41__MDMServerCore__backgroundPollFromTask___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setCompleted];
}

- (void)_pollingSucceeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__MDMServerCore__pollingSucceeded__block_invoke;
  v4[3] = &unk_27982BB40;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_async_and_wait(v3, v4);

  if (*(v6 + 24) == 1)
  {
    [(MDMServerCore *)self _clearCoreFollowup];
  }

  [(MDMServerCore *)self _setLastPollingSuccess];
  [(MDMServerCore *)self _pollOrScheduleNextPollForHRN];
  _Block_object_dispose(&v5, 8);
}

void __34__MDMServerCore__pollingSucceeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueLastPollingSuccess];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

- (void)_setLastPollingAttempt
{
  v3 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMServerCore__setLastPollingAttempt__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async_and_wait(v3, block);
}

- (void)_setLastPollingSuccess
{
  v3 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDMServerCore__setLastPollingSuccess__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async_and_wait(v3, block);
}

- (void)_memberQueueSetLastPollingSuccess
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = MEMORY[0x259C5F2C0]();
  v5 = TMGetRTCResetCount();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccess:v3];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccessMonotonicTime:v6];
  [(MDMServerCore *)self setMemberQueueLastPollingSuccessRTCResetCount:v7];
  v8 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__MDMServerCore__memberQueueSetLastPollingSuccess__block_invoke;
  v12[3] = &unk_27982D478;
  v13 = v3;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v3;
  [v8 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v12 error:0];
}

void __50__MDMServerCore__memberQueueSetLastPollingSuccess__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *MEMORY[0x277D24828];
  v5 = a2;
  [v5 setObject:v3 forKeyedSubscript:v4];
  [v5 setObject:a1[5] forKeyedSubscript:*MEMORY[0x277D24830]];
  [v5 setObject:a1[6] forKeyedSubscript:*MEMORY[0x277D24838]];
}

- (void)_memberQueueSetLastPollingAttempt
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = MEMORY[0x259C5F2C0]();
  v5 = TMGetRTCResetCount();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  [(MDMServerCore *)self setMemberQueueLastPollingAttempt:v3];
  [(MDMServerCore *)self setMemberQueueLastPollingAttemptMonotonicTime:v6];
  [(MDMServerCore *)self setMemberQueueLastPollingAttemptRTCResetCount:v7];
  v8 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__MDMServerCore__memberQueueSetLastPollingAttempt__block_invoke;
  v12[3] = &unk_27982D478;
  v13 = v3;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v3;
  [v8 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v12 error:0];
}

void __50__MDMServerCore__memberQueueSetLastPollingAttempt__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *MEMORY[0x277D24810];
  v5 = a2;
  [v5 setObject:v3 forKeyedSubscript:v4];
  [v5 setObject:a1[5] forKeyedSubscript:*MEMORY[0x277D24818]];
  [v5 setObject:a1[6] forKeyedSubscript:*MEMORY[0x277D24820]];
}

- (void)_registerAsUserSwitchStakeholder
{
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v3 = dispatch_block_create(0, &__block_literal_global_380);
    v4 = [MEMORY[0x277D77BF8] sharedManager];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __49__MDMServerCore__registerAsUserSwitchStakeholder__block_invoke_2;
    v9 = &unk_27982D4A0;
    v11 = &v12;
    v5 = v3;
    v10 = v5;
    [v4 registerUserSwitchStakeHolder:self completionHandler:&v6];

    dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    [(MDMServerCore *)self setMemberQueueUserSwitchAlreadyInitiated:*(v13 + 24), v6, v7, v8, v9];

    _Block_object_dispose(&v12, 8);
  }
}

void __49__MDMServerCore__registerAsUserSwitchStakeholder__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [v5 domain];
    if ([v3 isEqualToString:*MEMORY[0x277D77C30]])
    {
      v4 = [v5 code];

      if (v4 == 5)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)willSwitchUser
{
  v18 = *MEMORY[0x277D85DE8];
  [(MDMServerCore *)self setUserSwitchAlreadyInitiated:1];
  v2 = [MEMORY[0x277D035A0] assertionDescriptions];
  if (v2)
  {
    v3 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"%@\n", *(*(&v11 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Will switch user. Unfinished assertions:\n%{public}@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_eraseWatchFailedWithUnderlayingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03480];
  v5 = a3;
  v6 = DMCErrorArray();
  v7 = [v3 DMCErrorWithDomain:v4 code:12089 descriptionArray:v6 underlyingError:v5 errorType:{*MEMORY[0x277D032F8], 0}];

  return v7;
}

- (id)_mdmOutstandingActivitiesFilePathForChannelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = MDMUserOutstandingActivitiesFilePath();
  }

  else if (!a3)
  {
    self = MDMOutstandingActivitiesFilePath();
  }

  return self;
}

- (id)_mdmFilePathForChannelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = MDMUserFilePath();
  }

  else if (!a3)
  {
    self = MDMFilePath();
  }

  return self;
}

- (id)_mdmPropertiesFilePathForChannelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    self = MDMPropertiesUserFilePath();
  }

  else if (!a3)
  {
    self = MDMPropertiesFilePath();
  }

  return self;
}

- (id)_prefixNameForChannelType:(unint64_t)a3
{
  if (a3)
  {
    return @"mdmuserd";
  }

  else
  {
    return @"mdmd";
  }
}

- (id)_reasonStringWithReason:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(MDMServerCore *)self _prefixNameForChannelType:[(MDMServerCore *)self channelType]];
  v7 = [v4 stringWithFormat:@"%@-%@", v6, v5];

  return v7;
}

- (id)_requiredServerCapabilityForMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D24918]])
  {
    v4 = MEMORY[0x277D24788];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D24908]])
  {
    v4 = MEMORY[0x277D24D90];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)_serverHasCapabilityForMessageType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MDMServerCore__serverHasCapabilityForMessageType___block_invoke;
  block[3] = &unk_27982CD50;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_async_and_wait(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __52__MDMServerCore__serverHasCapabilityForMessageType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _requiredServerCapabilityForMessageType:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) memberQueueServerCapabilities];
    *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:v4];

    v2 = v4;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)_userEnrollmentAuthenticationDict
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D03530] marketingVersion];
  [v2 DMCSetObjectIfNotNil:v3 forKey:*MEMORY[0x277D248D0]];

  v4 = [MEMORY[0x277D03530] buildVersion];
  [v2 DMCSetObjectIfNotNil:v4 forKey:*MEMORY[0x277D248C8]];

  v5 = MEMORY[0x277D03500];
  v6 = [MEMORY[0x277D03530] productType];
  v7 = [v5 productNameWithDefaultValue:v6];
  [v2 DMCSetObjectIfNotNil:v7 forKey:*MEMORY[0x277D248E0]];

  return v2;
}

- (void)_sendCheckInRequestAndHandleErrorForMessageType:(id)a3 requestDict:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MDMServerCore *)self checkInQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke;
  v15[3] = &unk_27982D4F0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D24630];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) channelType];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke_2;
  v6[3] = &unk_27982D4C8;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = *(a1 + 56);
  [v2 executeRequestForMessageType:v3 channelType:v4 requestDict:v5 completionHandler:v6];
}

void __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) jobQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke_3;
  v15[3] = &unk_27982CE68;
  v16 = v9;
  v17 = v7;
  v11 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = v8;
  v20 = v11;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  [v10 queueBlock:v15];
}

void __95__MDMServerCore__sendCheckInRequestAndHandleErrorForMessageType_requestDict_completionHandler___block_invoke_3(uint64_t a1)
{
  v11 = [MEMORY[0x277D24648] sharedConfiguration];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [v11 rmAccountID];
    v6 = [v11 enrollmentMode];
    v7 = [*(a1 + 48) notificationQueue];
    v8 = [v4 _httpErrorFromTransaction:v3 assertion:0 rmAccountID:v5 enrollmentMode:v6 reauthQueue:v7];

    v2 = v8;
  }

  if (!v2)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_makeGetTokenRequestWithRequestDict:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277D24908];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__MDMServerCore__makeGetTokenRequestWithRequestDict_completionHandler___block_invoke;
  v9[3] = &unk_27982D518;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(MDMServerCore *)self _sendCheckInRequestAndHandleErrorForMessageType:v7 requestDict:a3 completionHandler:v9];
}

void __71__MDMServerCore__makeGetTokenRequestWithRequestDict_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDMServerCore: Get Token request failed with error: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:*MEMORY[0x277D245A8]];
    if (v7)
    {
      v16 = 0;
      v8 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v7 options:0 format:0 error:&v16];
      v9 = v16;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D24CD0]];
    v11 = [v10 length];
    v12 = *(DMCLogObjects() + 8);
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_INFO, "MDMServerCore: TokenData received", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = 0;
        _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_ERROR, "MDMServerCore: TokenData is empty in response dict from request, with error: %{public}@", buf, 0xCu);
      }

      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) _createEmptyTokenErrorWithUnderlyingError:v9];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)_tokenUpdateCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MDMServerCore__tokenUpdateCount__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __34__MDMServerCore__tokenUpdateCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _memberQueueTokenUpdateCount];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)_setTokenUpdateRequestCountToZero
{
  v3 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MDMServerCore__setTokenUpdateRequestCountToZero__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async(v3, block);
}

- (int64_t)_tokenUpdateRetryCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MDMServerCore__tokenUpdateRetryCount__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__MDMServerCore__tokenUpdateRetryCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueTokenUpdateRetryCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_decreaseTokenUpdateRetryCount
{
  v3 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MDMServerCore__decreaseTokenUpdateRetryCount__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __47__MDMServerCore__decreaseTokenUpdateRetryCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueTokenUpdateRetryCount];
  if (result >= 1)
  {
    v3 = *(a1 + 32);
    v4 = [v3 memberQueueTokenUpdateRetryCount] - 1;

    return [v3 setMemberQueueTokenUpdateRetryCount:v4];
  }

  return result;
}

- (int64_t)_memberQueueTokenUpdateCount
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(MDMServerCore *)self _mdmOutstandingActivitiesFilePathForChannelType:[(MDMServerCore *)self channelType]];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  v5 = [v4 objectForKey:*MEMORY[0x277D246D8]];
  v6 = [v5 integerValue];

  return v6;
}

- (void)_memberQueueSetTokenUpdateRequestCount:(int64_t)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(MDMServerCore *)self _memberQueueSetOutstandingActivity:v5 forKey:*MEMORY[0x277D246D8]];
  }

  else
  {
    v4 = *MEMORY[0x277D246D8];

    [(MDMServerCore *)self _memberQueueRemoveOutstandingActivityForKey:v4];
  }
}

- (void)_memberQueueSetLastPushTokenHash:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v6 = [v5 lastPushTokenHash];
  v7 = v6;
  if ((v4 == 0) != (v6 == 0) || ([v6 isEqualToData:v4] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__MDMServerCore__memberQueueSetLastPushTokenHash___block_invoke;
    v8[3] = &unk_27982C098;
    v9 = v4;
    [v5 updateMDMConfigurationWithCreateIfNeeded:1 updateBlock:v8 error:0];
  }
}

- (id)_memberQueueLastPushTokenHash
{
  v2 = [MEMORY[0x277D24650] sharedConfigurationForChannel:{-[MDMServerCore channelType](self, "channelType")}];
  v3 = [v2 lastPushTokenHash];

  return v3;
}

- (void)_memberQueueIncrementTokenUpdateRequestCount
{
  v3 = [(MDMServerCore *)self _memberQueueTokenUpdateCount];
  if (v3 <= 1)
  {
    [(MDMServerCore *)self _memberQueueSetTokenUpdateRequestCount:v3 + 1];
  }

  [(MDMServerCore *)self setMemberQueueTokenUpdateRetryCount:2];
}

- (void)_memberQueueDecrementTokenUpdateRequestCount
{
  v3 = [(MDMServerCore *)self _memberQueueTokenUpdateCount];
  if (v3 >= 1)
  {

    [(MDMServerCore *)self _memberQueueSetTokenUpdateRequestCount:v3 - 1];
  }
}

- (id)responseFromBasicResponse:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v6 = [v5 objectForKey:@"ErrorObject"];
  v7 = v6;
  if (v6)
  {
    if (([v6 DMCContainsErrorDomain:*MEMORY[0x277D033C0] code:4009] & 1) != 0 || objc_msgSend(v7, "DMCContainsErrorDomain:code:", *MEMORY[0x277D26108], 4009))
    {
      [v5 setObject:@"NotNow" forKey:@"Status"];
      v8 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v5 objectForKey:@"Status"];
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Command Status: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = [MDMParser errorChainFromError:v7];
      [v5 setObject:v14 forKey:@"ErrorChain"];
      v15 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v5 objectForKey:@"Status"];
        v18 = [v7 DMCVerboseDescription];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "Command Status: %{public}@\nError: %{public}@", buf, 0x16u);
      }
    }

    [v5 removeObjectForKey:@"ErrorObject"];
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v5 objectForKey:@"Status"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Command Status: %{public}@", buf, 0xCu);
    }
  }

  v19 = [(MDMServerCore *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MDMServerCore_responseFromBasicResponse___block_invoke;
  block[3] = &unk_27982BAC8;
  block[4] = self;
  v20 = v5;
  v27 = v20;
  dispatch_async_and_wait(v19, block);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v21 = [(MDMServerCore *)self memberQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__MDMServerCore_responseFromBasicResponse___block_invoke_2;
  v25[3] = &unk_27982BB40;
  v25[4] = self;
  v25[5] = buf;
  dispatch_async_and_wait(v21, v25);

  [v20 setObject:*(*&buf[8] + 40) forKey:@"CommandUUID"];
  v22 = v20;
  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __43__MDMServerCore_responseFromBasicResponse___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) memberQueueUseEnrollmentID])
  {
    v2 = [*(a1 + 32) memberQueueEnrollmentID];
    v3 = MEMORY[0x277D247C0];
  }

  else
  {
    v2 = [MEMORY[0x277D03530] deviceUDID];
    v3 = MEMORY[0x277D24928];
  }

  v4 = v2;
  [*(a1 + 40) setObject:v2 forKeyedSubscript:*v3];
}

uint64_t __43__MDMServerCore_responseFromBasicResponse___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueCommandUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_cachedResponse
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(MDMServerCore *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MDMServerCore__cachedResponse__block_invoke;
  v6[3] = &unk_27982BB40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__MDMServerCore__cachedResponse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _memberQueueCachedResponse];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_setCachedResponse:(id)a3
{
  v4 = a3;
  v5 = [(MDMServerCore *)self memberQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__MDMServerCore__setCachedResponse___block_invoke;
  v7[3] = &unk_27982BAC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_memberQueueCachedResponse
{
  v2 = [(MDMServerCore *)self _mdmOutstandingActivitiesFilePathForChannelType:[(MDMServerCore *)self channelType]];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  v4 = [v3 objectForKey:*MEMORY[0x277D246D0]];

  return v4;
}

- (void)_memberQueueSetCachedResponse:(id)a3
{
  if (a3)
  {
    [(MDMServerCore *)self _memberQueueSetOutstandingActivity:a3 forKey:*MEMORY[0x277D246D0]];
  }

  else
  {
    [(MDMServerCore *)self _memberQueueRemoveOutstandingActivityForKey:*MEMORY[0x277D246D0]];
  }
}

- (id)_idleResponse
{
  v16[2] = *MEMORY[0x277D85DE8];
  if ([(MDMServerCore *)self memberQueueUseEnrollmentID])
  {
    v15[0] = *MEMORY[0x277D247C0];
    v3 = [(MDMServerCore *)self memberQueueEnrollmentID];
    v15[1] = @"Status";
    v16[0] = v3;
    v16[1] = @"Idle";
    v4 = MEMORY[0x277CBEAC0];
    v5 = v16;
    v6 = v15;
  }

  else
  {
    v3 = [MEMORY[0x277D03530] deviceUDID];
    if (![v3 length])
    {
      v7 = [MEMORY[0x277D03530] deviceUDID];

      v3 = v7;
    }

    if (![v3 length])
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "Failed to get device UDID from MobileGestalt", v12, 2u);
      }
    }

    v13[0] = *MEMORY[0x277D24928];
    v13[1] = @"Status";
    v14[0] = v3;
    v14[1] = @"Idle";
    v4 = MEMORY[0x277CBEAC0];
    v5 = v14;
    v6 = v13;
  }

  v9 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_userFieldsForResponse
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D03538] isSharediPad])
  {
    DMCLKLogoutSupportClass();
    v3 = objc_opt_new();
    v4 = [v3 isCurrentUserAnonymous];

    if (v4)
    {
      v5 = *MEMORY[0x277D24D88];
LABEL_6:
      v6 = v5;
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277D77BF8] sharedManager];
    v8 = [v7 currentUser];

    v6 = [v8 username];
  }

  else
  {
    if ([(MDMServerCore *)self memberQueueUseEnrollmentID])
    {
      v5 = [(MDMServerCore *)self memberQueueEnrollmentID];
      goto LABEL_6;
    }

    v6 = @"Device";
  }

LABEL_9:
  v9 = *MEMORY[0x277D24DE8];
  v10 = *MEMORY[0x277D24940];
  v14[0] = *MEMORY[0x277D24938];
  v14[1] = v10;
  v15[0] = v9;
  v15[1] = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_memberQueueSetOutstandingActivity:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MDMServerCore *)self _mdmOutstandingActivitiesFilePathForChannelType:[(MDMServerCore *)self channelType]];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v8 setObject:v9 forKey:v6];
  [v8 DMCWriteToBinaryFile:v7];
}

- (void)_memberQueueRemoveOutstandingActivityForKey:(id)a3
{
  v4 = a3;
  v7 = [(MDMServerCore *)self _mdmOutstandingActivitiesFilePathForChannelType:[(MDMServerCore *)self channelType]];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:?];
  [v5 removeObjectForKey:v4];

  if ([v5 count])
  {
    [v5 DMCWriteToBinaryFile:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    [v6 removeItemAtPath:v7 error:0];
  }
}

- (void)_changeOrganizationNameForRMAccountIdentifier:(id)a3 personaID:(id)a4 organizationName:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = 0;
    v5 = [MEMORY[0x277D24610] updateOrganizationName:a5 rmAccountIdentifier:a3 personaID:a4 error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Could not update organizatioin name from organization info. Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate
{
  v3 = *MEMORY[0x277D245D8];
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__MDMServerCore__listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate__block_invoke;
  v5[3] = &unk_27982BA78;
  v5[4] = self;
  [(MDMServerCore *)self _listenForOneTimeGlobalNotification:v3 callbackQueue:v4 notificationHandler:v5];
}

void __82__MDMServerCore__listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isTokenUpdateScheduled])
  {
    v2 = [*(a1 + 32) jobQueue];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __82__MDMServerCore__listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate__block_invoke_2;
    v3[3] = &unk_27982CCB0;
    v3[4] = *(a1 + 32);
    [v2 fromFunction:"-[MDMServerCore _listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate]_block_invoke" enqueueJob:v3];
  }
}

void __82__MDMServerCore__listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__MDMServerCore__listenForCleanupMigrationFinishedNotificationAndRetryTokenUpdate__block_invoke_3;
  v6[3] = &unk_27982CC88;
  v7 = v3;
  v5 = v3;
  [v4 _pollFromServerIfNeeded:0 isReachabilityEvent:0 completionHandler:v6];
}

- (int)_listenForOneTimeGlobalNotification:(id)a3 callbackQueue:(id)a4 notificationHandler:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_INFO, "MDMServerCore listening for %{public}@ notification...", buf, 0xCu);
  }

  out_token = -1;
  objc_initWeak(&location, self);
  v12 = v8;
  v13 = [v8 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __87__MDMServerCore__listenForOneTimeGlobalNotification_callbackQueue_notificationHandler___block_invoke;
  handler[3] = &unk_27982D540;
  v14 = v8;
  v23 = v14;
  objc_copyWeak(&v25, &location);
  v15 = v10;
  v24 = v15;
  v16 = notify_register_dispatch(v13, &out_token, v9, handler);
  if (v16)
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v14;
      v30 = 1024;
      v31 = v16;
      _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, "MDMServerCore couldn't register for %{public}@ notification: %d", buf, 0x12u);
    }

    v18 = -1;
  }

  else
  {
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v14;
      _os_log_impl(&dword_2561F5000, v19, OS_LOG_TYPE_DEFAULT, "MDMServerCore registered for %{public}@ notification", buf, 0xCu);
    }

    v18 = out_token;
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __87__MDMServerCore__listenForOneTimeGlobalNotification_callbackQueue_notificationHandler___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "MDMServerCore received %{public}@ notification", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = notify_cancel(a2);
    if (v7)
    {
      v8 = v7;
      v9 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v12 = 138543618;
        v13 = v10;
        v14 = 1024;
        v15 = v8;
        _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "MDMServerCore couldn't cancel %{public}@ notification: %d", &v12, 0x12u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)prepareToObliterationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "MDMServerCore proceeding with obliteration", v5, 2u);
  }

  v3[2](v3, 1);
}

- (void)startOutError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMAuthenticationRequestWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendMDMCheckOutRequestWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyNewConfigurationWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTokenUpdateWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleTokenUpdateIfNecessaryWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)simulatePushWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)simulatePushIfNetworkTetheredWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retryNotNowWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)migrateMDMWithContext:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reauthenticationCompleteWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uprootMDMWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDeviceRequest:encodeResponse:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushTokenWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)touchWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)nagWithID:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismissURL:deadlineURL:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processUserRequest:encodeResponse:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isAwaitingUserConfiguredWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)depPushTokenWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncDEPPushTokenWithDelay:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)monitorDEPPushTokenIfNeededWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)monitorDEPPushTokenWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)simulateDEPPushWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestDeviceObliterationWithPreserveDataPlan:disallowProximitySetup:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestReturnToServiceObliterationWithPreserveDataPlan:disallowProximitySetup:mdmProfileData:wifiProfileData:revertToSnapshotName:bootstrapToken:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestRRTSCheckInAndValidationWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateBootstrapTokenWithDevicePasscode:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateBootstrapTokenWithDevicePasscodeContext:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncBootstrapTokenToMDMWithToken:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteBootstrapTokenWithToken:devicePasscode:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteBootstrapTokenWithToken:devicePasscodeContext:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscode:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)blockMDMCommandsWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unblockMDMCommandsWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)evaluateMigrationStatusWithPollFromServer:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getWatchPairingTokenForPhoneID:watchID:securityToken:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getOrgTokenForMAIDWithCompletionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enablePushWakeWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)disablePushWakeWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2561F5000, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end