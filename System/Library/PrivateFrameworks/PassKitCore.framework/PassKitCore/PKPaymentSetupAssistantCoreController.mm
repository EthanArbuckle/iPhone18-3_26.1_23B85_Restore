@interface PKPaymentSetupAssistantCoreController
+ (id)requiredPaymentSetupFileURLs;
- (BOOL)_bridgeNeedsToRun:(unint64_t *)run;
- (BOOL)_hasManuallyAddedSecureElementPasses:(BOOL)passes;
- (BOOL)_macNeedsToRun:(unint64_t *)run;
- (BOOL)_phoneNeedsToRun:(unint64_t *)run;
- (BOOL)_setupAssistantNeedsToRunReturningRequirements:(unint64_t *)requirements;
- (PKPaymentSetupAssistantCoreController)initWithSetupAssistantContext:(id)context;
- (id)_bridgeContextDefaultLocalCredential;
- (id)_defaultWebService;
- (id)_peerPaymentCredential;
- (id)_provisioningContextWithProvisioningController:(id)controller setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable;
- (id)_provisioningControllerWithWebService:(id)service;
- (id)_setupAssistantCredentialForPaymentCredential:(id)credential;
- (id)_setupAssistantCredentialForPaymentPass:(id)pass;
- (unint64_t)_specialCaseSEPassCountInPassLibrary:(id)library;
- (void)_expressCardRemovalProvisioningContext:(id)context;
- (void)_expressSetupProvisioningContext:(id)context;
- (void)_extendedSetupAssistantNeedsToRunWithCompletion:(id)completion;
- (void)_preflightPaymentSetupProvisioningController:(id)controller completion:(id)completion;
- (void)_shouldRunAppleCashFlow:(BOOL *)flow shouldRunPaymentSetupFlow:(BOOL *)setupFlow pairingFamilyMember:(id)member pairingPeerPaymentAccount:(id)account parentFamilyMember:(id)familyMember parentPeerPaymentAccount:(id)paymentAccount;
@end

@implementation PKPaymentSetupAssistantCoreController

+ (id)requiredPaymentSetupFileURLs
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKRequiredPaymentSetupFileURLs();
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 description];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Returning file URLS for payment setup iCloud restore: %@", &v6, 0xCu);
  }

  return v2;
}

- (PKPaymentSetupAssistantCoreController)initWithSetupAssistantContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupAssistantCoreController;
  v6 = [(PKPaymentSetupAssistantCoreController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setupAssistantContext, context);
    v7->_preflightState = 0;
  }

  return v7;
}

- (void)_extendedSetupAssistantNeedsToRunWithCompletion:(id)completion
{
  completionCopy = completion;
  v24 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = [(PKPaymentSetupAssistantCoreController *)self _setupAssistantNeedsToRunReturningRequirements:&v24];
  if (*(v21 + 24) != 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ((v24 & 1) == 0)
  {
    v5 = 1;
LABEL_5:
    completionCopy[2](completionCopy, v5 & 1);
    goto LABEL_6;
  }

  if ([(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant]!= 1)
  {
    v5 = *(v21 + 24);
    goto LABEL_5;
  }

  _defaultWebService = [(PKPaymentSetupAssistantCoreController *)self _defaultWebService];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentSetupAssistantCoreController__extendedSetupAssistantNeedsToRunWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79DFAF8;
  v18 = &v20;
  v7 = _defaultWebService;
  v16 = v7;
  v8 = completionCopy;
  v17 = v8;
  v19 = v24;
  v9 = _Block_copy(aBlock);
  if (PKNetworkConnectivityAvailable() && [v7 needsConfiguration])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PKPaymentSetupAssistantCoreController__extendedSetupAssistantNeedsToRunWithCompletion___block_invoke_56;
    v10[3] = &unk_1E79DFB20;
    v11 = v9;
    v12 = v8;
    v13 = &v20;
    v14 = v24;
    [v7 configurePaymentServiceWithCompletion:v10];
  }

  else
  {
    v9[2](v9);
  }

LABEL_6:
  _Block_object_dispose(&v20, 8);
}

uint64_t __89__PKPaymentSetupAssistantCoreController__extendedSetupAssistantNeedsToRunWithCompletion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) paymentSetupSupportedInRegion] == 1;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupAssistantCoreController: performed extended needsToRun check and decided not to run", v4, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __89__PKPaymentSetupAssistantCoreController__extendedSetupAssistantNeedsToRunWithCompletion___block_invoke_56(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1 || a3)
  {
    return (*(a1[5] + 16))(a1[5], *(*(a1[6] + 8) + 24), a1[7]);
  }

  else
  {
    return (*(a1[4] + 16))();
  }
}

- (BOOL)_setupAssistantNeedsToRunReturningRequirements:(unint64_t *)requirements
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    setupAssistantContext = self->_setupAssistantContext;
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = setupAssistantContext;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ with context: %@", &v12, 0x16u);
  }

  setupAssistant = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant];
  if (setupAssistant == 2)
  {
    return [(PKPaymentSetupAssistantCoreController *)self _bridgeNeedsToRun:requirements];
  }

  if (setupAssistant == 1)
  {
    return [(PKPaymentSetupAssistantCoreController *)self _phoneNeedsToRun:requirements];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    setupAssistant2 = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant];
    v12 = 134217984;
    v13 = setupAssistant2;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error: _setupAssistantNeedsToRunReturningRequirements called with unsupported type %lu. File a radar!", &v12, 0xCu);
  }

  return 0;
}

- (BOOL)_phoneNeedsToRun:(unint64_t *)run
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [PKSetupAssistantRequirementsChecker alloc];
  v6 = +[PKPaymentWebServiceTargetDevice localTargetDevice];
  v7 = [(PKSetupAssistantRequirementsChecker *)v5 initWithTargetDevice:v6];

  v8 = [(PKSetupAssistantRequirementsChecker *)v7 checkPhoneRequirementsWithContext:self->_setupAssistantContext];
  v9 = v8;
  if (run)
  {
    *run = [v8 missingRequirements];
  }

  v10 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Does Phone Apple Pay Buddy Need to Run?: %{public}@", &v13, 0xCu);
  }

  shouldRun = [v9 shouldRun];
  return shouldRun;
}

- (BOOL)_bridgeNeedsToRun:(unint64_t *)run
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext conformsToProtocol:&unk_1F247CEA8])
  {
    v6 = self->_setupAssistantContext;
    parentFamilyMember = [(PKPaymentSetupAssistantContextProtocol *)v6 parentFamilyMember];
    pairingFamilyMember = [(PKPaymentSetupAssistantContextProtocol *)v6 pairingFamilyMember];
    if (pairingFamilyMember)
    {
      v9 = parentFamilyMember == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      watchPeerPaymentWebService = [getNPKCompanionAgentConnectionClass_4[0]() watchPeerPaymentWebService];
      v20 = +[PKPeerPaymentWebService sharedService];
      v32 = watchPeerPaymentWebService;
      targetDevice = [watchPeerPaymentWebService targetDevice];
      account = [targetDevice account];

      targetDevice2 = [v20 targetDevice];
      account2 = [targetDevice2 account];

      v25 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v35 = pairingFamilyMember;
        v36 = 2112;
        v37 = parentFamilyMember;
        v38 = 2112;
        v39 = account;
        v40 = 2112;
        v41 = account2;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Checking if bridge setup assistant needs to run for pairing member %@, parent member %@, and pairingPeerPaymentAccount %@, parentFamilyMember %@", buf, 0x2Au);
      }

      v33 = 0;
      [(PKPaymentSetupAssistantCoreController *)self _shouldRunAppleCashFlow:&v33 shouldRunPaymentSetupFlow:&v33 + 1 pairingFamilyMember:pairingFamilyMember pairingPeerPaymentAccount:account parentFamilyMember:parentFamilyMember parentPeerPaymentAccount:account2];
      if (run)
      {
        *run = 0;
      }

      v18 = v33;
      if (v33 == 1)
      {
        v27 = PKLogFacilityTypeGetObject(0x2AuLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = NSStringFromSelector(a2);
          *buf = 138543362;
          v35 = v28;
          v29 = "%{public}@ returning YES for Apple Cash setup";
LABEL_41:
          _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);

          goto LABEL_42;
        }

        goto LABEL_42;
      }

      if ((v33 & 0x100) == 0)
      {
        v27 = PKLogFacilityTypeGetObject(0x2AuLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = NSStringFromSelector(a2);
          *buf = 138543362;
          v35 = v28;
          v29 = "%{public}@ returning NO due to bad configuration";
          goto LABEL_41;
        }

LABEL_42:

        return v18;
      }
    }
  }

  if (!PKDaemonIsAvailable() || (PKStoreDemoModeEnabled() & 1) != 0 || ![getNPKCompanionAgentConnectionClass_4[0]() isSetupAssistantProvisioningSupported])
  {
    v16 = 0;
    v18 = 0;
    if (!run)
    {
      return v18;
    }

LABEL_20:
    *run = v16;
    return v18;
  }

  v10 = +[PKPaymentWebServiceTargetDevice localTargetDevice];
  appleAccountInformation = [v10 appleAccountInformation];

  aidaAccountAvailable = [appleAccountInformation aidaAccountAvailable];
  aaAlternateDSID = [appleAccountInformation aaAlternateDSID];
  v14 = PKIsBeneficiaryAccountWithAltDsid(aaAlternateDSID);

  if (v14)
  {
    v15 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "AppleIDAuth account is beneficiary account", buf, 2u);
    }
  }

  v16 = aidaAccountAvailable ^ 1u;
  if ([appleAccountInformation isManagedAppleAccount])
  {
    v17 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "AppleIDAuth account is managed", buf, 2u);
    }

    v18 = 0;
  }

  else
  {
    v18 = v14 ^ 1;
    v17 = PKLogFacilityTypeGetObject(0x2AuLL);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v30 = @"NO";
    if (aidaAccountAvailable)
    {
      v30 = @"YES";
    }

    *buf = 138543362;
    v35 = v30;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "AppleIDAuth account for primary Apple Account: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = (aidaAccountAvailable ^ 1u);
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Does Bridge Apple Pay Buddy Need to Run?: YES (Requirements mask %li)", buf, 0xCu);
  }

  if (run)
  {
    goto LABEL_20;
  }

  return v18;
}

- (BOOL)_macNeedsToRun:(unint64_t *)run
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[PKPaymentWebServiceTargetDevice localTargetDevice];
  v6 = [[PKSetupAssistantRequirementsChecker alloc] initWithTargetDevice:v5];
  v7 = [(PKSetupAssistantRequirementsChecker *)v6 checkMacRequirementsWithContext:self->_setupAssistantContext];
  v8 = v7;
  if (run)
  {
    *run = [v7 missingRequirements];
  }

  v9 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Does Mac Apple Pay Buddy Need to Run?: %{public}@", &v12, 0xCu);
  }

  shouldRun = [v8 shouldRun];
  return shouldRun;
}

- (void)_preflightPaymentSetupProvisioningController:(id)controller completion:(id)completion
{
  v77 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (completionCopy)
  {
    if (controllerCopy)
    {
      webService = [controllerCopy webService];
      v43 = webService;
      if (webService)
      {
        targetDevice = [webService targetDevice];
        if (-[PKPaymentSetupAssistantContextProtocol setupAssistant](self->_setupAssistantContext, "setupAssistant") != 2 && (objc_opt_respondsToSelector() & 1) != 0 && ([targetDevice currentPassbookState] & 2) != 0)
        {
          v38 = PKLogFacilityTypeGetObject(0x2AuLL);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v73 = 138412290;
            *&v73[4] = v11;
            _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "%@ Preflight Error: Wallet deleted from device, we should not be presented during Buddy", v73, 0xCu);
          }

          (*(completionCopy + 2))(completionCopy, 0, 0);
        }

        else
        {
          objc_storeStrong(&self->_provisioningController, controller);
          self->_preflightState = 0;
          v65[0] = 0;
          v65[1] = v65;
          v65[2] = 0x2020000000;
          v66 = 0;
          v13 = MEMORY[0x1E69E96A0];
          v14 = MEMORY[0x1E69E96A0];
          *v73 = 0;
          *&v73[8] = v73;
          *&v73[16] = 0x3032000000;
          v74 = __Block_byref_object_copy__70;
          v75 = __Block_byref_object_dispose__70;
          v76 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);
          setupAssistant = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant];
          v16 = *(*&v73[8] + 40);
          if (setupAssistant == 2)
          {
            v17 = 80000000000;
          }

          else
          {
            v17 = 59000000000;
          }

          v18 = dispatch_time(0, v17);
          dispatch_source_set_timer(v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke;
          aBlock[3] = &unk_1E79DFB48;
          objc_copyWeak(v63, &location);
          v19 = v11;
          v56 = v19;
          v63[1] = a2;
          v61 = v73;
          v62 = v65;
          v60 = completionCopy;
          v20 = v43;
          v57 = v20;
          v58 = targetDevice;
          v21 = controllerCopy;
          v59 = v21;
          v22 = _Block_copy(aBlock);
          v41 = v11;
          v23 = *(*&v73[8] + 40);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_141;
          handler[3] = &unk_1E79DFB70;
          v24 = v19;
          v52 = v24;
          v54 = v73;
          v25 = v22;
          v53 = v25;
          dispatch_source_set_event_handler(v23, handler);
          dispatch_resume(*(*&v73[8] + 40));
          [v20 supportedRegionFeatureOfType:14 didFailOSVersionRequirements:0];
          v40 = v50 = 0;
          v26 = [v40 createProductsRequestWithIsFetchBlocked:&v50];
          if (v26 && (v50 & 1) == 0)
          {
            [v21 setFetchProductsFromStaticDataSource:1];
          }

          [v21 setFetchCardsOnFileExtendedAuthorization:1];
          v39 = v26;
          v27 = PKLogFacilityTypeGetObject(0x2AuLL);
          v11 = v41;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            setupAssistantContext = self->_setupAssistantContext;
            v29 = NSStringFromSelector(a2);
            *buf = 138412802;
            v68 = v24;
            v69 = 2112;
            v70 = setupAssistantContext;
            v71 = 2112;
            v72 = v29;
            _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "%@ Start controller preflight with context %@. %@", buf, 0x20u);

            v11 = v41;
          }

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_142;
          v44[3] = &unk_1E79DFBC0;
          objc_copyWeak(v49, &location);
          v30 = v24;
          v49[1] = a2;
          v45 = v30;
          selfCopy = self;
          v31 = v25;
          v48 = v31;
          v47 = v21;
          [v47 preflightWithRequirements:173 completionRequirements:173 completion:v44];

          objc_destroyWeak(v49);
          objc_destroyWeak(v63);
          objc_destroyWeak(&location);
          _Block_object_dispose(v73, 8);

          _Block_object_dispose(v65, 8);
        }
      }

      else
      {
        v36 = PKLogFacilityTypeGetObject(0x2AuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = NSStringFromSelector(a2);
          *v73 = 138412546;
          *&v73[4] = v11;
          *&v73[12] = 2112;
          *&v73[14] = v37;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "%@ Preflight Error: No webservice for Buddy provisioning preflight in %@", v73, 0x16u);
        }

        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }

    else
    {
      v34 = PKLogFacilityTypeGetObject(0x2AuLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = NSStringFromSelector(a2);
        *v73 = 138412546;
        *&v73[4] = v11;
        *&v73[12] = 2112;
        *&v73[14] = v35;
        _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "%@ Preflight Error: No controller for Buddy provisioning preflight in %@", v73, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v32 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = NSStringFromSelector(a2);
      *v73 = 138412546;
      *&v73[4] = v11;
      *&v73[12] = 2112;
      *&v73[14] = v33;
      _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "%@ Preflight Error: No completion for Buddy provisioning preflight in %@", v73, 0x16u);
    }
  }
}

void __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke(uint64_t a1, char a2)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (!WeakRetained)
  {
    v5 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 96));
      *v35 = 138412546;
      *&v35[4] = v6;
      *&v35[12] = 2112;
      *&v35[14] = v7;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@ Preflight completion should be safe to finish, but unable to store preflight state as self no longer exists. %@", v35, 0x16u);
    }
  }

  v8 = *(*(*(a1 + 72) + 8) + 40);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = *(*(a1 + 80) + 8);
  if (*(v11 + 24) == 1)
  {
    v12 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = NSStringFromSelector(*(a1 + 96));
      *v35 = 138412546;
      *&v35[4] = v13;
      *&v35[12] = 2112;
      *&v35[14] = v14;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%@ Preflight already being handled. Bailing out. %@", v35, 0x16u);
    }

    goto LABEL_43;
  }

  *(v11 + 24) = 1;
  if (a2)
  {
    v12 = [*(a1 + 40) context];
    v15 = [*(a1 + 48) deviceRegion];
    v16 = [v12 configuration];
    if (([v16 buddyProvisioningEnabledForRegion:v15] & 1) == 0)
    {
      v23 = PKLogFacilityTypeGetObject(0x2AuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *v35 = 138412546;
        *&v35[4] = v24;
        *&v35[12] = 2112;
        *&v35[14] = v15;
        v25 = "%@ Preflight. Buddy provisioning disabled for region: %@";
LABEL_40:
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, v25, v35, 0x16u);
      }

LABEL_41:

      v33 = *(*(a1 + 64) + 16);
LABEL_42:
      v33();

LABEL_43:
      goto LABEL_44;
    }

    if (![v16 buddyManualProvisioningEnabledForRegion:v15])
    {
LABEL_31:
      v29 = [*(a1 + 56) associatedCredentials];
      v30 = [v29 count];

      if (v30)
      {
        if (WeakRetained)
        {
          v27 = 2;
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v23 = PKLogFacilityTypeGetObject(0x2AuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        *v35 = 138412546;
        *&v35[4] = v34;
        *&v35[12] = 2112;
        *&v35[14] = v15;
        v25 = "%@ Preflight. Manual provisioning disabled for region: %@, and 0 cards on file.";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if ([*(a1 + 56) isCurrentUserUnder13] == 1)
    {
      v17 = PKLogFacilityTypeGetObject(0x2AuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *v35 = 138412290;
        *&v35[4] = v18;
        v19 = "%@ Preflight. Manual provisioning disabled for because user is child.";
LABEL_29:
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v19, v35, 0xCu);
      }
    }

    else
    {
      if (![v16 browseProvisioningBankAppsEnabledForRegion:v15])
      {
        if ([*(a1 + 40) paymentSetupSupportedInRegion] == 1)
        {
          if (WeakRetained)
          {
            v27 = 6;
LABEL_34:
            WeakRetained[3] |= v27;
          }

LABEL_35:
          v31 = PKLogFacilityTypeGetObject(0x2AuLL);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            *v35 = 138412290;
            *&v35[4] = v32;
            _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "%@ Preflight completed successfully!", v35, 0xCu);
          }

          v33 = *(*(a1 + 64) + 16);
          goto LABEL_42;
        }

        v17 = PKLogFacilityTypeGetObject(0x2AuLL);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        v28 = *(a1 + 32);
        *v35 = 138412290;
        *&v35[4] = v28;
        v19 = "%@ Preflight. Manual provisioning disabled because region is not supported.";
        goto LABEL_29;
      }

      v17 = PKLogFacilityTypeGetObject(0x2AuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        *v35 = 138412290;
        *&v35[4] = v26;
        v19 = "%@ Preflight. Manual provisioning disabled because region has browse banks enabled.";
        goto LABEL_29;
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v20 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v22 = NSStringFromSelector(*(a1 + 96));
    *v35 = 138412546;
    *&v35[4] = v21;
    *&v35[12] = 2112;
    *&v35[14] = v22;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "%@ Preflight did not succeed, return. %@", v35, 0x16u);
  }

  (*(*(a1 + 64) + 16))();
LABEL_44:
}

uint64_t __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_141(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "%@ Error: Preflight timeout called", &v9, 0xCu);
  }

  v4 = objc_alloc_init(_MergedGlobals_181());
  v5 = off_1ED6D1190();
  [v4 didCompleteFlow:v5];

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  return (*(a1[5] + 16))();
}

void __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_142(uint64_t a1, char a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 3) |= 1uLL;
    v8 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(*(a1 + 40) + 8);
      v11 = NSStringFromSelector(*(a1 + 72));
      *buf = 138413058;
      v36 = v9;
      v37 = 2112;
      v38 = v10;
      v39 = 2112;
      v40 = v5;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ Controller preflighted with context %@. Error: %@. %@", buf, 0x2Au);
    }

    if (v5 || (a2 & 1) == 0)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412546;
        v36 = v25;
        v37 = 2112;
        v38 = v26;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ Preflight failed, return. %@", buf, 0x16u);
      }

      v27 = *(*(a1 + 56) + 16);
      goto LABEL_23;
    }

    v12 = [*(*(a1 + 40) + 8) setupAssistant];
    if (v12 == 2)
    {
      v28 = [*(a1 + 48) associatedCredentials];
      if ([v28 count])
      {
      }

      else
      {
        v29 = [*(a1 + 48) isProvisioningForAltAccount];

        if ((v29 & 1) == 0)
        {
          v13 = [v7 _bridgeContextDefaultLocalCredential];
LABEL_9:
          v14 = v13;
          if (v13)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v14 longDescription];
              v16 = *(a1 + 32);
              v17 = NSStringFromSelector(*(a1 + 72));
              *buf = 138412802;
              v36 = v15;
              v37 = 2112;
              v38 = v16;
              v39 = 2112;
              v40 = v17;
              _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ Preflight, associating credentials %@. %@", buf, 0x20u);
            }

            v18 = *(a1 + 48);
            v34 = v14;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_144;
            v30[3] = &unk_1E79DFB98;
            v20 = *(a1 + 32);
            v21 = *(a1 + 72);
            v31 = v20;
            v33 = v21;
            v32 = *(a1 + 56);
            [v18 associateCredentials:v19 withCompletionHandler:v30];

            goto LABEL_24;
          }
        }
      }
    }

    else if (v12 == 1)
    {
      v13 = [v7 _peerPaymentCredential];
      goto LABEL_9;
    }

    v27 = *(*(a1 + 56) + 16);
LABEL_23:
    v27();
    goto LABEL_24;
  }

  v22 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    v24 = NSStringFromSelector(*(a1 + 72));
    *buf = 138412546;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "%@ Preflight failed with unexpected error, return. %@", buf, 0x16u);
  }

LABEL_24:
}

void __97__PKPaymentSetupAssistantCoreController__preflightPaymentSetupProvisioningController_completion___block_invoke_144(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138413058;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@ Preflight, associated credentials. success: %d, displayableError: %@. %@", &v9, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_bridgeContextDefaultLocalCredential
{
  v2 = +[PKPaymentService paymentService];
  defaultPaymentPassUniqueIdentifier = [v2 defaultPaymentPassUniqueIdentifier];
  if (defaultPaymentPassUniqueIdentifier)
  {
    v4 = +[PKPassLibrary sharedInstance];
    peerPaymentPassUniqueID = [v4 peerPaymentPassUniqueID];
    v6 = defaultPaymentPassUniqueIdentifier;
    v7 = peerPaymentPassUniqueID;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v7)
      {

        goto LABEL_13;
      }

      v9 = [v6 isEqualToString:v7];

      if (!v9)
      {
LABEL_13:
        v12 = [v4 passWithUniqueID:v6];
        paymentPass = [v12 paymentPass];

        if (paymentPass && [paymentPass supportsSerialNumberBasedProvisioning]&& ([paymentPass requiresTransferSerialNumberBasedProvisioning]& 1) == 0)
        {
          v10 = [[PKPaymentLocalPassCredential alloc] initWithPaymentPass:paymentPass];
          goto LABEL_20;
        }

        v13 = PKLogFacilityTypeGetObject(0x2AuLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "No valid default pass for Bridge", v15, 2u);
        }

LABEL_19:
        v10 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    paymentPass = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(paymentPass, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, paymentPass, OS_LOG_TYPE_DEFAULT, "Default phone pass is Apple Cash, do not offer it", v16, 2u);
    }

    goto LABEL_19;
  }

  v4 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "No default pass from the phone to offer Bridge for setup", buf, 2u);
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (unint64_t)_specialCaseSEPassCountInPassLibrary:(id)library
{
  v27 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v4 = [libraryCopy passesOfType:1];
  v18 = libraryCopy;
  peerPaymentPassUniqueID = [libraryCopy peerPaymentPassUniqueID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = 0;
    v9 = 0;
    v10 = *v21;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isHomeKeyPass])
        {
          v13 = PKLogFacilityTypeGetObject(0x2AuLL);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Home Key card is present but ignoring as it is always automatically ingested.", buf, 2u);
          }

LABEL_9:

          ++v9;
          continue;
        }

        if ([v12 hasAssociatedPeerPaymentAccount])
        {
          uniqueID = [v12 uniqueID];
          v15 = [uniqueID isEqualToString:peerPaymentPassUniqueID];

          if (v15)
          {
            if ([v12 passActivationState] == 4)
            {
              v13 = PKLogFacilityTypeGetObject(0x2AuLL);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Apple Cash card is present but ignoring as it has been automatically ingested.", buf, 2u);
              }

              v19 = 1;
              goto LABEL_9;
            }

            v19 = 1;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  v19 = 0;
  v9 = 0;
LABEL_21:

  if (peerPaymentPassUniqueID && (v19 & 1) == 0)
  {
    v16 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = peerPaymentPassUniqueID;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Peer payment passID %@ found but no pass found in library", buf, 0xCu);
    }
  }

  return v9;
}

- (id)_peerPaymentCredential
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[PKPeerPaymentWebService sharedService];
  targetDevice = [v2 targetDevice];
  account = [targetDevice account];

  state = [account state];
  stage = [account stage];
  if (state == 1 && (stage & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v12 = [[PKPeerPaymentCredential alloc] initWithPeerPaymentAccount:account];
    if (v12)
    {
      goto LABEL_11;
    }

    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Could not generate peer payment credential", &v14, 2u);
    }
  }

  else
  {
    v8 = stage;
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PKPeerPaymentAccountStateToString(state);
      v11 = PKPeerPaymentAccountStageToString(v8);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Could not return peer payment credential because account state was: %{public}@ stage was: %{public}@", &v14, 0x16u);
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_provisioningContextWithProvisioningController:(id)controller setupAssistantCredentials:(id)credentials maximumSelectable:(unint64_t)selectable
{
  credentialsCopy = credentials;
  controllerCopy = controller;
  v9 = [[PKPaymentSetupAssistantCoreProvisioningContext alloc] initWithProvisioningController:controllerCopy setupAssistantCredentials:credentialsCopy maximumSelectable:selectable];

  return v9;
}

- (id)_setupAssistantCredentialForPaymentCredential:(id)credential
{
  credentialCopy = credential;
  v4 = [[PKPaymentSetupAssistantCoreCredential alloc] initWithPaymentCredential:credentialCopy];

  return v4;
}

- (id)_setupAssistantCredentialForPaymentPass:(id)pass
{
  passCopy = pass;
  v4 = [[PKPaymentSetupAssistantCoreCredential alloc] initWithPaymentPass:passCopy];

  return v4;
}

- (id)_defaultWebService
{
  v10 = *MEMORY[0x1E69E9840];
  setupAssistant = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant];
  if (setupAssistant == 2)
  {
    watchPaymentWebService = [getNPKCompanionAgentConnectionClass_4[0]() watchPaymentWebService];
  }

  else if (setupAssistant == 1)
  {
    watchPaymentWebService = +[PKPaymentWebService sharedService];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      setupAssistant2 = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext setupAssistant];
      v8 = 134217984;
      v9 = setupAssistant2;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error: _defaultWebService called with unsupported type %lu. File a radar!", &v8, 0xCu);
    }

    watchPaymentWebService = 0;
  }

  return watchPaymentWebService;
}

- (id)_provisioningControllerWithWebService:(id)service
{
  serviceCopy = service;
  v5 = [[PKPaymentProvisioningController alloc] initWithWebService:serviceCopy];

  externalizedContext = [(PKPaymentSetupAssistantContextProtocol *)self->_setupAssistantContext externalizedContext];
  [(PKPaymentProvisioningController *)v5 storeExternalizedAuth:externalizedContext];

  return v5;
}

- (void)_shouldRunAppleCashFlow:(BOOL *)flow shouldRunPaymentSetupFlow:(BOOL *)setupFlow pairingFamilyMember:(id)member pairingPeerPaymentAccount:(id)account parentFamilyMember:(id)familyMember parentPeerPaymentAccount:(id)paymentAccount
{
  memberCopy = member;
  familyMemberCopy = familyMember;
  paymentAccountCopy = paymentAccount;
  if (PKDaemonIsAvailable())
  {
    v16 = PKStoreDemoModeEnabled() ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if ([familyMemberCopy isMe])
  {
    isOrganizer = [familyMemberCopy isOrganizer];
  }

  else
  {
    isOrganizer = 0;
  }

  altDSID = [memberCopy altDSID];
  if (!memberCopy || !familyMemberCopy)
  {
    v21 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Cannot run add associated account in companion setup without parent and pairing family member", v26, 2u);
    }

    v16 = 0;
LABEL_42:

    v25 = 0;
    if (!flow)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if ((isOrganizer & 1) == 0)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion setup without parent being the organizer";
      goto LABEL_34;
    }

LABEL_35:

    v16 = 0;
    goto LABEL_36;
  }

  if (!paymentAccountCopy)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion setup because the parent doesnt have a peer payment account";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (account)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion setup when an account is already defined";
LABEL_34:
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, v20, v26, 2u);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v22 = [paymentAccountCopy peerPaymentAccountWithAltDSID:altDSID];

  if (v22)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion since there is already and associated account for the pairing member on the parent members account.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v23 = [paymentAccountCopy accountInvitationWithAltDSID:altDSID];
  status = [v23 status];

  if (status == 1)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion since there is already a pending invitation for the pairing member on the parent members account.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (![memberCopy memberType] || objc_msgSend(memberCopy, "memberType") == -1)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion setup when the pairing member is an adult.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (([paymentAccountCopy supportsFamilySharing] & 1) == 0)
  {
    v19 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      v20 = "Cannot run add associated account in companion setup because family sharing feature is not supported.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_36:
  if ([familyMemberCopy memberType] || (objc_msgSend(familyMemberCopy, "isParent") & 1) == 0)
  {
    v21 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Cannot run regular payment setup flow as family member is not parent/adult.", v26, 2u);
    }

    goto LABEL_42;
  }

  v25 = 1;
  if (flow)
  {
LABEL_43:
    *flow = v16;
  }

LABEL_44:
  if (setupFlow)
  {
    *setupFlow = v25;
  }
}

- (BOOL)_hasManuallyAddedSecureElementPasses:(BOOL)passes
{
  passesCopy = passes;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentSetupAssistantCoreController__hasManuallyAddedSecureElementPasses___block_invoke;
  aBlock[3] = &unk_1E79DFBE8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPaymentSetupAssistantCoreController__hasManuallyAddedSecureElementPasses___block_invoke_159;
  v8[3] = &unk_1E79C4428;
  v5 = v4;
  v9 = v5;
  if (qword_1EB5B7E80 != -1)
  {
    dispatch_once(&qword_1EB5B7E80, v8);
    if (passesCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = _MergedGlobals_5;
    goto LABEL_6;
  }

  if (!passesCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v5[2](v5);
LABEL_6:

  return v6 & 1;
}

uint64_t __78__PKPaymentSetupAssistantCoreController__hasManuallyAddedSecureElementPasses___block_invoke(uint64_t a1)
{
  v2 = +[PKPassLibrary sharedInstance];
  v3 = [v2 countPassesOfType:1];
  if (!v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (v3 <= [*(a1 + 32) _specialCaseSEPassCountInPassLibrary:v2])
  {
    v5 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Only special case passes are present, ignoring pass count so Apple pay setup will be offered.", v7, 2u);
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

uint64_t __78__PKPaymentSetupAssistantCoreController__hasManuallyAddedSecureElementPasses___block_invoke_159(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  _MergedGlobals_5 = result;
  return result;
}

- (void)_expressSetupProvisioningContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke;
    v7[3] = &unk_1E79DFC80;
    v7[4] = self;
    v8 = contextCopy;
    [(PKPaymentSetupAssistantCoreController *)self _extendedSetupAssistantNeedsToRunWithCompletion:v7];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[PKPaymentSetupAssistantCoreController _expressSetupProvisioningContext:]";
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%s Error: No completion provided", buf, 0xCu);
    }
  }
}

void __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }

  else
  {
    v4 = [*(a1 + 32) _defaultWebService];
    if (v4)
    {
      v5 = [*(a1 + 32) _provisioningControllerWithWebService:v4];
      objc_initWeak(&location, *(a1 + 32));
      v6 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke_2;
      v9[3] = &unk_1E79DFC58;
      objc_copyWeak(v13, &location);
      v12 = *(a1 + 40);
      v13[1] = 0;
      v7 = v5;
      v10 = v7;
      v11 = v4;
      [v6 _preflightPaymentSetupProvisioningController:v7 completion:v9];

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke_2(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [*(a1 + 32) associatedCredentials];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v14 remoteCredential];
          v16 = v15;
          if (!v15 || ((v17 = [v15 status], (v17 + 1) <= 5) ? (v18 = ((1 << (v17 + 1)) & 0x33) == 0) : (v18 = 1), v18))
          {
            v19 = [v6 _setupAssistantCredentialForPaymentCredential:v14];

            [v8 safelyAddObject:v19];
            v11 = v19;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    if ([v8 count])
    {
      v20 = PKLastBackedUpDefaultPaymentPassSerialNumber();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke_161;
      v31[3] = &unk_1E79DFC10;
      v21 = v20;
      v32 = v21;
      [v8 sortUsingComparator:v31];
      v5 = v6;
      if (PKDisableDynamicSEAllocation())
      {
        v22 = [*(a1 + 32) availableSecureElementPassSpaces];
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [v8 count];
        }
      }

      else
      {
        v22 = 0;
      }

      v24 = *(a1 + 32);
      v25 = [v8 copy];
      v26 = [v6 _provisioningContextWithProvisioningController:v24 setupAssistantCredentials:v25 maximumSelectable:v22];

      if (PKEnableBuddyBackgroundProvisioning())
      {
        v27 = [v26 selectedCredentials];
        v28 = [v27 pk_objectsPassingTest:&__block_literal_global_194];

        v29 = [[PKPaymentPrepareToProvisionRequest alloc] initWithCredentials:v28];
        [*(a1 + 40) prepareToProvisionForRequest:v29 completion:0];
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject(0x2AuLL);
      v5 = v6;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = obj;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "No provisionable associated credentials found in %@. Returning nil setup assistant provisioning context.", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __74__PKPaymentSetupAssistantCoreController__expressSetupProvisioningContext___block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 credential];
  v7 = [v5 credential];

  v8 = [v6 compare:v7 withBackedUpDefaultPaymentPassSerialNumber:*(a1 + 32)];
  return v8;
}

- (void)_expressCardRemovalProvisioningContext:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = contextCopy;
  if (contextCopy)
  {
    v28 = contextCopy;
    v7 = +[PKPassLibrary sharedInstance];
    v8 = [v7 passesOfType:1];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v27 = v7;
    peerPaymentPassUniqueID = [v7 peerPaymentPassUniqueID];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__PKPaymentSetupAssistantCoreController__expressCardRemovalProvisioningContext___block_invoke;
    v33[3] = &unk_1E79DFCA8;
    v11 = peerPaymentPassUniqueID;
    v34 = v11;
    v12 = [v8 sortedArrayUsingComparator:v33];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = v14;
    v16 = *v30;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        paymentPass = [v18 paymentPass];
        if (paymentPass)
        {
          uniqueID = [v18 uniqueID];
          if (![uniqueID isEqualToString:v11])
          {

LABEL_12:
            v22 = [(PKPaymentSetupAssistantCoreController *)self _setupAssistantCredentialForPaymentPass:paymentPass];
            [v9 safelyAddObject:v22];

            goto LABEL_13;
          }

          activationState = [paymentPass activationState];

          if (activationState != 4)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (!v15)
      {
LABEL_15:

        v23 = [v9 copy];
        v24 = -[PKPaymentSetupAssistantCoreController _provisioningContextWithProvisioningController:setupAssistantCredentials:maximumSelectable:](self, "_provisioningContextWithProvisioningController:setupAssistantCredentials:maximumSelectable:", 0, v23, [v9 count]);

        v6 = v28;
        v28[2](v28, v24);

        v25 = v27;
        goto LABEL_18;
      }
    }
  }

  v25 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412290;
    v37 = v26;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "%@ Error: No completion provided", buf, 0xCu);
  }

LABEL_18:
}

uint64_t __80__PKPaymentSetupAssistantCoreController__expressCardRemovalProvisioningContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  if ([v5 hasAssociatedPeerPaymentAccount])
  {
    v7 = [v5 uniqueID];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (([v6 hasAssociatedPeerPaymentAccount] & 1) == 0)
    {
LABEL_10:
      if (v8)
      {
        v11 = -1;
        goto LABEL_13;
      }

LABEL_12:
      v12 = [v5 ingestedDate];
      v13 = [v6 ingestedDate];
      v11 = [v12 compare:v13];

      goto LABEL_13;
    }
  }

  else
  {
    if (([v6 hasAssociatedPeerPaymentAccount] & 1) == 0)
    {
      goto LABEL_12;
    }

    v8 = 0;
  }

  v9 = [v6 uniqueID];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (!v10)
  {
    goto LABEL_10;
  }

  if (v8)
  {
    goto LABEL_12;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

@end