@interface PDServer
- (BOOL)defaultPassManagerCanUpdateDefaultPass:(id)pass;
- (BOOL)deviceAvailableForContinuityPayments:(id)payments;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldDelayRefreshFor:(id)for;
- (BOOL)shouldWritePass:(id)pass source:(int64_t)source error:(id *)error;
- (CGImage)thumbnailImageForPassIdentifier:(id)identifier size:(CGSize)size manager:(id)manager;
- (id)createCurrentNotificationRegistrationState;
- (id)defaultPaymentPassForContinuityDiscovery:(id)discovery;
- (id)paymentPassesForContinuityDiscovery:(id)discovery;
- (id)webServiceConfigurationForContinuityPayments:(id)payments;
- (void)_updateQuickActions;
- (void)accountForPaymentPass:(id)pass manager:(id)manager completion:(id)completion;
- (void)accountManager:(id)manager didAddAccount:(id)account;
- (void)accountManager:(id)manager didRemoveAccount:(id)account;
- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)applePayCloudStoreContainer:(id)container didFinishTransactionFetchForPassUniqueID:(id)d error:(id)error;
- (void)appletSubcredentialManager:(id)manager didUpdateCredential:(id)credential onPassWithIdentifier:(id)identifier oldShares:(id)shares;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)archivePassWithUniqueID:(id)d;
- (void)bindingStateChangedForPass:(id)pass;
- (void)cardFileManager:(id)manager didFailToDecryptRemoteAssets:(id)assets forPass:(id)pass;
- (void)cardFileManager:(id)manager didUpdateRemoteAssetsForPassWithUniqueID:(id)d;
- (void)dataMigrationRequestedWithPassLibrary:(id)library didRestoreFromBackup:(BOOL)backup;
- (void)dealloc;
- (void)defaultDiscoveryManager:(id)manager sendDiscoveryArticleLayoutsUpdated:(id)updated;
- (void)didCompleteRefresh:(id)refresh;
- (void)didReceiveRemotePaymentRequest:(id)request;
- (void)didRequestToRegister:(id)register fromDestination:(id)destination;
- (void)displayTapToRadarAlertForRequest:(id)request completion:(id)completion;
- (void)dynamicStateManager:(id)manager dynamicStatesDidUpdate:(id)update;
- (void)expressPassManager:(id)manager didFinishExpressTransactionWithState:(id)state;
- (void)expressPassManager:(id)manager didUpdateExpressPassConfigurations:(id)configurations;
- (void)handleContinuityPaymentBulletinActionWithIdentifier:(id)identifier manager:(id)manager;
- (void)handleDatabaseIntegrityProblem;
- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream;
- (void)handlerDetailsForConfiguration:(id)configuration completion:(id)completion;
- (void)inAppPaymentService:(id)service presentAdditionalInAppPaymentWithContext:(id)context completion:(id)completion;
- (void)inAppPaymentService:(id)service registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)completion;
- (void)inAppPaymentService:(id)service registerPaymentListenerEndpoint:(id)endpoint forHostIdentifier:(id)identifier processIdentifier:(int)processIdentifier completion:(id)completion;
- (void)inAppPaymentService:(id)service retrievePaymentListenerEndpointForHostIdentifier:(id)identifier completion:(id)completion;
- (void)inAppPaymentService:(id)service unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)completion;
- (void)introduceDatabaseIntegrityProblem;
- (void)issueSecureElementPassStateChangeNotificationForNewPasses:(id)passes;
- (void)markPassWithUniqueIdentifiersForDeletion:(id)deletion;
- (void)mutateTrueUniqueIDs:(id)ds;
- (void)noteACAccountChanged:(id)changed handler:(id)handler;
- (void)noteAutomaticallyPresentSettingsChangedForPassWithUniqueIdentifier:(id)identifier;
- (void)notePassWithUniqueID:(id)d isRevoked:(BOOL)revoked;
- (void)noteSettingsChangedForPassWithUniqueIdentifier:(id)identifier newSettings:(unint64_t)settings;
- (void)nukeStuff;
- (void)passDidUpdateTransactionSourceIdentifierWithPassUniqueIdentifier:(id)identifier;
- (void)passUniqueIdentifiersMovedToExpired:(id)expired;
- (void)passWithUniqueIdentifierDidDisappear:(id)disappear forReason:(unint64_t)reason withDiagnosticReason:(id)diagnosticReason;
- (void)passWithUniqueIdentifierWillDisappear:(id)disappear forReason:(unint64_t)reason withDiagnosticReason:(id)diagnosticReason;
- (void)passWritten:(id)written withDaemonData:(id)data diff:(id)diff fromSource:(int64_t)source;
- (void)paymentPass:(id)pass didUpdatePaymentApplications:(id)applications toPaymentApplications:(id)paymentApplications;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableDailyCashNotifications:(BOOL)notifications;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didResolvePendingTransitTransactionAmountsWithTransaction:(id)transaction paymentApplication:(id)application balance:(id)balance;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateDefaultPaymentApplication:(id)application;
- (void)paymentTransactionProcessorDidActivate:(id)activate;
- (void)paymentTransactionProcessorDidDeactivate:(id)deactivate;
- (void)paymentTransactionUpdated:(id)updated forTransactionSourceIdentifier:(id)identifier;
- (void)peerPaymentWebServiceCoordinator:(id)coordinator didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)peerPaymentWebServiceCoordinatorDidDeleteAccount;
- (void)pendingProvisioningManagerDidFinishProvisioningWithReceipts:(id)receipts;
- (void)placemarkFound:(id)found forTransaction:(id)transaction;
- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler;
- (void)primaryAppleAccountWasUpdated:(id)updated handler:(id)handler;
- (void)readTrueTransactionReceiptUniqueiDs:(id)ds;
- (void)readTrueUniqueIDs:(id)ds;
- (void)recoverPassWithUniqueID:(id)d;
- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason;
- (void)secureElementPairingDidChangeForReason:(unint64_t)reason;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)supportedPaymentSetupFeatures:(id)features completion:(id)completion;
- (void)transactionSourceIdentifier:(id)identifier willRemoveTransaction:(id)transaction;
- (void)willRemoveTransactionsWithSourceIdentifierMapping:(id)mapping;
@end

@implementation PDServer

- (void)dealloc
{
  [(PKIDSManager *)self->_idsManager removeDelegate:self];
  v3 = &qword_100923FE8;
  v4 = 11;
  do
  {
    v5 = *(v3 - 4);
    *(v3 - 4) = 0;

    v6 = *v3;
    *v3 = 0;
    v3 += 5;

    --v4;
  }

  while (v4);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  [(PDFlightManager *)self->_flightManager removeObserver:self];
  v9.receiver = self;
  v9.super_class = PDServer;
  [(PDServer *)&v9 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  v8 = -1;
  v9 = qword_100923FC8;
  do
  {
    v11 = *v9;
    v9 += 5;
    v10 = v11;
  }

  while (v11 != listener && v8++ != 9);
  if (v10 == listener)
  {
    v13 = v8;
  }

  else
  {
    v13 = 11;
  }

  if (v13 <= 0xAu)
  {
    [connectionCopy processIdentifier];
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1005B7300();
    }

    sub_1005B0200(self);
    sub_100028E2C(self, v7, v13);
  }

  return v13 < 0xBu;
}

- (BOOL)shouldWritePass:(id)pass source:(int64_t)source error:(id *)error
{
  passCopy = pass;
  if ([passCopy passType] || !PKIsManagedAppleID())
  {
    LOBYTE(error) = 1;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v12 = 138412290;
      v13 = uniqueID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Managed Apple Account cannot support pass with unique ID: %@", &v12, 0xCu);
    }

    if (error)
    {
      v10 = PKDisplayableErrorForCommonType();
      v11 = *error;
      *error = v10;

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (void)passWritten:(id)written withDaemonData:(id)data diff:(id)diff fromSource:(int64_t)source
{
  writtenCopy = written;
  dataCopy = data;
  diffCopy = diff;
  passType = [writtenCopy passType];
  uniqueID = [writtenCopy uniqueID];
  v96 = passType;
  if (passType == 1)
  {
    paymentPass = [writtenCopy paymentPass];
  }

  else
  {
    paymentPass = 0;
  }

  v105 = 0;
  v16 = [(PDDatabaseManager *)self->_databaseManager passSharesForPassUniqueIdentifier:uniqueID];
  v94 = [(PDDatabaseManager *)self->_databaseManager passEntitlementsForPassUniqueIdentifier:uniqueID];
  v95 = [(PDDatabaseManager *)self->_databaseManager auxiliaryItemIdentifiersForPassUniqueIdentifier:uniqueID];
  os_unfair_lock_lock(&self->_installedPassesLock);
  [(NSMutableSet *)self->_installedPassUniqueIDs addObject:uniqueID];
  os_unfair_lock_unlock(&self->_installedPassesLock);
  v17 = [(PDDatabaseManager *)self->_databaseManager passExistsWithUniqueID:uniqueID];
  v18 = PKLogFacilityTypeGetObject();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 138412802;
      v109 = uniqueID;
      v110 = 2048;
      sourceCopy2 = source;
      v112 = 2112;
      v113 = diffCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDServer (pass): updating pass %@ for %ld:\n\t%@.", buf, 0x20u);
    }

    if ([(PDDatabaseManager *)self->_databaseManager updatePass:writtenCopy withDaemonData:dataCopy oldPass:&v105 fromSource:source])
    {
      if (v96 == 1)
      {
        passType2 = [v105 passType];
        v21 = v105;
        if (passType2 != 1)
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v89 = v21;
      v22 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:uniqueID];

      if (v96 == 1)
      {
        if ([v22 passType] == 1)
        {
          v36 = v22;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v25 = v36;

      v37 = v89;
      if (v22)
      {
        v38 = v22;
        v39 = [v22 copy];
        if (v39)
        {
          sub_10002A05C(self, v39);
        }

        v22 = v38;
      }

      if (PKCloudKitPassSyncEnabled())
      {
        [(PDCloudSyncCoordinator *)self->_cloudSyncCoordiantor passUpdated:v22 source:source];
      }

      if (sub_1005B032C(self, kTCCServiceCalendar))
      {
        PKUpdateAllCalendarEventsOriginatingFromPass();
      }

      v40 = 1;
      goto LABEL_51;
    }
  }

  else
  {
    if (v19)
    {
      *buf = 138412546;
      v109 = uniqueID;
      v110 = 2048;
      sourceCopy2 = source;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDServer (pass): inserting pass %@ for %ld.", buf, 0x16u);
    }

    if ([(PDDatabaseManager *)self->_databaseManager insertPass:writtenCopy withDaemonData:dataCopy source:source])
    {
      v22 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:uniqueID];

      v23 = [(PDDatabaseManager *)self->_databaseManager passAnnotationsForPassUniqueIdentifier:uniqueID];
      if (v96 == 1)
      {
        if ([v22 passType] == 1)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (PKCloudKitPassSyncEnabled())
      {
        [(PDCloudSyncCoordinator *)self->_cloudSyncCoordiantor passAdded:v22 source:source];
      }

      if (v22)
      {
        v92 = v25;
        v26 = dataCopy;
        v27 = v23;
        v28 = diffCopy;
        v29 = v16;
        v30 = [(PDPassDynamicStateManager *)self->_dynamicStateManager passDynamicStateForUniqueIdentifier:uniqueID];
        v31 = v22;
        v32 = v30;
        v33 = v31;
        v34 = [v31 copy];
        if (v34)
        {
          sub_10002A2B8(self, v34, v32, source);
        }

        v22 = v33;
        v16 = v29;
        diffCopy = v28;
        v23 = v27;
        dataCopy = v26;
        v25 = v92;
      }

      if (v96 == 1 && v25)
      {
        [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator passAdded:v25];
        [(PDDiscoveryManager *)self->_discoveryManager passAdded:v25];
        [(PDAccountManager *)self->_accountManager passAdded:v25];
        [(PDPaymentOffersManager *)self->_paymentOffersManager passAdded:v25];
        [(PDAccountStatementMetadataProcessor *)self->_accountStatementMetadataProcessor passAdded:v25];
        [(PDFPANCardManager *)self->_fpanCardManager passAddedWithPass:v25];
      }

      else if (!v96 && [v22 supportsLifecycleUpdates])
      {
        if (v23)
        {
          [v23 sortingState];
          v35 = 1;
        }

        else
        {
          v35 = 0;
        }

        [(PDWebServicesCoordinator *)self->_webServicesCoordinator sendPassLifecycleEventForUniqueIdentifier:uniqueID state:v35];
      }

      v37 = 0;
      v40 = 2;
LABEL_51:
      v86 = v40;
      v91 = v22;
      if ([v25 isIdentityPass])
      {
        iso18013Manager = self->_iso18013Manager;
        uniqueID2 = [v91 uniqueID];
        v43 = iso18013Manager;
        v22 = v91;
        [(PDISO18013Manager *)v43 identityPassCacheCredentialsForPassAddedOrUpdated:uniqueID2];
      }

      if (PKBoardingPassEnhancementsEnabled())
      {
        [(PDFlightManager *)self->_flightManager passAddedOrUpdated:v22 oldPass:v105];
      }

      [(PDPassSignalManager *)self->_passSignalManager donateSignalForPass:v22 completion:&stru_10083CFA0];
      v90 = v37;
      if (!v25)
      {
        state2 = 0;
        effectiveContactlessPaymentApplicationState = 0;
LABEL_94:
        sub_1005D7124(self->_passTileManager, v22, dataCopy);
        [(PDSpotlightIndexer *)self->_spotlightIndexer passAddedOrUpdated:v22];
        [(PDIssuerBindingManager *)self->_issuerBindingManager passAddedOrUpdated:v22 passAdded:v105 == 0];
        unprotectedManagers = self->_unprotectedManagers;
        if (unprotectedManagers)
        {
          notificationStreamManager = unprotectedManagers->_notificationStreamManager;
        }

        else
        {
          notificationStreamManager = 0;
        }

        [(PDNotificationStreamManager *)notificationStreamManager recalculateNotificationNames];
        [(PDUserNotificationManager *)self->_userNotificationManager updateWalletBadgeCount];
        [(PDUserNotificationManager *)self->_userNotificationManager updatePassAssetsWithPassUniqueID:uniqueID];
        v72 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:128 forPassWithUniqueIdentifier:uniqueID];
        if (v96 == 1)
        {
          v73 = [(PDDatabaseManager *)self->_databaseManager settingEnabled:8 forPassWithUniqueIdentifier:uniqueID];
          v74 = 0;
          v75 = v73 ^ 1;
        }

        else
        {
          v76 = +[PKWalletVisibility isWalletVisible];
          v75 = 0;
          v74 = v76 ^ 1;
        }

        if (source != 2 && ((v72 | v75) & 1) == 0 && (v74 & 1) == 0)
        {
          v77 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v109 = uniqueID;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "PDServer: issuing insert/update user notification for pass %@.", buf, 0xCu);
          }

          v78 = [[PDPassUpdateUserNotification alloc] initWithPassDiff:diffCopy];
          [(PDUserNotification *)v78 setReissueBannerOnUpdate:1];
          [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v78];
        }

        v79 = effectiveContactlessPaymentApplicationState;
        [(_PDSystemPassRelevancyCoordinator *)self->_relevancyCoordinator passAddedOrUpdated:v91 oldPass:v105 from:source];
        [(PDDefaultPassManager *)self->_defaultPassManager updateContactlessPassesAvailability];
        if (v96 == 1)
        {
          [(PDDefaultPassManager *)self->_defaultPassManager updateDefaultPaymentPassIfNeeded];
        }

        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = sub_10002A5EC;
        v97[3] = &unk_10083CFC8;
        paymentPass = v25;
        v98 = paymentPass;
        selfCopy = self;
        v101 = state2;
        v102 = v79;
        sourceCopy3 = source;
        v104 = v86;
        writtenCopy = v91;
        v100 = writtenCopy;
        sub_100028874(v97);

        goto LABEL_108;
      }

      secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
      v45 = [v25 primaryPaymentApplicationForSecureElementIdentifiers:secureElementIdentifiers];
      v80 = secureElementIdentifiers;
      v46 = [v37 primaryPaymentApplicationForSecureElementIdentifiers:secureElementIdentifiers];
      if (v45)
      {
        state = [v45 state];
      }

      else
      {
        state = 0;
      }

      v84 = dataCopy;
      v85 = state;
      sourceCopy4 = source;
      v83 = diffCopy;
      v81 = v16;
      v87 = v46;
      if (v46)
      {
        state2 = [v46 state];
      }

      else
      {
        state2 = 0;
      }

      v106[0] = @"primary-payment-method-type";
      v88 = v45;
      v49 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v45 paymentType]);
      v107[0] = v49;
      v106[1] = @"has-transaction-service";
      transactionServiceURL = [v25 transactionServiceURL];
      v51 = [NSNumber numberWithBool:transactionServiceURL != 0];
      v107[1] = v51;
      v106[2] = @"has-message-service";
      messageServiceURL = [v25 messageServiceURL];
      v53 = [NSNumber numberWithBool:messageServiceURL != 0];
      v107[2] = v53;
      v54 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:3];
      PKAnalyticsSendEvent();

      effectiveContactlessPaymentApplicationState = v85;
      if (v85 == 6 && state2 != 6)
      {
        PKAnalyticsSendEvent();
      }

      v55 = PKLogFacilityTypeGetObject();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v85 == state2)
      {
        if (!v56)
        {
          goto LABEL_80;
        }

        stateAsString = [v88 stateAsString];
        v58 = stateAsString;
        v64 = @"none";
        if (stateAsString)
        {
          v64 = stateAsString;
        }

        *buf = 138412546;
        v109 = uniqueID;
        v110 = 2114;
        sourceCopy2 = v64;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "PDServer (pass): secure element pass %@ maintained primary application state %{public}@.", buf, 0x16u);
      }

      else
      {
        if (!v56)
        {
          goto LABEL_80;
        }

        stateAsString2 = [v87 stateAsString];
        v58 = stateAsString2;
        if (stateAsString2)
        {
          v59 = stateAsString2;
        }

        else
        {
          v59 = @"none";
        }

        stateAsString3 = [v88 stateAsString];
        v61 = stateAsString3;
        *buf = 138412802;
        if (stateAsString3)
        {
          v62 = stateAsString3;
        }

        else
        {
          v62 = @"none";
        }

        v109 = uniqueID;
        v110 = 2114;
        sourceCopy2 = v59;
        v37 = v90;
        v112 = 2114;
        v113 = v62;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "PDServer (pass): secure element pass %@ updated primary application state: %{public}@ -> %{public}@.", buf, 0x20u);

        effectiveContactlessPaymentApplicationState = v85;
      }

LABEL_80:
      if ((effectiveContactlessPaymentApplicationState - 1) < 5 || effectiveContactlessPaymentApplicationState == 15)
      {
        PKSetNeedsLostModeExitAuth();
      }

      v65 = +[NSDate date];
      PDSetLastPaymentPassInsertionOrRemovalDate();

      dataCopy = v84;
      if (v88)
      {
        effectiveContactlessPaymentApplicationState = [v25 effectiveContactlessPaymentApplicationState];
      }

      if (v87)
      {
        state2 = [v37 effectiveContactlessPaymentApplicationState];
      }

      [(PDAppletSubcredentialManager *)self->_subcredentialManager passAddedOrUpdated:v25 oldPass:v37 oldShares:v81];
      [(PDDatabaseManager *)self->_databaseManager recomputeBalancesForPaymentPass:v25];
      [(PDDatabaseManager *)self->_databaseManager resolvePendingTransitTransactionAmountsWithPaymentPass:v25];
      [(PDAuxiliaryCapabilityManager *)self->_auxiliaryCapabilityManager passAddedOrUpdated:v25 oldPass:v37];
      [(PDBarcodeCredentialManager *)self->_barcodeCredentialManager passAddedOrUpdated:v25];
      sharingManager = self->_sharingManager;
      if (v37)
      {
        sub_1005AD1B0(v84);
        v68 = v67 = effectiveContactlessPaymentApplicationState;
        v69 = v81;
        -[PDSharingManager passUpdated:hasValidSharesList:oldPass:oldShares:oldEntitlements:](sharingManager, "passUpdated:hasValidSharesList:oldPass:oldShares:oldEntitlements:", v25, [v68 failedToReadShares] ^ 1, v37, v81, v94);

        effectiveContactlessPaymentApplicationState = v67;
        if ([v25 contactlessActivationGroupingType] != 2)
        {
          sub_1005C5244(self->_expressPassManager, v25);
        }
      }

      else
      {
        v69 = v81;
        [(PDSharingManager *)self->_sharingManager passAdded:v25];
      }

      v22 = v91;
      if (state2 == 2 && effectiveContactlessPaymentApplicationState == 1)
      {
        [(PDProvisioningSupportDataManager *)self->_provisioningSupportDataManager applyPostPersonalizedSupportDataIfNecessaryToPass:v25];
      }

      [(PDAuxiliaryPassInformationManager *)self->_auxPassInformationManager didInsertOrUpdatePass:v25 oldPass:v37 oldAuxiliaryInformationIdentifiers:v95];
      [(PDPassVerificationManager *)self->_passVerificationManager passAddedOrUpdated:v25];
      [(PDUserLegalAgreementManager *)self->_userLegalAgreementManager passAddedOrUpdatedWithPass:v25 oldPass:v37];

      v16 = v69;
      source = sourceCopy4;
      diffCopy = v83;
      goto LABEL_94;
    }
  }

LABEL_108:
}

- (void)passWithUniqueIdentifierWillDisappear:(id)disappear forReason:(unint64_t)reason withDiagnosticReason:(id)diagnosticReason
{
  disappearCopy = disappear;
  diagnosticReasonCopy = diagnosticReason;
  if (disappearCopy)
  {
    v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:?];
    if (v9)
    {
      [(PDDatabaseManager *)self->_databaseManager prepareToDeletePassWithUniqueIdentifier:disappearCopy];
      [(PDUserNotificationManager *)self->_userNotificationManager removeUserNotificationsForPassUniqueIdentifier:disappearCopy];
      [(PDUserNotificationManager *)self->_userNotificationManager removeNotificationAssetsForPassWithUniqueIdentifier:disappearCopy];
      if ([v9 passType] == 1)
      {
        paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
        v11 = v9;
        [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator passWillBeRemoved:v11 withDiagnosticReason:diagnosticReasonCopy];
        [(PDAppletSubcredentialManager *)self->_subcredentialManager passWillBeRemoved:v11];
        [(PDAuxiliaryCapabilityManager *)self->_auxiliaryCapabilityManager passWillBeRemoved:v11];
        [(PDAuxiliaryPassInformationManager *)self->_auxPassInformationManager passWillBeRemoved:v11];
        [(PDSharingManager *)self->_sharingManager passWillBeRemoved:v11];
        [(PDPassVerificationManager *)self->_passVerificationManager passWillBeRemoved:v11];
        [(PDBarcodeCredentialManager *)self->_barcodeCredentialManager passWillBeRemoved:v11];
        [(PDISO18013Manager *)self->_iso18013Manager passWillBeRemoved:v11];
        paymentApplications = [v11 paymentApplications];
        sub_1005B08E8(self, v11, paymentApplications, 0);

        sub_1005B0CA8(self, v11);
      }

      else
      {
        sub_1005B7494(self, v9, reason, disappearCopy);
      }
    }
  }
}

- (void)passWithUniqueIdentifierDidDisappear:(id)disappear forReason:(unint64_t)reason withDiagnosticReason:(id)diagnosticReason
{
  disappearCopy = disappear;
  v8 = disappearCopy;
  if (disappearCopy)
  {
    v12 = disappearCopy;
    v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:disappearCopy];
    if (v9)
    {
      os_unfair_lock_lock(&self->_installedPassesLock);
      [(NSMutableSet *)self->_installedPassUniqueIDs removeObject:v12];
      os_unfair_lock_unlock(&self->_installedPassesLock);
      [(PDDatabaseManager *)self->_databaseManager deletePassWithUniqueIdentifier:v12];
      [(PDPassSignalManager *)self->_passSignalManager removeSignalForPass:v9 completion:&stru_10083CFE8];
      if ([v9 passType] == 1)
      {
        sub_1005B7540(&self->super.isa, v9, reason, &self->_databaseManager);
      }

      if (PKCloudKitPassSyncEnabled())
      {
        [(PDCloudSyncCoordinator *)self->_cloudSyncCoordiantor passDeleted:v9 reason:reason];
      }

      sub_10002AAC8(self, v9);
      [(_PDSystemPassRelevancyCoordinator *)self->_relevancyCoordinator passDidDisappear:v9];
      unprotectedManagers = self->_unprotectedManagers;
      if (unprotectedManagers)
      {
        notificationStreamManager = unprotectedManagers->_notificationStreamManager;
      }

      else
      {
        notificationStreamManager = 0;
      }

      [(PDNotificationStreamManager *)notificationStreamManager recalculateNotificationNames];
      [(PDUserNotificationManager *)self->_userNotificationManager updateWalletBadgeCount];
      [(PDSpotlightIndexer *)self->_spotlightIndexer passDidDisappear:v9];
      [(PDDefaultPassManager *)self->_defaultPassManager updateContactlessPassesAvailability];
      [(PDIssuerBindingManager *)self->_issuerBindingManager passRemoved:v9];
      sub_1005D7290(self->_passTileManager, v9);
      [(PDDevicePasscodeManager *)self->_devicePasscodeManager updateUpgradedPasscodePolicyEnforcementWithCompletion:&stru_10083D048];
      [(PDFinanceSyncManager *)self->_financeSyncManager setNeedsSync];
      [(PDFPANCardManager *)self->_fpanCardManager passDisappearedWithPassUniqueID:v12];
    }

    v8 = v12;
  }

  _objc_release_x1(disappearCopy, v8);
}

- (void)cardFileManager:(id)manager didUpdateRemoteAssetsForPassWithUniqueID:(id)d
{
  managerCopy = manager;
  dCopy = d;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDServer: received pass with uniqueID:%@ did update remote assets. sending notification", &v10, 0xCu);
  }

  v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
  if (v9)
  {
    sub_10002A05C(self, v9);
  }
}

- (void)notePassWithUniqueID:(id)d isRevoked:(BOOL)revoked
{
  revokedCopy = revoked;
  dCopy = d;
  v6 = [(PDDatabaseManager *)self->_databaseManager uniqueIDIsRevoked:dCopy];
  v7 = dCopy;
  if (v6 != revokedCopy)
  {
    v8 = v6;
    [(PDDatabaseManager *)self->_databaseManager updateRevocationStatus:revokedCopy forUniqueID:dCopy];
    v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
    if (v9)
    {
      sub_10002A05C(self, v9);
    }

    if (v8 && !revokedCopy)
    {
      [(PDCardFileManager *)self->_cardFileManager scheduleImmediateRevocationCheck];
    }

    v7 = dCopy;
  }

  _objc_release_x1(v6, v7);
}

- (void)cardFileManager:(id)manager didFailToDecryptRemoteAssets:(id)assets forPass:(id)pass
{
  assetsCopy = assets;
  secureElementPass = [pass secureElementPass];
  if (secureElementPass)
  {
    [(PDAuxiliaryCapabilityManager *)self->_auxiliaryCapabilityManager didFailToDecryptRemoteAssets:assetsCopy forPass:secureElementPass];
  }
}

- (void)noteAutomaticallyPresentSettingsChangedForPassWithUniqueIdentifier:(id)identifier
{
  defaultPassManager = self->_defaultPassManager;
  identifierCopy = identifier;
  [(PDDefaultPassManager *)defaultPassManager updateContactlessPassesAvailability];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  v6 = PKPassAutomaticPresentationSettingsDidChangeNotification;
  v8 = PKPassLibraryUniqueIDUserInfoKey;
  v9 = identifierCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [v5 postNotificationName:v6 object:0 userInfo:v7];
}

- (void)noteSettingsChangedForPassWithUniqueIdentifier:(id)identifier newSettings:(unint64_t)settings
{
  paymentOffersManager = self->_paymentOffersManager;
  identifierCopy = identifier;
  [(PDPaymentOffersManager *)paymentOffersManager recomputePassTileStates];
  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v8 = PKPassSettingsDidChangeNotification;
  v11[0] = PKPassLibraryUniqueIDUserInfoKey;
  v11[1] = PKPassLibrarySettingsUserInfoKey;
  v12[0] = identifierCopy;
  v9 = [NSNumber numberWithUnsignedInteger:settings];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  [v7 postNotificationName:v8 object:0 userInfo:v10];
}

- (void)handleDatabaseIntegrityProblem
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Database integrity problem found.", buf, 2u);
  }

  v4 = sub_10002B2B0(self);
  v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Database integrity problem resolved.";
      v7 = &v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Database integrity resolution interrupted by data migrator.";
    v7 = &v8;
    goto LABEL_8;
  }
}

- (void)passDidUpdateTransactionSourceIdentifierWithPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002BCC8;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(v5, v7);
}

- (void)readTrueUniqueIDs:(id)ds
{
  if (ds)
  {
    dsCopy = ds;
    os_unfair_lock_lock(&self->_installedPassesLock);
    dsCopy[2](dsCopy, self->_installedPassUniqueIDs);

    os_unfair_lock_unlock(&self->_installedPassesLock);
  }
}

- (void)readTrueTransactionReceiptUniqueiDs:(id)ds
{
  if (ds)
  {
    transactionReceiptFileManager = self->_transactionReceiptFileManager;
    dsCopy = ds;
    uniqueIDs = [(PDTransactionReceiptFileManager *)transactionReceiptFileManager uniqueIDs];
    (*(ds + 2))(dsCopy, uniqueIDs);
  }
}

- (void)mutateTrueUniqueIDs:(id)ds
{
  if (ds)
  {
    dsCopy = ds;
    os_unfair_lock_lock(&self->_installedPassesLock);
    dsCopy[2](dsCopy, self->_installedPassUniqueIDs);

    os_unfair_lock_unlock(&self->_installedPassesLock);
  }
}

- (void)paymentPass:(id)pass didUpdatePaymentApplications:(id)applications toPaymentApplications:(id)paymentApplications
{
  passCopy = pass;
  secureElement = self->_secureElement;
  paymentApplicationsCopy = paymentApplications;
  applicationsCopy = applications;
  [(PKSecureElement *)secureElement secureElementIdentifiers];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10002C3D4;
  v12 = v47[3] = &unk_10083D070;
  v48 = v12;
  v13 = objc_retainBlock(v47);
  v14 = [applicationsCopy objectsPassingTest:v13];

  v15 = [paymentApplicationsCopy objectsPassingTest:v13];

  expressPassManager = self->_expressPassManager;
  uniqueID = [passCopy uniqueID];
  sub_1005C4838(expressPassManager, v14, v15, uniqueID);

  deviceContactlessPaymentApplications = [passCopy deviceContactlessPaymentApplications];
  if ([deviceContactlessPaymentApplications count] >= 2)
  {
    databaseManager = self->_databaseManager;
    uniqueID2 = [passCopy uniqueID];
    v21 = [(PDDatabaseManager *)databaseManager defaultPaymentApplicationForPassUniqueIdentifier:uniqueID2];

    if (!v21)
    {
      v39 = v15;
      v40 = v13;
      v41 = v12;
      devicePrimaryContactlessPaymentApplication = [passCopy devicePrimaryContactlessPaymentApplication];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = deviceContactlessPaymentApplications;
      v23 = deviceContactlessPaymentApplications;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * i);
            contactlessPriority = [v28 contactlessPriority];
            if (contactlessPriority > [devicePrimaryContactlessPaymentApplication contactlessPriority])
            {
              v30 = v28;

              devicePrimaryContactlessPaymentApplication = v30;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v25);
      }

      v31 = self->_databaseManager;
      uniqueID3 = [passCopy uniqueID];
      v33 = [(PDDatabaseManager *)v31 setDefaultPaymentApplication:devicePrimaryContactlessPaymentApplication forPassUniqueIdentifier:uniqueID3];

      v13 = v40;
      v12 = v41;
      deviceContactlessPaymentApplications = v38;
      v15 = v39;
    }
  }

  if ([v14 count])
  {
    sub_1005B08E8(self, passCopy, v14, v15);
  }

  else if ([v15 count])
  {
    cloudStoreTransactionSourceController = self->_cloudStoreTransactionSourceController;
    anyObject = [v15 anyObject];
    [(PDCloudStoreTransactionSourceController *)cloudStoreTransactionSourceController didAddPaymentApplication:anyObject forPaymentPass:passCopy];

    associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
    if (associatedAccountServiceAccountIdentifier)
    {
      accountManager = self->_accountManager;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10002C438;
      v42[3] = &unk_10083D098;
      v42[4] = self;
      [(PDAccountManager *)accountManager accountWithIdentifier:associatedAccountServiceAccountIdentifier completion:v42];
    }

    if ([passCopy hasAssociatedPeerPaymentAccount])
    {
      PKSharedCacheSetBoolForKey();
      PKPeerPaymentSetIsSetup();
      if (PKAppleCashStickerPackIsEligibleForDownload())
      {
        sub_1005AF3B8(self);
      }
    }
  }

  [(PDISO18013Manager *)self->_iso18013Manager handlePaymentPassUpdateFrom:passCopy priorPaymentApplications:v14 completion:0];
  [(PDPaymentUserCommunicationManager *)self->_paymentUserCommunicationManager handlePaymentPassDidUpdatePaymentApplications:passCopy fromPaymentApplications:v14 withCompletion:0];
  if ([passCopy isCarKeyPass])
  {
    PDRegisterCarKeySiriVocabulary(self->_databaseManager, 1);
  }
}

- (void)appletSubcredentialManager:(id)manager didUpdateCredential:(id)credential onPassWithIdentifier:(id)identifier oldShares:(id)shares
{
  sharesCopy = shares;
  v8 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifier];
  secureElementPass = [v8 secureElementPass];

  if (secureElementPass)
  {
    sub_1005B2BF8(self, secureElementPass);
    [(PDPendingProvisioningManager *)self->_pendingProvisioningManager passAddedOrUpdated:secureElementPass];
    if (sharesCopy)
    {
      [(PDSharingManager *)self->_sharingManager passUpdated:secureElementPass oldShares:sharesCopy];
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableDailyCashNotifications:(BOOL)notifications
{
  accountManager = self->_accountManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002CCBC;
  v5[3] = &unk_10083D098;
  v5[4] = self;
  [(PDAccountManager *)accountManager defaultAccountForFeature:2 completion:v5];
}

- (void)transactionSourceIdentifier:(id)identifier willRemoveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  associatedReceiptUniqueID = [transactionCopy associatedReceiptUniqueID];
  if (associatedReceiptUniqueID)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceIdentifier = [transactionCopy serviceIdentifier];
      v11 = 138412290;
      v12 = serviceIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting receipt for transaction %@ since transaction is being removed from the database", &v11, 0xCu);
    }

    [(PDTransactionReceiptFileManager *)self->_transactionReceiptFileManager deleteTransactionReceiptWithUniqueID:associatedReceiptUniqueID];
  }

  [(PDTransactionNotificationController *)self->_transactionNotificationController paymentTransactionRemoved:transactionCopy transactionSourceIdentifier:identifierCopy];
}

- (void)willRemoveTransactionsWithSourceIdentifierMapping:(id)mapping
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002CF0C;
  v3[3] = &unk_10083D238;
  v3[4] = self;
  [mapping enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didResolvePendingTransitTransactionAmountsWithTransaction:(id)transaction paymentApplication:(id)application balance:(id)balance
{
  identifierCopy = identifier;
  balanceCopy = balance;
  applicationCopy = application;
  transactionCopy = transaction;
  v14 = [[PDPassTransitTransactionUserNotification alloc] initWithPaymentTransaction:transactionCopy forPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy balance:balanceCopy];

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Inserting PDPassTransitTransactionUserNotification for pass with unique identifier: %@, having resolved pending transit transaction amounts", &v16, 0xCu);
  }

  [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v14];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateDefaultPaymentApplication:(id)application
{
  identifierCopy = identifier;
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 postNotificationName:PKDistributedNotificationDefaultPaymentApplicationChangedForPass object:identifierCopy userInfo:0];
}

- (void)passUniqueIdentifiersMovedToExpired:(id)expired
{
  expiredCopy = expired;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [expiredCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(expiredCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v9];
        if ([v10 supportsLifecycleUpdates])
        {
          [(PDWebServicesCoordinator *)self->_webServicesCoordinator sendPassLifecycleEventForUniqueIdentifier:v9 state:1];
        }
      }

      v6 = [expiredCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason
{
  reasonCopy = reason;
  if (type == 1)
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PDServer: removing all secure element passes...", buf, 2u);
    }

    v23 = atomic_load(&self->_initializationState);
    if (v23 == 1)
    {
      sub_1005B3BE4(self, 1, reasonCopy, 0, 5);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (!type)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v8 = "PDServer: removing all barcode passes...";
    goto LABEL_8;
  }

  if (type != -1)
  {
    goto LABEL_32;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "PDServer: removing all passes...";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_9:

  v9 = atomic_load(&self->_initializationState);
  if (v9 == 1)
  {
    v10 = objc_autoreleasePoolPush();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(PDDatabaseManager *)self->_databaseManager passUniqueIDsOfType:0];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(PDCardFileManager *)self->_cardFileManager deleteCardWithUniqueID:*(*(&v29 + 1) + 8 * i) forReason:2 withDiagnosticReason:reasonCopy];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(v10);
    if (type == -1)
    {
      sub_1005B3BE4(self, 1, reasonCopy, 0, 2);
      v16 = objc_autoreleasePoolPush();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      passUniqueIDs = [(PDDatabaseManager *)self->_databaseManager passUniqueIDs];
      v18 = [passUniqueIDs countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(passUniqueIDs);
            }

            [(PDCardFileManager *)self->_cardFileManager deleteCardWithUniqueID:*(*(&v25 + 1) + 8 * j) forReason:2 withDiagnosticReason:reasonCopy];
          }

          v19 = [passUniqueIDs countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v19);
      }

      objc_autoreleasePoolPop(v16);
    }

    goto LABEL_32;
  }

LABEL_29:
  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDServer: passd is not active - ignoring pass removal request.", buf, 2u);
  }

LABEL_32:
}

- (void)recoverPassWithUniqueID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
  if (v5)
  {
    v6 = [(PDDatabaseManager *)self->_databaseManager passAnnotationsForPassUniqueIdentifier:dCopy];
    v7 = v6;
    if (v6 && [v6 isArchived])
    {
      [(PDDatabaseManager *)self->_databaseManager updatePassAnnotationsForPassWithUniqueIdentifier:dCopy withSortingState:2];
      dynamicStateManager = self->_dynamicStateManager;
      uniqueID = [v5 uniqueID];
      v10 = [(PDPassDynamicStateManager *)dynamicStateManager passDynamicStateForUniqueIdentifier:uniqueID];

      sub_10002E400(self, v5, v10);
      if ([v5 supportsLifecycleUpdates])
      {
        [(PDWebServicesCoordinator *)self->_webServicesCoordinator sendPassLifecycleEventForUniqueIdentifier:dCopy state:0];
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)archivePassWithUniqueID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
  if (PKManualArchiveEnabled() && v5)
  {
    v6 = [(PDDatabaseManager *)self->_databaseManager passAnnotationsForPassUniqueIdentifier:dCopy];
    v7 = v6;
    if (v6 && ([v6 isArchived] & 1) == 0)
    {
      [(PDDatabaseManager *)self->_databaseManager updatePassAnnotationsForPassWithUniqueIdentifier:dCopy withSortingState:4];
      v8 = [(PDPassDynamicStateManager *)self->_dynamicStateManager passDynamicStateForUniqueIdentifier:dCopy];
      sub_10002E730(self, v5, v8);
      [(PDWebServicesCoordinator *)self->_webServicesCoordinator sendPassLifecycleEventForUniqueIdentifier:dCopy state:1];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)noteACAccountChanged:(id)changed handler:(id)handler
{
  changedCopy = changed;
  handlerCopy = handler;
  operation = [changedCopy operation];
  if (operation > 1)
  {
    if (operation == 2)
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account update.", buf, 2u);
      }

      v16 = PDDefaultQueue();
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10002ECBC;
      v20[3] = &unk_10083D320;
      v20[4] = self;
      v21 = changedCopy;
      v22 = handlerCopy;
      dispatch_async(v16, v20);

      v11 = v21;
      goto LABEL_19;
    }

    if (operation == 3)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account deletetion.", buf, 2u);
      }

      v13 = PDDefaultQueue();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002ECCC;
      v17[3] = &unk_10083D320;
      v17[4] = self;
      v18 = changedCopy;
      v19 = handlerCopy;
      dispatch_async(v13, v17);

      v11 = v18;
      goto LABEL_19;
    }
  }

  else if (operation)
  {
    if (operation == 1)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account addition.", buf, 2u);
      }

      v10 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002ECAC;
      block[3] = &unk_10083D320;
      block[4] = self;
      v24 = changedCopy;
      v25 = handlerCopy;
      dispatch_async(v10, block);

      v11 = v24;
LABEL_19:
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account change that is unsupported.", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)primaryAppleAccountWasUpdated:(id)updated handler:(id)handler
{
  updatedCopy = updated;
  handlerCopy = handler;
  PKDisableCloudKitEnvironmentChangeHandling();
  if ([updatedCopy didEnablementOfUbiquityDataclassChange])
  {
    [(PDCardFileManager *)self->_cardFileManager restartUbiquity];
  }

  if ([updatedCopy didEnablementOfWalletDataclassChange])
  {
    [(PDCloudStoreNotificationCoordinator *)self->_cloudStoreCoordinator noteCloudSyncPassesSwitchChanged];
    +[PKWalletVisibility updateWalletVisibility];
  }

  if ([updatedCopy didAccountManagedStateChange])
  {
    +[PKWalletVisibility updateWalletVisibility];
  }

  [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator noteAccountChanged];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler
{
  lsCopy = ls;
  handlesCopy = handles;
  handlerCopy = handler;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting backup of preferences file", buf, 2u);
  }

  PDWritePassdPreferencesToSafeHaven();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Finished backup of preferences file", buf, 2u);
  }

  databaseManager = self->_databaseManager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F344;
  v15[3] = &unk_10083C420;
  v16 = lsCopy;
  v17 = handlesCopy;
  v13 = handlesCopy;
  v14 = lsCopy;
  [(PDDatabaseManager *)databaseManager accessDatabaseUsingBlock:v15];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)nukeStuff
{
  [(PDWebServicesCoordinator *)self->_webServicesCoordinator nukeTasks];
  [(PDNotificationServiceCoordinator *)self->_notificationServicesCoordinator nukeTasks];
  barcodeCredentialManager = self->_barcodeCredentialManager;

  [(PDBarcodeCredentialManager *)barcodeCredentialManager nukeTasks];
}

- (void)dataMigrationRequestedWithPassLibrary:(id)library didRestoreFromBackup:(BOOL)backup
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1005B7774(v7);
  }

  atomic_store(1u, &self->_migrationState);
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005B45B4;
  block[3] = &unk_10083C3A8;
  block[4] = self;
  backupCopy = backup;
  *&block[5] = Current;
  dispatch_sync(v8, block);

  if (atomic_exchange(&self->_migrationState, 0) == 2)
  {
    v9 = PDOSTransactionCreate("PDServer");
    v10 = PDDefaultQueue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002FC54;
    v13[3] = &unk_10083C420;
    v14 = v9;
    selfCopy = self;
    v11 = v9;
    dispatch_async(v10, v13);
  }

  [(PDPassSignalManager *)self->_passSignalManager donateAllPassSignalsIfNeccessaryWithCompletion:&stru_10083D460];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v19 = v12 - Current;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Migration finished in %0.3fs.", buf, 0xCu);
  }
}

- (void)introduceDatabaseIntegrityProblem
{
  if ([(PDDatabaseManager *)self->_databaseManager numberOfRealPasses]>= 4)
  {
    do
    {
      if (!arc4random_uniform(2u))
      {
        break;
      }

      [(PDDatabaseManager *)self->_databaseManager introduceMissingUniqueID];
    }

    while ([(PDDatabaseManager *)self->_databaseManager numberOfRealPasses]> 3);
  }

  while (arc4random_uniform(2u))
  {
    [(PDDatabaseManager *)self->_databaseManager introduceExtraneousUniqueID];
  }

  while (arc4random_uniform(2u))
  {
    [(PDDatabaseManager *)self->_databaseManager introduceDuplicateUniqueID];
  }

  exit(0);
}

- (void)issueSecureElementPassStateChangeNotificationForNewPasses:(id)passes
{
  v4 = [passes pk_objectsPassingTest:&stru_10083D4C8];
  v5 = [v4 count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10002FFB8;
      v14[3] = &unk_10083D518;
      v14[4] = self;
      v15 = v6;
      v8 = v6;
      [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator performHandlerOnSharedWebServiceQueue:v14];
    }

    else
    {
      expressPassManager = self->_expressPassManager;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100030088;
      v10[3] = &unk_10083D580;
      selfCopy = self;
      v13 = v5;
      v11 = v4;
      sub_10017F518(expressPassManager, v10);
      v8 = v11;
    }
  }
}

- (void)didRequestToRegister:(id)register fromDestination:(id)destination
{
  destinationCopy = destination;
  registerCopy = register;
  v8 = [NSString stringWithFormat:@"request to register device over IDS"];
  deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
  registerBroker = [registerCopy registerBroker];
  registerPeerPayment = [registerCopy registerPeerPayment];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000303A4;
  v13[3] = &unk_10083C6C8;
  v14 = destinationCopy;
  selfCopy = self;
  v12 = destinationCopy;
  [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performDeviceRegistrationForReason:v8 brokerURL:0 action:1 forceApplePayRegister:registerBroker forcePeerPaymentRegister:registerPeerPayment completion:v13];
}

- (void)handlerDetailsForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Getting current user and handle user info for configuration %@", &buf, 0xCu);
  }

  handle = [configurationCopy handle];
  v10 = handle;
  if (completionCopy)
  {
    if (configurationCopy && handle)
    {
      sharingGroup = [configurationCopy sharingGroup];
      if (sharingGroup == 1)
      {
        v12 = 0;
        goto LABEL_12;
      }

      if (sharingGroup == 2)
      {
        v12 = 1;
LABEL_12:
        *&buf = 0;
        *(&buf + 1) = &buf;
        v41 = 0x3032000000;
        v42 = sub_100005960;
        v43 = sub_10000B0BC;
        v44 = 0;
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = sub_100005960;
        v38[4] = sub_10000B0BC;
        v39 = 0;
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x3032000000;
        v36[3] = sub_100005960;
        v36[4] = sub_10000B0BC;
        v37 = 0;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x3032000000;
        v34[3] = sub_100005960;
        v34[4] = sub_10000B0BC;
        v35 = 0;
        v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100030A50;
        v30[3] = &unk_10083C8C0;
        v30[4] = self;
        v14 = v10;
        v31 = v14;
        v32 = v38;
        p_buf = &buf;
        [v13 addOperation:v30];

        if (v12)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100030D38;
          v23[3] = &unk_10083D5F8;
          v27 = v38;
          v24 = configurationCopy;
          selfCopy = self;
          v26 = v14;
          v28 = v34;
          v29 = v36;
          [v13 addOperation:v23];
        }

        v15 = +[NSNull null];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100030FD8;
        v17[3] = &unk_10083D620;
        v19 = &buf;
        v20 = v36;
        v21 = v38;
        v22 = v34;
        v18 = completionCopy;
        v16 = [v13 evaluateWithInput:v15 completion:v17];

        _Block_object_dispose(v34, 8);
        _Block_object_dispose(v36, 8);

        _Block_object_dispose(v38, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_16;
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_16:
}

- (BOOL)shouldDelayRefreshFor:(id)for
{
  unprotectedManagers = self->_unprotectedManagers;
  if (!unprotectedManagers)
  {
    return 0;
  }

  v4 = unprotectedManagers->_remoteInterfacePresenter;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1005CBA20(v4);

  return v6;
}

- (void)didCompleteRefresh:(id)refresh
{
  v4 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000311FC;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)inAppPaymentService:(id)service registerPaymentListenerEndpoint:(id)endpoint forHostIdentifier:(id)identifier processIdentifier:(int)processIdentifier completion:(id)completion
{
  v8 = *&processIdentifier;
  serviceCopy = service;
  endpointCopy = endpoint;
  identifierCopy = identifier;
  completionCopy = completion;
  paymentHostEndpointRegistry = self->_paymentHostEndpointRegistry;
  if (!endpointCopy)
  {
    v19 = [(PKPaymentHostEndpointRegistry *)paymentHostEndpointRegistry takeListenerEndpointForHostIdentifier:identifierCopy];
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(PKPaymentHostEndpointRegistry *)paymentHostEndpointRegistry addListenerEndpoint:endpointCopy forHostIdentifier:identifierCopy processIdentifier:v8];
  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "registerPaymentListenerEndpoint saved listenerEndpoint: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
LABEL_5:
    v18 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000313DC;
    block[3] = &unk_10083D648;
    v21 = completionCopy;
    dispatch_async(v18, block);
  }

LABEL_6:
}

- (void)inAppPaymentService:(id)service retrievePaymentListenerEndpointForHostIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = [(PKPaymentHostEndpointRegistry *)self->_paymentHostEndpointRegistry takeListenerEndpointForHostIdentifier:identifier];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "takeListenerEndpointForHostIdentifier returns listenerEndpoint: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v10 = PDDefaultQueue();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003154C;
    v11[3] = &unk_10083C820;
    v13 = completionCopy;
    v12 = v8;
    dispatch_async(v10, v11);
  }
}

- (void)inAppPaymentService:(id)service registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003163C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = serviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = serviceCopy;
  dispatch_async(v8, block);
}

- (void)inAppPaymentService:(id)service unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000317AC;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = serviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = serviceCopy;
  dispatch_async(v8, block);
}

- (void)inAppPaymentService:(id)service presentAdditionalInAppPaymentWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_inAppPaymentServiceWithInterfaceAvailable);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_inAppPaymentServiceWithInterfaceAvailable);
    [v10 presentAdditionalInAppPaymentWithContext:contextCopy completion:completionCopy];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Payment request already presented, no registered service to present additional request", v12, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)handleContinuityPaymentBulletinActionWithIdentifier:(id)identifier manager:(id)manager
{
  identifierCopy = identifier;
  managerCopy = manager;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received continuity notification", v10, 2u);
  }

  v9 = [(PKIDSManager *)self->_idsManager requestForIdentifier:identifierCopy];
  if (identifierCopy)
  {
    sub_1005B7968(self, v9);
  }
}

- (id)createCurrentNotificationRegistrationState
{
  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableSet);
  if (!atomic_load(&self->_fileProtectionState))
  {
    [v3 addObject:PDDarwinNotificationMobileKeyBagFirstUnlock];
  }

  if (!atomic_load(&self->_iCloudRestoreState))
  {
    [v3 addObject:off_10091D0E0()];
  }

  if (![v3 count])
  {
    if (PKSecureElementIsAvailable())
    {
      [v3 addObject:PDDarwinNotificationEventPasswordChanged];
      [v3 addObject:PKDarwinNotificationEventDeveloperImageMounted];
      [v3 addObject:PKDarwinNotificationEventDidEnterField];
      if (+[PKSecureElement isInFailForward])
      {
        [v3 addObject:off_10091D0E8()];
      }

      if ([(PDDatabaseManager *)self->_databaseManager passExistsWithPassType:1])
      {
        [v3 addObject:PKDarwinNotificationEventLostModeStateChanged];
        [v3 addObject:PDDarwinNotificationEventBluetoothPowerChanged];
      }

      [v3 addObject:PDDarwinNotificationEventSEDesignatedKeySync];
    }

    [v3 addObject:PDDarwinNotificationEventAppProtectionChanged];
  }

  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v7 = objc_alloc_init(PDNotificationStreamRegistrationState);
    [(PDNotificationStreamRegistrationState *)v7 setNotificationNames:v3 forStream:0];
    [(PDNotificationStreamRegistrationState *)v7 setNotificationNames:v4 forStream:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream
{
  nameCopy = name;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031CD8;
  block[3] = &unk_10083D690;
  selfCopy = self;
  streamCopy = stream;
  v11 = nameCopy;
  v9 = nameCopy;
  dispatch_async(v8, block);
}

- (void)paymentTransactionUpdated:(id)updated forTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [PDDatabaseManager insertOrUpdatePaymentTransaction:"insertOrUpdatePaymentTransaction:withTransactionSourceIdentifier:insertionMode:performTruncation:insertedTransaction:" withTransactionSourceIdentifier:updated insertionMode:? performTruncation:? insertedTransaction:?];
  updateReasonIsInitialDownload = [v6 updateReasonIsInitialDownload];
  if ([v6 fullyProcessed] && (updateReasonIsInitialDownload & 1) == 0)
  {
    [(PDAccountNotificationController *)self->_accountNotificationController paymentTransactionUpdated:v6 forTransactionSourceIdentifier:identifierCopy];
  }

  if ((updateReasonIsInitialDownload & 1) == 0)
  {
    [(PDServer *)self _updateQuickActions];
  }
}

- (void)paymentTransactionProcessorDidActivate:(id)activate
{
  os_unfair_lock_lock(&self->_transactionProcesssorActiveLock);
  if (!self->_transactionProcesssorOSTransaction)
  {
    v4 = PDOSTransactionCreate("PDServer.transaction_processor.active");
    transactionProcesssorOSTransaction = self->_transactionProcesssorOSTransaction;
    self->_transactionProcesssorOSTransaction = v4;
  }

  os_unfair_lock_unlock(&self->_transactionProcesssorActiveLock);
}

- (void)paymentTransactionProcessorDidDeactivate:(id)deactivate
{
  os_unfair_lock_lock(&self->_transactionProcesssorActiveLock);
  transactionProcesssorOSTransaction = self->_transactionProcesssorOSTransaction;
  self->_transactionProcesssorOSTransaction = 0;

  os_unfair_lock_unlock(&self->_transactionProcesssorActiveLock);
}

- (void)placemarkFound:(id)found forTransaction:(id)transaction
{
  spotlightIndexer = self->_spotlightIndexer;
  if (spotlightIndexer)
  {
    [(PDSpotlightIndexer *)spotlightIndexer placemarkFound:found forTransaction:transaction];
  }
}

- (id)paymentPassesForContinuityDiscovery:(id)discovery
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received request for payment passes", v8, 2u);
  }

  v5 = [(PDDatabaseManager *)self->_databaseManager passesOfType:1];
  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)defaultPaymentPassForContinuityDiscovery:(id)discovery
{
  databaseManager = self->_databaseManager;
  v5 = PDDefaultPaymentPassUniqueIdentifier();
  v6 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:v5];
  paymentPass = [v6 paymentPass];

  devicePrimaryInAppPaymentApplication = [paymentPass devicePrimaryInAppPaymentApplication];
  LOBYTE(v6) = [devicePrimaryInAppPaymentApplication supportsInAppPayment];

  if ((v6 & 1) == 0)
  {
    v9 = self->_databaseManager;
    v10 = +[PKPaymentRequest availableNetworks];
    v11 = [NSSet setWithArray:v10];
    v12 = [(PDDatabaseManager *)v9 passesForInAppPaymentOnNetworks:v11 issuerCountryCodes:0 paymentApplicationStates:0 paymentRequestType:0 isMultiTokensRequest:0 webService:0];

    v13 = [NSSortDescriptor sortDescriptorWithKey:@"ingestedDate" ascending:1];
    v19 = v13;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    v15 = [v12 sortedArrayUsingDescriptors:v14];
    v16 = [NSSet setWithArray:v15];

    if ([v16 count])
    {
      anyObject = [v16 anyObject];
    }

    else
    {
      anyObject = 0;
    }

    paymentPass = anyObject;
  }

  return paymentPass;
}

- (void)accountForPaymentPass:(id)pass manager:(id)manager completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  if ([passCopy hasAssociatedPeerPaymentAccount])
  {
    peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100032864;
    v10[3] = &unk_10083D6B8;
    v11 = passCopy;
    v12 = completionCopy;
    [(PDPeerPaymentWebServiceCoordinator *)peerPaymentWebServiceCoordinator accountWithPreventingServerFetch:0 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)supportedPaymentSetupFeatures:(id)features completion:(id)completion
{
  featuresCopy = features;
  completionCopy = completion;
  if (completionCopy)
  {
    paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
    if (paymentWebServiceCoordinator)
    {
      paymentSetupFeaturesCoordinator = [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator paymentSetupFeaturesCoordinator];
      [paymentSetupFeaturesCoordinator staticPaymentSetupFeaturesForSourceApplicationID:PKPassdBundleIdentifier blockServerFetch:0 completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (BOOL)deviceAvailableForContinuityPayments:(id)payments
{
  paymentsCopy = payments;
  unprotectedManagers = self->_unprotectedManagers;
  if (unprotectedManagers && (v6 = unprotectedManagers->_remoteInterfacePresenter) != 0)
  {
    v7 = v6;
    if (sub_1001F64BC(v6, 3, 0))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = sub_1001F64BC(v7, 8, 0);
    }
  }

  else
  {
    v7 = 0;
    v8 = +[PKSecureElement isInFailForward]^ 1;
  }

  return v8;
}

- (id)webServiceConfigurationForContinuityPayments:(id)payments
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebServiceContext];
  configuration = [sharedWebServiceContext configuration];

  return configuration;
}

- (CGImage)thumbnailImageForPassIdentifier:(id)identifier size:(CGSize)size manager:(id)manager
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  managerCopy = manager;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received request for thumbnail image for pass: %@", &v18, 0xCu);
  }

  v12 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifierCopy];
  if (v12)
  {
    height = [PKImageResizingConstraints constraintsWithAspectFillToSize:width, height];
    [height setOutputScale:1.0];
    frontFaceImage = [v12 frontFaceImage];
    v15 = [frontFaceImage resizedImageWithConstraints:height];
    v16 = CGImageRetain([v15 imageRef]);

    if (v16)
    {
      v16 = CFAutorelease(v16);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)didReceiveRemotePaymentRequest:(id)request
{
  if (request)
  {
    sub_1005B7A48(self, request);
  }
}

- (void)markPassWithUniqueIdentifiersForDeletion:(id)deletion
{
  deletionCopy = deletion;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032DB4;
  v7[3] = &unk_10083C420;
  v8 = deletionCopy;
  selfCopy = self;
  v6 = deletionCopy;
  dispatch_async(v5, v7);
}

- (void)secureElementPairingDidChangeForReason:(unint64_t)reason
{
  v5 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005B6570;
  v6[3] = &unk_10083D700;
  v6[4] = self;
  v6[5] = reason;
  dispatch_async(v5, v6);
}

- (void)expressPassManager:(id)manager didUpdateExpressPassConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v6 = PDDefaultQueue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033008;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = configurationsCopy;
  v7 = configurationsCopy;
  dispatch_async(v6, v8);
}

- (void)expressPassManager:(id)manager didFinishExpressTransactionWithState:(id)state
{
  stateCopy = state;
  passUniqueIdentifier = [stateCopy passUniqueIdentifier];
  applicationIdentifier = [stateCopy applicationIdentifier];
  v7 = applicationIdentifier;
  if (passUniqueIdentifier && applicationIdentifier)
  {
    v8 = [PKPaymentApplicationUsageSummary alloc];
    v9 = +[NSDate now];
    v10 = [v8 initWithPassUniqueIdentifier:passUniqueIdentifier paymentApplicationIdentifier:v7 lastUsed:v9];

    [(PDDatabaseManager *)self->_databaseManager insertPaymentApplicationUsageSummary:v10];
    v11 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:passUniqueIdentifier];
    secureElementPass = [v11 secureElementPass];

    [(PDUserActivitySignalsManager *)self->_userActivitySignalsManager handlePassTransactionActivitySummaryWithPassUniqueIdentifier:passUniqueIdentifier paymentApplicationIdentifier:v7 pass:secureElementPass state:stateCopy];
  }
}

- (BOOL)defaultPassManagerCanUpdateDefaultPass:(id)pass
{
  v4 = PKPendingProvisioningBackgroundProvisioningInBuddyTypes();
  LOBYTE(self) = [(PDPendingProvisioningManager *)self->_pendingProvisioningManager hasPendingProvisioningsOfTypes:v4];

  return self ^ 1;
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = PKServiceBundleIdentifier;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * v9) bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v8];

        if (v11)
        {
          PKSetLastBackupPassbookWasDeleted();
          deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1005B6670;
          v13[3] = &unk_10083D748;
          v13[4] = self;
          [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performDeviceRegistrationForReason:@"passbook installed" brokerURL:0 action:0 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v13];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = PKServiceBundleIdentifier;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * v9) bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:v8];

        if (v11)
        {
          sub_1005B6358(&self->super.isa);
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)defaultDiscoveryManager:(id)manager sendDiscoveryArticleLayoutsUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = sub_100012A20(self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033694;
  v8[3] = &unk_10083D790;
  v9 = updatedCopy;
  v7 = updatedCopy;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)applePayCloudStoreContainer:(id)container didFinishTransactionFetchForPassUniqueID:(id)d error:(id)error
{
  if (d)
  {
    errorCopy = error;
    dCopy = d;
    [(PDServer *)self _updateQuickActions];
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    v11 = PKDistributedNotificationTransactionPassUniqueIDKey;
    v12 = dCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v9 postNotificationName:PKDistributedNotificationTransactionsFetchCompleted object:0 userInfo:v10];
    [(PDDatabaseManager *)self->_databaseManager recomputeCategoryVisualizationMagnitudesForPassUniqueID:dCopy withStyle:0];
    [(PDSpotlightIndexer *)self->_spotlightIndexer transactionFetchCompletedForPassUniqueID:dCopy error:errorCopy];
  }
}

- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  accountCopy = account;
  managerCopy = manager;
  sub_10002BE80(self, accountCopy, oldAccountCopy);
  [(PDSpotlightIndexer *)self->_spotlightIndexer accountManager:managerCopy didUpdateAccount:accountCopy oldAccount:oldAccountCopy];

  financeSyncManager = self->_financeSyncManager;

  [(PDFinanceSyncManager *)financeSyncManager setNeedsSync];
}

- (void)accountManager:(id)manager didAddAccount:(id)account
{
  accountCopy = account;
  managerCopy = manager;
  sub_10002BE80(self, accountCopy, 0);
  [(PDSpotlightIndexer *)self->_spotlightIndexer accountManager:managerCopy didAddAccount:accountCopy];

  [(PDFinanceSyncManager *)self->_financeSyncManager setNeedsSync];
  [(PDBankCredentialMigrator *)self->_bankCredentialMigrator accountAdded:accountCopy];
}

- (void)accountManager:(id)manager didRemoveAccount:(id)account
{
  [(PDSpotlightIndexer *)self->_spotlightIndexer accountManager:manager didRemoveAccount:account];
  financeSyncManager = self->_financeSyncManager;

  [(PDFinanceSyncManager *)financeSyncManager setNeedsSync];
}

- (void)peerPaymentWebServiceCoordinator:(id)coordinator didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  [(PDSpotlightIndexer *)self->_spotlightIndexer peerPaymentAccountDidUpdate:account];
  financeSyncManager = self->_financeSyncManager;

  [(PDFinanceSyncManager *)financeSyncManager setNeedsSync];
}

- (void)peerPaymentWebServiceCoordinatorDidDeleteAccount
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDServer: executing peerPaymentWebServiceCoordinatorDidDeleteAccount", v4, 2u);
  }

  [(PDFinanceSyncManager *)self->_financeSyncManager setNeedsSync];
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier
{
  v4 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifier];
  secureElementPass = [v4 secureElementPass];

  v5 = secureElementPass;
  if (secureElementPass)
  {
    sub_1005B2BF8(self, secureElementPass);
    v5 = secureElementPass;
  }
}

- (void)displayTapToRadarAlertForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  reason = [requestCopy reason];
  if (os_variant_has_internal_ui())
  {
    v9 = reason == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = [(PDDatabaseManager *)self->_databaseManager tapToRadarPromptWithReason:reason];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = reason;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Last tap to radar prompt for reason %@: %@", buf, 0x16u);
    }

    lastPromptDate = [v10 lastPromptDate];
    v14 = +[NSDate date];
    v15 = v14;
    if (lastPromptDate && ([v14 timeIntervalSinceDate:lastPromptDate], v16 <= 86400.0))
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = lastPromptDate;
        v28 = 2112;
        v29 = requestCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not presenting tap to radar prompt since it was displayed less than 30 minutes ago, %@. %@", buf, 0x16u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = requestCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Presenting tap to radar request alert: %@", buf, 0xCu);
      }

      [(PDDatabaseManager *)self->_databaseManager noteTapToRadarPromptedForReason:reason lastPromptDate:v15];
      v17 = objc_alloc_init(NSMutableDictionary);
      alertHeader = [requestCopy alertHeader];
      v19 = alertHeader;
      if (alertHeader)
      {
        v20 = alertHeader;
      }

      else
      {
        v20 = @"Wallet Problem Detected";
      }

      [v17 setObject:v20 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      alertMessage = [requestCopy alertMessage];
      if (alertMessage)
      {
        [v17 setObject:alertMessage forKeyedSubscript:kCFUserNotificationAlertMessageKey];
      }

      else
      {
        v22 = [NSString stringWithFormat:@"A problem has been detected with Wallet:\n%@", reason];
        [v17 setObject:v22 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
      }

      [v17 setObject:@"File a radar" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
      [v17 setObject:@"Not now" forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100033E84;
      v23[3] = &unk_10083D7F8;
      v24 = requestCopy;
      v25 = reason;
      [PKUserNotificationAgent presentNotificationWithParameters:v17 responseHandler:v23];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }
}

- (void)dynamicStateManager:(id)manager dynamicStatesDidUpdate:(id)update
{
  updateCopy = update;
  v6 = PDDefaultQueue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003410C;
  v8[3] = &unk_10083C420;
  v9 = updateCopy;
  selfCopy = self;
  v7 = updateCopy;
  dispatch_async(v6, v8);
}

- (void)bindingStateChangedForPass:(id)pass
{
  v4 = [pass copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_10002A05C(self, v4);
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (void)_updateQuickActions
{
  v3 = objc_alloc_init(SBSApplicationShortcutService);
  v4 = objc_alloc_init(NSMutableArray);
  currentRelevancyInformation = [(_PDSystemPassRelevancyCoordinator *)self->_relevancyCoordinator currentRelevancyInformation];
  firstObject = [currentRelevancyInformation firstObject];

  if (firstObject)
  {
    firstObject2 = [currentRelevancyInformation firstObject];
    v30 = [firstObject2 objectForKeyedSubscript:PKPassLibraryRelevantInfoUniqueID];

    v31 = PKLocalizedString(@"ORB_RELEVANT_PASS");
    v32 = sub_1005B6A7C();

    [v4 addObject:v32];
  }

  v7 = PDDefaultPaymentPassUniqueIdentifier();
  if (v7)
  {
    v33 = PKLocalizedString(@"ORB_DEFAULT_CARD");
    v34 = sub_1005B6A7C();

    [v4 addObject:v34];
  }

  passUniqueIdentifierForMostRecentVisibleTransaction = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierForMostRecentVisibleTransaction];
  if (passUniqueIdentifierForMostRecentVisibleTransaction)
  {
    v9 = objc_alloc_init(SBSApplicationShortcutItem);
    v10 = [[SBSApplicationShortcutSystemIcon alloc] initWithSystemImageName:@"checkmark.circle"];
    [v9 setIcon:v10];

    [v9 setType:PKQuickActionLastTransactionAction];
    v11 = PKLocalizedString(@"ORB_LAST_TRANSACTION");
    [v9 setLocalizedTitle:v11];

    v35 = PKQuickActionPassUniqueIDKKey;
    v36 = passUniqueIdentifierForMostRecentVisibleTransaction;
    v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v9 setUserInfo:v12];

    [v4 addObject:v9];
  }

  peerPaymentAccount = [(PDDatabaseManager *)self->_databaseManager peerPaymentAccount];
  databaseManager = self->_databaseManager;
  associatedPassUniqueID = [peerPaymentAccount associatedPassUniqueID];
  [(PDDatabaseManager *)databaseManager primaryPaymentApplicationStateForPassUniqueIdentifier:associatedPassUniqueID];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();

  if (peerPaymentAccount && IsPersonalized && [peerPaymentAccount supportsDeviceTap])
  {
    v17 = objc_alloc_init(SBSApplicationShortcutItem);
    v18 = [[SBSApplicationShortcutSystemPrivateIcon alloc] initWithSystemImageName:@"apple.cash.tap"];
    [v17 setIcon:v18];

    [v17 setType:PKQuickActionNearbyPeerPayment];
    v19 = PKLocalizedPeerPaymentString(@"ORB_NEARBY_PEER_PAYMENT");
    [v17 setLocalizedTitle:v19];

    [v4 addObject:v17];
  }

  if (PKSecureElementIsAvailable())
  {
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    paymentSetupSupportedInRegion = [sharedWebService paymentSetupSupportedInRegion];

    if (paymentSetupSupportedInRegion == 1)
    {
      v22 = [(PDDatabaseManager *)self->_databaseManager countPassesOfType:1];
      if (!v22)
      {
        goto LABEL_17;
      }

      if (v22 == 1)
      {
        v23 = [(PDDatabaseManager *)self->_databaseManager passUniqueIDsOfType:1];
        anyObject = [v23 anyObject];
        if (!anyObject)
        {
LABEL_18:

          goto LABEL_19;
        }

        v25 = anyObject;
        [(PDDatabaseManager *)self->_databaseManager primaryPaymentApplicationStateForPassUniqueIdentifier:anyObject];
        v26 = PKSecureElementPassActivationStateForApplicationState();

        if (v26 == 4)
        {
LABEL_17:
          v23 = objc_alloc_init(SBSApplicationShortcutItem);
          v27 = [[SBSApplicationShortcutSystemIcon alloc] initWithSystemImageName:@"plus"];
          [v23 setIcon:v27];
          v28 = PKLocalizedString(@"ORB_ADD_CARD");
          [v23 setLocalizedTitle:v28];

          [v23 setType:PKQuickActionAddCardAction];
          [v4 addObject:v23];

          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:
  [v3 updateDynamicApplicationShortcutItems:v4 forBundleIdentifier:PKServiceBundleIdentifier];
  [v3 invalidate];
}

- (void)pendingProvisioningManagerDidFinishProvisioningWithReceipts:(id)receipts
{
  receiptsCopy = receipts;
  [(PDDefaultPassManager *)self->_defaultPassManager updateDefaultPaymentPassIfNeeded];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = receiptsCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    v9 = PKPassLibraryPendingProvisioningFinishedNotification;
    v10 = PKPassLibraryPendingProvisioningFinishedReceiptKey;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0, v15];
        if (v13)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v14, "Name", [v9 UTF8String]);
          xpc_dictionary_set_data(v14, [v10 UTF8String], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"));
          [(PDXPCEventPublisher *)self->_passKitEventPublisher sendEvent:v14 completion:0];
        }

        else
        {
          v14 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to archive pending provisioning receipt: %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }
}

@end