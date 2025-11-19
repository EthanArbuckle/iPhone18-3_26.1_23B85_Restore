@interface NPDCompanionAgentClient
- (BOOL)_isGizmoConnected;
- (BOOL)_isPassQualifiedToBeDefaultWithUniqueID:(id)a3;
- (BOOL)shouldUseLegacyIdentityProvisioning;
- (NPDCompanionAgentClientDataSource)dataSource;
- (NPDCompanionAgentClientDelegate)delegate;
- (id)_commutePlanReminderIdentifierWithCommutePlan:(id)a3 pass:(id)a4;
- (id)_defaultCard;
- (id)paymentPassWithUniqueID:(id)a3;
- (void)_applyIngestionDateToPass:(id)a3;
- (void)_invalidateWatchOfferTimer;
- (void)_invokeWatchOfferProvisioningCompletionHandlersWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_removePendingAppleCardNotification;
- (void)_selectNewDefaultCardForUserAfterDeletionOfDefaultCardWithUniqueID:(id)a3;
- (void)_setOrResetWatchOfferTimerForProvisioningURL:(id)a3;
- (void)_updateLocalBalanceReminderForBalance:(id)a3 pass:(id)a4;
- (void)_updateLocalCommutePlanReminderForCommutePlan:(id)a3 pass:(id)a4;
- (void)addPendingProvisionings:(id)a3 identityTargetDeviceIdentifier:(id)a4 completion:(id)a5;
- (void)allPaymentApplicationUsageSummaries:(id)a3;
- (void)balanceReminderForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)a3 withCompletion:(id)a4;
- (void)bridgedClientInfoWithCompletion:(id)a3;
- (void)canAddToCompanionPrecheckForegroundConnectivityWithCompletion:(id)a3;
- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)countOfPassesWithCompletion:(id)a3;
- (void)credentialedPassUniqueIDsWithReply:(id)a3;
- (void)currentSecureElementSnapshot:(id)a3;
- (void)defaultCard:(id)a3;
- (void)defaultPaymentApplicationForPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)deletePaymentTransactionWithIdentifier:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)deviceIDSIdentifierWithCompletion:(id)a3;
- (void)expressModeEnabledForPassIdentifier:(id)a3 completion:(id)a4;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo;
- (void)handlePeerPaymentTermsAndConditionsRequestFromGizmo;
- (void)handlePendingUnpairingWithCompletion:(id)a3;
- (void)handlePendingiCloudSignoutWithCompletion:(id)a3;
- (void)handleProvisioningErrorForAccountIdentifier:(id)a3 error:(id)a4;
- (void)hasActiveExternallySharedPassesWithCompletion:(id)a3;
- (void)hasPaymentPassWithUniqueID:(id)a3 reply:(id)a4;
- (void)identityPassesOfTypes:(id)a3 withCompletion:(id)a4;
- (void)initiateConsistencyCheckWithCompletion:(id)a3;
- (void)initiateLostModeExitAuthWithCompletion:(id)a3;
- (void)isIssuerAppProvisioningSupported:(id)a3;
- (void)legacyIdentityProvisioning:(id)a3 targetDeviceIdentifier:(id)a4 completion:(id)a5;
- (void)markAllAppletsForDeletionWithCompletion:(id)a3;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3;
- (void)noteWatchOfferDisplayedForPaymentPassWithUniqueID:(id)a3;
- (void)passesOfCardType:(int64_t)a3 withCompletion:(id)a4;
- (void)passesWithCompletion:(id)a3;
- (void)passesWithReaderIdentifier:(id)a3 completion:(id)a4;
- (void)paymentPassUniqueIDsExcludingDeactivated:(BOOL)a3 reply:(id)a4;
- (void)paymentPassWithDeviceAccountIdentifier:(id)a3 completion:(id)a4;
- (void)paymentPassWithUniqueID:(id)a3 reply:(id)a4;
- (void)paymentPassesWithPrimaryAccountIdentifier:(id)a3 completion:(id)a4;
- (void)peerPaymentAccountForPairingID:(id)a3 withCompletion:(id)a4;
- (void)presentStandaloneTransaction:(int64_t)a3 forPassUniqueIdentifier:(id)a4 terminalReaderIdentifier:(id)a5 completion:(id)a6;
- (void)provisionPassForRemoteCredentialWithType:(int64_t)a3 andIdentifier:(id)a4 completion:(id)a5;
- (void)reclaimUnusedSEMemory:(id)a3;
- (void)redownloadAllPaymentPassesWithCompletion:(id)a3;
- (void)registerDeviceWithCompletion:(id)a3;
- (void)removePaymentPassWithUniqueID:(id)a3 forPairingID:(id)a4 waitForConfirmation:(BOOL)a5 completion:(id)a6;
- (void)savePaymentPassData:(id)a3 withUniqueID:(id)a4 forPairingID:(id)a5 completion:(id)a6;
- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setDefaultCard:(id)a3 completion:(id)a4;
- (void)setDefaultPaymentApplication:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5;
- (void)setPeerPaymentAccount:(id)a3 forPairingID:(id)a4 completion:(id)a5;
- (void)setSharedPaymentWebServiceContext:(id)a3 forPairingID:(id)a4 completion:(id)a5;
- (void)setSharedPeerPaymentWebServiceContext:(id)a3 forPairingID:(id)a4 completion:(id)a5;
- (void)sharedPaymentWebServiceContextForPairingID:(id)a3 withCompletion:(id)a4;
- (void)sharedPeerPaymentWebServiceContextForPairingID:(id)a3 withCompletion:(id)a4;
- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10;
- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5;
- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)a3 sessionData:(id)a4 handler:(id)a5;
- (void)updateCredentials:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6;
- (void)updateSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3 completion:(id)a4;
@end

@implementation NPDCompanionAgentClient

- (void)noteWatchOfferDisplayedForPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Note watch offer displayed for pass with unique ID %@", &v10, 0xCu);
    }
  }

  v8 = [(NPDCompanionAgentClient *)self dataSource];
  v9 = [v8 bulletinScheduler];
  [v9 noteOfferDisplayedForCompanionPaymentPassWithUniqueID:v4];
}

- (void)provisionPassForRemoteCredentialWithType:(int64_t)a3 andIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
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

  v13 = [(NPDCompanionAgentClient *)self dataSource];
  v14 = [v13 remoteAdminConnectionServiceAgent];
  [v14 provisionPassForRemoteCredentialWithType:a3 andIdentifier:v9 completion:v8];
}

- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo
{
  v3 = [(NPDCompanionAgentClient *)self dataSource];
  v4 = [v3 npsDomainAccessor];
  v5 = NPKProvisionAccountPassOnUnlock;
  v6 = [v4 objectForKey:NPKProvisionAccountPassOnUnlock];

  v7 = [v6 objectForKey:@"accountIdentifier"];
  v8 = [v6 objectForKey:@"makeDefault"];
  v9 = [v8 BOOLValue];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v9)
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
    v37 = v9;
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

          v20 = [*(*(&v40 + 1) + 8 * i) secureElementPass];
          v21 = [v20 associatedAccountServiceAccountIdentifier];

          if (v21 && [v21 isEqualToString:v7])
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
            v30 = v39;
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

    v25 = [(NPDCompanionAgentClient *)self dataSource];
    v26 = [v25 npsDomainAccessor];
    [v26 removeObjectForKey:v5];

    v27 = [(NPDCompanionAgentClient *)self dataSource];
    v28 = [v27 npsDomainAccessor];
    v29 = [v28 synchronize];

    v30 = [(NPDCompanionAgentClient *)self dataSource];
    v31 = [v30 npsManager];
    v32 = NPKDefaultsDomain;
    v33 = [NSSet setWithObject:v5];
    [v31 synchronizeNanoDomain:v32 keys:v33];

LABEL_27:
  }
}

- (void)handleProvisioningErrorForAccountIdentifier:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v5;
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
        v15 = [v14 secureElementPass];
        v16 = [v15 associatedAccountServiceAccountIdentifier];

        if (v16 && [v16 isEqualToString:v5])
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
  v18 = [v11 paymentPass];

  if (v18)
  {
    v19 = [v11 paymentPass];
    v35 = v19;
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

  v27 = [(NPDCompanionAgentClient *)self dataSource];
  v28 = [v27 bulletinManager];
  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];
  [v28 insertBridgeBulletinWithTitle:v30 message:v26 actionURL:v17 delay:180.0];
}

- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(NPDCompanionAgentClient *)self dataSource];
    v9 = [v8 paymentWebService];
    v10 = [v9 targetDevice];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 currentPassbookState], PKPassbookIsCurrentlyDeletedByUser()))
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

      v7[2](v7, 0, v11);
    }

    else
    {
      v15 = [NPKCompanionAgentConnection watchProvisioningURLForPaymentPasses:v6];
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
      v21 = v7;
      v19[4] = self;
      v18 = v15;
      [v11 openApplication:@"com.apple.Bridge" withOptions:v17 completion:v19];
    }

    goto LABEL_13;
  }

  if (v7)
  {
    v10 = PKDisplayableErrorForCommonType();
    v7[2](v7, 0, v10);
LABEL_13:
  }
}

- (void)_setOrResetWatchOfferTimerForProvisioningURL:(id)a3
{
  v4 = a3;
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
  v15 = v4;
  v11 = v4;
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

- (void)_invokeWatchOfferProvisioningCompletionHandlersWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(NPDCompanionAgentClient *)self dataSource];
  v8 = [v7 watchOfferProvisioningCompletionHandlers];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000233F4;
  v15 = &unk_100071E98;
  v17 = a3;
  v16 = v6;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v12];

  v10 = [(NPDCompanionAgentClient *)self dataSource:v12];
  v11 = [v10 watchOfferProvisioningCompletionHandlers];
  [v11 removeAllObjects];
}

- (void)registerDeviceWithCompletion:(id)a3
{
  v4 = a3;
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

  v8 = [(NPDCompanionAgentClient *)self dataSource];
  v9 = [v8 paymentWebService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023538;
  v11[3] = &unk_100071EC0;
  v12 = v4;
  v10 = v4;
  [v9 registerDeviceWithCompletion:v11];
}

- (void)paymentPassUniqueIDsExcludingDeactivated:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NPDCompanionAgentClient *)self dataSource];
  v8 = [v7 companionPaymentPassDatabase];
  v9 = [v8 uniqueIDs];

  v10 = [v9 mutableCopy];
  if (v4)
  {
    v25 = v9;
    v26 = v6;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v9;
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
          v18 = [v17 passActivationState];

          if (v18 == 4)
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

    v9 = v25;
    v6 = v26;
  }

  v22 = pk_Payment_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment pass unique IDs (returning %@)", buf, 0xCu);
    }
  }

  v6[2](v6, v10);
}

- (void)paymentPassWithUniqueID:(id)a3 reply:(id)a4
{
  v7 = a4;
  v8 = [(NPDCompanionAgentClient *)self paymentPassWithUniqueID:a3];
  (*(a4 + 2))(v7, v8);
}

- (void)hasPaymentPassWithUniqueID:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[NPKGizmoDatabase sharedDatabase];
    v8 = [v7 hasPassForUniqueID:v5];

    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromBOOL();
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Request for has payment pass with unique ID %@ (replying with %@)", &v13, 0x16u);
      }
    }

    v6[2](v6, v8);
  }
}

- (id)paymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self dataSource];
  v6 = [v5 companionPaymentPassDatabase];
  v7 = [v6 paymentPassWithUniqueID:v4];

  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if ([v8 count])
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v9 = +[NPKGizmoDatabase sharedDatabase];
  v10 = [v7 uniqueID];
  v11 = [v9 transitAppletStateForPassWithUniqueID:v10];

  NPKUpdateTransitPassPropertiesForPass();
  v12 = +[NPKGizmoDatabase sharedDatabase];
  v13 = [v7 uniqueID];
  v14 = [v12 transactionSourceIdentifierForPassWithUniqueID:v13];

  v61 = v14;
  NPKUpdateTransactionSourceIdentifierForPass();
  [(NPDCompanionAgentClient *)self _applyIngestionDateToPass:v7];
  v15 = +[NPKGizmoDatabase sharedDatabase];
  v16 = [v15 passForUniqueID:v4 includeImageSets:0];

  [v7 setSettings:{objc_msgSend(v16, "settings")}];
  v60 = v16;
  v17 = [v16 paymentPass];
  v18 = [v17 copy];

  v19 = [v18 devicePaymentApplications];
  v20 = [v19 count];

  v63 = v8;
  v64 = v4;
  v62 = v11;
  v59 = v18;
  if (v20 == 1)
  {
    v21 = [v18 devicePrimaryPaymentApplication];
    v22 = [NSSet setWithObject:v21];
  }

  else
  {
    v23 = [v18 devicePaymentApplications];
    v24 = [v23 count];

    if (v24 < 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = [v18 devicePaymentApplications];
    }
  }

  v25 = NPKPairedOrPairingDevice();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v22;
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
        v28 = [v27 subcredentials];
        if ([v28 count])
        {
          v70 = i;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v29 = [v7 devicePaymentApplications];
          v30 = [v29 countByEnumeratingWithState:&v79 objects:v95 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v80;
            v69 = v28;
            while (2)
            {
              for (j = 0; j != v31; j = j + 1)
              {
                if (*v80 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v79 + 1) + 8 * j);
                v35 = [v34 applicationIdentifier];
                v36 = [v27 applicationIdentifier];
                v37 = [v35 isEqualToString:v36];

                if (v37)
                {
                  v28 = v69;
                  [v34 setSubcredentials:v69];
                  v38 = pk_Payment_log();
                  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

                  if (v39)
                  {
                    v40 = pk_Payment_log();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = [v34 subcredentials];
                      v42 = [v66 uniqueID];
                      *buf = 138412802;
                      v90 = v41;
                      v91 = 2112;
                      v92 = v42;
                      v93 = 2112;
                      v94 = v34;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Notice: Applied subcredentials %@\n to pass with unique id %@\n applet %@\n", buf, 0x20u);
                    }
                  }

                  goto LABEL_27;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v79 objects:v95 count:16];
              v28 = v69;
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
  v43 = [v7 devicePaymentApplications];
  v44 = [v43 countByEnumeratingWithState:&v75 objects:v88 count:16];
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
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v75 + 1) + 8 * k);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v49 = [v48 subcredentials];
        v50 = [v49 countByEnumeratingWithState:&v71 objects:v87 count:16];
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
                objc_enumerationMutation(v49);
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

            v51 = [v49 countByEnumeratingWithState:&v71 objects:v87 count:16];
          }

          while (v51);
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v75 objects:v88 count:16];
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

- (void)paymentPassesWithPrimaryAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002431C;
  v25 = sub_10002432C;
  v26 = +[NSMutableSet set];
  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if (v8)
  {
    v9 = [(NPDCompanionAgentClient *)self dataSource];
    v10 = [v9 companionPaymentPassDatabase];
    v11 = [v10 uniqueIDs];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100024334;
    v17[3] = &unk_100071EE8;
    v17[4] = self;
    v18 = v8;
    v19 = v6;
    v20 = &v21;
    [v11 enumerateObjectsUsingBlock:v17];
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
      v28 = v6;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment passes with FPANID %@ (replying with %@)", buf, 0x16u);
    }
  }

  if (v7)
  {
    v16 = [v22[5] copy];
    v7[2](v7, v16);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)paymentPassWithDeviceAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10002431C;
  v24 = sub_10002432C;
  v25 = 0;
  v8 = NPKPairedDeviceSecureElementIdentifiers();
  if (v8)
  {
    v9 = [(NPDCompanionAgentClient *)self dataSource];
    v10 = [v9 companionPaymentPassDatabase];
    v11 = [v10 uniqueIDs];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100024710;
    v16[3] = &unk_100071EE8;
    v16[4] = self;
    v17 = v8;
    v18 = v6;
    v19 = &v20;
    [v11 enumerateObjectsUsingBlock:v16];
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
      v27 = v6;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for payment pass with DPANID %@ (replying with %@)", buf, 0x16u);
    }
  }

  if (v7)
  {
    v7[2](v7, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)passesWithReaderIdentifier:(id)a3 completion:(id)a4
{
  v24 = a3;
  v22 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
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
    v11 = [(NPDCompanionAgentClient *)self dataSource];
    v12 = [v11 companionPaymentPassDatabase];
    v13 = [v12 uniqueIDs];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v13;
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
          v30 = v24;
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
  v26 = v24;
  v27 = v22;
  v19 = v22;
  v20 = v24;
  dispatch_group_notify(v8, &_dispatch_main_q, block);

  _Block_object_dispose(&buf, 8);
}

- (void)credentialedPassUniqueIDsWithReply:(id)a3
{
  v16 = a3;
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
    v7 = [(NPDCompanionAgentClient *)self dataSource];
    v8 = [v7 companionPaymentPassDatabase];
    v9 = [v8 uniqueIDs];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v9;
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
  v19 = v16;
  v14 = v16;
  dispatch_group_notify(v4, &_dispatch_main_q, block);

  _Block_object_dispose(v28, 8);
}

- (void)savePaymentPassData:(id)a3 withUniqueID:(id)a4 forPairingID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 UUIDString];
      *buf = 138412546;
      v59 = v11;
      v60 = 2112;
      v61 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to save payment pass with unique ID %@ for pairing ID %@", buf, 0x16u);
    }
  }

  v49 = self;
  v18 = [(NPDCompanionAgentClient *)self dataSource];
  v19 = [v18 companionPaymentPassDatabase];

  v20 = NPKPairedOrPairingDevice();
  v21 = [v20 valueForProperty:NRDevicePropertyPairingID];

  if (([v12 isEqual:v21] & 1) == 0)
  {
    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v12 UUIDString];
        v26 = [v21 UUIDString];
        *buf = 138412546;
        v59 = v25;
        v60 = 2112;
        v61 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: Save pass requested for device with pairing ID %@, which does not match current pairing ID %@.", buf, 0x16u);
      }
    }

    v27 = NPKDeviceWithPairingID();
    if (v27)
    {
      v28 = [NPDCompanionPaymentPassDatabase alloc];
      v29 = [NPDOutstandingPassDeletionStore alloc];
      v30 = [NPSDomainAccessor alloc];
      v31 = v10;
      v32 = [v30 initWithDomain:NPKDefaultsDomain];
      v33 = [(NPDOutstandingPassDeletionStore *)v29 initWithDomainAccessor:v32];
      v34 = [(NPDCompanionPaymentPassDatabase *)v28 initWithDevice:v27 outstandingDeletionStore:v33];

      v19 = v32;
      v10 = v31;
    }

    else
    {
      v34 = 0;
    }

    v19 = v34;
  }

  if (v19)
  {
    v35 = [v19 uniqueIDs];
    v36 = [v35 count];

    v56 = 0;
    v57 = 0;
    v48 = v10;
    v37 = [PKPass createWithData:v10 warnings:&v57 error:&v56];
    v38 = v57;
    v39 = v56;
    v40 = [v37 paymentPass];

    if (v40)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10002575C;
      v50[3] = &unk_100071F88;
      v51 = v19;
      v52 = v49;
      v55 = v36 != 0;
      v53 = v11;
      v54 = v13;
      [v51 savePaymentPass:v40 requireExisting:0 requireNewer:0 completion:v50];
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
          v59 = v11;
          v60 = 2112;
          v61 = v38;
          v62 = 2112;
          v63 = v39;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Warning: Could not initialize pass with unique ID %@ from pass data; not saving. Warnings: %@ Error: %@", buf, 0x20u);
        }
      }

      if (v13)
      {
        (*(v13 + 2))(v13, 0);
      }
    }

    v10 = v48;
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
        v44 = [v12 UUIDString];
        *buf = 138412290;
        v59 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Warning: Save pass requested for device with pairing ID %@, but that device is no longer paired; ignoring.", buf, 0xCu);
      }
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

- (void)removePaymentPassWithUniqueID:(id)a3 forPairingID:(id)a4 waitForConfirmation:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v58 = v10;
      v59 = 2112;
      v60 = v11;
      v61 = 1024;
      v62 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to remove payment pass with unique ID %@ for pairing ID %@ (wait for remote confirmation %d)", buf, 0x1Cu);
    }
  }

  v16 = NPKPairedOrPairingDevice();
  v17 = [v16 valueForProperty:NRDevicePropertyPairingID];

  if ([v11 isEqual:v17])
  {
    v38 = v11;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100025EB8;
    v50[3] = &unk_100071FB0;
    v37 = v12;
    v52 = v12;
    v39 = v10;
    v18 = v10;
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
    v25 = [(NPDCompanionAgentClient *)self dataSource];
    v26 = [v25 companionPaymentPassDatabase];
    v27 = [v26 paymentPassWithUniqueID:v23];

    if (v7)
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

    v11 = v38;

    v34 = v52;
    v10 = v39;
    v12 = v37;
    goto LABEL_18;
  }

  v29 = pk_Payment_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = pk_Payment_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v11 UUIDString];
      v33 = [v17 UUIDString];
      *buf = 138412546;
      v58 = v32;
      v59 = 2112;
      v60 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: Remove requested for pairing ID %@ which does not match current pairing ID %@; ignoring.", buf, 0x16u);
    }
  }

  if (v12)
  {
    v55 = NSLocalizedDescriptionKey;
    v56 = @"Pairing ID doesn't match";
    v34 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v35 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v34];
    (*(v12 + 2))(v12, 0, v35);

LABEL_18:
  }
}

- (BOOL)_isGizmoConnected
{
  v3 = NPKIsPairedDeviceStandalone();
  v4 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 passSyncService];
    v7 = [v6 passSyncService];
  }

  else
  {
    v7 = [v4 generalService];
  }

  v8 = NPKIsConnectedToPairedOrPairingDeviceFromService();
  return v8;
}

- (void)setDefaultCard:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to set default card to %@", buf, 0xCu);
    }
  }

  v11 = [(NPDCompanionAgentClient *)self dataSource];
  v12 = [v11 companionPaymentPassDatabase];
  v13 = [v12 uniqueIDs];

  if (v6)
  {
    if ([v13 containsObject:v6])
    {
      v14 = [(NPDCompanionAgentClient *)self dataSource];
      v15 = [v14 npsDomainAccessor];
      [v15 setObject:v6 forKey:NPKDefaultPaymentPassDefault];
LABEL_16:

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000269F4;
      v19[3] = &unk_100071620;
      v19[4] = self;
      v20 = v7;
      dispatch_async(&_dispatch_main_q, v19);

      goto LABEL_17;
    }
  }

  else if (![v13 count])
  {
    v14 = [(NPDCompanionAgentClient *)self dataSource];
    v15 = [v14 npsDomainAccessor];
    [v15 removeObjectForKey:NPKDefaultPaymentPassDefault];
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
      v22 = v6;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Rejecting invalid default card: %@, current cards = %@", buf, 0x16u);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_17:
}

- (void)defaultCard:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NPDCompanionAgentClient *)self _defaultCard];
    v4[2](v4, v5);
  }
}

- (id)_defaultCard
{
  v3 = [(NPDCompanionAgentClient *)self dataSource];
  v4 = [v3 npsDomainAccessor];
  v5 = [v4 synchronize];

  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = [v6 npsDomainAccessor];
  v8 = [v7 objectForKey:NPKDefaultPaymentPassDefault];

  return v8;
}

- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    if (v9)
    {
      v7 = [(NPDCompanionAgentClient *)self _defaultCard];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(NPDCompanionAgentClient *)self _isPassQualifiedToBeDefaultWithUniqueID:v9];
      }

      v6[2](v6, v8);
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (BOOL)_isPassQualifiedToBeDefaultWithUniqueID:(id)a3
{
  v3 = a3;
  v4 = +[NPKGizmoDatabase sharedDatabase];
  v5 = [v4 passForUniqueID:v3];
  v6 = [v5 paymentPass];

  if (v6)
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

    v11 = [v9 associatedPassUniqueID];
    v12 = +[NPKGizmoDatabase sharedDatabase];
    v13 = [v12 preferredPaymentApplicationForPaymentPass:v6];

    v14 = [v13 state];
    v15 = NPKPairedDeviceSecureElementIdentifiers();
    if ([v15 count])
    {
      NPKIdentifyDevicePaymentApplicationsForPass();
    }

    v16 = [v11 isEqualToString:v3];
    if ([v6 effectiveContactlessPaymentApplicationState] == 1)
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
        v18 = v14 == 2;
      }

      v17 = v18;
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v6 supportsDefaultCardSelection];
      if ((v16 & 1) == 0)
      {
LABEL_18:
        v10 = v17 & v19;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v19 = 1;
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

- (void)defaultPaymentApplicationForPassWithUniqueID:(id)a3 completion:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = +[NPKGizmoDatabase sharedDatabase];
  v7 = [v6 passForUniqueID:v13];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = +[NPKGizmoDatabase sharedDatabase];
  v9 = [v8 passForUniqueID:v13];

  if (!v9)
  {
LABEL_7:
    v5[2](v5, 0);
    goto LABEL_8;
  }

  v10 = NPKPairedDeviceSecureElementIdentifiers();
  if ([v10 count])
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v11 = +[NPKGizmoDatabase sharedDatabase];
  v12 = [v11 preferredPaymentApplicationForPaymentPass:v9];
  (v5)[2](v5, v12);

LABEL_8:
}

- (void)setDefaultPaymentApplication:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100027260;
  v25[3] = &unk_100072078;
  v10 = a5;
  v27 = v10;
  v25[4] = self;
  v11 = v9;
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
  [v17 setPreferredPaymentApplication:v8 forPaymentPass:v16];

  if (![(NPDCompanionAgentClient *)self _isGizmoConnected])
  {
    goto LABEL_6;
  }

  v18 = [(NPDCompanionAgentClient *)self dataSource];
  v19 = [v18 remoteAdminConnectionServiceAgent];
  v20 = [v8 applicationIdentifier];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000274E8;
  v21[3] = &unk_1000720A0;
  v16 = v16;
  v22 = v16;
  v23 = v10;
  v24 = v12;
  [v19 handlePreferredAID:v20 forPassWithUniqueID:v11 completion:v21];

LABEL_7:
}

- (void)initiateConsistencyCheckWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = [v6 remoteAdminConnectionServiceAgent];
  [v5 initiateConsistencyCheckWithCompletion:v4];
}

- (void)redownloadAllPaymentPassesWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = [v6 remoteAdminConnectionServiceAgent];
  [v5 redownloadAllPaymentPassesWithCompletion:v4];
}

- (void)handlePendingUnpairingWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = [v6 remoteAdminConnectionServiceAgent];
  [v5 handlePendingUnpairingWithCompletion:v4];
}

- (void)handlePendingiCloudSignoutWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = [v6 remoteAdminConnectionServiceAgent];
  [v5 handlePendingiCloudSignoutWithCompletion:v4];
}

- (void)setSharedPaymentWebServiceContext:(id)a3 forPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NPKPairedOrPairingDevice();
  v12 = [v11 valueForProperty:NRDevicePropertyPairingID];

  if (![v9 isEqual:v12])
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 UUIDString];
        v21 = [v12 UUIDString];
        *buf = 138412546;
        v42 = v20;
        v43 = 2112;
        v44 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Got shared payment web service context for device with pairing ID %@, which does not match the current device (%@). Attempting to save in the correct pairing store location.", buf, 0x16u);
      }
    }

    v15 = NPKDeviceWithPairingID();
    if (!v15)
    {
      v32 = pk_Payment_log();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v9 UUIDString];
          *buf = 138412546;
          v42 = v34;
          v43 = 2112;
          v44 = v8;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: No device found with pairing ID %@. Ignoring web service context %@.", buf, 0x16u);
        }

        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v16 = +[NSMutableArray array];
    v22 = [v15 valueForProperty:NRDevicePropertySEID];
    if (v22)
    {
      [v16 addObject:v22];
    }

    v23 = [v15 valueForProperty:NRDevicePropertyAdditionalSEIDs];
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v16 addObjectsFromArray:v23];
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
            v29 = [v9 UUIDString];
            *buf = 138412546;
            v42 = v29;
            v43 = 2112;
            v44 = v24;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Notice: Archiving web service for device with pairing ID %@ at path %@", buf, 0x16u);
          }
        }

        [v8 archiveAtPath:v24];
      }

      else
      {
        v37 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (v37)
        {
          v38 = pk_Payment_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v9 UUIDString];
            *buf = 138412290;
            v42 = v39;
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
        v42 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: Not saving invalid web service context (%@) for non-current watch", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  v13 = NPKPairedDeviceSecureElementIdentifiers();
  v14 = NPKValidatePaymentWebServiceContextAgainstWatchSEIDs();

  if (v14)
  {
    v15 = [(NPDCompanionAgentClient *)self dataSource];
    v16 = [v15 remoteAdminConnectionServiceAgent];
    [v16 handleUpdatedSharedPaymentWebServiceContext:v8];
LABEL_37:

    goto LABEL_38;
  }

  v30 = pk_Payment_log();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

  if (!v31)
  {
    goto LABEL_39;
  }

  v15 = pk_Payment_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Not saving invalid web service context (%@) for current watch", buf, 0xCu);
  }

LABEL_38:

LABEL_39:
  if (v10)
  {
    v10[2](v10);
  }
}

- (void)sharedPaymentWebServiceContextForPairingID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = NPKPairedOrPairingDevice();
    v9 = [v8 valueForProperty:NRDevicePropertyPairingID];

    if ([v6 isEqual:v9])
    {
      v10 = [(NPDCompanionAgentClient *)self dataSource];
      v11 = [v10 remoteAdminConnectionServiceAgent];
      v12 = [v11 sharedPaymentWebServiceContext];
      v7[2](v7, v12);
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
          v16 = [v6 UUIDString];
          v17 = [v9 UUIDString];
          v18 = 138412546;
          v19 = v16;
          v20 = 2112;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error: Got request for shared web service context for pairing ID %@, which does not match current pairing ID %@. Returning nil; the caller will need to create a fresh context and re-register.", &v18, 0x16u);
        }
      }

      v7[2](v7, 0);
    }
  }
}

- (void)setSharedPeerPaymentWebServiceContext:(id)a3 forPairingID:(id)a4 completion:(id)a5
{
  v9 = a5;
  v6 = a3;
  v7 = NPKPeerPaymentWebServiceContextPath();
  [v6 archiveAtPath:v7];

  notify_post([NPKSharedPeerPaymentWebServiceChangedDarwinNotification UTF8String]);
  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)sharedPeerPaymentWebServiceContextForPairingID:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = NPKPairedOrPairingDevice();
    v8 = [v7 valueForProperty:NRDevicePropertyPairingID];

    if ([v5 isEqual:v8])
    {
      v9 = NPKPeerPaymentWebServiceContextPath();
      v10 = [PKPeerPaymentWebServiceContext contextWithArchive:v9];

      v6[2](v6, v10);
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
          v14 = [v5 UUIDString];
          v15 = [v8 UUIDString];
          v16 = 138412546;
          v17 = v14;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: Got request for shared peer payment web service context for pairing ID %@, which does not match current pairing ID %@. Returning nil; the caller will need to create a fresh context and re-register.", &v16, 0x16u);
        }
      }

      v6[2](v6, 0);
    }
  }
}

- (void)setPeerPaymentAccount:(id)a3 forPairingID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v5 = NPKSecureArchiveObject();
  v6 = NPKPeerPaymentAccountPath();
  [v5 writeToFile:v6 atomically:1];

  notify_post([NPKPeerPaymentAccountChangedDarwinNotification UTF8String]);
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)peerPaymentAccountForPairingID:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = NPKPairedOrPairingDevice();
    v8 = [v7 valueForProperty:NRDevicePropertyPairingID];

    if ([v5 isEqual:v8])
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

      v6[2](v6, v11);
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
          v15 = [v5 UUIDString];
          v16 = [v8 UUIDString];
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error: Got request for peer payment account for pairing ID %@, which does not match current pairing ID %@. Returning nil.", &v17, 0x16u);
        }
      }

      v6[2](v6, 0);
    }
  }
}

- (void)updateSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v9 = a4;
  v6 = [(NPDCompanionAgentClient *)self delegate];
  [v6 handleUpdatedSettings:a3 forPassWithUniqueID:v9];

  if (NPKIsPairedDeviceStandalone())
  {
    v7 = [(NPDCompanionAgentClient *)self dataSource];
    v8 = [v7 passSyncService];
    [v8 handleSettingsChanged:a3 forPassWithUniqueID:v9];
  }
}

- (void)countOfPassesWithCompletion:(id)a3
{
  v4 = a3;
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

  v10 = [(NPDCompanionAgentClient *)self dataSource];
  v11 = [v10 companionPaymentPassDatabase];
  v12 = [v11 uniqueIDs];
  v13 = [v12 count];

  if (v4)
  {
    (v4)[2](v4, &v8[v13]);
  }
}

- (void)passesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = NPKPairedDeviceSecureElementIdentifiers();
  if (v6)
  {
    v7 = [(NPDCompanionAgentClient *)self dataSource];
    v8 = [v7 companionPaymentPassDatabase];
    v9 = [v8 uniqueIDs];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100028724;
    v15[3] = &unk_1000720C8;
    v15[4] = self;
    v16 = v6;
    v17 = v5;
    [v9 enumerateObjectsUsingBlock:v15];
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
  if (v4)
  {
    v4[2](v4, v5);
  }
}

- (void)passesOfCardType:(int64_t)a3 withCompletion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = +[PKPassLibrary sharedInstance];
    v7 = [v6 passesOfCardType:a3];

    v5[2](v5, v7);
  }
}

- (void)identityPassesOfTypes:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[PKPassLibrary sharedInstance];
    v8 = [v6 allObjects];

    v9 = [v7 identityPassesOfTypes:v8];

    v5[2](v5, v9);
  }
}

- (void)deviceIDSIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self dataSource];
  v6 = [v5 paymentWebService];

  v7 = [v6 targetDevice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 deviceIDSIdentifier];
    if (v4)
    {
      v4[2](v4, v8);
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
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error: Unexpected web service target device:%@, we can't continue this route", &v12, 0xCu);
      }
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

- (void)initiateLostModeExitAuthWithCompletion:(id)a3
{
  v4 = a3;
  v5 = NPKIsPairedDeviceStandalone();
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 passSyncService];
    v9 = [v8 passSyncService];
  }

  else
  {
    v9 = [v6 generalService];
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

  if (v4)
  {
    v4[2](v4, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)markAllAppletsForDeletionWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v5 = [v6 remoteAdminConnectionServiceAgent];
  [v5 markAllAppletsForDeletionWithCompletion:v4];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10
{
  v14 = a3;
  v42 = a6;
  v41 = a7;
  v36 = a10;
  v40 = +[NSMutableSet set];
  v39 = +[NSMutableSet set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v14;
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
        v21 = [v20 transactionsForTransactionSourceIdentifier:v19 withTransactionSource:a4 withBackingData:a5 startDate:v42 endDate:v41 orderedByDate:1 limit:a9];

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
      v57 = a4;
      v58 = 1024;
      v59 = a5;
      v60 = 1024;
      v61 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Notice: Request for transactions with source identifiers %@ (unique IDs %@) with transaction source %u with backing data %u (%u transactions)", buf, 0x28u);
    }
  }

  if (v36)
  {
    v36[2](v36, v40);
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
        v34 = [(NPDCompanionAgentClient *)self dataSource];
        v35 = [v34 remoteAdminConnectionServiceAgent];
        [v35 retrieveTransactionsForPassWithUniqueID:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v30);
  }
}

- (void)deletePaymentTransactionWithIdentifier:(id)a3 fromDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v9;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Request to delete from device with Pairing ID: %@ Transaction with Identifier: %@", buf, 0x16u);
    }
  }

  v14 = NPKPairedOrPairingDevice();
  v15 = [v14 valueForProperty:NRDevicePropertyPairingID];

  if ([v15 isEqual:v9])
  {
    v16 = +[NPKGizmoDatabase sharedDatabase];
    v17 = [v16 transactionSourceIdentifierForTransactionWithIdentifier:v8];

    v18 = +[NPKGizmoDatabase sharedDatabase];
    v19 = [v18 passUniqueIDForTransactionSourceIdentifier:v17];

    v20 = +[NPKGizmoDatabase sharedDatabase];
    [v20 removeTransactionWithIdentifier:v8];

    v21 = [(NPDCompanionAgentClient *)self dataSource];
    v22 = [v21 remoteAdminConnectionServiceAgent];
    [v22 handleDeletePaymentTransactionWithIdentifier:v8 passUniqueIdentifier:v19];

    v23 = [(NPDCompanionAgentClient *)self delegate];
    [v23 transactionSourceIdentifier:v17 didRemoveTransactionWithIdentifier:v8];

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
        v28 = [v9 UUIDString];
        v29 = [v15 UUIDString];
        *buf = 138412546;
        v33 = v28;
        v34 = 2112;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: Remove requested for pairing ID %@ which does not match current pairing ID %@; ignoring.", buf, 0x16u);
      }
    }

    v30 = NSLocalizedDescriptionKey;
    v31 = @"PairingID does not match current Pairing ID";
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v24 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v17];
  }

  if (v10)
  {
    v10[2](v10, v24);
  }
}

- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NPKGizmoDatabase sharedDatabase];
  v11 = [v10 transitAppletStateForPassWithUniqueID:v7];

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Request for transit state for unique ID %@ payment application %@; returning %@", &v15, 0x20u);
    }
  }

  if (v9)
  {
    v9[2](v9, v11);
  }
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NPKGizmoDatabase sharedDatabase];
  v8 = [v7 paymentBalancesForPassWithUniqueID:v5];

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance get) Request for balances for unique ID %@; returning %@", &v12, 0x16u);
    }
  }

  if (v6)
  {
    v6[2](v6, v8);
  }
}

- (void)balanceReminderForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v15 = NPKDomainAccessorForDomain();
    v11 = [v9 uniqueID];
    v12 = NPKBalanceReminderIdentifierWithBalanceAndUniqueID();
    v13 = [v15 dataForKey:v12];

    objc_opt_class();
    v14 = NPKSecureUnarchiveObject();
    v8[2](v8, v14);

    [(NPDCompanionAgentClient *)self _updateLocalBalanceReminderForBalance:v10 pass:v9];
  }
}

- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_Payment_log();
  LODWORD(a4) = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (a4)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to set balance reminder %@ for balance %@ of pass %@", buf, 0x20u);
    }
  }

  v16 = NPKSecureArchiveObject();
  v17 = NPKDomainAccessorForDomain();
  v18 = [v12 uniqueID];
  v19 = NPKBalanceReminderIdentifierWithBalanceAndUniqueID();
  [v17 setObject:v16 forKey:v19];

  v20 = [v17 synchronize];
  objc_initWeak(buf, self);
  v21 = [(NPDCompanionAgentClient *)self dataSource];
  v22 = [v21 remoteAdminConnectionServiceAgent];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100029C90;
  v26[3] = &unk_100072118;
  v23 = v10;
  v27 = v23;
  v24 = v11;
  v28 = v24;
  v25 = v12;
  v29 = v25;
  objc_copyWeak(&v30, buf);
  [v22 setBalanceReminder:v23 forBalance:v24 pass:v25 completion:v26];

  if (v13)
  {
    v13[2](v13, 1);
  }

  objc_destroyWeak(&v30);

  objc_destroyWeak(buf);
}

- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v15 = NPKDomainAccessorForDomain();
    v11 = [(NPDCompanionAgentClient *)self _commutePlanReminderIdentifierWithCommutePlan:v10 pass:v9];
    [v15 doubleForKey:v11];
    v13 = v12;

    v14 = [[PKPaymentCommutePlanReminder alloc] initWithTimeInterval:v13];
    v8[2](v8, v14);

    [(NPDCompanionAgentClient *)self _updateLocalCommutePlanReminderForCommutePlan:v10 pass:v9];
  }
}

- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to set commute plan reminder %@ for pass %@", buf, 0x16u);
    }
  }

  v17 = NPKDomainAccessorForDomain();
  [v10 timeInterval];
  v19 = v18;
  v20 = [(NPDCompanionAgentClient *)self _commutePlanReminderIdentifierWithCommutePlan:v11 pass:v12];
  [v17 setDouble:v20 forKey:v19];

  v21 = [v17 synchronize];
  objc_initWeak(buf, self);
  v22 = [(NPDCompanionAgentClient *)self dataSource];
  v23 = [v22 remoteAdminConnectionServiceAgent];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002A174;
  v27[3] = &unk_100072140;
  v24 = v10;
  v28 = v24;
  v25 = v12;
  v29 = v25;
  objc_copyWeak(&v31, buf);
  v26 = v11;
  v30 = v26;
  [v23 setCommutePlanReminder:v24 forCommutePlan:v26 pass:v25 completion:v27];

  if (v13)
  {
    v13[2](v13, 1);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 uniqueID];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to start background verification observer for pass %@", &v14, 0xCu);
    }
  }

  v12 = [(NPDCompanionAgentClient *)self dataSource];
  v13 = [v12 remoteAdminConnectionServiceAgent];
  [v13 startBackgroundVerificationObserverForPass:v6 verificationMethod:v7];
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPDCompanionAgentClient *)self delegate];
  [v8 fetchPendingTransactionForPassWithUniqueID:v7 completion:v6];
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self delegate];
  [v5 markPendingTransactionAsProcessedForPassWithUniqueID:v4];
}

- (void)presentStandaloneTransaction:(int64_t)a3 forPassUniqueIdentifier:(id)a4 terminalReaderIdentifier:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_retainBlock(v12);
      v23 = 134218754;
      v24 = a3;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Request to present standalone transaction %lu for pass unique id: %@ readerID: %@ completion %@", &v23, 0x2Au);
    }
  }

  v17 = [(NPDCompanionAgentClient *)self dataSource];
  v18 = [v17 paymentWebService];

  v19 = [v18 targetDevice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 paymentWebService:v18 presentStandaloneTransaction:a3 forPassUniqueIdentifier:v10 terminalReaderIdentifier:v11 completion:v12];
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
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error: Unexpected web service target device:%@, we can't continue this route", &v23, 0xCu);
      }
    }

    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)hasActiveExternallySharedPassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(v4);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Request to get has active externally shared passes completion %@", &v12, 0xCu);
    }
  }

  v9 = [(NPDCompanionAgentClient *)self dataSource];
  v10 = [v9 paymentWebService];

  v11 = [v10 targetDevice];
  [v11 hasActiveExternallySharedPassesWithCompletion:v4];
}

- (void)expressModeEnabledForPassIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v7);
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to check express pass with identifier %@, completion %@", buf, 0x16u);
    }
  }

  v12 = [(NPDCompanionAgentClient *)self dataSource];
  v13 = [v12 paymentWebService];

  v14 = [v13 targetDevice];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002AA8C;
  v16[3] = &unk_100070E30;
  v17 = v7;
  v15 = v7;
  [v14 expressModeEnabledForPassIdentifier:v6 completion:v16];
}

- (void)updateCredentials:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_retainBlock(v13);
      v20 = 138413058;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to update credentials %@, for unique ID: %@, paymentApplicationIdentifier: %@, completion %@", &v20, 0x2Au);
    }
  }

  v18 = [(NPDCompanionAgentClient *)self dataSource];
  v19 = [v18 remoteAdminConnectionServiceAgent];
  [v19 handleCredentialsUpdate:v10 forUniqueID:v11 paymentApplicationIdentifier:v12 completion:v13];
}

- (void)isIssuerAppProvisioningSupported:(id)a3
{
  v3 = a3;
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

  if (v3)
  {
    v3[2](v3, v8);
  }
}

- (void)bridgedClientInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(v4);
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Request for bridged client info with completion %@", &v16, 0xCu);
    }
  }

  v9 = [(NPDCompanionAgentClient *)self dataSource];
  v10 = [v9 paymentWebService];

  v11 = [v10 targetDevice];
  v12 = [v11 bridgedClientInfo];
  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138477827;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Returning bridgedClientInfo: %{private}@", &v16, 0xCu);
    }
  }

  if (v4)
  {
    (*(v4 + 2))(v4, v12, 0);
  }
}

- (void)canAddToCompanionPrecheckForegroundConnectivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_retainBlock(v4);
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requesting can add to companion precheck connectivity with completion %@", &v14, 0xCu);
    }
  }

  if (v4)
  {
    v9 = [(NPDCompanionAgentClient *)self _isGizmoConnected];
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

    (*(v4 + 2))(v4, v9);
  }
}

- (void)addPendingProvisionings:(id)a3 identityTargetDeviceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  if (!v9)
  {
    goto LABEL_9;
  }

  v14 = [(NPDCompanionAgentClient *)self dataSource];
  v15 = [v14 deviceParingIDWithIDVRemoteDeviceID:v9];

  if (v15)
  {

    if ([(NPDCompanionAgentClient *)self shouldUseLegacyIdentityProvisioning])
    {
      [(NPDCompanionAgentClient *)self legacyIdentityProvisioning:v8 targetDeviceIdentifier:v9 completion:v10];
      goto LABEL_15;
    }

LABEL_9:
    v16 = [(NPDCompanionAgentClient *)self dataSource];
    v17 = [v16 paymentWebService];

    v18 = [v17 targetDevice];
    [v18 addPendingProvisionings:v8 completion:v10];

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
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Could not find device paring ID for IDVD Target device Identifier:%@", &v23, 0xCu);
    }
  }

  v22 = NPKIDVRemoteDeviceSessionError();
  v10[2](v10, v22);

LABEL_15:
}

- (void)legacyIdentityProvisioning:(id)a3 targetDeviceIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
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

  v12 = [v8 firstObject];
  v13 = [v8 count];

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
    v17 = v12;
    v18 = [v17 attestations];
    if (v18)
    {
      v19 = [PKShareablePassMetadata alloc];
      v20 = [v17 provisioningCredentialIdentifier];
      v21 = [v17 cardConfigurationIdentifier];
      v22 = [v17 sharingInstanceIdentifier];
      v23 = [v19 initWithProvisioningCredentialIdentifier:v20 cardConfigurationIdentifier:v21 sharingInstanceIdentifier:v22];

      v24 = objc_alloc_init(PKIdentityProvisioningSupplementalData);
      v25 = [v17 passTypeIdentifier];
      [v24 setPassTypeIdentifier:v25];

      v26 = [v17 passSerialNumber];
      [v24 setPassSerialNumber:v26];

      v27 = [v17 accountKeyIdentifier];
      [v24 setAccountKeyIdentifier:v27];

      v28 = [(NPDCompanionAgentClient *)self delegate];
      v29 = [v17 credentialIdentifier];
      v30 = [v24 dataRepresentation];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10002B7AC;
      v38[3] = &unk_100072168;
      v39 = v17;
      [v28 provisionCredentialWithType:1 metadata:v23 credentialIdentifier:v29 attestations:v18 supplementalData:v30 completion:v38];
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
      v7[2](v7, v23);
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
    v7[2](v7, v17);
  }
}

- (BOOL)shouldUseLegacyIdentityProvisioning
{
  v2 = NPKPairedOrPairingDevice();
  v3 = [[NSUUID alloc] initWithUUIDString:@"E6F0AB1C-320C-4941-9948-D2EAE7BA9A51"];
  v4 = [v2 supportsCapability:v3];

  return v4 ^ 1;
}

- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)a3 sessionData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPDCompanionAgentClient *)self dataSource];
  v12 = [v11 paymentWebService];

  v13 = [v12 targetDevice];
  v14 = [v13 trustedDeviceEnrollmentInfoForWebService:v12];
  v15 = [v14 deviceUDID];
  v16 = objc_alloc_init(NSMutableData);
  v17 = [v15 dataUsingEncoding:4];
  [v16 appendData:v17];

  v18 = [v10 dataUsingEncoding:4];

  [v16 appendData:v18];
  [v16 appendData:v9];

  v19 = [v16 SHA256Hash];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002BB28;
  v21[3] = &unk_100072190;
  v22 = v8;
  v20 = v8;
  [v13 paymentWebService:v12 signData:v19 signatureEntanglementMode:0 withCompletionHandler:v21];
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

  v8 = [(NPDCompanionAgentClient *)self dataSource];
  v9 = [v8 bulletinManager];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
  v12 = [NSURL URLWithString:@"bridge:root=com.apple.NanoPassbookBridgeSettings&action=ACCEPT_PP_TC"];
  [v9 insertBridgeBulletinWithTitle:v11 message:v7 actionURL:v12 forPass:0];
}

- (void)currentSecureElementSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = [v5 paymentWebService];

  v6 = [v7 targetDevice];
  [v6 currentSecureElementSnapshot:v4];
}

- (void)allPaymentApplicationUsageSummaries:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = [v5 paymentWebService];

  v6 = [v7 targetDevice];
  [v6 allPaymentApplicationUsageSummariesWithCompletion:v4];
}

- (void)reclaimUnusedSEMemory:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = [v5 paymentWebService];

  v6 = [v7 targetDevice];
  [v6 reclaimUnusedSEMemory:v4];
}

- (void)_selectNewDefaultCardForUserAfterDeletionOfDefaultCardWithUniqueID:(id)a3
{
  v4 = a3;
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
  v6 = [v5 passDescriptions];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002C224;
  v17[3] = &unk_1000721B8;
  v7 = v4;
  v18 = v7;
  v19 = &v23;
  v20 = v21;
  [v6 enumerateObjectsUsingBlock:v17];

  v8 = pk_General_log();
  LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
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

- (void)_applyIngestionDateToPass:(id)a3
{
  v7 = a3;
  v3 = +[NPKGizmoDatabase sharedDatabase];
  v4 = [v7 uniqueID];
  v5 = [v3 passForUniqueID:v4];

  if (!v5 || ([v5 ingestedDate], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[NSDate distantPast];
  }

  [v7 setIngestedDate:v6];
}

- (id)_commutePlanReminderIdentifierWithCommutePlan:(id)a3 pass:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 uniqueID];
  v8 = [NSString stringWithFormat:@"CommutePlanReminder-%@", v7];

  v9 = [v6 transitCommutePlanType];
  if (v9 == 2)
  {
    v10 = [v5 identifier];
    v11 = [v8 stringByAppendingFormat:@"-planID:%@", v10];

    v8 = v11;
  }

  return v8;
}

- (void)_updateLocalBalanceReminderForBalance:(id)a3 pass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionAgentClient *)self dataSource];
  v9 = [v8 remoteAdminConnectionServiceAgent];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002C764;
  v12[3] = &unk_100072208;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 balanceReminderForBalance:v11 pass:v10 completion:v12];
}

- (void)_updateLocalCommutePlanReminderForCommutePlan:(id)a3 pass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionAgentClient *)self dataSource];
  v9 = [v8 remoteAdminConnectionServiceAgent];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002C9DC;
  v12[3] = &unk_100072230;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 commutePlanReminderForCommutePlan:v11 pass:v10 withCompletion:v12];
}

- (void)_removePendingAppleCardNotification
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v3 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNTPASS_PROVISIONING_ERROR" value:&stru_100073088 table:@"AccountPass"];

  v6 = [(NPDCompanionAgentClient *)self dataSource];
  v7 = [v6 bulletinManager];
  [v7 removeBridgeBulletinsWithTitle:v8 message:v5 actionURL:0];
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