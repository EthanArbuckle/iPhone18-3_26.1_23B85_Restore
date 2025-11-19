@interface CDPUIController
- (BOOL)_canShowRPD;
- (BOOL)_isQuotaServiceHost:(id)a3;
- (CDPUIDelegate)delegate;
- (id)_beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_buildQuotaRequest;
- (id)_chooseDeviceEscapeOption;
- (id)_custodianAskHelpViewControllerWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3;
- (id)_custodianCodeEntryViewControllerWithController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3 askHelpController:(id)a4;
- (id)_deviceLimitOfferCustodianForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_deviceLimitOfferDeviceSelectionForDevice:(id)a3 fromViewController:(id)a4;
- (id)_deviceLimitOfferPiggybackingForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_deviceLimitOfferRecoveryKeyAndCustodianForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_deviceLimitOfferRecoveryKeyForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_deviceLimitOfferSkipForDevice:(id)a3;
- (id)_enterCustodianCodeEscapeOfferWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_enterCustodianCodeEscapeOptionWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)_enterCustodianCodeEscapeOptionWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4 presentationBlock:(id)a5;
- (id)_enterSecretLaterEscapeOptionWithSecret:(unint64_t)a3;
- (id)_escapeOfferForDevice:(id)a3 withMask:(unint64_t)a4;
- (id)_escapeOfferForMultiApprovalWithMask:(unint64_t)a3;
- (id)_escapeOfferForSingleApprovalWithMask:(unint64_t)a3;
- (id)_escapeOfferMessageForDevice:(id)a3 withMask:(unint64_t)a4;
- (id)_escapeOffersForgotAllWithMask:(unint64_t)a3 presenter:(id)a4 devices:(id)a5;
- (id)_iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6 withDevice:(id)a7;
- (id)_iCloudDeleteConfirmationViewController:(id)a3;
- (id)_instructionsControllerForPlatform:(unint64_t)a3 controller:(id)a4 supportedEscapeOfferMask:(unint64_t)a5;
- (id)_localDeviceClass;
- (id)_makeRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5;
- (id)_makeRemoteSecretInputEventWithContext:(id)a3 device:(id)a4;
- (id)_noRecoveryFactorsBaseController;
- (id)_piggybackingCantGetToMyDevices:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6;
- (id)_piggybackingEscapeOfferCantGetToDevicesWithSupportedEscapeOffers:(unint64_t)a3;
- (id)_piggybackingHandleNonProxError:(unint64_t)a3;
- (id)_piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3 title:(id)a4 localizationKey:(id)a5;
- (id)_piggybackingSomethingWentWrong:(unint64_t)a3;
- (id)_piggybackingViewControllerWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_quotaScreenRPDErrorWithUnderlyingError:(id)a3;
- (id)_recoveryKeyControllerWithContext:(id)a3 secretValidator:(id)a4 completion:(id)a5;
- (id)_recoveryKeyControllerWithContext:(id)a3 validator:(id)a4 completion:(id)a5;
- (id)_recoveryKeyEscapeOfferWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3 presentationBlock:(id)a4;
- (id)_recoveryKeyResetProtectedDataEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3;
- (id)_recoveryMethodEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3;
- (id)_remoteApprovalEscapeOption;
- (id)_remoteSecretControllerForDevice:(id)a3;
- (id)_singleICSCEscapeOfferWithMask:(unint64_t)a3 withController:(id)a4;
- (id)_skipOrDeleteiCloudDataEscapeOfferWithTitle:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6;
- (id)_tryAgainLaterEscapeOption;
- (id)_waitingForApprovalEscapeOffer;
- (id)devicePicker:(id)a3 escapeOffersForDevices:(id)a4;
- (id)recoveryKeyEntryControllerForCircleJoinWithCancel:(BOOL)a3 supportedEscapeOfferMask:(unint64_t)a4;
- (id)updateContextWithAuthResults:(id)a3;
- (void)_beginDevicePickerFlowFromEntryController:(id)a3;
- (void)_beginWaitingForApprovalFlow;
- (void)_disableUserInteractionAndStartSpinner;
- (void)_dismissPresentedViewControllerCompletion:(id)a3;
- (void)_enableUserInteractionAndStopSpinner;
- (void)_handleDepletedRemainingAttemptsForDevice:(id)a3 fromViewController:(id)a4 mask:(unint64_t)a5;
- (void)_handleResetActionWithCompletion:(id)a3;
- (void)_manageNavigationBarForRootViewController:(id)a3;
- (void)_presentCustodianAttemptLimitAlert;
- (void)_presentRemoteSecretControllerWithNewestDevice:(id)a3;
- (void)_presentRootController:(id)a3 completion:(id)a4;
- (void)_presentSwiftUIRemoteSecretPromptWithDevice:(id)a3 didSelectDevice:(BOOL)a4;
- (void)_replaceViewController:(id)a3 withNewController:(id)a4;
- (void)_rpdEscapeOptionWithOffer:(id)a3;
- (void)_setupDevicePickerController:(id)a3;
- (void)_showQuotaStorageAppListView:(id)a3;
- (void)_showQuotaStorageAppListView:(id)a3 andCompletion:(id)a4;
- (void)_showResetKeychainConfirmationAlertWithViewController:(id)a3;
- (void)_showStartRecoverySessionFailureAlert;
- (void)_showTryAgainLaterConfirmationAlertWithViewController:(id)a3;
- (void)_validateCustodianRecoveryInfo:(id)a3;
- (void)approveFromAnotherDevice:(BOOL)a3;
- (void)attemptToJoinCircleWithPiggybacking:(id)a3 mask:(unint64_t)a4;
- (void)attemptToJoinCircleWithPiggybacking:(id)a3 mask:(unint64_t)a4 validator:(id)a5;
- (void)backTappedFromRoot:(id)a3;
- (void)cancelTapped:(id)a3;
- (void)cancelledRemoteSecretEntry:(id)a3;
- (void)cdpContext:(id)a3 confirmRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 createLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 presentRemoteApprovalWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4;
- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7;
- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5;
- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6;
- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6;
- (void)cdpContext:(id)a3 showResetCompletedAlertWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 showResetFailedAlertWithUnderlyingError:(id)a4 completion:(id)a5;
- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5;
- (void)custodianOSSelectionViewControllerWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)devicePicker:(id)a3 didSelectDevice:(id)a4;
- (void)dismissAndResetAccountCDPState:(id)a3 localSecret:(id)a4;
- (void)dismissRemoteApprovalWaitingScreenWithAction:(unint64_t)a3;
- (void)finishValidation:(id)a3 withError:(id)a4;
- (void)handleBackPopCompletion;
- (void)keychainSyncController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)performAccountReset:(id)a3;
- (void)performCustodianRecovery:(id)a3;
- (void)performPiggybackingRecovery:(id)a3;
- (void)performRecoveryKeyRecovery:(id)a3;
- (void)piggybackingUserDidNotGetACode:(unint64_t)a3;
- (void)presentQuotaScreenForRequest:(id)a3 completion:(id)a4;
- (void)presentQuotaScreenWithCompletion:(id)a3;
- (void)remoteSecretEntry:(id)a3 depletedRemainingAttemptsForDevice:(id)a4;
- (void)remoteSecretEntry:(id)a3 didAcceptValidRemoteSecretForDevice:(id)a4;
- (void)remoteSecretEntryDidAcceptValidSecret;
- (void)remoteSecretEntryDidExceedMaximumAttempts;
- (void)remoteSecretEntryDidFinishValidationWithError:(id)a3;
- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)a3 newestDevice:(id)a4;
- (void)remoteSecretEntryDidRequestAccountReset;
- (void)remoteSecretEntryDidRequestAccountResetEscapeActionForDevice:(id)a3;
- (void)remoteSecretEntryDidRequestCancellation;
- (void)remoteSecretEntryDidRequestCustodianRecoveryEscapeAction;
- (void)remoteSecretEntryDidRequestDeviceSelection;
- (void)remoteSecretEntryDidRequestDeviceSelectionEscapeAction;
- (void)remoteSecretEntryDidRequestDisableUserInteraction;
- (void)remoteSecretEntryDidRequestDisableUserInteractionAndStartSpinner;
- (void)remoteSecretEntryDidRequestEnableUserInteraction;
- (void)remoteSecretEntryDidRequestEnableUserInteractionAndStopSpinner;
- (void)remoteSecretEntryDidRequestPiggybackingEscapeAction;
- (void)remoteSecretEntryDidRequestRecoveryKeyEscapeAction;
- (void)remoteSecretEntryDidRequestSkipEscapeActionForDevice:(id)a3;
- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)sendEscapeOfferSelectedEvent:(id)a3;
- (void)sendRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5;
- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)a3;
- (void)sendRemoteSecretInputEventWithContext:(id)a3 device:(id)a4;
- (void)tryAgainLaterTapped:(id)a3;
@end

@implementation CDPUIController

- (void)cancelTapped:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Cancel was tapped in CDPUIController", buf, 2u);
  }

  recoveryKeyViewModel = self->_recoveryKeyViewModel;
  if (recoveryKeyViewModel)
  {
    v6 = [(CDPRecoveryKeyEntryViewModel *)recoveryKeyViewModel completionHandler];
    v7 = _CDPStateError();
    (v6)[2](v6, 0, v7);
  }

  else
  {
    [(CDPUIController *)self dismissRemoteApprovalWaitingScreenWithAction:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__CDPUIController_cancelTapped___block_invoke;
    v8[3] = &unk_278E2AF90;
    v8[4] = self;
    [(CDPUIController *)self _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCancelled" completion:v8];
  }
}

void __32__CDPUIController_cancelTapped___block_invoke(uint64_t a1)
{
  v2 = _CDPStateError();
  [*(*(a1 + 32) + 24) cancelValidationWithError:v2];
}

- (void)tryAgainLaterTapped:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Try Again Later was tapped in CDPUIController", buf, 2u);
  }

  [(CDPUIController *)self dismissRemoteApprovalWaitingScreenWithAction:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CDPUIController_tryAgainLaterTapped___block_invoke;
  v5[3] = &unk_278E2AF90;
  v5[4] = self;
  [(CDPUIController *)self _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCancelled" completion:v5];
}

void __39__CDPUIController_tryAgainLaterTapped___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (void)backTappedFromRoot:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Back was tapped from root view controller. Popping root view controller...", buf, 2u);
  }

  [MEMORY[0x277D75780] _setUseCustomBackButtonAction:0];
  v5 = [(UINavigationController *)self->_navController popViewControllerAnimated:1];
  v6 = [(UINavigationController *)self->_navController transitionCoordinator];
  v7 = v6;
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__CDPUIController_backTappedFromRoot___block_invoke_36;
    v9[3] = &unk_278E2AFD8;
    v9[4] = self;
    [v6 animateAlongsideTransition:&__block_literal_global completion:v9];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Finished popping root controller (no animate), cancelling validation", buf, 2u);
    }

    [(CDPUIController *)self handleBackPopCompletion];
  }
}

void __38__CDPUIController_backTappedFromRoot___block_invoke()
{
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2451DB000, v0, OS_LOG_TYPE_DEFAULT, "Animating back event...", v1, 2u);
  }
}

uint64_t __38__CDPUIController_backTappedFromRoot___block_invoke_36(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "Finished popping root controller, cancelling validation", v4, 2u);
  }

  return [*(a1 + 32) handleBackPopCompletion];
}

- (void)handleBackPopCompletion
{
  if (self->_recoveryKeyViewModel)
  {
    v4 = [(CDPRecoveryKeyEntryViewModel *)self->_recoveryKeyViewModel completionHandler];
    v2 = _CDPStateError();
    v4[2](v4, 0, v2);
  }

  else
  {
    remoteSecretValidator = self->_remoteSecretValidator;
    v4 = _CDPStateError();
    [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator cancelValidationWithError:?];
  }
}

- (void)_dismissPresentedViewControllerCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIController *)self forceInlinePresentation];
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [CDPUIController _dismissPresentedViewControllerCompletion:?];
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    if (v7)
    {
      [CDPUIController _dismissPresentedViewControllerCompletion:?];
    }

    v8 = [(CDPUIBaseController *)self presentingViewController];
    [v8 dismissViewControllerAnimated:1 completion:v4];
  }
}

- (void)_manageNavigationBarForRootViewController:(id)a3
{
  v12 = a3;
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v12 navigationItem];
    [v4 _setNavigationBarHidden:1];
  }

  else if (self->_hostingController == self->_rootViewController)
  {
    v6 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_remoteSecretEntryDidRequestCancellation];
    v8 = [v12 navigationItem];
    v9 = v8;
    if (v6)
    {
      [v8 setRightBarButtonItem:v7];

      v4 = [v12 navigationItem];
      [v4 rightBarButtonItem];
    }

    else
    {
      [v8 setLeftBarButtonItem:v7];

      v4 = [v12 navigationItem];
      [v4 leftBarButtonItem];
    }
    v10 = ;
    cancelButtonForSwiftUIHostingController = self->_cancelButtonForSwiftUIHostingController;
    self->_cancelButtonForSwiftUIHostingController = v10;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped_];
    v5 = [v12 navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }
}

- (void)_presentRootController:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->super._presentingViewController);
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Presenting %@ onto %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__CDPUIController__presentRootController_completion___block_invoke;
  aBlock[3] = &unk_278E2B050;
  aBlock[4] = self;
  v10 = v6;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  v13 = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 uiController:self preparePresentationContext:v12];
  }

  else
  {
    v12[2](v12);
  }
}

void __53__CDPUIController__presentRootController_completion___block_invoke(id *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = a1 + 5;
  v3 = a1 + 4;
  objc_storeStrong(a1[4] + 9, a1[5]);
  [*v2 setPreferredContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (![*v3 forceInlinePresentation] || (isKindOfClass & 1) == 0)
  {
    [a1[4] _manageNavigationBarForRootViewController:a1[5]];
    [a1[5] setModalInPresentation:1];
  }

  if (![a1[4] forceInlinePresentation])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if (v14 == 1)
      {
        [a1[5] setModalPresentationStyle:2];
      }

      v15 = [a1[4] presentingViewController];
      v16 = v15;
      v17 = a1[5];
      v18 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_alloc_init(MEMORY[0x277D3FAC8]);
        v19 = [a1[4] presentingViewController];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v21 = [a1[4] presentingViewController];
          v22 = [v21 rootController];
          [v16 setRootController:v22];
        }

        v23 = [a1[4] presentingViewController];
        v24 = [v23 conformsToProtocol:&unk_285849A78];

        if (v24)
        {
          v25 = [a1[4] presentingViewController];
          [v16 setParentController:v25];
        }

        objc_storeStrong(a1[4] + 7, v16);
        [v16 showController:a1[5]];
        v26 = [MEMORY[0x277D75418] currentDevice];
        v27 = [v26 userInterfaceIdiom];

        if (v27 == 1)
        {
          [a1[5] setModalPresentationStyle:2];
        }

        v28 = [a1[4] presentingViewController];
        [v28 presentViewController:v16 animated:1 completion:0];

        goto LABEL_28;
      }

      v37 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:a1[5]];
      v38 = a1[4];
      v39 = v38[7];
      v38[7] = v37;

      v40 = [MEMORY[0x277D75418] currentDevice];
      v41 = [v40 userInterfaceIdiom];

      if (v41 == 1)
      {
        [*(a1[4] + 7) setModalPresentationStyle:2];
      }

      v15 = [a1[4] presentingViewController];
      v16 = v15;
      v17 = *(a1[4] + 7);
      v18 = a1[6];
    }

    [v15 presentViewController:v17 animated:1 completion:v18];
LABEL_28:

    goto LABEL_38;
  }

  v5 = [a1[4] presentingViewController];
  v6 = *(a1[4] + 7);
  *(a1[4] + 7) = v5;

  [*(a1[4] + 7) setNavigationBarHidden:0];
  v7 = [*(a1[4] + 7) viewControllers];
  v8 = [v7 mutableCopy];

  v9 = [*(a1[4] + 7) topViewController];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __53__CDPUIController__presentRootController_completion___block_invoke_cold_1();
    }

    v12 = [*(a1[4] + 7) topViewController];
  }

  else
  {
    if (isKindOfClass)
    {
      v29 = [*(a1[4] + 7) viewControllers];
      v30 = [v29 count];

      if (v30)
      {
        [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
        v31 = objc_alloc(MEMORY[0x277D751E0]);
        v32 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_BACK_BUTTON"];
        v33 = [v32 localizedString];
        v34 = [v31 initWithTitle:v33 style:0 target:a1[4] action:sel_backTappedFromRoot_];
        v35 = [*(a1[4] + 7) topViewController];
        v36 = [v35 navigationItem];
        [v36 setBackBarButtonItem:v34];
      }

      else
      {
        v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:a1[4] action:sel_cancelTapped_];
        v33 = [a1[5] navigationItem];
        [v33 setLeftBarButtonItem:v32];
      }
    }

    v12 = 0;
  }

  [v8 addObject:a1[5]];
  [v8 removeObject:v12];
  if ([*(a1[4] + 10) idmsMasterKeyRecovery])
  {
    v42 = 2.0;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = _CDPLogSystem();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v42;
    _os_log_impl(&dword_2451DB000, v43, OS_LOG_TYPE_DEFAULT, "Attempting to push with delay: %f", &buf, 0xCu);
  }

  v44 = dispatch_time(0, (v42 * 1000000000.0));
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __53__CDPUIController__presentRootController_completion___block_invoke_49;
  v51[3] = &unk_278E2B028;
  v45 = a1[5];
  v46 = a1[4];
  v52 = v45;
  v53 = v46;
  v54 = v8;
  v55 = a1[6];
  v47 = v8;
  dispatch_after(v44, MEMORY[0x277D85CD0], v51);

LABEL_38:
  v56 = 0;
  v57 = &v56;
  v58 = 0x2050000000;
  v48 = getBFFStyleClass_softClass;
  v59 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v61 = __getBFFStyleClass_block_invoke;
    v62 = &unk_278E2BA40;
    v63 = &v56;
    __getBFFStyleClass_block_invoke(&buf);
    v48 = v57[3];
  }

  v49 = v48;
  _Block_object_dispose(&v56, 8);
  v50 = [v48 sharedStyle];
  [v50 applyThemeToNavigationController:*(a1[4] + 7)];
}

void __53__CDPUIController__presentRootController_completion___block_invoke_49(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__CDPUIController__presentRootController_completion___block_invoke_49_cold_1();
  }

  v3 = *(*(a1 + 40) + 56);
  v4 = [*(a1 + 48) copy];
  [v3 setViewControllers:v4 animated:1];

  v5 = [*(*(a1 + 40) + 56) transitionCoordinator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CDPUIController__presentRootController_completion___block_invoke_50;
  v8[3] = &unk_278E2B000;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 56);
  [v5 animateAlongsideTransition:0 completion:v8];
}

uint64_t __53__CDPUIController__presentRootController_completion___block_invoke_50(void *a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__CDPUIController__presentRootController_completion___block_invoke_50_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 168));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1[5] + 168));
    [v5 uiController:a1[5] didPresentRootViewController:a1[4]];
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__CDPUIController_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke;
    v12[3] = &unk_278E2B078;
    v13 = v6;
    v14 = self;
    v15 = v7;
    [v10 uiController:self prepareAlertContext:v12];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CDPUIController;
    [(CDPUIBaseController *)&v11 cdpContext:v6 promptForInteractiveAuthenticationWithCompletion:v7];
  }
}

id __79__CDPUIController_cdpContext_promptForInteractiveAuthenticationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = CDPUIController;
  return objc_msgSendSuper2(&v4, sel_cdpContext_promptForInteractiveAuthenticationWithCompletion_, v1, v2);
}

- (void)cdpContext:(id)a3 showError:(id)a4 withDefaultIndex:(int64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__CDPUIController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke;
    v17[3] = &unk_278E2B0A0;
    v18 = v10;
    v19 = v11;
    v22 = a5;
    v20 = self;
    v21 = v12;
    [v15 uiController:self prepareAlertContext:v17];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CDPUIController;
    [(CDPUIBaseController *)&v16 cdpContext:v10 showError:v11 withDefaultIndex:a5 withCompletion:v12];
  }
}

id __72__CDPUIController_cdpContext_showError_withDefaultIndex_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v6.receiver = *(a1 + 48);
  v6.super_class = CDPUIController;
  return objc_msgSendSuper2(&v6, sel_cdpContext_showError_withDefaultIndex_withCompletion_, v1, v2, v3, v4);
}

- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  objc_storeStrong(&self->_activeContext, a3);
  objc_storeStrong(&self->_remoteSecretValidator, a7);
  if (v8)
  {
    v16 = objc_alloc_init(CDPSingleICSCEntryViewController);
    [(PSKeychainSyncSecurityCodeController *)v16 setMode:2];
    [(PSKeychainSyncSecurityCodeController *)v16 setSecurityCodeType:2];
    [(PSKeychainSyncViewController *)v16 setDelegate:self];
    [(CDPUIController *)self _presentRootController:v16 completion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    remoteSecretValidator = self->_remoteSecretValidator;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__CDPUIController_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke;
    v18[3] = &unk_278E2B0C8;
    objc_copyWeak(&v21, &location);
    v22 = a4;
    v19 = v14;
    v20 = self;
    [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __90__CDPUIController_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v5 = [[CDPRemoteSecretEntryViewController alloc] initWithIsNumeric:*(a1 + 56) numericLength:*(a1 + 32) validator:*(*(a1 + 40) + 24) delegate:WeakRetained];
    v6 = [v8 _singleICSCEscapeOfferWithMask:a2 withController:v5];
    [(CDPRemoteSecretEntryViewController *)v5 setEscapeOffer:v6];

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_285826188 target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v7 setEditPaneClass:objc_opt_class()];
    [v7 setProperty:v8 forKey:*MEMORY[0x277D401B8]];
    [(DevicePINController *)v5 setSpecifier:v7];
    [v8 _presentRootController:v5 completion:0];

    WeakRetained = v8;
  }
}

- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_activeContext, a3);
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to show local secret prompt", buf, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  v49 = @"forceInlineMode";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CDPUIController forceInlinePresentation](self, "forceInlinePresentation")}];
  v50[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v13 = [v12 mutableCopy];

  v14 = [(CDPUIController *)self titleText];
  [v13 setObject:v14 forKeyedSubscript:@"title"];

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_2451DB000, v15, OS_LOG_TYPE_DEFAULT, "%@: userInfo: %@", buf, 0x16u);
  }

  v18 = [v13 copy];
  [v10 setUserInfo:v18];

  v43 = 0;
  v19 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.CoreCDPUI.localSecretPrompt" error:&v43];
  v25 = v43;
  objc_initWeak(&location, v19);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3042000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v44 = v10;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke;
  v38[3] = &unk_278E2B0F0;
  v40 = buf;
  objc_copyWeak(&v41, &location);
  v38[4] = self;
  v21 = v8;
  v39 = v21;
  [v19 instantiateViewControllerWithInputItems:v20 connectionHandler:v38];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_187;
  v32[3] = &unk_278E2B168;
  v34 = v36;
  v35 = buf;
  v22 = v21;
  v33 = v22;
  [v19 setRequestInterruptionBlock:v32];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_190;
  v26[3] = &unk_278E2B208;
  v30 = v36;
  v23 = v7;
  v27 = v23;
  v24 = v22;
  v28 = self;
  v29 = v24;
  v31 = buf;
  [v19 set_requestPostCompletionBlockWithItems:v26];

  _Block_object_dispose(v36, 8);
  objc_destroyWeak(&v41);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeWeak((*(*(a1 + 48) + 8) + 40), v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = _CDPLogSystem();
  v12 = v11;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Presented a remoteUI view controller: %@ - %@", &v16, 0x16u);
    }

    v13 = v8;
    [v13 setRequest:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [v13 setWeakExtension:WeakRetained];

    [*(a1 + 32) _presentRootController:v13 completion:0];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_cold_1();
    }

    v15 = *(a1 + 40);
    v13 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:5906];
    (*(v15 + 16))(v15, 0, v13);
  }
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_187(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2;
  block[3] = &unk_278E2B140;
  v5 = *(a1 + 48);
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_cold_1();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_cold_2();
    }

    WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_188;
    v6[3] = &unk_278E2B118;
    v7 = *(a1 + 32);
    [WeakRetained dismissViewControllerAnimated:1 completion:v6];

    v2 = v7;
  }
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_190(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_191;
  v10[3] = &unk_278E2B1E0;
  v11 = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 40);
  v12 = v8;
  v13 = v7;
  v14 = *(a1 + 64);
  v9 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_191(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8);
  if (*(v1 + 24))
  {
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_191_cold_1();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    if ([*(a1 + 32) count])
    {
      v4 = _CDPLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Local secret prompt came back with data", buf, 2u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_192;
    aBlock[3] = &unk_278E2B190;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v5 = _Block_copy(aBlock);
    v6 = [*(a1 + 32) firstObject];
    if ([*(a1 + 48) forceInlinePresentation] || (objc_msgSend(*(a1 + 48), "forceInlinePresentation") & 1) == 0 && (objc_msgSend(*(a1 + 48), "titleText"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [v6 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"localSecret"];
      v10 = [v6 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"secretType"];
      v5[2](v5, v9, [v11 integerValue]);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_201;
      v13[3] = &unk_278E2B1B8;
      v15 = v5;
      v14 = v6;
      [WeakRetained dismissViewControllerAnimated:1 completion:v13];

      v8 = v15;
    }

    v2 = v17;
  }
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_192(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [objc_alloc(MEMORY[0x277CFD500]) initWithValidatedSecret:v10 secretType:a3];
    v6 = v5;
    if (*(a1 + 32))
    {
      v7 = [v5 validatedSecret];
      [*(a1 + 32) setCachedLocalSecret:v7];

      [*(a1 + 32) setCachedLocalSecretType:{objc_msgSend(v6, "secretType")}];
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(a1 + 40);
    v6 = _CDPStateError();
    v8 = *(v9 + 16);
  }

  v8();
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_201(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) userInfo];
  v3 = [v6 objectForKeyedSubscript:@"localSecret"];
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"secretType"];
  (*(v2 + 16))(v2, v3, [v5 integerValue]);
}

- (void)cdpContext:(id)a3 presentRemoteApprovalWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activeContext = self->_activeContext;
  self->_activeContext = v6;
  v9 = v6;

  v10 = [[CDPWaitingApprovalViewController alloc] initWithEscapeOffer:0];
  objc_storeStrong(&self->_rootViewController, v10);
  [(CDPUIController *)self sendRemoteApprovalStartedBreadCrumbEventWithContext:v9];
  rootViewController = self->_rootViewController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__CDPUIController_cdpContext_presentRemoteApprovalWithCompletion___block_invoke;
  v14[3] = &unk_278E2B230;
  v15 = v10;
  v16 = v7;
  v12 = v7;
  v13 = v10;
  [(CDPUIController *)self _presentRootController:rootViewController completion:v14];
}

- (void)dismissRemoteApprovalWaitingScreenWithAction:(unint64_t)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_rootViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (a3 == 1)
  {
    [(UIViewController *)v5 cancelRemoteApproval];
  }

  else if (a3 == 2)
  {
    [(UIViewController *)v5 remoteApprovalSucceeded];
  }

  [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
}

- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)a3
{
  v4 = [(CDPUIController *)self _makeRemoteApprovalStartedBreadCrumbEventWithContext:a3];
  v3 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v3 sendEvent:v4];
}

- (void)sendRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5
{
  v6 = [(CDPUIController *)self _makeRemoteApprovalCompletedEventWithContext:a3 didApprove:a4 error:a5];
  v5 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v5 sendEvent:v6];
}

- (id)_makeRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = MEMORY[0x277CE44D8];
  v8 = *MEMORY[0x277CFD810];
  v9 = *MEMORY[0x277CFD930];
  v10 = a5;
  v11 = [v7 analyticsEventWithContext:a3 eventName:v8 category:v9];
  v12 = v11;
  if (v5)
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v12 populateUnderlyingErrorsStartingWithRootError:v10];

  return v12;
}

- (void)cdpContext:(id)a3 presentRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[CDPRecoveryKeyEntryViewModel alloc] initWithContext:v8 validator:v9 mode:1];
  v12 = [[CDPRecoveryKeyEntryViewController alloc] initWithRecoveryContext:v11 cdpContext:self->_activeContext];
  objc_storeStrong(&self->_recoveryKeyViewModel, v11);
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__CDPUIController_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke;
  v16[3] = &unk_278E2B280;
  objc_copyWeak(&v20, &location);
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [(CDPRecoveryKeyEntryViewModel *)v11 setCompletionHandler:v16];
  [(CDPUIController *)self _presentRootController:v12 completion:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __73__CDPUIController_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained cdpContext:*(a1 + 32) confirmRecoveryKeyWithValidator:*(a1 + 40) completion:*(a1 + 48)];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __73__CDPUIController_cdpContext_presentRecoveryKeyWithValidator_completion___block_invoke_2;
      v8[3] = &unk_278E2B258;
      v10 = *(a1 + 48);
      v11 = 0;
      v9 = v5;
      [v7 _dismissPresentedViewControllerCompletion:v8];
    }
  }
}

- (void)cdpContext:(id)a3 confirmRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v6 = [(CDPUIController *)self _recoveryKeyControllerWithContext:a3 validator:a4 completion:a5];
  [(UINavigationController *)self->_navController pushViewController:v6 animated:1];
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithValidator:(id)a4 completion:(id)a5
{
  v6 = [(CDPUIController *)self _recoveryKeyControllerWithContext:a3 validator:a4 completion:a5];
  [(CDPUIController *)self _presentRootController:v6 completion:0];
}

- (void)cdpContext:(id)a3 promptForRecoveryKeyWithSecretValidator:(id)a4 completion:(id)a5
{
  v6 = [(CDPUIController *)self _recoveryKeyControllerWithContext:a3 secretValidator:a4 completion:a5];
  [(CDPUIController *)self _presentRootController:v6 completion:0];
}

- (id)_recoveryKeyControllerWithContext:(id)a3 validator:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_activeContext, a3);
  v11 = a4;
  v12 = [[CDPRecoveryKeyEntryViewModel alloc] initWithContext:v9 validator:v11 mode:2];

  if (!self->_recoveryKeyViewModel)
  {
    objc_storeStrong(&self->_recoveryKeyViewModel, v12);
  }

  v13 = [[CDPRecoveryKeyEntryViewController alloc] initWithRecoveryContext:v12 cdpContext:self->_activeContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__CDPUIController__recoveryKeyControllerWithContext_validator_completion___block_invoke;
  v16[3] = &unk_278E2B2A8;
  v16[4] = self;
  v17 = v10;
  v14 = v10;
  [(CDPRecoveryKeyEntryViewModel *)v12 setCompletionHandler:v16];

  return v13;
}

void __74__CDPUIController__recoveryKeyControllerWithContext_validator_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CDPUIController _recoveryKeyControllerWithContext:validator:completion:]_block_invoke";
    _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Recovery key accepted valid key", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__CDPUIController__recoveryKeyControllerWithContext_validator_completion___block_invoke_208;
  v10[3] = &unk_278E2B258;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 _dismissPresentedViewControllerCompletion:v10];
}

- (id)_recoveryKeyControllerWithContext:(id)a3 secretValidator:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_activeContext, a3);
  v11 = a4;
  v12 = [[CDPRecoveryKeyEntryViewModel alloc] initWithContext:v9 validator:v11];

  if (!self->_recoveryKeyViewModel)
  {
    objc_storeStrong(&self->_recoveryKeyViewModel, v12);
  }

  v13 = [[CDPRecoveryKeyEntryViewController alloc] initWithRecoveryContext:v12 cdpContext:self->_activeContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__CDPUIController__recoveryKeyControllerWithContext_secretValidator_completion___block_invoke;
  v16[3] = &unk_278E2B2A8;
  v16[4] = self;
  v17 = v10;
  v14 = v10;
  [(CDPRecoveryKeyEntryViewModel *)v12 setCompletionHandler:v16];

  return v13;
}

void __80__CDPUIController__recoveryKeyControllerWithContext_secretValidator_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CDPUIController _recoveryKeyControllerWithContext:secretValidator:completion:]_block_invoke";
    _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Recovery key accepted", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__CDPUIController__recoveryKeyControllerWithContext_secretValidator_completion___block_invoke_209;
  v10[3] = &unk_278E2B258;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 _dismissPresentedViewControllerCompletion:v10];
}

- (void)_presentSwiftUIRemoteSecretPromptWithDevice:(id)a3 didSelectDevice:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v20 = v6;
  v19 = [(CDPUIController *)self _canShowRPD];
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  activeContext = self->_activeContext;
  remoteSecretValidator = self->_remoteSecretValidator;
  devices = self->_devices;
  v9 = [(CDPUIBaseController *)self presentingViewController];
  v10 = [(CDPUIController *)self performingAccountRecovery];
  offeringRemoteApproval = self->_offeringRemoteApproval;
  isWalrusEnabled = self->_isWalrusEnabled;
  v13 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__CDPUIController__presentSwiftUIRemoteSecretPromptWithDevice_didSelectDevice___block_invoke;
  v21[3] = &unk_278E2B2F8;
  objc_copyWeak(&v23, &location);
  v21[4] = self;
  v24 = v4;
  v14 = v20;
  v22 = v14;
  LOBYTE(v16) = v13;
  BYTE2(v15) = isWalrusEnabled;
  BYTE1(v15) = v19;
  LOBYTE(v15) = offeringRemoteApproval;
  [CDPStateSwiftUIProvider makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:"makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:validator:devices:presentingViewController:performingAccountRecovery:delegate:offeringRemoteApproval:canShowRPD:isADPEnabled:selectedDevice:isNaturalUIEnabled:completionHandler:" validator:activeContext devices:remoteSecretValidator presentingViewController:devices performingAccountRecovery:v9 delegate:v10 offeringRemoteApproval:self canShowRPD:v15 isADPEnabled:v7 selectedDevice:v16 isNaturalUIEnabled:v21 completionHandler:?];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __79__CDPUIController__presentSwiftUIRemoteSecretPromptWithDevice_didSelectDevice___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_storeStrong((*(a1 + 32) + 48), a2);
  if (v4)
  {
    [WeakRetained remoteSecretEntryDidRequestDisableUserInteraction];
    v6 = [*(*(a1 + 32) + 48) navigationItem];
    [v6 setAccessibilityIdentifier:@"remote-secret-entry-view"];

    if (*(a1 + 56))
    {
      [WeakRetained[7] pushViewController:v4 animated:1];
      [WeakRetained sendRemoteSecretInputEventWithContext:WeakRetained[10] device:*(a1 + 40)];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __79__CDPUIController__presentSwiftUIRemoteSecretPromptWithDevice_didSelectDevice___block_invoke_211;
      v8[3] = &unk_278E2B2D0;
      v9 = WeakRetained;
      v10 = *(a1 + 40);
      [v9 _presentRootController:v4 completion:v8];
    }
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__CDPUIController__presentSwiftUIRemoteSecretPromptWithDevice_didSelectDevice___block_invoke_cold_1();
    }
  }
}

- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v29 = a6;
  v13 = [v12 firstObject];
  objc_storeStrong(&self->_activeContext, a3);
  objc_storeStrong(&self->_remoteSecretValidator, a6);
  objc_storeStrong(&self->_devices, a4);
  self->_offeringRemoteApproval = a5;
  if (!self->_recoveryFlowContext)
  {
    v14 = objc_alloc_init(MEMORY[0x277CFD530]);
    if (!v11)
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [CDPUIController cdpContext:promptForRemoteSecretWithDevices:offeringRemoteApproval:validator:];
      }
    }

    [v14 setContext:v11];
    [v14 setIsWalrusEnabled:self->_isWalrusEnabled];
    [v14 setHasViableICSC:{objc_msgSend(v12, "count") != 0}];
    [v14 setRpdProbationDuration:self->_rpdProbationDuration];
    recoveryFlowContext = self->_recoveryFlowContext;
    self->_recoveryFlowContext = v14;
  }

  if (!self->_ledger)
  {
    v28 = objc_alloc(MEMORY[0x277CFDAB0]);
    v27 = [v29 supportedEscapeOfferMask];
    v17 = self->_recoveryFlowContext;
    v18 = [MEMORY[0x277CFD4F8] sharedInstance];
    v19 = v12;
    v20 = [v18 hasLocalSecret];
    v21 = [MEMORY[0x277CFD480] sharedInstance];
    v22 = [MEMORY[0x277CFD560] isVirtualMachine];
    v23 = [v11 isICDPEnabledFromNetwork];
    v24 = v20;
    v12 = v19;
    v25 = [v28 initWithExpectedEscapeOffers:v27 recoveryFlowContext:v17 deviceHasPasscode:v24 probationChecker:v21 deviceIsVM:v22 isICDPEnabled:v23];
    ledger = self->_ledger;
    self->_ledger = v25;
  }

  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled] && -[NSArray count](self->_devices, "count"))
  {
    [(CDPUIController *)self _presentSwiftUIRemoteSecretPromptWithDevice:v13 didSelectDevice:0];
  }

  else
  {
    [(CDPUIController *)self _presentRemoteSecretControllerWithNewestDevice:v13];
    [(CDPUIController *)self sendRemoteSecretInputEventWithContext:v11 device:v13];
  }
}

- (void)sendRemoteSecretInputEventWithContext:(id)a3 device:(id)a4
{
  v5 = [(CDPUIController *)self _makeRemoteSecretInputEventWithContext:a3 device:a4];
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v4 sendEvent:v5];
}

- (id)_makeRemoteSecretInputEventWithContext:(id)a3 device:(id)a4
{
  v5 = MEMORY[0x277CE44D8];
  v6 = *MEMORY[0x277CFD820];
  v7 = *MEMORY[0x277CFD930];
  v8 = a4;
  v9 = [v5 analyticsEventWithContext:a3 eventName:v6 category:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "remainingAttempts")}];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFD808]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "hasNumericSecret")}];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CFD748]];

  v12 = [v8 numericSecretLength];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD788]];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v8 isCurrentDevice];

  v15 = [v13 numberWithBool:v14];
  [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD758]];

  return v9;
}

- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  self->_isWalrusEnabled = [v8 isWalrusEnabled];
  [v8 rpdProbationDuration];
  self->_rpdProbationDuration = v11;
  recoveryFlowContext = self->_recoveryFlowContext;
  self->_recoveryFlowContext = v8;
  v13 = v8;

  v15 = [v13 context];
  v14 = [v13 hasPeersForRemoteApproval];

  [(CDPUIController *)self cdpContext:v15 promptForRemoteSecretWithDevices:v10 offeringRemoteApproval:v14 validator:v9];
}

- (void)cdpContext:(id)a3 promptForBeneficiaryAccessKeyWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CDPUIInheritanceUIProviderImpl alloc];
  v9 = [(CDPUIBaseController *)self presentingViewController];
  v10 = [(CDPUIInheritanceUIProviderImpl *)v8 initWithPresentingViewController:v9];
  inheritanceUIProvider = self->_inheritanceUIProvider;
  self->_inheritanceUIProvider = v10;

  v12 = objc_alloc(MEMORY[0x277CF0260]);
  v13 = [v6 beneficiaryIdentifier];
  v14 = [v12 initWithBeneficiairyIdentifier:v13];

  v15 = [v6 beneficiaryWrappedKeyData];
  [v14 setWrappedKeyData:v15];

  objc_initWeak(&location, self);
  v16 = self->_inheritanceUIProvider;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__CDPUIController_cdpContext_promptForBeneficiaryAccessKeyWithCompletion___block_invoke;
  v18[3] = &unk_278E2B320;
  objc_copyWeak(&v20, &location);
  v17 = v7;
  v19 = v17;
  [(CDPUIInheritanceUIProvider *)v16 promptForAccessCodeForAccessKey:v14 completion:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __74__CDPUIController_cdpContext_promptForBeneficiaryAccessKeyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 15);
    *(WeakRetained + 15) = 0;

    (*(*(a1 + 32) + 16))();
  }
}

- (id)_remoteSecretControllerForDevice:(id)a3
{
  v4 = a3;
  v5 = [[CDPRemoteSecretEntryViewController alloc] initWithDevice:v4 validator:self->_remoteSecretValidator delegate:self];

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_285826188 target:0 set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setEditPaneClass:objc_opt_class()];
  [v6 setProperty:self forKey:*MEMORY[0x277D401B8]];
  [(DevicePINController *)v5 setSpecifier:v6];

  return v5;
}

- (void)_presentRemoteSecretControllerWithNewestDevice:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  remoteSecretValidator = self->_remoteSecretValidator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CDPUIController__presentRemoteSecretControllerWithNewestDevice___block_invoke;
  v7[3] = &unk_278E2B348;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v8 = v6;
  v9 = self;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __66__CDPUIController__presentRemoteSecretControllerWithNewestDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[19])
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __66__CDPUIController__presentRemoteSecretControllerWithNewestDevice___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    if (*(a1 + 32))
    {
      v14 = [v5 _remoteSecretControllerForNewestDevice:?];
      v15 = [v5 _escapeOfferForDevice:*(a1 + 32) withMask:a2];
      [v14 setEscapeOffer:v15];
      [v5 _presentRootController:v14 completion:0];

LABEL_19:
      goto LABEL_20;
    }

    if ((a2 & 0x80) != 0)
    {
      v14 = [v5 _piggybackingViewControllerWithSupportedEscapeOfferMask:a2];
      [v5 _presentRootController:v14 completion:0];
      v18 = v5[19];
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = 128;
    }

    else if ((a2 & 0x20) != 0)
    {
      v14 = [v5 recoveryKeyEntryControllerForCircleJoinWithCancel:1 supportedEscapeOfferMask:a2];
      [v5 _presentRootController:v14 completion:0];
      v18 = v5[19];
      v19 = 32;
    }

    else
    {
      if ((a2 & 0x40) == 0)
      {
        v16 = _CDPLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __66__CDPUIController__presentRemoteSecretControllerWithNewestDevice___block_invoke_cold_2();
        }

        v17 = *(*(a1 + 40) + 24);
        v14 = _CDPStateError();
        [v17 cancelValidationWithError:v14];
        goto LABEL_19;
      }

      v14 = [v5 _custodianAskHelpViewControllerWithSupportedEscapeOfferMask:a2];
      [v5 _presentRootController:v14 completion:0];
      v18 = v5[19];
      v19 = 64;
    }

    [v18 insert:v19];
    goto LABEL_19;
  }

LABEL_20:
}

- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D750F8];
  v7 = CDPLocalizedString();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__CDPUIController_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke;
  v16[3] = &unk_278E2B370;
  v8 = v5;
  v17 = v8;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v16];

  v10 = MEMORY[0x277D75110];
  v11 = CDPLocalizedString();
  v12 = CDPLocalizedString();
  v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  [v13 addAction:v9];
  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIController cdpContext:? promptForAdoptionOfMultipleICSC:?];
  }

  v15 = [(CDPUIBaseController *)self presentingViewController];
  [v15 presentViewController:v13 animated:1 completion:0];
}

uint64_t __62__CDPUIController_cdpContext_promptForAdoptionOfMultipleICSC___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)approveFromAnotherDevice:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v3;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Trying to approve from another device, with cancel support: %{BOOL}d", buf, 8u);
  }

  v6 = [CDPWaitingApprovalViewController alloc];
  v7 = [(CDPUIController *)self _escapeOfferForMultiApprovalWithMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
  v8 = [(CDPWaitingApprovalViewController *)v6 initWithEscapeOffer:v7];

  if (v3)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelRemoteApprovalTapped_];
    v10 = [(CDPWaitingApprovalViewController *)v8 navigationItem];
    [v10 setLeftBarButtonItem:v9];
  }

  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Starting remote approval flow", buf, 2u);
  }

  [(UINavigationController *)self->_navController pushViewController:v8 animated:1];
  [(CDPUIController *)self sendRemoteApprovalStartedBreadCrumbEventWithContext:self->_activeContext];
  remoteSecretValidator = self->_remoteSecretValidator;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__CDPUIController_approveFromAnotherDevice___block_invoke;
  v14[3] = &unk_278E2B398;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator approveFromAnotherDeviceWithCompletion:v14];
}

uint64_t __44__CDPUIController_approveFromAnotherDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  result = [*(a1 + 32) sendRemoteApprovalCompletedEventWithContext:*(*(a1 + 32) + 80) didApprove:a2 error:a3];
  if (v3)
  {
    [*(a1 + 40) remoteApprovalSucceeded];
    v6 = *(a1 + 32);

    return [v6 _dismissPresentedViewControllerCompletion:0];
  }

  return result;
}

- (void)devicePicker:(id)a3 didSelectDevice:(id)a4
{
  v7 = a4;
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    [(CDPUIController *)self _presentSwiftUIRemoteSecretPromptWithDevice:v7 didSelectDevice:1];
  }

  else
  {
    v5 = [(CDPUIController *)self _remoteSecretControllerForDevice:v7];
    [v5 setHidesCancelButton:1];
    v6 = [(CDPUIController *)self _escapeOfferForDevice:v7 withMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
    [v5 setEscapeOffer:v6];

    [(UINavigationController *)self->_navController pushViewController:v5 animated:1];
  }
}

- (id)devicePicker:(id)a3 escapeOffersForDevices:(id)a4
{
  remoteSecretValidator = self->_remoteSecretValidator;
  v7 = a4;
  v8 = a3;
  v9 = [(CDPUIController *)self _escapeOffersForgotAllWithMask:[(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMask] presenter:v8 devices:v7];

  return v9;
}

- (void)remoteSecretEntry:(id)a3 didAcceptValidRemoteSecretForDevice:(id)a4
{
  if (![(CDPUIController *)self forceInlinePresentation:a3])
  {

    [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
  }
}

- (void)cancelledRemoteSecretEntry:(id)a3
{
  if (self->_rootViewController == a3)
  {
    [(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator cancelApproveFromAnotherDevice];
    if (![(CDPUIController *)self forceInlinePresentation])
    {
      [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
    }

    remoteSecretValidator = self->_remoteSecretValidator;
    v6 = _CDPStateError();
    [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator cancelValidationWithError:v6];
  }
}

- (void)performRecoveryKeyRecovery:(id)a3
{
  v4 = a3;
  remoteSecretValidator = self->_remoteSecretValidator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CDPUIController_performRecoveryKeyRecovery___block_invoke;
  v7[3] = &unk_278E2B3E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v7];
}

void __46__CDPUIController_performRecoveryKeyRecovery___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CDPUIController_performRecoveryKeyRecovery___block_invoke_2;
  block[3] = &unk_278E2B3C0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__CDPUIController_performRecoveryKeyRecovery___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryKeyEntryControllerForCircleJoinWithCancel:1 supportedEscapeOfferMask:*(a1 + 48)];
  [*(a1 + 32) _replaceViewController:*(a1 + 40) withNewController:v2];
  [*(*(a1 + 32) + 152) insert:32];
}

- (void)performCustodianRecovery:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "User elected to start Custodian Flow, Showing OS picker", buf, 2u);
  }

  remoteSecretValidator = self->_remoteSecretValidator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CDPUIController_performCustodianRecovery___block_invoke;
  v8[3] = &unk_278E2B3E8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v8];
}

void __44__CDPUIController_performCustodianRecovery___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CDPUIController_performCustodianRecovery___block_invoke_2;
  block[3] = &unk_278E2B3C0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__CDPUIController_performCustodianRecovery___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CFD4B0]) initWithContext:*(*(a1 + 32) + 80)];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CDPUIController_performCustodianRecovery___block_invoke_3;
  v5[3] = &unk_278E2B410;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 custodianOSSelectionViewControllerWithCustodianController:v2 supportedEscapeOfferMask:v4 completion:v5];
}

uint64_t __44__CDPUIController_performCustodianRecovery___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _replaceViewController:*(result + 40) withNewController:a2];
    v3 = *(*(v2 + 32) + 152);

    return [v3 insert:64];
  }

  return result;
}

- (void)performPiggybackingRecovery:(id)a3
{
  v4 = a3;
  remoteSecretValidator = self->_remoteSecretValidator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CDPUIController_performPiggybackingRecovery___block_invoke;
  v7[3] = &unk_278E2B3E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v7];
}

void __47__CDPUIController_performPiggybackingRecovery___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CDPUIController_performPiggybackingRecovery___block_invoke_2;
  block[3] = &unk_278E2B3C0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__CDPUIController_performPiggybackingRecovery___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _piggybackingViewControllerWithSupportedEscapeOfferMask:*(a1 + 48)];
  [*(a1 + 32) _replaceViewController:*(a1 + 40) withNewController:v2];
  [*(*(a1 + 32) + 152) insert:128];
}

- (void)performAccountReset:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CDPUIController_performAccountReset___block_invoke;
  v3[3] = &unk_278E2AF90;
  v3[4] = self;
  [(CDPUIController *)self dismissRecoveryFlow:a3 reason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v3];
}

uint64_t __39__CDPUIController_performAccountReset___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "UI dismissed, resetting account state", v14, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  if (!v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __39__CDPUIController_performAccountReset___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 152);
  }

  return [*(v3 + 24) resetAccountCDPStateWithEscapeOptionsOffered:{objc_msgSend(v4, "escapeOffersPresented")}];
}

- (void)finishValidation:(id)a3 withError:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CDPUIController_finishValidation_withError___block_invoke;
  v8[3] = &unk_278E2B2D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CDPUIController *)self dismissRecoveryFlow:a3 reason:@"com.apple.CoreCDPUI.CDPEnrollmentCancelled" completion:v8];
}

uint64_t __46__CDPUIController_finishValidation_withError___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "UI dismissed, cancelling validation", v4, 2u);
  }

  return [*(*(a1 + 32) + 24) cancelValidationWithError:*(a1 + 40)];
}

- (void)remoteSecretEntry:(id)a3 depletedRemainingAttemptsForDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSArray *)self->_devices aaf_arrayByRemovingObject:v7];
  devices = self->_devices;
  self->_devices = v8;

  objc_initWeak(&location, self);
  remoteSecretValidator = self->_remoteSecretValidator;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__CDPUIController_remoteSecretEntry_depletedRemainingAttemptsForDevice___block_invoke;
  v13[3] = &unk_278E2B348;
  objc_copyWeak(&v16, &location);
  v11 = v7;
  v14 = v11;
  v12 = v6;
  v15 = v12;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMaskCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__CDPUIController_remoteSecretEntry_depletedRemainingAttemptsForDevice___block_invoke(id *a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__CDPUIController_remoteSecretEntry_depletedRemainingAttemptsForDevice___block_invoke_2;
  v4[3] = &unk_278E2B438;
  objc_copyWeak(v7, a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  v7[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(v7);
}

void __72__CDPUIController_remoteSecretEntry_depletedRemainingAttemptsForDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleDepletedRemainingAttemptsForDevice:*(a1 + 32) fromViewController:*(a1 + 40) mask:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_handleDepletedRemainingAttemptsForDevice:(id)a3 fromViewController:(id)a4 mask:(unint64_t)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(NSArray *)self->_devices count])
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v10, OS_LOG_TYPE_DEFAULT, "Device limit reached, but other devices are available, show device selection screen", buf, 2u);
    }

    v11 = [(CDPUIController *)self _deviceLimitOfferDeviceSelectionForDevice:v8 fromViewController:v9];
    goto LABEL_11;
  }

  if ((a5 & 0x80) != 0)
  {
    v11 = [(CDPUIController *)self _deviceLimitOfferPiggybackingForDevice:v8 supportedEscapeOfferMask:a5];
    goto LABEL_11;
  }

  if ((a5 & 0x20) != 0)
  {
    v13 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
    if ((a5 & 0x40) != 0 && v13)
    {
      v11 = [(CDPUIController *)self _deviceLimitOfferRecoveryKeyAndCustodianForDevice:v8 supportedEscapeOfferMask:a5];
    }

    else
    {
      v11 = [(CDPUIController *)self _deviceLimitOfferRecoveryKeyForDevice:v8 supportedEscapeOfferMask:a5];
    }

    goto LABEL_11;
  }

  if ((a5 & 0x40) != 0)
  {
    v11 = [(CDPUIController *)self _deviceLimitOfferCustodianForDevice:v8 supportedEscapeOfferMask:a5];
    goto LABEL_11;
  }

  if ((a5 & 8) == 0)
  {
    v11 = [(CDPUIController *)self _deviceLimitOfferSkipForDevice:v8];
LABEL_11:
    v12 = v11;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v15 = [v14 addSecretType:{objc_msgSend(v8, "localSecretType")}];
  v16 = [v15 localizedString];

  v17 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v18 = MEMORY[0x277CCACA8];
  if (v17)
  {
    v19 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_RPD";
  }

  else
  {
    v19 = @"REMOTE_SECRET_RECOVERY_HARD_LIMIT_LAST_DEVICE_RESET";
  }

  v20 = [MEMORY[0x277CFD508] builderForKey:v19];
  v21 = [v20 addSecretType:{objc_msgSend(v8, "localSecretType")}];
  v22 = [v21 localizedString];
  v23 = [v8 localizedName];
  v24 = [v18 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v23];

  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v12 = [(CDPUIController *)self _iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle:v16 message:v24 skipButtonTitle:&stru_285826188 supportedEscapeOfferMask:a5 withDevice:v8];
    v25 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ALERT_BUTTON_TITLE_DELETE_ICLOUD_DATA" inTable:@"Localizable-Walrus"];
    v26 = [v25 localizedString];
    v27 = [v12 escapeOptions];
    v28 = [v27 firstObject];
    [v28 setTitle:v26];

    if ([MEMORY[0x277CFD560] shouldCentralizeRPDFlow])
    {
      ledger = self->_ledger;
      if (!ledger)
      {
        v30 = _CDPLogSystem();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          [(CDPUIController *)v30 _handleDepletedRemainingAttemptsForDevice:v31 fromViewController:v32 mask:v33, v34, v35, v36, v37];
        }

        ledger = self->_ledger;
      }

      if (([(CDPRPDLedger *)ledger canOfferRPD]& 1) == 0)
      {
        v38 = _CDPLogSystem();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [(CDPRPDLedger *)self->_ledger rpdBlockingError];
          *buf = 138412290;
          v43 = v39;
          _os_log_impl(&dword_2451DB000, v38, OS_LOG_TYPE_DEFAULT, "Cannot offer RPD. Reason: %@", buf, 0xCu);
        }

        v40 = [(CDPUIController *)self _deviceLimitOfferSkipForDevice:v8];

        v12 = v40;
      }
    }
  }

  else
  {
    v41 = CDPLocalizedString();
    v12 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v16 message:v24 skipButtonTitle:v41 supportedEscapeOfferMask:a5];
  }

LABEL_12:
  [v12 setPresentingViewController:self->_navController];
  [v12 handleEscapeAction:self];
}

- (void)_beginDevicePickerFlowFromEntryController:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Trying another device", buf, 2u);
  }

  v6 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_activeContext eventName:*MEMORY[0x277CFD6B0] category:*MEMORY[0x277CFD930]];
  v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v7 sendEvent:v6];

  if (self->_rootViewController == v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__CDPUIController__beginDevicePickerFlowFromEntryController___block_invoke;
    v9[3] = &unk_278E2B460;
    v9[4] = self;
    v10 = v4;
    [(CDPUIController *)self _setupDevicePickerController:v9];
  }

  else
  {
    [(CDPDevicePickerViewController *)self->_devicePicker setDevices:self->_devices];
    v8 = [(UINavigationController *)self->_navController popViewControllerAnimated:1];
  }
}

- (void)_replaceViewController:(id)a3 withNewController:(id)a4
{
  v13 = a4;
  navController = self->_navController;
  v7 = a3;
  v8 = [(UINavigationController *)navController viewControllers];
  v9 = [v8 mutableCopy];

  [v9 replaceObjectAtIndex:objc_msgSend(v9 withObject:{"indexOfObject:", v7), v13}];
  rootViewController = self->_rootViewController;

  if (rootViewController == v7)
  {
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped_];
    v12 = [v13 navigationItem];
    [v12 setLeftBarButtonItem:v11];
  }

  [(UINavigationController *)self->_navController setViewControllers:v9 animated:1];
}

- (id)_escapeOfferForDevice:(id)a3 withMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v9 = [v6 modelClass];
  v10 = [v8 addDeviceClass:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v12 = [v11 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setEscapeOfferName:v12];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_TITLE"];
  v14 = [v13 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v15 = [v14 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v15];

  v16 = [(CDPUIController *)self _escapeOfferMessageForDevice:v6 withMask:a4];
  [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v16];

  if ([(CDPUIController *)self _isSOSCompatibilityCFUForSingleICSC])
  {
    v17 = CDPLocalizedString();
    [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v17];

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOS_SINGLE_ICSC_ESCAPE_OFFER_MESSAGE"];
    v20 = [v19 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v21 = [v20 localizedString];
    v22 = [v6 localizedName];
    v23 = [v18 stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v22];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v23];
  }

  if ((a4 & 2) != 0 && [(NSArray *)self->_devices count]>= 2)
  {
    v24 = [(CDPUIController *)self _chooseDeviceEscapeOption];
LABEL_16:
    v33 = v24;
    [v24 setStyle:4];
LABEL_17:
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v33];

    goto LABEL_18;
  }

  if ((a4 & 0x80) != 0)
  {
    v24 = [(CDPUIController *)self _beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask:a4];
    goto LABEL_16;
  }

  if ((a4 & 0x20) != 0)
  {
    v24 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a4];
    goto LABEL_16;
  }

  if ((a4 & 0x40) != 0)
  {
    v24 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a4];
    goto LABEL_16;
  }

  if ((a4 & 4) != 0 && self->_offeringRemoteApproval)
  {
    v25 = [(NSArray *)self->_devices count];
    v26 = MEMORY[0x277CCACA8];
    if (v25 == 1)
    {
      v27 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOS_SINGLE_ICSC_ESCAPE_OFFER_MESSAGE_REMOTE_APPROVAL"];
      v28 = [v27 addSecretType:{objc_msgSend(v6, "localSecretType")}];
      v29 = [v28 localizedString];
      v30 = [v6 localizedName];
      v31 = [v26 stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v30];
      [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v31];

      v32 = [(CDPUIController *)self _remoteApprovalEscapeOption];
      [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v32];
    }

    else
    {
      v52 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOS_MULTI_ICSC_ESCAPE_OFFER_MESSAGE_CHOOSE_DEVICE"];
      v53 = [v52 addSecretType:{objc_msgSend(v6, "localSecretType")}];
      v54 = [v53 localizedString];
      v55 = [v6 localizedName];
      v56 = [v26 stringWithValidatedFormat:v54 validFormatSpecifiers:@"%@" error:0, v55];
      [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v56];

      v32 = _CDPLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [CDPUIController _escapeOfferForDevice:withMask:];
      }
    }

    v33 = +[CDPEscapeOption cancelOption];
    goto LABEL_17;
  }

  if ((a4 & 0x18) != 0)
  {
    v40 = [(NSArray *)self->_devices prevailingLocalSecretType];
    v41 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_TITLE"];
    v42 = [v41 addSecretType:v40];
    v58 = [v42 localizedString];

    v43 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_MESSAGE"];
    v44 = [v43 addSecretType:v40];
    v57 = [v44 localizedString];

    v45 = CDPLocalizedString();
    v46 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v58 message:v57 skipButtonTitle:v45 supportedEscapeOfferMask:a4];

    v47 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
    v48 = [v6 modelClass];
    v49 = [v47 addDeviceClass:v48];
    v50 = [v49 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v51 = [v50 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v46 setEscapeOfferName:v51];

    v7 = v46;
  }

LABEL_18:
  v34 = [(CDPRemoteValidationEscapeOffer *)v7 escapeOptions];
  v35 = [v34 count];

  if (v35)
  {
    if (self->_isWalrusEnabled)
    {
LABEL_24:
      v38 = v7;
      goto LABEL_25;
    }

    v36 = [(CDPContext *)self->_activeContext telemetryDeviceSessionID];
    [(CDPRemoteValidationEscapeOffer *)v7 setDeviceSessionID:v36];

    v37 = [(CDPContext *)self->_activeContext telemetryFlowID];
    [(CDPRemoteValidationEscapeOffer *)v7 setFlowID:v37];
LABEL_23:

    goto LABEL_24;
  }

  if ([(CDPUIController *)self _isSOSCompatibilityCFUForSingleICSC])
  {
    v37 = +[CDPEscapeOption okOption];
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v37];
    goto LABEL_23;
  }

  v38 = 0;
LABEL_25:

  return v38;
}

- (void)sendEscapeOfferSelectedEvent:(id)a3
{
  v3 = MEMORY[0x277CE44D8];
  activeContext = self->_activeContext;
  v5 = *MEMORY[0x277CFD6E0];
  v6 = *MEMORY[0x277CFD930];
  v7 = a3;
  v9 = [v3 analyticsEventWithContext:activeContext eventName:v5 category:v6];
  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  v8 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v8 sendEvent:v9];
}

- (id)_chooseDeviceEscapeOption
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(CDPEscapeOption);
  v3 = CDPLocalizedString();
  [(CDPEscapeOption *)v2 setTitle:v3];

  [(CDPEscapeOption *)v2 setTitleLocalizationKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CHOOSE_DEVICE"];
  [(CDPEscapeOption *)v2 setTitleTelemetryKey:*MEMORY[0x277CFD990]];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __44__CDPUIController__chooseDeviceEscapeOption__block_invoke;
  v8 = &unk_278E2B4B0;
  objc_copyWeak(&v9, &location);
  [(CDPEscapeOption *)v2 setEscapeAction:&v5];
  [(CDPEscapeOption *)v2 setStyle:3, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v2;
}

void __44__CDPUIController__chooseDeviceEscapeOption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD990]];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __44__CDPUIController__chooseDeviceEscapeOption__block_invoke_2;
    v3[3] = &unk_278E2B488;
    v3[4] = v2;
    [v2 _setupDevicePickerController:v3];
  }
}

- (id)_escapeOfferMessageForDevice:(id)a3 withMask:(unint64_t)a4
{
  v5 = a3;
  v6 = [(NSArray *)self->_devices prevailingLocalSecretType];
  if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{-[CDPContext type](self->_activeContext, "type")}])
  {
    v7 = objc_alloc_init(MEMORY[0x277CFD568]);
    v25 = 0;
    v8 = [v7 walrusStatus:&v25];
    v9 = v25;
    v10 = v9;
    if (v8 == 1)
    {
      v11 = [(CDPContext *)self->_activeContext isAttemptingBackupRestore];
      v12 = MEMORY[0x277CCACA8];
      if (v11)
      {
        v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_WALRUS_BUDDY_BACKUP" inTable:@"Localizable-Walrus"];
        v14 = [v13 addSecretType:{objc_msgSend(v5, "localSecretType")}];
        v15 = [v5 modelClass];
        v16 = [v14 addDeviceClass:v15];
        v17 = [v16 localizedString];
        v18 = [v5 localizedName];
        v19 = [v12 stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, v18];
      }

      else
      {
        v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_WALRUS_SIGNIN" inTable:@"Localizable-Walrus"];
        v14 = [v13 addSecretType:{objc_msgSend(v5, "localSecretType")}];
        v15 = [v14 localizedString];
        v16 = [v5 localizedName];
        v19 = [v12 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v16];
      }

      goto LABEL_14;
    }
  }

  if ([(NSArray *)self->_devices count]== 1)
  {
    v20 = [MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{-[CDPContext type](self->_activeContext, "type")}];
    v21 = MEMORY[0x277CCACA8];
    if (v20)
    {
      v22 = @"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_RESET";
    }

    else
    {
      v22 = @"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE";
    }

    v7 = [MEMORY[0x277CFD508] builderForKey:v22];
    v10 = [v7 addSecretType:{objc_msgSend(v5, "localSecretType")}];
    v13 = [v10 localizedString];
    v14 = [v5 localizedName];
    v19 = [v21 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];
    goto LABEL_15;
  }

  v23 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_ANOTHER_DEVICE"];
  v10 = [v7 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v13 = [v10 addSecretType:v6];
  v14 = [v13 localizedString];
  v15 = [v5 localizedName];
  v19 = [v23 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];
LABEL_14:

LABEL_15:

  return v19;
}

- (id)_tryAgainLaterEscapeOption
{
  v3 = objc_alloc_init(CDPEscapeOption);
  if (([MEMORY[0x277CFD560] isICSCHarmonizationEnabled] & 1) == 0)
  {
    [(CDPEscapeOption *)v3 setStyle:1];
  }

  v4 = CDPLocalizedString();
  [(CDPEscapeOption *)v3 setTitle:v4];

  [(CDPEscapeOption *)v3 setTitleLocalizationKey:@"REMOTE_SECRET_RECOVERY_LIMIT_TRY_AGAIN_LATER"];
  [(CDPEscapeOption *)v3 setTitleTelemetryKey:*MEMORY[0x277CFDA48]];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CDPUIController__tryAgainLaterEscapeOption__block_invoke;
  v6[3] = &unk_278E2B4D8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [(CDPEscapeOption *)v3 setEscapeAction:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v3;
}

void __45__CDPUIController__tryAgainLaterEscapeOption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained tryAgainLaterTapped:*(a1 + 32)];
}

- (id)_deviceLimitOfferDeviceSelectionForDevice:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v9 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v10 = [v9 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v11 = [v10 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v8 setTitle:v11];

  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v12 = [(CDPContext *)self->_activeContext idmsRecovery];
    v13 = MEMORY[0x277CCACA8];
    v14 = MEMORY[0x277CFD508];
    if (v12)
    {
      v15 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
    }

    else
    {
      v15 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
    }
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = MEMORY[0x277CFD508];
    v15 = @"REMOTE_SECRET_RECOVERY_HARD_LIMIT_CHOOSE_DEVICE";
  }

  v16 = [v14 builderForKey:v15];
  v17 = [v16 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v18 = [v17 localizedString];
  v19 = [v6 localizedName];
  v20 = [v13 stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, v19];
  [(CDPRemoteValidationEscapeOffer *)v8 setMessage:v20];

  objc_initWeak(&location, self);
  v21 = objc_alloc_init(CDPEscapeOption);
  v22 = CDPLocalizedString();
  [(CDPEscapeOption *)v21 setTitle:v22];

  [(CDPEscapeOption *)v21 setStyle:3];
  [(CDPEscapeOption *)v21 setTitleTelemetryKey:*MEMORY[0x277CFD990]];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__CDPUIController__deviceLimitOfferDeviceSelectionForDevice_fromViewController___block_invoke;
  v26[3] = &unk_278E2B4D8;
  objc_copyWeak(&v28, &location);
  v23 = v7;
  v27 = v23;
  [(CDPEscapeOption *)v21 setEscapeAction:v26];
  [(CDPRemoteValidationEscapeOffer *)v8 addEscapeOptionsObject:v21];
  v24 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v8 addEscapeOptionsObject:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v8;
}

void __80__CDPUIController__deviceLimitOfferDeviceSelectionForDevice_fromViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginDevicePickerFlowFromEntryController:*(a1 + 32)];
}

- (id)_deviceLimitOfferPiggybackingForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v9 = [v8 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v10 = [v9 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v10];

  v11 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v12 = MEMORY[0x277CCACA8];
  if (v11)
  {
    v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_TRUSTED_DEVICES"];
    v14 = [v13 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v15 = [v14 localizedString];
    v16 = [v6 localizedName];
    v17 = [v12 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v16];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v17];
  }

  else
  {
    v13 = [MEMORY[0x277CFD508] builderForKey:@"PIGGYBACKING_RECOVERY_HELP_PROMPT_MESSAGE"];
    v14 = [v13 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v15 = [v14 localizedString];
    v16 = [v6 localizedName];
    v17 = [v6 localizedName];
    v18 = [v12 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v16, v17];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v18];
  }

  v19 = [(CDPUIController *)self _beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask:a4];
  [v19 setStyle:3];
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v20 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_PIGGYBACKING"];
    v21 = [v20 localizedString];
    [v19 setTitle:v21];

    [v19 setTitleLocalizationKey:@"REMOTE_SECRET_ENTRY_ALERT_PIGGYBACKING"];
  }

  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v19];
  v22 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v22];

  return v7;
}

- (id)_deviceLimitOfferRecoveryKeyForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v9 = [v8 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v10 = [v9 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v10];

  v11 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a4];
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v12 = [(CDPContext *)self->_activeContext idmsRecovery];
    v13 = MEMORY[0x277CCACA8];
    if (v12)
    {
      v14 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
    }

    else
    {
      v14 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
    }

    v15 = [MEMORY[0x277CFD508] builderForKey:v14];
    v16 = [v15 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v17 = [v16 localizedString];
    v18 = [v6 localizedName];
    v19 = [v13 stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, v18];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v19];

    [v11 setStyle:3];
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_RECOVERY_HARD_LIMIT_LAST_DEVICE_RECOVERY_KEY"];
    v22 = [v21 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v23 = [v22 localizedString];
    v24 = [v6 localizedName];
    v25 = [v20 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, v24];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v25];
  }

  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v11];
  v26 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v26];

  return v7;
}

- (id)_deviceLimitOfferCustodianForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v9 = [v8 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v10 = [v9 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v10];

  v11 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a4];
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v12 = [(CDPContext *)self->_activeContext idmsRecovery];
    v13 = MEMORY[0x277CCACA8];
    if (v12)
    {
      v14 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
    }

    else
    {
      v14 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
    }

    v15 = [MEMORY[0x277CFD508] builderForKey:v14];
    v16 = [v15 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v17 = [v16 localizedString];
    v18 = [v6 localizedName];
    v19 = [v13 stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, v18];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v19];

    [v11 setStyle:3];
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_RECOVERY_HARD_LIMIT_LAST_DEVICE_CUSTODIAN"];
    v22 = [v21 addSecretType:{objc_msgSend(v6, "localSecretType")}];
    v23 = [v22 localizedString];
    v24 = [v6 localizedName];
    v25 = [v20 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, v24];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v25];
  }

  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v11];
  v26 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v26];

  return v7;
}

- (id)_deviceLimitOfferRecoveryKeyAndCustodianForDevice:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v9 = [v8 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v10 = [v9 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v10];

  v11 = [(CDPContext *)self->_activeContext idmsRecovery];
  v12 = MEMORY[0x277CCACA8];
  if (v11)
  {
    v13 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  else
  {
    v13 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  v14 = [MEMORY[0x277CFD508] builderForKey:v13];
  v15 = [v14 addSecretType:{objc_msgSend(v6, "localSecretType")}];
  v16 = [v15 localizedString];
  v17 = [v6 localizedName];
  v18 = [v12 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v17];
  [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v18];

  v19 = [(CDPUIController *)self _recoveryMethodEscapeOptionWithSupportedEscapeOfferMask:a4];
  [v19 setStyle:3];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v19];
  v20 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v20];

  return v7;
}

- (id)_deviceLimitOfferSkipForDevice:(id)a3
{
  v4 = a3;
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
  v7 = [v6 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v8 = [v7 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setTitle:v8];

  v9 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  v10 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
    v13 = [v12 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v14 = [v13 localizedString];
    v15 = [v4 localizedName];
    v16 = [v11 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];
    [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v16];

    [v9 setStyle:3];
  }

  else
  {
    v17 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_RECOVERY_HARD_LIMIT_LAST_DEVICE_SKIP"];
    v18 = [v17 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v19 = [v18 localizedString];
    v20 = [v4 localizedName];
    v21 = [v11 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v20];
    [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v21];
  }

  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__CDPUIController__deviceLimitOfferSkipForDevice___block_invoke;
  v23[3] = &unk_278E2B4B0;
  objc_copyWeak(&v24, &location);
  [v9 setEscapeAction:v23];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v9];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v5;
}

void __50__CDPUIController__deviceLimitOfferSkipForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tryAgainLaterTapped:WeakRetained];
}

- (id)_escapeOfferForMultiApprovalWithMask:(unint64_t)a3
{
  v5 = [(CDPUIController *)self _waitingForApprovalEscapeOffer];
  if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{-[CDPContext type](self->_activeContext, "type")}])
  {
    v6 = @"WAITING_APPROVAL_RESET_DIALOG_MESSAGE_REPAIR";
  }

  else
  {
    v6 = @"WAITING_APPROVAL_RESET_DIALOG_MESSAGE";
  }

  v7 = [MEMORY[0x277CFD508] builderForKey:v6];
  v8 = [(CDPUIController *)self _localDeviceClass];
  v9 = [v7 addDeviceClass:v8];
  v10 = [v9 localizedString];
  [v5 setMessage:v10];

  if ((a3 & 0x10) != 0)
  {
    v16 = [(CDPUIController *)self _enterSecretLaterEscapeOptionWithSecret:1];
    v17 = [MEMORY[0x277CFD508] builderForKey:@"WAITING_APPROVAL_RESET_DIALOG_BUTTON_LATER"];
    v18 = [v17 localizedString];
    [v16 setTitle:v18];

    [v16 setStyle:3];
    [v5 addEscapeOptionsObject:v16];

    if ((a3 & 8) == 0)
    {
LABEL_6:
      if ((a3 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_6;
  }

  v19 = [(NSArray *)self->_devices prevailingLocalSecretType];
  v20 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_TITLE"];
  v21 = [v20 addSecretType:v19];
  v22 = [v21 localizedString];

  v23 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_MESSAGE"];
  v24 = [v23 addSecretType:v19];
  v25 = [v24 localizedString];

  v26 = CDPLocalizedString();
  v27 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v22 message:v25 skipButtonTitle:v26 supportedEscapeOfferMask:a3];

  v5 = v27;
  if ((a3 & 0x40) != 0)
  {
LABEL_7:
    v11 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3];
    [v5 addEscapeOptionsObject:v11];
  }

LABEL_8:
  v12 = [v5 escapeOptions];
  v13 = [v12 count];

  if (v13)
  {
    v14 = +[CDPEscapeOption cancelOption];
    [v5 addEscapeOptionsObject:v14];

    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_escapeOfferForSingleApprovalWithMask:(unint64_t)a3
{
  if ((a3 & 8) != 0)
  {
    v6 = [(NSArray *)self->_devices prevailingLocalSecretType];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_TITLE"];
    v8 = [v7 addSecretType:v6];
    v9 = [v8 localizedString];

    v10 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_MESSAGE"];
    v11 = [v10 addSecretType:v6];
    v12 = [v11 localizedString];

    v13 = CDPLocalizedString();
    v4 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v9 message:v12 skipButtonTitle:v13 supportedEscapeOfferMask:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dismissAndResetAccountCDPState:(id)a3 localSecret:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__CDPUIController_dismissAndResetAccountCDPState_localSecret___block_invoke;
  v11[3] = &unk_278E2B500;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = self;
  [(CDPUIController *)v10 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v11];
}

uint64_t __62__CDPUIController_dismissAndResetAccountCDPState_localSecret___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 32) + 72) escapeOfferSelectedWithOption:*(a1 + 40)];
  }

  [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA18]];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5 = [*(v3 + 152) escapeOffersPresented];
  if (v2)
  {
    v6 = *(a1 + 48);

    return [v4 resetAccountCDPStateWithEscapeOptionsOffered:v5 andSetSecret:v6];
  }

  else
  {

    return [v4 resetAccountCDPStateWithEscapeOptionsOffered:v5];
  }
}

- (id)_beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(CDPEscapeOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_DIALOG"];
  v7 = [v6 localizedString];
  [(CDPEscapeOption *)v5 setTitle:v7];

  [(CDPEscapeOption *)v5 setTitleLocalizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_DIALOG"];
  [(CDPEscapeOption *)v5 setTitleTelemetryKey:*MEMORY[0x277CFD9B0]];
  [(CDPEscapeOption *)v5 setStyle:4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CDPUIController__beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke;
  v9[3] = &unk_278E2B528;
  objc_copyWeak(v10, &location);
  v9[4] = self;
  v10[1] = a3;
  [(CDPEscapeOption *)v5 setEscapeAction:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v5;
}

void __86__CDPUIController__beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User elected to start piggybacking flow", v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD9B0]];
    v4 = [*(a1 + 32) _piggybackingViewControllerWithSupportedEscapeOfferMask:*(a1 + 48)];
    [WeakRetained[7] pushViewController:v4 animated:1];
    v5 = WeakRetained[19];
    if (v5)
    {
      [v5 insert:128];
    }

    else
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __86__CDPUIController__beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

- (id)updateContextWithAuthResults:(id)a3
{
  v4 = MEMORY[0x277CFD4A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithAuthenticationResults:v5];

  [v6 set_alwaysCreateEscrowRecord:{-[CDPContext _alwaysCreateEscrowRecord](self->_activeContext, "_alwaysCreateEscrowRecord")}];
  [v6 setType:{-[CDPContext type](self->_activeContext, "type")}];
  [v6 setSosCompatibilityType:{-[CDPContext sosCompatibilityType](self->_activeContext, "sosCompatibilityType")}];
  [v6 setKeychainSyncSystem:{-[CDPContext keychainSyncSystem](self->_activeContext, "keychainSyncSystem")}];
  [v6 setIsSOSCFUFlow:{-[CDPContext isSOSCFUFlow](self->_activeContext, "isSOSCFUFlow")}];
  v7 = [(CDPContext *)self->_activeContext telemetryFlowID];
  [v6 setTelemetryFlowID:v7];

  v8 = [(CDPContext *)self->_activeContext telemetryDeviceSessionID];
  [v6 setTelemetryDeviceSessionID:v8];

  v9 = [(CDPContext *)self->_activeContext password];
  v10 = [(CDPContext *)self->_activeContext oldPassword];
  [v6 setNewPassword:v9 oldPassword:v10];

  v11 = [(CDPContext *)self->_activeContext cachedLocalSecret];
  [v6 setCachedLocalSecret:v11];

  [v6 setCachedLocalSecretType:{-[CDPContext cachedLocalSecretType](self->_activeContext, "cachedLocalSecretType")}];
  v12 = [(CDPContext *)self->_activeContext sharingChannel];
  [v6 setSharingChannel:v12];

  return v6;
}

- (void)piggybackingUserDidNotGetACode:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_DID_NOT_GET_CODE_MESSAGE"];
  v7 = [v6 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v7];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_DID_NOT_GET_CODE_TITLE"];
  v9 = [v8 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setTitle:v9];

  v10 = CDPLocalizedString();
  v11 = [(CDPUIController *)self _piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:a3 title:v10 localizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_RESEND_CODE_TO_MY_DEVICES_TITLE"];

  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v11];
  v12 = objc_alloc_init(CDPEscapeOption);
  v13 = CDPLocalizedString();
  [(CDPEscapeOption *)v12 setTitle:v13];

  [(CDPEscapeOption *)v12 setTitleLocalizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_CANT_GET_TO_MY_DEVICES_TITLE"];
  [(CDPEscapeOption *)v12 setStyle:4];
  [(CDPEscapeOption *)v12 setTitleTelemetryKey:*MEMORY[0x277CFD960]];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke;
  v20[3] = &unk_278E2B528;
  objc_copyWeak(v21, &location);
  v20[4] = self;
  v21[1] = a3;
  [(CDPEscapeOption *)v12 setEscapeAction:v20];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v12];
  v14 = +[CDPEscapeOption cancelOption];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v14];

  v15 = [(UINavigationController *)self->_navController topViewController];
  [(CDPRemoteValidationEscapeOffer *)v5 setPresentingViewController:v15];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke_2;
  v17[3] = &unk_278E2B2D0;
  v18 = v5;
  v19 = self;
  v16 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD960]];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) _piggybackingEscapeOfferCantGetToDevicesWithSupportedEscapeOffers:*(a1 + 48)];
  v5 = [*(*(a1 + 32) + 56) topViewController];
  [v4 setPresentingViewController:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke_384;
  v7[3] = &unk_278E2B2D0;
  v8 = v4;
  v9 = WeakRetained;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (id)_piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3 title:(id)a4 localizationKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = objc_alloc_init(CDPEscapeOption);
  [(CDPEscapeOption *)v10 setTitle:v8];
  [(CDPEscapeOption *)v10 setTitleLocalizationKey:v9];
  [(CDPEscapeOption *)v10 setTitleTelemetryKey:*MEMORY[0x277CFDA28]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke;
  v12[3] = &unk_278E2B5A0;
  v12[4] = self;
  objc_copyWeak(v13, &location);
  v13[1] = a3;
  [(CDPEscapeOption *)v10 setEscapeAction:v12];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v10;
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User elected to send code, starting piggybacking based data recovery", buf, 2u);
  }

  [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA28]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    v6 = [*(v4 + 56) topViewController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_386;
    v9[3] = &unk_278E2B578;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9[4] = WeakRetained;
    v9[5] = v8;
    v9[6] = v7;
    [CDPUIAuthenticationHelper proxAuthenticationForContext:v5 viewController:v6 withCompletion:v9];
  }
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_386(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  if (!a2 || v5)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_386_cold_1();
    }

    if ([v5 code] == -7035)
    {
      [v7 piggybackingUserDidNotGetACode:*(a1 + 48)];
    }

    else if ([v5 code] != -7064 && objc_msgSend(v5, "code") != -7003)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_387;
      v13[3] = &unk_278E2B3C0;
      v14 = v5;
      v15 = v7;
      v16 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }

  else
  {
    v8 = [v6 updateContextWithAuthResults:a2];
    if ([v8 isPiggybackingRecovery])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_388;
      block[3] = &unk_278E2AF90;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
      [v7 attemptToJoinCircleWithPiggybacking:v8 mask:*(a1 + 48)];
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_390;
      v11[3] = &unk_278E2B550;
      v10 = *(a1 + 48);
      v11[4] = v7;
      v11[5] = v10;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_387(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_387_cold_1();
  }

  v3 = [*(a1 + 40) _piggybackingSomethingWentWrong:*(a1 + 48)];
  [v3 handleEscapeAction:*(a1 + 40)];
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_388(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(*(a1 + 32) + 56) topViewController];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_388_cold_1();
    }

    [v3 startSpinning];
  }
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_390(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_390_cold_1();
  }

  v3 = [*(a1 + 32) _piggybackingHandleNonProxError:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 56) topViewController];
  [v3 setPresentingViewController:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_391;
  v7[3] = &unk_278E2B2D0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_391(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_391_cold_1();
  }

  return [*(a1 + 32) handleEscapeAction:*(a1 + 40)];
}

- (id)_piggybackingHandleNonProxError:(unint64_t)a3
{
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_NON_PROX_ERROR_MESSAGE"];
  v7 = [v6 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v7];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_NON_PROX_ERROR_TITLE"];
  v9 = [v8 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setTitle:v9];

  v10 = CDPLocalizedString();
  v11 = [(CDPUIController *)self _piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:a3 title:v10 localizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_NON_PROX_ERROR_SEND_NEW_CODE_TITLE"];

  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v11];
  v12 = objc_alloc_init(CDPEscapeOption);
  v13 = CDPLocalizedString();
  [(CDPEscapeOption *)v12 setTitle:v13];

  [(CDPEscapeOption *)v12 setTitleLocalizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_CANT_GET_TO_MY_DEVICES_TITLE"];
  [(CDPEscapeOption *)v12 setStyle:4];
  [(CDPEscapeOption *)v12 setTitleTelemetryKey:*MEMORY[0x277CFD960]];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __51__CDPUIController__piggybackingHandleNonProxError___block_invoke;
  v18 = &unk_278E2B528;
  objc_copyWeak(v20, &location);
  v19 = self;
  v20[1] = a3;
  [(CDPEscapeOption *)v12 setEscapeAction:&v15];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v12, v15, v16, v17, v18];
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);

  return v5;
}

void __51__CDPUIController__piggybackingHandleNonProxError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD960]];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50__CDPUIController_piggybackingUserDidNotGetACode___block_invoke_cold_1();
  }

  v4 = [WeakRetained _piggybackingEscapeOfferCantGetToDevicesWithSupportedEscapeOffers:*(a1 + 48)];
  v5 = [WeakRetained[7] topViewController];
  [v4 setPresentingViewController:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CDPUIController__piggybackingHandleNonProxError___block_invoke_402;
  v8[3] = &unk_278E2B2D0;
  v9 = v4;
  v10 = WeakRetained;
  v6 = WeakRetained;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)attemptToJoinCircleWithPiggybacking:(id)a3 mask:(unint64_t)a4 validator:(id)a5
{
  objc_storeStrong(&self->_remoteSecretValidator, a5);
  v8 = a3;
  [(CDPUIController *)self attemptToJoinCircleWithPiggybacking:v8 mask:a4];
}

- (void)attemptToJoinCircleWithPiggybacking:(id)a3 mask:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  remoteSecretValidator = self->_remoteSecretValidator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke;
  v8[3] = &unk_278E2B5C8;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = a4;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator attemptToJoinCircleWithPiggybacking:v6 withCompletion:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_2;
  block[3] = &unk_278E2B2D0;
  block[4] = *(a1 + 32);
  v7 = v5;
  v18 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (a2)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Piggybacking succeeded, safe to dismiss the view", buf, 2u);
    }

    [WeakRetained _dismissPresentedViewControllerCompletion:0];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_403;
    v12[3] = &unk_278E2B3C0;
    v9 = v7;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v15 = *(a1 + 48);
    v11 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(*(a1 + 32) + 56) topViewController];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_2_cold_1();
    }

    [v3 stopSpinning];
  }
}

void __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_403(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_403_cold_1();
  }

  v3 = [*(a1 + 40) _piggybackingSomethingWentWrong:*(a1 + 48)];
  [v3 handleEscapeAction:*(a1 + 40)];
}

- (id)_piggybackingCantGetToMyDevices:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((a6 & 0x20) != 0)
  {
    v13 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
    v14 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a6];
LABEL_7:
    v15 = v14;
    [v14 setStyle:4];
    [(CDPRemoteValidationEscapeOffer *)v13 addEscapeOptionsObject:v15];

    goto LABEL_8;
  }

  if ((a6 & 0x40) != 0)
  {
    v13 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
    v14 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a6];
    goto LABEL_7;
  }

  if ((a6 & 8) != 0)
  {
    v13 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v10 message:v11 skipButtonTitle:v12 supportedEscapeOfferMask:a6];
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)_piggybackingEscapeOfferCantGetToDevicesWithSupportedEscapeOffers:(unint64_t)a3
{
  v5 = CDPLocalizedString();
  v6 = CDPLocalizedString();
  v7 = CDPLocalizedString();
  v8 = [(CDPUIController *)self _piggybackingCantGetToMyDevices:v5 message:v6 skipButtonTitle:v7 supportedEscapeOfferMask:a3];

  return v8;
}

- (id)_piggybackingViewControllerWithSupportedEscapeOfferMask:(unint64_t)a3
{
  v5 = objc_alloc_init(CDPUIPiggybackingViewModel);
  [(CDPUIPiggybackingViewModel *)v5 setIconName:@"macbook.and.iphone"];
  v6 = CDPLocalizedString();
  [(CDPUIPiggybackingViewModel *)v5 setTitle:v6];

  v7 = CDPLocalizedString();
  [(CDPUIPiggybackingViewModel *)v5 setMessage:v7];

  v8 = CDPLocalizedString();
  v9 = [(CDPUIController *)self _piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:a3 title:v8 localizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_SEND_CODE_BUTTON_TITLE"];

  [(CDPUIPiggybackingViewModel *)v5 setSendCodeOption:v9];
  v10 = [(CDPUIController *)self _piggybackingEscapeOfferCantGetToDevicesWithSupportedEscapeOffers:a3];
  v11 = CDPLocalizedString();
  [v10 setEscapeOfferName:v11];

  [v10 setTitleTelemetryKey:*MEMORY[0x277CFD960]];
  [(CDPUIPiggybackingViewModel *)v5 setCantGetToDeviceOption:v10];
  v12 = [[CDPUIPiggybackingViewController alloc] initWithViewModel:v5 cdpContext:self->_activeContext];
  [v10 setPresentingViewController:v12];

  return v12;
}

- (id)_piggybackingSomethingWentWrong:(unint64_t)a3
{
  v5 = ~a3;
  v6 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v7 = CDPLocalizedString();
  [(CDPRemoteValidationEscapeOffer *)v6 setTitle:v7];

  v8 = CDPLocalizedString();
  v9 = [(CDPUIController *)self _piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers:a3 title:v8 localizationKey:@"DATA_RECOVERY_PROX_PIGGYBACKING_SEND_NEW_CODE_BUTTON_TITLE"];

  [(CDPRemoteValidationEscapeOffer *)v6 addEscapeOptionsObject:v9];
  if ((v5 & 0x60) != 0)
  {
    if ((a3 & 0x20) != 0)
    {
      v15 = CDPLocalizedString();
      [(CDPRemoteValidationEscapeOffer *)v6 setMessage:v15];

      v14 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3];
      v11 = v14;
      goto LABEL_8;
    }

    if ((a3 & 0x40) == 0)
    {
      v11 = CDPLocalizedString();
      [(CDPRemoteValidationEscapeOffer *)v6 setMessage:v11];
      goto LABEL_9;
    }

    v19 = CDPLocalizedString();
    [(CDPRemoteValidationEscapeOffer *)v6 setMessage:v19];

    v11 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3];
    v12 = @"DATA_RECOVERY_PROX_PIGGYBACKING_USE_CUSTODIAN_RECOVERY_TITLE";
  }

  else
  {
    v10 = CDPLocalizedString();
    [(CDPRemoteValidationEscapeOffer *)v6 setMessage:v10];

    v11 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3];
    v12 = @"DATA_RECOVERY_PROX_PIGGYBACKING_USE_RECOVERY_METHOD_TITLE";
  }

  v13 = CDPLocalizedString();
  [v11 setTitle:v13];

  [v11 setTitleLocalizationKey:v12];
  v14 = v11;
LABEL_8:
  [v14 setStyle:4];
  [(CDPRemoteValidationEscapeOffer *)v6 addEscapeOptionsObject:v11];
LABEL_9:

  v16 = [(CDPUIController *)self _tryAgainLaterEscapeOption];
  [(CDPRemoteValidationEscapeOffer *)v6 addEscapeOptionsObject:v16];

  v17 = [(UINavigationController *)self->_navController topViewController];
  [(CDPRemoteValidationEscapeOffer *)v6 setPresentingViewController:v17];

  return v6;
}

- (id)_beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(CDPEscapeOption);
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_CONTACT"];
    v7 = [v6 localizedString];
    [(CDPEscapeOption *)v5 setTitle:v7];
    v8 = @"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_CONTACT";
  }

  else
  {
    v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN"];
    v7 = [v6 localizedString];
    [(CDPEscapeOption *)v5 setTitle:v7];
    v8 = @"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN";
  }

  [(CDPEscapeOption *)v5 setTitleLocalizationKey:v8];
  [(CDPEscapeOption *)v5 setTitleTelemetryKey:*MEMORY[0x277CFD9B8]];
  [(CDPEscapeOption *)v5 setStyle:4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CDPUIController__beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke;
  v10[3] = &unk_278E2B528;
  objc_copyWeak(v11, &location);
  v10[4] = self;
  v11[1] = a3;
  [(CDPEscapeOption *)v5 setEscapeAction:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v5;
}

void __83__CDPUIController__beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "Walrus User elected to start Custodian Flow, Showing Ask Help Now View", v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) _custodianAskHelpViewControllerWithSupportedEscapeOfferMask:*(a1 + 48)];
    [WeakRetained[7] pushViewController:v4 animated:1];
    v5 = WeakRetained[19];
    if (v5)
    {
      [v5 insert:64];
    }

    else
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __83__CDPUIController__beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

- (id)_custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3
{
  v5 = CDPLocalizedString();
  v6 = CDPLocalizedString();
  v7 = CDPLocalizedString();
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIController _custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:];
  }

  v9 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v5 message:v6 skipButtonTitle:v7 supportedEscapeOfferMask:a3];

  return v9;
}

- (id)_custodianAskHelpViewControllerWithSupportedEscapeOfferMask:(unint64_t)a3
{
  v5 = objc_alloc_init(CDPUICustodianAskHelpViewModel);
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v6 = @"custom.person.2.shield.fill-template";
  }

  else
  {
    v6 = @"recovery_contact";
  }

  [(CDPUICustodianAskHelpViewModel *)v5 setIconName:v6];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"GET_HELP_FROM_RC_VIEW_TITLE" inTable:@"Localizable-Walrus"];
  v8 = [v7 localizedString];
  [(CDPUICustodianAskHelpViewModel *)v5 setTitle:v8];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"GET_HELP_FROM_RC_VIEW_MESSAGE" inTable:@"Localizable-Walrus"];
  v10 = [v9 localizedString];
  [(CDPUICustodianAskHelpViewModel *)v5 setMessage:v10];

  v11 = [[CDPUICustodianAskHelpViewController alloc] initWithViewModel:v5 cdpContext:self->_activeContext];
  v12 = [(CDPUIController *)self _custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3 askHelpController:v11];
  v13 = [MEMORY[0x277CFD508] builderForKey:@"GET_HELP_NOW_BUTTON_TITLE" inTable:@"Localizable-Walrus"];
  v14 = [v13 localizedString];
  [v12 setTitle:v14];

  [v12 setTitleLocalizationKey:@"GET_HELP_NOW_BUTTON_TITLE"];
  [(CDPUICustodianAskHelpViewModel *)v5 setGetHelpNowOption:v12];
  v15 = [(CDPUIController *)self _custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:a3];
  v16 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_BUTTON_TITLE_DONT_ASK_FOR_HELP" inTable:@"Localizable-Walrus"];
  v17 = [v16 localizedString];
  [v15 setEscapeOfferName:v17];

  [(CDPUICustodianAskHelpViewModel *)v5 setDontAskForHelpOption:v15];
  v18 = *MEMORY[0x277CFD9D8];
  v19 = [(CDPUICustodianAskHelpViewModel *)v5 dontAskForHelpOption];
  [v19 setTitleTelemetryKey:v18];

  [v15 setPresentingViewController:v11];

  return v11;
}

- (id)_custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3 askHelpController:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [objc_alloc(MEMORY[0x277CFD4B0]) initWithContext:self->_activeContext];
  v8 = objc_alloc_init(CDPEscapeOption);
  v9 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN"];
  v10 = [v9 localizedString];
  [(CDPEscapeOption *)v8 setTitle:v10];

  [(CDPEscapeOption *)v8 setTitleTelemetryKey:*MEMORY[0x277CFD9B8]];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__CDPUIController__custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask_askHelpController___block_invoke;
  v14[3] = &unk_278E2B438;
  objc_copyWeak(v17, &location);
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v17[1] = a3;
  [(CDPEscapeOption *)v8 setEscapeAction:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v8;
}

void __96__CDPUIController__custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask_askHelpController___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User elected to start Custodian Flow, Showing OS picker", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) buttonTray];
    [v4 showButtonsBusy];

    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD9B8]];
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __96__CDPUIController__custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask_askHelpController___block_invoke_482;
    v7[3] = &unk_278E2B5F0;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 32);
    [WeakRetained custodianOSSelectionViewControllerWithCustodianController:v5 supportedEscapeOfferMask:v6 completion:v7];

    objc_destroyWeak(&v9);
  }
}

void __96__CDPUIController__custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask_askHelpController___block_invoke_482(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained[7] pushViewController:v3 animated:1];
    }

    else
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 0;
        _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "OS instruction view is not created", v8, 2u);
      }
    }

    v6 = [*(a1 + 32) buttonTray];
    [v6 showButtonsAvailable];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __96__CDPUIController__custodianRecoveryEscapeOptionWithSupportedEscapeOfferMask_askHelpController___block_invoke_482_cold_1();
    }
  }
}

- (void)custodianOSSelectionViewControllerWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4 completion:(id)a5
{
  v44[3] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v31 = a5;
  v7 = objc_alloc_init(CDPUICustodianOSSelectionViewModel);
  v8 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_OS_PICKER_TITLE"];
  v9 = [v8 localizedString];
  [(CDPUICustodianOSSelectionViewModel *)v7 setTitle:v9];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_OS_PICKER_SUBTITLE"];
  v11 = [v10 localizedString];
  [(CDPUICustodianOSSelectionViewModel *)v7 setMessage:v11];

  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v12 = MEMORY[0x277D755D0];
    v13 = [MEMORY[0x277D74300] systemFontOfSize:{82.0, v31, v33}];
    v14 = [v12 configurationWithFont:v13 scale:-1];

    v15 = [MEMORY[0x277D755D0] configurationWithColorRenderingMode:2];
    v16 = MEMORY[0x277D755D0];
    v17 = [MEMORY[0x277D75348] systemWhiteColor];
    v44[0] = v17;
    v18 = [MEMORY[0x277D75348] systemWhiteColor];
    v19 = [v18 colorWithAlphaComponent:0.5];
    v44[1] = v19;
    v20 = [MEMORY[0x277D75348] systemBlueColor];
    v44[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v22 = [v16 configurationWithPaletteColors:v21];

    v23 = [v14 configurationByApplyingConfiguration:v15];
    v24 = [v23 configurationByApplyingConfiguration:v22];

    v25 = [MEMORY[0x277D755B8] imageNamed:@"custom.person.2.shield.fill-template" inBundle:v36 withConfiguration:v24];
    [(CDPUICustodianOSSelectionViewModel *)v7 setIcon:v25];
  }

  else
  {
    v26 = [MEMORY[0x277D755B8] imageNamed:@"recovery_contact" inBundle:{v36, v31, v33}];
    [(CDPUICustodianOSSelectionViewModel *)v7 setIcon:v26];
  }

  [(CDPUICustodianOSSelectionViewModel *)v7 setTableViewStyle:2];
  objc_initWeak(&location, self);
  v27 = _CDPLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v27, OS_LOG_TYPE_DEFAULT, "Starting a new recovery recovery session...", buf, 2u);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke;
  v37[3] = &unk_278E2B668;
  objc_copyWeak(v41, &location);
  v28 = v32;
  v40 = v28;
  v37[4] = self;
  v29 = v34;
  v38 = v29;
  v41[1] = a4;
  v30 = v7;
  v39 = v30;
  [v29 startRecoverySessionWithCompletion:v37];

  objc_destroyWeak(v41);
  objc_destroyWeak(&location);
}

void __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "Custodian recovery session started with sessionID: %@, error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_495;
  block[3] = &unk_278E2B640;
  v15 = v6;
  v16 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(v19, (a1 + 64));
  v10 = *(a1 + 56);
  v13 = *(a1 + 32);
  v11 = *(&v13 + 1);
  v19[1] = *(a1 + 72);
  *&v12 = *(a1 + 48);
  *(&v12 + 1) = v10;
  v17 = v13;
  v18 = v12;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v19);
}

void __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_495(uint64_t a1)
{
  v44[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || ![*(a1 + 40) length])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _showStartRecoverySessionFailureAlert];

    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_2;
    aBlock[3] = &unk_278E2B618;
    objc_copyWeak(v42, (a1 + 80));
    v5 = *(a1 + 56);
    aBlock[4] = *(a1 + 48);
    v6 = v5;
    v7 = *(a1 + 88);
    v41 = v6;
    v42[1] = v7;
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v9 setStyle:0];
    [(CDPEscapeOption *)v9 setTitleLocalizationKey:@"CUSTODIAN_RECOVERY_OS_PICKER_INSTRUCTIONS_FOR_CONTACT"];
    v10 = MEMORY[0x277CFD508];
    v11 = [(CDPEscapeOption *)v9 titleLocalizationKey];
    v12 = [v10 builderForKey:v11];
    v13 = [v12 localizedString];
    [(CDPEscapeOption *)v9 setTitle:v13];

    v14 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v14 setTitleLocalizationKey:@"CUSTODIAN_RECOVERY_OS_PICKER_DEVICE_IOS"];
    v15 = MEMORY[0x277CFD508];
    v16 = [(CDPEscapeOption *)v14 titleLocalizationKey];
    v17 = [v15 builderForKey:v16];
    v18 = [v17 localizedString];
    [(CDPEscapeOption *)v14 setTitle:v18];

    [(CDPEscapeOption *)v14 setTitleTelemetryKey:*MEMORY[0x277CFD9E0]];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_502;
    v38[3] = &unk_278E2B118;
    v19 = v8;
    v39 = v19;
    [(CDPEscapeOption *)v14 setEscapeAction:v38];
    v20 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v20 setTitleLocalizationKey:@"CUSTODIAN_RECOVERY_OS_PICKER_DEVICE_MAC"];
    v21 = MEMORY[0x277CFD508];
    v22 = [(CDPEscapeOption *)v20 titleLocalizationKey];
    v23 = [v21 builderForKey:v22];
    v24 = [v23 localizedString];
    [(CDPEscapeOption *)v20 setTitle:v24];

    [(CDPEscapeOption *)v20 setTitleTelemetryKey:*MEMORY[0x277CFD9E8]];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_2_506;
    v36[3] = &unk_278E2B118;
    v25 = v19;
    v37 = v25;
    [(CDPEscapeOption *)v20 setEscapeAction:v36];
    v44[0] = v9;
    v44[1] = v14;
    v44[2] = v20;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    [*(a1 + 64) setOptions:v26];

    v27 = [*(a1 + 48) _enterCustodianCodeEscapeOfferWithCustodianController:*(a1 + 56) supportedEscapeOfferMask:*(a1 + 88)];
    v28 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_OS_PICKER_HAVE_RECOVERY_CODE"];
    v29 = [v28 localizedString];
    [v27 setTitle:v29];

    [v27 setTitleTelemetryKey:*MEMORY[0x277CFD9C8]];
    v30 = [*(a1 + 48) _custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:*(a1 + 88)];
    v31 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_OS_PICKER_ESCAPE_TITLE"];
    v32 = [v31 localizedString];
    [v30 setEscapeOfferName:v32];

    [v30 setTitleTelemetryKey:*MEMORY[0x277CFD9F8]];
    v43[0] = v27;
    v43[1] = v30;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [*(a1 + 64) setEscapeOffers:v33];

    v34 = [[CDPUICustodianOSSelectionViewController alloc] initWithViewModel:*(a1 + 64) cdpContext:*(*(a1 + 48) + 80)];
    [v30 setPresentingViewController:v34];
    v35 = *(a1 + 72);
    if (v35)
    {
      (*(v35 + 16))(v35, v34);
    }

    objc_destroyWeak(v42);
  }
}

void __113__CDPUIController_custodianOSSelectionViewControllerWithCustodianController_supportedEscapeOfferMask_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Initializing custodian recovery session with Apple Account", v7, 2u);
  }

  v6 = [*(a1 + 32) _instructionsControllerForPlatform:a2 controller:*(a1 + 40) supportedEscapeOfferMask:*(a1 + 56)];
  [WeakRetained[7] pushViewController:v6 animated:1];
}

- (void)_showStartRecoverySessionFailureAlert
{
  v3 = MEMORY[0x277D750F8];
  v4 = CDPLocalizedString();
  v9 = [v3 actionWithTitle:v4 style:1 handler:0];

  v5 = MEMORY[0x277D75110];
  v6 = CDPLocalizedString();
  v7 = CDPLocalizedString();
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  [v8 addAction:v9];
  [(UINavigationController *)self->_navController presentViewController:v8 animated:1 completion:0];
}

- (id)_instructionsControllerForPlatform:(unint64_t)a3 controller:(id)a4 supportedEscapeOfferMask:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_alloc_init(CDPUICustodianInstructionsViewModel);
  v10 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_INSTRUCTIONS_TITLE"];
  v11 = [v10 localizedString];
  [(CDPUICustodianInstructionsViewModel *)v9 setTitle:v11];

  v12 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_INSTRUCTIONS_SUBTITLE"];
  v13 = [v12 localizedString];
  [(CDPUICustodianInstructionsViewModel *)v9 setSubtitle:v13];

  v14 = [MEMORY[0x277CFD508] builderForKey:&stru_285826188];
  v15 = [v14 localizedString];
  [(CDPUICustodianInstructionsViewModel *)v9 setFooterText:v15];

  v16 = [MEMORY[0x277CFD480] sharedInstance];
  v17 = [v16 primaryAccountFullName];

  if (a3 == 1)
  {
    v18 = @"CUSTODIAN_INSTRUCTIONS_OS_DETAIL_IOS";
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v18 = @"CUSTODIAN_INSTRUCTIONS_OS_DETAIL_MAC";
  }

  v19 = [MEMORY[0x277CFD508] builderForKey:v18];
  v20 = [v19 localizedString];
  [(CDPUICustodianInstructionsViewModel *)v9 setInstructionHeader:v20];

  v21 = MEMORY[0x277CCACA8];
  v22 = CDPLocalizedString();
  v23 = [v21 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v17];
  [(CDPUICustodianInstructionsViewModel *)v9 setInstructions:v23];

LABEL_6:
  v24 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_INSTRUCTIONS_FOOTER"];
  v25 = [v24 localizedString];
  [(CDPUICustodianInstructionsViewModel *)v9 setFooterText:v25];

  v26 = [(CDPUIController *)self _custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:a5];
  v27 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_INSTRUCTIONS_ESCAPE_TITLE"];
  v28 = [v27 localizedString];
  [v26 setEscapeOfferName:v28];

  [(CDPUICustodianInstructionsViewModel *)v9 setEscapeOffer:v26];
  v29 = objc_alloc_init(CDPEscapeOption);
  v30 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_INSTRUCTIONS_CONTINUE_TITLE"];
  v31 = [v30 localizedString];
  [(CDPEscapeOption *)v29 setTitle:v31];

  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __90__CDPUIController__instructionsControllerForPlatform_controller_supportedEscapeOfferMask___block_invoke;
  v35[3] = &unk_278E2B438;
  objc_copyWeak(v37, &location);
  v35[4] = self;
  v32 = v8;
  v36 = v32;
  v37[1] = a5;
  [(CDPEscapeOption *)v29 setEscapeAction:v35];
  [(CDPUICustodianInstructionsViewModel *)v9 setContinueOption:v29];
  v33 = [[CDPUICustodianInstructionsViewController alloc] initWithViewModel:v9];
  [v26 setPresentingViewController:v33];

  objc_destroyWeak(v37);
  objc_destroyWeak(&location);

  return v33;
}

void __90__CDPUIController__instructionsControllerForPlatform_controller_supportedEscapeOfferMask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) _custodianCodeEntryViewControllerWithController:*(a1 + 40) supportedEscapeOfferMask:*(a1 + 56)];
  [WeakRetained[7] pushViewController:v2 animated:1];
}

- (id)_custodianCodeEntryViewControllerWithController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CDPUICodeEntryViewModel);
  v8 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_TITLE"];
  v9 = [v8 localizedString];
  [(CDPUICodeEntryViewModel *)v7 setPromptTitle:v9];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_MESSAGE"];
  v11 = [v10 localizedString];
  [(CDPUICodeEntryViewModel *)v7 setPromptMessage:v11];

  v12 = [(CDPUIController *)self _custodianCantReachContactEscapeOfferWithSupportedEscapeOffers:a4];
  v13 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_ESCAPE_TITLE"];
  v14 = [v13 localizedString];
  [v12 setTitle:v14];

  [v12 setTitleTelemetryKey:*MEMORY[0x277CFD9D0]];
  [(CDPUICodeEntryViewModel *)v7 setEscapeOffer:v12];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke;
  v18[3] = &unk_278E2B6B8;
  v15 = v6;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  [(CDPUICodeEntryViewModel *)v7 setCodeEnteredAction:v18];
  v16 = [[CDPUICustodianCodeEntryViewController alloc] initWithViewModel:v7 cdpContext:self->_activeContext];
  [v12 setPresentingViewController:v16];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);

  return v16;
}

uint64_t __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_cold_1();
  }

  v5 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_563;
  v10[3] = &unk_278E2B690;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = &v14;
  v7 = v5;
  v11 = v7;
  [v6 validateRecoveryCode:v3 withCompletion:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);

  objc_destroyWeak(&v13);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_563(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_563_cold_1();
    }

    if (([v6 aa_isAACustodianRecoveryErrorWithCode:-9002] & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_564;
      block[3] = &unk_278E2AF90;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_565;
    v9[3] = &unk_278E2B2D0;
    v10 = v5;
    v11 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_564(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_564_cold_1();
  }

  return [*(a1 + 32) _presentCustodianAttemptLimitAlert];
}

uint64_t __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_565(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: Code validation success! Custodian with recoveryInfo: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _validateCustodianRecoveryInfo:*(a1 + 32)];
}

- (void)_validateCustodianRecoveryInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  remoteSecretValidator = self->_remoteSecretValidator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CDPUIController__validateCustodianRecoveryInfo___block_invoke;
  v6[3] = &unk_278E2B6E0;
  objc_copyWeak(&v7, &location);
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator validateCustodianRecoveryInfo:v4 withCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__CDPUIController__validateCustodianRecoveryInfo___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = _CDPLogSystem();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Custodian recovery info validated, safe to dismiss the view", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __50__CDPUIController__validateCustodianRecoveryInfo___block_invoke_cold_1();
  }

  [WeakRetained _dismissPresentedViewControllerCompletion:0];
}

- (void)_presentCustodianAttemptLimitAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_MACOS_DEPLETED_ATTEMPTS_TITLE"];
  v5 = [v4 localizedString];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_MACOS_DEPLETED_ATTEMPTS_MESSAGE"];
  v7 = [v6 localizedString];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v11 = [v10 localizedString];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__CDPUIController__presentCustodianAttemptLimitAlert__block_invoke;
  v14[3] = &unk_278E2B708;
  v14[4] = self;
  v12 = [v9 actionWithTitle:v11 style:0 handler:v14];

  [v8 addAction:v12];
  v13 = [(CDPUIBaseController *)self presentingViewController];
  [v13 presentViewController:v8 animated:1 completion:0];
}

void __53__CDPUIController__presentCustodianAttemptLimitAlert__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5206];
  [v1 cancelValidationWithError:v2];
}

- (id)_recoveryKeyEscapeOfferWithSupportedEscapeOfferMask:(unint64_t)a3
{
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v6 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3];
  [v6 setStyle:4];
  v7 = [v6 title];
  [(CDPRemoteValidationEscapeOffer *)v5 setEscapeOfferName:v7];

  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v6];

  return v5;
}

- (id)_recoveryMethodEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3
{
  v3 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3];
  [v3 setStyle:4];
  v4 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_METHOD"];
  v5 = [v4 localizedString];
  [v3 setTitle:v5];

  [v3 setTitleTelemetryKey:@"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_METHOD"];

  return v3;
}

- (id)_recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CDPUIController__recoveryKeyEscapeOptionWithSupportedEscapeOfferMask___block_invoke;
  v7[3] = &unk_278E2B730;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3 presentationBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __72__CDPUIController__recoveryKeyEscapeOptionWithSupportedEscapeOfferMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[7] pushViewController:v3 animated:1];

  if (!WeakRetained[19])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __72__CDPUIController__recoveryKeyEscapeOptionWithSupportedEscapeOfferMask___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  [*(*(a1 + 32) + 152) insert:32];
}

- (id)_enterCustodianCodeEscapeOfferWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = [(CDPUIController *)self _enterCustodianCodeEscapeOptionWithCustodianController:v6 supportedEscapeOfferMask:a4];

  [v8 setStyle:4];
  v9 = [v8 title];
  [(CDPRemoteValidationEscapeOffer *)v7 setEscapeOfferName:v9];

  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v8];

  return v7;
}

- (id)_enterCustodianCodeEscapeOptionWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__CDPUIController__enterCustodianCodeEscapeOptionWithCustodianController_supportedEscapeOfferMask___block_invoke;
  v9[3] = &unk_278E2B758;
  objc_copyWeak(&v10, &location);
  v7 = [(CDPUIController *)self _enterCustodianCodeEscapeOptionWithCustodianController:v6 supportedEscapeOfferMask:a4 presentationBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __99__CDPUIController__enterCustodianCodeEscapeOptionWithCustodianController_supportedEscapeOfferMask___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] pushViewController:v5 animated:1];
  }
}

- (id)_enterCustodianCodeEscapeOptionWithCustodianController:(id)a3 supportedEscapeOfferMask:(unint64_t)a4 presentationBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = objc_alloc_init(CDPEscapeOption);
  v11 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_TITLE"];
  v12 = [v11 localizedString];
  [(CDPEscapeOption *)v10 setTitle:v12];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__CDPUIController__enterCustodianCodeEscapeOptionWithCustodianController_supportedEscapeOfferMask_presentationBlock___block_invoke;
  v16[3] = &unk_278E2B780;
  objc_copyWeak(v19, &location);
  v13 = v8;
  v17 = v13;
  v19[1] = a4;
  v14 = v9;
  v18 = v14;
  [(CDPEscapeOption *)v10 setEscapeAction:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);

  return v10;
}

void __117__CDPUIController__enterCustodianCodeEscapeOptionWithCustodianController_supportedEscapeOfferMask_presentationBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _custodianCodeEntryViewControllerWithController:*(a1 + 32) supportedEscapeOfferMask:*(a1 + 56)];
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Initializing custodian code entry controller", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:(unint64_t)a3 presentationBlock:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(CDPEscapeOption);
  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_RK"];
  v9 = [v8 localizedString];
  [(CDPEscapeOption *)v7 setTitle:v9];

  [(CDPEscapeOption *)v7 setTitleLocalizationKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_RK"];
  [(CDPEscapeOption *)v7 setTitleTelemetryKey:*MEMORY[0x277CFDA10]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__CDPUIController__recoveryKeyEscapeOptionWithSupportedEscapeOfferMask_presentationBlock___block_invoke;
  v12[3] = &unk_278E2B780;
  objc_copyWeak(v14, &location);
  v12[4] = self;
  v14[1] = a3;
  v10 = v6;
  v13 = v10;
  [(CDPEscapeOption *)v7 setEscapeAction:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v7;
}

void __90__CDPUIController__recoveryKeyEscapeOptionWithSupportedEscapeOfferMask_presentationBlock___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User elected to start RK flow, prompting to confirm", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA10]];
    v5 = [*(a1 + 32) recoveryKeyEntryControllerForCircleJoinWithCancel:0 supportedEscapeOfferMask:*(a1 + 56)];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_recoveryKeyResetProtectedDataEscapeOfferWithSupportedEscapeOffers:(unint64_t)a3
{
  v5 = CDPLocalizedString();
  v6 = CDPLocalizedString();
  v7 = CDPLocalizedString();
  v8 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v5 message:v6 skipButtonTitle:v7 supportedEscapeOfferMask:a3];

  return v8;
}

- (id)recoveryKeyEntryControllerForCircleJoinWithCancel:(BOOL)a3 supportedEscapeOfferMask:(unint64_t)a4
{
  v5 = a3;
  v7 = [[CDPRecoveryKeyEntryViewModel alloc] initWithContext:self->_activeContext validator:self->_remoteSecretValidator];
  [(CDPRecoveryKeyEntryViewModel *)v7 setIsWalrusEnabled:self->_isWalrusEnabled];
  if ((a4 & 0x40) != 0)
  {
    v8 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a4];
    [(CDPRecoveryKeyEntryViewModel *)v7 setCustodianRecoveryEscapeOption:v8];
  }

  v9 = [(CDPUIController *)self _recoveryKeyResetProtectedDataEscapeOfferWithSupportedEscapeOffers:a4];
  [(CDPRecoveryKeyEntryViewModel *)v7 setDeleteiCloudDataEscapeOffer:v9];
  [(CDPRecoveryKeyEntryViewModel *)v7 setShouldSuppressCancelButton:!v5];
  v10 = [[CDPRecoveryKeyEntryViewController alloc] initWithRecoveryContext:v7 cdpContext:self->_activeContext];
  [v9 setPresentingViewController:v10];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke;
  v13[3] = &unk_278E2B7A8;
  objc_copyWeak(v15, &location);
  v13[4] = self;
  v15[1] = a4;
  v11 = v9;
  v14 = v11;
  [(CDPRecoveryKeyEntryViewModel *)v7 setCompletionHandler:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v10;
}

void __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke_cold_1();
  }

  if ([v4 cdp_isCDPErrorWithCode:-5218])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke_592;
    block[3] = &unk_278E2B550;
    v7 = *(a1 + 56);
    block[4] = *(a1 + 32);
    block[5] = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([v4 cdp_isCDPErrorWithCode:-5215])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke_593;
    v10[3] = &unk_278E2B2D0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke_592(uint64_t a1)
{
  [*(a1 + 32) sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD9B8]];
  v2 = [*(a1 + 32) _custodianAskHelpViewControllerWithSupportedEscapeOfferMask:*(a1 + 40)];
  [*(*(a1 + 32) + 56) pushViewController:v2 animated:1];
  v3 = *(*(a1 + 32) + 152);
  if (!v3)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __94__CDPUIController_recoveryKeyEntryControllerForCircleJoinWithCancel_supportedEscapeOfferMask___block_invoke_592_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v3 = *(*(a1 + 32) + 152);
  }

  [v3 insert:64];
}

- (id)_enterSecretLaterEscapeOptionWithSecret:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = objc_alloc_init(CDPEscapeOption);
  v5 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_LATER"];
  v6 = [v5 addSecretType:a3];
  v7 = [v6 localizedString];
  [(CDPEscapeOption *)v4 setTitle:v7];

  [(CDPEscapeOption *)v4 setTitleLocalizationKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_LATER"];
  [(CDPEscapeOption *)v4 setTitleTelemetryKey:*MEMORY[0x277CFD998]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CDPUIController__enterSecretLaterEscapeOptionWithSecret___block_invoke;
  v9[3] = &unk_278E2B4B0;
  objc_copyWeak(&v10, &location);
  [(CDPEscapeOption *)v4 setEscapeAction:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

void __59__CDPUIController__enterSecretLaterEscapeOptionWithSecret___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User elected to skip CDP flow", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD998]];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__CDPUIController__enterSecretLaterEscapeOptionWithSecret___block_invoke_597;
    v5[3] = &unk_278E2AF90;
    v5[4] = v4;
    [v4 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v5];
  }
}

void __59__CDPUIController__enterSecretLaterEscapeOptionWithSecret___block_invoke_597(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (id)_waitingForApprovalEscapeOffer
{
  v3 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v4 = [MEMORY[0x277CFD508] builderForKey:@"WAITING_APPROVAL_ESCAPE_TITLE"];
  v5 = [(CDPUIController *)self _localDeviceClass];
  v6 = [v4 addDeviceClass:v5];
  v7 = [v6 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v3 setEscapeOfferName:v7];

  return v3;
}

- (id)_localDeviceClass
{
  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 deviceClass];

  return v3;
}

- (id)_singleICSCEscapeOfferWithMask:(unint64_t)a3 withController:(id)a4
{
  v6 = a4;
  v7 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v8 = CDPLocalizedString();
  [(CDPRemoteValidationEscapeOffer *)v7 setEscapeOfferName:v8];

  v9 = CDPLocalizedString();
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v9];

  v10 = CDPLocalizedString();
  [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v10];

  objc_initWeak(&location, self);
  if ((a3 & 4) != 0)
  {
    v11 = objc_alloc_init(CDPEscapeOption);
    v12 = CDPLocalizedString();
    [(CDPEscapeOption *)v11 setTitle:v12];

    [(CDPEscapeOption *)v11 setTitleTelemetryKey:*MEMORY[0x277CFD940]];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__CDPUIController__singleICSCEscapeOfferWithMask_withController___block_invoke;
    v24[3] = &unk_278E2B4B0;
    objc_copyWeak(&v25, &location);
    [(CDPEscapeOption *)v11 setEscapeAction:v24];
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v11];
    objc_destroyWeak(&v25);
  }

  if ((a3 & 0x40) != 0)
  {
    v13 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3];
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v13];
  }

  if ((a3 & 8) != 0)
  {
    v14 = objc_alloc_init(CDPEscapeOption);
    v15 = CDPLocalizedString();
    [(CDPEscapeOption *)v14 setTitle:v15];

    [(CDPEscapeOption *)v14 setTitleTelemetryKey:*MEMORY[0x277CFDA18]];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __65__CDPUIController__singleICSCEscapeOfferWithMask_withController___block_invoke_2;
    v21 = &unk_278E2B4D8;
    objc_copyWeak(&v23, &location);
    v22 = v6;
    [(CDPEscapeOption *)v14 setEscapeAction:&v18];
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v14, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
  }

  v16 = +[CDPEscapeOption cancelOption];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v16];

  objc_destroyWeak(&location);

  return v7;
}

void __65__CDPUIController__singleICSCEscapeOfferWithMask_withController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginWaitingForApprovalFlow];
}

void __65__CDPUIController__singleICSCEscapeOfferWithMask_withController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showResetKeychainConfirmationAlertWithViewController:*(a1 + 32)];
}

- (id)_escapeOffersForgotAllWithMask:(unint64_t)a3 presenter:(id)a4 devices:(id)a5
{
  v47 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a5;
  v49 = [v8 array];
  v10 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  v11 = [v9 prevailingLocalSecretType];

  v12 = [MEMORY[0x277CFD508] builderForKey:@"DEVICE_PICKER_FORGOT_CODE_DIALOG_TITLE"];
  v13 = [v12 addSecretType:v11];
  v50 = [v13 localizedString];

  if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{-[CDPContext type](self->_activeContext, "type")}])
  {
    v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_FORGOT_ALL_RESET"];
    v15 = [v14 addSecretType:v11];
    v16 = [(CDPUIController *)self _localDeviceClass];
    v17 = [v15 addDeviceClass:v16];
    v18 = [v17 localizedString];
  }

  else
  {
    v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_FORGOT_ALL"];
    v15 = [v14 addSecretType:v11];
    v18 = [v15 localizedString];
  }

  v19 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_DEVICE_PICKER_FORGOT_ALL" inTable:@"Localizable-Walrus"];
  v20 = [v19 addSecretType:v11];
  v21 = [v20 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v10 setEscapeOfferName:v21];

  v22 = v50;
  [(CDPRemoteValidationEscapeOffer *)v10 setTitle:v50];
  [(CDPRemoteValidationEscapeOffer *)v10 setMessage:v18];
  if ([(CDPContext *)self->_activeContext keychainSyncSystem]== 1)
  {
    v23 = v18;
    if ((a3 & 4) == 0 || !self->_offeringRemoteApproval)
    {
      v39 = CDPLocalizedString();
      [(CDPRemoteValidationEscapeOffer *)v10 setTitle:v39];

      v40 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOS_MULTI_ICSC_ESCAPE_OFFER_MESSAGE"];
      v41 = [v40 addSecretType:v11];
      v42 = [v41 localizedString];
      [(CDPRemoteValidationEscapeOffer *)v10 setMessage:v42];

      v27 = +[CDPEscapeOption okOption];
      goto LABEL_16;
    }

    v24 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOS_MULTI_ICSC_ESCAPE_OFFER_MESSAGE_REMOTE_APPROVAL"];
    v25 = [v24 addSecretType:v11];
    v26 = [v25 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v10 setMessage:v26];

LABEL_8:
    v27 = +[CDPEscapeOption cancelOption];
LABEL_16:
    v30 = v27;
LABEL_21:
    [(CDPRemoteValidationEscapeOffer *)v10 addEscapeOptionsObject:v30, v47];
    goto LABEL_22;
  }

  if ((a3 & 0x80) != 0)
  {
    v23 = v18;
    v43 = [(CDPUIController *)self _beginPiggybackingRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3];
LABEL_20:
    v30 = v43;
    [v43 setStyle:{4, v47}];
    goto LABEL_21;
  }

  if ((a3 & 0x20) != 0)
  {
    v23 = v18;
    v43 = [(CDPUIController *)self _recoveryKeyEscapeOptionWithSupportedEscapeOfferMask:a3];
    goto LABEL_20;
  }

  if ((a3 & 0x40) != 0)
  {
    v23 = v18;
    v43 = [(CDPUIController *)self _beginCustodianRecoveryEscapeOptionWithSupportedEscapeOfferMask:a3];
    goto LABEL_20;
  }

  if ((a3 & 4) != 0)
  {
    v23 = v18;
    v24 = [(CDPUIController *)self _remoteApprovalEscapeOption];
    [(CDPRemoteValidationEscapeOffer *)v10 addEscapeOptionsObject:v24];
    goto LABEL_8;
  }

  if ((a3 & 0x18) == 0)
  {
    goto LABEL_23;
  }

  v23 = v18;
  v28 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_TITLE"];
  v29 = [v28 addSecretType:v11];
  v30 = [v29 localizedString];

  v31 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_DEVICE_SELECTION_SKIP_MESSAGE"];
  v32 = [v31 addSecretType:v11];
  v33 = [v32 localizedString];

  v34 = CDPLocalizedString();
  v35 = [(CDPUIController *)self _skipOrDeleteiCloudDataEscapeOfferWithTitle:v30 message:v33 skipButtonTitle:v34 supportedEscapeOfferMask:a3];

  v36 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_DEVICE_PICKER_FORGOT_ALL" inTable:@"Localizable-Walrus"];
  v37 = [v36 addSecretType:v11];
  v38 = [v37 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v35 setEscapeOfferName:v38];

  v22 = v50;
  v10 = v35;
LABEL_22:

  v18 = v23;
LABEL_23:
  [v49 addObject:{v10, v47}];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __68__CDPUIController__escapeOffersForgotAllWithMask_presenter_devices___block_invoke;
  v51[3] = &unk_278E2B7D0;
  v52 = v48;
  v44 = v48;
  [v49 enumerateObjectsUsingBlock:v51];
  v45 = [v49 copy];

  return v45;
}

- (id)_remoteApprovalEscapeOption
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(CDPEscapeOption);
  v3 = CDPLocalizedString();
  [(CDPEscapeOption *)v2 setTitle:v3];

  [(CDPEscapeOption *)v2 setTitleLocalizationKey:@"DEVICE_PICKER_FORGOT_CODE_DIALOG_USE_OTHER_DEVICE"];
  [(CDPEscapeOption *)v2 setTitleTelemetryKey:*MEMORY[0x277CFD940]];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CDPUIController__remoteApprovalEscapeOption__block_invoke;
  v5[3] = &unk_278E2B4B0;
  objc_copyWeak(&v6, &location);
  [(CDPEscapeOption *)v2 setEscapeAction:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v2;
}

void __46__CDPUIController__remoteApprovalEscapeOption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFD940]];
    [v2 approveFromAnotherDevice:0];
    WeakRetained = v2;
  }
}

- (void)_setupDevicePickerController:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_activeContext eventName:*MEMORY[0x277CFD6B0] category:*MEMORY[0x277CFD930]];
  [(CDPRPDLedger *)self->_ledger insert:2];
  v5 = [[CDPDevicePickerViewController alloc] initWithDevices:self->_devices delegate:self tableViewStyle:2];
  devicePicker = self->_devicePicker;
  self->_devicePicker = v5;

  v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v7 sendEvent:v4];

  if (v8)
  {
    v8[2](v8, self->_devicePicker);
  }
}

- (void)_showResetKeychainConfirmationAlertWithViewController:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D750F8];
  v6 = CDPLocalizedString();
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];

  v8 = MEMORY[0x277D750F8];
  v9 = CDPLocalizedString();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __73__CDPUIController__showResetKeychainConfirmationAlertWithViewController___block_invoke;
  v19 = &unk_278E2B7F8;
  v20 = v4;
  v21 = self;
  v10 = v4;
  v11 = [v8 actionWithTitle:v9 style:0 handler:&v16];

  v12 = MEMORY[0x277D75110];
  v13 = CDPLocalizedString();
  v14 = CDPLocalizedString();
  v15 = [v12 alertControllerWithTitle:v13 message:v14 preferredStyle:{1, v16, v17, v18, v19}];

  [v15 addAction:v7];
  [v15 addAction:v11];
  [(UINavigationController *)self->_navController presentViewController:v15 animated:1 completion:0];
}

uint64_t __73__CDPUIController__showResetKeychainConfirmationAlertWithViewController___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "User request keychain reset during iCSC entry challenge", v14, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) disableUserInteractionAndStartSpinner];
  }

  [*(a1 + 40) _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 152);
  if (!v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __73__CDPUIController__showResetKeychainConfirmationAlertWithViewController___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v3 = *(a1 + 40);
    v4 = *(v3 + 152);
  }

  return [*(v3 + 24) resetAccountCDPStateWithEscapeOptionsOffered:{objc_msgSend(v4, "escapeOffersPresented")}];
}

- (void)_showTryAgainLaterConfirmationAlertWithViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750F8];
  v6 = CDPLocalizedString();
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];

  v8 = MEMORY[0x277D750F8];
  v9 = CDPLocalizedString();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke;
  v18 = &unk_278E2B820;
  objc_copyWeak(&v19, &location);
  v10 = [v8 actionWithTitle:v9 style:0 handler:&v15];

  v11 = MEMORY[0x277D75110];
  v12 = CDPLocalizedString();
  v13 = CDPLocalizedString();
  v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:{1, v15, v16, v17, v18}];

  [v14 addAction:v10];
  [v14 addAction:v7];
  [(UINavigationController *)self->_navController presentViewController:v14 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA48]];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_655;
    v5[3] = &unk_278E2AF90;
    v5[4] = v4;
    [v4 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v5];
  }
}

void __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_655(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (void)keychainSyncController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:@"securityCode"];
    [v9 disableUserInteractionAndStartSpinner];
    remoteSecretValidator = self->_remoteSecretValidator;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke;
    v16[3] = &unk_278E2B870;
    v17 = v9;
    v18 = self;
    [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator validateSecret:v10 devices:0 type:0 withCompletion:v16];
  }

  else if ([v8 isEqualToString:@"resetKeychain"])
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "User request keychain reset during iCSC entry challenge", buf, 2u);
    }

    [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
    [(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator resetAccountCDPStateWithEscapeOptionsOffered:[(CDPRPDLedger *)self->_ledger escapeOffersPresented]];
  }

  else if ([v8 isEqualToString:@"approveFromOtherDevice"])
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIController keychainSyncController:didFinishWithResult:error:];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke_676;
    block[3] = &unk_278E2AF90;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke(uint64_t a1, int a2, char a3)
{
  [*(a1 + 32) enableUserInteractionAndStopSpinner];
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke_cold_1();
    }

    [*(a1 + 40) _dismissPresentedViewControllerCompletion:0];
  }

  else
  {
    v7 = MEMORY[0x277D75110];
    v8 = CDPLocalizedString();
    v9 = CDPLocalizedString();
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = CDPLocalizedString();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke_674;
    v16[3] = &unk_278E2B848;
    v19 = a3;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = v13;
    v18 = v14;
    v15 = [v11 actionWithTitle:v12 style:0 handler:v16];
    [v10 addAction:v15];

    [*(*(a1 + 40) + 56) presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke_674(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 32) setTextEntryText:&stru_285826188];
  }

  else
  {
    return [*(a1 + 40) _dismissPresentedViewControllerCompletion:0];
  }
}

- (void)_beginWaitingForApprovalFlow
{
  v3 = [CDPWaitingApprovalViewController alloc];
  v4 = [(CDPUIController *)self _escapeOfferForSingleApprovalWithMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
  v5 = [(CDPWaitingApprovalViewController *)v3 initWithEscapeOffer:v4];

  [(UINavigationController *)self->_navController pushViewController:v5 animated:1];
  [(CDPUIController *)self sendRemoteApprovalStartedBreadCrumbEventWithContext:self->_activeContext];
  remoteSecretValidator = self->_remoteSecretValidator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CDPUIController__beginWaitingForApprovalFlow__block_invoke;
  v8[3] = &unk_278E2B398;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator approveFromAnotherDeviceWithCompletion:v8];
}

uint64_t __47__CDPUIController__beginWaitingForApprovalFlow__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  result = [*(a1 + 32) sendRemoteApprovalCompletedEventWithContext:*(*(a1 + 32) + 80) didApprove:a2 error:a3];
  if (v3)
  {
    [*(a1 + 40) remoteApprovalSucceeded];
    v6 = *(a1 + 32);

    return [v6 _dismissPresentedViewControllerCompletion:0];
  }

  return result;
}

- (void)cdpContext:(id)a3 createLocalSecretWithCompletion:(id)a4
{
  v14 = a4;
  v5 = [MEMORY[0x277CFD4F8] sharedInstance];
  v6 = [v5 hasLocalSecret];

  if (v6)
  {
    v7 = v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    v8 = _CDPStateError();
    (*(v14 + 2))(v14, 0, v8);
  }

  else
  {
    v8 = [(CDPUIController *)self _noRecoveryFactorsBaseController];
    v9 = [CDPUIDeviceToDeviceEncryptionFlowContext alloc];
    v10 = [MEMORY[0x277CFD480] sharedInstance];
    v11 = [v10 primaryAccountAltDSID];
    v12 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)v9 initWithAltDSID:v11];

    [(CDPUIDeviceToDeviceEncryptionFlowContext *)v12 setPresentingViewController:v8];
    [(CDPUIDeviceToDeviceEncryptionFlowContext *)v12 setForceInlinePresentation:1];
    [(CDPUIDeviceToDeviceEncryptionFlowContext *)v12 setShouldSuppressPasscodeCreationCancelPrompt:1];
    v13 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v12];
    [(CDPUIDeviceToDeviceEncryptionHelper *)v13 _configureNavigationController];
    [(CDPUIDeviceToDeviceEncryptionHelper *)v13 _createLocalSecretForContext:v12 completion:v14];
  }

  v7 = v14;
LABEL_6:
}

- (id)_noRecoveryFactorsBaseController
{
  navController = self->_navController;
  if (navController)
  {
    v3 = navController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._presentingViewController);
    v6 = [WeakRetained presentedViewController];
    v7 = objc_loadWeakRetained(&self->super._presentingViewController);
    v3 = v7;
    if (v6)
    {
      v8 = [(UINavigationController *)v7 presentedViewController];

      v3 = v8;
    }
  }

  return v3;
}

- (id)_skipOrDeleteiCloudDataEscapeOfferWithTitle:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6
{
  v6 = a6;
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  [(CDPRemoteValidationEscapeOffer *)v13 setTitle:v10];
  [(CDPRemoteValidationEscapeOffer *)v13 setMessage:v11];
  objc_initWeak(&location, self);
  v14 = objc_alloc_init(CDPEscapeOption);
  [(CDPEscapeOption *)v14 setTitle:v12];
  [(CDPEscapeOption *)v14 setTitleTelemetryKey:*MEMORY[0x277CFDA48]];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke;
  v35[3] = &unk_278E2B4B0;
  objc_copyWeak(&v36, &location);
  [(CDPEscapeOption *)v14 setEscapeAction:v35];
  [(CDPRemoteValidationEscapeOffer *)v13 addEscapeOptionsObject:v14];
  if ((v6 & 8) != 0)
  {
    v15 = [(CDPUIController *)self _buildQuotaRequest];
    v16 = [v15 isUrlAvailable];
    v17 = objc_alloc_init(CDPEscapeOption);
    if (v16)
    {
      v18 = _CDPLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v15 urlString];
        [CDPUIController _skipOrDeleteiCloudDataEscapeOfferWithTitle:v19 message:v38 skipButtonTitle:? supportedEscapeOfferMask:?];
      }

      v20 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ALERT_BUTTON_TITLE_MORE_INFORMATION" inTable:@"Localizable-Walrus"];
      v21 = [v20 localizedString];
      [(CDPEscapeOption *)v17 setTitle:v21];

      [(CDPEscapeOption *)v17 setStyle:0];
      [(CDPEscapeOption *)v17 setTitleTelemetryKey:*MEMORY[0x277CFDA20]];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_683;
      v32[3] = &unk_278E2B4D8;
      v22 = &v34;
      objc_copyWeak(&v34, &location);
      v33 = v15;
      [(CDPEscapeOption *)v17 setEscapeAction:v32];
    }

    else
    {
      v23 = _CDPLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [CDPUIController _skipOrDeleteiCloudDataEscapeOfferWithTitle:message:skipButtonTitle:supportedEscapeOfferMask:];
      }

      v24 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ALERT_BUTTON_TITLE_DELETE_ICLOUD_DATA" inTable:@"Localizable-Walrus"];
      v25 = [v24 localizedString];
      [(CDPEscapeOption *)v17 setTitle:v25];

      [(CDPEscapeOption *)v17 setStyle:2];
      [(CDPEscapeOption *)v17 setTitleTelemetryKey:*MEMORY[0x277CFDA18]];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_684;
      v30[3] = &unk_278E2B4D8;
      v22 = &v31;
      objc_copyWeak(&v31, &location);
      v30[4] = self;
      [(CDPEscapeOption *)v17 setEscapeAction:v30];
    }

    objc_destroyWeak(v22);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_695;
    v29[3] = &unk_278E2B898;
    v29[4] = self;
    [(CDPEscapeOption *)v17 setCanShowEscapeOption:v29];
    [(CDPRemoteValidationEscapeOffer *)v13 addEscapeOptionsObject:v17];
  }

  v26 = +[CDPEscapeOption cancelOption];
  [(CDPRemoteValidationEscapeOffer *)v13 addEscapeOptionsObject:v26];

  v27 = [(UINavigationController *)self->_navController topViewController];
  [(CDPRemoteValidationEscapeOffer *)v13 setPresentingViewController:v27];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  return v13;
}

void __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA48]];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_679;
    v5[3] = &unk_278E2AF90;
    v5[4] = v4;
    [v4 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v5];
  }
}

void __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_679(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

void __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_683(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_683_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA18]];
  [WeakRetained _showQuotaStorageAppListView:*(a1 + 32)];
}

void __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_684(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_684_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_ALERT_TITLE" inTable:@"Localizable-Walrus"];
  v6 = [v5 localizedString];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [v4 alertControllerWithTitle:v6 message:0 preferredStyle:(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_DELETE_BUTTON_TITLE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_691;
  v21[3] = &unk_278E2B820;
  objc_copyWeak(&v22, (a1 + 40));
  v13 = [v10 actionWithTitle:v12 style:2 handler:v21];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v9 addAction:v13];
  [v14 addObject:*MEMORY[0x277CFDA18]];
  v15 = MEMORY[0x277D750F8];
  v16 = CDPLocalizedString();
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v9 addAction:v17];

  v18 = [MEMORY[0x277CE44D8] analyticsEventWithContext:*(*(a1 + 32) + 80) eventName:*MEMORY[0x277CFD6D0] category:*MEMORY[0x277CFD930]];
  [v14 addObject:*MEMORY[0x277CFD958]];
  v19 = [v14 aaf_arrayAsCommaSeperatedString];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CFD6C8]];

  v20 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v20 sendEvent:v18];

  [WeakRetained[7] presentViewController:v9 animated:1 completion:0];
  objc_destroyWeak(&v22);
}

void __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_691(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_691_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA18]];
  [WeakRetained[3] resetAccountCDPStateWithEscapeOptionsOffered:{objc_msgSend(WeakRetained[19], "escapeOffersPresented")}];
}

uint64_t __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_695(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_695_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = *(*(a1 + 32) + 152);
  }

  v11 = [v2 canOfferRPD];
  if ((v11 & 1) == 0)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(a1 + 32) + 152) rpdBlockingError];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Cannot offer RPD. Reason: %@", &v15, 0xCu);
    }
  }

  return v11;
}

- (void)_rpdEscapeOptionWithOffer:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CDPUIController *)self _buildQuotaRequest];
  v6 = [v5 isUrlAvailable];
  v7 = objc_alloc_init(CDPEscapeOption);
  if (v6)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v5 urlString];
      [CDPUIController _skipOrDeleteiCloudDataEscapeOfferWithTitle:v9 message:v27 skipButtonTitle:? supportedEscapeOfferMask:?];
    }

    v10 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_MORE_OPTIONS"];
    v11 = [v10 localizedString];
    [(CDPEscapeOption *)v7 setTitle:v11];

    [(CDPEscapeOption *)v7 setStyle:0];
    [(CDPEscapeOption *)v7 setTitleTelemetryKey:*MEMORY[0x277CFDA20]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke;
    v23[3] = &unk_278E2B4D8;
    v12 = &v25;
    objc_copyWeak(&v25, &location);
    v24 = v5;
    [(CDPEscapeOption *)v7 setEscapeAction:v23];
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIController _skipOrDeleteiCloudDataEscapeOfferWithTitle:message:skipButtonTitle:supportedEscapeOfferMask:];
    }

    v14 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_MORE_OPTIONS"];
    v15 = [v14 localizedString];
    [(CDPEscapeOption *)v7 setTitle:v15];

    [(CDPEscapeOption *)v7 setStyle:0];
    [(CDPEscapeOption *)v7 setTitleTelemetryKey:*MEMORY[0x277CFDA18]];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_700;
    v21[3] = &unk_278E2B4B0;
    v12 = &v22;
    objc_copyWeak(&v22, &location);
    [(CDPEscapeOption *)v7 setEscapeAction:v21];
  }

  objc_destroyWeak(v12);
  v16 = +[CDPEscapeOption cancelOption];
  [v16 setStyle:0];
  if ([MEMORY[0x277CFD560] shouldCentralizeRPDFlow])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_702;
    v20[3] = &unk_278E2B898;
    v20[4] = self;
    [(CDPEscapeOption *)v7 setCanShowEscapeOption:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_703;
    v19[3] = &unk_278E2B898;
    v19[4] = self;
    [v16 setCanShowEscapeOption:v19];
  }

  else if (self->_isWalrusEnabled)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_704;
    v18[3] = &unk_278E2B898;
    v18[4] = self;
    [(CDPEscapeOption *)v7 setCanShowEscapeOption:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_2;
    v17[3] = &unk_278E2B898;
    v17[4] = self;
    [v16 setCanShowEscapeOption:v17];
  }

  [v4 addEscapeOptionsObject:v7];
  [v4 addEscapeOptionsObject:v16];

  objc_destroyWeak(&location);
}

void __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_683_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA18]];
  [WeakRetained _showQuotaStorageAppListView:*(a1 + 32)];
}

void __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_700(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_684_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_ALERT_TITLE" inTable:@"Localizable-Walrus"];
  v6 = [v5 localizedString];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [v4 alertControllerWithTitle:v6 message:0 preferredStyle:(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_DELETE_BUTTON_TITLE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_701;
  v21[3] = &unk_278E2B820;
  objc_copyWeak(&v22, (a1 + 32));
  v13 = [v10 actionWithTitle:v12 style:2 handler:v21];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v9 addAction:v13];
  [v14 addObject:*MEMORY[0x277CFDA18]];
  v15 = MEMORY[0x277D750F8];
  v16 = CDPLocalizedString();
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v9 addAction:v17];

  v18 = [MEMORY[0x277CE44D8] analyticsEventWithContext:*(WeakRetained + 10) eventName:*MEMORY[0x277CFD6D0] category:*MEMORY[0x277CFD930]];
  [v14 addObject:*MEMORY[0x277CFD958]];
  v19 = [v14 aaf_arrayAsCommaSeperatedString];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CFD6C8]];

  v20 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v20 sendEvent:v18];

  [*(WeakRetained + 7) presentViewController:v9 animated:1 completion:0];
  objc_destroyWeak(&v22);
}

void __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_701(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_691_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA18]];
  [WeakRetained[3] resetAccountCDPStateWithEscapeOptionsOffered:{objc_msgSend(WeakRetained[19], "escapeOffersPresented")}];
}

uint64_t __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_702(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_702_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = *(*(a1 + 32) + 152);
  }

  v11 = [v2 canOfferRPD];
  if ((v11 & 1) == 0)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(a1 + 32) + 152) rpdBlockingError];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Cannot offer RPD. Reason: %@", &v15, 0xCu);
    }
  }

  return v11;
}

uint64_t __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_703(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_702_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = *(*(a1 + 32) + 152);
  }

  v11 = [v2 canOfferRPD];
  if ((v11 & 1) == 0)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(a1 + 32) + 152) rpdBlockingError];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Cannot offer RPD. Reason: %@", &v15, 0xCu);
    }
  }

  return v11;
}

uint64_t __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_704(uint64_t a1)
{
  v2 = [MEMORY[0x277CFD480] sharedInstance];
  v3 = [v2 rpdProbationIsInEffectForDuration:*(*(a1 + 32) + 80) context:*(*(a1 + 32) + 104)];

  return v3;
}

uint64_t __45__CDPUIController__rpdEscapeOptionWithOffer___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CFD480] sharedInstance];
  v3 = [v2 rpdProbationIsInEffectForDuration:*(*(a1 + 32) + 80) context:*(*(a1 + 32) + 104)];

  return v3;
}

- (id)_iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle:(id)a3 message:(id)a4 skipButtonTitle:(id)a5 supportedEscapeOfferMask:(unint64_t)a6 withDevice:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  [(CDPRemoteValidationEscapeOffer *)v16 setTitle:v12];
  [(CDPRemoteValidationEscapeOffer *)v16 setMessage:v13];
  objc_initWeak(&location, self);
  if ([v14 length])
  {
    v17 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v17 setTitle:v14];
    [(CDPEscapeOption *)v17 setTitleTelemetryKey:*MEMORY[0x277CFDA48]];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __127__CDPUIController__iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask_withDevice___block_invoke;
    v23 = &unk_278E2B4B0;
    objc_copyWeak(&v24, &location);
    [(CDPEscapeOption *)v17 setEscapeAction:&v20];
    [(CDPRemoteValidationEscapeOffer *)v16 addEscapeOptionsObject:v17, v20, v21, v22, v23];
    objc_destroyWeak(&v24);
  }

  if ((v8 & 8) != 0)
  {
    [(CDPUIController *)self _rpdEscapeOptionWithOffer:v16];
  }

  v18 = [(UINavigationController *)self->_navController topViewController];
  [(CDPRemoteValidationEscapeOffer *)v16 setPresentingViewController:v18];

  objc_destroyWeak(&location);

  return v16;
}

void __127__CDPUIController__iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask_withDevice___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA48]];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __127__CDPUIController__iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask_withDevice___block_invoke_705;
  v5[3] = &unk_278E2AF90;
  v6 = WeakRetained;
  v4 = WeakRetained;
  [v4 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v5];
}

void __127__CDPUIController__iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask_withDevice___block_invoke_705(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (void)cdpContext:(id)a3 showResetCompletedAlertWithCompletion:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [(CDPUIController *)self _iCloudDeleteConfirmationViewController:a4];
  [(CDPUIController *)self _setResetCompletedView:v5];
  [(CDPUIController *)self _enableUserInteractionAndStopSpinner];
  navController = self->_navController;
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (navController)
  {
    if (v8)
    {
      [CDPUIController cdpContext:showResetCompletedAlertWithCompletion:];
    }

    v9 = self->_navController;
    v11[0] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(UINavigationController *)v9 setViewControllers:v10 animated:1];
  }

  else
  {
    if (v8)
    {
      [CDPUIController cdpContext:showResetCompletedAlertWithCompletion:];
    }

    v10 = [(CDPUIController *)self _noRecoveryFactorsBaseController];
    [v10 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)cdpContext:(id)a3 showResetFailedAlertWithUnderlyingError:(id)a4 completion:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [MEMORY[0x277CBEC10] mutableCopy];
  v10 = CDPLocalizedString();
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v11 = CDPLocalizedString();
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v12 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v13 = [v12 localizedString];
  v20[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA480]];

  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v15 = _CDPStateError();
  activeContext = self->_activeContext;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__CDPUIController_cdpContext_showResetFailedAlertWithUnderlyingError_completion___block_invoke;
  v18[3] = &unk_278E2B8C0;
  v19 = v7;
  v17 = v7;
  [(CDPUIController *)self cdpContext:activeContext showError:v15 withDefaultIndex:0 withCompletion:v18];
}

uint64_t __81__CDPUIController_cdpContext_showResetFailedAlertWithUnderlyingError_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_showQuotaStorageAppListView:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__CDPUIController__showQuotaStorageAppListView___block_invoke;
  v3[3] = &unk_278E2B8E8;
  v3[4] = self;
  [(CDPUIController *)self _showQuotaStorageAppListView:a3 andCompletion:v3];
}

void __48__CDPUIController__showQuotaStorageAppListView___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5[3] resetAccountCDPStateWithEscapeOptionsOffered:objc_msgSend(v5[19] andSetSecret:{"escapeOffersPresented"), v6}];
  }

  else
  {
    [v5 cancelTapped:*(a1 + 32)];
  }
}

- (void)_showQuotaStorageAppListView:(id)a3 andCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 urlRequest];
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIController _showQuotaStorageAppListView:v8 andCompletion:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x277D46220]);
  storageAppListRemoteUIController = self->_storageAppListRemoteUIController;
  self->_storageAppListRemoteUIController = v10;

  [self->_storageAppListRemoteUIController setDelegate:self];
  v12 = self->_storageAppListRemoteUIController;
  v13 = [(CDPUIController *)self _noRecoveryFactorsBaseController];
  [(RemoteUIController *)v12 setHostViewController:v13];

  objc_initWeak(&location, self);
  v14 = self->_storageAppListRemoteUIController;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727;
  v20[3] = &unk_278E2B930;
  objc_copyWeak(&v22, &location);
  v15 = v7;
  v21 = v15;
  v16 = [(RemoteUIController *)v14 setHandlerForElementsMatching:&__block_literal_global_717 handler:v20];
  v17 = self->_storageAppListRemoteUIController;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_729;
  v18[3] = &unk_278E2B980;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  [(RemoteUIController *)v17 loadRequest:v8 completion:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

uint64_t __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"action"];

  if ([@"dismiss" isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [@"user_wants:cdp_reset" isEqualToString:v4];
  }

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v2 attributes];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_debug_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEBUG, "iCSS Quota: Elements matches: %{BOOL}d, action = %@, all attributes %@", v9, 0x1Cu);
  }

  return v5;
}

void __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_1();
  }

  v9 = [v7 objectForKeyedSubscript:@"action"];
  if ([@"dismiss" isEqualToString:v9])
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_4();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v12 = [@"user_wants:cdp_reset" isEqualToString:v9];
    WeakRetained = _CDPLogSystem();
    v13 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v13)
      {
        __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_3();
      }

      v14 = objc_loadWeakRetained((a1 + 40));
      WeakRetained = v14;
      if (v14)
      {
        [v14 _disableUserInteractionAndStartSpinner];
        [WeakRetained _handleResetActionWithCompletion:*(a1 + 32)];
      }
    }

    else if (v13)
    {
      __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_2();
    }
  }
}

void __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_729(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "iCSS Quota: Successfully loaded storageAppList remote UI!", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEFAULT, "iCSS Quota: Unable to load storageAppList remote UI: %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained _quotaScreenRPDErrorWithUnderlyingError:v5];
      v10 = *(*(a1 + 32) + 80);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_730;
      v12[3] = &unk_278E2B958;
      v6 = v6;
      v13 = v6;
      v14 = v9;
      v11 = v9;
      [v6 cdpContext:v10 showError:v11 withCompletion:v12];
    }
  }
}

- (void)_handleResetActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFD480];
  v6 = [(CDPContext *)self->_activeContext dsid];
  v7 = [v6 stringValue];
  LODWORD(v5) = [v5 isICDPEnabledForDSID:v7];

  if (v5 && ([MEMORY[0x277CFD4F8] sharedInstance], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasLocalSecret"), v8, (v9 & 1) == 0))
  {
    activeContext = self->_activeContext;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__CDPUIController__handleResetActionWithCompletion___block_invoke;
    v11[3] = &unk_278E2B9A8;
    v12 = v4;
    [(CDPUIController *)self cdpContext:activeContext createLocalSecretWithCompletion:v11];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __52__CDPUIController__handleResetActionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "Created local secret successfully in CDPUIController", v10, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__CDPUIController__handleResetActionWithCompletion___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (id)_quotaScreenRPDErrorWithUnderlyingError:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = CDPLocalizedString();
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v6 = CDPLocalizedString();
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v8 = [v7 localizedString];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA480]];

  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v10 = _CDPStateError();

  return v10;
}

- (void)_disableUserInteractionAndStartSpinner
{
  v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v4 = [(UINavigationController *)self->_navController topViewController];
  v5 = [v4 navigationItem];
  [v3 startAnimatingInNavItem:v5 forIdentifier:@"cdpuicontroller" hideBackButton:1];

  v7 = [(UINavigationController *)self->_navController topViewController];
  v6 = [v7 view];
  [v6 setUserInteractionEnabled:0];
}

- (void)_enableUserInteractionAndStopSpinner
{
  v2 = [(UINavigationController *)self->_navController topViewController];
  v3 = [v2 view];
  [v3 setUserInteractionEnabled:1];

  v4 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [v4 stopAnimatingForIdentifier:@"cdpuicontroller"];
}

- (id)_iCloudDeleteConfirmationViewController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CDPUIInfoViewModel);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ICLOUD_DELETED_CONFIRM_VIEW_TITLE" inTable:@"Localizable-Walrus"];
  v7 = [v6 localizedString];
  [(CDPUIInfoViewModel *)v5 setTitle:v7];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ICLOUD_DELETED_CONFIRM_VIEW_MESSAGE" inTable:@"Localizable-Walrus"];
  v9 = [v8 localizedString];
  [(CDPUIInfoViewModel *)v5 setMessage:v9];

  objc_initWeak(&location, self);
  v10 = objc_alloc_init(CDPEscapeOption);
  v11 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ICLOUD_DELETED_CONFIRM_DONE_BUTTON_TITLE" inTable:@"Localizable-Walrus"];
  v12 = [v11 localizedString];
  [(CDPEscapeOption *)v10 setTitle:v12];

  [(CDPEscapeOption *)v10 setTitleTelemetryKey:*MEMORY[0x277CFD978]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__CDPUIController__iCloudDeleteConfirmationViewController___block_invoke;
  v16[3] = &unk_278E2B9D0;
  objc_copyWeak(&v18, &location);
  v13 = v4;
  v17 = v13;
  [(CDPEscapeOption *)v10 setEscapeAction:v16];
  [(CDPUIInfoViewModel *)v5 setOption1:v10];
  v14 = [[CDPUIInfoViewController alloc] initWithViewModel:v5];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v14;
}

void __59__CDPUIController__iCloudDeleteConfirmationViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "iCSS Quota: Done", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CDPUIController__iCloudDeleteConfirmationViewController___block_invoke_746;
  v4[3] = &unk_278E2B118;
  v5 = *(a1 + 32);
  [WeakRetained _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v4];
}

- (id)_buildQuotaRequest
{
  if (self->_isWalrusEnabled)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = !self->_isWalrusEnabled;
  v4 = [CDPQuotaStorageAppListRequest alloc];
  v5 = [MEMORY[0x277CFD480] sharedInstance];
  v6 = [v5 primaryAppleAccount];
  v7 = [(CDPQuotaStorageAppListRequest *)v4 initWithAccount:v6 appList:v2 contentSpecifiesE2EE:v3];

  return v7;
}

- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v6 = MEMORY[0x277CE4508];
  v7 = a5;
  v8 = a4;
  v10 = objc_alloc_init(v6);
  v9 = [v10 validateCertificateTrustWithChallenge:v8 type:0];

  v7[2](v7, v9, 0);
}

- (BOOL)_isQuotaServiceHost:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:@"quota.icloud.com"] & 1) != 0 || objc_msgSend(v3, "rangeOfString:options:", @"p\\d{2}-quota.icloud.com", 1024) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)_canShowRPD
{
  if ([MEMORY[0x277CFD560] shouldCentralizeRPDFlow])
  {
    ledger = self->_ledger;

    return [(CDPRPDLedger *)ledger canOfferRPD];
  }

  else
  {
    v5 = [MEMORY[0x277CFD480] sharedInstance];
    v6 = [v5 rpdProbationIsInEffectForDuration:self->_activeContext context:self->_rpdProbationDuration];

    return v6;
  }
}

- (void)remoteSecretEntryDidAcceptValidSecret
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "Remote secret entry accepted valid secret", v4, 2u);
  }

  if (![(CDPUIController *)self forceInlinePresentation])
  {
    [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
  }
}

- (void)remoteSecretEntryDidRequestCancellation
{
  if (self->_rootViewController)
  {
    [(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator cancelApproveFromAnotherDevice];
    if (![(CDPUIController *)self forceInlinePresentation])
    {
      [(CDPUIController *)self _dismissPresentedViewControllerCompletion:0];
    }

    remoteSecretValidator = self->_remoteSecretValidator;
    v4 = _CDPStateError();
    [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator cancelValidationWithError:v4];
  }
}

- (void)remoteSecretEntryDidExceedMaximumAttempts
{
  if (self->_rootViewController)
  {
    [(CDPUIController *)self _dismissPresentedViewControllerWithReason:0 completion:&__block_literal_global_757];
  }
}

void __60__CDPUIController_remoteSecretEntryDidExceedMaximumAttempts__block_invoke()
{
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2451DB000, v0, OS_LOG_TYPE_DEFAULT, "UI dismissed", v1, 2u);
  }
}

- (void)remoteSecretEntryDidRequestAccountReset
{
  if (self->_rootViewController)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __58__CDPUIController_remoteSecretEntryDidRequestAccountReset__block_invoke;
    v2[3] = &unk_278E2AF90;
    v2[4] = self;
    [(CDPUIController *)self _dismissPresentedViewControllerWithReason:0 completion:v2];
  }
}

uint64_t __58__CDPUIController_remoteSecretEntryDidRequestAccountReset__block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "UI dismissed, resetting account state", v4, 2u);
  }

  return [*(*(a1 + 32) + 24) resetAccountCDPStateWithEscapeOptionsOffered:{objc_msgSend(*(*(a1 + 32) + 152), "escapeOffersPresented")}];
}

- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)a3 newestDevice:(id)a4
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [CDPUIController remoteSecretEntryDidRequestAccountRecoveryFromViewController:newestDevice:];
  }
}

- (void)remoteSecretEntryDidRequestDeviceSelection
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__CDPUIController_remoteSecretEntryDidRequestDeviceSelection__block_invoke;
  v2[3] = &unk_278E2B488;
  v2[4] = self;
  [(CDPUIController *)self _setupDevicePickerController:v2];
}

uint64_t __61__CDPUIController_remoteSecretEntryDidRequestDeviceSelection__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 56) pushViewController:a2 animated:1];
  v3 = *(*(a1 + 32) + 152);

  return [v3 insert:2];
}

- (void)remoteSecretEntryDidFinishValidationWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rootViewController)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__CDPUIController_remoteSecretEntryDidFinishValidationWithError___block_invoke;
    v6[3] = &unk_278E2B2D0;
    v6[4] = self;
    v7 = v4;
    [(CDPUIController *)self _dismissPresentedViewControllerWithReason:0 completion:v6];
  }
}

uint64_t __65__CDPUIController_remoteSecretEntryDidFinishValidationWithError___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2451DB000, v2, OS_LOG_TYPE_DEFAULT, "UI dismissed, cancelling validation", v4, 2u);
  }

  return [*(*(a1 + 32) + 24) cancelValidationWithError:*(a1 + 40)];
}

- (void)remoteSecretEntryDidRequestRecoveryKeyEscapeAction
{
  v3 = [(CDPUIController *)self recoveryKeyEntryControllerForCircleJoinWithCancel:0 supportedEscapeOfferMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
  [(UINavigationController *)self->_navController pushViewController:v3 animated:1];
  [(CDPRPDLedger *)self->_ledger insert:32];
}

- (void)remoteSecretEntryDidRequestCustodianRecoveryEscapeAction
{
  v3 = [(CDPUIController *)self _custodianAskHelpViewControllerWithSupportedEscapeOfferMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
  [(UINavigationController *)self->_navController pushViewController:v3 animated:1];
  [(CDPRPDLedger *)self->_ledger insert:64];
}

- (void)remoteSecretEntryDidRequestAccountResetEscapeActionForDevice:(id)a3
{
  remoteSecretValidator = self->_remoteSecretValidator;
  v5 = a3;
  v6 = [(CDPRemoteDeviceSecretValidator *)remoteSecretValidator supportedEscapeOfferMask];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v8 = [v5 modelClass];
  v9 = [v7 addDeviceClass:v8];
  v10 = [v9 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v25 = [v10 localizedString];

  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_DONT_KNOW_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v13 = [v12 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v14 = [v13 localizedString];
  v15 = [v5 localizedName];
  v16 = [v11 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];

  v17 = CDPLocalizedString();
  v18 = [(CDPUIController *)self _iCSCSkipOrDeleteiCloudDataEscapeOfferWithTitle:v25 message:v16 skipButtonTitle:v17 supportedEscapeOfferMask:v6 withDevice:v5];
  v19 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v20 = [v5 modelClass];
  v21 = [v19 addDeviceClass:v20];
  v22 = [v5 localSecretType];

  v23 = [v21 addSecretType:v22];
  v24 = [v23 localizedString];
  [v18 setEscapeOfferName:v24];

  [v18 setPresentingViewController:self->_navController];
  [v18 handleEscapeAction:self];
}

- (void)remoteSecretEntryDidRequestDeviceSelectionEscapeAction
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __73__CDPUIController_remoteSecretEntryDidRequestDeviceSelectionEscapeAction__block_invoke;
  v2[3] = &unk_278E2B488;
  v2[4] = self;
  [(CDPUIController *)self _setupDevicePickerController:v2];
}

uint64_t __73__CDPUIController_remoteSecretEntryDidRequestDeviceSelectionEscapeAction__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 56) pushViewController:a2 animated:1];
  v3 = *(*(a1 + 32) + 152);

  return [v3 insert:2];
}

- (void)remoteSecretEntryDidRequestSkipEscapeActionForDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v6 = [v4 modelClass];
  v7 = [v5 addDeviceClass:v6];
  v8 = [v7 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v9 = [v8 localizedString];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_DONT_KNOW_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v12 = [v11 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v13 = [v12 localizedString];
  v14 = [v4 localizedName];
  v15 = [v10 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];

  v26 = CDPLocalizedString();
  v16 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_activeContext];
  [(CDPRemoteValidationEscapeOffer *)v16 setTitle:v9];
  v25 = v15;
  [(CDPRemoteValidationEscapeOffer *)v16 setMessage:v15];
  objc_initWeak(&location, self);
  v17 = objc_alloc_init(CDPEscapeOption);
  [(CDPEscapeOption *)v17 setStyle:3];
  [(CDPEscapeOption *)v17 setTitle:v26];
  [(CDPEscapeOption *)v17 setTitleTelemetryKey:*MEMORY[0x277CFDA48]];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__CDPUIController_remoteSecretEntryDidRequestSkipEscapeActionForDevice___block_invoke;
  v27[3] = &unk_278E2B4B0;
  objc_copyWeak(&v28, &location);
  [(CDPEscapeOption *)v17 setEscapeAction:v27];
  v24 = v9;
  [(CDPRemoteValidationEscapeOffer *)v16 addEscapeOptionsObject:v17];
  v18 = +[CDPEscapeOption cancelOption];
  [v18 setStyle:0];
  [(CDPRemoteValidationEscapeOffer *)v16 addEscapeOptionsObject:v18];
  v19 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v20 = [v4 modelClass];
  v21 = [v19 addDeviceClass:v20];
  v22 = [v21 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v23 = [v22 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v16 setEscapeOfferName:v23];

  [(CDPRemoteValidationEscapeOffer *)v16 setPresentingViewController:self->_navController];
  [(CDPRemoteValidationEscapeOffer *)v16 handleEscapeAction:self];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __72__CDPUIController_remoteSecretEntryDidRequestSkipEscapeActionForDevice___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__CDPUIController__showTryAgainLaterConfirmationAlertWithViewController___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEscapeOfferSelectedEvent:*MEMORY[0x277CFDA48]];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__CDPUIController_remoteSecretEntryDidRequestSkipEscapeActionForDevice___block_invoke_761;
    v5[3] = &unk_278E2AF90;
    v6 = v4;
    [v6 _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentCompleted" completion:v5];
  }
}

void __72__CDPUIController_remoteSecretEntryDidRequestSkipEscapeActionForDevice___block_invoke_761(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (void)remoteSecretEntryDidRequestPiggybackingEscapeAction
{
  v3 = [(CDPUIController *)self _piggybackingViewControllerWithSupportedEscapeOfferMask:[(CDPRemoteDeviceSecretValidator *)self->_remoteSecretValidator supportedEscapeOfferMask]];
  [(UINavigationController *)self->_navController pushViewController:v3 animated:1];
  [(CDPRPDLedger *)self->_ledger insert:128];
}

- (void)remoteSecretEntryDidRequestDisableUserInteractionAndStartSpinner
{
  if (self->_hostingController)
  {
    if (([MEMORY[0x277CFD560] isNaturalUIEnabled] & 1) == 0)
    {
      v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
      v4 = [(UIViewController *)self->_hostingController navigationItem];
      [v3 startAnimatingInNavItem:v4 forIdentifier:@"remoteSecretValidator" hideBackButton:1];
    }

    v5 = [(UIViewController *)self->_hostingController view];
    [v5 setUserInteractionEnabled:0];

    cancelButtonForSwiftUIHostingController = self->_cancelButtonForSwiftUIHostingController;
    if (cancelButtonForSwiftUIHostingController)
    {

      [(UIBarButtonItem *)cancelButtonForSwiftUIHostingController setEnabled:0];
    }
  }
}

- (void)remoteSecretEntryDidRequestEnableUserInteractionAndStopSpinner
{
  hostingController = self->_hostingController;
  if (hostingController)
  {
    v4 = [(UIViewController *)hostingController view];
    [v4 setUserInteractionEnabled:1];

    cancelButtonForSwiftUIHostingController = self->_cancelButtonForSwiftUIHostingController;
    if (cancelButtonForSwiftUIHostingController)
    {
      [(UIBarButtonItem *)cancelButtonForSwiftUIHostingController setEnabled:1];
    }

    if (([MEMORY[0x277CFD560] isNaturalUIEnabled] & 1) == 0)
    {
      v6 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
      [v6 stopAnimatingForIdentifier:@"remoteSecretValidator"];
    }

    doneButtonForSwiftUIHostingController = self->_doneButtonForSwiftUIHostingController;
    if (doneButtonForSwiftUIHostingController)
    {
      v8 = [(UIViewController *)self->_hostingController navigationItem];
      [v8 setRightBarButtonItem:doneButtonForSwiftUIHostingController];

      v9 = self->_doneButtonForSwiftUIHostingController;

      [(UIBarButtonItem *)v9 setEnabled:0];
    }
  }
}

- (void)remoteSecretEntryDidRequestDisableUserInteraction
{
  hostingController = self->_hostingController;
  if (hostingController)
  {
    v4 = [(UIViewController *)hostingController navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      v6 = [(UIViewController *)self->_hostingController navigationItem];
      v7 = [v6 rightBarButtonItem];
      doneButtonForSwiftUIHostingController = self->_doneButtonForSwiftUIHostingController;
      self->_doneButtonForSwiftUIHostingController = v7;

      v9 = self->_doneButtonForSwiftUIHostingController;

      [(UIBarButtonItem *)v9 setEnabled:0];
    }
  }
}

- (void)remoteSecretEntryDidRequestEnableUserInteraction
{
  if (self->_hostingController)
  {
    doneButtonForSwiftUIHostingController = self->_doneButtonForSwiftUIHostingController;
    if (doneButtonForSwiftUIHostingController)
    {
      [(UIBarButtonItem *)doneButtonForSwiftUIHostingController setEnabled:1];
    }
  }
}

- (void)presentQuotaScreenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPUIController *)self _buildQuotaRequest];
  [(CDPUIController *)self presentQuotaScreenForRequest:v5 completion:v4];
}

- (void)presentQuotaScreenForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CDPUIController *)self _enableUserInteractionAndStopSpinner];
  if ([v6 isUrlAvailable])
  {
    [(CDPUIController *)self _showQuotaStorageAppListView:v6 andCompletion:v7];
  }

  else
  {
    v8 = objc_initWeak(&location, self);
    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_ALERT_TITLE" inTable:@"Localizable-Walrus"];
    v11 = [v10 localizedString];
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v14 = [v9 alertControllerWithTitle:v11 message:0 preferredStyle:(v13 & 0xFFFFFFFFFFFFFFFBLL) == 1];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_DELETE_BUTTON_TITLE" inTable:@"Localizable-Walrus"];
    v17 = [v16 localizedString];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__CDPUIController_presentQuotaScreenForRequest_completion___block_invoke;
    v23[3] = &unk_278E2BA18;
    v18 = self;
    v24 = v18;
    v25 = v7;
    v19 = [v15 actionWithTitle:v17 style:2 handler:v23];

    [v14 addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = CDPLocalizedString();
    v22 = [v20 actionWithTitle:v21 style:1 handler:0];
    [v14 addAction:v22];

    [(UINavigationController *)v18->_navController presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&location);
  }
}

uint64_t __59__CDPUIController_presentQuotaScreenForRequest_completion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __112__CDPUIController__skipOrDeleteiCloudDataEscapeOfferWithTitle_message_skipButtonTitle_supportedEscapeOfferMask___block_invoke_691_cold_1();
  }

  return [*(a1 + 32) _handleResetActionWithCompletion:*(a1 + 40)];
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIController dealloc];
  }

  v4.receiver = self;
  v4.super_class = CDPUIController;
  [(CDPUIController *)&v4 dealloc];
}

- (CDPUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_dismissPresentedViewControllerCompletion:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 presentingViewController];
  v3 = [a1 presentingViewController];
  v4 = [v3 presentedViewController];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_dismissPresentedViewControllerCompletion:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 presentingViewController];
  v3 = [a1 presentingViewController];
  v4 = [v3 presentedViewController];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __53__CDPUIController__presentRootController_completion___block_invoke_49_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__CDPUIController__presentRootController_completion___block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CDPUIController_cdpContext_promptForLocalSecretWithCompletion___block_invoke_2_191_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__CDPUIController__presentSwiftUIRemoteSecretPromptWithDevice_didSelectDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__CDPUIController__presentRemoteSecretControllerWithNewestDevice___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cdpContext:(void *)a1 promptForAdoptionOfMultipleICSC:.cold.1(void *a1)
{
  v1 = [a1 presentingViewController];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_386_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_387_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __99__CDPUIController__piggybackingSendCodeEscapeOfferWithSupportedEscapeOffers_title_localizationKey___block_invoke_390_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__CDPUIController_attemptToJoinCircleWithPiggybacking_mask___block_invoke_403_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_563_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__CDPUIController__custodianCodeEntryViewControllerWithController_supportedEscapeOfferMask___block_invoke_564_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__CDPUIController__validateCustodianRecoveryInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)keychainSyncController:didFinishWithResult:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__CDPUIController_keychainSyncController_didFinishWithResult_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_skipOrDeleteiCloudDataEscapeOfferWithTitle:(void *)a1 message:(uint64_t)a2 skipButtonTitle:supportedEscapeOfferMask:.cold.2(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_showQuotaStorageAppListView:(void *)a1 andCompletion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 debugDescription];
  v5 = [a1 allHTTPHeaderFields];
  v6 = [v5 debugDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_2451DB000, a2, OS_LOG_TYPE_DEBUG, "iCSS Quota: StorageAppList Request: %@ Headers: %@", &v7, 0x16u);
}

void __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__CDPUIController__showQuotaStorageAppListView_andCompletion___block_invoke_727_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__CDPUIController__handleResetActionWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end