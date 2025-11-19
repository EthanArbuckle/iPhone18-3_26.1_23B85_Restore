@interface CDPFollowUpViewController
- (BOOL)_synchronizeFollowUpsWithProvider:(id)a3 error:(id *)a4;
- (id)_contextForActionIdentifier:(id)a3;
- (id)_followupProvider;
- (id)_makeADPUpsellLandingPageViewedEventWithCDPContext:(id)a3;
- (id)_makeEscapeOfferSelectedEventForOffer:(id)a3 withContext:(id)a4;
- (id)_navController;
- (id)_spinnerViewController;
- (id)accountsForAccountManager:(id)a3;
- (id)grandSlamPresenterWithPresentingScreen:(id)a3;
- (void)_apdUpsellSetupCDPContextForAccountWithAltDSID:(id)a3 itemIdentifier:(id)a4;
- (void)_beginExtensionFlowWithAction:(id)a3;
- (void)_beginLocalSecretCreateActionFlow;
- (void)_beginUpsellFlowOnIOSUsingContext:(id)a3 completion:(id)a4;
- (void)_beginWalrusEnablementFromUpsellCFU;
- (void)_clearADPUpsellFollowUp;
- (void)_clearADPUpsellFollowUpWithAKController;
- (void)_clearFollowUpWithAKControllerWithItemID:(id)a3;
- (void)_clearLocalSecretCreateFollowUp;
- (void)_clearRecoveryKeyRepairFollowUp;
- (void)_clearSOSCompatibilityModeFollowUp;
- (void)_clearSecureTermsFollowUp;
- (void)_handleADPUpsellHTTPResponse:(id)a3;
- (void)_harvestWebAccessStatus:(id)a3;
- (void)_postADPUpsellActionEventForItem:(id)a3 selectedAction:(id)a4;
- (void)_presentAKServerUIWithUrlKey:(id)a3 altDSID:(id)a4 itemID:(id)a5 completion:(id)a6;
- (void)_secureTermsTearDownWithUpdatedSecret:(BOOL)a3 error:(id)a4;
- (void)_setupEncryptionFlowContextWithAltDSID:(id)a3;
- (void)_setupSOSCompatibilityModeEnabledFlowWithContext:(id)a3;
- (void)_setupWithContext:(id)a3;
- (void)_showADPUpsellNetworkError;
- (void)_showGenericTermsUI;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)loadView;
- (void)presentAlertUIWithCompletion:(id)a3;
- (void)presentFullUIWithCompletion:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)processNotSupportedItem:(id)a3 altDSID:(id)a4 completion:(id)a5 hasFullCDPSupport:(BOOL)a6;
- (void)remoteUIDidDismiss:(id)a3;
- (void)remoteUIDidHandleButton:(id)a3;
- (void)remoteUIDidReceiveHTTPResponse:(id)a3;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
- (void)sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5;
- (void)uiController:(id)a3 prepareAlertContext:(id)a4;
- (void)uiController:(id)a3 preparePresentationContext:(id)a4;
- (void)upsellViewModelDidRequestBeginEnablementFlowWithContext:(id)a3;
- (void)upsellViewModelDidRequestCFUDismissalWithContext:(id)a3;
- (void)upsellViewModelDidRequestFlowCancellationWithContext:(id)a3;
@end

@implementation CDPFollowUpViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CDPFollowUpViewController;
  [(CDPFollowUpViewController *)&v5 loadView];
  v3 = +[UIColor clearColor];
  v4 = [(CDPFollowUpViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDPFollowUpViewController *)self _followupProvider];
  v15 = 0;
  v6 = [(CDPFollowUpViewController *)self _synchronizeFollowUpsWithProvider:v5 error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10000695C();
    }

    v10 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
    v14 = 0;
    v8 = [(CDPFollowUpViewController *)self _synchronizeFollowUpsWithProvider:v10 error:&v14];
    v7 = v14;
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000069C4();
  }

  v12 = [v7 domain];
  if ([v12 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v13 = [v7 code] != -7064;
  }

  else
  {
    v13 = 1;
  }

  if (v4)
  {
    v4[2](v4, (v8 ^ 1) & v13);
  }
}

- (BOOL)_synchronizeFollowUpsWithProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(AKFollowUpSynchronizer);
  followupSynchronizer = self->_followupSynchronizer;
  self->_followupSynchronizer = v7;

  [(AKFollowUpSynchronizer *)self->_followupSynchronizer setFollowupProvider:v6];
  v9 = self->_followupSynchronizer;
  if (objc_opt_respondsToSelector())
  {
    v10 = self->_followupSynchronizer;
    v11 = +[CDPAccount sharedInstance];
    v12 = [v11 primaryAppleAccount];
    v17 = 0;
    v13 = [(AKFollowUpSynchronizer *)v10 synchronizeFollowUpsForAccount:v12 error:&v17];
    v14 = v17;

    if (a4)
    {
      v15 = v14;
      *a4 = v14;
    }
  }

  else if (a4)
  {
    _CDPStateError();
    *a4 = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v48 = a5;
  v10 = _os_activity_create(&_mh_execute_header, "cdp: Processing follow up action", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 uniqueIdentifier];
    v13 = [v9 label];
    *buf = 138412546;
    v72 = v12;
    v73 = 2112;
    v74 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to process the item: %@ and the action: %@", buf, 0x16u);
  }

  v14 = [v8 userInfo];
  v15 = [v14 objectForKeyedSubscript:CDPFollowUpItemUserInfoKeyAltDSID];

  if (!v15)
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not pick up altDSID from item.userInfo... using the primary account's altDSID through ACAccountStore", buf, 2u);
    }

    v17 = +[ACAccountStore defaultStore];
    v18 = [v17 aa_primaryAppleAccount];
    v15 = [v18 aa_altDSID];
  }

  v19 = +[NSUUID UUID];
  v20 = [v19 UUIDString];
  telemetryFlowID = self->_telemetryFlowID;
  self->_telemetryFlowID = v20;

  v22 = self->_telemetryFlowID;
  v23 = [v8 uniqueIdentifier];
  [(CDPFollowUpViewController *)self sendCFUClickedEventWithTelemetryFlowID:v22 altDSID:v15 identifier:v23];

  v24 = +[CDPUtilities hasFullCDPSupport];
  v25 = [v9 userInfo];
  v26 = [v25 objectForKeyedSubscript:kCDPAKNativeActionKey];
  akNativeAction = self->_akNativeAction;
  self->_akNativeAction = v26;

  v28 = [v9 userInfo];
  v29 = [v28 objectForKeyedSubscript:kCDPAKFollowUpURLKey];
  urlKey = self->_urlKey;
  self->_urlKey = v29;

  if (!v24)
  {
    goto LABEL_27;
  }

  v31 = [v9 identifier];
  if ([v31 isEqualToString:kRepairCDPStateActionContinue])
  {
LABEL_17:

LABEL_18:
    objc_storeStrong(&self->_followUpAction, a4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E38;
    block[3] = &unk_100010478;
    v66 = v15;
    v67 = v8;
    v68 = self;
    v69 = v48;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_28;
  }

  v32 = [v9 identifier];
  if ([v32 isEqualToString:kOfflineLocalSecretChangeActionContinue])
  {
LABEL_16:

    goto LABEL_17;
  }

  v47 = [v9 identifier];
  if ([v47 isEqualToString:kRepairCDPStateActionRecoveryKey])
  {
LABEL_15:

    goto LABEL_16;
  }

  v46 = [v9 identifier];
  if ([v46 isEqualToString:kSecureTermsActionContinue])
  {
LABEL_14:

    goto LABEL_15;
  }

  v45 = [v9 identifier];
  if ([v45 isEqualToString:kConfirmExistingSecretActionContinue])
  {

    goto LABEL_14;
  }

  v44 = [v9 identifier];
  v43 = [v44 isEqualToString:kADPStateHealingActionContinue];

  if (v43)
  {
    goto LABEL_18;
  }

  v33 = [v9 identifier];
  v34 = [v33 isEqualToString:kOfflineLocalSecretCreateActionContinue];

  if (v34)
  {
    objc_storeStrong(&self->_followUpAction, a4);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100001F94;
    v62[3] = &unk_1000104A0;
    v62[4] = self;
    v63 = v15;
    v64 = v48;
    dispatch_async(&_dispatch_main_q, v62);

    goto LABEL_28;
  }

  v35 = [v9 identifier];
  v36 = [(CDPFollowUpViewController *)self _isSOSCompatibilityActionIdentifier:v35];

  if (v36)
  {
    objc_storeStrong(&self->_followUpAction, a4);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100001FE0;
    v58[3] = &unk_1000104A0;
    v59 = v8;
    v60 = self;
    v61 = v48;
    dispatch_async(&_dispatch_main_q, v58);

    goto LABEL_28;
  }

  v37 = [v8 uniqueIdentifier];
  v38 = [v37 isEqualToString:kADPUpsellItemIdentifier];

  if (!v38)
  {
LABEL_27:
    [(CDPFollowUpViewController *)self processNotSupportedItem:v9 altDSID:v15 completion:v48 hasFullCDPSupport:v24];
    goto LABEL_28;
  }

  objc_storeStrong(&self->_followUpAction, a4);
  v39 = [v8 uniqueIdentifier];
  [(CDPFollowUpViewController *)self _apdUpsellSetupCDPContextForAccountWithAltDSID:v15 itemIdentifier:v39];

  [(CDPFollowUpViewController *)self _postADPUpsellActionEventForItem:v8 selectedAction:v9];
  if (self->_urlKey)
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100002088;
    v56[3] = &unk_1000104C8;
    v56[4] = self;
    v57 = v48;
    v40 = objc_retainBlock(v56);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000021B0;
    v52[3] = &unk_100010478;
    v52[4] = self;
    v53 = v15;
    v54 = v8;
    v55 = v40;
    v41 = v40;
    dispatch_async(&_dispatch_main_q, v52);
  }

  else
  {
    v42 = objc_alloc_init(CDPWalrusStateController);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10000222C;
    v49[3] = &unk_100010518;
    v49[4] = self;
    v51 = v48;
    v50 = v15;
    [v42 walrusStatusWithCompletion:v49];
  }

LABEL_28:

  os_activity_scope_leave(&state);
}

- (void)_apdUpsellSetupCDPContextForAccountWithAltDSID:(id)a3 itemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AKAccountManager sharedInstance];
  v9 = [v8 primaryAuthKitAccount];
  if (!v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100006BC0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = _CDPLogSystem();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v19)
    {
      sub_100006C38(v18, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = [CDPContext contextForAccountWithAltDSID:v6];
  }

  else
  {
    if (v19)
    {
      sub_100006CB0(v18, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = +[CDPContext contextForPrimaryAccount];
  }

  cdpContext = self->_cdpContext;
  self->_cdpContext = v27;

  v29 = self->_cdpContext;
  if (!v29)
  {
    v30 = _CDPLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100006D28(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    v29 = self->_cdpContext;
  }

  [(CDPContext *)v29 setTelemetryFlowID:self->_telemetryFlowID];
  v38 = [v8 telemetryDeviceSessionIDForAccount:v9];
  [(CDPContext *)self->_cdpContext setTelemetryDeviceSessionID:v38];

  v39 = _CDPLogSystem();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_100006DA0(&self->_cdpContext);
  }

  [(CDPContext *)self->_cdpContext setFollowUpType:v7];
}

- (void)_postADPUpsellActionEventForItem:(id)a3 selectedAction:(id)a4
{
  if ([(NSString *)self->_urlKey isEqualToString:kADPUpsellTearDownAction, a4])
  {
    cdpContext = self->_cdpContext;
    v6 = &kADPUpsellCFURejected;
  }

  else
  {
    if (![(NSString *)self->_akNativeAction isEqualToString:kADPEnrollAction])
    {
      return;
    }

    cdpContext = self->_cdpContext;
    v6 = &kADPUpsellCFUTriggered;
  }

  v7 = [AAFAnalyticsEvent analyticsEventWithContext:cdpContext eventName:*v6 category:kCDPRTCEventCategoryAccountDataAccessRecovery];
  if (v7)
  {
    v9 = v7;
    v8 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
    [v8 sendEvent:v9];

    v7 = v9;
  }
}

- (void)processNotSupportedItem:(id)a3 altDSID:(id)a4 completion:(id)a5 hasFullCDPSupport:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  followUpAction = self->_followUpAction;
  self->_followUpAction = 0;

  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 identifier];
    *buf = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unknown Action %@, suppressing handling", buf, 0xCu);
  }

  if (!a6)
  {
    v16 = objc_alloc_init(CDPFollowUpController);
    v17 = [v10 identifier];
    v18 = [(CDPFollowUpViewController *)self _contextForActionIdentifier:v17];

    [v18 setAltDSID:v11];
    if (v18)
    {
      v22 = 0;
      [v16 clearFollowUpWithContext:v18 error:&v22];
      v19 = v22;
      v20 = _CDPLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v10 identifier];
        *buf = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cleared followp %@ with result: %@", buf, 0x16u);
      }
    }
  }

  v12[2](v12, 1);
}

- (id)_contextForActionIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kRepairCDPStateActionContinue])
  {
    v5 = +[CDPFollowUpContext contextForStateRepair];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:kOfflineLocalSecretChangeActionContinue])
  {
    v5 = +[CDPFollowUpContext contextForOfflinePasscodeChange];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:kRepairCDPStateActionRecoveryKey])
  {
    v5 = +[CDPFollowUpContext contextForRecoveryKeyRepair];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:kSecureTermsActionContinue])
  {
    v5 = +[CDPFollowUpContext contextForSecureTerms];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:kConfirmExistingSecretActionContinue])
  {
    v5 = +[CDPFollowUpContext contextForConfirmExistingSecret];
    goto LABEL_13;
  }

  if ([(CDPFollowUpViewController *)self _isSOSCompatibilityActionIdentifier:v4])
  {
    v5 = +[CDPFollowUpContext contextForSOSCompatibilityMode];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:
  [v6 setTelemetryFlowID:self->_telemetryFlowID];

  return v6;
}

- (void)_presentAKServerUIWithUrlKey:(id)a3 altDSID:(id)a4 itemID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = objc_alloc_init(AKExtensionlessFollowUpHelperContext);
  [v14 setAltDSID:v13];

  [v14 setPresentingViewController:self];
  [v14 setUniqueItemIdentifier:v11];
  [v14 setUrlKey:v10];
  v15 = objc_alloc_init(AKAppleIDFollowUpServerUIPresenter);
  v16 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  [v15 setFollowUpProvider:v16];

  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100006E70();
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002BDC;
  v19[3] = &unk_100010540;
  v19[4] = self;
  v20 = v11;
  v18 = v11;
  [v15 presentServerUIWithContext:v14 withCompletion:v12 withResponse:v19];
}

- (void)_beginLocalSecretCreateActionFlow
{
  if (self->_context)
  {
    v3 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:self->_context];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100002D1C;
    v4[3] = &unk_100010568;
    v4[4] = self;
    [v3 performDeviceToDeviceEncryptionStateRepairWithCompletion:v4];
  }
}

- (void)_beginExtensionFlowWithAction:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:kRepairCDPStateActionContinue];

  if (v6)
  {
    stateController = self->_stateController;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000031C8;
    v34[3] = &unk_100010568;
    v34[4] = self;
    [(CDPStateController *)stateController repairCloudDataProtectionStateWithCompletion:v34];
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [v8 isEqualToString:kOfflineLocalSecretChangeActionContinue];

    if (v9)
    {
      v10 = self->_stateController;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000031D0;
      v33[3] = &unk_100010568;
      v33[4] = self;
      [(CDPStateController *)v10 finishOfflineLocalSecretChangeWithCompletion:v33];
    }

    else
    {
      v11 = [v4 identifier];
      v12 = [v11 isEqualToString:kOfflineLocalSecretCreateActionContinue];

      if (v12)
      {
        [(CDPFollowUpViewController *)self _beginLocalSecretCreateActionFlow];
      }

      else
      {
        v13 = [v4 identifier];
        v14 = [v13 isEqualToString:kSecureTermsActionContinue];

        if (v14)
        {
          [(CDPFollowUpViewController *)self _showGenericTermsUI];
        }

        else
        {
          v15 = [v4 identifier];
          v16 = [v15 isEqualToString:kConfirmExistingSecretActionContinue];

          if (v16)
          {
            v17 = self->_stateController;
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1000031D8;
            v32[3] = &unk_100010568;
            v32[4] = self;
            [(CDPStateController *)v17 finishCyrusFlowAfterTermsAgreementWithContext:v32];
          }

          else
          {
            v18 = [v4 identifier];
            v19 = [v18 isEqualToString:kRepairCDPStateActionRecoveryKey];

            if (v19)
            {
              v20 = self->_stateController;
              v31[0] = _NSConcreteStackBlock;
              v31[1] = 3221225472;
              v31[2] = sub_1000031E0;
              v31[3] = &unk_100010568;
              v31[4] = self;
              [(CDPStateController *)v20 generateNewRecoveryKey:v31];
            }

            else
            {
              v21 = [v4 identifier];
              v22 = [v21 isEqualToString:kSOSCompatibilityActionContinue];

              if (v22)
              {
                objc_initWeak(&location, self);
                v23 = self->_stateController;
                v28[0] = _NSConcreteStackBlock;
                v28[1] = 3221225472;
                v28[2] = sub_100003220;
                v28[3] = &unk_100010590;
                objc_copyWeak(&v29, &location);
                [(CDPStateController *)v23 repairCloudDataProtectionStateWithCompletion:v28];
                objc_destroyWeak(&v29);
                objc_destroyWeak(&location);
              }

              else
              {
                v24 = [v4 userInfo];
                v25 = [v24 objectForKeyedSubscript:kCDPAKNativeActionKey];

                v26 = [v4 userInfo];
                v27 = [v26 objectForKeyedSubscript:kCDPAKFollowUpURLKey];

                if (v25 && [v25 isEqualToString:kADPEnrollAction])
                {
                  [(CDPFollowUpViewController *)self _beginWalrusEnablementFromUpsellCFU];
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_beginWalrusEnablementFromUpsellCFU
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100006F7C(self);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003340;
  v5[3] = &unk_1000105B8;
  v5[4] = self;
  v4 = objc_retainBlock(v5);
  [(CDPFollowUpViewController *)self _beginUpsellFlowOnIOSUsingContext:self->_cdpContext completion:v4];
}

- (void)_beginUpsellFlowOnIOSUsingContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CDPUIWalrusSwiftUIFactory);
  v9 = +[AKURLBag sharedBag];
  v10 = +[AKNetworkObserver sharedNetworkObserver];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000034C4;
  v12[3] = &unk_1000105E0;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 makeSwiftUIUpsellViewWithCDPContext:v7 urlBag:v9 networkObserver:v10 viewModelDelegate:self completion:v12];
}

- (id)_makeADPUpsellLandingPageViewedEventWithCDPContext:(id)a3
{
  v3 = [AAFAnalyticsEvent analyticsEventWithContext:a3 eventName:kADPUpsellLandingPageViewed category:kCDPRTCEventCategoryAccountDataAccessRecovery];
  v7[0] = kADPUpsellLandingPageTurnOnEscapeOffer;
  v7[1] = kADPUpsellLandingPageSetUpLaterIniCloudSettingsEscapeOffer;
  v7[2] = kDataAccessCancel;
  v4 = [NSArray arrayWithObjects:v7 count:3];
  v5 = [v4 aaf_arrayAsCommaSeperatedString];
  [v3 setObject:v5 forKeyedSubscript:kCDPAnalyticsEscapeOffer];

  return v3;
}

- (void)_clearLocalSecretCreateFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = [CDPFollowUpContext contextForWalrusCreatePasscodeWithCDPContext:0];
  v9 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v9];
  v5 = v9;

  v6 = _CDPLogSystem();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully cleared local secret create followup", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100007094();
  }
}

- (void)_clearRecoveryKeyRepairFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForRecoveryKeyRepair];
  v8 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v8];
  v5 = v8;

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failed to clear";
    if (v4)
    {
      v7 = @"Cleared";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ recovery key follow up with error: %@", buf, 0x16u);
  }
}

- (void)_clearFollowUpWithAKControllerWithItemID:(id)a3
{
  v3 = a3;
  v4 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  v17 = v3;
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v10 = 0;
  v6 = [v4 removeFollowUpItemsWithIdentifiers:v5 error:&v10];
  v7 = v10;

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Failed to clear";
    *buf = 138412802;
    if (v6)
    {
      v9 = @"Cleared";
    }

    v12 = v9;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ follow up with error: %@", buf, 0x20u);
  }
}

- (void)_clearADPUpsellFollowUpWithAKController
{
  v2 = +[AKFollowUpProviderFactory sharedAuthKitFollowupProvider];
  v13 = kADPUpsellItemIdentifier;
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = 0;
  v4 = [v2 removeFollowUpItemsWithIdentifiers:v3 error:&v8];
  v5 = v8;

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failed to clear";
    if (v4)
    {
      v7 = @"Cleared";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ ADP Upsell follow up with error: %@", buf, 0x16u);
  }
}

- (void)_clearADPUpsellFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForADPUpsell];
  v8 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v8];
  v5 = v8;

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failed to clear";
    if (v4)
    {
      v7 = @"Cleared";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ ADP Upsell follow up with error: %@", buf, 0x16u);
  }
}

- (void)_setupWithContext:(id)a3
{
  v4 = a3;
  v5 = [[CDPStateController alloc] initWithContext:v4];

  stateController = self->_stateController;
  self->_stateController = v5;

  v7 = objc_alloc_init(CDPUIController);
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:1];
  [(CDPUIController *)self->_uiController setDelegate:self];
  v9 = self->_uiController;
  v10 = self->_stateController;

  [(CDPStateController *)v10 setUiProvider:v9];
}

- (id)_followupProvider
{
  v2 = [FLFollowUpController alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 initWithClientIdentifier:v4];

  v6 = [[AKFollowUpController alloc] initWithFLFollowupController:v5];

  return v6;
}

- (void)_setupEncryptionFlowContextWithAltDSID:(id)a3
{
  v4 = a3;
  v5 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:v4];

  context = self->_context;
  self->_context = v5;

  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setTelemetryFlowID:self->_telemetryFlowID];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [(CDPUIDeviceToDeviceEncryptionFlowContext *)self->_context setDeviceToDeviceEncryptionUpgradeType:2];
  v7 = self->_context;

  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v7 setPresentingViewController:self];
}

- (void)_setupSOSCompatibilityModeEnabledFlowWithContext:(id)a3
{
  v4 = a3;
  [v4 setSosCompatibilityType:1];
  [v4 setKeychainSyncSystem:1];
  [v4 setIsSOSCFUFlow:1];
  v5 = [[CDPStateController alloc] initWithContext:v4];

  stateController = self->_stateController;
  self->_stateController = v5;

  v7 = objc_alloc_init(CDPUIController);
  uiController = self->_uiController;
  self->_uiController = v7;

  [(CDPUIController *)self->_uiController setForceInlinePresentation:1];
  [(CDPUIController *)self->_uiController setDelegate:self];
  v9 = self->_uiController;
  v10 = self->_stateController;

  [(CDPStateController *)v10 setUiProvider:v9];
}

- (id)_navController
{
  v2 = objc_alloc_init(PSSetupController);
  [v2 setNavigationBarHidden:1];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [v2 view];
  [v4 setBackgroundColor:v3];

  [v2 setModalPresentationStyle:3];

  return v2;
}

- (id)_spinnerViewController
{
  spinnerViewController = self->_spinnerViewController;
  if (!spinnerViewController)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = qword_100014E70;
    v15 = qword_100014E70;
    if (!qword_100014E70)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100006630;
      v11[3] = &unk_1000106D0;
      v11[4] = &v12;
      sub_100006630(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_spinnerViewController;
    self->_spinnerViewController = v6;

    v8 = [(AAUISpinnerViewController *)self->_spinnerViewController label];
    v9 = CDPLocalizedString();
    [v8 setText:v9];

    [(AAUISpinnerViewController *)self->_spinnerViewController setSpinning:1];
    [(AAUISpinnerViewController *)self->_spinnerViewController setModalInPresentation:1];
    spinnerViewController = self->_spinnerViewController;
  }

  return spinnerViewController;
}

- (void)uiController:(id)a3 preparePresentationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preparing full context for controller: %@", &v11, 0xCu);
  }

  if (v7)
  {
    v9 = [v6 presentingViewController];

    if (v9 == self)
    {
      [(CDPFollowUpViewController *)self presentFullUIWithCompletion:v7];
    }

    else
    {
      v10 = [v6 presentingViewController];

      if (v10)
      {
        v7[2](v7);
      }
    }
  }
}

- (void)uiController:(id)a3 prepareAlertContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preparing alert context for controller: %@", &v11, 0xCu);
  }

  if (v7)
  {
    v9 = [v6 presentingViewController];

    if (v9)
    {
      v7[2](v7);
    }

    else
    {
      v10 = [(CDPFollowUpViewController *)self _spinnerViewController];
      [(CDPFollowUpViewController *)self presentViewController:v10 animated:1 completion:0];

      [(CDPFollowUpViewController *)self presentAlertUIWithCompletion:v7];
    }
  }
}

- (void)presentAlertUIWithCompletion:(id)a3
{
  uiController = self->_uiController;
  v5 = a3;
  [(CDPUIController *)uiController setPresentingViewController:self];
  v5[2]();
}

- (void)presentFullUIWithCompletion:(id)a3
{
  v4 = a3;
  v11 = [(CDPFollowUpViewController *)self _navController];
  [(CDPUIController *)self->_uiController setPresentingViewController:?];
  v4[2](v4);

  v5 = self;
  v6 = [(CDPFollowUpViewController *)v5 presentedViewController];

  if (v6)
  {
    v7 = [(CDPFollowUpViewController *)v5 presentedViewController];

    v8 = [(CDPFollowUpViewController *)v5 view];
    v9 = [v8 effectiveUserInterfaceLayoutDirection];

    if (v9 == 1)
    {
      v10 = 15;
    }

    else
    {
      v10 = 16;
    }

    [v11 setModalTransitionStyle:v10];
    v5 = v7;
  }

  [(CDPFollowUpViewController *)v5 presentViewController:v11 animated:1 completion:0];
}

- (void)_clearSOSCompatibilityModeFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForSOSCompatibilityMode];
  v8 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v8];
  v5 = v8;

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failed to clear";
    if (v4)
    {
      v7 = @"Cleared";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ compatibility mode follow up with error: %@", buf, 0x16u);
  }
}

- (void)sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_alloc_init(AAAFollowUpAnalyticsInfo);
  [v12 setFlowID:v9];

  [v12 setCfuType:v7];
  v10 = [AAFAnalyticsEvent analyticsEventWithName:kAAFClickFollowupEvent eventCategory:kCDPRTCEventCategoryAccountDataAccessRecovery followupAnalyticsData:v12 altDSID:v8];

  v11 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v11 sendEvent:v10];
}

- (void)_clearSecureTermsFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForSecureTerms];
  v8 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v8];
  v5 = v8;

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failed to clear";
    if (v4)
    {
      v7 = @"Cleared";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ secure terms follow up with error: %@", buf, 0x16u);
  }
}

- (void)_secureTermsTearDownWithUpdatedSecret:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"was not";
    if (v4)
    {
      v8 = @"was";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local secret %@ updated after terms agreement.", &v10, 0xCu);
  }

  if (v6)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000070FC();
    }
  }

  [(CDPFollowUpViewController *)self _clearSecureTermsFollowUp];
  [(CDPFollowUpViewController *)self finishProcessing];
}

- (void)_showGenericTermsUI
{
  v3 = objc_alloc_init(ACAccountStore);
  v4 = [v3 aa_primaryAppleAccount];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = qword_100014E80;
  v13 = qword_100014E80;
  if (!qword_100014E80)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000067F8;
    v9[3] = &unk_1000106D0;
    v9[4] = &v10;
    sub_1000067F8(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v5 alloc] initWithAccount:v4 inStore:v3];
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = v7;

  [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
  [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI presentFromViewController:self modal:1];
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AAUIGenericTermsRemoteUI generic terms callback with success: %@", buf, 0xCu);
  }

  if (v4)
  {
    v9 = [v6 account];
    if (v9)
    {
      v10 = [v6 accountStore];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100004C68;
      v12[3] = &unk_100010608;
      v12[4] = self;
      v13 = v6;
      v14 = v9;
      [v10 aa_updatePropertiesForAppleAccount:v14 completion:v12];
    }

    else
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100007164();
      }

      [(CDPFollowUpViewController *)self finishProcessing];
    }
  }

  else
  {
    [(CDPFollowUpViewController *)self finishProcessing];
  }
}

- (void)upsellViewModelDidRequestBeginEnablementFlowWithContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User tapped Turn On on the ADP upsell landing page. Beginning RUI flow.", buf, 2u);
  }

  v6 = [(CDPFollowUpViewController *)self _makeEscapeOfferSelectedEventForOffer:kADPUpsellLandingPageTurnOnEscapeOffer withContext:v4];
  if (v6)
  {
    v7 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
    [v7 sendEvent:v6];
  }

  v8 = [(CDPFollowUpViewController *)self adpUpsellLandingScreen];

  if (v8)
  {
    v9 = [NSMutableURLRequest alloc];
    v10 = +[AKURLBag sharedBag];
    v11 = [v10 dataRecoveryServiceDisableURL];
    v12 = [v9 initWithURL:v11];

    [v12 setHTTPMethod:@"GET"];
    objc_initWeak(buf, self);
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100007200();
    }

    v14 = [(CDPFollowUpViewController *)self adpUpsellLandingScreen];
    v15 = [(CDPFollowUpViewController *)self grandSlamPresenterWithPresentingScreen:v14];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005128;
    v18[3] = &unk_100010658;
    objc_copyWeak(&v20, buf);
    v16 = v12;
    v19 = v16;
    [v15 loadRequest:v16 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100007268(v17);
    }

    [(CDPFollowUpViewController *)self finishProcessing];
  }
}

- (void)upsellViewModelDidRequestCFUDismissalWithContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User tapped Set Up Later on the ADP upsell landing page.", buf, 2u);
  }

  v6 = [(CDPFollowUpViewController *)self _makeEscapeOfferSelectedEventForOffer:kADPUpsellLandingPageSetUpLaterIniCloudSettingsEscapeOffer withContext:v4];
  if (v6)
  {
    v7 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
    [v7 sendEvent:v6];
  }

  v8 = [(CDPFollowUpViewController *)self adpUpsellLandingScreen];
  v9 = v8 == 0;

  if (v9)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1000073D4(v15);
    }

    [(CDPFollowUpViewController *)self finishProcessing];
  }

  else
  {
    v10 = kADPUpsellTearDownAction;
    v11 = +[CDPAccount sharedInstance];
    v12 = [v11 primaryAccountAltDSID];

    v13 = kADPUpsellItemIdentifier;
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Firing off best effort teardown with urlKey=%@, altDSID=%@, itemID=%@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000054F4;
    v16[3] = &unk_100010590;
    objc_copyWeak(&v17, buf);
    [(CDPFollowUpViewController *)self _presentAKServerUIWithUrlKey:v10 altDSID:v12 itemID:v13 completion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)upsellViewModelDidRequestFlowCancellationWithContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User requested exiting out of the ADP upsell landing page. Not taking any action.", v8, 2u);
  }

  v6 = [(CDPFollowUpViewController *)self _makeEscapeOfferSelectedEventForOffer:kDataAccessCancel withContext:v4];

  if (v6)
  {
    v7 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
    [v7 sendEvent:v6];
  }

  [(CDPFollowUpViewController *)self finishProcessing];
}

- (id)_makeEscapeOfferSelectedEventForOffer:(id)a3 withContext:(id)a4
{
  v5 = kCDPAnalyticsEscapeOfferSelectedEvent;
  v6 = kCDPRTCEventCategoryAccountDataAccessRecovery;
  v7 = a3;
  v8 = [AAFAnalyticsEvent analyticsEventWithContext:a4 eventName:v5 category:v6];
  [v8 setObject:v7 forKeyedSubscript:kCDPAnalyticsEscapeOfferSelected];

  return v8;
}

- (void)_harvestWebAccessStatus:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000074C8(v4);
    }

    v7 = +[CDPAccount sharedInstance];
    v8 = [v7 primaryAppleAccount];
    v6 = [v8 aa_altDSID];

    v9 = +[AKAccountManager sharedInstance];
    v10 = [v9 authKitAccountWithAltDSID:v6];

    [v10 setAccountProperty:v4 forKey:@"webAccessEnabled"];
    objc_initWeak(&location, self);
    v11 = [v10 accountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000058A0;
    v12[3] = &unk_100010590;
    objc_copyWeak(&v13, &location);
    [v11 saveAccount:v10 withCompletionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000754C();
  }
}

- (void)_showADPUpsellNetworkError
{
  v3 = CDPLocalizedStringInTable();
  CDPLocalizedStringInTable();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005AD8;
  block[3] = &unk_1000106A8;
  block[4] = self;
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleADPUpsellHTTPResponse:(id)a3
{
  v4 = a3;
  if ([v4 statusCode] != 401)
  {
    v5 = [v4 statusCode];
    if (v4)
    {
      if (v5 != 302)
      {
        v6 = _CDPLogSystem();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138477827;
          v19 = v4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Harvesting data from response: %{private}@", &v18, 0xCu);
        }

        v7 = [v4 allHeaderFields];
        v8 = [v7 objectForKeyedSubscript:@"X-Apple-I-Web-Access"];

        [(CDPFollowUpViewController *)self _harvestWebAccessStatus:v8];
        v9 = [v4 allHeaderFields];
        v10 = [v9 objectForKeyedSubscript:@"X-Apple-AK-Advanced-ICloud-Data-Protection"];

        if (v10)
        {
          v11 = _CDPLogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = [v10 BOOLValue];
            v18 = 138412546;
            v19 = v13;
            v20 = 1024;
            v21 = v14;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: ADP isEnabled: %d", &v18, 0x12u);
          }
        }

        v15 = [v4 allHeaderFields];
        v16 = [v15 objectForKeyedSubscript:@"X-Apple-AK-Action"];

        if (v16 && [v16 isEqual:@"delete"])
        {
          v17 = _CDPLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_100006ED8();
          }

          [(CDPFollowUpViewController *)self _clearADPUpsellFollowUpWithAKController];
        }
      }
    }
  }
}

- (id)accountsForAccountManager:(id)a3
{
  v3 = +[CDPAccount sharedInstance];
  v4 = [v3 primaryAppleAccount];

  if (v4)
  {
    v15 = AIDAServiceTypeCloud;
    v16 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100007650(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = &__NSDictionary0__struct;
  }

  return v5;
}

- (id)grandSlamPresenterWithPresentingScreen:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000076C8();
  }

  if (self->_grandSlamPresenter)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100007730(&self->_grandSlamPresenter, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = [AIDAAccountManager alloc];
  v14 = +[ACAccountStore defaultStore];
  v15 = [v13 initWithAccountStore:v14];

  [v15 setDelegate:self];
  v16 = objc_alloc_init(sub_10000600C());
  if (objc_opt_respondsToSelector())
  {
    v17 = [objc_alloc(sub_10000600C()) initWithAccountManager:v15 hookType:2 presenter:v4 cdpContext:self->_cdpContext];
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000077A0();
    }

    v17 = [objc_alloc(sub_10000600C()) initWithAccountManager:v15 hookType:2 presenter:v4];
  }

  v19 = v17;

  [v19 setDelegate:self];
  grandSlamPresenter = self->_grandSlamPresenter;
  self->_grandSlamPresenter = v19;
  v21 = v19;

  v22 = self->_grandSlamPresenter;
  v23 = v22;

  return v22;
}

- (void)remoteUIDidReceiveHTTPResponse:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000077DC();
  }

  [(CDPFollowUpViewController *)self _handleADPUpsellHTTPResponse:v4];
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 debugDescription];
    v12 = 138412803;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2113;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: Request %@ completed with error: %{private}@", &v12, 0x20u);
  }

  if (v7)
  {
    [(CDPFollowUpViewController *)self _showADPUpsellNetworkError];
  }
}

- (void)remoteUIDidDismiss:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100007844();
  }

  v5 = [(CDPFollowUpViewController *)self navigationController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006338;
  v6[3] = &unk_1000105B8;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)remoteUIDidHandleButton:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000791C();
  }

  v6 = [v4 objectForKeyedSubscript:AKActionKey];
  if ([v6 isEqualToString:AKActionCancel])
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100007998();
    }

    [(CDPFollowUpViewController *)self finishProcessing];
  }
}

@end