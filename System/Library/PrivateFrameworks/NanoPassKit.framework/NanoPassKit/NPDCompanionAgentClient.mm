@interface NPDCompanionAgentClient
- (BOOL)_isGizmoConnected;
- (BOOL)_isPassQualifiedToBeDefaultWithUniqueID:(id)d;
- (BOOL)shouldUseLegacyIdentityProvisioning;
- (NPDCompanionAgentClientDataSource)dataSource;
- (NPDCompanionAgentClientDelegate)delegate;
- (id)_commutePlanReminderIdentifierWithCommutePlan:(id)plan pass:(id)pass;
- (id)_defaultCard;
- (id)paymentPassWithUniqueID:(id)d;
- (void)_applyIngestionDateToPass:(id)pass;
- (void)_invalidateWatchOfferTimer;
- (void)_invokeWatchOfferProvisioningCompletionHandlersWithSuccess:(BOOL)success error:(id)error;
- (void)_removePendingAppleCardNotification;
- (void)_selectNewDefaultCardForUserAfterDeletionOfDefaultCardWithUniqueID:(id)d;
- (void)_setOrResetWatchOfferTimerForProvisioningURL:(id)l;
- (void)_updateLocalBalanceReminderForBalance:(id)balance pass:(id)pass;
- (void)_updateLocalCommutePlanReminderForCommutePlan:(id)plan pass:(id)pass;
- (void)addPendingProvisionings:(id)provisionings identityTargetDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)allPaymentApplicationUsageSummaries:(id)summaries;
- (void)balanceReminderForBalance:(id)balance pass:(id)pass withCompletion:(id)completion;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion;
- (void)bridgedClientInfoWithCompletion:(id)completion;
- (void)canAddToCompanionPrecheckForegroundConnectivityWithCompletion:(id)completion;
- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion;
- (void)countOfPassesWithCompletion:(id)completion;
- (void)credentialedPassUniqueIDsWithReply:(id)reply;
- (void)currentSecureElementSnapshot:(id)snapshot;
- (void)defaultCard:(id)card;
- (void)defaultPaymentApplicationForPassWithUniqueID:(id)d completion:(id)completion;
- (void)deletePaymentTransactionWithIdentifier:(id)identifier fromDeviceWithPairingID:(id)d completion:(id)completion;
- (void)deviceIDSIdentifierWithCompletion:(id)completion;
- (void)expressModeEnabledForPassIdentifier:(id)identifier completion:(id)completion;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion;
- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo;
- (void)handlePeerPaymentTermsAndConditionsRequestFromGizmo;
- (void)handlePendingUnpairingWithCompletion:(id)completion;
- (void)handlePendingiCloudSignoutWithCompletion:(id)completion;
- (void)handleProvisioningErrorForAccountIdentifier:(id)identifier error:(id)error;
- (void)hasActiveExternallySharedPassesWithCompletion:(id)completion;
- (void)hasPaymentPassWithUniqueID:(id)d reply:(id)reply;
- (void)identityPassesOfTypes:(id)types withCompletion:(id)completion;
- (void)initiateConsistencyCheckWithCompletion:(id)completion;
- (void)initiateLostModeExitAuthWithCompletion:(id)completion;
- (void)isIssuerAppProvisioningSupported:(id)supported;
- (void)legacyIdentityProvisioning:(id)provisioning targetDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)markAllAppletsForDeletionWithCompletion:(id)completion;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d;
- (void)noteWatchOfferDisplayedForPaymentPassWithUniqueID:(id)d;
- (void)passesOfCardType:(int64_t)type withCompletion:(id)completion;
- (void)passesWithCompletion:(id)completion;
- (void)passesWithReaderIdentifier:(id)identifier completion:(id)completion;
- (void)paymentPassUniqueIDsExcludingDeactivated:(BOOL)deactivated reply:(id)reply;
- (void)paymentPassWithDeviceAccountIdentifier:(id)identifier completion:(id)completion;
- (void)paymentPassWithUniqueID:(id)d reply:(id)reply;
- (void)paymentPassesWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion;
- (void)peerPaymentAccountForPairingID:(id)d withCompletion:(id)completion;
- (void)presentStandaloneTransaction:(int64_t)transaction forPassUniqueIdentifier:(id)identifier terminalReaderIdentifier:(id)readerIdentifier completion:(id)completion;
- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion;
- (void)reclaimUnusedSEMemory:(id)memory;
- (void)redownloadAllPaymentPassesWithCompletion:(id)completion;
- (void)registerDeviceWithCompletion:(id)completion;
- (void)removePaymentPassWithUniqueID:(id)d forPairingID:(id)iD waitForConfirmation:(BOOL)confirmation completion:(id)completion;
- (void)savePaymentPassData:(id)data withUniqueID:(id)d forPairingID:(id)iD completion:(id)completion;
- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion;
- (void)setDefaultCard:(id)card completion:(id)completion;
- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion;
- (void)setPeerPaymentAccount:(id)account forPairingID:(id)d completion:(id)completion;
- (void)setSharedPaymentWebServiceContext:(id)context forPairingID:(id)d completion:(id)completion;
- (void)setSharedPeerPaymentWebServiceContext:(id)context forPairingID:(id)d completion:(id)completion;
- (void)sharedPaymentWebServiceContextForPairingID:(id)d withCompletion:(id)completion;
- (void)sharedPeerPaymentWebServiceContextForPairingID:(id)d withCompletion:(id)completion;
- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0;
- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)d sessionData:(id)data handler:(id)handler;
- (void)updateCredentials:(id)credentials forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)updateSettings:(unint64_t)settings forPassWithUniqueID:(id)d;
- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion;
@end

@implementation NPDCompanionAgentClient

- (void)noteWatchOfferDisplayedForPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Note watch offer displayed for pass with unique ID %@", &v10, 0xCu);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  bulletinScheduler = [dataSource bulletinScheduler];
  [bulletinScheduler noteOfferDisplayedForCompanionPaymentPassWithUniqueID:dCopy];
}

- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (apple-balance-pass-provisioning) Client. provisionPassForRemoteCredentialWithTypeAndIdentifier", v15, 2u);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent provisionPassForRemoteCredentialWithType:type andIdentifier:identifierCopy completion:completionCopy];
}

- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo
{
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  npsDomainAccessor = [dataSource npsDomainAccessor];
  v5 = NPKProvisionAccountPassOnUnlock;
  v6 = [npsDomainAccessor objectForKey:NPKProvisionAccountPassOnUnlock];

  v7 = [v6 objectForKey:@"accountIdentifier"];
  v8 = [v6 objectForKey:@"makeDefault"];
  bOOLValue = [v8 BOOLValue];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (bOOLValue)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v46 = v7;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) handleDeviceUnlockedForPendingProvisioningRequestFromGizmo accountIdentifier %@ makeDefault %@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v37 = bOOLValue;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = +[PKPassLibrary sharedInstance];
    v15 = [v14 passesOfType:1];

    v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          secureElementPass = [*(*(&v40 + 1) + 8 * i) secureElementPass];
          associatedAccountServiceAccountIdentifier = [secureElementPass associatedAccountServiceAccountIdentifier];

          if (associatedAccountServiceAccountIdentifier && [associatedAccountServiceAccountIdentifier isEqualToString:v7])
          {

            v34 = pk_Payment_log();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

            if (v35)
            {
              v36 = pk_Payment_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v7;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) companion still has pass for accountIdentifier %@ will attempt reprovision", buf, 0xCu);
              }
            }

            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_1000223E4;
            v38[3] = &unk_100071E20;
            v39 = v7;
            [(NPDCompanionAgentClient *)self provisionPassForAccountIdentifier:v39 makeDefault:v37 completion:v38];
            dataSource4 = v39;
            goto LABEL_27;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v7;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) companion no longer has pass for accountIdentifier %@ will not reprovision", buf, 0xCu);
      }
    }

    dataSource2 = [(NPDCompanionAgentClient *)self dataSource];
    npsDomainAccessor2 = [dataSource2 npsDomainAccessor];
    [npsDomainAccessor2 removeObjectForKey:v5];

    dataSource3 = [(NPDCompanionAgentClient *)self dataSource];
    npsDomainAccessor3 = [dataSource3 npsDomainAccessor];
    synchronize = [npsDomainAccessor3 synchronize];

    dataSource4 = [(NPDCompanionAgentClient *)self dataSource];
    npsManager = [dataSource4 npsManager];
    v32 = NPKDefaultsDomain;
    v33 = [NSSet setWithObject:v5];
    [npsManager synchronizeNanoDomain:v32 keys:v33];

LABEL_27:
  }
}

- (void)handleProvisioningErrorForAccountIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) handleProvisioningErrorForAccountIdentifier %@", buf, 0xCu);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = +[PKPassLibrary sharedInstance];
  v10 = [v9 passesOfType:1];

  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        secureElementPass = [v14 secureElementPass];
        associatedAccountServiceAccountIdentifier = [secureElementPass associatedAccountServiceAccountIdentifier];

        if (associatedAccountServiceAccountIdentifier && [associatedAccountServiceAccountIdentifier isEqualToString:identifierCopy])
        {
          v11 = v14;

          goto LABEL_16;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v17 = [NSURL URLWithString:@"bridge:root=com.apple.NanoPassbookBridgeSettings&action=ACCOUNT_PASS_REPROVISION"];
  paymentPass = [v11 paymentPass];

  if (paymentPass)
  {
    paymentPass2 = [v11 paymentPass];
    v35 = paymentPass2;
    v20 = [NSArray arrayWithObjects:&v35 count:1];
    v21 = [NPKCompanionAgentConnection watchProvisioningURLForPaymentPasses:v20];

    v17 = v21;
  }

  v22 = pk_Payment_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) posting alert to inform user with URL %@", buf, 0xCu);
    }
  }

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"ACCOUNTPASS_PROVISIONING_ERROR" value:&stru_100073088 table:@"AccountPass"];

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  bulletinManager = [dataSource bulletinManager];
  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];
  [bulletinManager insertBridgeBulletinWithTitle:v30 message:v26 actionURL:v17 delay:180.0];
}

- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  if ([passesCopy count])
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    paymentWebService = [dataSource paymentWebService];
    targetDevice = [paymentWebService targetDevice];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([targetDevice currentPassbookState], PKPassbookIsCurrentlyDeletedByUser()))
    {
      v11 = PKDisplayableErrorForCommonType();
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Attempt to provision passes to Watch denied. NanoPassbook not installed in Watch. Returning error: %@", buf, 0xCu);
        }
      }

      completionCopy[2](completionCopy, 0, v11);
    }

    else
    {
      v15 = [NPKCompanionAgentConnection watchProvisioningURLForPaymentPasses:passesCopy];
      v11 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v22[0] = FBSOpenApplicationOptionKeyActivateSuspended;
      v22[1] = FBSOpenApplicationOptionKeyIsSensitiveURL;
      v23[0] = &__kCFBooleanTrue;
      v23[1] = &__kCFBooleanTrue;
      v22[2] = FBSOpenApplicationOptionKeyPayloadURL;
      v23[2] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
      v17 = [FBSOpenApplicationOptions optionsWithDictionary:v16];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100022BB4;
      v19[3] = &unk_100071E48;
      v20 = v15;
      v21 = completionCopy;
      v19[4] = self;
      v18 = v15;
      [v11 openApplication:@"com.apple.Bridge" withOptions:v17 completion:v19];
    }

    goto LABEL_13;
  }

  if (completionCopy)
  {
    targetDevice = PKDisplayableErrorForCommonType();
    completionCopy[2](completionCopy, 0, targetDevice);
LABEL_13:
  }
}

- (void)_setOrResetWatchOfferTimerForProvisioningURL:(id)l
{
  lCopy = l;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Setting or resetting watch offer timer", buf, 2u);
    }
  }

  [(NPDCompanionAgentClient *)self _invalidateWatchOfferTimer];
  v8 = dispatch_get_global_queue(0, 0);
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
  v10 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100022E60;
  v14[3] = &unk_1000712C0;
  objc_copyWeak(&v16, buf);
  v15 = lCopy;
  v11 = lCopy;
  dispatch_source_set_event_handler(v9, v14);
  watchOfferTimeoutTimer = self->_watchOfferTimeoutTimer;
  self->_watchOfferTimeoutTimer = v9;
  v13 = v9;

  dispatch_resume(v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_invalidateWatchOfferTimer
{
  if (self->_watchOfferTimeoutTimer)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Invalidating watch offer timer", v7, 2u);
      }
    }

    dispatch_source_cancel(self->_watchOfferTimeoutTimer);
    watchOfferTimeoutTimer = self->_watchOfferTimeoutTimer;
    self->_watchOfferTimeoutTimer = 0;
  }
}

- (void)_invokeWatchOfferProvisioningCompletionHandlersWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  watchOfferProvisioningCompletionHandlers = [dataSource watchOfferProvisioningCompletionHandlers];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000233F4;
  v15 = &unk_100071E98;
  successCopy = success;
  v16 = errorCopy;
  v9 = errorCopy;
  [watchOfferProvisioningCompletionHandlers enumerateObjectsUsingBlock:&v12];

  v10 = [(NPDCompanionAgentClient *)self dataSource:v12];
  watchOfferProvisioningCompletionHandlers2 = [v10 watchOfferProvisioningCompletionHandlers];
  [watchOfferProvisioningCompletionHandlers2 removeAllObjects];
}

- (void)registerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: calling registerDeviceWithCompletion", buf, 2u);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023538;
  v11[3] = &unk_100071EC0;
  v12 = completionCopy;
  v10 = completionCopy;
  [paymentWebService registerDeviceWithCompletion:v11];
}

- (void)paymentPassUniqueIDsExcludingDeactivated:(BOOL)deactivated reply:(id)reply
{
  deactivatedCopy = deactivated;
  replyCopy = reply;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

  v10 = [uniqueIDs mutableCopy];
  if (deactivatedCopy)
  {
    v25 = uniqueIDs;
    v26 = replyCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = uniqueIDs;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [(NPDCompanionAgentClient *)self paymentPassWithUniqueID:v16, v25, v26];
          passActivationState = [v17 passActivationState];

          if (passActivationState == 4)
          {
            [v10 removeObject:v16];
            v19 = pk_Payment_log();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

            if (v20)
            {
              v21 = pk_Payment_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v32 = v16;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Notice: Removing ID %@ from set of uniqueIDs to return because it is deactivated", buf, 0xCu);
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v13);
    }

    uniqueIDs = v25;
    replyCopy = v26;
  }

  v22 = pk_Payment_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = uniqueIDs;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment pass unique IDs (returning %@)", buf, 0xCu);
    }
  }

  replyCopy[2](replyCopy, v10);
}

- (void)paymentPassWithUniqueID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v8 = [(NPDCompanionAgentClient *)self paymentPassWithUniqueID:d];
  (*(reply + 2))(replyCopy, v8);
}

- (void)hasPaymentPassWithUniqueID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v7 = +[NPKGizmoDatabase sharedDatabase];
    v8 = [v7 hasPassForUniqueID:dCopy];

    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromBOOL();
        v13 = 138412546;
        v14 = dCopy;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Request for has payment pass with unique ID %@ (replying with %@)", &v13, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v8);
  }
}

- (id)paymentPassWithUniqueID:(id)d
{
  dCopy = d;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
  v7 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if ([v8 count])
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v9 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID = [v7 uniqueID];
  v11 = [v9 transitAppletStateForPassWithUniqueID:uniqueID];

  NPKUpdateTransitPassPropertiesForPass();
  v12 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID2 = [v7 uniqueID];
  v14 = [v12 transactionSourceIdentifierForPassWithUniqueID:uniqueID2];

  v61 = v14;
  NPKUpdateTransactionSourceIdentifierForPass();
  [(NPDCompanionAgentClient *)self _applyIngestionDateToPass:v7];
  v15 = +[NPKGizmoDatabase sharedDatabase];
  v16 = [v15 passForUniqueID:dCopy includeImageSets:0];

  [v7 setSettings:{objc_msgSend(v16, "settings")}];
  v60 = v16;
  paymentPass = [v16 paymentPass];
  v18 = [paymentPass copy];

  devicePaymentApplications = [v18 devicePaymentApplications];
  v20 = [devicePaymentApplications count];

  v63 = v8;
  v64 = dCopy;
  v62 = v11;
  v59 = v18;
  if (v20 == 1)
  {
    devicePrimaryPaymentApplication = [v18 devicePrimaryPaymentApplication];
    devicePaymentApplications3 = [NSSet setWithObject:devicePrimaryPaymentApplication];
  }

  else
  {
    devicePaymentApplications2 = [v18 devicePaymentApplications];
    v24 = [devicePaymentApplications2 count];

    if (v24 < 2)
    {
      devicePaymentApplications3 = 0;
    }

    else
    {
      devicePaymentApplications3 = [v18 devicePaymentApplications];
    }
  }

  v25 = NPKPairedOrPairingDevice();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = devicePaymentApplications3;
  v66 = v7;
  v68 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v68)
  {
    v67 = *v84;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v84 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v83 + 1) + 8 * i);
        subcredentials = [v27 subcredentials];
        if ([subcredentials count])
        {
          v70 = i;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          devicePaymentApplications4 = [v7 devicePaymentApplications];
          v30 = [devicePaymentApplications4 countByEnumeratingWithState:&v79 objects:v95 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v80;
            v69 = subcredentials;
            while (2)
            {
              for (j = 0; j != v31; j = j + 1)
              {
                if (*v80 != v32)
                {
                  objc_enumerationMutation(devicePaymentApplications4);
                }

                v34 = *(*(&v79 + 1) + 8 * j);
                applicationIdentifier = [v34 applicationIdentifier];
                applicationIdentifier2 = [v27 applicationIdentifier];
                v37 = [applicationIdentifier isEqualToString:applicationIdentifier2];

                if (v37)
                {
                  subcredentials = v69;
                  [v34 setSubcredentials:v69];
                  v38 = pk_Payment_log();
                  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

                  if (v39)
                  {
                    v40 = pk_Payment_log();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      subcredentials2 = [v34 subcredentials];
                      uniqueID3 = [v66 uniqueID];
                      *buf = 138412802;
                      v90 = subcredentials2;
                      v91 = 2112;
                      v92 = uniqueID3;
                      v93 = 2112;
                      v94 = v34;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Notice: Applied subcredentials %@\n to pass with unique id %@\n applet %@\n", buf, 0x20u);
                    }
                  }

                  goto LABEL_27;
                }
              }

              v31 = [devicePaymentApplications4 countByEnumeratingWithState:&v79 objects:v95 count:16];
              subcredentials = v69;
              if (v31)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:

          v7 = v66;
          i = v70;
        }
      }

      v68 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v68);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  devicePaymentApplications5 = [v7 devicePaymentApplications];
  v44 = [devicePaymentApplications5 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v76;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v76 != v46)
        {
          objc_enumerationMutation(devicePaymentApplications5);
        }

        v48 = *(*(&v75 + 1) + 8 * k);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        subcredentials3 = [v48 subcredentials];
        v50 = [subcredentials3 countByEnumeratingWithState:&v71 objects:v87 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v72;
          do
          {
            for (m = 0; m != v51; m = m + 1)
            {
              if (*v72 != v52)
              {
                objc_enumerationMutation(subcredentials3);
              }

              v54 = *(*(&v71 + 1) + 8 * m);
              if ([v54 supportedRadioTechnologies] && !objc_msgSend(v54, "allSupportedRadioTechnologies"))
              {
                [v54 supportedRadioTechnologies];
              }

              else
              {
                [v54 allSupportedRadioTechnologies];
              }

              [v54 setSupportedRadioTechnologies:NPKRadioTechnologySupportedByPairedDevice()];
            }

            v51 = [subcredentials3 countByEnumeratingWithState:&v71 objects:v87 count:16];
          }

          while (v51);
        }
      }

      v45 = [devicePaymentApplications5 countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v45);
  }

  v55 = pk_Payment_log();
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

  if (v56)
  {
    v57 = pk_Payment_log();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v90 = v64;
      v91 = 2112;
      v92 = v66;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment pass with unique ID %@ (replying with %@)", buf, 0x16u);
    }
  }

  return v66;
}

- (void)paymentPassesWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002431C;
  v25 = sub_10002432C;
  v26 = +[NSMutableSet set];
  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if (v8)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100024334;
    v17[3] = &unk_100071EE8;
    v17[4] = self;
    v18 = v8;
    v19 = identifierCopy;
    v20 = &v21;
    [uniqueIDs enumerateObjectsUsingBlock:v17];
  }

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v22[5];
      *buf = 138412546;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment passes with FPANID %@ (replying with %@)", buf, 0x16u);
    }
  }

  if (completionCopy)
  {
    v16 = [v22[5] copy];
    completionCopy[2](completionCopy, v16);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)paymentPassWithDeviceAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002431C;
  v24 = sub_10002432C;
  v25 = 0;
  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if (v8)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100024710;
    v16[3] = &unk_100071EE8;
    v16[4] = self;
    v17 = v8;
    v18 = identifierCopy;
    v19 = &v20;
    [uniqueIDs enumerateObjectsUsingBlock:v16];
  }

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v21[5];
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment pass with DPANID %@ (replying with %@)", buf, 0x16u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)passesWithReaderIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment passes with readerIdentifier %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = sub_10002431C;
  v41 = sub_10002432C;
  v42 = objc_alloc_init(NSMutableSet);
  v8 = dispatch_group_create();
  v9 = NPKPairedDeviceSecureElementIdentifiers();
  v10 = &off_10004F000;
  v21 = v9;
  if (v9)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = uniqueIDs;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          dispatch_group_enter(v8);
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100024C28;
          v29[3] = &unk_100071F10;
          v30 = identifierCopy;
          p_buf = &buf;
          v31 = v8;
          [(NPDCompanionAgentClient *)self paymentPassWithUniqueID:v18 reply:v29];
        }

        v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }

    v10 = &off_10004F000;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *(v10 + 443);
  block[2] = sub_100024CC4;
  block[3] = &unk_1000719A8;
  v28 = &buf;
  v26 = identifierCopy;
  v27 = completionCopy;
  v19 = completionCopy;
  v20 = identifierCopy;
  dispatch_group_notify(v8, &_dispatch_main_q, block);

  _Block_object_dispose(&buf, 8);
}

- (void)credentialedPassUniqueIDsWithReply:(id)reply
{
  replyCopy = reply;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10002431C;
  v28[4] = sub_10002432C;
  v29 = +[NSMutableSet set];
  v4 = dispatch_group_create();
  v5 = NPKPairedDeviceSecureElementIdentifiers();
  v6 = &off_10004F000;
  v15 = v5;
  if (v5)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = uniqueIDs;
    v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          dispatch_group_enter(v4);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000250C4;
          v21[3] = &unk_100071F38;
          v23 = v28;
          v21[4] = v13;
          v22 = v4;
          [(NPDCompanionAgentClient *)self paymentPassWithUniqueID:v13 reply:v21];
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
    }

    v6 = &off_10004F000;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *(v6 + 443);
  block[2] = sub_100025118;
  block[3] = &unk_100071F60;
  v20 = v28;
  v19 = replyCopy;
  v14 = replyCopy;
  dispatch_group_notify(v4, &_dispatch_main_q, block);

  _Block_object_dispose(v28, 8);
}

- (void)savePaymentPassData:(id)data withUniqueID:(id)d forPairingID:(id)iD completion:(id)completion
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [iDCopy UUIDString];
      *buf = 138412546;
      v59 = dCopy;
      v60 = 2112;
      v61 = uUIDString;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to save payment pass with unique ID %@ for pairing ID %@", buf, 0x16u);
    }
  }

  selfCopy = self;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];

  v20 = NPKPairedOrPairingDevice();
  v21 = [v20 valueForProperty:NRDevicePropertyPairingID];

  if (([iDCopy isEqual:v21] & 1) == 0)
  {
    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [iDCopy UUIDString];
        uUIDString3 = [v21 UUIDString];
        *buf = 138412546;
        v59 = uUIDString2;
        v60 = 2112;
        v61 = uUIDString3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: Save pass requested for device with pairing ID %@, which does not match current pairing ID %@.", buf, 0x16u);
      }
    }

    v27 = NPKDeviceWithPairingID();
    if (v27)
    {
      v28 = [NPDCompanionPaymentPassDatabase alloc];
      v29 = [NPDOutstandingPassDeletionStore alloc];
      v30 = [NPSDomainAccessor alloc];
      v31 = dataCopy;
      v32 = [v30 initWithDomain:NPKDefaultsDomain];
      v33 = [(NPDOutstandingPassDeletionStore *)v29 initWithDomainAccessor:v32];
      v34 = [(NPDCompanionPaymentPassDatabase *)v28 initWithDevice:v27 outstandingDeletionStore:v33];

      companionPaymentPassDatabase = v32;
      dataCopy = v31;
    }

    else
    {
      v34 = 0;
    }

    companionPaymentPassDatabase = v34;
  }

  if (companionPaymentPassDatabase)
  {
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
    v36 = [uniqueIDs count];

    v56 = 0;
    v57 = 0;
    v48 = dataCopy;
    v37 = [PKPass createWithData:dataCopy warnings:&v57 error:&v56];
    v38 = v57;
    v39 = v56;
    paymentPass = [v37 paymentPass];

    if (paymentPass)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10002575C;
      v50[3] = &unk_100071F88;
      v51 = companionPaymentPassDatabase;
      v52 = selfCopy;
      v55 = v36 != 0;
      v53 = dCopy;
      v54 = completionCopy;
      [v51 savePaymentPass:paymentPass requireExisting:0 requireNewer:0 completion:v50];
    }

    else
    {
      v45 = pk_Payment_log();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

      if (v46)
      {
        v47 = pk_Payment_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v59 = dCopy;
          v60 = 2112;
          v61 = v38;
          v62 = 2112;
          v63 = v39;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Warning: Could not initialize pass with unique ID %@ from pass data; not saving. Warnings: %@ Error: %@", buf, 0x20u);
        }
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }

    dataCopy = v48;
  }

  else
  {
    v41 = pk_Payment_log();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

    if (v42)
    {
      v43 = pk_Payment_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString4 = [iDCopy UUIDString];
        *buf = 138412290;
        v59 = uUIDString4;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Warning: Save pass requested for device with pairing ID %@, but that device is no longer paired; ignoring.", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)removePaymentPassWithUniqueID:(id)d forPairingID:(id)iD waitForConfirmation:(BOOL)confirmation completion:(id)completion
{
  confirmationCopy = confirmation;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v58 = dCopy;
      v59 = 2112;
      v60 = iDCopy;
      v61 = 1024;
      v62 = confirmationCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to remove payment pass with unique ID %@ for pairing ID %@ (wait for remote confirmation %d)", buf, 0x1Cu);
    }
  }

  v16 = NPKPairedOrPairingDevice();
  v17 = [v16 valueForProperty:NRDevicePropertyPairingID];

  if ([iDCopy isEqual:v17])
  {
    v38 = iDCopy;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100025EB8;
    v50[3] = &unk_100071FB0;
    v37 = completionCopy;
    v52 = completionCopy;
    v39 = dCopy;
    v18 = dCopy;
    v51 = v18;
    v19 = objc_retainBlock(v50);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100026180;
    v47[3] = &unk_100070EE0;
    v47[4] = self;
    v20 = v18;
    v48 = v20;
    v21 = v19;
    v49 = v21;
    v22 = objc_retainBlock(v47);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100026370;
    v45[3] = &unk_100072000;
    v45[4] = self;
    v23 = v20;
    v46 = v23;
    v24 = objc_retainBlock(v45);
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    v27 = [companionPaymentPassDatabase paymentPassWithUniqueID:v23];

    if (confirmationCopy)
    {
      if ([(NPDCompanionAgentClient *)self _isGizmoConnected])
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10002659C;
        v42[3] = &unk_100072028;
        v43 = v22;
        v44 = v21;
        (v24[2])(v24, v27, v42);

        v28 = v43;
      }

      else
      {
        v53 = NSLocalizedDescriptionKey;
        v54 = @"Watch not connected";
        v36 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v28 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v36];

        (v21[2])(v21, 0, v28, 0);
      }
    }

    else
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000265C4;
      v40[3] = &unk_100071E20;
      v41 = v23;
      (v24[2])(v24, v27, v40);
      (v22[2])(v22);
      v28 = v41;
    }

    iDCopy = v38;

    v34 = v52;
    dCopy = v39;
    completionCopy = v37;
    goto LABEL_18;
  }

  v29 = pk_Payment_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = pk_Payment_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [iDCopy UUIDString];
      uUIDString2 = [v17 UUIDString];
      *buf = 138412546;
      v58 = uUIDString;
      v59 = 2112;
      v60 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: Remove requested for pairing ID %@ which does not match current pairing ID %@; ignoring.", buf, 0x16u);
    }
  }

  if (completionCopy)
  {
    v55 = NSLocalizedDescriptionKey;
    v56 = @"Pairing ID doesn't match";
    v34 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v35 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v34];
    (*(completionCopy + 2))(completionCopy, 0, v35);

LABEL_18:
  }
}

- (BOOL)_isGizmoConnected
{
  v3 = NPKIsPairedDeviceStandalone();
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  v5 = dataSource;
  if (v3)
  {
    passSyncService = [dataSource passSyncService];
    v6PassSyncService = [passSyncService passSyncService];
  }

  else
  {
    v6PassSyncService = [dataSource generalService];
  }

  v8 = NPKIsConnectedToPairedOrPairingDeviceFromService();
  return v8;
}

- (void)setDefaultCard:(id)card completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = cardCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to set default card to %@", buf, 0xCu);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

  if (cardCopy)
  {
    if ([uniqueIDs containsObject:cardCopy])
    {
      dataSource2 = [(NPDCompanionAgentClient *)self dataSource];
      npsDomainAccessor = [dataSource2 npsDomainAccessor];
      [npsDomainAccessor setObject:cardCopy forKey:NPKDefaultPaymentPassDefault];
LABEL_16:

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000269F4;
      v19[3] = &unk_100071620;
      v19[4] = self;
      v20 = completionCopy;
      dispatch_async(&_dispatch_main_q, v19);

      goto LABEL_17;
    }
  }

  else if (![uniqueIDs count])
  {
    dataSource2 = [(NPDCompanionAgentClient *)self dataSource];
    npsDomainAccessor = [dataSource2 npsDomainAccessor];
    [npsDomainAccessor removeObjectForKey:NPKDefaultPaymentPassDefault];
    goto LABEL_16;
  }

  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = cardCopy;
      v23 = 2112;
      v24 = uniqueIDs;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Rejecting invalid default card: %@, current cards = %@", buf, 0x16u);
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_17:
}

- (void)defaultCard:(id)card
{
  if (card)
  {
    cardCopy = card;
    _defaultCard = [(NPDCompanionAgentClient *)self _defaultCard];
    cardCopy[2](cardCopy, _defaultCard);
  }
}

- (id)_defaultCard
{
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  npsDomainAccessor = [dataSource npsDomainAccessor];
  synchronize = [npsDomainAccessor synchronize];

  dataSource2 = [(NPDCompanionAgentClient *)self dataSource];
  npsDomainAccessor2 = [dataSource2 npsDomainAccessor];
  v8 = [npsDomainAccessor2 objectForKey:NPKDefaultPaymentPassDefault];

  return v8;
}

- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion
{
  defaultCopy = default;
  completionCopy = completion;
  if (completionCopy)
  {
    if (defaultCopy)
    {
      _defaultCard = [(NPDCompanionAgentClient *)self _defaultCard];
      if (_defaultCard)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(NPDCompanionAgentClient *)self _isPassQualifiedToBeDefaultWithUniqueID:defaultCopy];
      }

      completionCopy[2](completionCopy, v8);
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (BOOL)_isPassQualifiedToBeDefaultWithUniqueID:(id)d
{
  dCopy = d;
  v4 = +[NPKGizmoDatabase sharedDatabase];
  v5 = [v4 passForUniqueID:dCopy];
  paymentPass = [v5 paymentPass];

  if (paymentPass)
  {
    v7 = NPKPeerPaymentAccountPath();
    v8 = [NSData dataWithContentsOfFile:v7];

    if (v8)
    {
      objc_opt_class();
      v9 = NPKSecureUnarchiveObject();
    }

    else
    {
      v9 = 0;
    }

    associatedPassUniqueID = [v9 associatedPassUniqueID];
    v12 = +[NPKGizmoDatabase sharedDatabase];
    v13 = [v12 preferredPaymentApplicationForPaymentPass:paymentPass];

    state = [v13 state];
    v15 = NPKPairedDeviceSecureElementIdentifiers();
    if ([v15 count])
    {
      NPKIdentifyDevicePaymentApplicationsForPass();
    }

    v16 = [associatedPassUniqueID isEqualToString:dCopy];
    if ([paymentPass effectiveContactlessPaymentApplicationState] == 1)
    {
      v17 = 1;
    }

    else
    {
      if (PKPaymentApplicationStateIsSuspended())
      {
        v18 = 1;
      }

      else
      {
        v18 = state == 2;
      }

      v17 = v18;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsDefaultCardSelection = [paymentPass supportsDefaultCardSelection];
      if ((v16 & 1) == 0)
      {
LABEL_18:
        v10 = v17 & supportsDefaultCardSelection;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      supportsDefaultCardSelection = 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (void)defaultPaymentApplicationForPassWithUniqueID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v6 = +[NPKGizmoDatabase sharedDatabase];
  v7 = [v6 passForUniqueID:dCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = +[NPKGizmoDatabase sharedDatabase];
  v9 = [v8 passForUniqueID:dCopy];

  if (!v9)
  {
LABEL_7:
    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  v10 = NPKPairedDeviceSecureElementIdentifiers();
  if ([v10 count])
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v11 = +[NPKGizmoDatabase sharedDatabase];
  v12 = [v11 preferredPaymentApplicationForPaymentPass:v9];
  (completionCopy)[2](completionCopy, v12);

LABEL_8:
}

- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion
{
  applicationCopy = application;
  dCopy = d;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100027260;
  v25[3] = &unk_100072078;
  completionCopy = completion;
  v27 = completionCopy;
  v25[4] = self;
  v11 = dCopy;
  v26 = v11;
  v12 = objc_retainBlock(v25);
  v13 = +[NPKGizmoDatabase sharedDatabase];
  v14 = [v13 passForUniqueID:v11];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v16 = 0;
LABEL_6:
    (v12[2])(v12, 0);
    goto LABEL_7;
  }

  v15 = +[NPKGizmoDatabase sharedDatabase];
  v16 = [v15 passForUniqueID:v11];

  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = +[NPKGizmoDatabase sharedDatabase];
  [v17 setPreferredPaymentApplication:applicationCopy forPaymentPass:v16];

  if (![(NPDCompanionAgentClient *)self _isGizmoConnected])
  {
    goto LABEL_6;
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  applicationIdentifier = [applicationCopy applicationIdentifier];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000274E8;
  v21[3] = &unk_1000720A0;
  v16 = v16;
  v22 = v16;
  v23 = completionCopy;
  v24 = v12;
  [remoteAdminConnectionServiceAgent handlePreferredAID:applicationIdentifier forPassWithUniqueID:v11 completion:v21];

LABEL_7:
}

- (void)initiateConsistencyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent initiateConsistencyCheckWithCompletion:completionCopy];
}

- (void)redownloadAllPaymentPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent redownloadAllPaymentPassesWithCompletion:completionCopy];
}

- (void)handlePendingUnpairingWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent handlePendingUnpairingWithCompletion:completionCopy];
}

- (void)handlePendingiCloudSignoutWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent handlePendingiCloudSignoutWithCompletion:completionCopy];
}

- (void)setSharedPaymentWebServiceContext:(id)context forPairingID:(id)d completion:(id)completion
{
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  v11 = NPKPairedOrPairingDevice();
  v12 = [v11 valueForProperty:NRDevicePropertyPairingID];

  if (![dCopy isEqual:v12])
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [dCopy UUIDString];
        uUIDString2 = [v12 UUIDString];
        *buf = 138412546;
        v42 = uUIDString;
        v43 = 2112;
        v44 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Got shared payment web service context for device with pairing ID %@, which does not match the current device (%@). Attempting to save in the correct pairing store location.", buf, 0x16u);
      }
    }

    dataSource = NPKDeviceWithPairingID();
    if (!dataSource)
    {
      v32 = pk_Payment_log();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        remoteAdminConnectionServiceAgent = pk_Payment_log();
        if (os_log_type_enabled(remoteAdminConnectionServiceAgent, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString3 = [dCopy UUIDString];
          *buf = 138412546;
          v42 = uUIDString3;
          v43 = 2112;
          v44 = contextCopy;
          _os_log_impl(&_mh_execute_header, remoteAdminConnectionServiceAgent, OS_LOG_TYPE_DEFAULT, "Warning: No device found with pairing ID %@. Ignoring web service context %@.", buf, 0x16u);
        }

        goto LABEL_37;
      }

      goto LABEL_38;
    }

    remoteAdminConnectionServiceAgent = +[NSMutableArray array];
    v22 = [dataSource valueForProperty:NRDevicePropertySEID];
    if (v22)
    {
      [remoteAdminConnectionServiceAgent addObject:v22];
    }

    v23 = [dataSource valueForProperty:NRDevicePropertyAdditionalSEIDs];
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [remoteAdminConnectionServiceAgent addObjectsFromArray:v23];
      }
    }

    if (NPKValidatePaymentWebServiceContextAgainstWatchSEIDs())
    {
      v40 = v22;
      v24 = NPKPaymentWebServiceContextPathForDevice();
      v25 = pk_Payment_log();
      v26 = v25;
      if (v24)
      {
        v27 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

        if (v27)
        {
          v28 = pk_Payment_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString4 = [dCopy UUIDString];
            *buf = 138412546;
            v42 = uUIDString4;
            v43 = 2112;
            v44 = v24;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Notice: Archiving web service for device with pairing ID %@ at path %@", buf, 0x16u);
          }
        }

        [contextCopy archiveAtPath:v24];
      }

      else
      {
        v37 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (v37)
        {
          v38 = pk_Payment_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            uUIDString5 = [dCopy UUIDString];
            *buf = 138412290;
            v42 = uUIDString5;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error: No web service context path for device with pairing ID %@; not saving.", buf, 0xCu);
          }
        }
      }

      v22 = v40;
    }

    else
    {
      v35 = pk_Payment_log();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

      if (!v36)
      {
LABEL_36:

        goto LABEL_37;
      }

      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = contextCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: Not saving invalid web service context (%@) for non-current watch", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  v13 = NPKPairedDeviceSecureElementIdentifiers();
  v14 = NPKValidatePaymentWebServiceContextAgainstWatchSEIDs();

  if (v14)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
    [remoteAdminConnectionServiceAgent handleUpdatedSharedPaymentWebServiceContext:contextCopy];
LABEL_37:

    goto LABEL_38;
  }

  v30 = pk_Payment_log();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

  if (!v31)
  {
    goto LABEL_39;
  }

  dataSource = pk_Payment_log();
  if (os_log_type_enabled(dataSource, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = contextCopy;
    _os_log_impl(&_mh_execute_header, dataSource, OS_LOG_TYPE_DEFAULT, "Warning: Not saving invalid web service context (%@) for current watch", buf, 0xCu);
  }

LABEL_38:

LABEL_39:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)sharedPaymentWebServiceContextForPairingID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = NPKPairedOrPairingDevice();
    v9 = [v8 valueForProperty:NRDevicePropertyPairingID];

    if ([dCopy isEqual:v9])
    {
      dataSource = [(NPDCompanionAgentClient *)self dataSource];
      remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
      sharedPaymentWebServiceContext = [remoteAdminConnectionServiceAgent sharedPaymentWebServiceContext];
      completionCopy[2](completionCopy, sharedPaymentWebServiceContext);
    }

    else
    {
      v13 = pk_Payment_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = pk_Payment_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          uUIDString = [dCopy UUIDString];
          uUIDString2 = [v9 UUIDString];
          v18 = 138412546;
          v19 = uUIDString;
          v20 = 2112;
          v21 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error: Got request for shared web service context for pairing ID %@, which does not match current pairing ID %@. Returning nil; the caller will need to create a fresh context and re-register.", &v18, 0x16u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)setSharedPeerPaymentWebServiceContext:(id)context forPairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = NPKPeerPaymentWebServiceContextPath();
  [contextCopy archiveAtPath:v7];

  notify_post([NPKSharedPeerPaymentWebServiceChangedDarwinNotification UTF8String]);
  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (void)sharedPeerPaymentWebServiceContextForPairingID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = NPKPairedOrPairingDevice();
    v8 = [v7 valueForProperty:NRDevicePropertyPairingID];

    if ([dCopy isEqual:v8])
    {
      v9 = NPKPeerPaymentWebServiceContextPath();
      v10 = [PKPeerPaymentWebServiceContext contextWithArchive:v9];

      completionCopy[2](completionCopy, v10);
    }

    else
    {
      v11 = pk_Payment_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          uUIDString = [dCopy UUIDString];
          uUIDString2 = [v8 UUIDString];
          v16 = 138412546;
          v17 = uUIDString;
          v18 = 2112;
          v19 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: Got request for shared peer payment web service context for pairing ID %@, which does not match current pairing ID %@. Returning nil; the caller will need to create a fresh context and re-register.", &v16, 0x16u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)setPeerPaymentAccount:(id)account forPairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v5 = NPKSecureArchiveObject();
  v6 = NPKPeerPaymentAccountPath();
  [v5 writeToFile:v6 atomically:1];

  notify_post([NPKPeerPaymentAccountChangedDarwinNotification UTF8String]);
  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v7 = completionCopy;
  }
}

- (void)peerPaymentAccountForPairingID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = NPKPairedOrPairingDevice();
    v8 = [v7 valueForProperty:NRDevicePropertyPairingID];

    if ([dCopy isEqual:v8])
    {
      v9 = NPKPeerPaymentAccountPath();
      v10 = [NSData dataWithContentsOfFile:v9];

      if (v10)
      {
        objc_opt_class();
        v11 = NPKSecureUnarchiveObject();
      }

      else
      {
        v11 = 0;
      }

      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v12 = pk_Payment_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          uUIDString = [dCopy UUIDString];
          uUIDString2 = [v8 UUIDString];
          v17 = 138412546;
          v18 = uUIDString;
          v19 = 2112;
          v20 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: Got request for peer payment account for pairing ID %@, which does not match current pairing ID %@. Returning nil.", &v17, 0x16u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)updateSettings:(unint64_t)settings forPassWithUniqueID:(id)d
{
  dCopy = d;
  delegate = [(NPDCompanionAgentClient *)self delegate];
  [delegate handleUpdatedSettings:settings forPassWithUniqueID:dCopy];

  if (NPKIsPairedDeviceStandalone())
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    passSyncService = [dataSource passSyncService];
    [passSyncService handleSettingsChanged:settings forPassWithUniqueID:dCopy];
  }
}

- (void)countOfPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (NPKPairedOrPairingDeviceIsTinker())
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Note that this count of passes returned for a tinker device does not include non-payment passes!", v14, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc_init(PKPassLibrary);
    v8 = [v9 countPassesOfType:0];
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
  v13 = [uniqueIDs count];

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, &v8[v13]);
  }
}

- (void)passesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = NPKPairedDeviceSecureElementIdentifiers();
  if (v6)
  {
    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    companionPaymentPassDatabase = [dataSource companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028724;
    v15[3] = &unk_1000720C8;
    v15[4] = self;
    v16 = v6;
    v17 = v5;
    [uniqueIDs enumerateObjectsUsingBlock:v15];
  }

  if (NPKPairedOrPairingDeviceIsTinker())
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Note that these passes returned for a tinker device do not include non-payment passes!", v14, 2u);
    }
  }

  else
  {
    v12 = objc_alloc_init(PKPassLibrary);
    v13 = [v12 passesOfType:0];
    if ([v13 count])
    {
      [v5 addObjectsFromArray:v13];
    }
  }

LABEL_11:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v5);
  }
}

- (void)passesOfCardType:(int64_t)type withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = +[PKPassLibrary sharedInstance];
    v7 = [v6 passesOfCardType:type];

    completionCopy[2](completionCopy, v7);
  }
}

- (void)identityPassesOfTypes:(id)types withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    typesCopy = types;
    v7 = +[PKPassLibrary sharedInstance];
    allObjects = [typesCopy allObjects];

    v9 = [v7 identityPassesOfTypes:allObjects];

    completionCopy[2](completionCopy, v9);
  }
}

- (void)deviceIDSIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceIDSIdentifier = [targetDevice deviceIDSIdentifier];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, deviceIDSIdentifier);
    }
  }

  else
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = targetDevice;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error: Unexpected web service target device:%@, we can't continue this route", &v12, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)initiateLostModeExitAuthWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = NPKIsPairedDeviceStandalone();
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  v7 = dataSource;
  if (v5)
  {
    passSyncService = [dataSource passSyncService];
    v8PassSyncService = [passSyncService passSyncService];
  }

  else
  {
    v8PassSyncService = [dataSource generalService];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002431C;
  v18 = sub_10002432C;
  v19 = 0;
  v10 = [[IDSProtobuf alloc] initWithProtobufData:0 type:11 isResponse:0];
  v20[0] = IDSSendMessageOptionTimeoutKey;
  v11 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v21[0] = v11;
  v21[1] = &__kCFBooleanTrue;
  v20[1] = IDSSendMessageOptionBypassDuetKey;
  v20[2] = IDSSendMessageOptionAllowCloudDeliveryKey;
  v21[2] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  v13 = NPKProtoSendWithOptions();

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)markAllAppletsForDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent markAllAppletsForDeletionWithCompletion:completionCopy];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0
{
  identifiersCopy = identifiers;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  v40 = +[NSMutableSet set];
  v39 = +[NSMutableSet set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = identifiersCopy;
  v15 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = +[NPKGizmoDatabase sharedDatabase];
        v21 = [v20 transactionsForTransactionSourceIdentifier:v19 withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy orderedByDate:1 limit:limit];

        v22 = +[NPKGizmoDatabase sharedDatabase];
        v23 = [v22 passUniqueIDForTransactionSourceIdentifier:v19];

        if (v21)
        {
          [v40 addObjectsFromArray:v21];
        }

        if (v23)
        {
          [v39 addObject:v23];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v16);
  }

  v24 = pk_Payment_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v26 = pk_Payment_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v40 count];
      *buf = 138413314;
      v53 = obj;
      v54 = 2112;
      v55 = v39;
      v56 = 1024;
      sourceCopy = source;
      v58 = 1024;
      dataCopy = data;
      v60 = 1024;
      v61 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Notice: Request for transactions with source identifiers %@ (unique IDs %@) with transaction source %u with backing data %u (%u transactions)", buf, 0x28u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v40);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = v39;
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v44;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v43 + 1) + 8 * j);
        dataSource = [(NPDCompanionAgentClient *)self dataSource];
        remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
        [remoteAdminConnectionServiceAgent retrieveTransactionsForPassWithUniqueID:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v30);
  }
}

- (void)deletePaymentTransactionWithIdentifier:(id)identifier fromDeviceWithPairingID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = dCopy;
      v34 = 2112;
      v35 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Request to delete from device with Pairing ID: %@ Transaction with Identifier: %@", buf, 0x16u);
    }
  }

  v14 = NPKPairedOrPairingDevice();
  v15 = [v14 valueForProperty:NRDevicePropertyPairingID];

  if ([v15 isEqual:dCopy])
  {
    v16 = +[NPKGizmoDatabase sharedDatabase];
    v17 = [v16 transactionSourceIdentifierForTransactionWithIdentifier:identifierCopy];

    v18 = +[NPKGizmoDatabase sharedDatabase];
    v19 = [v18 passUniqueIDForTransactionSourceIdentifier:v17];

    v20 = +[NPKGizmoDatabase sharedDatabase];
    [v20 removeTransactionWithIdentifier:identifierCopy];

    dataSource = [(NPDCompanionAgentClient *)self dataSource];
    remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
    [remoteAdminConnectionServiceAgent handleDeletePaymentTransactionWithIdentifier:identifierCopy passUniqueIdentifier:v19];

    delegate = [(NPDCompanionAgentClient *)self delegate];
    [delegate transactionSourceIdentifier:v17 didRemoveTransactionWithIdentifier:identifierCopy];

    v24 = 0;
  }

  else
  {
    v25 = pk_Payment_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_Payment_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [dCopy UUIDString];
        uUIDString2 = [v15 UUIDString];
        *buf = 138412546;
        v33 = uUIDString;
        v34 = 2112;
        v35 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: Remove requested for pairing ID %@ which does not match current pairing ID %@; ignoring.", buf, 0x16u);
      }
    }

    v30 = NSLocalizedDescriptionKey;
    v31 = @"PairingID does not match current Pairing ID";
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v24 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v17];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v24);
  }
}

- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  identifierCopy = identifier;
  applicationCopy = application;
  completionCopy = completion;
  v10 = +[NPKGizmoDatabase sharedDatabase];
  v11 = [v10 transitAppletStateForPassWithUniqueID:identifierCopy];

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = applicationCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for transit state for unique ID %@ payment application %@; returning %@", &v15, 0x20u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = +[NPKGizmoDatabase sharedDatabase];
  v8 = [v7 paymentBalancesForPassWithUniqueID:identifierCopy];

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = identifierCopy;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance get) Request for balances for unique ID %@; returning %@", &v12, 0x16u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

- (void)balanceReminderForBalance:(id)balance pass:(id)pass withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    passCopy = pass;
    balanceCopy = balance;
    v15 = NPKDomainAccessorForDomain();
    uniqueID = [passCopy uniqueID];
    v12 = NPKBalanceReminderIdentifierWithBalanceAndUniqueID();
    v13 = [v15 dataForKey:v12];

    objc_opt_class();
    v14 = NPKSecureUnarchiveObject();
    completionCopy[2](completionCopy, v14);

    [(NPDCompanionAgentClient *)self _updateLocalBalanceReminderForBalance:balanceCopy pass:passCopy];
  }
}

- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion
{
  reminderCopy = reminder;
  balanceCopy = balance;
  passCopy = pass;
  completionCopy = completion;
  v14 = pk_Payment_log();
  LODWORD(balance) = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (balance)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = reminderCopy;
      v33 = 2112;
      v34 = balanceCopy;
      v35 = 2112;
      v36 = passCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to set balance reminder %@ for balance %@ of pass %@", buf, 0x20u);
    }
  }

  v16 = NPKSecureArchiveObject();
  v17 = NPKDomainAccessorForDomain();
  uniqueID = [passCopy uniqueID];
  v19 = NPKBalanceReminderIdentifierWithBalanceAndUniqueID();
  [v17 setObject:v16 forKey:v19];

  synchronize = [v17 synchronize];
  objc_initWeak(buf, self);
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100029C90;
  v26[3] = &unk_100072118;
  v23 = reminderCopy;
  v27 = v23;
  v24 = balanceCopy;
  v28 = v24;
  v25 = passCopy;
  v29 = v25;
  objc_copyWeak(&v30, buf);
  [remoteAdminConnectionServiceAgent setBalanceReminder:v23 forBalance:v24 pass:v25 completion:v26];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

  objc_destroyWeak(&v30);

  objc_destroyWeak(buf);
}

- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    passCopy = pass;
    planCopy = plan;
    v15 = NPKDomainAccessorForDomain();
    v11 = [(NPDCompanionAgentClient *)self _commutePlanReminderIdentifierWithCommutePlan:planCopy pass:passCopy];
    [v15 doubleForKey:v11];
    v13 = v12;

    v14 = [[PKPaymentCommutePlanReminder alloc] initWithTimeInterval:v13];
    completionCopy[2](completionCopy, v14);

    [(NPDCompanionAgentClient *)self _updateLocalCommutePlanReminderForCommutePlan:planCopy pass:passCopy];
  }
}

- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion
{
  reminderCopy = reminder;
  planCopy = plan;
  passCopy = pass;
  completionCopy = completion;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = reminderCopy;
      v34 = 2112;
      v35 = passCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to set commute plan reminder %@ for pass %@", buf, 0x16u);
    }
  }

  v17 = NPKDomainAccessorForDomain();
  [reminderCopy timeInterval];
  v19 = v18;
  v20 = [(NPDCompanionAgentClient *)self _commutePlanReminderIdentifierWithCommutePlan:planCopy pass:passCopy];
  [v17 setDouble:v20 forKey:v19];

  synchronize = [v17 synchronize];
  objc_initWeak(buf, self);
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002A174;
  v27[3] = &unk_100072140;
  v24 = reminderCopy;
  v28 = v24;
  v25 = passCopy;
  v29 = v25;
  objc_copyWeak(&v31, buf);
  v26 = planCopy;
  v30 = v26;
  [remoteAdminConnectionServiceAgent setCommutePlanReminder:v24 forCommutePlan:v26 pass:v25 completion:v27];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method
{
  passCopy = pass;
  methodCopy = method;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v14 = 138412290;
      v15 = uniqueID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to start background verification observer for pass %@", &v14, 0xCu);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent startBackgroundVerificationObserverForPass:passCopy verificationMethod:methodCopy];
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  delegate = [(NPDCompanionAgentClient *)self delegate];
  [delegate fetchPendingTransactionForPassWithUniqueID:dCopy completion:completionCopy];
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d
{
  dCopy = d;
  delegate = [(NPDCompanionAgentClient *)self delegate];
  [delegate markPendingTransactionAsProcessedForPassWithUniqueID:dCopy];
}

- (void)presentStandaloneTransaction:(int64_t)transaction forPassUniqueIdentifier:(id)identifier terminalReaderIdentifier:(id)readerIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  completionCopy = completion;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_retainBlock(completionCopy);
      v23 = 134218754;
      transactionCopy = transaction;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = readerIdentifierCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to present standalone transaction %lu for pass unique id: %@ readerID: %@ completion %@", &v23, 0x2Au);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [targetDevice paymentWebService:paymentWebService presentStandaloneTransaction:transaction forPassUniqueIdentifier:identifierCopy terminalReaderIdentifier:readerIdentifierCopy completion:completionCopy];
  }

  else
  {
    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v22 = pk_General_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        transactionCopy = targetDevice;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: Unexpected web service target device:%@, we can't continue this route", &v23, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)hasActiveExternallySharedPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(completionCopy);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Request to get has active externally shared passes completion %@", &v12, 0xCu);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  [targetDevice hasActiveExternallySharedPassesWithCompletion:completionCopy];
}

- (void)expressModeEnabledForPassIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(completionCopy);
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to check express pass with identifier %@, completion %@", buf, 0x16u);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002AA8C;
  v16[3] = &unk_100070E30;
  v17 = completionCopy;
  v15 = completionCopy;
  [targetDevice expressModeEnabledForPassIdentifier:identifierCopy completion:v16];
}

- (void)updateCredentials:(id)credentials forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion
{
  credentialsCopy = credentials;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_retainBlock(completionCopy);
      v20 = 138413058;
      v21 = credentialsCopy;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to update credentials %@, for unique ID: %@, paymentApplicationIdentifier: %@, completion %@", &v20, 0x2Au);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent handleCredentialsUpdate:credentialsCopy forUniqueID:dCopy paymentApplicationIdentifier:identifierCopy completion:completionCopy];
}

- (void)isIssuerAppProvisioningSupported:(id)supported
{
  supportedCopy = supported;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Request to check if issuer app provisioning is supported", v12, 2u);
    }
  }

  v7 = NPKPairedOrPairingDevice();
  if (v7)
  {
    v8 = NPKIsTinkerDevice() ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: isIssuerAppProvisioningSupported:%d", v12, 8u);
    }
  }

  if (supportedCopy)
  {
    supportedCopy[2](supportedCopy, v8);
  }
}

- (void)bridgedClientInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(completionCopy);
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Request for bridged client info with completion %@", &v16, 0xCu);
    }
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  bridgedClientInfo = [targetDevice bridgedClientInfo];
  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138477827;
      v17 = bridgedClientInfo;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Returning bridgedClientInfo: %{private}@", &v16, 0xCu);
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, bridgedClientInfo, 0);
  }
}

- (void)canAddToCompanionPrecheckForegroundConnectivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(completionCopy);
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requesting can add to companion precheck connectivity with completion %@", &v14, 0xCu);
    }
  }

  if (completionCopy)
  {
    _isGizmoConnected = [(NPDCompanionAgentClient *)self _isGizmoConnected];
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromBOOL();
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Returning canAdd: %@", &v14, 0xCu);
      }
    }

    (*(completionCopy + 2))(completionCopy, _isGizmoConnected);
  }
}

- (void)addPendingProvisionings:(id)provisionings identityTargetDeviceIdentifier:(id)identifier completion:(id)completion
{
  provisioningsCopy = provisionings;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Request add pending provisioning", &v23, 2u);
    }
  }

  if (!identifierCopy)
  {
    goto LABEL_9;
  }

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  v15 = [dataSource deviceParingIDWithIDVRemoteDeviceID:identifierCopy];

  if (v15)
  {

    if ([(NPDCompanionAgentClient *)self shouldUseLegacyIdentityProvisioning])
    {
      [(NPDCompanionAgentClient *)self legacyIdentityProvisioning:provisioningsCopy targetDeviceIdentifier:identifierCopy completion:completionCopy];
      goto LABEL_15;
    }

LABEL_9:
    dataSource2 = [(NPDCompanionAgentClient *)self dataSource];
    paymentWebService = [dataSource2 paymentWebService];

    targetDevice = [paymentWebService targetDevice];
    [targetDevice addPendingProvisionings:provisioningsCopy completion:completionCopy];

    goto LABEL_15;
  }

  v19 = pk_General_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v21 = pk_General_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Could not find device paring ID for IDVD Target device Identifier:%@", &v23, 0xCu);
    }
  }

  v22 = NPKIDVRemoteDeviceSessionError();
  completionCopy[2](completionCopy, v22);

LABEL_15:
}

- (void)legacyIdentityProvisioning:(id)provisioning targetDeviceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  provisioningCopy = provisioning;
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: using legacy path to add pending provisioning identity pass", buf, 2u);
    }
  }

  firstObject = [provisioningCopy firstObject];
  v13 = [provisioningCopy count];

  if (v13 != 1)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected only one pending provisioning for legacy identity using the first one", buf, 2u);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = firstObject;
    attestations = [v17 attestations];
    if (attestations)
    {
      v19 = [PKShareablePassMetadata alloc];
      provisioningCredentialIdentifier = [v17 provisioningCredentialIdentifier];
      cardConfigurationIdentifier = [v17 cardConfigurationIdentifier];
      sharingInstanceIdentifier = [v17 sharingInstanceIdentifier];
      v23 = [v19 initWithProvisioningCredentialIdentifier:provisioningCredentialIdentifier cardConfigurationIdentifier:cardConfigurationIdentifier sharingInstanceIdentifier:sharingInstanceIdentifier];

      v24 = objc_alloc_init(PKIdentityProvisioningSupplementalData);
      passTypeIdentifier = [v17 passTypeIdentifier];
      [v24 setPassTypeIdentifier:passTypeIdentifier];

      passSerialNumber = [v17 passSerialNumber];
      [v24 setPassSerialNumber:passSerialNumber];

      accountKeyIdentifier = [v17 accountKeyIdentifier];
      [v24 setAccountKeyIdentifier:accountKeyIdentifier];

      delegate = [(NPDCompanionAgentClient *)self delegate];
      credentialIdentifier = [v17 credentialIdentifier];
      dataRepresentation = [v24 dataRepresentation];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10002B7AC;
      v38[3] = &unk_100072168;
      v39 = v17;
      [delegate provisionCredentialWithType:1 metadata:v23 credentialIdentifier:credentialIdentifier attestations:attestations supplementalData:dataRepresentation completion:v38];
    }

    else
    {
      v35 = pk_General_log();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (v36)
      {
        v37 = pk_General_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error: Missing attestation at given pending provisioning: %@", buf, 0xCu);
        }
      }

      v23 = NPKIDVRemoteDeviceSessionError();
      completionCopy[2](completionCopy, v23);
    }
  }

  else
  {
    v31 = pk_General_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

    if (v32)
    {
      v33 = pk_General_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        *buf = 138412290;
        v41 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error: Unexpected pending provisioning class: %@", buf, 0xCu);
      }
    }

    v17 = NPKIDVRemoteDeviceSessionError();
    completionCopy[2](completionCopy, v17);
  }
}

- (BOOL)shouldUseLegacyIdentityProvisioning
{
  v2 = NPKPairedOrPairingDevice();
  v3 = [[NSUUID alloc] initWithUUIDString:@"E6F0AB1C-320C-4941-9948-D2EAE7BA9A51"];
  v4 = [v2 supportsCapability:v3];

  return v4 ^ 1;
}

- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)d sessionData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  dCopy = d;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  v14 = [targetDevice trustedDeviceEnrollmentInfoForWebService:paymentWebService];
  deviceUDID = [v14 deviceUDID];
  v16 = objc_alloc_init(NSMutableData);
  v17 = [deviceUDID dataUsingEncoding:4];
  [v16 appendData:v17];

  v18 = [dCopy dataUsingEncoding:4];

  [v16 appendData:v18];
  [v16 appendData:dataCopy];

  sHA256Hash = [v16 SHA256Hash];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002BB28;
  v21[3] = &unk_100072190;
  v22 = handlerCopy;
  v20 = handlerCopy;
  [targetDevice paymentWebService:paymentWebService signData:sHA256Hash signatureEntanglementMode:0 withCompletionHandler:v21];
}

- (void)handlePeerPaymentTermsAndConditionsRequestFromGizmo
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo requesting Terms & Conditions acceptance flow", v13, 2u);
    }
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SURF_TC_ACCEPTANCE_MESSAGE_SPECIFIC" value:&stru_100073088 table:@"NanoPassKit"];

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  bulletinManager = [dataSource bulletinManager];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
  v12 = [NSURL URLWithString:@"bridge:root=com.apple.NanoPassbookBridgeSettings&action=ACCEPT_PP_TC"];
  [bulletinManager insertBridgeBulletinWithTitle:v11 message:v7 actionURL:v12 forPass:0];
}

- (void)currentSecureElementSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  [targetDevice currentSecureElementSnapshot:snapshotCopy];
}

- (void)allPaymentApplicationUsageSummaries:(id)summaries
{
  summariesCopy = summaries;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  [targetDevice allPaymentApplicationUsageSummariesWithCompletion:summariesCopy];
}

- (void)reclaimUnusedSEMemory:(id)memory
{
  memoryCopy = memory;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  paymentWebService = [dataSource paymentWebService];

  targetDevice = [paymentWebService targetDevice];
  [targetDevice reclaimUnusedSEMemory:memoryCopy];
}

- (void)_selectNewDefaultCardForUserAfterDeletionOfDefaultCardWithUniqueID:(id)d
{
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002431C;
  v27 = sub_10002432C;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10002431C;
  v21[4] = sub_10002432C;
  v22 = 0;
  v5 = +[NPKGizmoDatabase sharedDatabase];
  passDescriptions = [v5 passDescriptions];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002C224;
  v17[3] = &unk_1000721B8;
  v7 = dCopy;
  v18 = v7;
  v19 = &v23;
  v20 = v21;
  [passDescriptions enumerateObjectsUsingBlock:v17];

  v8 = pk_General_log();
  LODWORD(passDescriptions) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (passDescriptions)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v24[5];
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Selected new default card %@ for user", buf, 0xCu);
    }
  }

  if (v24[5])
  {
    v11 = +[NPKGizmoDatabase sharedDatabase];
    v12 = [v11 passForUniqueID:v24[5]];

    v13 = v24[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002C32C;
    v15[3] = &unk_1000721E0;
    v14 = v12;
    v16 = v14;
    [(NPDCompanionAgentClient *)self setDefaultCard:v13 completion:v15];
  }

  else
  {
    [(NPDCompanionAgentClient *)self setDefaultCard:0 completion:0];
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)_applyIngestionDateToPass:(id)pass
{
  passCopy = pass;
  v3 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID = [passCopy uniqueID];
  v5 = [v3 passForUniqueID:uniqueID];

  if (!v5 || ([v5 ingestedDate], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[NSDate distantPast];
  }

  [passCopy setIngestedDate:v6];
}

- (id)_commutePlanReminderIdentifierWithCommutePlan:(id)plan pass:(id)pass
{
  planCopy = plan;
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v8 = [NSString stringWithFormat:@"CommutePlanReminder-%@", uniqueID];

  transitCommutePlanType = [passCopy transitCommutePlanType];
  if (transitCommutePlanType == 2)
  {
    identifier = [planCopy identifier];
    v11 = [v8 stringByAppendingFormat:@"-planID:%@", identifier];

    v8 = v11;
  }

  return v8;
}

- (void)_updateLocalBalanceReminderForBalance:(id)balance pass:(id)pass
{
  balanceCopy = balance;
  passCopy = pass;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002C764;
  v12[3] = &unk_100072208;
  v13 = balanceCopy;
  v14 = passCopy;
  v10 = passCopy;
  v11 = balanceCopy;
  [remoteAdminConnectionServiceAgent balanceReminderForBalance:v11 pass:v10 completion:v12];
}

- (void)_updateLocalCommutePlanReminderForCommutePlan:(id)plan pass:(id)pass
{
  planCopy = plan;
  passCopy = pass;
  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  remoteAdminConnectionServiceAgent = [dataSource remoteAdminConnectionServiceAgent];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002C9DC;
  v12[3] = &unk_100072230;
  v12[4] = self;
  v13 = planCopy;
  v14 = passCopy;
  v10 = passCopy;
  v11 = planCopy;
  [remoteAdminConnectionServiceAgent commutePlanReminderForCommutePlan:v11 pass:v10 withCompletion:v12];
}

- (void)_removePendingAppleCardNotification
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v3 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNTPASS_PROVISIONING_ERROR" value:&stru_100073088 table:@"AccountPass"];

  dataSource = [(NPDCompanionAgentClient *)self dataSource];
  bulletinManager = [dataSource bulletinManager];
  [bulletinManager removeBridgeBulletinsWithTitle:v8 message:v5 actionURL:0];
}

- (NPDCompanionAgentClientDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NPDCompanionAgentClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end