@interface NPKPaymentProvisioningFlowController
+ (BOOL)_isHSA2Enabled;
+ (BOOL)_localCredentials:(id)a3 containProduct:(id)a4;
+ (BOOL)_readerModeEntryAllowedForProduct:(id)a3;
+ (id)_authContext;
+ (id)_displayableCouldNotAddCardErrorWithUnderlyingError:(id)a3;
+ (id)_displayableErrorWithIneligibilityReason:(int64_t)a3 learnMoreURL:(id)a4;
+ (id)_displayableErrorWithUnderlyingVerificationError:(id)a3;
+ (id)_filterAssociatedCredentials:(id)a3 forProduct:(id)a4;
+ (id)_filteredPaymentSetupProducts:(id)a3 localCredentials:(id)a4 setupContext:(int64_t)a5 webService:(id)a6 mobileCarrierRegion:(id)a7 readerModeSupported:(BOOL)a8 digitalIssuanceSupported:(BOOL)a9;
+ (id)_physicalCardURLFromMetadata:(id)a3 forScale:(double)a4;
+ (id)_productsArrayFromPickerSection:(id)a3;
+ (id)_readerModeResources;
+ (void)_addAppleBalanceToSections:(id)a3 fromModel:(id)a4;
+ (void)_addCreditDebitItemToSection:(id)a3 webService:(id)a4;
+ (void)_addGroupedItemsToSections:(id)a3 fromModel:(id)a4 webService:(id)a5 paymentSection:(id)a6;
- (BOOL)_fieldRequiresLocalEntry:(id)a3;
- (BOOL)_fieldsModelCompleteExceptForLocalFields:(id)a3;
- (BOOL)hasCredentialsAssociatedWithProduct:(id)a3;
- (NPKFidoAuthCoordinator)fidoAuthCoordinator;
- (NPKPaymentProvisioningFlowController)initWithProvisioningController:(id)a3 setupContext:(int64_t)a4;
- (NPKPaymentProvisioningFlowControllerDelegate)delegate;
- (id)_addCardErrorForPaymentRequest:(id)a3;
- (id)_credentialReadonlyFieldIdentifiers;
- (id)_curatedDefaultPaymentSetupProvisioningFields;
- (id)_filteredPaymentSetupFields:(id)a3 forLocalDeviceEntry:(BOOL)a4;
- (id)_localRequiredFieldsFromRequirementsResponse;
- (id)_newPaymentEligibilityRequest;
- (id)_newPaymentProvisioningRequest;
- (id)_newPaymentRequirementsRequest;
- (id)_paymentRequestForAmount:(id)a3 serviceProviderProduct:(id)a4 productItem:(id)a5;
- (id)_requiredFieldsFromRequirementsResponse;
- (id)_requiredFieldsFromRequirementsResponseExcludingLocalFields;
- (id)_secondaryFilteredFields:(id)a3 forCredential:(id)a4;
- (id)_subtitleForState:(unint64_t)a3;
- (id)_titleForState:(unint64_t)a3;
- (void)_canMakeDigitalIssuancePaymentsForTransitProducts:(id)a3 withCompletion:(id)a4;
- (void)_canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:(id)a3;
- (void)_cardsOnFileForProduct:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5;
- (void)_checkSpaceAvailableForAppletTypes:(id)a3 triedCleanup:(BOOL)a4 completion:(id)a5;
- (void)_configureWebServiceIfNecessary:(id)a3 completion:(id)a4;
- (void)_downloadAndAddUpdatedPassForPaymentPass:(id)a3 completion:(id)a4;
- (void)_downloadRemoteAssetsAndAddPaymentPass:(id)a3 completion:(id)a4;
- (void)_endProvisioningFlowWithError:(id)a3 requestContext:(id)a4;
- (void)_endProvisioningFlowWithSuccessForPass:(id)a3 requestContext:(id)a4;
- (void)_ensureMetadataForCredentials:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5;
- (void)_fetchAddRequestWithCertificatesResponse:(id)a3 requestContext:(id)a4;
- (void)_fetchInAppProvisioningCertificates:(id)a3;
- (void)_handleAppleBalanceAccountDetailsAcknowledgedWithProduct:(id)a3 requestContext:(id)a4;
- (void)_handleAppleBalanceProductChosen:(id)a3 requestContext:(id)a4;
- (void)_handleDigitalIssuanceTermsAccepted:(id)a3;
- (void)_handleEligibiltySuccessWithContext:(id)a3;
- (void)_handleEndOfProvisioningFlowForCurrentPass:(id)a3 requestContext:(id)a4;
- (void)_handleFinished:(id)a3;
- (void)_handlePreconditionsVerified:(id)a3;
- (void)_handleProceedWithCredentials:(id)a3 chosenByUser:(BOOL)a4 requestContext:(id)a5;
- (void)_handleProductChosen:(id)a3 includeCardsOnFile:(BOOL)a4 requestContext:(id)a5;
- (void)_handleProvisioningFlowStarted:(id)a3;
- (void)_handleReaderModeTermsAccepted:(id)a3;
- (void)_handleVerificationCode:(id)a3 forPass:(id)a4 context:(id)a5;
- (void)_handleVerificationFieldsForPass:(id)a3 context:(id)a4;
- (void)_handleVerificationResponseForPass:(id)a3 context:(id)a4;
- (void)_invalidateCardNotFoundTimer;
- (void)_noteProvisioningStateChangeForReaderMode:(int64_t)a3;
- (void)_performEligibility:(id)a3;
- (void)_performNextActionForProvisioningState:(id)a3;
- (void)_performNextStepForProvisionedPass:(id)a3 moreInfoAcknowledged:(BOOL)a4 requestContext:(id)a5;
- (void)_performPasscodeUpgrade:(id)a3;
- (void)_performProvision:(id)a3;
- (void)_performProvisionWithRequest:(id)a3 requestContext:(id)a4 assertion:(id)a5;
- (void)_performProvisioningEligibility:(id)a3;
- (void)_performRequirementsOrEligibilityForInAppProvisioning:(id)a3;
- (void)_performResolveLocalEligibilityARequirements:(id)a3 completion:(id)a4;
- (void)_performSEStorageCheck:(id)a3;
- (void)_performTerms:(id)a3;
- (void)_performTransitionToStep:(int)a3 withContext:(id)a4;
- (void)_performValidateSecurityRequirements:(id)a3 completion:(id)a4;
- (void)_provisioningLocalizedProgressDescriptionDidChange:(id)a3;
- (void)_removePassIfNecessary;
- (void)_requestPassDetailsForAccountCredential:(id)a3 withCompletionHandler:(id)a4;
- (void)_requestRequirements:(id)a3;
- (void)_requestVerificationOptionsForPass:(id)a3 context:(id)a4;
- (void)_resetReaderModeProvisioningState;
- (void)_sendDidEncounterError:(id)a3 requestContext:(id)a4;
- (void)_setupCardIngester;
- (void)_startCardNotFoundTimer;
- (void)_startDigitalIssuancePaymentWithAmount:(id)a3 requestContext:(id)a4 serviceProviderProduct:(id)a5 productItem:(id)a6;
- (void)_startIngestion;
- (void)_startProvisioningForCredential:(id)a3 requestContext:(id)a4;
- (void)_startReaderModeIngestion:(id)a3;
- (void)_startReadingCard;
- (void)_startTransferringCard;
- (void)_tearDownCardIngester;
- (void)_transitionBasedOnCredentials:(id)a3 product:(id)a4 requestContext:(id)a5;
- (void)_transitionBasedOnTermsForReason:(unint64_t)a3 URL:(id)a4 requestContext:(id)a5;
- (void)_transitionToAppleBalanceAccountDetailsWithProduct:(id)a3 requestContext:(id)a4;
- (void)_transitionToChooseCredentials:(id)a3 product:(id)a4 requestContext:(id)a5;
- (void)_transitionToChooseFlowWithSections:(id)a3 requestContext:(id)a4;
- (void)_transitionToChooseProductWithProducts:(id)a3 requestContext:(id)a4;
- (void)_transitionToDigitalIssuanceForProduct:(id)a3 requestContext:(id)a4;
- (void)_transitionToFlowIngestionState:(unint64_t)a3;
- (void)_transitionToFlowIngestionState:(unint64_t)a3 progress:(double)a4;
- (void)_transitionToIngestionProgress:(double)a3;
- (void)_transitionToManualEntry:(id)a3;
- (void)_transitionToMoreInformationWithItems:(id)a3 pass:(id)a4 requestContext:(id)a5;
- (void)_transitionToProductDisambiguationWithProducts:(id)a3 requestContext:(id)a4;
- (void)_transitionToProvisioningForCredential:(id)a3 product:(id)a4 requestContext:(id)a5;
- (void)_transitionToProvisioningProgressWithRequestContext:(id)a3;
- (void)_transitionToReaderModeForProduct:(id)a3 requestContext:(id)a4;
- (void)_transitionToSecondaryManualEntryWithFields:(id)a3 credential:(id)a4 requestContext:(id)a5;
- (void)_transitionToVerificationChannelsWithPaymentPass:(id)a3 channels:(id)a4 requestContext:(id)a5;
- (void)_transitionToVerificationCodeWithPaymentPass:(id)a3 channel:(id)a4 requestContext:(id)a5;
- (void)_transitionToVerificationFieldsWithPaymentPass:(id)a3 fields:(id)a4 requestContext:(id)a5;
- (void)_updateVerificationForPass:(id)a3 channel:(id)a4 context:(id)a5;
- (void)_verifyPasscodeStateIfNecessaryWithCompletion:(id)a3;
- (void)acceptTerms:(id)a3;
- (void)acknowledgeAppleBalanceAccountDetailsWithProduct:(id)a3 requestContext:(id)a4;
- (void)acknowledgeMoreInformation:(id)a3;
- (void)acknowledgeWelcome:(id)a3;
- (void)chooseCardsOnFileFlowForProduct:(id)a3 requestContext:(id)a4 preloadMetadata:(BOOL)a5;
- (void)chooseCredentials:(id)a3 requestContext:(id)a4;
- (void)chooseFlowForPickerItem:(id)a3 requestContext:(id)a4;
- (void)chooseManualEntry:(id)a3;
- (void)chooseReaderMode:(id)a3;
- (void)contactlessCardIngester:(id)a3 didFailToIngestCardWithError:(id)a4 resetProvisioning:(BOOL)a5 isRecoverable:(BOOL)a6;
- (void)contactlessCardIngester:(id)a3 didUpdateCardIngestionStatus:(unint64_t)a4;
- (void)dealloc;
- (void)ensureMetadataForCredentials:(id)a3 requestContext:(id)a4 updateHandler:(id)a5 completionHandler:(id)a6;
- (void)handleDigitalIssuanceAmount:(id)a3 requestContext:(id)a4;
- (void)handleDigitalIssuanceAmount:(id)a3 serviceProviderProduct:(id)a4 item:(id)a5 requestContext:(id)a6;
- (void)handleIssuerApplicationAddRequest:(id)a3 requestContext:(id)a4;
- (void)handleIssuerVerificationChannel:(id)a3 requestContext:(id)a4;
- (void)handleIssuerVerificationCode:(id)a3 requestContext:(id)a4;
- (void)handleIssuerVerificationFields:(id)a3 requestContext:(id)a4;
- (void)handleManualEntryFields:(id)a3 credential:(id)a4 requestContext:(id)a5;
- (void)handleProductSelection:(id)a3 requestContext:(id)a4;
- (void)handleReaderModeFields:(id)a3 requestContext:(id)a4;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)prefetchCredentialsForProduct:(id)a3 requestContext:(id)a4 completionHandler:(id)a5;
- (void)reset;
- (void)skipIssuerVerification:(id)a3;
- (void)skipProvisioning:(id)a3;
- (void)startInAppProvisioningFlowWithConfiguration:(id)a3 requestContext:(id)a4;
- (void)startIssuerVerificationFlowForPaymentPass:(id)a3 requestContext:(id)a4;
- (void)startProvisioningFlow:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowController

- (NPKPaymentProvisioningFlowController)initWithProvisioningController:(id)a3 setupContext:(int64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31.receiver = self;
  v31.super_class = NPKPaymentProvisioningFlowController;
  v8 = [(NPKPaymentProvisioningFlowController *)&v31 init];
  if (v8)
  {
    v9 = [v7 webService];
    webService = v8->_webService;
    v8->_webService = v9;

    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(PKPaymentWebService *)v8->_webService debugDescription];
        v15 = v14;
        v16 = [v14 UTF8String];
        *buf = 136315138;
        v33 = v16;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking webService %s: ", buf, 0xCu);
      }
    }

    v8->_currentStep = 100;
    objc_storeStrong(&v8->_provisioningController, a3);
    v8->_setupContext = a4;
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PKPaymentProvisioningController *)v8->_provisioningController debugDescription];
        v21 = v20;
        v22 = [v20 UTF8String];
        *buf = 136315138;
        v33 = v22;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking controller initialization %s: ", buf, 0xCu);
      }
    }

    objc_initWeak(buf, v8);
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    provisioningController = v8->_provisioningController;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__NPKPaymentProvisioningFlowController_initWithProvisioningController_setupContext___block_invoke;
    v29[3] = &unk_279946020;
    objc_copyWeak(&v30, buf);
    v25 = [v23 addObserverForName:*MEMORY[0x277D388C8] object:provisioningController queue:0 usingBlock:v29];
    progressNotificationToken = v8->_progressNotificationToken;
    v8->_progressNotificationToken = v25;

    [MEMORY[0x277D37D28] beginSubjectReporting:@"provisioning"];
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

void __84__NPKPaymentProvisioningFlowController_initWithProvisioningController_setupContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _provisioningLocalizedProgressDescriptionDidChange:v5];
  }
}

- (void)dealloc
{
  if (self->_progressNotificationToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_progressNotificationToken];
  }

  [MEMORY[0x277D37D28] endSubjectReporting:@"provisioning"];
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowController;
  [(NPKPaymentProvisioningFlowController *)&v4 dealloc];
}

- (void)reset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D37D28];
  v4 = NPKAnalyticsEventForProvisioningFlowClientInput(@"reset", 0);
  [v3 subject:@"provisioning" sendEvent:v4];

  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PKPaymentWebService *)self->_webService debugDescription];
      v15 = 136315138;
      v16 = [v8 UTF8String];
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: checking webService %s: ", &v15, 0xCu);
    }
  }

  [(PKPaymentProvisioningController *)self->_provisioningController reset];
  currentCredential = self->_currentCredential;
  self->_currentCredential = 0;

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  self->_currentAppleBalanceCredential = 0;

  currentProduct = self->_currentProduct;
  self->_currentProduct = 0;

  self->_termsAcceptedOutOfBand = 0;
  self->_currentStep = 100;
  chooseCredentialsStepIdentifier = self->_chooseCredentialsStepIdentifier;
  self->_chooseCredentialsStepIdentifier = 0;

  inAppProvisioningRequestConfiguration = self->_inAppProvisioningRequestConfiguration;
  self->_inAppProvisioningRequestConfiguration = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startProvisioningFlow:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startProvisioningFlow", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  currentStep = self->_currentStep;
  v8 = pk_Payment_log();
  v9 = v8;
  if (currentStep == 100)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting provisioning flow", buf, 2u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _handleProvisioningFlowStarted:v4];
  }

  else
  {
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start provisioning flow!", v14, 2u);
      }
    }
  }
}

- (void)acknowledgeWelcome:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeWelcome", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  if (self->_inAppProvisioningRequestConfiguration)
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v4];
  }

  else
  {
    v7 = [objc_opt_class() _flowPickerSectionsWithContext:self->_setupContext provisioningController:self->_provisioningController readerModeSupported:self->_readerModeProvisioningSupported digitalIssuanceSupported:self->_digitalIssuanceSupported];
    v8 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    v9 = [v8 webService];
    v10 = [v9 paymentSetupSupportedInRegion];

    IsTinker = NPKPairedOrPairingDeviceIsTinker();
    if (IsTinker)
    {
      v12 = [(PKPaymentProvisioningController *)self->_provisioningController isCurrentUserUnder13]== 1;
    }

    else
    {
      v12 = 0;
    }

    if (v10 == 1)
    {
      v13 = IsTinker;
    }

    else
    {
      v13 = 1;
    }

    v14 = v10 == 1 && !v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke;
    aBlock[3] = &unk_279946068;
    v15 = v7;
    v25 = v15;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if ((IsTinker & v14) == 1)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_3;
      v19[3] = &unk_279946090;
      v19[4] = self;
      v22 = v16;
      v20 = v15;
      v23 = v13;
      v21 = v4;
      [(NPKPaymentProvisioningFlowController *)self _canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:v19];
    }

    else
    {
      v18 = (*(v16 + 2))(v16, v15, v13 ^ 1u, v14 & 1);
      [(NPKPaymentProvisioningFlowController *)self _transitionToChooseFlowWithSections:v18 requestContext:v4];
    }
  }
}

id __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 && (a4 & 1) != 0)
  {
    v9 = v7;
  }

  else
  {
    v10 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_2;
    v13[3] = &__block_descriptor_34_e56_B32__0__NPKPaymentProvisioningFlowPickerSection_8Q16_B24l;
    v14 = a3;
    v15 = a4;
    v9 = [v10 pk_objectsPassingTest:v13];
  }

  v11 = v9;

  return v11;
}

uint64_t __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPaymentSection])
  {
    v4 = *(a1 + 32);
  }

  else if ([v3 isTransitSection])
  {
    v4 = *(a1 + 33);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void __59__NPKPaymentProvisioningFlowController_acknowledgeWelcome___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = (*(*(a1 + 56) + 16))();
  [v3 _transitionToChooseFlowWithSections:v5 requestContext:*(a1 + 48)];
}

- (void)chooseFlowForPickerItem:(id)a3 requestContext:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];

  if (v8)
  {
    v15 = @"flowItem";
    v9 = [v6 identifier];
    v16[0] = v9;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  v10 = MEMORY[0x277D37D28];
  v11 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseFlow", v8);
  [v10 subject:@"provisioning" sendEvent:v11];

  v12 = [v6 products];
  if ([v12 count] < 2)
  {
    v13 = [v12 firstObject];
    [(NPKPaymentProvisioningFlowController *)self _handleProductChosen:v13 includeCardsOnFile:1 requestContext:v7];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _transitionToChooseProductWithProducts:v12 requestContext:v7];
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_filterAssociatedCredentials:(id)a3 forProduct:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 paymentOptions];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 cardType];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 productIdentifier];
  v11 = v10;
  if (v9 && v10 && [v10 length])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__NPKPaymentProvisioningFlowController__filterAssociatedCredentials_forProduct___block_invoke;
    v19[3] = &unk_2799460B8;
    v21 = v9;
    v20 = v11;
    v12 = [v5 pk_objectsPassingTest:v19];
    v13 = v20;
LABEL_12:

    goto LABEL_14;
  }

  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 displayName];
      *buf = 138412802;
      v23 = v16;
      v24 = 1024;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Failed collecting associated credentials for product = '%@', cardType = %u, productIdentifier = %@", buf, 0x1Cu);
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __80__NPKPaymentProvisioningFlowController__filterAssociatedCredentials_forProduct___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 credentialType] == *(a1 + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 productIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCredentialsAssociatedWithProduct:(id)a3
{
  provisioningController = self->_provisioningController;
  v4 = a3;
  v5 = [(PKPaymentProvisioningController *)provisioningController associatedCredentials];
  v6 = [objc_opt_class() _filterAssociatedCredentials:v5 forProduct:v4];

  LOBYTE(v4) = [v6 count] != 0;
  return v4;
}

- (void)_ensureMetadataForCredentials:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v42 = a4;
  v37 = a5;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__3;
  v64[4] = __Block_byref_object_dispose__3;
  v65 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = self->_provisioningController;
  v38 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v10)
  {
    v11 = *v61;
    do
    {
      v12 = 0;
      do
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v60 + 1) + 8 * v12);
        v14 = [v13 credentialType];
        if (!v14)
        {
          goto LABEL_12;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v15 = v13;
        if (![v15 requiresMetadata])
        {

LABEL_12:
          [v9 addObject:v13];
          goto LABEL_13;
        }

        v16 = [v15 productIdentifier];
        if (v16)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%u, %@", v14, v16];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v14];
        }
        v17 = ;
        v18 = [v38 objectForKey:v17];
        v19 = v18;
        if (v18)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];
        }

        else
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        }

        [v38 setObject:v20 forKeyedSubscript:v17];

LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v21 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      v10 = v21;
    }

    while (v21);
  }

  if ([v38 count])
  {
    if (v42 && [v9 count])
    {
      v42[2](v42, 1, 0, v9);
    }

    v22 = [v38 keysSortedByValueUsingComparator:&__block_literal_global_5];
    v23 = objc_alloc_init(MEMORY[0x277D37DB0]);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v39 = v22;
    v24 = [v39 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v24)
    {
      v25 = *v57;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v39);
          }

          v27 = *(*(&v56 + 1) + 8 * i);
          v28 = [v27 rangeOfString:{@", "}];
          v29 = v28;
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = [v27 integerValue];
            v31 = 0;
          }

          else
          {
            v31 = [v27 substringFromIndex:v28 + 1];
            v32 = [v27 substringToIndex:v29];
            v30 = [v32 integerValue];
          }

          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_2;
          v48[3] = &unk_279946128;
          v55 = v30;
          v33 = v31;
          v49 = v33;
          v50 = v41;
          v53 = v64;
          v51 = v9;
          v54 = v66;
          v52 = v42;
          [v23 addOperation:v48];
        }

        v24 = [v39 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v24);
    }

    v34 = [MEMORY[0x277CBEB68] null];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_85;
    v43[3] = &unk_279946150;
    v45 = v37;
    v46 = v66;
    v47 = v64;
    v44 = v9;
    v35 = [v23 evaluateWithInput:v34 completion:v43];
  }

  else
  {
    (*(v37 + 2))(v37, 1, 0, v9);
  }

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  v36 = *MEMORY[0x277D85DE8];
}

void __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277D380A8]);
  [v10 setIncludeMetadata:1];
  [v10 setCredentialType:*(a1 + 80)];
  [v10 setProductIdentifier:*(a1 + 32)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_3;
  v18[3] = &unk_279946100;
  v26 = v9;
  v27 = *(a1 + 80);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v19 = v12;
  v24 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 72);
  v20 = v14;
  v25 = v15;
  v22 = *(a1 + 56);
  v23 = v7;
  v21 = v6;
  v16 = v6;
  v17 = v7;
  [v11 updateRemoteCredentials:v10 withCompletionHandler:v18];
}

void __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = *(a1 + 88);
  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 96);
      v17 = *(a1 + 32);
      v29 = 67109634;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v33 = 2048;
      v34 = v11 - v12;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: updateRemoteCredentials [%u, %@] completed in %f seconds", &v29, 0x1Cu);
    }
  }

  if (!v9 || ![v9 count])
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 96);
        v29 = 67109120;
        v30 = v21;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Warning: User had matching associated credentials (type=%d) but when fetching metadata no credentials were returned", &v29, 8u);
      }
    }
  }

  if (v8)
  {
    v22 = pk_General_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      v24 = pk_General_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 96);
        v29 = 67109378;
        v30 = v25;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: Failed collecting metadata for associated credentials (type=%d), error = %@", &v29, 0x12u);
      }
    }
  }

  if (a2 && v9 && !*(*(*(a1 + 72) + 8) + 40))
  {
    [*(a1 + 40) addObjectsFromArray:v9];
  }

  *(*(*(a1 + 80) + 8) + 24) |= a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, a2, v8, *(a1 + 40));
  }

  v27 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __102__NPKPaymentProvisioningFlowController__ensureMetadataForCredentials_updateHandler_completionHandler___block_invoke_85(void *a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = *(*(a1[6] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 40);
  v4 = a1[4];
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)_cardsOnFileForProduct:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5
{
  v16 = a3;
  if (v16)
  {
    v8 = a5;
    v9 = a4;
    v10 = objc_opt_class();
    v11 = [(PKPaymentProvisioningController *)self->_provisioningController associatedCredentials];
    v12 = [v10 _filterAssociatedCredentials:v11 forProduct:v16];
  }

  else
  {
    provisioningController = self->_provisioningController;
    v14 = a5;
    v15 = a4;
    v12 = [(PKPaymentProvisioningController *)provisioningController associatedCredentials];
  }

  [(NPKPaymentProvisioningFlowController *)self _ensureMetadataForCredentials:v12 updateHandler:a4 completionHandler:a5];
}

- (void)ensureMetadataForCredentials:(id)a3 requestContext:(id)a4 updateHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke;
  v19[3] = &unk_279946178;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke_87;
  v16[3] = &unk_279946178;
  v16[4] = self;
  v17 = v20;
  v18 = v12;
  v13 = v12;
  v14 = v20;
  v15 = v11;
  [(NPKPaymentProvisioningFlowController *)self _ensureMetadataForCredentials:a3 updateHandler:v19 completionHandler:v16];
}

void __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v13, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __116__NPKPaymentProvisioningFlowController_ensureMetadataForCredentials_requestContext_updateHandler_completionHandler___block_invoke_87(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v13, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)chooseCardsOnFileFlowForProduct:(id)a3 requestContext:(id)a4 preloadMetadata:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (v5)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__NPKPaymentProvisioningFlowController_chooseCardsOnFileFlowForProduct_requestContext_preloadMetadata___block_invoke;
    v13[3] = &unk_2799461A0;
    v13[4] = self;
    v14 = v9;
    v15 = v10;
    [(NPKPaymentProvisioningFlowController *)self _cardsOnFileForProduct:v14 updateHandler:0 completionHandler:v13];
  }

  else
  {
    v11 = self->_provisioningController;
    v12 = [(PKPaymentProvisioningController *)v11 associatedCredentials];
    objc_storeStrong(&self->_currentProduct, a3);
    [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnCredentials:v12 product:v9 requestContext:v10];
  }
}

void __103__NPKPaymentProvisioningFlowController_chooseCardsOnFileFlowForProduct_requestContext_preloadMetadata___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
    [*(a1 + 32) _transitionBasedOnCredentials:v8 product:*(a1 + 40) requestContext:*(a1 + 48)];
  }

  else
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v13, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 48)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_productsArrayFromPickerSection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 items];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) products];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)prefetchCredentialsForProduct:(id)a3 requestContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  IsSetupAssistant = NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext);
  provisioningController = self->_provisioningController;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__NPKPaymentProvisioningFlowController_prefetchCredentialsForProduct_requestContext_completionHandler___block_invoke;
  v16[3] = &unk_2799461C8;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [(PKPaymentProvisioningController *)provisioningController setupProductForProvisioning:v14 includePurchases:!IsSetupAssistant withCompletionHandler:v16];
}

void __103__NPKPaymentProvisioningFlowController_prefetchCredentialsForProduct_requestContext_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) displayName];
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when collecting associated purchases for product %@, error: %@", &v11, 0x16u);
      }
    }

    [*(a1 + 40) _sendDidEncounterError:v5 requestContext:*(a1 + 48)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDigitalIssuanceAmount:(id)a3 requestContext:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D37D28];
  v11 = a4;
  v8 = NPKAnalyticsEventForProvisioningFlowClientInput(@"digitalIssuanceAmount", 0);
  [v7 subject:@"provisioning" sendEvent:v8];

  digitalIssuanceAmount = self->_digitalIssuanceAmount;
  self->_digitalIssuanceAmount = v6;
  v10 = v6;

  [(NPKPaymentProvisioningFlowController *)self _startDigitalIssuancePaymentWithAmount:v10 requestContext:v11];
}

- (void)handleDigitalIssuanceAmount:(id)a3 serviceProviderProduct:(id)a4 item:(id)a5 requestContext:(id)a6
{
  v10 = a3;
  v11 = MEMORY[0x277D37D28];
  v12 = a6;
  v13 = a5;
  v17 = a4;
  v14 = NPKAnalyticsEventForProvisioningFlowClientInput(@"digitalIssuanceAmount", 0);
  [v11 subject:@"provisioning" sendEvent:v14];

  digitalIssuanceAmount = self->_digitalIssuanceAmount;
  self->_digitalIssuanceAmount = v10;
  v16 = v10;

  [(NPKPaymentProvisioningFlowController *)self _startDigitalIssuancePaymentWithAmount:v16 requestContext:v12 serviceProviderProduct:v17 productItem:v13];
}

- (void)chooseReaderMode:(id)a3
{
  v4 = MEMORY[0x277D37D28];
  v6 = a3;
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseReaderMode", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  [(NPKPaymentProvisioningFlowController *)self _transitionToReaderModeForProduct:self->_currentProduct requestContext:v6];
}

- (void)handleReaderModeFields:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v10 = NPKAnalyticsEventEntriesForPaymentSetupFields(a3);
  v7 = MEMORY[0x277D37D28];
  v8 = NPKAnalyticsEventForProvisioningFlowClientInput(@"readerModeFields", v10);
  [v7 subject:@"provisioning" sendEvent:v8];

  v9 = [(PKPaymentSetupProduct *)self->_currentProduct termsURL];
  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnTermsForReason:2 URL:v9 requestContext:v6];
}

- (void)chooseCredentials:(id)a3 requestContext:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = NPKAnalyticsEventEntriesForCredentials(v6);
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseCredentials", v8);
  [v9 subject:@"provisioning" sendEvent:v10];

  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_92];
  v12 = [v6 filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    [(NPKPaymentProvisioningFlowController *)self _handleProceedWithCredentials:v12 chosenByUser:1 requestContext:v7];
  }

  else
  {
    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v15 = pk_General_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for credentials [%@]", &v17, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

BOOL __73__NPKPaymentProvisioningFlowController_chooseCredentials_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteCredential];
  v3 = v2;
  if (v2)
  {
    v4 = ([v2 status] - 1) < 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)chooseManualEntry:(id)a3
{
  v4 = MEMORY[0x277D37D28];
  v6 = a3;
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseManualEntry", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnCredentials:0 product:self->_currentProduct requestContext:v6];
}

- (void)handleManualEntryFields:(id)a3 credential:(id)a4 requestContext:(id)a5
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NPKAnalyticsEventEntriesForPaymentSetupFields(v8);
  v12 = MEMORY[0x277D37D28];
  v64 = v11;
  v13 = NPKAnalyticsEventForProvisioningFlowClientInput(@"manualEntryFields", v11);
  [v12 subject:@"provisioning" sendEvent:v13];

  if ([(PKPaymentProvisioningController *)self->_provisioningController state]== 3)
  {
    [(PKPaymentProvisioningController *)self->_provisioningController declineTerms];
  }

  if (self->_currentStep == 192)
  {
    v14 = [[NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryProgressStepContext alloc] initWithRequestContext:v10];
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:193 withContext:v14];
  }

  v65 = v10;
  if ([(PKPaymentProvisioningController *)self->_provisioningController state]== 1)
  {
    if (v9)
    {
      currentCredential = self->_currentCredential;
      if (PKEqualObjects())
      {
        goto LABEL_39;
      }

      v16 = pk_General_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_General_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_currentCredential;
          *buf = 138412546;
          v83 = v9;
          v84 = 2112;
          v85 = v19;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Provided credential %@ does not match current credential %@; going back to requirements", buf, 0x16u);
        }
      }

      v20 = [v9 requirementsResponse];
      v21 = [v20 requiredPaymentSetupFields];
    }

    else
    {
      v20 = [MEMORY[0x277CBEB58] set];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v22 = v8;
      v23 = [v22 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v76;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v76 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v75 + 1) + 8 * i) identifier];
            [v20 addObject:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v75 objects:v81 count:16];
        }

        while (v24);
      }

      fieldsModel = [MEMORY[0x277CBEB58] set];
      if ((self->_currentStep & 0xFFFFFFFE) == 0xC0)
      {
        [(NPKPaymentProvisioningFlowController *)self _localRequiredFieldsFromRequirementsResponse];
      }

      else
      {
        [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponseExcludingLocalFields];
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v29 = v72 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v72;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v72 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = [*(*(&v71 + 1) + 8 * j) identifier];
            [fieldsModel addObject:v34];
          }

          v31 = [v29 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v31);
      }

      if ([fieldsModel isSubsetOfSet:v20])
      {

LABEL_38:
        goto LABEL_39;
      }

      v35 = pk_General_log();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

      if (v36)
      {
        v37 = pk_General_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v83 = v20;
          v84 = 2112;
          v85 = fieldsModel;
          _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Manual entry fields %@ do not contain all required fields %@; going back to requirements", buf, 0x16u);
        }
      }

      v21 = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
    }

    [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
    v38 = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
    [v38 setCurrentCredential:v9];

    v39 = [objc_alloc(MEMORY[0x277D38110]) initWithPaymentSetupFields:v21];
    fieldsModel = self->_fieldsModel;
    self->_fieldsModel = v39;
    v20 = v21;
    goto LABEL_38;
  }

LABEL_39:
  v40 = pk_Payment_log();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

  if (v41)
  {
    v42 = pk_Payment_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
      *buf = 138412546;
      v83 = v8;
      v84 = 2112;
      v85 = v43;
      _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling manual entry fields: %@ with fields model fields: %@", buf, 0x16u);
    }
  }

  v66 = v9;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v44 = v8;
  v45 = [v44 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v68;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v68 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v67 + 1) + 8 * k);
        v50 = self->_fieldsModel;
        v51 = [v49 identifier];
        v52 = [(PKPaymentSetupFieldsModel *)v50 paymentSetupFieldWithIdentifier:v51];

        v53 = pk_Payment_log();
        v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

        if (v52)
        {
          if (!v54)
          {
            goto LABEL_56;
          }

          v55 = pk_Payment_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v52;
            _os_log_impl(&dword_25B300000, v55, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Updating %@", buf, 0xCu);
          }
        }

        else
        {
          if (!v54)
          {
            goto LABEL_56;
          }

          v55 = pk_Payment_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v49 identifier];
            *buf = 138412290;
            v83 = v56;
            _os_log_impl(&dword_25B300000, v55, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: no model field with identifier %@ to update!", buf, 0xCu);
          }
        }

LABEL_56:
        v57 = [v49 currentValue];
        [v52 setCurrentValue:v57];

        [v52 setSource:{objc_msgSend(v49, "source") == 1}];
      }

      v46 = [v44 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v46);
  }

  if ([(NPKPaymentProvisioningFlowController *)self _fieldsModelCompleteExceptForLocalFields:self->_fieldsModel])
  {
    v58 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
    v59 = self;
    v61 = v65;
    v60 = v66;
    [(NPKPaymentProvisioningFlowController *)v59 _transitionToSecondaryManualEntryWithFields:v58 credential:v66 requestContext:v65];
  }

  else
  {
    v62 = self;
    v61 = v65;
    [(NPKPaymentProvisioningFlowController *)v62 _performNextActionForProvisioningState:v65];
    v60 = v66;
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (void)handleProductSelection:(id)a3 requestContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = NPKAnalyticsEventEntriesForProduct(v6);
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"productSelection", v8);
  [v9 subject:@"provisioning" sendEvent:v10];

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 rawDictionary];
      v32 = 138412546;
      v33 = v6;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling product selection: %@ (%@)", &v32, 0x16u);
    }
  }

  if (self->_currentStep == 195)
  {
    if (v6)
    {
      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v6 productIdentifier];
          v19 = [(PKPaymentProvisioningController *)self->_provisioningController state];
          v20 = [(PKPaymentProvisioningController *)self->_provisioningController requirementsResponse];
          v21 = [v20 status];
          v32 = 138412802;
          v33 = v18;
          v34 = 2048;
          v35 = v19;
          v36 = 2048;
          v37 = v21;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: id %@ state %lu response status %lu", &v32, 0x20u);
        }
      }

      provisioningController = self->_provisioningController;
      v23 = [v6 productIdentifier];
      [(PKPaymentProvisioningController *)provisioningController resolveAmbiguousRequirementsWithProductIdentifier:v23];
    }

    v24 = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponseExcludingLocalFields];
    v25 = pk_Payment_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = pk_Payment_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v24 count];
        v32 = 134217984;
        v33 = v28;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Start secondary manual entry with %lu fields following product disambiguation.", &v32, 0xCu);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _transitionToSecondaryManualEntryWithFields:v24 credential:0 requestContext:v7];
  }

  else
  {
    v29 = pk_Payment_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

    if (!v30)
    {
      goto LABEL_21;
    }

    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: Not on product disambiguation step; cannot choose product!", &v32, 2u);
    }
  }

LABEL_21:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)acknowledgeAppleBalanceAccountDetailsWithProduct:(id)a3 requestContext:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeAppleBalanceAccountDetails", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling Apple Balance Account Details Acknowledged with product: %@", &v14, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _handleAppleBalanceAccountDetailsAcknowledgedWithProduct:v6 requestContext:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)acceptTerms:(id)a3
{
  v8 = a3;
  v4 = MEMORY[0x277D37D28];
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acceptTerms", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  termsReason = self->_termsReason;
  if (termsReason == 2)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleReaderModeTermsAccepted:v8];
  }

  else if (termsReason == 1)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleDigitalIssuanceTermsAccepted:v8];
  }

  else
  {
    v7 = v8;
    if (termsReason)
    {
      goto LABEL_8;
    }

    [(PKPaymentProvisioningController *)self->_provisioningController acceptTerms];
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v8];
  }

  v7 = v8;
LABEL_8:
}

- (void)skipProvisioning:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277D37D28];
  v5 = NPKAnalyticsEventForProvisioningFlowClientInput(@"skipProvisioning", 0);
  [v4 subject:@"provisioning" sendEvent:v5];

  if ((self->_currentStep - 180) <= 0x14 && ((1 << (LOBYTE(self->_currentStep) + 76)) & 0x103401) != 0)
  {
    [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:0 requestContext:v7];
  }
}

- (void)acknowledgeMoreInformation:(id)a3
{
  v4 = MEMORY[0x277D37D28];
  v5 = a3;
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"acknowledgeMoreInformation", 0);
  [v4 subject:@"provisioning" sendEvent:v6];

  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: More information acknowledged", v11, 2u);
    }
  }

  v10 = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPass];
  [(NPKPaymentProvisioningFlowController *)self _performNextStepForProvisionedPass:v10 moreInfoAcknowledged:1 requestContext:v5];
}

- (void)startIssuerVerificationFlowForPaymentPass:(id)a3 requestContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startIssuerVerificationFlow", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  currentStep = self->_currentStep;
  v12 = pk_Payment_log();
  v13 = v12;
  if (currentStep == 100)
  {
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v7 uniqueID];
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting issuer verification flow for pass %@", &v20, 0xCu);
      }
    }

    objc_storeStrong(&self->_issuerVerificationPass, a3);
    [(NPKPaymentProvisioningFlowController *)self _requestVerificationOptionsForPass:v7 context:v8];
  }

  else
  {
    v17 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start issuer verification flow!", &v20, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleIssuerVerificationChannel:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = NPKAnalyticsEventEntriesForVerificationChannel(v7);
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"chooseIssuerVerificationChannel", v10);
  [v8 subject:@"provisioning" sendEvent:v9];

  [(NPKPaymentProvisioningFlowController *)self _updateVerificationForPass:self->_issuerVerificationPass channel:v7 context:v6];
}

- (void)handleIssuerVerificationFields:(id)a3 requestContext:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerVerificationFields", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer verification fields: %@ with fields model fields: %@", buf, 0x16u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        fieldsModel = self->_fieldsModel;
        v21 = [v19 identifier];
        v22 = [(PKPaymentSetupFieldsModel *)fieldsModel paymentSetupFieldWithIdentifier:v21];

        v23 = [v19 currentValue];
        [v22 setCurrentValue:v23];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [(NPKPaymentProvisioningFlowController *)self _handleVerificationFieldsForPass:self->_issuerVerificationPass context:v7];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleIssuerVerificationCode:(id)a3 requestContext:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D37D28];
  v9 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerVerificationCode", 0);
  [v8 subject:@"provisioning" sendEvent:v9];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = [v6 length];
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer verification code of length %lu", &v14, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _handleVerificationCode:v6 forPass:self->_issuerVerificationPass context:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)skipIssuerVerification:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D37D28];
  v6 = NPKAnalyticsEventForProvisioningFlowClientInput(@"skipIssuerVerification", 0);
  [v5 subject:@"provisioning" sendEvent:v6];

  if ((self->_currentStep - 230) > 0x14 || ((1 << (LOBYTE(self->_currentStep) + 26)) & 0x100401) == 0)
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: Not on an issuer verification step; cannot skip issuer verification!", v11, 2u);
      }
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:self->_issuerVerificationPass requestContext:v4];
  }
}

- (void)startInAppProvisioningFlowWithConfiguration:(id)a3 requestContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"startInAppProvisioningFlow", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  currentStep = self->_currentStep;
  v12 = pk_Payment_log();
  v13 = v12;
  if (currentStep == 100)
  {
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: starting in-app provisioning flow with configuration %@", &v19, 0xCu);
      }
    }

    objc_storeStrong(&self->_inAppProvisioningRequestConfiguration, a3);
    [(NPKPaymentProvisioningFlowController *)self _handleProvisioningFlowStarted:v8];
  }

  else
  {
    v16 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = pk_Payment_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: Past initialization step; cannot start issuer verification flow!", &v19, 2u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleIssuerApplicationAddRequest:(id)a3 requestContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D37D28];
  v10 = NPKAnalyticsEventForProvisioningFlowClientInput(@"issuerApplicationAddRequest", 0);
  [v9 subject:@"provisioning" sendEvent:v10];

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Handling issuer add request %@", &v21, 0xCu);
    }
  }

  if (self->_currentStep == 300)
  {
    if (v7)
    {
      inAppProvisioningGetRequestTimer = self->_inAppProvisioningGetRequestTimer;
      if (inAppProvisioningGetRequestTimer)
      {
        dispatch_source_cancel(inAppProvisioningGetRequestTimer);
        v15 = self->_inAppProvisioningGetRequestTimer;
        self->_inAppProvisioningGetRequestTimer = 0;
      }

      objc_storeStrong(&self->_inAppProvisioningRequest, a3);
      [v7 setPublicKeyHash:self->_inAppProvisioningPublicKeyHash];
      [v7 setNonce:self->_inAppProvisioningNonce];
      [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v8];
    }

    else
    {
      v19 = PKDisplayableErrorForCommonType();
      [(NPKPaymentProvisioningFlowController *)self _endProvisioningFlowWithError:v19 requestContext:v8];
    }
  }

  else
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: Not on get issuer add request step; cannot handle request!", &v21, 2u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_performRequirementsOrEligibilityForInAppProvisioning:(id)a3
{
  if (self->_inAppProvisioningRequest)
  {
    [(NPKPaymentProvisioningFlowController *)self _performEligibility:a3];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _fetchInAppProvisioningCertificates:a3];
  }
}

- (void)_fetchInAppProvisioningCertificates:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D38070]);
  v6 = [(PKAddPaymentPassRequestConfiguration *)self->_inAppProvisioningRequestConfiguration encryptionScheme];
  v7 = [v5 initWithEncryptionScheme:v6];

  webService = self->_webService;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke;
  v10[3] = &unk_279946288;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(PKPaymentWebService *)webService issuerProvisioningCertificatesForRequest:v7 withCompletion:v10];
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_2;
  v11[3] = &unk_279946260;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_2(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    v4 = *(v3 + 13);
    v5 = [v2 nonce];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_3;
    v19[3] = &unk_279946238;
    *&v6 = a1[4];
    *(&v6 + 1) = a1[5];
    v18 = v6;
    v7 = a1[6];
    v8 = a1[7];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v20 = v18;
    v21 = v9;
    [v4 signNonce:v5 withCompletion:v19];

    v10 = v20;
  }

  else
  {
    v11 = [*(v3 + 3) displayableErrorForProvisioningError:a1[7]];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = PKDisplayableErrorForCommonType();
    }

    v10 = v13;

    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response from issuer provisioning certificates endpoint: %@", buf, 0xCu);
      }
    }

    [a1[5] _sendDidEncounterError:v10 requestContext:a1[6]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_4;
  block[3] = &unk_279946210;
  v11 = v3;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__NPKPaymentProvisioningFlowController__fetchInAppProvisioningCertificates___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setNonceSignature:?];
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *MEMORY[0x277D85DE8];

    [v2 _fetchAddRequestWithCertificatesResponse:v3 requestContext:v4];
  }

  else
  {
    v6 = [*(*(a1 + 48) + 24) displayableErrorForProvisioningError:*(a1 + 64)];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = PKDisplayableErrorForCommonType();
    }

    v9 = v8;

    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response from issuer provisioning certificates endpoint: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 48) _sendDidEncounterError:v9 requestContext:*(a1 + 56)];

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_fetchAddRequestWithCertificatesResponse:(id)a3 requestContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  inAppProvisioningGetRequestTimer = self->_inAppProvisioningGetRequestTimer;
  if (inAppProvisioningGetRequestTimer)
  {
    dispatch_source_cancel(inAppProvisioningGetRequestTimer);
    v9 = self->_inAppProvisioningGetRequestTimer;
    self->_inAppProvisioningGetRequestTimer = 0;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v11 = self->_inAppProvisioningGetRequestTimer;
  self->_inAppProvisioningGetRequestTimer = v10;

  v12 = self->_inAppProvisioningGetRequestTimer;
  v13 = dispatch_time(0, 20000000000);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v14 = self->_inAppProvisioningGetRequestTimer;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __96__NPKPaymentProvisioningFlowController__fetchAddRequestWithCertificatesResponse_requestContext___block_invoke;
  v27 = &unk_2799454E0;
  v28 = self;
  v29 = v7;
  v15 = v7;
  dispatch_source_set_event_handler(v14, &v24);
  dispatch_resume(self->_inAppProvisioningGetRequestTimer);
  v16 = [v6 publicKeyHash];
  inAppProvisioningPublicKeyHash = self->_inAppProvisioningPublicKeyHash;
  self->_inAppProvisioningPublicKeyHash = v16;

  v18 = [v6 nonce];
  inAppProvisioningNonce = self->_inAppProvisioningNonce;
  self->_inAppProvisioningNonce = v18;

  v20 = [[NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext alloc] initWithRequestContext:v15];
  v21 = [v6 certificates];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setCertificates:v21];

  v22 = [v6 nonce];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setNonce:v22];

  v23 = [v6 nonceSignature];
  [(NPKPaymentProvisioningFlowControllerGetIssuerApplicationAddRequestStepContext *)v20 setNonceSignature:v23];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:300 withContext:v20];
}

uint64_t __96__NPKPaymentProvisioningFlowController__fetchAddRequestWithCertificatesResponse_requestContext___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: In-app provisioning timed out waiting for response from client", v8, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = PKDisplayableErrorForCommonType();
  [v5 _endProvisioningFlowWithError:v6 requestContext:*(a1 + 40)];

  return [*(a1 + 32) reset];
}

- (void)_handleProvisioningFlowStarted:(id)a3
{
  v4 = a3;
  v5 = [[NPKPaymentProvisioningFlowControllerPreconditionsStepContext alloc] initWithRequestContext:v4];
  objc_storeStrong(&self->_preconditionsRequestContext, v5);
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:110 withContext:v5];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  webService = self->_webService;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke;
  v10[3] = &unk_279946350;
  v10[4] = self;
  v11 = v4;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v4;
  [(NPKPaymentProvisioningFlowController *)self _configureWebServiceIfNecessary:webService completion:v10];
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_2;
    aBlock[3] = &unk_2799462B0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v27 = v28;
    aBlock[4] = v6;
    v25 = v7;
    v26 = *(a1 + 48);
    v8 = _Block_copy(aBlock);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_3;
    v20[3] = &unk_2799462D8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v23 = v28;
    v20[4] = v9;
    v21 = v10;
    v22 = *(a1 + 48);
    v11 = _Block_copy(v20);
    v12 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_4;
    v16[3] = &unk_279946328;
    v16[4] = v12;
    v13 = v8;
    v17 = v13;
    v19 = *(a1 + 56);
    v14 = v11;
    v18 = v14;
    [v12 _verifyPasscodeStateIfNecessaryWithCompletion:v16];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v15 = PKDisplayableErrorForCommonType();
    [*(a1 + 32) _endProvisioningFlowWithError:v15 requestContext:*(a1 + 40)];
  }
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) _handlePreconditionsVerified:*(a1 + 40)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    [*(a1 + 48) setPreconditionsState:2];
    [*(a1 + 32) _performTransitionToStep:110 withContext:*(a1 + 48)];
  }

  else
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = PKDisplayableErrorForCommonType();
    }

    v7 = v6;
    [*(a1 + 32) _endProvisioningFlowWithError:v6 requestContext:*(a1 + 40)];
  }
}

uint64_t __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_3(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _handlePreconditionsVerified:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  [*(a1 + 48) setPreconditionsState:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _performTransitionToStep:110 withContext:v3];
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    if (*(v6 + 56))
    {
      [*(v6 + 24) validatePreconditionsAndRegister:*(a1 + 40)];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_5;
      v8[3] = &unk_279946300;
      v8[4] = v6;
      v9 = *(a1 + 40);
      v11 = 45;
      v12 = *(a1 + 56);
      v13 = 13;
      v10 = *(a1 + 48);
      [v7 preflightWithRequirements:45 update:v8];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __71__NPKPaymentProvisioningFlowController__handleProvisioningFlowStarted___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v5)
  {
    if ([v5 code] != 5 || (objc_msgSend(*(*(a1 + 32) + 24), "webService"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "paymentSetupSupportedInRegion"), v6, v7 != 1))
    {
      v8 = *(*(a1 + 40) + 16);
LABEL_11:
      v8();
      goto LABEL_12;
    }

LABEL_10:
    v8 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  if ((*(a1 + 56) & ~a2) == 0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = *(a1 + 64);
    v12 = pk_Payment_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_Payment_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "[NPKPaymentProvisioningFlowController _handleProvisioningFlowStarted:]_block_invoke_5";
        v24 = 2048;
        v25 = v10 - v11;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: %s: time taken to all requirements = %fs", &v22, 0x16u);
      }
    }

    goto LABEL_10;
  }

  if ((*(a1 + 72) & ~a2) == 0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v17 = v16;
    v18 = *(a1 + 64);
    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "[NPKPaymentProvisioningFlowController _handleProvisioningFlowStarted:]_block_invoke";
        v24 = 2048;
        v25 = v17 - v18;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: %s: time taken to min requirements = %fs", &v22, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handlePreconditionsVerified:(id)a3
{
  v4 = a3;
  v5 = [[NPKPaymentProvisioningFlowControllerWelcomeStepContext alloc] initWithRequestContext:v4];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:120 withContext:v5];
}

- (void)_handleProductChosen:(id)a3 includeCardsOnFile:(BOOL)a4 requestContext:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Product chosen: %@", buf, 0xCu);
    }
  }

  IsSetupAssistant = NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext);
  provisioningController = self->_provisioningController;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__NPKPaymentProvisioningFlowController__handleProductChosen_includeCardsOnFile_requestContext___block_invoke;
  v18[3] = &unk_279946378;
  v18[4] = self;
  v19 = v8;
  v21 = a4;
  v20 = v9;
  v15 = v9;
  v16 = v8;
  [(PKPaymentProvisioningController *)provisioningController setupProductForProvisioning:v16 includePurchases:!IsSetupAssistant withCompletionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __95__NPKPaymentProvisioningFlowController__handleProductChosen_includeCardsOnFile_requestContext___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
    if (*(a1 + 56))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) _transitionBasedOnCredentials:v9 product:*(a1 + 40) requestContext:*(a1 + 48)];
  }

  else
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when setting up product for provisioning: %@", &v14, 0xCu);
      }
    }

    [*(a1 + 32) _sendDidEncounterError:v7 requestContext:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppleBalanceProductChosen:(id)a3 requestContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance product chosen. Requesting resolve local eligibility with product: %@", buf, 0xCu);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D37D40]) initWithProduct:v7 eligibilitySource:1];
  [(NPKPaymentProvisioningFlowController *)self setCurrentAppleBalanceCredential:v12];

  objc_storeStrong(&self->_currentProduct, a3);
  v13 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  v14 = [(NPKPaymentProvisioningFlowController *)self currentAppleBalanceCredential];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke;
  v18[3] = &unk_2799463A0;
  v18[4] = self;
  v19 = v8;
  v20 = v7;
  v15 = v7;
  v16 = v8;
  [v13 resolveLocalEligibilityRequirementsForAppleBalanceCredential:v14 withCompletion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEBUG, "Debug: Standalone: Apple Balance. Local eligibility resolved. Error: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_106;
  aBlock[3] = &unk_2799463A0;
  v7 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v20 = v7;
  v21 = *(a1 + 48);
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v3)
  {
    (*(v8 + 2))(v8, v3);
  }

  else
  {
    v10 = [*(a1 + 32) _newPaymentEligibilityRequest];
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Requesting eligibility", buf, 2u);
      }
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_108;
    v17[3] = &unk_2799463C8;
    v17[4] = v14;
    v18 = v9;
    [v15 requestEligibility:v10 withCompletionHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_2;
  v7[3] = &unk_279946260;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _transitionToAppleBalanceAccountDetailsWithProduct:a1[7] requestContext:a1[6]];
  }
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Eligibility resolved. Error: %@", buf, 0xCu);
    }
  }

  [*(*(a1 + 32) + 176) setEligibilityResponse:v6];
  [v6 eligibilityStatus];

  v10 = PKProvisioningErrorForAppleBalanceEligibilityStatus();
  if (v10)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x277D37CD0] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_110;
    v13[3] = &unk_279944F48;
    v14 = *(a1 + 40);
    [v11 validateAppleBalanceSecurityRequirementsWithCompletion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __88__NPKPaymentProvisioningFlowController__handleAppleBalanceProductChosen_requestContext___block_invoke_110(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Standalone: Apple Balance security requirements not met. Could not verify/setup Apple Pay cloud store container. Error: %@", &v13, 0xCu);
      }
    }

    v10 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
    v11 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
    v6 = PKDisplayableErrorCustom();
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppleBalanceAccountDetailsAcknowledgedWithProduct:(id)a3 requestContext:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Apple Balance. Acknowledged account details with product: %@", &v12, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleProceedWithCredentials:(id)a3 chosenByUser:(BOOL)a4 requestContext:(id)a5
{
  v6 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Credentials chosen: %@", &v19, 0xCu);
    }
  }

  if (v6)
  {
    v13 = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
    [v13 setCredentialsToProvision:v8];
    v14 = [v13 nextCredentialToProvision];
  }

  else
  {
    if ([v8 count] >= 2)
    {
      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: >1 credentials when not chosen by user!", &v19, 2u);
        }
      }
    }

    v14 = [v8 firstObject];
  }

  [(NPKPaymentProvisioningFlowController *)self _startProvisioningForCredential:v14 requestContext:v9];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startProvisioningForCredential:(id)a3 requestContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_currentCredential, a3);
  v9 = objc_alloc(MEMORY[0x277D38110]);
  v10 = [v9 initWithPaymentSetupFields:MEMORY[0x277CBEBF8]];
  fieldsModel = self->_fieldsModel;
  self->_fieldsModel = v10;

  if ([v7 isAccountCredential])
  {
    v12 = [v7 accountCredential];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__NPKPaymentProvisioningFlowController__startProvisioningForCredential_requestContext___block_invoke;
    v14[3] = &unk_2799463F0;
    v15 = v12;
    v16 = self;
    v17 = v8;
    v13 = v12;
    [(NPKPaymentProvisioningFlowController *)self _requestPassDetailsForAccountCredential:v13 withCompletionHandler:v14];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _requestRequirements:v8];
  }
}

void __87__NPKPaymentProvisioningFlowController__startProvisioningForCredential_requestContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _sendDidEncounterError:? requestContext:?];
  }

  else
  {
    v6 = [*(a1 + 32) passDetailsResponse];
    v7 = [v6 status];

    if (v7 == 1)
    {
      v8 = [*(a1 + 32) account];
      v10 = [v8 creditDetails];

      if (v10 && ([v10 termsAcceptanceRequired] & 1) == 0)
      {
        [*(a1 + 40) setTermsAcceptedOutOfBand:1];
      }

      [*(a1 + 40) _requestRequirements:*(a1 + 48)];
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = PKDisplayableErrorForCommonType();
      [v9 _sendDidEncounterError:v10 requestContext:*(a1 + 48)];
    }
  }
}

- (void)_performNextActionForProvisioningState:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKPaymentProvisioningController *)self->_provisioningController state];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: current State is %ld", &v19, 0xCu);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _noteProvisioningStateChangeForReaderMode:v5];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        [(NPKPaymentProvisioningFlowController *)self _performTerms:v4];
        goto LABEL_31;
      case 4:
        [(NPKPaymentProvisioningFlowController *)self _performProvision:v4];
        goto LABEL_31;
      case 5:
        [(NPKPaymentProvisioningFlowController *)self _handleFinished:v4];
        goto LABEL_31;
    }

    goto LABEL_18;
  }

  switch(v5)
  {
    case 0:
      if (!self->_inAppProvisioningRequestConfiguration)
      {
        [(NPKPaymentProvisioningFlowController *)self _requestRequirements:v4];
        goto LABEL_31;
      }

LABEL_23:
      [(NPKPaymentProvisioningFlowController *)self _performRequirementsOrEligibilityForInAppProvisioning:v4];
      goto LABEL_31;
    case 1:
      if (!self->_inAppProvisioningRequestConfiguration)
      {
        [(NPKPaymentProvisioningFlowController *)self _performEligibility:v4];
        goto LABEL_31;
      }

      goto LABEL_23;
    case 2:
      if ([(NPKPaymentProvisioningFlowController *)self _isPasscodeUpgradeRequired])
      {
        [(NPKPaymentProvisioningFlowController *)self _performPasscodeUpgrade:v4];
      }

      else
      {
        v15 = pk_Payment_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

        if (v16)
        {
          v17 = pk_Payment_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Skipping passcode upgrade", &v19, 2u);
          }
        }

        [(NPKPaymentProvisioningFlowController *)self _handlePasscodeUpgradeCompleteWithSuccess:1 error:0 requestContext:v4];
      }

      goto LABEL_31;
  }

LABEL_18:
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = PKPaymentProvisioningControllerStateToString();
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Error: %{public}@ does not know how to handle provisioning state : %{public}@.", &v19, 0x16u);
    }
  }

LABEL_31:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_newPaymentRequirementsRequest
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_currentCredential)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        currentCredential = self->_currentCredential;
        v23 = 138412290;
        v24 = currentCredential;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from current credential %@", &v23, 0xCu);
      }
    }

    v7 = objc_alloc(MEMORY[0x277D380E8]);
    v8 = self->_currentCredential;
LABEL_13:
    v14 = [v7 initWithPaymentCredential:v8];
    goto LABEL_14;
  }

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (currentAppleBalanceCredential)
  {
    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_currentAppleBalanceCredential;
        v23 = 138412290;
        v24 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from current Apple Balance credential %@", &v23, 0xCu);
      }
    }

    v7 = objc_alloc(MEMORY[0x277D380E8]);
    v8 = self->_currentAppleBalanceCredential;
    goto LABEL_13;
  }

  if (v11)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment requirements request from fields model", &v23, 2u);
    }
  }

  v18 = objc_alloc(MEMORY[0x277D380E8]);
  v19 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
  v20 = [v19 submissionString];
  v21 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38938]];
  v22 = [v21 submissionString];
  v14 = [v18 initWithCardholderName:v20 primaryAccountNumber:v22];

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_newPaymentEligibilityRequest
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_inAppProvisioningRequest)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        inAppProvisioningRequest = self->_inAppProvisioningRequest;
        v48 = 138412290;
        v49 = inAppProvisioningRequest;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from in-app provisioning request %@", &v48, 0xCu);
      }
    }

    v7 = [objc_alloc(MEMORY[0x277D38058]) initWithSource:2];
    v8 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest encryptionVersion];
    [v7 setEncryptionVersion:v8];

    v9 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest encryptedPassData];
    [v7 setEncryptedCardData:v9];

    v10 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest publicKeyHash];
    [v7 setPublicKeyHash:v10];

    v11 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest ephemeralPublicKey];
    [v7 setEphemeralPublicKey:v11];

    v12 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest wrappedKey];
    [v7 setWrappedKey:v12];

    v13 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest issuerIdentifier];
    [v7 setIssuerIdentifier:v13];

    v14 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest hostApplicationIdentifier];
    [v7 setHostApplicationIdentifier:v14];

    v15 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest hostApplicationVersion];
    [v7 setHostApplicationVersion:v15];

    v16 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest FPInfo];
    [v7 setFPInfo:v16];

    v17 = [(PKAddPaymentPassRequest *)self->_inAppProvisioningRequest nonce];
    v18 = [v17 hexEncoding];
    [v7 setNonce:v18];

    goto LABEL_20;
  }

  if (self->_currentCredential)
  {
    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        currentCredential = self->_currentCredential;
        v48 = 138412290;
        v49 = currentCredential;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from current credential %@", &v48, 0xCu);
      }
    }

    v23 = objc_alloc(MEMORY[0x277D38058]);
    v24 = self->_currentCredential;
LABEL_19:
    v7 = [v23 initWithPaymentCredential:v24];
    goto LABEL_20;
  }

  currentAppleBalanceCredential = self->_currentAppleBalanceCredential;
  v26 = pk_Payment_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (currentAppleBalanceCredential)
  {
    if (v27)
    {
      v28 = pk_Payment_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_currentAppleBalanceCredential;
        v48 = 138412290;
        v49 = v29;
        _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from current Apple Balance credential %@", &v48, 0xCu);
      }
    }

    v23 = objc_alloc(MEMORY[0x277D38058]);
    v24 = self->_currentAppleBalanceCredential;
    goto LABEL_19;
  }

  if (v27)
  {
    v32 = pk_Payment_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v48) = 0;
      _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Forming payment eligibility request from fields model", &v48, 2u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x277D38058]) initWithSource:1];
  v33 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
  v34 = [v33 submissionString];
  [v7 setCardholderName:v34];

  if ([v33 source] == 1)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  [v7 setCardholderNameInputMethod:v35];
  v36 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38938]];
  v37 = [v36 submissionString];
  [v7 setPrimaryAccountNumber:v37];

  if ([v36 source] == 1)
  {
    v38 = 2;
  }

  else
  {
    v38 = 1;
  }

  [v7 setPrimaryAccountNumberInputMethod:v38];
  v39 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38918]];
  v40 = [v39 submissionString];
  [v7 setExpiration:v40];

  if ([v39 source] == 1)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  [v7 setExpirationInputMethod:v41];
  v42 = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
  [v7 setProductIdentifier:v42];

  v43 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v44 = *MEMORY[0x277D38948];
  v45 = [v43 submissionValuesForDestination:*MEMORY[0x277D38948]];

  [v7 setOverlayParameters:v45];
  v46 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v47 = [v46 secureSubmissionValuesForDestination:v44];

  [v7 setSecureOverlayParameters:v47];
LABEL_20:
  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_newPaymentProvisioningRequest
{
  v3 = objc_alloc(MEMORY[0x277D38090]);
  v4 = [(PKPaymentProvisioningController *)self->_provisioningController eligibilityResponse];
  v5 = [v3 initWithEligibilityResponse:v4];

  inAppProvisioningRequest = self->_inAppProvisioningRequest;
  if (inAppProvisioningRequest)
  {
    v7 = [(PKAddPaymentPassRequest *)inAppProvisioningRequest activationData];
    [v5 setActivationData:v7];

    if ([(PKAddPaymentPassRequestConfiguration *)self->_inAppProvisioningRequestConfiguration style]== PKAddPaymentPassStyleAccess)
    {
      [v5 setStyle:1];
    }
  }

  else
  {
    v8 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    v9 = [v8 eligibilityResponse];
    [v5 setEligibilityResponse:v9];

    v10 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38928]];
    v11 = [v10 submissionString];
    [v5 setCardSecurityCode:v11];

    v12 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*MEMORY[0x277D38930]];
    v13 = [v12 submissionString];
    [v5 setCardholderName:v13];

    v14 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
    v15 = *MEMORY[0x277D38950];
    v16 = [v14 submissionValuesForDestination:*MEMORY[0x277D38950]];

    [v5 setOverlayParameters:v16];
    v17 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
    v18 = [v17 secureSubmissionValuesForDestination:v15];

    [v5 setSecureOverlayParameters:v18];
  }

  return v5;
}

- (void)_requestRequirements:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: performing requirements", buf, 2u);
    }
  }

  currentCredential = self->_currentCredential;
  if (currentCredential && [(PKPaymentCredential *)currentCredential isPurchasedProductCredential])
  {
    v9 = [(PKPaymentCredential *)self->_currentCredential purchasedProductCredential];
    v10 = self->_provisioningController;
    v11 = [v9 product];
    v12 = [v11 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
    [(PKPaymentProvisioningController *)v10 resolveRequirementsUsingProvisioningMethodMetadata:v12];

    v13 = [(PKPaymentProvisioningController *)v10 requirementsResponse];
    [v9 setRequirementsResponse:v13];

    [(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1];
    v14 = pk_Payment_log();
    LODWORD(v12) = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 product];
        v17 = [v16 displayName];
        v18 = [v9 summaryMetadataDescription];
        *buf = 138412546;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Moving directly to next provisioning step for purchased product %@ (%@).", buf, 0x16u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v4];
  }

  else
  {
    v9 = [(NPKPaymentProvisioningFlowController *)self _newPaymentRequirementsRequest];
    provisioningController = self->_provisioningController;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__NPKPaymentProvisioningFlowController__requestRequirements___block_invoke;
    v21[3] = &unk_279946418;
    v21[4] = self;
    v22 = v4;
    [(PKPaymentProvisioningController *)provisioningController requestRequirements:v9 withCompletionHandler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __61__NPKPaymentProvisioningFlowController__requestRequirements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v12 = pk_Payment_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v13)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138412290;
          v40 = v6;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending requirements request: %@", &v39, 0xCu);
        }
      }

      v15 = *(a1 + 32);
      v16 = [v15[3] displayableErrorForProvisioningError:v6];
    }

    else
    {
      if (v13)
      {
        v25 = pk_Payment_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from requirements!", &v39, 2u);
        }
      }

      v15 = *(a1 + 32);
      v16 = PKDisplayableErrorForCommonType();
    }

    v11 = v16;
    [v15 _sendDidEncounterError:v16 requestContext:*(a1 + 40)];
    goto LABEL_28;
  }

  if ([v5 status] == 2 || PKForcePrivateLabelSetupDisambiguation())
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: PKPaymentRequirementsStatusRequirementsAmbiguous is responded by server", &v39, 2u);
      }
    }

    v10 = [*(*(a1 + 32) + 24) requirementsResponse];
    v11 = [v10 possibleProducts];

    [*(a1 + 32) _transitionToProductDisambiguationWithProducts:v11 requestContext:*(a1 + 40)];
LABEL_28:

    goto LABEL_29;
  }

  if ([v5 status] == 1)
  {
    v17 = *(*(a1 + 32) + 136);
    v18 = [v5 requiredPaymentSetupFields];
    [v17 updateWithPaymentSetupFields:v18];

    if ([*(*(a1 + 32) + 136) hasIncompletePaymentSetupFields])
    {
      v19 = [v5 requiredPaymentSetupFields];
      v20 = [v19 count];

      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_Payment_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 134217984;
          v40 = v20;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Start secondary manual entry with %lu fields.", &v39, 0xCu);
        }
      }

      v24 = *(a1 + 32);
      v11 = [v5 requiredPaymentSetupFields];
      [v24 _transitionToSecondaryManualEntryWithFields:v11 credential:*(*(a1 + 32) + 168) requestContext:*(a1 + 40)];
      goto LABEL_28;
    }

    v35 = pk_Payment_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v37 = pk_Payment_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [*(*(a1 + 32) + 136) paymentSetupFields];
        v39 = 138412290;
        v40 = v38;
        _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Moving directly to next provisioning step since all fields are complete (%@).", &v39, 0xCu);
      }
    }

    [*(a1 + 32) _performNextActionForProvisioningState:*(a1 + 40)];
  }

  else if (![v5 status] || objc_msgSend(v5, "status") == 3)
  {
    v27 = pk_Payment_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v29 = pk_Payment_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: PKPaymentRequirementsStatusUnknownRequirements or PKPaymentRequirementsStatusCardNotSupported is responded by server", &v39, 2u);
      }
    }

    v30 = *(a1 + 32);
    v31 = objc_opt_class();
    v32 = NPKPaymentCardIneligibleReasonForRequirementsStatus([v5 status]);
    v33 = [v5 learnMoreURL];
    v34 = [v31 _displayableErrorWithIneligibilityReason:v32 learnMoreURL:v33];

    [*(a1 + 32) _sendDidEncounterError:v34 requestContext:*(a1 + 40)];
  }

LABEL_29:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_performEligibility:(id)a3
{
  v4 = a3;
  if ([(NPKPaymentProvisioningFlowController *)self _isResolveLocalEligibilityRequired])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke;
    v5[3] = &unk_279946440;
    v5[4] = self;
    v6 = v4;
    [(NPKPaymentProvisioningFlowController *)self _performResolveLocalEligibilityARequirements:v6 completion:v5];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performProvisioningEligibility:v4];
  }
}

void __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke_2;
  v7[3] = &unk_279945880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __60__NPKPaymentProvisioningFlowController__performEligibility___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _performProvisioningEligibility:a1[6]];
  }
}

- (void)_performProvisioningEligibility:(id)a3
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: performing provisioning eligibility", buf, 2u);
    }
  }

  v8 = [(NPKPaymentProvisioningFlowController *)self _newPaymentEligibilityRequest];
  provisioningController = self->_provisioningController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke;
  v11[3] = &unk_279946468;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(PKPaymentProvisioningController *)provisioningController requestEligibility:v8 withCompletionHandler:v11];
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_2;
  v11[3] = &unk_279946260;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  NPKGuaranteeMainThread(v11);
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = *(a1 + 56);
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v8)
      {
        v9 = pk_Payment_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 56);
          *buf = 138412290;
          v28 = v10;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending eligibility request: %@", buf, 0xCu);
        }
      }

      v11 = *(a1 + 40);
      v12 = [v11[3] displayableErrorForProvisioningError:*(a1 + 56)];
    }

    else
    {
      if (v8)
      {
        v19 = pk_Payment_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from requirements!", buf, 2u);
        }
      }

      v11 = *(a1 + 40);
      v12 = PKDisplayableErrorForCommonType();
    }

    v20 = v12;
    [v11 _sendDidEncounterError:v12 requestContext:*(a1 + 48)];

    v21 = *(a1 + 40);
    v22 = *(v21 + 64);
    *(v21 + 64) = 0;

    goto LABEL_23;
  }

  if ([v2 eligibilityStatus] == 1)
  {
    v3 = [*(a1 + 40) _isValidateSecurityRequirementsRequired];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (v3)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_3;
      v25[3] = &unk_279946440;
      v25[4] = v5;
      v26 = v4;
      [v5 _performValidateSecurityRequirements:v26 completion:v25];

LABEL_23:
      v23 = *MEMORY[0x277D85DE8];
      return;
    }

    v17 = *MEMORY[0x277D85DE8];
    v18 = *(a1 + 40);

    [v18 _handleEligibiltySuccessWithContext:v4];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = NPKPaymentCardIneligibleReasonForEligibilityStatus([*(a1 + 32) eligibilityStatus]);
    v15 = [*(a1 + 32) learnMoreURL];
    v24 = [v13 _displayableErrorWithIneligibilityReason:v14 learnMoreURL:v15];

    [*(a1 + 40) _sendDidEncounterError:v24 requestContext:*(a1 + 48)];
    v16 = *MEMORY[0x277D85DE8];
  }
}

void __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_4;
  v7[3] = &unk_279945880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  NPKGuaranteeMainThread(v7);
}

uint64_t __72__NPKPaymentProvisioningFlowController__performProvisioningEligibility___block_invoke_4(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _sendDidEncounterError:v3 requestContext:a1[6]];
  }

  else
  {
    return [v2 _handleEligibiltySuccessWithContext:a1[6]];
  }
}

- (void)_handleEligibiltySuccessWithContext:(id)a3
{
  v4 = a3;
  if (PKEnableDynamicSEAllocation())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke;
    v5[3] = &unk_2799464B8;
    v5[4] = self;
    v6 = v4;
    [(NPKPaymentProvisioningFlowController *)self _performSEStorageCheck:v5];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextActionForProvisioningState:v4];
  }
}

void __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke_2;
  v3[3] = &unk_279946490;
  v5 = a2;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  NPKGuaranteeMainThread(v3);
}

void __76__NPKPaymentProvisioningFlowController__handleEligibiltySuccessWithContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _performNextActionForProvisioningState:v3];
  }

  else
  {
    v4 = PKDisplayableErrorForCommonType();
    [*(a1 + 32) _sendDidEncounterError:v4 requestContext:*(a1 + 40)];
  }
}

- (void)_performResolveLocalEligibilityARequirements:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Resolving local eligibility requirements", buf, 2u);
    }
  }

  currentCredential = self->_currentCredential;
  if (!currentCredential)
  {
    currentCredential = self->_currentAppleBalanceCredential;
  }

  provisioningController = self->_provisioningController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__NPKPaymentProvisioningFlowController__performResolveLocalEligibilityARequirements_completion___block_invoke;
  v13[3] = &unk_279945218;
  v14 = v5;
  v11 = v5;
  v12 = currentCredential;
  [(PKPaymentProvisioningController *)provisioningController resolveLocalEligibilityRequirementsForAppleBalanceCredential:v12 withCompletion:v13];
}

void __96__NPKPaymentProvisioningFlowController__performResolveLocalEligibilityARequirements_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Local eligibility resolved. Error: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performValidateSecurityRequirements:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277D37CD0] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__NPKPaymentProvisioningFlowController__performValidateSecurityRequirements_completion___block_invoke;
  v7[3] = &unk_279944F48;
  v8 = v4;
  v6 = v4;
  [v5 validateAppleBalanceSecurityRequirementsWithCompletion:v7];
}

void __88__NPKPaymentProvisioningFlowController__performValidateSecurityRequirements_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Standalone: Apple Balance security requirements not met. Could not verify/setup Apple Pay cloud store container. Error: %@", &v14, 0xCu);
      }
    }

    v10 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
    v11 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
    v6 = PKDisplayableErrorCustom();
  }

  else
  {
    v6 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_performSEStorageCheck:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Performing SE storage check.", buf, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(PKPaymentProvisioningController *)self->_provisioningController eligibilityResponse];
  v10 = [v9 paymentApplications];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) appletTypeIdentifier];
        [v8 npkSafelyAddObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  [(NPKPaymentProvisioningFlowController *)self _checkSpaceAvailableForAppletTypes:v8 triedCleanup:0 completion:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_checkSpaceAvailableForAppletTypes:(id)a3 triedCleanup:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D38230];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke;
  v13[3] = &unk_2799464E0;
  v17 = a4;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 getCurrentSnapshot:v13];
}

void __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v15 = *(*(a1 + 48) + 16);
LABEL_16:
    v15();
    goto LABEL_17;
  }

  v5 = [v3 canFitAppletTypes:*(a1 + 32)];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBOOL();
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: SE storage check returned can fit applets on SE: %@ from snapshot %@", buf, 0x16u);
    }
  }

  if (PKDynamicSEAllocationFakeFullSE())
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v5 = 0;
    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Overriding canFit to NO b/c fake full se", buf, 2u);
      }

      v5 = 0;
    }
  }

  if (*(a1 + 56) & 1) != 0 || (v5)
  {
    v15 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v13 = [objc_alloc(MEMORY[0x277D38228]) initWithWebService:*(*(a1 + 40) + 104)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__NPKPaymentProvisioningFlowController__checkSpaceAvailableForAppletTypes_triedCleanup_completion___block_invoke_126;
  v18[3] = &unk_279945A48;
  v17 = *(a1 + 32);
  v14 = v17.i64[0];
  v19 = vextq_s8(v17, v17, 8uLL);
  v20 = *(a1 + 48);
  [v13 debugPerformSECleanup:v18];

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performPasscodeUpgrade:(id)a3
{
  v4 = a3;
  provisioningController = self->_provisioningController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke;
  v7[3] = &unk_279946530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKPaymentProvisioningController *)provisioningController preflightPasscodeUpgradeWithCompletion:v7];
}

void __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke_2;
  v11[3] = &unk_279946508;
  v15 = a2;
  v16 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __64__NPKPaymentProvisioningFlowController__performPasscodeUpgrade___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 57);
      v7 = *(a1 + 32);
      v13[0] = 67109634;
      v13[1] = v5;
      v14 = 1024;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Preflighted passcode upgrade with success %d, meets policy %d, error %@", v13, 0x18u);
    }
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57) == 1)
    {
      [*(a1 + 40) _handlePasscodeUpgradeCompleteWithSuccess:1 error:0 requestContext:*(a1 + 48)];
    }

    else
    {
      v11 = [[NPKPaymentProvisioningFlowControllerPasscodeUpgradeStepContext alloc] initWithRequestContext:*(a1 + 48)];
      [*(a1 + 40) _performTransitionToStep:197 withContext:v11];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = PKDisplayableErrorForCommonType();
    [v9 _sendDidEncounterError:v10 requestContext:*(a1 + 48)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performTerms:(id)a3
{
  provisioningController = self->_provisioningController;
  v5 = a3;
  v7 = [(PKPaymentProvisioningController *)provisioningController eligibilityResponse];
  v6 = [v7 termsURL];
  [(NPKPaymentProvisioningFlowController *)self _transitionBasedOnTermsForReason:0 URL:v6 requestContext:v5];
}

- (void)_performProvision:(id)a3
{
  v4 = a3;
  [(NPKPaymentProvisioningFlowController *)self _transitionToProvisioningProgressWithRequestContext:v4];
  v5 = [(NPKPaymentProvisioningFlowController *)self _newPaymentProvisioningRequest];
  v6 = MEMORY[0x277CBFBF8];
  v7 = PKPassKitCoreBundle();
  v8 = [v6 newAssertionForBundle:v7 withReason:@"User-requested Wallet pass provisioning"];

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Requesting externalized auth...", buf, 2u);
    }
  }

  v12 = [(NPKPaymentProvisioningFlowController *)self fidoAuthCoordinator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke;
  v16[3] = &unk_279946580;
  v16[4] = self;
  v17 = v5;
  v18 = v4;
  v19 = v8;
  v13 = v8;
  v14 = v4;
  v15 = v5;
  [v12 requestAuthorizationWithCompletion:v16];
}

void __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke_2;
  block[3] = &unk_279946558;
  v22 = a2;
  v18 = v8;
  v19 = v9;
  v16 = *(a1 + 32);
  v10 = *(&v16 + 1);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v20 = v16;
  v21 = v13;
  v14 = v9;
  v15 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__NPKPaymentProvisioningFlowController__performProvision___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v18 = 138412802;
      v19 = v6;
      v20 = 1024;
      v21 = v5;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Created context %@ with success %i and error %@", &v18, 0x1Cu);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v8 = [*(a1 + 48) fidoAuthCoordinator];
    v9 = [v8 context];
    v10 = [v9 externalizedContext];

    [*(*(a1 + 48) + 24) storeExternalizedAuth:v10];
    [*(a1 + 48) _performProvisionWithRequest:*(a1 + 56) requestContext:*(a1 + 64) assertion:*(a1 + 72)];
LABEL_13:

    goto LABEL_14;
  }

  if (*(a1 + 40))
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Standalone: Error: Unable to request and store externalized auth! %@", &v18, 0xCu);
      }
    }

    v15 = [*(a1 + 48) fidoAuthCoordinator];
    [v15 clearContext];

    v16 = *(a1 + 48);
    v10 = [v16[3] displayableErrorForProvisioningError:*(a1 + 40)];
    [v16 _sendDidEncounterError:v10 requestContext:*(a1 + 64)];
    goto LABEL_13;
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performProvisionWithRequest:(id)a3 requestContext:(id)a4 assertion:(id)a5
{
  v8 = a4;
  v9 = a5;
  provisioningController = self->_provisioningController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__NPKPaymentProvisioningFlowController__performProvisionWithRequest_requestContext_assertion___block_invoke;
  v13[3] = &unk_2799465A8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  [(PKPaymentProvisioningController *)provisioningController requestProvisioning:a3 withCompletion:v13];
}

void __94__NPKPaymentProvisioningFlowController__performProvisionWithRequest_requestContext_assertion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [*(a1 + 32) invalidate];
  if (a2)
  {
    [*(a1 + 40) _performNextActionForProvisioningState:*(a1 + 48)];
    v7 = [*(a1 + 40) fidoAuthCoordinator];

    if (v7)
    {
      v8 = [*(a1 + 40) fidoAuthCoordinator];
      [v8 clearContext];
    }
  }

  else
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      if (v10)
      {
        v11 = pk_Payment_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v6;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Error occurred when sending provision request: %@", &v19, 0xCu);
        }
      }

      v12 = *(a1 + 40);
      v13 = [v12[3] displayableErrorForProvisioningError:v6];
    }

    else
    {
      if (v10)
      {
        v14 = pk_Payment_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: No response or error from provision!", &v19, 2u);
        }
      }

      v12 = *(a1 + 40);
      v13 = PKDisplayableErrorForCommonType();
    }

    v15 = v13;
    [v12 _sendDidEncounterError:v13 requestContext:*(a1 + 48)];

    v16 = *(a1 + 40);
    v17 = *(v16 + 64);
    *(v16 + 64) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleFinished:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPass];
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 7)
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Provisioning is complete, but waiting for reader mode second tap", v9, 2u);
      }
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _performNextStepForProvisionedPass:v5 requestContext:v4];
  }
}

- (void)_performNextStepForProvisionedPass:(id)a3 moreInfoAcknowledged:(BOOL)a4 requestContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
  v12 = [v11 targetDevice];
  v13 = [v12 secureElementIdentifiers];
  [v9 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v13];

  v14 = [v9 devicePrimaryPaymentApplication];
  v15 = [v14 state];

  v16 = [(PKPaymentProvisioningController *)self->_provisioningController moreInfoItems];
  v17 = v16;
  if (a4 || ![v16 count])
  {
    if ((v15 - 3) > 1)
    {
      [(NPKPaymentProvisioningFlowController *)self _handleEndOfProvisioningFlowForCurrentPass:v9 requestContext:v10];
    }

    else
    {
      v18 = pk_Payment_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = pk_Payment_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Verification is necessary", v21, 2u);
        }
      }

      objc_storeStrong(&self->_issuerVerificationPass, a3);
      [(NPKPaymentProvisioningFlowController *)self _requestVerificationOptionsForPass:v9 context:v10];
    }
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _transitionToMoreInformationWithItems:v17 pass:v9 requestContext:v10];
  }
}

- (void)_handleVerificationResponseForPass:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self->_webService verificationRecordForPass:v6];
  v9 = [v8 verificationStatus];
  switch(v9)
  {
    case 3:
      v15 = [v8 channel];
      v14 = v15;
      if (v15 && ([v15 type] == 2 || objc_msgSend(v14, "type") == 1))
      {
        [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationCodeWithPaymentPass:v6 channel:v14 requestContext:v7];
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __83__NPKPaymentProvisioningFlowController__handleVerificationResponseForPass_context___block_invoke;
        v20[3] = &unk_2799465D0;
        v20[4] = self;
        v21 = v7;
        [(NPKPaymentProvisioningFlowController *)self _downloadAndAddUpdatedPassForPaymentPass:v6 completion:v20];
      }

      break;
    case 2:
      v14 = [v8 allChannels];
      [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationChannelsWithPaymentPass:v6 channels:v14 requestContext:v7];
      break;
    case 1:
      v10 = objc_alloc(MEMORY[0x277D38110]);
      v11 = [v8 requiredVerificationFields];
      v12 = [v10 initWithPaymentSetupFields:v11];
      fieldsModel = self->_fieldsModel;
      self->_fieldsModel = v12;

      v14 = [v8 requiredVerificationFields];
      [(NPKPaymentProvisioningFlowController *)self _transitionToVerificationFieldsWithPaymentPass:v6 fields:v14 requestContext:v7];
      break;
    default:
      v16 = pk_Payment_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_Payment_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Standalone verification status: unknown, showing error.", v19, 2u);
        }
      }

      v14 = PKDisplayableErrorForCommonType();
      [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:v14 requestContext:v7];
      break;
  }
}

- (void)_requestVerificationOptionsForPass:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D38160] requestWithPass:v6];
  webService = self->_webService;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke;
  v12[3] = &unk_2799465F8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(PKPaymentWebService *)webService verificationOptionsForRequest:v8 completion:v12];
}

void __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__NPKPaymentProvisioningFlowController__requestVerificationOptionsForPass_context___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = *MEMORY[0x277D85DE8];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v14 = 134218242;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification options failed (result %lu). Showing error: %@", &v14, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateVerificationForPass:(id)a3 channel:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  webService = self->_webService;
  v11 = a4;
  v12 = [(PKPaymentWebService *)webService verificationRecordForPass:v8];
  v13 = objc_alloc_init(MEMORY[0x277D38168]);
  v14 = [v12 currentStepIdentifier];
  [v13 setStepIdentifier:v14];

  [v13 setPass:v8];
  [v13 setChannel:v11];

  v15 = self->_webService;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke;
  v18[3] = &unk_2799465F8;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v16 = v9;
  v17 = v8;
  [(PKPaymentWebService *)v15 updateVerification:v13 completion:v18];
}

void __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__NPKPaymentProvisioningFlowController__updateVerificationForPass_channel_context___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = *MEMORY[0x277D85DE8];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v14 = 134218242;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification fields failed (result %lu). Showing error: %@", &v14, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleVerificationFieldsForPass:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self->_webService verificationRecordForPass:v6];
  v9 = objc_alloc_init(MEMORY[0x277D38168]);
  v10 = [v8 currentStepIdentifier];
  [v9 setStepIdentifier:v10];

  [v9 setPass:v6];
  v11 = [v8 channel];
  [v9 setChannel:v11];

  v12 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v13 = *MEMORY[0x277D38940];
  v14 = [v12 submissionValuesForDestination:*MEMORY[0x277D38940]];

  [v9 setOverlayParameters:v14];
  v15 = [(NPKPaymentProvisioningFlowController *)self fieldsModel];
  v16 = [v15 secureSubmissionValuesForDestination:v13];

  [v9 setSecureOverlayParameters:v16];
  webService = self->_webService;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke;
  v20[3] = &unk_2799465F8;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v18 = v7;
  v19 = v6;
  [(PKPaymentWebService *)webService updateVerification:v9 completion:v20];
}

void __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__NPKPaymentProvisioningFlowController__handleVerificationFieldsForPass_context___block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[8] == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = *MEMORY[0x277D85DE8];

    [v2 _handleVerificationResponseForPass:v3 context:v4];
  }

  else
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[7];
        v9 = a1[8];
        v14 = 134218242;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: requesting verification fields failed (result %lu). Showing error: %@", &v14, 0x16u);
      }
    }

    v11 = a1[4];
    v12 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:a1[7]];
    [v11 _sendDidEncounterError:v12 requestContext:a1[6]];

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleVerificationCode:(id)a3 forPass:(id)a4 context:(id)a5
{
  v8 = a5;
  webService = self->_webService;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke;
  v11[3] = &unk_279946620;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(PKPaymentWebService *)webService submitVerificationCode:a3 verificationData:0 forPass:a4 completion:v11];
}

void __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_2;
  block[3] = &unk_279945490;
  v16 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__NPKPaymentProvisioningFlowController__handleVerificationCode_forPass_context___block_invoke_3;
    v12[3] = &unk_2799465D0;
    v12[4] = v2;
    v13 = *(a1 + 48);
    [v2 _downloadRemoteAssetsAndAddPaymentPass:v3 completion:v12];
  }

  else
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        *buf = 134218242;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Standalone: submitting verification code failed (result %lu). Showing error: %@", buf, 0x16u);
      }
    }

    v9 = *(a1 + 32);
    v10 = [objc_opt_class() _displayableErrorWithUnderlyingVerificationError:*(a1 + 56)];
    [v9 _sendDidEncounterError:v10 requestContext:*(a1 + 48)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAndAddUpdatedPassForPaymentPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  webService = self->_webService;
  v9 = [v6 passTypeIdentifier];
  v10 = [v6 serialNumber];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__NPKPaymentProvisioningFlowController__downloadAndAddUpdatedPassForPaymentPass_completion___block_invoke;
  v13[3] = &unk_279946648;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PKPaymentWebService *)webService passWithPassTypeIdentifier:v9 serialNumber:v10 completion:v13];
}

- (void)_downloadRemoteAssetsAndAddPaymentPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataAccessor];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke;
  v11[3] = &unk_279946698;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:0 completion:v11];
}

void __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 104) targetDevice];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 104);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke_2;
    v6[3] = &unk_279946670;
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v3 paymentWebService:v5 addPaymentPass:v4 withCompletionHandler:v6];
  }
}

uint64_t __90__NPKPaymentProvisioningFlowController__downloadRemoteAssetsAndAddPaymentPass_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_provisioningLocalizedProgressDescriptionDidChange:(id)a3
{
  if (self->_currentStep == 210)
  {
    v7 = [[NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext alloc] initWithRequestContext:self->_provisioningProgressRequestContext];
    v5 = [(PKPaymentProvisioningController *)self->_provisioningController localizedProgressDescription];
    [(NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext *)v7 setLocalizedProgressDescription:v5];

    v6 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
    [(NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext *)v7 setProduct:v6];

    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:210 withContext:v7];
  }
}

- (void)_transitionToChooseFlowWithSections:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKPaymentProvisioningFlowControllerChooseFlowStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerChooseFlowStepContext *)v8 setSections:v7];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:130 withContext:v8];
}

- (void)_transitionToChooseProductWithProducts:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKPaymentProvisioningFlowControllerChooseProductStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerChooseProductStepContext *)v8 setProducts:v7];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:135 withContext:v8];
}

- (void)_transitionBasedOnTermsForReason:(unint64_t)a3 URL:(id)a4 requestContext:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  self->_termsReason = a3;
  v9 = a5;
  v10 = [[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext alloc] initWithRequestContext:v9];

  v11 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)v10 setProduct:v11];

  [(NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext *)v10 setTermsURL:v8];
  v12 = [(PKPaymentWebService *)self->_webService context];
  -[NPKPaymentProvisioningFlowControllerTermsAndConditionsStepContext setAllowNonSecureHTTP:](v10, "setAllowNonSecureHTTP:", [v12 devSigned]);

  if (v8 && !self->_termsAcceptedOutOfBand)
  {
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:200 withContext:v10];
  }

  else
  {
    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        termsAcceptedOutOfBand = self->_termsAcceptedOutOfBand;
        v19 = 138412546;
        v20 = v8;
        v21 = 1024;
        v22 = termsAcceptedOutOfBand;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Not showing terms (termsURL %@, accepted out of band %d)", &v19, 0x12u);
      }
    }

    self->_termsAcceptedOutOfBand = 0;
    v17 = [(NPKPaymentProvisioningFlowStepContext *)v10 requestContext];
    [(NPKPaymentProvisioningFlowController *)self acceptTerms:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToProvisioningProgressWithRequestContext:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_provisioningProgressRequestContext, a3);
  currentStep = self->_currentStep;
  if (currentStep != 165 && currentStep != 210)
  {
    v6 = [[NPKPaymentProvisioningFlowControllerProvisioningProgressStepContext alloc] initWithRequestContext:self->_provisioningProgressRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:210 withContext:v6];
  }
}

- (void)_transitionToProvisioningForCredential:(id)a3 product:(id)a4 requestContext:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isRemoteCredential] && (objc_msgSend(v8, "remoteCredential"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "status"), v11, v12 != 1))
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (!v19)
    {
      goto LABEL_9;
    }

    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [v9 displayName];
      v21 = [v8 longDescription];
      v22 = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for product[%@] credential [%@]", &v22, 0x16u);
    }
  }

  else
  {
    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Single remote credential", &v22, 2u);
      }
    }

    v26[0] = v8;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [(NPKPaymentProvisioningFlowController *)self _handleProceedWithCredentials:v16 chosenByUser:0 requestContext:v10];
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_transitionBasedOnCredentials:(id)a3 product:(id)a4 requestContext:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 count])
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      if (v15)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 productIdentifier];
          v18 = [v9 provisioningMethodTypes];
          v27 = 138412546;
          v28 = v17;
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Have product with identifier %@ provisioning method types %@", &v27, 0x16u);
        }
      }

      if (!NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext))
      {
        v19 = [v9 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];

        if (v19)
        {
          [(NPKPaymentProvisioningFlowController *)self _transitionToDigitalIssuanceForProduct:v9 requestContext:v10];
          goto LABEL_27;
        }
      }

      v20 = [v9 provisioningMethodMetadataForType:*MEMORY[0x277D388E8]];

      if (v20)
      {
        [(NPKPaymentProvisioningFlowController *)self _transitionToReaderModeForProduct:v9 requestContext:v10];
        goto LABEL_27;
      }

      v22 = pk_General_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (v23)
      {
        v24 = pk_General_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: Error: No valid provisioning methods exist for product; transitioning to manual entry", &v27, 2u);
        }
      }

      currentProduct = self->_currentProduct;
      self->_currentProduct = 0;
    }

    else if (v15)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Enter Manual Entry, no credentials found", &v27, 2u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _transitionToManualEntry:v10];
    goto LABEL_27;
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: TransitionToRemoteCredentials Step", &v27, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self _transitionToChooseCredentials:v8 product:v9 requestContext:v10];
LABEL_27:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToChooseCredentials:(id)a3 product:(id)a4 requestContext:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v23 = a5;
  v21 = [[NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext alloc] initWithRequestContext:v23];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 remoteCredential];
        v16 = [v15 identifier];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v19 = [MEMORY[0x277CCAD78] UUID];
          v18 = [v19 UUIDString];
        }

        [v9 addObject:v18];
        [v8 setObject:v14 forKey:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v21 setFlowIdentifiers:v9];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v21 setFlowIdentifierToCredential:v8];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v21 setAllowsManualEntry:1];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v21 setProduct:v24];
  [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)v21 setCredentials:obj];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:140 withContext:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToAppleBalanceAccountDetailsWithProduct:(id)a3 requestContext:(id)a4
{
  v5 = a4;
  v20 = [[NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext alloc] initWithRequestContext:v5];

  v6 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  v7 = [v6 webService];
  v8 = [v7 targetDevice];
  v9 = [v8 appleAccountInformation];
  v10 = [v9 appleID];

  [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)v20 setAppleID:v10];
  v11 = [(NPKPaymentProvisioningFlowController *)self currentAppleBalanceCredential];
  v12 = [v11 eligibilityResponse];
  v13 = [v12 supplementaryData];
  v14 = [v13 lightweightAccount];

  v15 = [v14 appleBalanceDetails];
  v16 = [v15 accountSummary];
  v17 = [v16 currentBalance];
  v18 = [v15 currencyCode];
  v19 = PKCurrencyAmountMake();
  [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)v20 setBalance:v19];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:260 withContext:v20];
}

- (id)_curatedDefaultPaymentSetupProvisioningFields
{
  v3 = [MEMORY[0x277D38110] defaultPaymentSetupProvisioningFields];
  if ([(PKPaymentProvisioningController *)self->_provisioningController suppressDefaultCardholderNameField])
  {
    v4 = [v3 pk_objectsPassingTest:&__block_literal_global_151];

    v3 = v4;
  }

  return v3;
}

uint64_t __85__NPKPaymentProvisioningFlowController__curatedDefaultPaymentSetupProvisioningFields__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38930]];

  return v3 ^ 1u;
}

- (void)_transitionToManualEntry:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = a3;
  currentCredential = self->_currentCredential;
  self->_currentCredential = 0;

  v5 = objc_alloc(MEMORY[0x277D38110]);
  v6 = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
  v7 = [v5 initWithPaymentSetupFields:v6];
  fieldsModel = self->_fieldsModel;
  self->_fieldsModel = v7;

  [(PKPaymentProvisioningController *)self->_provisioningController resetForNewProvisioning];
  v9 = [(PKPaymentWebService *)self->_webService context];
  v10 = [v9 configuration];

  v11 = [(PKPaymentWebService *)self->_webService targetDevice];
  v12 = [v11 deviceRegion];

  v30 = [v10 cameraFirstProvisioningEnabledForRegion:v12];
  v13 = [(NPKPaymentProvisioningFlowController *)self _curatedDefaultPaymentSetupProvisioningFields];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 defaultValue];

        if (!v19)
        {
          v20 = self->_fieldsModel;
          v21 = [v18 identifier];
          v22 = [(PKPaymentSetupFieldsModel *)v20 paymentSetupFieldWithIdentifier:v21];

          if (v22)
          {
            v23 = [v22 defaultValue];
            [v18 setDefaultValue:v23];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  v24 = [v13 count];
  v25 = pk_Payment_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v27 = pk_Payment_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = v24;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: There are %lu fields required in the Manual Entry", buf, 0xCu);
    }
  }

  v28 = [[NPKPaymentProvisioningFlowControllerManualEntryStepContext alloc] initWithRequestContext:v31];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v28 setCameraFirstProvisioningEnabled:v30];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v28 setSetupFields:v13];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:180 withContext:v28];

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_credentialReadonlyFieldIdentifiers
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277D38920];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_secondaryFilteredFields:(id)a3 forCredential:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__NPKPaymentProvisioningFlowController__secondaryFilteredFields_forCredential___block_invoke;
    v11[3] = &unk_2799466E0;
    v11[4] = self;
    v8 = [v6 pk_objectsPassingTest:v11];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

uint64_t __79__NPKPaymentProvisioningFlowController__secondaryFilteredFields_forCredential___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) _credentialReadonlyFieldIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_transitionToSecondaryManualEntryWithFields:(id)a3 credential:(id)a4 requestContext:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  fieldsModel = self->_fieldsModel;
  v10 = a5;
  [(PKPaymentSetupFieldsModel *)fieldsModel updateWithPaymentSetupFields:a3];
  v11 = [(NPKPaymentProvisioningFlowController *)self _fieldsModelCompleteExceptForLocalFields:self->_fieldsModel];
  if (v11)
  {
    v12 = [[NPKPaymentProvisioningFlowControllerLocalDeviceManualEntryStepContext alloc] initWithRequestContext:v10];

    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel incompletePaymentSetupFields];
        v28 = 138412546;
        v29 = v8;
        v30 = 2048;
        v31 = [v16 count];
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered Local Device Manual Entry for credential %@. There are %lu incomplete fields.", &v28, 0x16u);
      }

      v17 = 192;
LABEL_10:

      goto LABEL_13;
    }

    v17 = 192;
  }

  else
  {
    v12 = [[NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext alloc] initWithRequestContext:v10];

    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel incompletePaymentSetupFields];
        v28 = 138412546;
        v29 = v8;
        v30 = 2048;
        v31 = [v20 count];
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered Secondary Manual Entry for credential %@. There are %lu incomplete fields.", &v28, 0x16u);
      }

      v17 = 190;
      goto LABEL_10;
    }

    v17 = 190;
  }

LABEL_13:
  v21 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFields];
  v22 = [(NPKPaymentProvisioningFlowController *)self _filteredPaymentSetupFields:v21 forLocalDeviceEntry:v11];

  v23 = [(NPKPaymentProvisioningFlowController *)self _secondaryFilteredFields:v22 forCredential:v8];
  [(NPKPaymentProvisioningFlowControllerManualEntryStepContext *)v12 setSetupFields:v23];
  [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)v12 setCredential:v8];
  v24 = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
  v25 = [v24 count];

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v8 != 0;
  }

  [(NPKPaymentProvisioningFlowStepContext *)v12 setAllowsAddLater:v25 != 0];
  [(NPKPaymentProvisioningFlowControllerSecondaryManualEntryStepContext *)v12 setAllowsAddingDifferentCard:v26];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:v17 withContext:v12];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToProductDisambiguationWithProducts:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerProductDisambiguationStepContext *)v8 setProducts:v7];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:195 withContext:v8];
}

- (void)_transitionToMoreInformationWithItems:(id)a3 pass:(id)a4 requestContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [v8 count];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered more information step. There are %lu more info items", &v16, 0xCu);
    }
  }

  v14 = [[NPKPaymentProvisioningFlowControllerMoreInformationStepContext alloc] initWithRequestContext:v9];

  [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)v14 setPaymentPass:v10];
  [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)v14 setMoreInfoItems:v8];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:157 withContext:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToVerificationChannelsWithPaymentPass:(id)a3 channels:(id)a4 requestContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [v8 count];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification options step. There are %lu channels", &v16, 0xCu);
    }
  }

  v14 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext alloc] initWithRequestContext:v9];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)v14 setPaymentPass:v10];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationChannelsStepContext *)v14 setVerificationChannels:v8];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:230 withContext:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToVerificationFieldsWithPaymentPass:(id)a3 fields:(id)a4 requestContext:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 count];
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v11;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification fields step. There are %lu fields required", &v17, 0xCu);
    }
  }

  v15 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext alloc] initWithRequestContext:v8];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)v15 setPaymentPass:v10];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationFieldsStepContext *)v15 setVerificationFields:v9];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:240 withContext:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToVerificationCodeWithPaymentPass:(id)a3 channel:(id)a4 requestContext:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 description];
      v17 = 136315138;
      v18 = [v14 UTF8String];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: Entered verification code step with channel %s", &v17, 0xCu);
    }
  }

  v15 = [[NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext alloc] initWithRequestContext:v9];

  [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)v15 setPaymentPass:v10];
  [(NPKPaymentProvisioningFlowControllerIssuerVerificationCodeStepContext *)v15 setVerificationChannel:v8];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:250 withContext:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleEndOfProvisioningFlowForCurrentPass:(id)a3 requestContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Standalone: End of provisioning flow for current card", v18, 2u);
    }
  }

  self->_termsAcceptedOutOfBand = 0;
  v11 = [(PKPaymentProvisioningController *)self->_provisioningController credentialProvisioningQueue];
  v12 = [v11 remaining];
  v13 = [v11 nextCredentialToProvision];
  if (v13)
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109378;
        v18[1] = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: %d credentials remaining; moving to credential: %@", v18, 0x12u);
      }
    }

    [(NPKPaymentProvisioningFlowController *)self _startProvisioningForCredential:v13 requestContext:v7];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self _endProvisioningFlowWithSuccessForPass:v6 requestContext:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_endProvisioningFlowWithSuccessForPass:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKPaymentProvisioningFlowControllerProvisioningResultStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setCardAdded:1];
  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setProvisionedPass:v7];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:220 withContext:v8];
}

- (void)_endProvisioningFlowWithError:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKPaymentProvisioningFlowControllerProvisioningResultStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setCardAdded:0];
  [(NPKPaymentProvisioningFlowControllerProvisioningResultStepContext *)v8 setError:v7];

  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:220 withContext:v8];
}

- (void)_performTransitionToStep:(int)a3 withContext:(id)a4
{
  v21 = a4;
  if (([v21 allowsAddLater] & 1) == 0 && NPKPaymentProvisioningSetupContextIsSetupAssistant(self->_setupContext))
  {
    [v21 setAllowsAddLater:1];
  }

  if (((a3 - 100) > 0x39 || ((1 << (a3 - 100)) & 0x200000000100401) == 0) && a3 != 220)
  {
    if (a3 == 210 && (chooseCredentialsStepIdentifier = self->_immediatelyBeforeTermsStepIdentifier) != 0)
    {
      v7 = v21;
    }

    else
    {
      v8 = v21;
      if (a3 != 190 || !self->_chooseCredentialsStepIdentifier)
      {
        if (a3 != 150 || (digitalIssuanceAmountRequestContext = self->_digitalIssuanceAmountRequestContext) == 0)
        {
LABEL_16:
          v11 = [v8 backStepIdentifier];

          if (!v11)
          {
            v12 = [v21 requestContext];
            v13 = [v12 currentStepIdentifier];
            [v21 setBackStepIdentifier:v13];
          }

          goto LABEL_18;
        }

        v20 = [(NPKPaymentProvisioningFlowControllerRequestContext *)digitalIssuanceAmountRequestContext currentStepIdentifier];
        [v21 setBackStepIdentifier:v20];

LABEL_15:
        v8 = v21;
        goto LABEL_16;
      }

      v9 = [v21 secondaryManualEntryStepContext];
      v10 = [v9 credential];

      v8 = v21;
      if (!v10)
      {
        goto LABEL_16;
      }

      chooseCredentialsStepIdentifier = self->_chooseCredentialsStepIdentifier;
      v7 = v21;
    }

    [v7 setBackStepIdentifier:chooseCredentialsStepIdentifier];
    goto LABEL_15;
  }

LABEL_18:
  currentStep = self->_currentStep;
  self->_currentStep = a3;
  if (a3 == 200)
  {
    v16 = [v21 requestContext];
    v17 = [v16 currentStepIdentifier];
    immediatelyBeforeTermsStepIdentifier = self->_immediatelyBeforeTermsStepIdentifier;
    self->_immediatelyBeforeTermsStepIdentifier = v17;
  }

  else
  {
    if (a3 != 140)
    {
      goto LABEL_23;
    }

    v15 = [v21 stepIdentifier];
    v16 = self->_chooseCredentialsStepIdentifier;
    self->_chooseCredentialsStepIdentifier = v15;
  }

LABEL_23:
  [(NPKPaymentProvisioningFlowController *)self _sendDidTransitionFromStep:currentStep toStep:self->_currentStep withContext:v21];
}

- (void)_sendDidEncounterError:(id)a3 requestContext:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Flow controller encountered error: %@", &v15, 0xCu);
    }
  }

  if (v6)
  {
    v11 = MEMORY[0x277D37D28];
    v12 = NPKAnalyticsEventForError(@"nonFatalError", v6);
    [v11 subject:@"provisioning" sendEvent:v12];
  }

  v13 = [(NPKPaymentProvisioningFlowController *)self delegate];
  [v13 paymentProvisioningFlowController:self didEncounterError:v6 requestContext:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_requiredFieldsFromRequirementsResponseExcludingLocalFields
{
  v3 = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponse];
  v4 = v3;
  if (self->_separateLocalDeviceEntryRequired)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__NPKPaymentProvisioningFlowController__requiredFieldsFromRequirementsResponseExcludingLocalFields__block_invoke;
    v11[3] = &unk_2799466E0;
    v11[4] = self;
    v5 = [v3 pk_objectsPassingTest:v11];
    if ((PKEqualObjects() & 1) == 0)
    {
      v6 = pk_Payment_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v8 = pk_Payment_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Filtered required fields based on local device entry requirement", v10, 2u);
        }
      }
    }

    v4 = v5;
  }

  return v4;
}

- (id)_localRequiredFieldsFromRequirementsResponse
{
  if (self->_separateLocalDeviceEntryRequired)
  {
    v3 = [(NPKPaymentProvisioningFlowController *)self _requiredFieldsFromRequirementsResponse];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__NPKPaymentProvisioningFlowController__localRequiredFieldsFromRequirementsResponse__block_invoke;
    v6[3] = &unk_2799466E0;
    v6[4] = self;
    v4 = [v3 pk_objectsPassingTest:v6];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)_fieldsModelCompleteExceptForLocalFields:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_separateLocalDeviceEntryRequired)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [a3 paymentSetupFields];
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = 0;
      v9 = 0;
      v10 = *v27;
      *&v6 = 138412546;
      v25 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (([v12 submissionStringMeetsAllRequirements] & 1) == 0)
          {
            v13 = pk_Payment_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

            if (v14)
            {
              v15 = pk_Payment_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v12 identifier];
                v17 = [(NPKPaymentProvisioningFlowController *)self _fieldRequiresLocalEntry:v12];
                *buf = v25;
                *v31 = v16;
                *&v31[8] = 1024;
                v32[0] = v17;
                _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Field %@ is incomplete requires local entry %d", buf, 0x12u);
              }
            }

            v18 = [(NPKPaymentProvisioningFlowController *)self _fieldRequiresLocalEntry:v12];
            v8 |= !v18;
            v9 |= v18;
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v19 = v9 & (v8 ^ 1);
    v20 = pk_Payment_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Payment_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v31 = v19 & 1;
        *&v31[4] = 1024;
        *&v31[6] = v9 & 1;
        LOWORD(v32[0]) = 1024;
        *(v32 + 2) = v8 & 1;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Complete except for local fields %d local %d non local %d", buf, 0x14u);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)_fieldRequiresLocalEntry:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D38928]];

  return v4;
}

- (id)_filteredPaymentSetupFields:(id)a3 forLocalDeviceEntry:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_separateLocalDeviceEntryRequired)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__NPKPaymentProvisioningFlowController__filteredPaymentSetupFields_forLocalDeviceEntry___block_invoke;
    v11[3] = &unk_279946708;
    v11[4] = self;
    v12 = a4;
    v8 = [v6 pk_objectsPassingTest:v11];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)_requiredFieldsFromRequirementsResponse
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(PKPaymentProvisioningController *)self->_provisioningController requirementsResponse];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 status];
      v8 = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
      *buf = 134218242;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Determining required fields for response status %ld and product identifier %@", buf, 0x16u);
    }
  }

  if ([v3 status] == 1)
  {
    v9 = [v3 requiredPaymentSetupFields];
  }

  else if ([v3 status] == 2 && (-[PKPaymentProvisioningController productIdentifier](self->_provisioningController, "productIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v3 possibleProducts];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 productIdentifier];
          v17 = [(PKPaymentProvisioningController *)self->_provisioningController productIdentifier];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v12 = v15;
            goto LABEL_20;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v9 = [v12 requiredFields];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_configureWebServiceIfNecessary:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 needsConfiguration])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke;
    v12[3] = &unk_279946758;
    v7 = &v13;
    v13 = v6;
    v8 = v6;
    [v5 configurePaymentServiceWithCompletion:v12];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke_3;
    v10[3] = &unk_279945198;
    v7 = &v11;
    v11 = v6;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKPaymentProvisioningFlowController__configureWebServiceIfNecessary_completion___block_invoke_2;
  block[3] = &unk_279946730;
  v9 = *(a1 + 32);
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_verifyPasscodeStateIfNecessaryWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (void)_requestPassDetailsForAccountCredential:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 passDetailsResponse];

  if (v8)
  {
    if (v7)
    {
      v9 = [v6 passDetailsResponse];
      v7[2](v7, v9, 0);
    }
  }

  else
  {
    provisioningController = self->_provisioningController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke;
    v11[3] = &unk_2799467A8;
    v13 = v7;
    v12 = v6;
    [(PKPaymentProvisioningController *)provisioningController setupAccountCredentialForProvisioning:v12 completion:v11];
  }
}

void __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279946780;
  v9 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __102__NPKPaymentProvisioningFlowController__requestPassDetailsForAccountCredential_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = [*(a1 + 32) passDetailsResponse];
    (*(v1 + 16))(v1, v3, *(a1 + 40));
  }
}

- (NPKFidoAuthCoordinator)fidoAuthCoordinator
{
  fidoAuthCoordinator = self->_fidoAuthCoordinator;
  if (!fidoAuthCoordinator)
  {
    v4 = objc_alloc_init(NPKFidoAuthCoordinator);
    v5 = self->_fidoAuthCoordinator;
    self->_fidoAuthCoordinator = v4;

    fidoAuthCoordinator = self->_fidoAuthCoordinator;
  }

  return fidoAuthCoordinator;
}

- (NPKPaymentProvisioningFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

id __154__NPKPaymentProvisioningFlowController_FlowSelection___flowPickerSectionsWithContext_provisioningController_readerModeSupported_digitalIssuanceSupported___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = PKLocalizedPaymentString(&cfstr_CardTypePaymen.isa);
    v4 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v3 productType:&unk_286CE76A8];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) title];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Added products section with title: %@", &v11, 0xCu);
    }

    [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 40)];
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_filteredPaymentSetupProducts:(id)a3 localCredentials:(id)a4 setupContext:(int64_t)a5 webService:(id)a6 mobileCarrierRegion:(id)a7 readerModeSupported:(BOOL)a8 digitalIssuanceSupported:(BOOL)a9
{
  v9 = a8;
  v92 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v62 = a4;
  v15 = a6;
  v68 = a7;
  v67 = [MEMORY[0x277CBEB18] array];
  v75 = PKOSVersion();
  v74 = PKDeviceClass();
  v61 = v15;
  v16 = [v15 targetDevice];
  v17 = [v16 deviceRegion];
  v73 = [v16 deviceVersion];
  v18 = v9;
  if (a9 && !NPKPaymentProvisioningSetupContextIsSetupAssistant(a5))
  {
    v18 = v9 | 2;
  }

  v72 = v18;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v63 = v14;
  obj = [v14 allSetupProducts];
  v19 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
  v20 = v68;
  if (v19)
  {
    v21 = v19;
    v71 = *v81;
    do
    {
      v22 = 0;
      do
      {
        if (*v81 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v80 + 1) + 8 * v22);
        if (([v23 updateSupportWithOSVersion:v75 deviceClass:v74 deviceRegion:v17 deviceVersion:v73] & 1) == 0)
        {
          v27 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v23 displayName];
            *buf = 138412290;
            v86 = v28;
            v29 = v27;
            v30 = "Product: %@ is not supported due to device OS version";
            v31 = 12;
            goto LABEL_14;
          }

LABEL_15:
          v26 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v24 = [v23 configuration];
        v25 = [v24 type];

        if (v25 != 3)
        {
          if (v17)
          {
            v27 = [v23 regions];
            if (([v27 containsObject:v17]& 1) != 0)
            {
              v26 = 1;
              v69 = v27;
              goto LABEL_16;
            }

            if (!v20)
            {

              v69 = v27;
LABEL_70:
              v27 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [v23 displayName];
                *buf = 138412802;
                v86 = v28;
                v87 = 2112;
                v88 = v17;
                v89 = 2112;
                v90 = v20;
                v29 = v27;
                v30 = "Product: %@ is not supported in neither this device region: %@, nor mobile carrier region: %@";
                v31 = 32;
LABEL_14:
                _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
              }

              goto LABEL_15;
            }

            v69 = v27;
          }

          else if (!v20)
          {
            goto LABEL_70;
          }

          v47 = [v23 regions];
          v48 = [v47 containsObject:v20];

          if (v17)
          {
          }

          if ((v48 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        v26 = 1;
LABEL_17:
        v32 = [v23 supportedProvisioningMethods];
        if (v26 && (v32 & v72) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v34 = [v23 displayName];
          v35 = [v23 supportedProvisioningMethods];
          *buf = 138412802;
          v86 = v34;
          v87 = 2048;
          v88 = v72;
          v89 = 2048;
          v90 = v35;
          v36 = v33;
          v37 = "Product: %@ is not supported due to no matching provisioning methods (local supported methods %lu, product supported methods %lu)";
          v38 = 32;
          goto LABEL_57;
        }

        if ((v26 & 1) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          goto LABEL_59;
        }

        if (([v23 allSupportedProtocols] & 4) != 0)
        {
          IsAvailable = PKFelicaSecureElementIsAvailable();
          v33 = PKLogFacilityTypeGetObject();
          v40 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (!IsAvailable)
          {
            if (!v40)
            {
              goto LABEL_58;
            }

            v34 = [v23 displayName];
            *buf = 138412290;
            v86 = v34;
            v36 = v33;
            v37 = "Product: %@ is not supported due to lack of Type F support";
            goto LABEL_56;
          }

          if (v40)
          {
            v41 = [v23 displayName];
            *buf = 138412290;
            v86 = v41;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to available Type F support", buf, 0xCu);
          }
        }

        if (!PKSecureElementIsAvailable())
        {
          v33 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v34 = [v23 displayName];
          *buf = 138412290;
          v86 = v34;
          v36 = v33;
          v37 = "Product: %@ is not supported due to lack of SE";
LABEL_56:
          v38 = 12;
LABEL_57:
          _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);

          goto LABEL_58;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_38;
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v42 = [v23 paymentOptions];
        v43 = [v42 countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (!v43)
        {
LABEL_37:

          v20 = v68;
LABEL_38:
          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v23 displayName];
            *buf = 138412290;
            v86 = v34;
            v36 = v33;
            v37 = "Product: %@ is not supported on device";
            goto LABEL_56;
          }

LABEL_58:

LABEL_59:
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [v23 displayName];
            *buf = 138412290;
            v86 = v49;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ is unsupported and will not be shown in the flow picker", buf, 0xCu);
          }

          goto LABEL_61;
        }

        v44 = v43;
        v45 = *v77;
LABEL_31:
        v46 = 0;
        while (1)
        {
          if (*v77 != v45)
          {
            objc_enumerationMutation(v42);
          }

          if ([v16 supportsCredentialType:{objc_msgSend(*(*(&v76 + 1) + 8 * v46), "cardType")}])
          {
            break;
          }

          if (v44 == ++v46)
          {
            v44 = [v42 countByEnumeratingWithState:&v76 objects:v84 count:16];
            if (v44)
            {
              goto LABEL_31;
            }

            goto LABEL_37;
          }
        }

        if (a5 == 1 && [v23 hsa2Requirement] == 2 && (objc_msgSend(a1, "_isHSA2Enabled") & 1) == 0)
        {
          v33 = PKLogFacilityTypeGetObject();
          v20 = v68;
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v34 = [v23 displayName];
          *buf = 138412290;
          v86 = v34;
          v36 = v33;
          v37 = "Product: %@ is not supported in setup context due to HSA requirement";
          goto LABEL_56;
        }

        v50 = [v23 configuration];
        v51 = [v50 state];

        v20 = v68;
        if (v51 == 2)
        {
          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v23 displayName];
            v65 = [v23 configuration];
            [v65 state];
            v53 = PKPaymentSetupProductStateToString();
            *buf = 138412546;
            v86 = v52;
            v87 = 2112;
            v88 = v53;
            _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Product: %@ not supported. Product state is: %@. Previously provisioned to device?", buf, 0x16u);
          }

          goto LABEL_58;
        }

        v33 = v23;
        v54 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [v33 displayName];
          v55 = [v33 productIdentifier];
          v56 = [v33 provisioningMethodTypes];
          *buf = 138412802;
          v86 = v66;
          v87 = 2112;
          v88 = v55;
          v89 = 2112;
          v90 = v56;
          _os_log_impl(&dword_25B300000, v54, OS_LOG_TYPE_DEFAULT, "Product: %@ (%@) is supported with provisioning types %@", buf, 0x20u);
        }

        [v67 addObject:v33];
LABEL_61:

        ++v22;
      }

      while (v22 != v21);
      v57 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
      v21 = v57;
    }

    while (v57);
  }

  v58 = objc_alloc_init(MEMORY[0x277D38120]);
  [v58 setPaymentSetupProducts:v67];

  v59 = *MEMORY[0x277D85DE8];

  return v58;
}

+ (void)_addGroupedItemsToSections:(id)a3 fromModel:(id)a4 webService:(id)a5 paymentSection:(id)a6
{
  v39[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v38[0] = &unk_286CE76C0;
  v13 = PKLocalizedPaymentString(&cfstr_CardTypeTransi.isa);
  v39[0] = v13;
  v38[1] = &unk_286CE76D8;
  v14 = PKLocalizedPaymentString(&cfstr_CardTypeEmoney.isa);
  v39[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v36[0] = &unk_286CE76C0;
  v16 = PKLocalizedPaymentString(&cfstr_CardTypeTransi_0.isa);
  v36[1] = &unk_286CE76D8;
  v37[0] = v16;
  v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupEm.isa);
  v37[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v19 = [v11 targetDevice];
  v20 = [v19 deviceRegion];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __118__NPKPaymentProvisioningFlowController_FlowSelection___addGroupedItemsToSections_fromModel_webService_paymentSection___block_invoke;
  v28[3] = &unk_279946C60;
  v29 = v10;
  v30 = v18;
  v31 = v11;
  v32 = v20;
  v33 = &unk_286CE76C0;
  v34 = v9;
  v35 = v12;
  v21 = v12;
  v22 = v9;
  v23 = v20;
  v24 = v11;
  v25 = v18;
  v26 = v10;
  [v15 enumerateKeysAndObjectsUsingBlock:v28];

  v27 = *MEMORY[0x277D85DE8];
}

void __118__NPKPaymentProvisioningFlowController_FlowSelection___addGroupedItemsToSections_fromModel_webService_paymentSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) setupProductsOfType:{objc_msgSend(v5, "unsignedIntegerValue")}];
  if (![v7 count])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v5 unsignedIntegerValue];
      v12 = PKPaymentSetupProductTypeToString();
      *buf = 138412290;
      v54 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Skipped products of type: %@. Not available setup products.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
    v9 = [v8 displayName];

    if ([v9 length])
    {
      v10 = v9;

      v6 = v10;
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [v5 unsignedIntegerValue];
        v14 = PKPaymentSetupProductTypeToString();
        *buf = 138412290;
        v54 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Only one available product of type: %@ but no name for display. Using default for product type instead.", buf, 0xCu);
      }
    }
  }

  v11 = [*(a1 + 40) objectForKey:v5];
  if (!v11)
  {
    [v5 unsignedIntegerValue];
    v15 = PKPaymentSetupProductTypeToString();
    v38 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:v15 title:v6 products:v7];
    v20 = (*(*(a1 + 80) + 16))();
    v36 = [v20 items];
    [v36 addObject:v38];
    goto LABEL_28;
  }

  v42 = v6;
  v40 = v11;
  v45 = v5;
  v15 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v11 productType:v5];
  v16 = [*(a1 + 48) context];
  v44 = a1;
  v43 = [v16 betaPaymentNetworksForRegion:*(a1 + 56)];

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1];
  v52 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v41 = v7;
  v19 = [v7 sortedArrayUsingDescriptors:v18];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = v21;
  v23 = *v47;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v47 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v46 + 1) + 8 * i);
      v26 = [v25 productIdentifier];
      v50 = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      v28 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:v26 products:v27];

      v29 = [v15 footer];
      if (!v29 && [v45 isEqualToNumber:*(v44 + 64)])
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = [v25 paymentOptions];
        v32 = [v31 firstObject];
        v33 = [v30 numberWithInteger:{objc_msgSend(v32, "cardType")}];
        v34 = [v43 containsObject:v33];

        if (!v34)
        {
          goto LABEL_22;
        }

        v29 = PKLocalizedPaymentString(&cfstr_CardTypeTransi_1.isa);
        [v15 setFooter:v29];
      }

LABEL_22:
      v35 = [v15 items];
      [v35 addObject:v28];
    }

    v22 = [v20 countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v22);
LABEL_24:

  [*(v44 + 72) addObject:v15];
  v36 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v15 title];
    *buf = 138412290;
    v54 = v37;
    _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Added products section with title: %@", buf, 0xCu);
  }

  v5 = v45;
  v7 = v41;
  v6 = v42;
  v11 = v40;
  v38 = v43;
LABEL_28:

LABEL_29:
  v39 = *MEMORY[0x277D85DE8];
}

+ (void)_addAppleBalanceToSections:(id)a3 fromModel:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 productsForFeatureIdentifier:4];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 displayName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = PKLocalizedAppleBalanceString(&cfstr_AppleAccountTi.isa);
    }

    v11 = v10;

    v12 = [v7 productIdentifier];
    v19[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:v12 products:v13];

    v18 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v16 = [NPKPaymentProvisioningFlowPickerSection sectionWithTitle:v11 productType:&unk_286CE76F0 items:v15];

    [v5 addObject:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_addCreditDebitItemToSection:(id)a3 webService:(id)a4
{
  v4 = a3;
  if (PKDeviceSupportsFelicaDebitWithWebService())
  {
    v5 = @"CARD_TYPE_CREDIT_DEBIT";
  }

  else
  {
    v5 = @"CARD_TYPE_CREDIT_PREPAID";
  }

  v9 = PKLocalizedPaymentString(&v5->isa);
  v6 = [NPKPaymentProvisioningFlowPickerItem itemWithIdentifier:@"regularPaymentCardProvisioning" title:v9 products:0];
  v7 = v4[2](v4);

  v8 = [v7 items];
  [v8 insertObject:v6 atIndex:0];
}

+ (id)_authContext
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [v4 altDSIDForAccount:v3];

  v6 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v6 setAltDSID:v5];
  [v6 setSecurityUpgradeContext:*MEMORY[0x277CF0090]];

  return v6;
}

+ (BOOL)_isHSA2Enabled
{
  v3 = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [a1 _authContext];
  v5 = [v4 altDSID];
  v6 = [v3 authKitAccountWithAltDSID:v5];

  LOBYTE(v4) = [v3 securityLevelForAccount:v6] > 3;
  return v4;
}

+ (BOOL)_localCredentials:(id)a3 containProduct:(id)a4
{
  v5 = a3;
  v6 = [a4 paymentOptions];
  v7 = [v6 firstObject];

  v8 = [v7 cardType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__NPKPaymentProvisioningFlowController_FlowSelection___localCredentials_containProduct___block_invoke;
  v10[3] = &__block_descriptor_40_e29_B16__0__PKPaymentCredential_8l;
  v10[4] = v8;
  LOBYTE(v6) = [v5 pk_containsObjectPassingTest:v10];

  return v6;
}

- (void)_transitionToDigitalIssuanceForProduct:(id)a3 requestContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuanceAmountRequestContext:v6];
  v15 = [[NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext alloc] initWithRequestContext:v6];

  [(NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext *)v15 setProduct:v7];
  -[NPKPaymentProvisioningFlowControllerDigitalIssuanceAmountStepContext setAllowsReaderModeEntry:](v15, "setAllowsReaderModeEntry:", [objc_opt_class() _readerModeEntryAllowedForProduct:v7]);
  v8 = [v7 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];

  v9 = [v8 digitalIssuanceMetadata];
  v10 = [v9 serviceProviderProducts];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
LABEL_6:
    v14 = 150;
    goto LABEL_7;
  }

  v12 = [v9 balanceIdentifier];

  if (v12)
  {
    v13 = [v9 balanceIdentifier];

    if (v13)
    {
      v14 = 144;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = 145;
LABEL_7:
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:v14 withContext:v15];
}

- (void)_handleDigitalIssuanceTermsAccepted:(id)a3
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Digital issuance terms accepted", buf, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuancePaymentRequestContext:v4];
  [(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1];
  v8 = [(NPKPaymentProvisioningFlowController *)self unitTestingAuthorizationController];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v11 = getPKPaymentAuthorizationControllerClass_softClass;
    v27 = getPKPaymentAuthorizationControllerClass_softClass;
    if (!getPKPaymentAuthorizationControllerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getPKPaymentAuthorizationControllerClass_block_invoke;
      v22 = &unk_2799457C8;
      v23 = &v24;
      __getPKPaymentAuthorizationControllerClass_block_invoke(buf);
      v11 = v25[3];
    }

    v12 = v11;
    _Block_object_dispose(&v24, 8);
    v13 = [v11 alloc];
    v14 = [(NPKPaymentProvisioningFlowController *)self digitalIssuancePaymentRequest];
    v10 = [v13 initWithPaymentRequest:v14];
  }

  [(NPKPaymentProvisioningFlowController *)self setAuthorizationController:v10];
  [v10 setDelegate:self];
  [v10 setPrivateDelegate:self];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke;
  v16[3] = &unk_2799464B8;
  v17 = v4;
  v18 = self;
  v15 = v4;
  [v10 presentWithCompletion:v16];
}

void __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke_2;
  block[3] = &unk_279946490;
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NPKPaymentProvisioningFlowController_DigitalIssuance___handleDigitalIssuanceTermsAccepted___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v6 = [[NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext alloc] initWithRequestContext:*(a1 + 32)];
    v2 = [*(a1 + 40) currentProduct];
    [(NPKPaymentProvisioningFlowControllerDigitalIssuancePaymentStepContext *)v6 setProduct:v2];

    [*(a1 + 40) _performTransitionToStep:155 withContext:v6];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = PKDisplayableErrorForCommonType();
    v5 = *(a1 + 32);
    v6 = v4;
    [v3 _sendDidEncounterError:? requestContext:?];
  }
}

- (void)_canMakeDigitalIssuancePaymentsForTransitProducts:(id)a3 withCompletion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  v22 = [(NPKPaymentProvisioningFlowController *)self webService];
  v8 = [v22 targetDevice];
  v21 = [v8 deviceRegion];

  v9 = [v20 sortedArrayUsingFunction:_compareProductByRegionCodes context:v21];
  v24 = [MEMORY[0x277D37FC0] sharedInstance];
  v10 = objc_alloc_init(MEMORY[0x277D37DB0]);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke;
        v30[3] = &unk_279947478;
        v30[4] = self;
        v30[5] = v14;
        v31 = v24;
        v32 = v40;
        v33 = v38;
        [v10 addOperation:v30];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CBEB68] null];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_3;
  v25[3] = &unk_2799474A0;
  v29 = v7;
  v27 = v38;
  v28 = v40;
  v16 = v19;
  v26 = v16;
  v17 = [v10 evaluateWithInput:v15 completion:v25];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) provisioningController];
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_2;
  v13[3] = &unk_279947450;
  v13[4] = v9;
  v10 = *(a1 + 48);
  v17 = *(a1 + 56);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 requestProvisioningMethodMetadataForProduct:v9 completionHandler:v13];
}

void __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_2(uint64_t a1)
{
  v12 = [*(a1 + 32) provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  if (v12)
  {
    v2 = [v12 digitalIssuanceMetadata];
    v3 = [v2 serviceProviderAcceptedNetworks];
    v4 = [v2 serviceProviderCountryCode];
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v7 = [v2 serviceProviderCapabilities];
    v8 = PKMerchantCapabilityFromStrings();
    v9 = [MEMORY[0x277CBEB98] setWithObject:v4];
    LOBYTE(v5) = [v5 hasPassesWithSupportedNetworks:v6 merchantCapabilities:v8 issuerCountryCodes:v9 webDomain:0];

    *(*(*(a1 + 64) + 8) + 24) |= v5;
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  v10 = *(a1 + 48);
  v11 = *(*(*(a1 + 64) + 8) + 24);
  (*(*(a1 + 56) + 16))();
}

uint64_t __122__NPKPaymentProvisioningFlowController_DigitalIssuance___canMakeDigitalIssuancePaymentsForTransitProducts_withCompletion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 56);
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v13 = 136315906;
      v14 = "[NPKPaymentProvisioningFlowController(DigitalIssuance) _canMakeDigitalIssuancePaymentsForTransitProducts:withCompletion:]_block_invoke_3";
      v15 = 2048;
      v16 = v3 - v4;
      v17 = 1024;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %s: completed in %f seconds, after %u products, hasCompatiblePass = %@", &v13, 0x26u);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_canMakeDigitalIssuancePaymentsForTransitProductsWithCompletion:(id)a3
{
  v3 = a3;
  v7 = PKInAppSupportedPaymentNetworks();
  v4 = [MEMORY[0x277D37FC0] sharedInstance];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v6 = [v4 hasPassesWithSupportedNetworks:v5 merchantCapabilities:159 issuerCountryCodes:0 webDomain:0];

  v3[2](v3, v6, 0);
}

- (void)_startDigitalIssuancePaymentWithAmount:(id)a3 requestContext:(id)a4 serviceProviderProduct:(id)a5 productItem:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  v15 = [v14 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  v16 = [v15 minLoadedBalance];
  v17 = [v15 maxLoadedBalance];
  v31 = v12;
  if (v16 && [v10 compare:{v16, v12}] == -1)
  {
    v18 = v13;
    v28 = pk_Payment_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v16;
        v22 = "Warning: Provided digital issuance amount %@ which is less than the minimum %@";
        goto LABEL_16;
      }

LABEL_17:
    }

LABEL_18:
    v26 = PKDisplayableErrorForCommonType();
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:v26 requestContext:v11];
    goto LABEL_19;
  }

  if (v17 && [v10 compare:v17] == 1)
  {
    v18 = v13;
    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v17;
        v22 = "Warning: Provided digital issuance amount %@ which is more than the maximum %@";
LABEL_16:
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v12 && v13)
  {
    v23 = v12;
    v18 = v13;
    v24 = [(NPKPaymentProvisioningFlowController *)self _paymentRequestForAmount:v10 serviceProviderProduct:v23 productItem:v13];
  }

  else
  {
    v18 = v13;
    v24 = [(NPKPaymentProvisioningFlowController *)self _paymentRequestForAmount:v10, v31];
  }

  v25 = v24;
  [(NPKPaymentProvisioningFlowController *)self setDigitalIssuancePaymentRequest:v24, v31];
  v26 = [MEMORY[0x277D37FC0] sharedInstance];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke;
  v32[3] = &unk_2799474C8;
  v32[4] = self;
  v33 = v25;
  v34 = v11;
  v27 = v25;
  [v26 canPresentPaymentRequest:v27 completion:v32];

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
}

void __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke_2;
  v5[3] = &unk_279945958;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = a2;
  v5[4] = v3;
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __146__NPKPaymentProvisioningFlowController_DigitalIssuance___startDigitalIssuancePaymentWithAmount_requestContext_serviceProviderProduct_productItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 5 || v2 == 2)
  {
    v4 = *(a1 + 32);
    v5 = [v4 _addCardErrorForPaymentRequest:*(a1 + 40)];
    v6 = *(a1 + 48);
    v9 = v5;
    [v4 _sendDidEncounterError:? requestContext:?];
  }

  else
  {
    [*(a1 + 32) setDigitalIssuancePaymentRequestContext:*(a1 + 48)];
    v7 = *(a1 + 32);
    v9 = [v7 currentProduct];
    v8 = [v9 termsURL];
    [v7 _transitionBasedOnTermsForReason:1 URL:v8 requestContext:*(a1 + 48)];
  }
}

- (id)_paymentRequestForAmount:(id)a3 serviceProviderProduct:(id)a4 productItem:(id)a5
{
  v71[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v67 = v9;
  v68 = v10;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
  v14 = [v13 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
  v15 = v8;
  v16 = [v14 depositAmount];
  v17 = v15;
  if (v16)
  {
    v18 = [MEMORY[0x277CCA980] zero];
    v19 = [v18 compare:v16];

    v17 = v15;
    if (v19 == -1)
    {
      v17 = [v15 decimalNumberByAdding:v16];
    }
  }

  v62 = v13;
  v20 = [v14 digitalIssuanceMetadata];
  v21 = objc_alloc_init(MEMORY[0x277D37F90]);
  [v20 action];
  v23 = v22 = v17;
  [v21 setItemDescription:v23];

  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  v25 = [v20 serviceProviderDict];
  v26 = [v24 initWithDictionary:v25];

  v63 = v22;
  [v26 setObject:v22 forKey:*MEMORY[0x277D38990]];
  v65 = v26;
  if (v12)
  {
    v70[0] = @"identifier";
    v27 = [v68 identifier];
    v70[1] = @"amount";
    v71[0] = v27;
    v71[1] = v15;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

    v69 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    [v65 setObject:v29 forKey:*MEMORY[0x277D38998]];

    v26 = v65;
  }

  v66 = v15;
  [v21 setServiceProviderData:v26];
  v30 = [v20 serviceProviderIdentifier];
  [v21 setServiceProviderIdentifier:v30];

  v31 = [objc_alloc(MEMORY[0x277D38278]) initWithServiceProviderOrder:v21];
  v32 = [v20 serviceProviderAcceptedNetworks];
  [v31 setSupportedNetworks:v32];

  v33 = [v20 serviceProviderSupportedCountries];
  [v31 setSupportedCountries:v33];

  v34 = [v20 serviceProviderCapabilities];
  [v31 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  v35 = [v20 serviceProviderCountryCode];
  [v31 setCountryCode:v35];

  v64 = v14;
  v36 = [v14 currency];
  [v31 setCurrencyCode:v36];

  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (v12)
  {
    v38 = objc_alloc_init(MEMORY[0x277CCACA8]);
    v39 = [v67 localizedDisplayName];
    if (v39 && (v40 = v39, [v68 localizedDisplayName], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, v41))
    {
      v42 = MEMORY[0x277CCACA8];
      v43 = [v67 localizedDisplayName];
      v44 = [v68 localizedDisplayName];
      v45 = [v42 stringWithFormat:@"%@ - %@", v43, v44];

      v38 = v43;
    }

    else
    {
      v48 = [v67 localizedDisplayName];

      if (!v48)
      {
LABEL_20:
        v47 = MEMORY[0x277D38138];
        goto LABEL_21;
      }

      v45 = [v67 localizedDisplayName];
    }

    v38 = v45;
    goto LABEL_20;
  }

  v46 = MEMORY[0x277D38138];
  v38 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT.isa);
  v47 = v46;
LABEL_21:
  v49 = [v47 summaryItemWithLabel:v38 amount:v66];

  [v37 addObject:v49];
  if (v16)
  {
    v50 = [MEMORY[0x277CCA980] zero];
    v51 = [v50 compare:v16];

    if (v51 == -1)
    {
      v52 = [v64 depositType];
      if (v52 > 2)
      {
        v53 = 0;
      }

      else
      {
        v53 = PKLocalizedPaymentString(&off_279947500[v52]->isa);
      }

      v54 = [MEMORY[0x277D38138] summaryItemWithLabel:v53 amount:v16];
      [v37 addObject:v54];
    }
  }

  v55 = [v20 serviceProviderLocalizedDisplayName];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
    v58 = v62;
  }

  else
  {
    v58 = v62;
    v57 = [v62 displayName];
  }

  v59 = [MEMORY[0x277D38138] summaryItemWithLabel:v57 amount:v63];
  [v37 addObject:v59];
  [v31 setPaymentSummaryItems:v37];

  v60 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v5 = MEMORY[0x277D37FF0];
  v6 = a5;
  v7 = [[v5 alloc] initWithStatus:0 errors:0];
  v6[2](v6, v7);
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
}

void __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke_2;
  block[3] = &unk_279944F98;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __97__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationControllerDidFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAuthorizationController:0];
  v2 = [*(a1 + 32) currentProduct];
  v3 = [*(a1 + 32) digitalIssuancePurchase];
  if (v3)
  {
    v4 = [v2 provisioningMethodMetadataForType:*MEMORY[0x277D388D0]];
    v5 = objc_alloc(MEMORY[0x277D37E50]);
    v6 = [*(a1 + 32) digitalIssuanceAmount];
    v7 = [v4 currency];
    v8 = [v5 initWithAmount:v6 currency:v7 exponent:0];

    v9 = [objc_alloc(MEMORY[0x277D38050]) initWithPaymentSetupProduct:v2 purchase:v3 balance:v8];
    [*(a1 + 32) setDigitalIssuancePurchase:0];
    v10 = [*(a1 + 32) provisioningController];
    [v10 resolveRequirementsUsingProvisioningMethodMetadata:v4];

    v11 = [*(a1 + 32) provisioningController];
    v12 = [v11 requirementsResponse];
    [v9 setRequirementsResponse:v12];

    v13 = *(a1 + 32);
    v14 = [v13 digitalIssuancePaymentRequestContext];
    [v13 _transitionToProvisioningProgressWithRequestContext:v14];

    v15 = *(a1 + 32);
    v16 = [v15 digitalIssuancePaymentRequestContext];
    [v15 _transitionToProvisioningForCredential:v9 product:v2 requestContext:v16];
  }

  else
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: No digital issuance purchase; going back", v21, 2u);
      }
    }

    [*(a1 + 32) setTermsAcceptedOutOfBand:0];
    v20 = *(a1 + 32);
    v4 = [v20 digitalIssuanceAmountRequestContext];
    [v20 _transitionToDigitalIssuanceForProduct:v2 requestContext:v4];
  }
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationController_didAuthorizePurchase_completion___block_invoke;
  block[3] = &unk_279945A48;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __120__NPKPaymentProvisioningFlowController_DigitalIssuance__paymentAuthorizationController_didAuthorizePurchase_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setDigitalIssuancePurchase:?];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (id)_addCardErrorForPaymentRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 supportedNetworks];
  v5 = [v3 merchantCapabilities];

  v6 = [v4 count];
  v7 = v5 & 0xC;
  v8 = PKLocalizedPaymentString(&cfstr_SetupPurchaseP.isa);
  if (v6 == 1)
  {
    v9 = [v4 objectAtIndexedSubscript:0];
    PKPaymentCredentialTypeForPaymentNetworkName();

    v10 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    if (NPKPairedOrPairingDeviceIsTinker())
    {
      v11 = @"PROVISIONING_SETUP_PURCHASE_ADD_SPECIFIC_CARD_ALERT_MESSAGE_FAMILY_SETUP";
      if (v7 == 8)
      {
        v11 = @"PROVISIONING_SETUP_PURCHASE_ADD_SPECIFIC_DEBIT_CARD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      v12 = v11;
      v13 = NPKLocalizedStringWithTableSuffix(v12, &cfstr_Paymentprovisi.isa, &stru_286C96FD8.isa, v10);
    }

    else
    {
      v16 = @"SETUP_PURCHASE_ADD_SPECIFIC_CARD_ALERT_MESSAGE";
      if (v7 == 8)
      {
        v16 = @"SETUP_PURCHASE_ADD_SPECIFIC_DEBIT_CARD_ALERT_MESSAGE";
      }

      v12 = v16;
      v13 = PKLocalizedPaymentString(v12, &stru_286C96FD8.isa, v10);
    }

    v17 = v13;
  }

  else
  {
    if (NPKPairedOrPairingDeviceIsTinker())
    {
      if (v7 == 8)
      {
        v14 = @"PROVISIONING_SETUP_PURCHASE_ADD_DEBIT_PAYMENT_METHOD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      else
      {
        v14 = @"PROVISIONING_SETUP_PURCHASE_ADD_PAYMENT_METHOD_ALERT_MESSAGE_FAMILY_SETUP";
      }

      v15 = NPKLocalizedStringWithTableSuffix(&v14->isa, &cfstr_Paymentprovisi.isa);
    }

    else
    {
      if (v7 == 8)
      {
        v18 = @"SETUP_PURCHASE_ADD_DEBIT_PAYMENT_METHOD_ALERT_MESSAGE";
      }

      else
      {
        v18 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ALERT_MESSAGE";
      }

      v15 = PKLocalizedPaymentString(&v18->isa);
    }

    v17 = v15;
  }

  v19 = PKDisplayableErrorCustom();

  return v19;
}

+ (id)_displayableErrorWithIneligibilityReason:(int64_t)a3 learnMoreURL:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  v8 = a3 == 5 || v5 == 0;
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PKPaymentCardEligibilityErrorDomain" code:a3 userInfo:0];
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityUnk.isa);
        if (v8)
        {
          v19 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE_NO_URL";
LABEL_29:
          v11 = PKLocalizedPaymentString(&v19->isa);
          goto LABEL_30;
        }

        v21 = @"ELIGIBILITY_UNKNOWN_REQUIREMENTS_ERROR_MESSAGE";
        break;
      case 2:
        NPKTrackPaymentProvisioningWebServicesCheck();
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityIne.isa);
        if (v8)
        {
          v19 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE_NO_URL";
          goto LABEL_29;
        }

        v21 = @"ELIGIBILITY_INELIGIBLE_ERROR_MESSAGE";
        break;
      case 3:
        NPKTrackPaymentProvisioningWebServicesCheck();
        v10 = PKLocalizedPaymentString(&cfstr_EligibilityUna.isa);
        v17 = @"ELIGIBILITY_UNAVAILABLE_ERROR_MESSAGE";
LABEL_24:
        v18 = PKLocalizedPaymentString(&v17->isa);
LABEL_25:
        v11 = v18;
        if (!v8)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      default:
LABEL_20:
        v10 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
        v17 = @"COULD_NOT_ADD_CARD_MESSAGE";
        goto LABEL_24;
    }

    v11 = PKLocalizedPaymentString(&v21->isa);
LABEL_34:
    v26[0] = *MEMORY[0x277CCA480];
    v12 = PKLocalizedPaymentString(&cfstr_EligibilityLea.isa);
    v25 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v26[1] = *MEMORY[0x277D38628];
    v27[0] = v13;
    v27[1] = v6;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v27;
    v16 = v26;
    goto LABEL_35;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v10 = PKLocalizedPaymentString(&cfstr_EligibilityHar.isa);
      v17 = @"ELIGIBILITY_HARDWARE_NOT_SUPPORTED_ERROR_MESSAGE_WATCH";
      goto LABEL_24;
    }

    if (a3 == 7)
    {
      v10 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr.isa);
      v18 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_0.isa);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (a3 == 4)
  {
    NPKTrackPaymentProvisioningWebServicesCheck();
    v10 = PKLocalizedPaymentString(&cfstr_EligibilityAlr.isa);
    v11 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_36;
  }

  NPKTrackPaymentProvisioningWebServicesCheck();
  v10 = PKLocalizedPaymentString(&cfstr_EligibilityNew.isa);
  v11 = PKLocalizedPaymentString(&cfstr_EligibilityNew_0.isa);
  v29[0] = *MEMORY[0x277CCA480];
  v12 = PKLocalizedPaymentString(&cfstr_EligibilitySof.isa);
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v29[1] = *MEMORY[0x277D38628];
  v30[0] = v13;
  v30[1] = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
  v14 = MEMORY[0x277CBEAC0];
  v15 = v30;
  v16 = v29;
LABEL_35:
  v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:2];

LABEL_36:
  v22 = PKDisplayableErrorCustom();

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_displayableErrorWithUnderlyingVerificationError:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedPaymentString(&cfstr_ActivationNotA.isa);
  v5 = PKLocalizedPaymentString(&cfstr_ActivationNotA_0.isa);
  v6 = [v3 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCA738]];

  if (v7)
  {
    v8 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    v9 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_10:
    v13 = v5;
    v4 = v8;
    v5 = v9;
    goto LABEL_11;
  }

  v10 = [v3 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x277D38AF8]];

  if (!v11)
  {
    v13 = [v3 domain];
    if (![v13 isEqualToString:*MEMORY[0x277D38958]])
    {
LABEL_11:

      goto LABEL_12;
    }

    v14 = [v3 localizedFailureReason];

    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([v3 code] <= 5)
  {
    v12 = [v3 localizedFailureReason];

    if (v12)
    {
LABEL_9:
      v8 = [v3 localizedFailureReason];

      v9 = [v3 localizedRecoverySuggestion];
      goto LABEL_10;
    }
  }

LABEL_12:
  v15 = PKDisplayableErrorCustom();

  return v15;
}

+ (id)_displayableCouldNotAddCardErrorWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
  v5 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar_0.isa);
  v6 = PKDisplayableErrorCustom();

  return v6;
}

+ (BOOL)_readerModeEntryAllowedForProduct:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = [v3 supportedProvisioningMethods];
  if ((v5 & 1) == 0)
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Reader mode entry is disabled because transit product lacks reader mode provisioning method", buf, 2u);
      }
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (([v4 allSupportedProtocols] & 4) != 0 && !PKFelicaSecureElementIsAvailable())
  {
    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        v13 = "Notice: Reader mode entry is disabled for typeF product as a local Felica secure element is not available";
        v14 = v19;
        goto LABEL_18;
      }

LABEL_19:
    }

LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if (!PKSecureElementIsAvailable())
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v13 = "Notice: Reader mode entry is disabled because secure element is not available";
        v14 = &v18;
LABEL_18:
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v9 = 1;
LABEL_21:

  return v9;
}

- (void)_transitionToReaderModeForProduct:(id)a3 requestContext:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
  [v7 resolveRequirementsUsingProduct:v17];

  v8 = [v17 provisioningMethodMetadataForType:*MEMORY[0x277D388E8]];
  [(NPKPaymentProvisioningFlowController *)self setIngestionMethodMetadata:v8];
  if (v8)
  {
    v9 = [v8 requiredFields];
    v10 = [v8 readerModeResources];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D388F8]];
    v12 = [v11 objectForKeyedSubscript:@"welcome"];

    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D388E0]];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D388D8]];
  }

  else
  {
    v9 = [v17 requiredFields];
    v14 = 0;
    v13 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x277D38110]) initWithPaymentSetupFields:v9];
  [(NPKPaymentProvisioningFlowController *)self setFieldsModel:v15];

  v16 = [[NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext alloc] initWithRequestContext:v6];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setProduct:v17];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setTitle:v13];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setSubtitle:v14];
  [(NPKPaymentProvisioningFlowControllerReaderModeEntryStepContext *)v16 setSetupFields:v9];
  [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:160 withContext:v16];
}

- (void)_handleReaderModeTermsAccepted:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Reader mode terms accepted", v8, 2u);
    }
  }

  [(NPKPaymentProvisioningFlowController *)self setTermsAcceptedOutOfBand:1];
  [(NPKPaymentProvisioningFlowController *)self _startReaderModeIngestion:v4];
}

- (void)_startReaderModeIngestion:(id)a3
{
  [(NPKPaymentProvisioningFlowController *)self setReaderModeRequestContext:a3];
  [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:0];
  [(NPKPaymentProvisioningFlowController *)self setFlowIngestionState:0];

  [(NPKPaymentProvisioningFlowController *)self _startIngestion];
}

- (void)_noteProvisioningStateChangeForReaderMode:(int64_t)a3
{
  v5 = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (a3 == 1 && v5 == 3)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:4];
    v6 = 0.537313433;
LABEL_7:

    [(NPKPaymentProvisioningFlowController *)self _transitionToIngestionProgress:v6];
    return;
  }

  v7 = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (a3 == 4 && v7 == 4)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:5];
    v6 = 0.776119403;
    goto LABEL_7;
  }

  v8 = [(NPKPaymentProvisioningFlowController *)self internalIngestionState];
  if (a3 == 5 && v8 == 5)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:6];
    [(NPKPaymentProvisioningFlowController *)self _transitionToIngestionProgress:0.98];

    [(NPKPaymentProvisioningFlowController *)self _startTransferringCard];
  }
}

- (void)_setupCardIngester
{
  v3 = [(NPKPaymentProvisioningFlowController *)self cardIngester];

  if (!v3)
  {
    v4 = [(NPKPaymentProvisioningFlowController *)self unitTestingCardIngester];
    v5 = v4;
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D37E30]);
      v7 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
      v8 = [v6 initWithPaymentSetupProduct:v7 delegate:self];
    }

    [(NPKPaymentProvisioningFlowController *)self setCardIngester:v8];
  }
}

- (void)_tearDownCardIngester
{
  v3 = [(NPKPaymentProvisioningFlowController *)self cardIngester];
  [v3 invalidate];

  [(NPKPaymentProvisioningFlowController *)self setCardIngester:0];
  [(NPKPaymentProvisioningFlowController *)self setIngestionCardSessionToken:0];

  [(NPKPaymentProvisioningFlowController *)self _invalidateCardNotFoundTimer];
}

- (void)contactlessCardIngester:(id)a3 didUpdateCardIngestionStatus:(unint64_t)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke;
  v5[3] = &unk_279945830;
  v5[4] = self;
  v5[5] = a4;
  v4 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
    [*(a1 + 32) _invalidateCardNotFoundTimer];
    v4 = [*(a1 + 32) internalIngestionState];
    if (v4 == 2)
    {
      v5 = 0.179104478;
    }

    else
    {
      if (v4 != 7)
      {
        goto LABEL_9;
      }

      v5 = 0.98;
    }

    [*(a1 + 32) _transitionToIngestionProgress:v5];
  }

  else if (v2 == 10)
  {
    [*(a1 + 32) _startCardNotFoundTimer];
  }

LABEL_9:
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 134217984;
      v13 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Card ingestion status: %lu", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

unint64_t __105__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) internalIngestionState];
  if (result <= 7 && ((1 << result) & 0x9C) != 0)
  {
    v4 = *(a1 + 32);

    return [v4 _transitionToFlowIngestionState:3];
  }

  return result;
}

- (void)_transitionToFlowIngestionState:(unint64_t)a3 progress:(double)a4
{
  if ([(NPKPaymentProvisioningFlowController *)self flowIngestionState]!= a3 || ([(NPKPaymentProvisioningFlowController *)self ingestionProgress], v7 != a4))
  {
    [(NPKPaymentProvisioningFlowController *)self setFlowIngestionState:a3];
    [(NPKPaymentProvisioningFlowController *)self setIngestionProgress:a4];
    v8 = [NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext alloc];
    v9 = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    v15 = [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v8 initWithRequestContext:v9];

    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setIngestionState:a3];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setIngestionProgress:a4];
    v10 = [(NPKPaymentProvisioningFlowController *)self _titleForState:a3];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setTitle:v10];

    v11 = [(NPKPaymentProvisioningFlowController *)self _subtitleForState:a3];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setSubtitle:v11];

    v12 = objc_opt_class();
    v13 = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
    PKScreenScale();
    v14 = [v12 _physicalCardURLFromMetadata:v13 forScale:?];
    [(NPKPaymentProvisioningFlowControllerReaderModeIngestionStepContext *)v15 setPhysicalCardImageURL:v14];

    [(NPKPaymentProvisioningFlowController *)self _performTransitionToStep:165 withContext:v15];
  }
}

- (void)contactlessCardIngester:(id)a3 didFailToIngestCardWithError:(id)a4 resetProvisioning:(BOOL)a5 isRecoverable:(BOOL)a6
{
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __137__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke;
  v12[3] = &unk_279949070;
  v14 = a5;
  v12[4] = self;
  v13 = v9;
  v15 = a6;
  v10 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v17 = v10;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __137__NPKPaymentProvisioningFlowController_ReaderMode__contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _invalidateCardNotFoundTimer];
  [*(a1 + 32) setIngestionStateOnRetry:0];
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [v2 _resetReaderModeProvisioningState];
  }

  else
  {
    v3 = [v2 internalIngestionState];
    v4 = 0.0;
    if (v3 == 7)
    {
      [*(a1 + 32) setIngestionStateOnRetry:{6, 0.0}];
      v4 = 0.776119403;
    }

    [*(a1 + 32) _transitionToFlowIngestionState:0 progress:v4];
  }

  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 49);
      v16 = 136315906;
      v17 = "[NPKPaymentProvisioningFlowController(ReaderMode) contactlessCardIngester:didFailToIngestCardWithError:resetProvisioning:isRecoverable:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %s:%@ (resetProvisioning: %d, isRecoverable: %d)", &v16, 0x22u);
    }
  }

  v11 = *(a1 + 49);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = [v12 readerModeRequestContext];
  if (v11 == 1)
  {
    [v12 _sendDidEncounterError:v13 requestContext:v14];
  }

  else
  {
    [v12 _endProvisioningFlowWithError:v13 requestContext:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startIngestion
{
  if (![(NPKPaymentProvisioningFlowController *)self internalIngestionState]|| [(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 6)
  {
    [(NPKPaymentProvisioningFlowController *)self _setupCardIngester];
    [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:2];
    if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState])
    {
      if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 6)
      {

        [(NPKPaymentProvisioningFlowController *)self _startTransferringCard];
      }
    }

    else
    {

      [(NPKPaymentProvisioningFlowController *)self _startReadingCard];
    }
  }
}

- (void)_startReadingCard
{
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState])
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Warning! Attempted to ingestCard: while currently ingesting", v8, 2u);
      }
    }

    v6 = [objc_opt_class() _displayableCouldNotAddCardErrorWithUnderlyingError:0];
    v7 = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:v6 requestContext:v7];
  }

  else
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:2];
    v6 = [(NPKPaymentProvisioningFlowController *)self cardIngester];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke;
    v9[3] = &unk_279949098;
    v9[4] = self;
    [v6 ingestCardWithSuccessHandler:v9];
  }
}

void __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke_2;
  v5[3] = &unk_2799454E0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __69__NPKPaymentProvisioningFlowController_ReaderMode___startReadingCard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateCardNotFoundTimer];
  [*(a1 + 32) setIngestionCardSessionToken:*(a1 + 40)];
  v2 = objc_alloc(MEMORY[0x277D38020]);
  v3 = [*(a1 + 32) currentProduct];
  v7 = [v2 initWithPaymentSetupProduct:v3 cardSessionToken:*(a1 + 40)];

  [*(a1 + 32) setInternalIngestionState:3];
  v4 = *(a1 + 32);
  v5 = [v4 currentProduct];
  v6 = [*(a1 + 32) readerModeRequestContext];
  [v4 _transitionToProvisioningForCredential:v7 product:v5 requestContext:v6];
}

- (void)_startTransferringCard
{
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]== 6)
  {
    [(NPKPaymentProvisioningFlowController *)self setInternalIngestionState:7];
    v3 = [(NPKPaymentProvisioningFlowController *)self cardIngester];
    v4 = [(NPKPaymentProvisioningFlowController *)self ingestionCardSessionToken];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke;
    v9[3] = &unk_279944F98;
    v9[4] = self;
    [v3 ingestCardWithCardSessionToken:v4 successHandler:v9];
  }

  else
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Warning! attempting to ingestCardWithCardSessionToken: while currently ingesting", v8, 2u);
      }
    }

    v3 = [objc_opt_class() _displayableCouldNotAddCardErrorWithUnderlyingError:0];
    v4 = [(NPKPaymentProvisioningFlowController *)self readerModeRequestContext];
    [(NPKPaymentProvisioningFlowController *)self _sendDidEncounterError:v3 requestContext:v4];
  }
}

void __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke_2;
  v2[3] = &unk_279944F98;
  v2[4] = *(a1 + 32);
  v1 = v2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v4 = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__NPKPaymentProvisioningFlowController_ReaderMode___startTransferringCard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInternalIngestionState:8];
  v2 = [*(a1 + 32) provisioningController];
  v3 = [v2 provisionedPass];
  v4 = [v3 fieldForKey:*MEMORY[0x277D388C0]];
  if (v4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [*(a1 + 32) _transitionToFlowIngestionState:v5 progress:1.0];
  [*(a1 + 32) _tearDownCardIngester];
  v6 = *(a1 + 32);
  v9 = [v6 provisioningController];
  v7 = [v9 provisionedPass];
  v8 = [*(a1 + 32) readerModeRequestContext];
  [v6 _performNextStepForProvisionedPass:v7 requestContext:v8];
}

- (void)_resetReaderModeProvisioningState
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__NPKPaymentProvisioningFlowController_ReaderMode___resetReaderModeProvisioningState__block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  v2 = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke;
  block[3] = &unk_279945198;
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__NPKPaymentProvisioningFlowController_ReaderMode___resetReaderModeProvisioningState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removePassIfNecessary];
  v2 = [*(a1 + 32) provisioningController];
  [v2 resetForNewProvisioning];

  v3 = [*(a1 + 32) provisioningController];
  v4 = [*(a1 + 32) currentProduct];
  [v3 resolveRequirementsUsingProduct:v4];

  v5 = *(a1 + 32);

  return [v5 _transitionToFlowIngestionState:0 progress:0.0];
}

- (void)_removePassIfNecessary
{
  if ([(NPKPaymentProvisioningFlowController *)self internalIngestionState]!= 8)
  {
    v3 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
    v4 = [v3 hasPaymentPass];

    if (v4)
    {
      v5 = [(NPKPaymentProvisioningFlowController *)self provisioningController];
      [v5 removeProvisionedPass];
    }
  }
}

- (void)_transitionToFlowIngestionState:(unint64_t)a3
{
  [(NPKPaymentProvisioningFlowController *)self ingestionProgress];

  [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:a3 progress:?];
}

- (void)_transitionToIngestionProgress:(double)a3
{
  v5 = [(NPKPaymentProvisioningFlowController *)self flowIngestionState];

  [(NPKPaymentProvisioningFlowController *)self _transitionToFlowIngestionState:v5 progress:a3];
}

- (void)_startCardNotFoundTimer
{
  [(NPKPaymentProvisioningFlowController *)self _invalidateCardNotFoundTimer];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(NPKPaymentProvisioningFlowController *)self setIngestionCardNotFoundTimer:v3];

  objc_initWeak(&location, self);
  v4 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __75__NPKPaymentProvisioningFlowController_ReaderMode___startCardNotFoundTimer__block_invoke;
  v11 = &unk_279945030;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v4, &v8);

  v5 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer:v8];
  v6 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

  v7 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
  dispatch_resume(v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __75__NPKPaymentProvisioningFlowController_ReaderMode___startCardNotFoundTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cardNotFoundTimerFired];
}

- (void)_invalidateCardNotFoundTimer
{
  v3 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];

  if (v3)
  {
    v4 = [(NPKPaymentProvisioningFlowController *)self ingestionCardNotFoundTimer];
    dispatch_source_cancel(v4);

    [(NPKPaymentProvisioningFlowController *)self setIngestionCardNotFoundTimer:0];
  }
}

+ (id)_readerModeResources
{
  if (_readerModeResources_onceToken != -1)
  {
    +[NPKPaymentProvisioningFlowController(ReaderMode) _readerModeResources];
  }

  v3 = _readerModeResources_resourceKeys;

  return v3;
}

void __72__NPKPaymentProvisioningFlowController_ReaderMode___readerModeResources__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"transferValue";
  v3[1] = @"notFound";
  v3[2] = @"transferValue";
  v3[3] = @"transferring";
  v3[4] = @"cardAdded";
  v3[5] = @"commuteCardAdded";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = _readerModeResources_resourceKeys;
  _readerModeResources_resourceKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_physicalCardURLFromMetadata:(id)a3 forScale:(double)a4
{
  v5 = @"2x";
  if (a4 > 2.0)
  {
    v5 = @"3x";
  }

  v6 = v5;
  v7 = [a3 readerModeResources];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D388F0]];
  v9 = [v8 objectForKeyedSubscript:@"plasticCardImages"];

  if (v9 && [v9 count])
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:v6];
    v13 = [v10 URLWithString:v12];
  }

  else
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Malformed reader mode resources - missing card image urls", v18, 2u);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (id)_titleForState:(unint64_t)a3
{
  v5 = [objc_opt_class() _readerModeResources];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
  v8 = [v7 readerModeResources];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D388F8]];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"localizedTitle"];

  if (!v11)
  {
    if (a3 > 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = PKLocalizedPaymentString(&off_2799490B8[a3]->isa);
    }
  }

  return v11;
}

- (id)_subtitleForState:(unint64_t)a3
{
  v5 = [objc_opt_class() _readerModeResources];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(NPKPaymentProvisioningFlowController *)self ingestionMethodMetadata];
  v8 = [v7 readerModeResources];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D388F8]];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"localizedDescription"];

  if (!v11)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v12 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
          v13 = [v12 displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_6.isa, &stru_286C96FD8.isa, v13);
        }

        else
        {
          if (a3 != 5)
          {
            goto LABEL_16;
          }

          v12 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
          v13 = [v12 displayName];
          PKLocalizedPaymentString(&cfstr_ReaderModeProv_7.isa, &stru_286C96FD8.isa, v13);
        }

        goto LABEL_15;
      }

      v14 = @"READER_MODE_PROVISIONING_TRANSFERRING_SUBTITLE";
    }

    else
    {
      if (!a3)
      {
LABEL_6:
        v12 = [(NPKPaymentProvisioningFlowController *)self currentProduct];
        v13 = [v12 displayName];
        PKLocalizedPaymentString(&cfstr_ReaderModeProv_3.isa, &stru_286C96FD8.isa, v13);
        v11 = LABEL_15:;

        goto LABEL_16;
      }

      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_16;
        }

        goto LABEL_6;
      }

      v14 = @"READER_MODE_PROVISIONING_CARD_NOT_FOUND_SUBTITLE";
    }

    v11 = PKLocalizedPaymentString(&v14->isa);
  }

LABEL_16:

  return v11;
}

@end