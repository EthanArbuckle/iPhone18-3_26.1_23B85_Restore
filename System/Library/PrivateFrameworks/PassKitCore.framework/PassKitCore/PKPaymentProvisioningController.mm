@interface PKPaymentProvisioningController
+ (id)watchWebServiceForIssuerProvisioning;
- (BOOL)_credentialIsValidForSetupConfiguration:(id)configuration;
- (BOOL)_hasSetupConfiguration;
- (BOOL)_isExtensionSupported:(id)supported usingUnsupportedProvisioningExtensions:(id)extensions;
- (BOOL)_isProvisioningPaymentAccount;
- (BOOL)_isValidLocation:(id)location;
- (BOOL)hasCreditPaymentPass;
- (BOOL)hasDebitPaymentPass;
- (BOOL)hasPaymentPass;
- (BOOL)isPasscodeUpgradeRequired;
- (BOOL)isWatchSupportedForProduct:(id)product;
- (BOOL)setState:(int64_t)state forCredential:(id)credential;
- (BOOL)suppressDefaultCardholderNameField;
- (NSArray)allCredentials;
- (PKPaymentPass)provisionedPass;
- (PKPaymentProvisioningController)initWithWebService:(id)service localPaymentService:(id)paymentService paymentOffersController:(id)controller;
- (PKPaymentProvisioningController)initWithWebService:(id)service paymentOffersController:(id)controller;
- (PKPaymentProvisioningController)initWithWebService:(id)service paymentSetupRequest:(id)request;
- (PKProvisioningAnalyticsSessionPreflightReporter)analyticsReporter;
- (id)_accountsForFeatureIdentifier:(unint64_t)identifier;
- (id)_displayableErrorOverrideForUnderlyingError:(id)error;
- (id)_doesDisplayableErrorConstitutePreflightFailure:(id)failure;
- (id)_effectiveSessionIdentifier;
- (id)_eligibleMarketNames:(id)names;
- (id)_fetchOrCreateProductsForIdentifier:(unint64_t)identifier;
- (id)_filterFPANCredentials:(id)credentials forExistingCredentials:(id)existingCredentials;
- (id)_filterPaymentSetupProducts:(id)products;
- (id)_filteredPaymentSetupProductSections:(id)sections;
- (id)_localizedProgressDescriptionForEnablingCard;
- (id)_mockBrowseBanksResponse;
- (id)_paymentPassWithPaymentMethodType:(unint64_t)type;
- (id)_supportedFeatureIdentifierStrings;
- (id)_supportedFeatureIdentifierStringsForAccountProvisioning;
- (id)_supportedProvisioningExtensions;
- (id)associatedCredentialsForDefaultBehaviour;
- (id)associatedCredentialsForProductIdentifier:(id)identifier;
- (id)displayableErrorForError:(id)error;
- (id)displayableErrorForProvisioningError:(id)error;
- (id)localCredentials;
- (id)pendingProvisioningForCredential:(id)credential;
- (id)provisioningTracker;
- (int64_t)availableSecureElementPassSpaces;
- (unint64_t)countSupportedProvisioningExtensions;
- (void)_addOrUpdateProvisonedPassData:(id)data;
- (void)_applyIdentityConfiguration:(unint64_t)configuration activeConfigurations:(id)configurations completion:(id)completion;
- (void)_associateCredential:(id)credential withCompletionHandler:(id)handler;
- (void)_associateCredentials:(id)credentials withCompletionHandler:(id)handler;
- (void)_beginReportingIfNecessary;
- (void)_browsableBanksWithRequest:(id)request completion:(id)completion;
- (void)_deletePaymentPass:(id)pass;
- (void)_downloadRemoteAssetsForPaymentPass:(id)pass paymentCredential:(id)credential completion:(id)completion;
- (void)_endRequiringUpgradedPasscodeIfNecessary;
- (void)_endSessionIfNecessary;
- (void)_handleProvisioningError:(id)error forRequest:(id)request pass:(id)pass;
- (void)_identityConfigurationWithCompletion:(id)completion;
- (void)_informDelegatesOfAccountsUpdated;
- (void)_informDelegatesOfPaymentPassUpdateOnCredential:(id)credential;
- (void)_loadMoreInfoItemForMarket:(id)market eligibleMarkets:(id)markets completionHandler:(id)handler;
- (void)_metadataUpdatedOnCredentials;
- (void)_noteProvisioningDidBegin;
- (void)_noteProvisioningDidEnd;
- (void)_passAlreadyProvisioned;
- (void)_preflightRequirementsUpdated:(unint64_t)updated displayableError:(id)error;
- (void)_queryEligibilityForCredential:(id)credential completion:(id)completion;
- (void)_queryRequirementsForCredential:(id)credential completion:(id)completion;
- (void)_registerDevice:(id)device;
- (void)_reloadSetupProducts;
- (void)_requestProvisioning:(id)provisioning withCompletionHandler:(id)handler;
- (void)_requestRequirements:(id)requirements withCompletionHandler:(id)handler;
- (void)_retrieveFPANCredentialsWithCompletion:(id)completion;
- (void)_retrievePendingCarKeys:(id)keys;
- (void)_setLocalizedProgressDescription:(id)description;
- (void)_setState:(int64_t)state notify:(BOOL)notify;
- (void)_setupAccountCredentialForProvisioning:(id)provisioning completion:(id)completion;
- (void)_setupAccounts;
- (void)_setupFeatureApplications:(id)applications;
- (void)_startLocationSearchWithTimeout:(double)timeout completion:(id)completion;
- (void)_updateAllAssoicatedCredentialsMetadataWithCompletion:(id)completion;
- (void)_updateCredentialWithPaymentPass:(id)pass completion:(id)completion;
- (void)_updateCredentialWithPaymentPassAssets:(id)assets completion:(id)completion;
- (void)_updateLocalizedProgressAndInvalidateTimer;
- (void)_updatePaymentSetupProductModelExtensionsWithCompletion:(id)completion;
- (void)_updatePaymentSetupProductModelWithAvailability:(unint64_t)availability activeConfigurations:(id)configurations;
- (void)_updatePreflightRequirement:(unint64_t)requirement displayableError:(id)error;
- (void)acceptTerms;
- (void)accountAdded:(id)added;
- (void)addDelegate:(id)delegate;
- (void)associateCredentials:(id)credentials withCompletionHandler:(id)handler;
- (void)cachedPaymentSetupProductModelWithCompletion:(id)completion;
- (void)cleanupTransferredCredentialFromSourceDevice:(id)device completion:(id)completion;
- (void)dealloc;
- (void)declineTerms;
- (void)deleteCredential:(id)credential completionHandler:(id)handler;
- (void)didReceivePendingProvisioningUpdate:(id)update;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)finishOptionalExpressModeSetupForPass:(id)pass withProvisioningTracker:(id)tracker completion:(id)completion;
- (void)handleOptionalExpressModeSetupDidFinishForPass:(id)pass withExpressModes:(id)modes provisioningTracker:(id)tracker completion:(id)completion;
- (void)ingestSecureElementPassForCredential:(id)credential completion:(id)completion;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)passcodeUpgradeCompleted:(BOOL)completed;
- (void)paymentWebService:(id)service didCompleteTSMConnectionForTaskID:(unint64_t)d;
- (void)paymentWebService:(id)service didQueueTSMConnectionForTaskID:(unint64_t)d;
- (void)performDeviceCheckInIfNeeded:(id)needed;
- (void)preflightPasscodeUpgradeWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion;
- (void)preflightWithRequirements:(unint64_t)requirements completionRequirements:(unint64_t)completionRequirements completion:(id)completion;
- (void)preflightWithRequirements:(unint64_t)requirements update:(id)update;
- (void)proofingFlowManager:(id)manager completedProofingWithError:(id)error;
- (void)proofingFlowManager:(id)manager didChangeActiveConfigurations:(id)configurations;
- (void)provisionHomeKeyCredential:(id)credential completionHandler:(id)handler;
- (void)provisioningExtensionProductsWithCompletionHandler:(id)handler;
- (void)registerDevice:(id)device;
- (void)removeDelegate:(id)delegate;
- (void)removeProvisionedPasses;
- (void)requestEligibility:(id)eligibility withCompletionHandler:(id)handler;
- (void)requestExternalizedAuthForWatchWithVisibleViewController:(id)controller completion:(id)completion;
- (void)requestProvisioning:(id)provisioning withCompletion:(id)completion;
- (void)requestProvisioning:(id)provisioning withCompletionHandler:(id)handler;
- (void)requestProvisioningMethodMetadataForProduct:(id)product completionHandler:(id)handler;
- (void)requestPurchasesForProduct:(id)product completionHandler:(id)handler;
- (void)requestRequirements:(id)requirements withCompletionHandler:(id)handler;
- (void)reset;
- (void)resetForNewProvisioningForce:(BOOL)force;
- (void)resolveAmbiguousRequirementsWithProductIdentifier:(id)identifier;
- (void)resolveLocalEligibilityRequirementsForAppleBalanceCredential:(id)credential withCompletion:(id)completion;
- (void)resolveProvisioningForCredential:(id)credential;
- (void)resolveRequirementsForIssuerProvisioningExtensionCredential:(id)credential;
- (void)resolveRequirementsForShareableCredential:(id)credential;
- (void)resolveRequirementsUsingProduct:(id)product;
- (void)resolveRequirementsUsingProvisioningMethodMetadata:(id)metadata;
- (void)retrieveAccountCredentials:(id)credentials;
- (void)retrieveAllAvailableCredentials:(id)credentials;
- (void)retrieveRemoteCredentials:(id)credentials;
- (void)setAllowedFeatureIdentifiers:(id)identifiers;
- (void)setAnalyticsReporter:(id)reporter;
- (void)setupAccountCredentialForProvisioning:(id)provisioning completion:(id)completion;
- (void)setupProductForProvisioning:(id)provisioning includePurchases:(BOOL)purchases withCompletionHandler:(id)handler;
- (void)storeExternalizedAuth:(id)auth;
- (void)triggerWatchProvisioningForAppleBalanceCredential:(id)credential;
- (void)updatePaymentSetupProductModelWithCompletionHandler:(id)handler;
- (void)updateRemoteCredentials:(id)credentials withCompletionHandler:(id)handler;
- (void)updateStateAfterProvisioning:(id)provisioning credential:(id)credential passes:(id)passes moreInfoItems:(id)items;
- (void)validatePreconditions:(id)preconditions;
- (void)validatePreconditionsAndRegister:(id)register;
- (void)verifyPassIsSupportedForExpressInLocalMarket:(id)market completion:(id)completion;
@end

@implementation PKPaymentProvisioningController

- (PKPaymentProvisioningController)initWithWebService:(id)service paymentOffersController:(id)controller
{
  controllerCopy = controller;
  serviceCopy = service;
  v8 = +[PKPaymentService paymentService];
  v9 = [(PKPaymentProvisioningController *)self initWithWebService:serviceCopy localPaymentService:v8 paymentOffersController:controllerCopy];

  return v9;
}

- (PKPaymentProvisioningController)initWithWebService:(id)service localPaymentService:(id)paymentService paymentOffersController:(id)controller
{
  serviceCopy = service;
  paymentServiceCopy = paymentService;
  controllerCopy = controller;
  if (serviceCopy)
  {
    v57.receiver = self;
    v57.super_class = PKPaymentProvisioningController;
    v12 = [(PKPaymentProvisioningController *)&v57 init];
    v13 = v12;
    if (v12)
    {
      v12->_delegatesLock._os_unfair_lock_opaque = 0;
      if (PKPaymentSetupUseXPCProxyTargetDevice())
      {
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupUseXPCProxyTargetDevice() enabled. PKPaymentProvisioningController is using a wrapped web service for provisioning.", buf, 2u);
        }

        v15 = [PKPaymentWebServiceProxyTargetDeviceDebugHelper webServiceWithProxiedTargetDevice:serviceCopy];
        webService = v13->_webService;
        v13->_webService = v15;

        v13->_proxyTargetDeviceWebServiceInUse = 1;
      }

      else
      {
        objc_storeStrong(&v13->_webService, service);
      }

      [(PKPaymentWebService *)v13->_webService addDelegate:v13];
      [(PKWebService *)v13->_webService resetWebServiceSessionMarker];
      targetDevice = [(PKPaymentWebService *)v13->_webService targetDevice];
      deviceName = [targetDevice deviceName];
      v20 = [deviceName isEqualToString:@"Apple Watch"];

      if (v20 && (PKRunningInPassd() & 1) == 0)
      {
        v23 = [PKProvisioningUtility alloc];
        v24 = v13->_webService;
        v22 = +[PKPaymentWebService sharedService];
        v25 = [(PKProvisioningUtility *)v23 initWithDestinationWebService:v24 managingWebService:v22];
        utility = v13->_utility;
        v13->_utility = v25;
      }

      else
      {
        v21 = [[PKProvisioningUtility alloc] initWithDestinationWebService:v13->_webService managingWebService:v13->_webService];
        v22 = v13->_utility;
        v13->_utility = v21;
      }

      [(PKProvisioningUtility *)v13->_utility setDataProvider:v13];
      [(PKPaymentProvisioningController *)v13 _setState:[(PKPaymentProvisioningController *)v13 _defaultResetState] notify:0];
      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      tasks = v13->_tasks;
      v13->_tasks = v27;

      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      associatedCredentials = v13->_associatedCredentials;
      v13->_associatedCredentials = v29;

      v31 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      provisionedPasses = v13->_provisionedPasses;
      v13->_provisionedPasses = v31;

      v33 = objc_alloc_init(PKPaymentProvisioningControllerCredentialQueue);
      credentialProvisioningQueue = v13->_credentialProvisioningQueue;
      v13->_credentialProvisioningQueue = v33;

      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      delegates = v13->_delegates;
      v13->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

      v37 = objc_alloc_init(PKPaymentSetupProductModel);
      paymentSetupProductModel = v13->_paymentSetupProductModel;
      v13->_paymentSetupProductModel = v37;

      objc_storeStrong(&v13->_paymentService, paymentService);
      [(PKPaymentService *)v13->_paymentService registerObserver:v13];
      v39 = dispatch_queue_create("com.apple.passkit.updateRecentsAndKeychainWithContactInformation", 0);
      updateQueue = v13->_updateQueue;
      v13->_updateQueue = v39;

      v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      analyticsFeaturesToReport = v13->_analyticsFeaturesToReport;
      v13->_analyticsFeaturesToReport = v41;

      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      preflighUpdateHandlers = v13->_preflighUpdateHandlers;
      v13->_preflighUpdateHandlers = v43;

      v45 = +[PKAccountService sharedInstance];
      accountService = v13->_accountService;
      v13->_accountService = v45;

      v47 = [[PKPaymentCloudStoreZoneCreationManager alloc] initWithWebService:v13->_webService];
      zoneCreationManager = v13->_zoneCreationManager;
      v13->_zoneCreationManager = v47;

      [(PKAccountService *)v13->_accountService registerObserver:v13];
      v49 = objc_alloc_init(PKSecureElementProvisioningState);
      provisioningState = v13->_provisioningState;
      v13->_provisioningState = v49;

      v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingProvisionings = v13->_pendingProvisionings;
      v13->_pendingProvisionings = v51;

      objc_storeStrong(&v13->_paymentOffersController, controller);
      if (!controllerCopy && (PKRunningInPassd() & 1) == 0)
      {
        initForWalletProvisioning = [[PKPaymentOffersSessionDetails alloc] initForWalletProvisioning];
        v54 = [[PKPaymentOffersController alloc] initWithPaymentService:v13->_paymentService paymentWebService:v13->_webService configuration:initForWalletProvisioning];
        paymentOffersController = v13->_paymentOffersController;
        v13->_paymentOffersController = v54;
      }

      [(PKPaymentProvisioningController *)v13 _beginReportingIfNecessary];
    }
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Error: No webservice for provisioning controller returning nil", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (PKPaymentProvisioningController)initWithWebService:(id)service paymentSetupRequest:(id)request
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [(PKPaymentProvisioningController *)self initWithWebService:service];
  v8 = v7;
  if (v7)
  {
    provisioningState = v7->_provisioningState;
    configuration = [requestCopy configuration];
    referrerIdentifier = [configuration referrerIdentifier];
    [(PKSecureElementProvisioningState *)provisioningState setReferrerIdentifier:referrerIdentifier];

    paymentSetupFeatures = [requestCopy paymentSetupFeatures];
    if (paymentSetupFeatures)
    {
      v33 = requestCopy;
      objc_storeStrong(&v8->_paymentSetupFeatures, paymentSetupFeatures);
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
      requiredTransitNetworkIdentifiers = v8->_requiredTransitNetworkIdentifiers;
      v8->_requiredTransitNetworkIdentifiers = v14;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = paymentSetupFeatures;
      v16 = paymentSetupFeatures;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            type = [v21 type];
            if (type == 3)
            {
              v23 = v8->_requiredTransitNetworkIdentifiers;
              identifiers = [v21 identifiers];
              v25 = [(NSSet *)v23 setByAddingObjectsFromSet:identifiers];
              v26 = v8->_requiredTransitNetworkIdentifiers;
              v8->_requiredTransitNetworkIdentifiers = v25;
            }

            if (type == 2)
            {
              v27 = 4;
            }

            else
            {
              v27 = 2 * (type == 1);
            }

            if (v27)
            {
              v28 = PKFeatureIdentifierToString(v27);
              [v13 addObject:v28];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v18);
      }

      v29 = [v13 copy];
      allowedFeatureIdentifiers = v8->_allowedFeatureIdentifiers;
      v8->_allowedFeatureIdentifiers = v29;

      paymentSetupFeatures = v32;
      requestCopy = v33;
    }
  }

  return v8;
}

- (BOOL)isWatchSupportedForProduct:(id)product
{
  v21 = *MEMORY[0x1E69E9840];
  productCopy = product;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_paymentSetupFeatures;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        identifiers = [v8 identifiers];
        v10 = MEMORY[0x1E695DFD8];
        supportedTransitNetworkIdentifiers = [productCopy supportedTransitNetworkIdentifiers];
        v12 = [v10 setWithArray:supportedTransitNetworkIdentifiers];
        v13 = [identifiers intersectsSet:v12];

        if (v13 && ([v8 supportedDevices] & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          LOBYTE(v5) = 1;
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_descriptionTimer invalidate];
  [(PKPaymentWebService *)self->_webService removeDelegate:self];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  if (self->_proxyTargetDeviceWebServiceInUse)
  {
    [(PKWebService *)self->_webService invalidate];
    webService = self->_webService;
    self->_webService = 0;
  }

  locationTimer = self->_locationTimer;
  if (locationTimer)
  {
    dispatch_source_cancel(locationTimer);
  }

  [(CLLocationManager *)self->_locationManager setDelegate:0];
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKPaymentProvisioningController *)self _endSessionIfNecessary];
  v5.receiver = self;
  v5.super_class = PKPaymentProvisioningController;
  [(PKPaymentProvisioningController *)&v5 dealloc];
}

- (void)_endSessionIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_featuresDidBeginReporting;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = +[PKAnalyticsReporter subjectToReportDashboardAnalyticsForFeature:](PKAnalyticsReporter, "subjectToReportDashboardAnalyticsForFeature:", [*(*(&v8 + 1) + 8 * v6) integerValue]);
        if (v7)
        {
          [PKAnalyticsReporter endSubjectReporting:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_beginReportingIfNecessary
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_featuresDidBeginReporting];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v6 = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v7 = self->_analyticsFeaturesToReport;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = PKFeatureIdentifierFromString(*(*(&v19 + 1) + 8 * i));
        v13 = [PKAnalyticsReporter subjectToReportDashboardAnalyticsForFeature:v12];
        if (v13)
        {
          v14 = [PKAnalyticsReporter reporterForSubject:v13];

          if (!v14)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
            [v6 addObject:v15];

            [PKAnalyticsReporter beginSubjectReporting:v13];
          }
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];
  featuresDidBeginReporting = selfCopy->_featuresDidBeginReporting;
  selfCopy->_featuresDidBeginReporting = v16;
}

- (void)reset
{
  [(PKPaymentProvisioningController *)self resetForNewProvisioning];
  credentialProvisioningQueue = self->_credentialProvisioningQueue;

  [(PKPaymentProvisioningControllerCredentialQueue *)credentialProvisioningQueue setCredentialsToProvision:0];
}

- (void)resetForNewProvisioningForce:(BOOL)force
{
  forceCopy = force;
  v22 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != [(PKPaymentProvisioningController *)self _defaultResetState]|| forceCopy)
  {
    _defaultResetState = [(PKPaymentProvisioningController *)self _defaultResetState];
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PKPaymentProvisioningControllerStateToString(self->_state);
      v10 = PKPaymentProvisioningControllerStateToString(_defaultResetState);
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Provisioning Controller Reset (from: %@ to: %@)", &v18, 0x16u);
    }

    [(PKPaymentProvisioningController *)self _setState:_defaultResetState notify:1];
    referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
    v12 = objc_alloc_init(PKSecureElementProvisioningState);
    provisioningState = self->_provisioningState;
    self->_provisioningState = v12;

    [(PKSecureElementProvisioningState *)self->_provisioningState setReferrerIdentifier:referrerIdentifier];
    [(NSMutableOrderedSet *)self->_provisionedPasses removeAllObjects];
    moreInfoItems = self->_moreInfoItems;
    self->_moreInfoItems = 0;

    currentCredential = self->_currentCredential;
    self->_currentCredential = 0;

    currentAddPaymentPassRequestConfiguration = self->_currentAddPaymentPassRequestConfiguration;
    self->_currentAddPaymentPassRequestConfiguration = 0;

    automaticExpressModes = self->_automaticExpressModes;
    self->_automaticExpressModes = 0;

    self->_AMPEnrollmentAvailable = 0;
    [(PKWebService *)self->_webService resetWebServiceSessionMarker];
  }
}

- (void)_setState:(int64_t)state notify:(BOOL)notify
{
  if (self->_state != state)
  {
    self->_state = state;
    if (notify)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PKPaymentProvisioningControllerStateDidChangeNotification" object:self];
    }
  }
}

- (void)validatePreconditions:(id)preconditions
{
  preconditionsCopy = preconditions;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];

  if (targetDevice)
  {
    PKTimeProfileBegin(0, @"validate");
    v6 = PKLogFacilityTypeGetObject(0x24uLL);
    v7 = os_signpost_id_make_with_pointer(v6, self);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "provisioning:preflight:validate", "", buf, 2u);
      }
    }

    targetDevice2 = [(PKPaymentWebService *)self->_webService targetDevice];
    webService = self->_webService;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PKPaymentProvisioningController_validatePreconditions___block_invoke;
    v13[3] = &unk_1E79C4568;
    v13[4] = self;
    v14 = preconditionsCopy;
    [targetDevice2 paymentWebService:webService validateAddPreconditionsWithCompletion:v13];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "No target device for preconditions, bailing out", buf, 2u);
    }

    if (preconditionsCopy)
    {
      v12 = [(PKPaymentProvisioningController *)self displayableErrorForError:0];
      (*(preconditionsCopy + 2))(preconditionsCopy, 0, v12);
    }
  }
}

void __57__PKPaymentProvisioningController_validatePreconditions___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_2;
  v8[3] = &unk_1E79C4F18;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:validate", "", buf, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = @"NO";
  if (*(a1 + 56))
  {
    v6 = @"YES";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentProvisioningController: Validate Preconditions result was %@ error %@", v6, *(a1 + 40)];
  v8 = PKTimeProfileEnd(v5, @"validate", v7);

  if (*(a1 + 56) == 1)
  {
    PKTimeProfileBegin(0, @"configure");
    v9 = v2;
    v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "provisioning:preflight:configure_web_services", "", buf, 2u);
      }
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 368);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_197;
    v16[3] = &unk_1E79C4C70;
    v16[4] = v12;
    v17 = *(a1 + 48);
    [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:v13 completion:v16];
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      if (*(a1 + 40))
      {
        (*(v14 + 16))(*(a1 + 48), 0);
      }

      else
      {
        v15 = PKDisplayableErrorForCommonType(0, 0);
        (*(v14 + 16))(v14, 0, v15);
      }
    }
  }
}

void __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_197(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x24uLL);
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v4, OS_SIGNPOST_INTERVAL_END, v6, "provisioning:preflight:configure_web_services", "", buf, 2u);
    }
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = PKTimeProfileEnd(v7, @"configure", @"PKPaymentProvisioningController: Configure Web Service");

  if ([*(*(a1 + 32) + 368) registrationSetupSupportedInRegion])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_201;
    v12[3] = &unk_1E79C4E50;
    v9 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v9 performDeviceCheckInIfNeeded:v12];
    v10 = v13;
LABEL_8:

    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v10 = [*(a1 + 32) displayableErrorForError:v3];
    (*(v11 + 16))(v11, 0, v10);
    goto LABEL_8;
  }

LABEL_9:
}

uint64_t __57__PKPaymentProvisioningController_validatePreconditions___block_invoke_201(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)registerDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKPaymentProvisioningController_registerDevice___block_invoke;
  v6[3] = &unk_1E79C4E50;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(PKPaymentProvisioningController *)self _registerDevice:v6];
}

- (void)_registerDevice:(id)device
{
  deviceCopy = device;
  PKTimeProfileBegin(0, @"register");
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "provisioning:preflight:register", "", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke;
  aBlock[3] = &unk_1E79D65E0;
  aBlock[4] = self;
  v8 = deviceCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  if ([(PKPaymentWebService *)self->_webService _needsRegistrationShouldCheckSecureElementOwnership:1])
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_217;
      v17[3] = &unk_1E79D62F0;
      v11 = &v18;
      v18 = v9;
      [targetDevice performDeviceRegistrationReturningContextForReason:@"ProvisoningController" brokerURL:0 completion:v17];
    }

    else if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_3;
      v15[3] = &unk_1E79C8E90;
      v11 = &v16;
      v16 = v9;
      [targetDevice performDeviceRegistrationForReason:@"ProvisoningController" brokerURL:0 completion:v15];
    }

    else
    {
      v12 = +[PKDeviceRegistrationService sharedInstance];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_5;
      v13[3] = &unk_1E79D62F0;
      v11 = &v14;
      v14 = v9;
      [v12 performDeviceRegistrationReturningContextForReason:@"ProvisoningController" brokerURL:0 actionType:1 completion:v13];
    }
  }

  else
  {
    (*(v9 + 2))(v9, 16, 0, 0);
  }
}

void __51__PKPaymentProvisioningController__registerDevice___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject(0x24uLL);
  v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_END, v11, "provisioning:preflight:register", "", v16, 2u);
    }
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  v13 = PKTimeProfileEnd(v12, @"register", @"PKPaymentProvisioningController: Register");

  v14 = *(a1 + 40);
  if (v14)
  {
    if ((a2 & 0x10) == 0 || v8)
    {
      v15 = [*(a1 + 32) displayableErrorForError:v8];
      (*(v14 + 16))(v14, 0, v15);
    }

    else
    {
      if (v7)
      {
        [*(*(a1 + 32) + 368) updateContextAndNotifyIfNeeded:v7];
        v14 = *(a1 + 40);
      }

      (*(v14 + 16))(v14, 1, 0);
    }
  }
}

void __51__PKPaymentProvisioningController__registerDevice___block_invoke_217(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_2;
  v11[3] = &unk_1E79C4A90;
  v14 = *(a1 + 32);
  v15 = a2;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __51__PKPaymentProvisioningController__registerDevice___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_4;
  block[3] = &unk_1E79C4658;
  v9 = *(a1 + 32);
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__PKPaymentProvisioningController__registerDevice___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PKPaymentProvisioningController__registerDevice___block_invoke_6;
  v11[3] = &unk_1E79C4A90;
  v14 = *(a1 + 32);
  v15 = a2;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

- (void)validatePreconditionsAndRegister:(id)register
{
  registerCopy = register;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PKPaymentProvisioningController_validatePreconditionsAndRegister___block_invoke;
  v6[3] = &unk_1E79C4A68;
  v6[4] = self;
  v7 = registerCopy;
  v5 = registerCopy;
  [(PKPaymentProvisioningController *)self validatePreconditions:v6];
}

void __68__PKPaymentProvisioningController_validatePreconditionsAndRegister___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, a2, v5);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PKPaymentProvisioningController_validatePreconditionsAndRegister___block_invoke_2;
    v8[3] = &unk_1E79C4E50;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 registerDevice:v8];
  }
}

uint64_t __68__PKPaymentProvisioningController_validatePreconditionsAndRegister___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  _hasSetupConfiguration = [(PKPaymentProvisioningController *)self _hasSetupConfiguration];
  if (_hasSetupConfiguration)
  {
    v5 = 493;
  }

  else
  {
    v5 = 1007;
  }

  if (_hasSetupConfiguration)
  {
    v6 = 493;
  }

  else
  {
    v6 = 263;
  }

  [(PKPaymentProvisioningController *)self preflightWithRequirements:v5 completionRequirements:v6 completion:completionCopy];
}

- (void)preflightWithRequirements:(unint64_t)requirements completionRequirements:(unint64_t)completionRequirements completion:(id)completion
{
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKPaymentProvisioningController_preflightWithRequirements_completionRequirements_completion___block_invoke;
  v10[3] = &unk_1E79D6608;
  v12 = v15;
  requirementsCopy = requirements;
  v10[4] = self;
  completionRequirementsCopy = completionRequirements;
  v9 = completionCopy;
  v11 = v9;
  [(PKPaymentProvisioningController *)self preflightWithRequirements:requirements update:v10];

  _Block_object_dispose(v15, 8);
}

void __95__PKPaymentProvisioningController_preflightWithRequirements_completionRequirements_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = a1[4];
    v10 = v5;
    if (*(v7 + 360) == 1)
    {
      v8 = 7;
      if (v5)
      {
LABEL_9:
        *(*(a1[6] + 8) + 24) = 1;
        (*(a1[5] + 16))();
        v6 = v10;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = [*(v7 + 368) paymentSetupSupportedInRegion];
      v6 = v10;
      v8 = 8;
      if (v9 == 2)
      {
        v8 = 7;
      }

      if (v10)
      {
        goto LABEL_9;
      }
    }

    if ((a1[v8] & a2) != a1[v8])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)preflightWithRequirements:(unint64_t)requirements update:(id)update
{
  updateCopy = update;
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke;
  v10[3] = &unk_1E79C4A90;
  v12 = updateCopy;
  requirementsCopy = requirements;
  v10[4] = self;
  v11 = v7;
  v9 = updateCopy;
  dispatch_async(v7, v10);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 32);
    if ((v2 & ~*(v3 + 392)) != 0)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = *(v3 + 216);
        v9 = [v7 copy];
        v10 = _Block_copy(v9);
        [v8 addObject:v10];

        v3 = *(a1 + 32);
      }

      if (*(v3 + 224) == 1)
      {
        v11 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController already preflighting", &buf, 2u);
        }
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_222;
        aBlock[3] = &unk_1E79D6630;
        v12 = *(a1 + 56);
        aBlock[4] = v3;
        aBlock[5] = v12;
        v13 = _Block_copy(aBlock);
        *(*(a1 + 32) + 224) = 1;
        PKTimeProfileBegin(0, @"preflight");
        v14 = PKLogFacilityTypeGetObject(0x24uLL);
        v15 = os_signpost_id_make_with_pointer(v14, *(a1 + 32));
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = v15;
          if (os_signpost_enabled(v14))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_1AD337000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "provisioning:preflight:total", "", &buf, 2u);
          }
        }

        v17 = objc_alloc_init(PKAsyncUnaryOperationComposer);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v74 = 0x2020000000;
        v75 = 0;
        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x2020000000;
        v71 = 0;
        v18 = [*(a1 + 32) analyticsReporter];
        v19 = [v18 startPreflight];
        if (v13[2](v13, 256))
        {
          if (PKLocationServicesEnabled())
          {
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_228;
            v67[3] = &unk_1E79D6658;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40);
            v22 = *(a1 + 32);
            v68 = v21;
            v69 = v22;
            [v20 _startLocationSearchWithTimeout:v67 completion:3.0];
          }

          [*(a1 + 32) _updatePreflightRequirement:256 displayableError:0];
        }

        if (v13[2](v13, 1))
        {
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2;
          v62[3] = &unk_1E79D6718;
          v23 = *(a1 + 40);
          v24 = *(a1 + 32);
          v63 = v23;
          v64 = v24;
          p_buf = &buf;
          v66 = v70;
          [(PKAsyncUnaryOperationComposer *)v17 addOperation:v62];
        }

        else
        {
          v25 = [*(*(a1 + 32) + 368) paymentSetupSupportedInRegion] == 1;
          *(*(&buf + 1) + 24) = v25;
        }

        if (v13[2](v13, 4))
        {
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_243;
          v59[3] = &unk_1E79D6768;
          v26 = *(a1 + 40);
          v27 = *(a1 + 32);
          v60 = v26;
          v61 = v27;
          [(PKAsyncUnaryOperationComposer *)v17 addOperation:v59];
        }

        if (v13[2](v13, 2))
        {
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_245;
          v54[3] = &unk_1E79D67B8;
          v28 = *(a1 + 40);
          v29 = *(a1 + 32);
          v55 = v28;
          v56 = v29;
          v30 = *(a1 + 56);
          v57 = &buf;
          v58 = v30;
          [(PKAsyncUnaryOperationComposer *)v17 addOperation:v54];
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_246;
        v46[3] = &unk_1E79D68D0;
        v47 = *(a1 + 40);
        v31 = v13;
        v48 = *(a1 + 32);
        v51 = v31;
        v52 = v70;
        v32 = v18;
        v49 = v32;
        v33 = v19;
        v50 = v33;
        v53 = &buf;
        [(PKAsyncUnaryOperationComposer *)v17 addOperation:v46];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_270;
        v45[3] = &unk_1E79D68F8;
        v45[4] = *(a1 + 32);
        v45[5] = v70;
        v45[6] = &buf;
        [(PKAsyncUnaryOperationComposer *)v17 addOperation:v45];
        v34 = [MEMORY[0x1E695DFB0] null];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_275;
        v40[3] = &unk_1E79D6920;
        v35 = *(a1 + 40);
        v36 = *(a1 + 32);
        v41 = v35;
        v42 = v36;
        v37 = v32;
        v43 = v37;
        v38 = v33;
        v44 = v38;
        v39 = [(PKAsyncUnaryOperationComposer *)v17 evaluateWithInput:v34 completion:v40];

        _Block_object_dispose(v70, 8);
        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v2;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController has already been preflighted with requirements result: %lu", &buf, 0xCu);
      }

      v5 = *(a1 + 48);
      if (v5)
      {
LABEL_6:
        (*(v5 + 16))(v5, *(*(a1 + 32) + 392), 0);
      }
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController cannot preflight with no requirements", &buf, 2u);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      goto LABEL_6;
    }
  }
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__39;
  v46[4] = __Block_byref_object_dispose__39;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = *(a1 + 40);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_230;
  v40[3] = &unk_1E79D6680;
  v42 = v48;
  v43 = v46;
  v12 = v10;
  v41 = v12;
  [v11 validatePreconditions:v40];
  PKTimeProfileBegin(0, @"under_13");
  v13 = PKLogFacilityTypeGetObject(0x24uLL);
  v14 = os_signpost_id_make_with_pointer(v13, *(a1 + 40));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "provisioning:preflight:icloud_family_check", "", buf, 2u);
    }
  }

  dispatch_group_enter(v12);
  v16 = [*(*(a1 + 40) + 368) targetDevice];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_236;
  v35[3] = &unk_1E79D66C8;
  v37 = &__block_literal_global_121;
  v38 = v44;
  v17 = v12;
  v36 = v17;
  [v16 familyMembersWithCompletion:v35];
  v18 = *(a1 + 40);
  if (*(v18 + 296) == 1)
  {
    dispatch_group_enter(v17);
    v19 = *(*(a1 + 40) + 8);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_238;
    v31[3] = &unk_1E79D66C8;
    v33 = &__block_literal_global_121;
    v34 = v45;
    v32 = v17;
    [v19 familyMembersWithCompletion:v31];

    v18 = *(a1 + 40);
  }

  v20 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3;
  block[3] = &unk_1E79D66F0;
  v26 = v44;
  v27 = v45;
  v28 = *(a1 + 48);
  v29 = v46;
  v30 = v48;
  v24 = v8;
  v25 = v9;
  block[4] = v18;
  v21 = v8;
  v22 = v9;
  dispatch_group_notify(v17, v20, block);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_230(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_231(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if ([v8 isMe])
      {
        if ([v8 isChildAccount])
        {
          break;
        }
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v6 = 2;
  }

  return v6;
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_236(void *a1)
{
  *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
  v2 = a1[4];

  dispatch_group_leave(v2);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_238(void *a1)
{
  *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
  v2 = a1[4];

  dispatch_group_leave(v2);
}

uint64_t __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:icloud_family_check", "", v11, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = PKTimeProfileEnd(v5, @"under_13", @"PKPaymentProvisioningController: iCloud Family Check");

  *(*(a1 + 32) + 232) = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(a1 + 32);
  v8 = 56;
  if (*(v7 + 296))
  {
    v8 = 64;
  }

  *(v7 + 360) = *(*(*(a1 + v8) + 8) + 24);
  *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 32) + 368) paymentSetupSupportedInRegion] == 1;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*(a1 + 72) + 8) + 24) ^ 1;
  }

  *(*(*(a1 + 80) + 8) + 24) = v9 & 1;
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _updatePreflightRequirement:1 displayableError:*(*(*(a1 + 88) + 8) + 40)];
  }

  return (*(*(a1 + 48) + 16))();
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_243(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_244;
  v13[3] = &unk_1E79D6740;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = v6;
  v17 = v7;
  v11 = v6;
  v12 = v7;
  [v8 registerDevice:v13];
}

uint64_t __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 40) _updatePreflightRequirement:4 displayableError:a3];
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_245(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 40);
  if (v8[45] == 1 || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) _updatePreflightRequirement:2 displayableError:0];
    v7[2](v7, v6, 0);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_4;
    v11[3] = &unk_1E79D6790;
    v9 = *(a1 + 32);
    v16 = *(a1 + 56);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    v15 = v7;
    v14 = v6;
    [v8 cachedPaymentSetupProductModelWithCompletion:v11];
  }
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (*(a1 + 64) & 2) != 0)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2112;
      v10 = v3;
      v6 = v8;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@ was not able to load cached products skipping preflight update. Non critical error: %@", &v7, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) _updatePreflightRequirement:2 displayableError:v3];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), 0, v4);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_246(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_group_create();
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__39;
  v73[4] = __Block_byref_object_dispose__39;
  v74 = 0;
  if ((*(*(a1 + 64) + 16))())
  {
    dispatch_group_enter(v10);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_247;
    v67[3] = &unk_1E79D6830;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v13 = *(a1 + 72);
    v71 = v73;
    v72 = v13;
    *&v14 = v12;
    *(&v14 + 1) = *(a1 + 40);
    v45 = v14;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v68 = v45;
    v69 = v17;
    v70 = v10;
    [v11 retrieveAllAvailableCredentials:v67];
  }

  if (((*(*(a1 + 64) + 16))() & 1) != 0 || (*(*(a1 + 64) + 16))())
  {
    v18 = *(a1 + 40);
    if (v18[45] == 1)
    {
      [v18 _updatePreflightRequirement:10 displayableError:0];
    }

    else
    {
      dispatch_group_enter(v10);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_5;
      v62[3] = &unk_1E79D6858;
      v19 = *(a1 + 40);
      v20 = *(a1 + 32);
      v66 = v73;
      v21 = *(a1 + 40);
      v63 = v20;
      v64 = v21;
      v65 = v10;
      [v19 updatePaymentSetupProductModelWithCompletionHandler:v62];
    }
  }

  if ((*(*(a1 + 64) + 16))())
  {
    v22 = *(a1 + 40);
    if (v22[42])
    {
      dispatch_group_enter(v10);
      v23 = [*(*(a1 + 40) + 336) configuration];
      v24 = [v23 context];

      if (v24 >= 4)
      {
        v25 = 0;
      }

      else
      {
        v25 = qword_1ADB9A8C8[v24];
      }

      PKTimeProfileBegin(0, @"offers_catalog");
      v26 = PKLogFacilityTypeGetObject(0x24uLL);
      v27 = os_signpost_id_make_with_pointer(v26, *(a1 + 40));
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = v27;
        if (os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v28, "provisioning:preflight:offers_catalog", "", buf, 2u);
        }
      }

      v29 = *(*(a1 + 40) + 336);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_255;
      v57[3] = &unk_1E79D6880;
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      v58 = v30;
      v59 = v31;
      v60 = v10;
      [v29 updatePaymentOfferCatalogWithReason:v25 completion:v57];
    }

    else
    {
      [v22 _updatePreflightRequirement:512 displayableError:0];
    }
  }

  if ((*(*(a1 + 64) + 16))())
  {
    v32 = *(a1 + 40);
    if (v32[45] == 1 || (*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
    {
      [v32 _updatePreflightRequirement:64 displayableError:{0, v45}];
    }

    else
    {
      dispatch_group_enter(v10);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_259;
      v53[3] = &unk_1E79C7D80;
      v33 = *(a1 + 40);
      *&v34 = *(a1 + 32);
      *(&v34 + 1) = *(a1 + 40);
      v46 = v34;
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      *&v37 = v35;
      *(&v37 + 1) = v36;
      v54 = v46;
      v55 = v37;
      v56 = v10;
      [v33 _updatePaymentSetupProductModelExtensionsWithCompletion:v53];
    }
  }

  if ((*(*(a1 + 64) + 16))())
  {
    if (PKDisableDynamicSEAllocation())
    {
      [*(a1 + 40) _updatePreflightRequirement:128 displayableError:0];
    }

    else
    {
      PKTimeProfileBegin(0, @"secure_element_snapshot");
      v38 = PKLogFacilityTypeGetObject(0x24uLL);
      v39 = os_signpost_id_make_with_pointer(v38, *(a1 + 40));
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = v39;
        if (os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v40, "provisioning:preflight:secure_element_snapshot", "", buf, 2u);
        }
      }

      dispatch_group_enter(v10);
      v41 = [*(*(a1 + 40) + 368) targetDevice];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_263;
      v51[3] = &unk_1E79D68A8;
      v51[4] = *(a1 + 40);
      v52 = v10;
      [v41 currentSecureElementSnapshot:v51];
    }
  }

  v42 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_269;
  block[3] = &unk_1E79CC068;
  v49 = v9;
  v50 = v73;
  v48 = v8;
  v43 = v8;
  v44 = v9;
  dispatch_group_notify(v10, v42, block);

  _Block_object_dispose(v73, 8);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_247(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v7 = [*(a1 + 40) _doesDisplayableErrorConstitutePreflightFailure:a3];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  [*(*(a1 + 40) + 40) removeAllObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_248;
  v17[3] = &unk_1E79D6808;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v21 = *(a1 + 72);
  *&v12 = v11;
  *(&v12 + 1) = *(a1 + 40);
  v16 = v12;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v18 = v16;
  v19 = v15;
  v20 = *(a1 + 64);
  [v10 _associateCredentials:v6 withCompletionHandler:v17];
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_248(uint64_t a1)
{
  v2 = (a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_4_249;
  v10[3] = &unk_1E79D67E0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v14 = *(a1 + 72);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  [v3 _updateAllAssoicatedCredentialsMetadataWithCompletion:v10];
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_4_249(uint64_t a1)
{
  if (!*(*(*(a1 + 72) + 8) + 40) && (*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && ![*(*(a1 + 40) + 40) count] && *(*(a1 + 40) + 360) == 1)
  {
    v2 = PKDisplayableErrorForCommonType(5, 0);
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  [*(a1 + 40) _updatePreflightRequirement:32 displayableError:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 48) reportCredentialsPreflightComplete:*(*(a1 + 40) + 40) token:*(a1 + 56)];
  v5 = *(a1 + 64);

  dispatch_group_leave(v5);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (!v2)
  {
    v3 = [*(a1 + 40) _doesDisplayableErrorConstitutePreflightFailure:?];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 56) + 8) + 40);
  }

  [*(a1 + 40) _updatePreflightRequirement:10 displayableError:v2];
  v6 = *(a1 + 48);

  dispatch_group_leave(v6);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_255(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 40));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:offers_catalog", "", v7, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = PKTimeProfileEnd(v5, @"offers_catalog", @"PKPaymentProvisioningController: Offers Catalog Fetch");

  [*(a1 + 40) _updatePreflightRequirement:512 displayableError:0];
  dispatch_group_leave(*(a1 + 48));
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_259(uint64_t a1)
{
  [*(a1 + 40) _updatePreflightRequirement:64 displayableError:0];
  v2 = *(a1 + 48);
  v3 = [*(*(a1 + 40) + 448) setupProductsOfType:6];
  [v2 reportAppExtensionPreflightComplete:v3 token:*(a1 + 56)];

  v4 = *(a1 + 64);

  dispatch_group_leave(v4);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_263(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_264;
  block[3] = &unk_1E79C4E00;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_264(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:secure_element_snapshot", "", v7, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = PKTimeProfileEnd(v5, @"secure_element_snapshot", @"PKPaymentProvisioningController: Secure Element Snapshot");

  objc_storeStrong((*(a1 + 32) + 416), *(a1 + 40));
  [*(a1 + 32) _updatePreflightRequirement:128 displayableError:0];
  dispatch_group_leave(*(a1 + 48));
}

void __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_2_270(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v10 = a4[2];
    v8 = a4;
    v22 = a3;
    v10(v8);
    goto LABEL_21;
  }

  v6 = *(*(a1 + 32) + 40);
  v7 = a4;
  v8 = a3;
  if (![v6 count])
  {
    v11 = [*(*(a1 + 32) + 368) targetDevice];
    v12 = [v11 deviceRegion];

    if (*(*(a1 + 32) + 302) == 1 && ((v13 = v12, v13 == @"PR") || (v14 = v13) != 0 && (v15 = [(__CFString *)v13 isEqualToString:@"PR"], v14, v15)))
    {
      v16 = PKIsPhone() ^ 1;
    }

    else
    {
      v16 = 1;
    }

    if (*(*(a1 + 32) + 360) == 1)
    {
      v17 = 5;
    }

    else
    {
      if (((*(*(*(a1 + 48) + 8) + 24) | v16) & 1) == 0)
      {
        v18 = PKCurrentMobileCarrierRegion();
        v19 = [*(*(a1 + 32) + 448) filteredPaymentSetupProductModel:*(*(a1 + 32) + 368) mobileCarrierRegion:v18 deviceRegion:v12 cardOnFiles:0];
        v20 = [v19 count];
        v21 = 0;
        if (!v20)
        {
          v21 = PKDisplayableErrorForCommonType(4, 0);
        }

        v23 = v21;

        goto LABEL_19;
      }

      v17 = 4;
    }

    v23 = PKDisplayableErrorForCommonType(v17, 0);
LABEL_19:

    v9 = v23;
    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:
  v22 = v9;
  [*(a1 + 32) _updatePreflightRequirement:1 displayableError:?];
  (v7[2])(v7, v8, 0);

LABEL_21:
}

uint64_t __68__PKPaymentProvisioningController_preflightWithRequirements_update___block_invoke_3_275(uint64_t a1)
{
  [*(*(a1 + 40) + 216) removeAllObjects];
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 40));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:total", "", v8, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = PKTimeProfileEnd(v5, @"preflight", @"PKPaymentProvisioningController: Preflight Total");

  result = [*(a1 + 48) finishPreflightForToken:*(a1 + 56)];
  *(*(a1 + 40) + 224) = 0;
  return result;
}

- (void)_updatePreflightRequirement:(unint64_t)requirement displayableError:(id)error
{
  errorCopy = error;
  v7 = MEMORY[0x1E69E96A0];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(NSMutableArray *)self->_preflighUpdateHandlers copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PKPaymentProvisioningController__updatePreflightRequirement_displayableError___block_invoke;
  v11[3] = &unk_1E79D6948;
  v12 = errorCopy;
  selfCopy = self;
  v14 = v8;
  requirementCopy = requirement;
  v9 = v8;
  v10 = errorCopy;
  dispatch_async(v7, v11);
}

uint64_t __80__PKPaymentProvisioningController__updatePreflightRequirement_displayableError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error: PKPaymentProvisioningController Preflight encountered: %@", buf, 0xCu);
    }
  }

  else
  {
    *(*(a1 + 40) + 392) |= *(a1 + 56);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [*(a1 + 40) _preflightRequirementsUpdated:*(*(a1 + 40) + 392) displayableError:{*(a1 + 32), v10}];
}

- (id)_doesDisplayableErrorConstitutePreflightFailure:(id)failure
{
  failureCopy = failure;
  v4 = failureCopy;
  if (failureCopy)
  {
    userInfo = [failureCopy userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    if (v6 && [v6 code] == -1009)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performDeviceCheckInIfNeeded:(id)needed
{
  neededCopy = needed;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v6 = objc_opt_respondsToSelector();
  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Requesting device check in", buf, 2u);
    }

    PKTimeProfileBegin(0, @"check_in");
    v9 = PKLogFacilityTypeGetObject(0x24uLL);
    v10 = os_signpost_id_make_with_pointer(v9, self);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "provisioning:preflight:check_in", "", buf, 2u);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PKPaymentProvisioningController_performDeviceCheckInIfNeeded___block_invoke;
    v12[3] = &unk_1E79C4568;
    v12[4] = self;
    v13 = neededCopy;
    [targetDevice performDeviceCheckInWithCompletion:v12];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Target Device does not support check in", buf, 2u);
    }

    if (neededCopy)
    {
      (*(neededCopy + 2))(neededCopy, 0, 0);
    }
  }
}

void __64__PKPaymentProvisioningController_performDeviceCheckInIfNeeded___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0x24uLL);
  v7 = os_signpost_id_make_with_pointer(v6, *(a1 + 32));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_END, v8, "provisioning:preflight:check_in", "", buf, 2u);
    }
  }

  v9 = @"NO";
  if (a2)
  {
    v9 = @"YES";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentProvisioningController: Device check in success: %@ error: %@", v9, v5];
  v11 = PKTimeProfileEnd(0, @"check_in", v10);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPaymentProvisioningController_performDeviceCheckInIfNeeded___block_invoke_288;
  block[3] = &unk_1E79C4540;
  v12 = *(a1 + 40);
  v17 = a2;
  v15 = v5;
  v16 = v12;
  v13 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__PKPaymentProvisioningController_performDeviceCheckInIfNeeded___block_invoke_288(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)retrieveRemoteCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if (PKShowFakeRemoteCredentials())
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Delivering fake cards on file as requested by toggle", buf, 2u);
    }

    v6 = +[PKPaymentCredential fakeRemoteCredentials];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke;
    block[3] = &unk_1E79C44A0;
    v7 = credentialsCopy;
    v23 = v6;
    v24 = v7;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v9 = v24;
  }

  else
  {
    v10 = objc_alloc_init(PKPaymentRemoteCredentialsRequest);
    v8 = v10;
    if (self->_fetchCardsOnFileExtendedAuthorization)
    {
      [(PKPaymentRemoteCredentialsRequest *)v10 setFetchExtendedAuthorizationActions:1];
      [(PKPaymentRemoteCredentialsRequest *)v8 setDeviceProvisioningDataExpected:1];
    }

    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    webService = self->_webService;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_2;
    v15[3] = &unk_1E79D6A10;
    v15[4] = self;
    v16 = credentialsCopy;
    v17 = buf;
    v12 = [(PKPaymentWebService *)webService remotePaymentCredentialsForRequest:v8 completion:v15];
    *(v19 + 3) = v12;
    tasks = self->_tasks;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [(NSMutableSet *)tasks addObject:v14];

    _Block_object_dispose(buf, 8);
    v9 = v16;
  }
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, 1, 0, v2);
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_3;
  v13[3] = &unk_1E79D69E8;
  v19 = a2;
  v9 = a1[4];
  v10 = a1[5];
  v14 = v8;
  v15 = v9;
  v16 = v7;
  v17 = v10;
  v18 = a1[6];
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_3(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v27 = a1;
  if (!v2)
  {
    v1 = [*(a1 + 32) domain];
    if ([v1 isEqualToString:*MEMORY[0x1E696A978]])
    {

      v3 = v27;
LABEL_9:
      v6 = [*(v3 + 40) displayableErrorForError:*(v3 + 32)];
      v7 = v27;
      v8 = *(v27 + 56);
      if (v8)
      {
        (*(v8 + 16))(v8, 0, v6, 0);
      }

      goto LABEL_22;
    }

    a1 = v27;
  }

  v4 = [*(a1 + 32) domain];
  if ([v4 isEqualToString:@"PKWebServiceErrorDomain"])
  {
    v3 = v27;
    v5 = [*(v27 + 32) code];

    if (!v2)
    {
    }

    if (v5 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v3 = v27;
    if (!v2)
    {
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v25 = [*(*(v3 + 40) + 368) targetDevice];
  v26 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v10 = [*(*(v3 + 40) + 368) context];
  v11 = [v10 configuration];
  v12 = [v11 credentialTypesRequiringMetadata];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [*(v27 + 48) credentials];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_4;
        v31[3] = &unk_1E79D6998;
        v31[4] = v17;
        v18 = v12;
        v36 = v41;
        v19 = *(v27 + 40);
        v32 = v18;
        v33 = v19;
        v34 = v25;
        v35 = v9;
        [(PKAsyncUnaryOperationComposer *)v26 addOperation:v31];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_299;
  v28[3] = &unk_1E79D69C0;
  v21 = v9;
  v29 = v21;
  v30 = *(v27 + 56);
  v22 = [(PKAsyncUnaryOperationComposer *)v26 evaluateWithInput:v20 completion:v28];

  _Block_object_dispose(v41, 8);
  v7 = v27;
LABEL_22:
  v23 = *(*(v7 + 40) + 24);
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(v7 + 64) + 8) + 24)];
  [v23 removeObject:v24];
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] pk_stringWithInteger:{objc_msgSend(*(a1 + 32), "credentialType")}];
  [*(a1 + 32) setRequiresMetadata:{objc_msgSend(*(a1 + 40), "containsObject:", v8)}];
  [*(a1 + 32) setRank:(*(*(*(a1 + 72) + 8) + 24))++];
  v9 = [*(a1 + 32) credentialType];
  if (*(*(a1 + 48) + 296) == 1)
  {
    v10 = v9;
    if ([*(a1 + 32) cardType] != 2 && objc_msgSend(*(a1 + 32), "cardType") != 3 && v10 != 135 && (v10 - 127) >= 2)
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138412290;
        v33 = v22;
        v23 = "Provisioning for alt account, remote credential was not supported type: %@";
LABEL_30:
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 48) + 296))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = *(a1 + 32);
    *buf = 138412546;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Provisioning for alt account %@, remote credential supported: %@", buf, 0x16u);
  }

  if (!PKShouldDisplayRemoteCredentialWithStatus(*(a1 + 32)))
  {
    goto LABEL_32;
  }

  v14 = [*(a1 + 32) fidoProfile];

  if (!v14)
  {
    [*(a1 + 64) addObject:*(a1 + 32)];
LABEL_32:
    v7[2](v7, v6, 0);
    goto LABEL_33;
  }

  if ([*(a1 + 32) credentialType] == 130 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(*(a1 + 56), "areUnifiedAccessPassesSupported") & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412290;
      v33 = v25;
      v23 = "Credential is Unified Access yet Target device doesn't support unified access. Credential: %@";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if ([*(a1 + 32) credentialType] == 139 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(*(a1 + 56), "areAliroAccessPassesSupported") & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 138412290;
      v33 = v26;
      v23 = "Credential is Aliro yet target device doesn't support Aliro. Credential: %@";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v33 = v24;
      v23 = "Remote credential requires FIDO key check, but target device doesn't support that. Credential: %@";
      goto LABEL_30;
    }

LABEL_31:

    goto LABEL_32;
  }

  v15 = [*(a1 + 32) fidoProfile];
  v16 = *(a1 + 56);
  v17 = [v15 relyingPartyIdentifier];
  v18 = [v15 accountHash];
  v19 = [v15 keyHash];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_297;
  v27[3] = &unk_1E79D6970;
  v20 = *(a1 + 64);
  v21 = *(a1 + 32);
  v28 = v20;
  v29 = v21;
  v31 = v7;
  v30 = v6;
  [v16 checkFidoKeyPresenceForRelyingParty:v17 relyingPartyAccountHash:v18 fidoKeyHash:v19 completion:v27];

LABEL_33:
}

uint64_t __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_297(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_299(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_2_300;
  v2[3] = &unk_1E79C4A40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __61__PKPaymentProvisioningController_retrieveRemoteCredentials___block_invoke_2_300(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Credentials retrieved: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) copy];
    (*(v4 + 16))(v4, 1, 0, v5);
  }
}

- (id)_supportedFeatureIdentifierStrings
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[PKWalletVisibility isWalletRestricted];
  supportedFeatureIdentifierStrings = self->_supportedFeatureIdentifierStrings;
  if (v3)
  {
    self->_supportedFeatureIdentifierStrings = 0;

    v5 = 0;
    goto LABEL_17;
  }

  if (![(NSSet *)supportedFeatureIdentifierStrings count])
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      v7 = [targetDevice supportedFeatureIdentifiersWithPaymentWebService:self->_webService];
      v8 = [v7 mutableCopy];

      v9 = PKLogFacilityTypeGetObject(0xEuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Target device supports features: %@", &v14, 0xCu);
      }

      if (!v8 || !self->_allowedFeatureIdentifiers)
      {
        goto LABEL_15;
      }

      [(NSSet *)v8 intersectSet:?];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        allowedFeatureIdentifiers = self->_allowedFeatureIdentifiers;
        v14 = 138412546;
        v15 = allowedFeatureIdentifiers;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Allowed features: %@ resulted in filtered features to show: %@", &v14, 0x16u);
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0xEuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Target device does not implement supportedFeatureIdentifiersWithPaymentWebService:", &v14, 2u);
      }

      v8 = 0;
    }

LABEL_15:
    v11 = self->_supportedFeatureIdentifierStrings;
    self->_supportedFeatureIdentifierStrings = v8;
    v12 = v8;

    [(NSMutableSet *)self->_analyticsFeaturesToReport removeAllObjects];
    [(NSMutableSet *)self->_analyticsFeaturesToReport unionSet:self->_supportedFeatureIdentifierStrings];

    [(PKPaymentProvisioningController *)self _beginReportingIfNecessary];
  }

  v5 = self->_supportedFeatureIdentifierStrings;
LABEL_17:

  return v5;
}

- (id)_supportedFeatureIdentifierStringsForAccountProvisioning
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[PKWalletVisibility isWalletRestricted];
  supportedFeatureIdentifierStringsForAccountProvisioning = self->_supportedFeatureIdentifierStringsForAccountProvisioning;
  if (v3)
  {
    self->_supportedFeatureIdentifierStringsForAccountProvisioning = 0;

    v5 = 0;
  }

  else
  {
    if (![(NSSet *)supportedFeatureIdentifierStringsForAccountProvisioning count])
    {
      targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
      if (objc_opt_respondsToSelector())
      {
        v7 = [targetDevice supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:self->_webService];
        v8 = [v7 mutableCopy];

        _supportedFeatureIdentifierStrings = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(_supportedFeatureIdentifierStrings, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v8;
          _os_log_impl(&dword_1AD337000, _supportedFeatureIdentifierStrings, OS_LOG_TYPE_DEFAULT, "Target device supports account provisioning features: %@", &v15, 0xCu);
        }
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Target device does not implement supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService: Falling back to more restrictive _supportedFeatureIdentifierStrings.", &v15, 2u);
        }

        _supportedFeatureIdentifierStrings = [(PKPaymentProvisioningController *)self _supportedFeatureIdentifierStrings];
        v8 = [_supportedFeatureIdentifierStrings mutableCopy];
      }

      if (v8 && self->_allowedFeatureIdentifiers)
      {
        [(NSSet *)v8 intersectSet:?];
        v11 = PKLogFacilityTypeGetObject(0xEuLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          allowedFeatureIdentifiers = self->_allowedFeatureIdentifiers;
          v15 = 138412546;
          v16 = allowedFeatureIdentifiers;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Allowed features: %@ resulted in filtered features to show: %@", &v15, 0x16u);
        }
      }

      v13 = self->_supportedFeatureIdentifierStringsForAccountProvisioning;
      self->_supportedFeatureIdentifierStringsForAccountProvisioning = v8;
    }

    v5 = self->_supportedFeatureIdentifierStringsForAccountProvisioning;
  }

  return v5;
}

- (void)setAllowedFeatureIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (self->_allowedFeatureIdentifiers != identifiersCopy)
  {
    v8 = identifiersCopy;
    objc_storeStrong(&self->_allowedFeatureIdentifiers, identifiers);
    supportedFeatureIdentifierStrings = self->_supportedFeatureIdentifierStrings;
    self->_supportedFeatureIdentifierStrings = 0;

    supportedFeatureIdentifierStringsForAccountProvisioning = self->_supportedFeatureIdentifierStringsForAccountProvisioning;
    self->_supportedFeatureIdentifierStringsForAccountProvisioning = 0;

    [(NSMutableSet *)self->_analyticsFeaturesToReport removeAllObjects];
    [(NSMutableSet *)self->_analyticsFeaturesToReport unionSet:v8];
    [(PKPaymentProvisioningController *)self _beginReportingIfNecessary];
    identifiersCopy = v8;
  }
}

- (PKProvisioningAnalyticsSessionPreflightReporter)analyticsReporter
{
  analyticsReporter = self->_analyticsReporter;
  if (!analyticsReporter)
  {
    v4 = +[PKProvisioningAnalyticsSessionPreflightReporter createUnaffiliatedReporter];
    v5 = self->_analyticsReporter;
    self->_analyticsReporter = v4;

    analyticsReporter = self->_analyticsReporter;
  }

  return analyticsReporter;
}

- (void)setAnalyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  v5 = reporterCopy;
  if (self->_analyticsReporter)
  {
    [(PKProvisioningAnalyticsSessionPreflightReporter *)reporterCopy affiliateReporter:?];
    analyticsReporter = self->_analyticsReporter;
  }

  else
  {
    analyticsReporter = 0;
  }

  self->_analyticsReporter = v5;
}

- (void)retrieveAccountCredentials:(id)credentials
{
  credentialsCopy = credentials;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PKPaymentProvisioningController_retrieveAccountCredentials___block_invoke;
    v8[3] = &unk_1E79C48D8;
    v8[4] = self;
    v9 = credentialsCopy;
    [targetDevice updatedAccountsForProvisioningWithCompletion:v8];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Target device does not implement updatedAccountsForProvisioningWithCompletion", v7, 2u);
    }

    if (credentialsCopy)
    {
      (*(credentialsCopy + 2))(credentialsCopy, 0);
    }
  }
}

void __62__PKPaymentProvisioningController_retrieveAccountCredentials___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentProvisioningController_retrieveAccountCredentials___block_invoke_2;
  block[3] = &unk_1E79C4D60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKPaymentProvisioningController_retrieveAccountCredentials___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _supportedFeatureIdentifierStringsForAccountProvisioning];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a1;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [v9 feature];
        v11 = PKFeatureIdentifierToString(v10);
        if ([v2 containsObject:v11])
        {
          if (v10 > 5 || ((1 << v10) & 0x36) == 0)
          {
            v13 = 0;
          }

          else
          {
            v13 = [[PKAccountCredential alloc] initWithAccount:v9];
          }

          [v3 safelyAddObject:v13];
        }

        else
        {
          v13 = PKLogFacilityTypeGetObject(0xEuLL);
          if (os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v9 accountIdentifier];
            *buf = 138543362;
            v23 = v14;
            _os_log_impl(&dword_1AD337000, &v13->super.super, OS_LOG_TYPE_DEFAULT, "Account :%{public}@ not supported by device", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v15 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v6 = v15;
    }

    while (v15);
  }

  v16 = *(v17 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

- (id)_fetchOrCreateProductsForIdentifier:(unint64_t)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaymentSetupProductModel *)self->_paymentSetupProductModel productsForFeatureIdentifier:?];
  v6 = [v5 count];
  if (identifier == 4 || v6)
  {
    v10 = v5;
  }

  else
  {
    v7 = [[PKPaymentSetupProduct alloc] initWithFeatureIdentifier:identifier];
    v8 = [(PKPaymentProvisioningController *)self _accountsForFeatureIdentifier:identifier];
    [(PKPaymentSetupProduct *)v7 setAccounts:v8];
    v12[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [(PKPaymentProvisioningController *)self _filterPaymentSetupProducts:v9];

    if ([v10 count])
    {
      [(PKPaymentSetupProductModel *)self->_paymentSetupProductModel updatePaymentSetupProducts:v10];
    }
  }

  return v10;
}

- (void)_setupFeatureApplications:(id)applications
{
  v54 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(PKPaymentProvisioningController *)self _supportedFeatureIdentifierStrings];
  v27 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v27)
  {
    v25 = *v44;
    do
    {
      v4 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = PKFeatureIdentifierFromString(*(*(&v43 + 1) + 8 * v4));
        v6 = [(PKPaymentProvisioningController *)selfCopy _fetchOrCreateProductsForIdentifier:v5];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v29 = v6;
        v32 = [v6 countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v32)
        {
          v31 = *v40;
          do
          {
            v7 = 0;
            do
            {
              if (*v40 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v39 + 1) + 8 * v7);
              v34 = v7;
              v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v9 = applicationsCopy;
              v10 = [v9 countByEnumeratingWithState:&v35 objects:v51 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v36;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v36 != v12)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v14 = *(*(&v35 + 1) + 8 * i);
                    if (v5 != [v14 feature])
                    {
                      v16 = PKLogFacilityTypeGetObject(0xEuLL);
                      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                      {
                        applicationIdentifier = [v14 applicationIdentifier];
                        *buf = 138543362;
                        v48 = applicationIdentifier;
                        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Application :%{public}@ not supported by device", buf, 0xCu);
                      }

                      goto LABEL_26;
                    }

                    applicationState = [v14 applicationState];
                    v16 = PKLogFacilityTypeGetObject(0xEuLL);
                    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                    if (applicationState > 0x10 || ((0x101F0u >> applicationState) & 1) == 0)
                    {
                      if (v17)
                      {
                        applicationIdentifier2 = [v14 applicationIdentifier];
                        v22 = PKFeatureApplicationStateToString([v14 applicationState]);
                        *buf = 138543618;
                        v48 = applicationIdentifier2;
                        v49 = 2114;
                        v50 = v22;
                        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Application: %{public}@ in state: %{public}@ not being offered", buf, 0x16u);
                      }

LABEL_26:

                      continue;
                    }

                    if (v17)
                    {
                      applicationIdentifier3 = [v14 applicationIdentifier];
                      v19 = PKFeatureApplicationStateToString([v14 applicationState]);
                      *buf = 138543618;
                      v48 = applicationIdentifier3;
                      v49 = 2114;
                      v50 = v19;
                      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Application: %{public}@ in state: %{public}@ is being offered", buf, 0x16u);
                    }

                    [v8 addObject:v14];
                  }

                  v11 = [v9 countByEnumeratingWithState:&v35 objects:v51 count:16];
                }

                while (v11);
              }

              v23 = [v8 copy];
              [v33 setFeatureApplications:v23];

              v7 = v34 + 1;
            }

            while (v34 + 1 != v32);
            v32 = [v29 countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v32);
        }

        v4 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v27);
  }
}

- (void)_setupAccounts
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(PKPaymentProvisioningController *)self _supportedFeatureIdentifierStrings];
  v19 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v19)
  {
    v18 = *v32;
    do
    {
      v3 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v3;
        v4 = PKFeatureIdentifierFromString(*(*(&v31 + 1) + 8 * v3));
        v5 = [(PKPaymentProvisioningController *)self _fetchOrCreateProductsForIdentifier:v4];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = v5;
        v6 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v6)
        {
          v7 = v6;
          v22 = *v28;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v9 = *(*(&v27 + 1) + 8 * i);
              v10 = [(PKPaymentProvisioningController *)self _accountsForFeatureIdentifier:v4];
              LOBYTE(v11) = self->_preventsFeatureApplications;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v12 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v24;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v24 != v14)
                    {
                      objc_enumerationMutation(v10);
                    }

                    if (!((v4 != 2) | v11 & 1))
                    {
                      v16 = *(*(&v23 + 1) + 8 * j);
                      if ([v16 accessLevel] == 1)
                      {
                        v11 = [v16 isCoOwner] ^ 1;
                      }

                      else
                      {
                        LOBYTE(v11) = 0;
                      }
                    }
                  }

                  v13 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
                }

                while (v13);
              }

              [v9 setPreventsFeatureApplication:v11 & 1];
            }

            v7 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v7);
        }

        v3 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v19);
  }
}

- (id)_accountsForFeatureIdentifier:(unint64_t)identifier
{
  accounts = self->_accounts;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentProvisioningController__accountsForFeatureIdentifier___block_invoke;
  v6[3] = &__block_descriptor_40_e26_B32__0__PKAccount_8Q16_B24l;
  v6[4] = identifier;
  v4 = [(NSArray *)accounts pk_objectsPassingTest:v6];

  return v4;
}

uint64_t __65__PKPaymentProvisioningController__accountsForFeatureIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 feature] == *(a1 + 32))
  {
    v4 = [v3 state];
    if (v4 <= 5)
    {
      v5 = 0xFu >> v4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_updatePaymentSetupProductModelWithAvailability:(unint64_t)availability activeConfigurations:(id)configurations
{
  v62 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v7 = [(PKPaymentSetupProductModel *)self->_paymentSetupProductModel setupProductsOfType:10];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v55 + 1) + 8 * i) setProvisioningStatus:0];
      }

      v9 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v9);
  }

  if (availability == 1)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v37 = configurationsCopy;
    obj = configurationsCopy;
    v41 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (!v41)
    {
      goto LABEL_48;
    }

    v39 = *v51;
    v13 = @"country";
    v40 = v7;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v14;
        v15 = *(*(&v50 + 1) + 8 * v14);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v16 = v7;
        v17 = [v16 countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          v44 = v16;
          do
          {
            v20 = 0;
            v45 = v18;
            do
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v46 + 1) + 8 * v20);
              clientInfo = [v21 clientInfo];
              if ([v15 target] == 1)
              {
                country = [v15 country];
                v24 = [clientInfo objectForKey:v13];
                v25 = country;
                v26 = v24;
                v27 = v26;
                if (v25 == v26)
                {
                }

                else
                {
                  if (!v25 || !v26)
                  {

LABEL_36:
LABEL_41:
                    v18 = v45;
                    goto LABEL_44;
                  }

                  v28 = [v25 caseInsensitiveCompare:v26];

                  if (v28)
                  {
                    goto LABEL_36;
                  }
                }

                v29 = v13;
                state = [v15 state];
                v31 = [clientInfo objectForKey:@"administrativeArea"];
                v32 = state;
                v33 = v31;
                v34 = v33;
                if (v32 == v33)
                {

                  v13 = v29;
                  v16 = v44;
                  v18 = v45;
                }

                else
                {
                  if (!v32 || !v33)
                  {

                    v13 = v29;
                    v16 = v44;
                    goto LABEL_41;
                  }

                  v43 = [v32 caseInsensitiveCompare:v33];

                  v13 = v29;
                  v16 = v44;
                  v18 = v45;
                  if (v43)
                  {
                    goto LABEL_44;
                  }
                }

                status = [v15 status];
                if (status > 0xC)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = qword_1ADB9A8E8[status];
                }

                [v21 setProvisioningStatus:v36];
              }

LABEL_44:

              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v46 objects:v59 count:16];
          }

          while (v18);
        }

        v14 = v42 + 1;
        v7 = v40;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (!v41)
      {
LABEL_48:

        configurationsCopy = v37;
        goto LABEL_49;
      }
    }
  }

  if (availability == 2)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Proofing unavailable, removing identity products.", buf, 2u);
    }

    [(PKPaymentSetupProductModel *)self->_paymentSetupProductModel removePaymentSetupProducts:v7];
  }

LABEL_49:
}

- (void)retrieveAllAvailableCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if (!credentialsCopy)
  {
    goto LABEL_19;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__39;
  v53 = __Block_byref_object_dispose__39;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__39;
  v45[4] = __Block_byref_object_dispose__39;
  v46 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2810000000;
  v43 = &unk_1ADC7D092;
  v44 = 0;
  v5 = dispatch_group_create();
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v5);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke;
    v38[3] = &unk_1E79CC728;
    v38[4] = self;
    v39 = v5;
    [targetDevice retrievePendingProvisioningsWithType:0 completion:v38];
  }

  dispatch_group_enter(v5);
  PKTimeProfileBegin(0, @"account_creds");
  v7 = PKLogFacilityTypeGetObject(0x24uLL);
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "provisioning:preflight:account_creds", "", buf, 2u);
    }
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_322;
  v33[3] = &unk_1E79D6A58;
  v35 = &v40;
  v36 = &v49;
  v33[4] = self;
  v10 = v5;
  v34 = v10;
  [(PKPaymentProvisioningController *)self retrieveAccountCredentials:v33];
  allowedFeatureIdentifiers = self->_allowedFeatureIdentifiers;
  v12 = PKFeatureIdentifierToString(2);
  if (![(NSSet *)allowedFeatureIdentifiers containsObject:v12])
  {

LABEL_11:
    dispatch_group_enter(v10);
    PKTimeProfileBegin(0, @"remote_creds");
    v14 = v7;
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "provisioning:preflight:remote_creds", "", buf, 2u);
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_329;
    v27[3] = &unk_1E79D6A80;
    v30 = v47;
    v31 = v45;
    v32 = &v49;
    v29 = &v40;
    v27[4] = self;
    v28 = v10;
    [(PKPaymentProvisioningController *)self retrieveRemoteCredentials:v27];

    goto LABEL_15;
  }

  v13 = [(NSSet *)self->_allowedFeatureIdentifiers count];

  if (v13 > 1)
  {
    goto LABEL_11;
  }

LABEL_15:
  if (self->_includePendingVerificationCredentials && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F23B5018, &unk_1F23B5030, 0}];
    v18 = [targetDevice passesWithPrimaryPaymentApplicationStates:v17];
    v19 = [v18 pk_setByApplyingBlock:&__block_literal_global_341];
    os_unfair_lock_lock(v41 + 8);
    v20 = v50[5];
    allObjects = [v19 allObjects];
    [v20 addObjectsFromArray:allObjects];

    os_unfair_lock_unlock(v41 + 8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_2;
  block[3] = &unk_1E79D6AF0;
  block[4] = self;
  v24 = &v49;
  v23 = credentialsCopy;
  v25 = v47;
  v26 = v45;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);

LABEL_19:
}

void __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mutableCopy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 280);
    *(v4 + 280) = v3;
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_322(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v4];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v7, "provisioning:preflight:account_creds", "", v10, 2u);
    }
  }

  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = PKTimeProfileEnd(v8, @"account_creds", @"PKPaymentProvisioningController: Account credentials");

  dispatch_group_leave(*(a1 + 40));
}

void __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_329(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = *(*(a1 + 48) + 8);
  v10 = a4;
  os_unfair_lock_lock(v9 + 8);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v10];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v11 = PKLogFacilityTypeGetObject(0x24uLL);
  v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v11, OS_SIGNPOST_INTERVAL_END, v13, "provisioning:preflight:remote_creds", "", v16, 2u);
    }
  }

  v14 = PKLogFacilityTypeGetObject(7uLL);
  v15 = PKTimeProfileEnd(v14, @"remote_creds", @"PKPaymentProvisioningController: Remote credentials");

  dispatch_group_leave(*(a1 + 40));
}

PKVerificationRequiredCredential *__67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_338(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKVerificationRequiredCredential alloc] initWithPass:v2];

  return v3;
}

void __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 368) paymentSetupSupportedInRegion];
  if (_os_feature_enabled_impl() && PKFPANCredentialProvisioningConsented() == 1 && v2 == 1)
  {
    PKTimeProfileBegin(0, @"fpan_cred");
    v3 = PKLogFacilityTypeGetObject(0x24uLL);
    v4 = os_signpost_id_make_with_pointer(v3, *(a1 + 32));
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "provisioning:preflight:fpan_cred", "", buf, 2u);
      }
    }

    v6 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_346;
    v14[3] = &unk_1E79D6AC8;
    v14[4] = v6;
    *v12 = *(a1 + 40);
    v7 = v12[0];
    v8 = *(a1 + 56);
    v15 = *v12;
    v16 = v8;
    [v6 _retrieveFPANCredentialsWithCompletion:v14];
  }

  else
  {
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = *(a1 + 40);
    v13 = [*(*(*(a1 + 48) + 8) + 40) copy];
    (*(v11 + 16))(v11, v9, v10, v13);
  }
}

void __67__PKPaymentProvisioningController_retrieveAllAvailableCredentials___block_invoke_346(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _filterFPANCredentials:a2 forExistingCredentials:*(*(*(a1 + 48) + 8) + 40)];
  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v3];
  v4 = PKLogFacilityTypeGetObject(0x24uLL);
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v4, OS_SIGNPOST_INTERVAL_END, v6, "provisioning:preflight:fpan_cred", "", v13, 2u);
    }
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = PKTimeProfileEnd(v7, @"fpan_cred", @"PKPaymentProvisioningController: FPAN credentials");

  v9 = *(*(*(a1 + 56) + 8) + 24);
  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = *(a1 + 40);
  v12 = [*(*(*(a1 + 48) + 8) + 40) copy];
  (*(v11 + 16))(v11, v9, v10, v12);
}

- (void)_retrieveFPANCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2810000000;
  v18[3] = &unk_1ADC7D092;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__39;
  v16 = __Block_byref_object_dispose__39;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke;
    v7[3] = &unk_1E79D6B40;
    v8 = targetDevice;
    v10 = v18;
    v11 = &v12;
    v9 = completionCopy;
    [v8 activeFPANCardsWithOptions:0 completion:v7];

    v6 = v8;
  }

  else
  {
    v6 = [v13[5] copy];
    (*(completionCopy + 2))(completionCopy, v6);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
}

void __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        if (objc_opt_respondsToSelector())
        {
          v11 = *(a1 + 32);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke_2;
          v17[3] = &unk_1E79D6B18;
          v17[4] = v10;
          v19 = *(a1 + 48);
          v18 = v4;
          [v11 credentialForFPANCard:v10 authorization:0 options:7 merchantHost:0 completion:v17];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke_3;
  v14[3] = &unk_1E79CF400;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v15 = v12;
  v16 = v13;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v14);
}

void __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    v5 = [[PKFPANCredential alloc] initWithFPANCardDescriptor:a1[4] credential:v4];

    if (v5)
    {
      os_unfair_lock_lock((*(a1[6] + 8) + 32));
      [*(*(a1[7] + 8) + 40) addObject:v5];
      os_unfair_lock_unlock((*(a1[6] + 8) + 32));
    }
  }

  v6 = a1[5];

  dispatch_group_leave(v6);
}

void __74__PKPaymentProvisioningController__retrieveFPANCredentialsWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)_filterFPANCredentials:(id)credentials forExistingCredentials:(id)existingCredentials
{
  existingCredentialsCopy = existingCredentials;
  v7 = [credentials copy];
  v8 = [v7 pk_objectsPassingTest:&__block_literal_global_359];

  v9 = [existingCredentialsCopy pk_createSetBySafelyApplyingBlock:&__block_literal_global_362];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke_3;
  v28[3] = &unk_1E79D6BA8;
  v10 = v9;
  v29 = v10;
  v11 = [v8 pk_objectsPassingTest:v28];

  v12 = [MEMORY[0x1E695DF00] now];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke_4;
  v26 = &unk_1E79D6BA8;
  v13 = v12;
  v27 = v13;
  v14 = [v11 pk_objectsPassingTest:&v23];

  v15 = [(PKPaymentWebService *)self->_webService targetDevice:v23];
  deviceRegion = [v15 deviceRegion];

  context = [(PKPaymentWebService *)self->_webService context];
  configuration = [context configuration];
  v19 = [configuration autofillForegroundEligibilityCheckMaxCount:deviceRegion];

  if ([v14 count] <= v19)
  {
    v20 = v14;
  }

  else
  {
    v20 = [v14 subarrayWithRange:{0, v19}];
  }

  v21 = v20;

  return v21;
}

uint64_t __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 descriptor];
  v3 = [v2 cardIsInWallet];

  return v3 ^ 1u;
}

id __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 remoteCredential];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 passTypeIdentifier];
    v5 = [v3 serialNumber];
    v6 = PKGeneratePassUniqueID(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 descriptor];
  v4 = [v3 passUniqueIdentifier];

  if (v4)
  {
    v5 = [*(a1 + 32) containsObject:v4] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL __81__PKPaymentProvisioningController__filterFPANCredentials_forExistingCredentials___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 credential];
  v4 = [v3 expirationDate];

  if (v4)
  {
    v5 = [v4 compare:*(a1 + 32)] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateAllAssoicatedCredentialsMetadataWithCompletion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (PKShowFakeRemoteCredentials())
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Skipping card on file metadata request because using fake credentials", buf, 2u);
    }

    goto LABEL_25;
  }

  if (![(NSMutableArray *)self->_associatedCredentials count])
  {
LABEL_25:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_27;
  }

  v23 = completionCopy;
  v6 = MEMORY[0x1E69E96A0];
  group = dispatch_group_create();
  context = [(PKPaymentWebService *)self->_webService context];
  configuration = [context configuration];
  credentialTypesRequiringMetadata = [configuration credentialTypesRequiringMetadata];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = credentialTypesRequiringMetadata;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v34 + 1) + 8 * i) integerValue];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = self->_associatedCredentials;
        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              remoteCredential = [*(*(&v30 + 1) + 8 * j) remoteCredential];
              v21 = remoteCredential;
              if (remoteCredential && [remoteCredential credentialType] == integerValue)
              {

                dispatch_group_enter(group);
                v15 = objc_alloc_init(PKPaymentRemoteCredentialsRequest);
                [(NSMutableArray *)v15 setIncludeMetadata:1];
                [(NSMutableArray *)v15 setExcludeCredentialTransferDeviceInfo:1];
                [(NSMutableArray *)v15 setCredentialType:integerValue];
                [(NSMutableArray *)v15 setTimeoutOverride:10.0];
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __89__PKPaymentProvisioningController__updateAllAssoicatedCredentialsMetadataWithCompletion___block_invoke;
                v28[3] = &unk_1E79D6BD0;
                v29 = group;
                [(PKPaymentProvisioningController *)self updateRemoteCredentials:v15 withCompletionHandler:v28];

                goto LABEL_22;
              }
            }

            v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPaymentProvisioningController__updateAllAssoicatedCredentialsMetadataWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  completionCopy = v23;
  v27 = v23;
  v22 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

LABEL_27:
}

uint64_t __89__PKPaymentProvisioningController__updateAllAssoicatedCredentialsMetadataWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateRemoteCredentials:(id)credentials withCompletionHandler:(id)handler
{
  credentialsCopy = credentials;
  handlerCopy = handler;
  PKTimeProfileBegin(0, @"update_creds");
  v8 = PKLogFacilityTypeGetObject(0x24uLL);
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "provisioning:preflight:update_creds", "", buf, 2u);
    }
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  webService = self->_webService;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke;
  v20 = &unk_1E79D6C48;
  v12 = credentialsCopy;
  v21 = v12;
  selfCopy = self;
  v13 = handlerCopy;
  v23 = v13;
  v24 = buf;
  v14 = [(PKPaymentWebService *)webService remotePaymentCredentialsUpdateForRequest:v12 completion:&v17];
  *(v26 + 3) = v14;
  tasks = self->_tasks;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v14, v17, v18, v19, v20}];
  [(NSMutableSet *)tasks addObject:v16];

  _Block_object_dispose(buf, 8);
}

void __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E79D6C20;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v21 = a2;
  v17 = v8;
  v18 = v7;
  v19 = v11;
  v20 = *(a1 + 56);
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) credentialType];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = [*(v1 + 32) productIdentifier];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v51 = v1;
  v4 = *(*(v1 + 40) + 40);
  v5 = [v4 countByEnumeratingWithState:&v74 objects:v81 count:16];
  v56 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = *v75;
    do
    {
      v8 = 0;
      do
      {
        if (*v75 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v74 + 1) + 8 * v8) remoteCredential];
        v1 = v9;
        if (v9)
        {
          v10 = [v9 credentialType];
          v11 = v10 == v2 || v10 == 0;
          v12 = v11;
          if (v12 != 1 || v53 == 0)
          {
            if (!v12)
            {
              goto LABEL_20;
            }

LABEL_19:
            [v3 addObject:v1];
            goto LABEL_20;
          }

          v14 = [v1 productIdentifier];
          v15 = [v14 isEqualToString:v53];

          v3 = v56;
          if (v15)
          {
            goto LABEL_19;
          }
        }

LABEL_20:

        ++v8;
      }

      while (v6 != v8);
      v16 = [v4 countByEnumeratingWithState:&v74 objects:v81 count:16];
      v6 = v16;
    }

    while (v16);
  }

  v17 = v51;
  v18 = *(v51 + 80);
  if (!v18)
  {
    v1 = [*(v51 + 48) domain];
    if ([v1 isEqualToString:*MEMORY[0x1E696A978]])
    {

LABEL_33:
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v21 = v3;
      v22 = [v21 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v71;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v71 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v70 + 1) + 8 * i) remoteCredential];
            [v26 setRequiresMetadata:0];
          }

          v23 = [v21 countByEnumeratingWithState:&v70 objects:v80 count:16];
        }

        while (v23);
      }

      v27 = [*(v51 + 40) displayableErrorForError:*(v51 + 48)];
      (*(*(v51 + 64) + 16))();
      v3 = v56;
      goto LABEL_68;
    }
  }

  v19 = [*(v51 + 48) domain];
  if ([v19 isEqualToString:@"PKWebServiceErrorDomain"])
  {
    v20 = [*(v51 + 48) code];

    if (!v18)
    {
    }

    v11 = v20 == 1;
    v3 = v56;
    if (v11)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (!v18)
    {
    }
  }

  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = [*(*(v51 + 40) + 40) count];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [*(v51 + 56) credentials];
  v54 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v54)
  {
    v52 = *v67;
    do
    {
      v28 = 0;
      do
      {
        if (*v67 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v28;
        v29 = *(*(&v66 + 1) + 8 * v28);
        v30 = [v29 PKURLForKey:{@"passURL", v48}];
        v31 = [v29 PKStringForKey:@"identifier"];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v32 = v3;
        v33 = [v32 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v63;
          v57 = v29;
LABEL_50:
          v36 = 0;
          while (1)
          {
            if (*v63 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v62 + 1) + 8 * v36);
            v38 = [v37 passURL];
            if ([v30 isEqual:v38])
            {
              break;
            }

            v39 = [v37 identifier];
            v40 = [v31 isEqual:v39];

            if (v40)
            {
              goto LABEL_59;
            }

            if (v34 == ++v36)
            {
              v34 = [v32 countByEnumeratingWithState:&v62 objects:v78 count:16];
              v3 = v56;
              v29 = v57;
              v17 = v51;
              if (v34)
              {
                goto LABEL_50;
              }

              goto LABEL_57;
            }
          }

LABEL_59:
          v29 = v57;
          [v37 updateWithDictionary:v57];
          v41 = v37;

          v3 = v56;
          v17 = v51;
          if (!v41)
          {
            goto LABEL_62;
          }

          if (PKShouldDisplayRemoteCredentialWithStatus(v41))
          {
            [v32 removeObjectIdenticalTo:v41];
            [v48 addObject:v41];
          }
        }

        else
        {
LABEL_57:

LABEL_62:
          v41 = [[PKPaymentRemoteCredential alloc] initWithDictionary:v29];
          if (PKShouldDisplayRemoteCredentialWithStatus(v41))
          {
            [v49 addObject:v41];
          }

          [(PKPaymentRemoteCredential *)v41 setRequiresMetadata:0];
          [(PKPaymentRemoteCredential *)v41 setRank:v55++];
        }

        -[PKPaymentRemoteCredential setRequiresMetadata:](v41, "setRequiresMetadata:", [*(v17 + 32) includeMetadata] ^ 1);

        v28 = v58 + 1;
      }

      while (v58 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v54);
  }

  [*(*(v17 + 40) + 40) removeObjectsInArray:v3];
  v42 = *(v17 + 40);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke_3;
  v59[3] = &unk_1E79D6BF8;
  v59[4] = v42;
  v43 = *(v17 + 64);
  v60 = v48;
  v61 = v43;
  v44 = v48;
  v45 = v42;
  v27 = v49;
  [v45 _associateCredentials:v49 withCompletionHandler:v59];

LABEL_68:
  v46 = *(*(v17 + 40) + 24);
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(v17 + 72) + 8) + 24)];
  [v46 removeObject:v47];
}

void __81__PKPaymentProvisioningController_updateRemoteCredentials_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) _metadataUpdatedOnCredentials];
  v9 = PKLogFacilityTypeGetObject(0x24uLL);
  v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_END, v11, "provisioning:preflight:update_creds", "", v16, 2u);
    }
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  v13 = PKTimeProfileEnd(v12, @"update_creds", @"PKPaymentProvisioningController: Remote Credentials Update");

  v14 = *(a1 + 48);
  if (v14)
  {
    if (!v8 && a2)
    {
      [*(a1 + 40) addObjectsFromArray:v7];
      v14 = *(a1 + 48);
    }

    v15 = [*(a1 + 40) copy];
    (*(v14 + 16))(v14, a2, v8, v15);
  }
}

- (void)associateCredentials:(id)credentials withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPaymentProvisioningController_associateCredentials_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E79D6C70;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PKPaymentProvisioningController *)self _associateCredentials:credentials withCompletionHandler:v8];
}

uint64_t __78__PKPaymentProvisioningController_associateCredentials_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)_associateCredentials:(id)credentials withCompletionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  handlerCopy = handler;
  PKTimeProfileBegin(0, @"associate_creds");
  v6 = PKLogFacilityTypeGetObject(0x24uLL);
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "provisioning:preflight:associate_creds", "", buf, 2u);
    }
  }

  if (!PKPreferenceBOOLforKey(@"PKHideMyCardsOnFileKey"))
  {
    v10 = MEMORY[0x1E69E96A0];
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v53[3] = 0;
    *buf = 0;
    v48 = buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__39;
    v51 = __Block_byref_object_dispose__39;
    v52 = 0;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _hasSetupConfiguration = [(PKPaymentProvisioningController *)self _hasSetupConfiguration];
    v28 = [(NSMutableArray *)self->_associatedCredentials pk_arrayBySafelyApplyingBlock:&__block_literal_global_376];
    v12 = dispatch_group_create();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = credentialsCopy;
    v13 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = *v44;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        if (!_hasSetupConfiguration || [(PKPaymentProvisioningController *)self _credentialIsValidForSetupConfiguration:*(*(&v43 + 1) + 8 * i)])
        {
          remoteCredential = [v16 remoteCredential];
          serialNumber = [remoteCredential serialNumber];
          if (serialNumber)
          {

            goto LABEL_18;
          }

          localPassCredential = [v16 localPassCredential];
          serialNumber = [localPassCredential serialNumber];

          if (serialNumber)
          {
LABEL_18:
            if ([v28 containsObject:serialNumber])
            {
              v20 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *v54 = 138412546;
                v55 = v16;
                v56 = 2112;
                v57 = serialNumber;
                _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: Skipping association of credential because one with a matching serial number is already associated. Skipped: %@, Serial: %@", v54, 0x16u);
              }

              goto LABEL_22;
            }
          }

          dispatch_group_enter(v12);
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_377;
          v35[3] = &unk_1E79D6CE8;
          v21 = MEMORY[0x1E69E96A0];
          v22 = MEMORY[0x1E69E96A0];
          v36 = v21;
          v37 = v26;
          v38 = v16;
          selfCopy = self;
          v41 = v53;
          v42 = buf;
          v40 = v12;
          [(PKPaymentProvisioningController *)self _associateCredential:v16 withCompletionHandler:v35];

          v20 = v36;
LABEL_22:

          continue;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (!v13)
      {
LABEL_25:

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_4;
        block[3] = &unk_1E79D6D10;
        block[4] = self;
        v30 = v26;
        v32 = handlerCopy;
        v31 = obj;
        v33 = v53;
        v34 = buf;
        v23 = v26;
        dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(v53, 8);

        goto LABEL_26;
      }
    }
  }

  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: Hiding cards on file", buf, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
LABEL_26:
}

id __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 remoteCredential];
  v4 = [v3 serialNumber];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v2 localPassCredential];
    v6 = [v7 serialNumber];
  }

  return v6;
}

void __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_377(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E79D6CC0;
  v16 = a2;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = *(a1 + 64);
  v12 = *(a1 + 48);
  v15 = *(a1 + 80);
  v13 = v5;
  v7 = v9;
  v14 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    [*(a1 + 48) _updateCredentialWithPaymentPass:MEMORY[0x1E69E9820] completion:{3221225472, __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_3, &unk_1E79D6C98, *(a1 + 48), *(a1 + 40)}];
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  else
  {
    v2 = *(*(a1 + 80) + 8);
    v5 = *(v2 + 40);
    v3 = (v2 + 40);
    v4 = v5;
    if (!v5)
    {
      v4 = *(a1 + 56);
    }

    objc_storeStrong(v3, v4);
  }

  dispatch_group_leave(*(a1 + 64));
}

void __79__PKPaymentProvisioningController__associateCredentials_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObjectsFromArray:*(a1 + 40)];
  v2 = PKLogFacilityTypeGetObject(0x24uLL);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:associate_creds", "", v7, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = PKTimeProfileEnd(v5, @"associate_creds", @"PKPaymentProvisioningController: Associate credentials");

  if (*(a1 + 56))
  {
    [*(a1 + 48) count];
    (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)_hasSetupConfiguration
{
  if ([(NSArray *)self->_allowedPaymentNetworks count]|| [(NSSet *)self->_allowedFeatureIdentifiers count]|| [(NSSet *)self->_allowedProductIdentifiers count]|| [(NSSet *)self->_requiredTransitNetworkIdentifiers count]|| (v3 = [(NSArray *)self->_allowedCardTypes count]) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)_credentialIsValidForSetupConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (-[NSArray count](self->_allowedPaymentNetworks, "count") && (PKPaymentNetworkNameForPaymentCredentialType([configurationCopy credentialType]), v5 = objc_claimAutoreleasedReturnValue(), v6 = -[NSArray containsObject:](self->_allowedPaymentNetworks, "containsObject:", v5), v5, !v6) || -[NSSet count](self->_allowedFeatureIdentifiers, "count") && (!objc_msgSend(configurationCopy, "isAccountCredential") || (objc_msgSend(configurationCopy, "accountCredential"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "account"), v8 = objc_claimAutoreleasedReturnValue(), PKFeatureIdentifierToString(objc_msgSend(v8, "feature")), v9 = objc_claimAutoreleasedReturnValue(), v8, LODWORD(v8) = -[NSSet containsObject:](self->_allowedFeatureIdentifiers, "containsObject:", v9), v9, v7, !v8)) || -[NSSet count](self->_allowedProductIdentifiers, "count") && objc_msgSend(configurationCopy, "isRemoteCredential") && (objc_msgSend(configurationCopy, "remoteCredential"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "productIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v10, LODWORD(v10) = -[NSSet containsObject:](self->_allowedProductIdentifiers, "containsObject:", v11), v11, !v10))
  {
    LOBYTE(v14) = 0;
  }

  else if (!-[NSArray count](self->_allowedCardTypes, "count") || (allowedCardTypes = self->_allowedCardTypes, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(configurationCopy, "cardType")}], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[NSArray containsObject:](allowedCardTypes, "containsObject:", v13), v13, v14))
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)_associateCredential:(id)credential withCompletionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ((PKShowFakeRemoteCredentials() & 1) != 0 || ([credentialCopy isAccountCredential] & 1) != 0 || (objc_msgSend(credentialCopy, "isPeerPaymentCredential") & 1) != 0 || (objc_msgSend(credentialCopy, "isShareableCredential") & 1) != 0 || (objc_msgSend(credentialCopy, "isLocalAppletSubcredentialPassCredential") & 1) != 0 || (objc_msgSend(credentialCopy, "isHomeKeyCredential") & 1) != 0 || (objc_msgSend(credentialCopy, "isRequiresVerificationCredential") & 1) != 0 || objc_msgSend(credentialCopy, "isRemoteCredential") && (objc_msgSend(credentialCopy, "remoteCredential"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "status"), v8, v9 != 2))
    {
      handlerCopy[2](handlerCopy, 1, 0);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __78__PKPaymentProvisioningController__associateCredential_withCompletionHandler___block_invoke;
      v10[3] = &unk_1E79D1F40;
      v10[4] = self;
      v11 = credentialCopy;
      v12 = handlerCopy;
      [(PKPaymentProvisioningController *)self _queryRequirementsForCredential:v11 completion:v10];
    }
  }
}

void __78__PKPaymentProvisioningController__associateCredential_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PKPaymentProvisioningController__associateCredential_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E79C4568;
    v11 = v6;
    v12 = *(a1 + 48);
    [v7 _queryEligibilityForCredential:v11 completion:v10];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: failed to associate credential %@, returning error: %@ from requirements", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __78__PKPaymentProvisioningController__associateCredential_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: failed to associate credential %@, returning error: %@ from eligibility", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_updateCredentialWithPaymentPass:(id)pass completion:(id)completion
{
  location[3] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  completionCopy = completion;
  if ([passCopy isRemoteCredential])
  {
    remoteCredential = [passCopy remoteCredential];
    passURL = [remoteCredential passURL];
    paymentPass = [remoteCredential paymentPass];
  }

  else if ([passCopy isAccountCredential])
  {
    remoteCredential = [passCopy accountCredential];
    account = [remoteCredential account];
    if ([account type] == 1)
    {
      creditDetails = [account creditDetails];
      passURL = [creditDetails associatedPassURL];
    }

    else
    {
      passURL = 0;
    }

    paymentPass = [remoteCredential paymentPass];
  }

  else
  {
    if ([passCopy isLocalPassCredential])
    {
      remoteCredential = [passCopy localPassCredential];
      paymentPass2 = [remoteCredential paymentPass];
    }

    else
    {
      if (![passCopy isLocalAppletSubcredentialPassCredential])
      {
        goto LABEL_18;
      }

      remoteCredential = [passCopy localAppletSubcredentialPassCredential];
      paymentPass2 = [remoteCredential paymentPass];
    }

    paymentPass = paymentPass2;
    passURL = 0;
  }

  if (!paymentPass)
  {
    if (passURL)
    {
      objc_initWeak(location, self);
      webService = self->_webService;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __79__PKPaymentProvisioningController__updateCredentialWithPaymentPass_completion___block_invoke;
      v18[3] = &unk_1E79D6D60;
      objc_copyWeak(&v21, location);
      v19 = passCopy;
      v20 = completionCopy;
      [(PKPaymentWebService *)webService passAtURL:passURL completion:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
LABEL_26:
      paymentPass = 0;
      goto LABEL_27;
    }

LABEL_18:
    remoteCredential2 = [passCopy remoteCredential];
    v16 = remoteCredential2;
    if (!remoteCredential2 || [remoteCredential2 status] != 2)
    {
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = passCopy;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Error: Unable to locate pass or a pass URL when attempting to update credential: %@", location, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    passURL = 0;
    goto LABEL_26;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, paymentPass);
  }

LABEL_27:
}

void __79__PKPaymentProvisioningController__updateCredentialWithPaymentPass_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentProvisioningController__updateCredentialWithPaymentPass_completion___block_invoke_2;
  block[3] = &unk_1E79D6D38;
  objc_copyWeak(v11, a1 + 6);
  v11[1] = a2;
  v8 = v5;
  v9 = a1[4];
  v10 = a1[5];
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v11);
}

void __79__PKPaymentProvisioningController__updateCredentialWithPaymentPass_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 64) == 1 && *(a1 + 32))
  {
    v10 = WeakRetained;
    v4 = [*(a1 + 40) isRemoteCredential];
    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = [v5 remoteCredential];
    }

    else
    {
      v7 = [v5 isAccountCredential];
      v3 = v10;
      if (!v7)
      {
        goto LABEL_9;
      }

      v6 = [*(a1 + 40) accountCredential];
    }

    v8 = v6;
    [v6 setPaymentPass:*(a1 + 32)];

    v3 = v10;
  }

LABEL_9:
  v9 = *(a1 + 48);
  if (v9)
  {
    v11 = v3;
    (*(v9 + 16))(v9, *(a1 + 32));
    v3 = v11;
  }
}

- (void)_updateCredentialWithPaymentPassAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  if ([assetsCopy isRemoteCredential])
  {
    remoteCredential = [assetsCopy remoteCredential];
  }

  else if ([assetsCopy isAccountCredential])
  {
    remoteCredential = [assetsCopy accountCredential];
  }

  else if ([assetsCopy isLocalPassCredential])
  {
    remoteCredential = [assetsCopy localPassCredential];
  }

  else
  {
    if (![assetsCopy isLocalAppletSubcredentialPassCredential])
    {
      goto LABEL_13;
    }

    remoteCredential = [assetsCopy localAppletSubcredentialPassCredential];
  }

  v9 = remoteCredential;
  paymentPass = [remoteCredential paymentPass];

  if (paymentPass)
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    secureElementIdentifiers = [targetDevice secureElementIdentifiers];
    v13 = [PKDownloadRemoteAssetConfiguration cardArtConfigurationWithSEIDs:secureElementIdentifiers];

    if ([paymentPass remoteAssetsDownloadedForConfiguration:v13])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __85__PKPaymentProvisioningController__updateCredentialWithPaymentPassAssets_completion___block_invoke;
      v14[3] = &unk_1E79C4428;
      v15 = completionCopy;
      [(PKPaymentProvisioningController *)self _downloadRemoteAssetsForPaymentPass:paymentPass paymentCredential:assetsCopy completion:v14];
    }

    goto LABEL_17;
  }

LABEL_13:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_17:
}

void __85__PKPaymentProvisioningController__updateCredentialWithPaymentPassAssets_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentProvisioningController__updateCredentialWithPaymentPassAssets_completion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PKPaymentProvisioningController__updateCredentialWithPaymentPassAssets_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_downloadRemoteAssetsForPaymentPass:(id)pass paymentCredential:(id)credential completion:(id)completion
{
  passCopy = pass;
  credentialCopy = credential;
  completionCopy = completion;
  objc_initWeak(&location, self);
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  secureElementIdentifiers = [targetDevice secureElementIdentifiers];

  v13 = [PKDownloadRemoteAssetConfiguration cardArtConfigurationWithSEIDs:secureElementIdentifiers];
  [v13 setIgnoreRequiredAssetDownloadFailures:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PKPaymentProvisioningController__downloadRemoteAssetsForPaymentPass_paymentCredential_completion___block_invoke;
  v16[3] = &unk_1E79D6D88;
  objc_copyWeak(&v19, &location);
  v14 = credentialCopy;
  v17 = v14;
  v15 = completionCopy;
  v18 = v15;
  [passCopy downloadRemoteAssetsWithConfiguration:v13 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __100__PKPaymentProvisioningController__downloadRemoteAssetsForPaymentPass_paymentCredential_completion___block_invoke(uint64_t a1, int a2, void *a3, float a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = a2;
    v13 = 2048;
    v14 = a4;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Download of remote assets called completion handler with finished=%i progress=%f error=%@", v12, 0x1Cu);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _informDelegatesOfPaymentPassUpdateOnCredential:*(a1 + 32)];
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

- (void)_informDelegatesOfPaymentPassUpdateOnCredential:(id)credential
{
  credentialCopy = credential;
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PKPaymentProvisioningController__informDelegatesOfPaymentPassUpdateOnCredential___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v9 = allObjects;
  v10 = credentialCopy;
  v6 = credentialCopy;
  v7 = allObjects;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __83__PKPaymentProvisioningController__informDelegatesOfPaymentPassUpdateOnCredential___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 paymentPassUpdatedOnCredential:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_metadataUpdatedOnCredentials
{
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPaymentProvisioningController__metadataUpdatedOnCredentials__block_invoke;
  block[3] = &unk_1E79C4E28;
  v6 = allObjects;
  v4 = allObjects;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__PKPaymentProvisioningController__metadataUpdatedOnCredentials__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 metadataUpdatedOnCredentials];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_preflightRequirementsUpdated:(unint64_t)updated displayableError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPaymentProvisioningController__preflightRequirementsUpdated_displayableError___block_invoke;
  block[3] = &unk_1E79CBF50;
  v12 = errorCopy;
  updatedCopy = updated;
  v11 = allObjects;
  v8 = errorCopy;
  v9 = allObjects;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKPaymentProvisioningController__preflightRequirementsUpdated_displayableError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 preflightRequirementsUpdated:*(a1 + 48) displayableError:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_informDelegatesOfAccountsUpdated
{
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  os_unfair_lock_unlock(&self->_delegatesLock);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKPaymentProvisioningController__informDelegatesOfAccountsUpdated__block_invoke;
  v5[3] = &unk_1E79C4DD8;
  v6 = allObjects;
  selfCopy = self;
  v4 = allObjects;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __68__PKPaymentProvisioningController__informDelegatesOfAccountsUpdated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 provisioningControllerUpdatedAccounts:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)cachedPaymentSetupProductModelWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69E96A0];
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__39;
  v61[4] = __Block_byref_object_dispose__39;
  v62 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__39;
  v59[4] = __Block_byref_object_dispose__39;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__39;
  v57[4] = __Block_byref_object_dispose__39;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__39;
  v55[4] = __Block_byref_object_dispose__39;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__39;
  v53[4] = __Block_byref_object_dispose__39;
  v54 = 0;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  PKTimeProfileBegin(0, @"cached_products");
  v9 = PKLogFacilityTypeGetObject(0x24uLL);
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "provisioning:preflight:cached_products", "", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79D6DB0;
  v51 = v53;
  aBlock[4] = self;
  v12 = v8;
  v50 = v12;
  v13 = _Block_copy(aBlock);
  v14 = objc_alloc_init(PKPaymentAvailableProductsRequest);
  [(PKWebServiceRequest *)v14 setCachePolicyOverride:3];
  if (self->_isProvisioningForAltAccount)
  {
    [(PKPaymentAvailableProductsRequest *)v14 setContext:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [targetDevice productsWithRequest:v14 completion:v13];
  }

  else
  {
    webService = self->_webService;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_403;
    v47[3] = &unk_1E79D6DD8;
    v48 = v13;
    [(PKPaymentWebService *)webService availableProductsWithRequest:v14 completion:v47];
  }

  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v12);
    PKTimeProfileBegin(0, @"cached_features");
    v16 = v9;
    v17 = os_signpost_id_make_with_pointer(v16, self);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "provisioning:preflight:cached_feature_applications", "", buf, 2u);
      }
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_410;
    v44[3] = &unk_1E79D6E00;
    v46 = v59;
    v44[4] = self;
    v45 = v12;
    [targetDevice cachedFeatureApplicationsForProvisioningWithCompletion:v44];
  }

  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v12);
    PKTimeProfileBegin(0, @"cached_accounts");
    v19 = v9;
    v20 = os_signpost_id_make_with_pointer(v19, self);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = v20;
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "provisioning:preflight:cached_accounts", "", buf, 2u);
      }
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_419;
    v41[3] = &unk_1E79D6E00;
    v43 = v57;
    v41[4] = self;
    v42 = v12;
    [targetDevice accountsWithCompletion:v41];
  }

  if (PKForceBrowseBankPartners())
  {
    dispatch_group_enter(v12);
    PKTimeProfileBegin(0, @"cached_browse_banks");
    v22 = v9;
    v23 = os_signpost_id_make_with_pointer(v22, self);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "provisioning:preflight:cached_browse_banks", "", buf, 2u);
      }
    }

    v25 = [[PKPaymentBrowseableBankAppsRequest alloc] initWithRegion:deviceRegion];
    [(PKWebServiceRequest *)v25 setCachePolicyOverride:3];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_427;
    v38[3] = &unk_1E79D6E28;
    v40 = v55;
    v38[4] = self;
    v39 = v12;
    [(PKPaymentProvisioningController *)self _browsableBanksWithRequest:v25 completion:v38];
  }

  dispatch_group_enter(v12);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_431;
  v36[3] = &unk_1E79D6E50;
  v36[4] = self;
  v26 = v12;
  v37 = v26;
  [(PKPaymentProvisioningController *)self _retrievePendingCarKeys:v36];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_2;
  v29[3] = &unk_1E79D6EA0;
  v31 = v59;
  v32 = v57;
  v33 = v55;
  v34 = v53;
  v29[4] = self;
  v30 = completionCopy;
  v35 = v61;
  v27 = completionCopy;
  v28 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v26, MEMORY[0x1E69E96A0], v29);

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(v61, 8);
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v7, "provisioning:preflight:cached_products", "", v10, 2u);
    }
  }

  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = PKTimeProfileEnd(v8, @"cached_products", @"PKPaymentProvisioningController: Cached Products");

  dispatch_group_leave(*(a1 + 40));
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_410(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v7, "provisioning:preflight:cached_feature_applications", "", v10, 2u);
    }
  }

  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = PKTimeProfileEnd(v8, @"cached_features", @"PKPaymentProvisioningController: Cached Feature Applications");

  dispatch_group_leave(*(a1 + 40));
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_419(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v7, "provisioning:preflight:cached_accounts", "", v10, 2u);
    }
  }

  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = PKTimeProfileEnd(v8, @"cached_accounts", @"PKPaymentProvisioningController: Cached Accounts");

  dispatch_group_leave(*(a1 + 40));
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_427(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v6 = PKLogFacilityTypeGetObject(0x24uLL);
  v7 = os_signpost_id_make_with_pointer(v6, *(a1 + 32));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_END, v8, "provisioning:preflight:cached_browse_banks", "", v11, 2u);
    }
  }

  v9 = PKLogFacilityTypeGetObject(7uLL);
  v10 = PKTimeProfileEnd(v9, @"cached_browse_banks", @"PKPaymentProvisioningController: Cached Browse Banks");

  dispatch_group_leave(*(a1 + 40));
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_431(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 272), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 40));
}

void __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_2(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    [*(a1 + 32) _setupFeatureApplications:*(*(*(a1 + 48) + 8) + 40)];
    *(*(a1 + 32) + 241) = 1;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    objc_storeStrong((*(a1 + 32) + 248), *(*(*(a1 + 56) + 8) + 40));
    [*(a1 + 32) _setupAccounts];
    *(*(a1 + 32) + 240) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = v2[56];
    v4 = [v2 _filterPaymentSetupProducts:?];
    [v3 updatePaymentSetupProducts:v4];
  }

  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 448);
    v7 = [v5 JSONObject];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_3;
    v22[3] = &unk_1E79D6E78;
    v23 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__PKPaymentProvisioningController_cachedPaymentSetupProductModelWithCompletion___block_invoke_4;
    v21[3] = &unk_1E79D6E78;
    v21[4] = v23;
    [v6 updateWithPaymentSetupProductsResponse:v7 productsFilter:v22 sectionsFilter:v21];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Not updating _paymentSetupProductModel since the available products are nil _availableProductsResponse", v20, 2u);
    }
  }

  v9 = *(a1 + 32);
  if (v9[34])
  {
    v10 = v9[56];
    v24[0] = v9[34];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v12 = [v9 _filterPaymentSetupProducts:v11];
    [v10 updatePaymentSetupProducts:v12];

    [*(*(a1 + 32) + 448) addCarKeyCategory];
  }

  if (*(a1 + 40))
  {
    v13 = [*(*(a1 + 32) + 448) allSections];
    if ([v13 count])
    {
      v14 = [*(*(a1 + 32) + 448) allSetupProducts];
      v15 = [v14 count];

      if (v15)
      {
LABEL_23:
        (*(*(a1 + 40) + 16))();
        return;
      }
    }

    else
    {
    }

    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Products required but not found in the cache", v20, 2u);
    }

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v17 = PKDisplayableErrorForCommonType(0, 0);
      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    goto LABEL_23;
  }
}

- (void)updatePaymentSetupProductModelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E69E96A0];
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v85 = 1;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__39;
  v82[4] = __Block_byref_object_dispose__39;
  v83 = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy__39;
  v80[4] = __Block_byref_object_dispose__39;
  v81 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__39;
  v78[4] = __Block_byref_object_dispose__39;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__39;
  v76[4] = __Block_byref_object_dispose__39;
  v77 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__39;
  v73[4] = __Block_byref_object_dispose__39;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__39;
  v71[4] = __Block_byref_object_dispose__39;
  v72 = 0;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  v8 = dispatch_group_create();
  PKTimeProfileBegin(0, @"products");
  v9 = PKLogFacilityTypeGetObject(0x24uLL);
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "provisioning:preflight:products", "", buf, 2u);
    }
  }

  dispatch_group_enter(v8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E79D6EC8;
  v68 = v84;
  aBlock[4] = self;
  v69 = v82;
  v70 = v71;
  v12 = v8;
  v67 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentWebService *)self->_webService supportedRegionFeatureOfType:14 didFailOSVersionRequirements:0];
  v15 = v14;
  if (self->_fetchProductsFromStaticDataSource && v14)
  {
    LOBYTE(buf[0]) = 0;
    v16 = [v14 createProductsRequestWithIsFetchBlocked:buf];
    v17 = v16;
    if ((buf[0] & 1) != 0 || !v16)
    {
      (*(v13 + 2))(v13, 0, 0);
      goto LABEL_16;
    }

    [(PKWebServiceRequest *)v16 addDiagnosticReason:@"Provisioning"];
    webService = self->_webService;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_443;
    v64[3] = &unk_1E79D6DD8;
    v65 = v13;
    [(PKPaymentWebService *)webService availableCommonProductsWithRequest:v17 completion:v64];
    v19 = v65;
  }

  else
  {
    v17 = objc_alloc_init(PKPaymentAvailableProductsRequest);
    [(PKWebServiceRequest *)v17 addDiagnosticReason:@"Provisioning"];
    if (self->_isProvisioningForAltAccount)
    {
      [(PKPaymentAvailableProductsRequest *)v17 setContext:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [targetDevice productsWithRequest:v17 completion:v13];
      goto LABEL_16;
    }

    v20 = self->_webService;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_2;
    v62[3] = &unk_1E79D6DD8;
    v63 = v13;
    [(PKPaymentWebService *)v20 availableProductsWithRequest:v17 completion:v62];
    v19 = v63;
  }

LABEL_16:
  if (objc_opt_respondsToSelector())
  {
    if (self->_preflightedApplications)
    {
      [targetDevice featureApplicationsForProvisioningWithCompletion:0];
    }

    else
    {
      dispatch_group_enter(v12);
      PKTimeProfileBegin(0, @"features");
      v21 = v9;
      v22 = os_signpost_id_make_with_pointer(v21, self);
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = v22;
        if (os_signpost_enabled(v21))
        {
          LOWORD(buf[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "provisioning:preflight:feature_applications", "", buf, 2u);
        }
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_449;
      v59[3] = &unk_1E79D6E00;
      v61 = v80;
      v59[4] = self;
      v60 = v12;
      [targetDevice featureApplicationsForProvisioningWithCompletion:v59];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (self->_preflightedAccounts)
    {
      [targetDevice updatedAccountsForProvisioningWithCompletion:0];
    }

    else
    {
      dispatch_group_enter(v12);
      PKTimeProfileBegin(0, @"accounts");
      v24 = v9;
      v25 = os_signpost_id_make_with_pointer(v24, self);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v26 = v25;
        if (os_signpost_enabled(v24))
        {
          LOWORD(buf[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD337000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v26, "provisioning:preflight:accounts", "", buf, 2u);
        }
      }

      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_456;
      v56[3] = &unk_1E79D6EF0;
      v58 = v78;
      v56[4] = self;
      v57 = v12;
      [targetDevice updatedAccountsForProvisioningWithCompletion:v56];
    }
  }

  dispatch_group_enter(v12);
  objc_initWeak(buf, self);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_460;
  v50[3] = &unk_1E79D6F18;
  v52 = v75;
  v53 = v73;
  objc_copyWeak(&v54, buf);
  v27 = v12;
  v51 = v27;
  [(PKPaymentProvisioningController *)self _identityConfigurationWithCompletion:v50];
  if (PKForceBrowseBankPartners())
  {
    dispatch_group_enter(v27);
    PKTimeProfileBegin(0, @"browse_banks");
    v28 = v9;
    v29 = os_signpost_id_make_with_pointer(v28, self);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v30 = v29;
      if (os_signpost_enabled(v28))
      {
        *v49 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "provisioning:preflight:browse_banks", "", v49, 2u);
      }
    }

    v31 = [[PKPaymentBrowseableBankAppsRequest alloc] initWithRegion:deviceRegion];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_465;
    v44[3] = &unk_1E79D6F40;
    v47 = v76;
    v48 = v82;
    v46 = v84;
    v44[4] = self;
    v45 = v27;
    [(PKPaymentProvisioningController *)self _browsableBanksWithRequest:v31 completion:v44];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_469;
  block[3] = &unk_1E79D6F90;
  v36 = v80;
  v37 = v78;
  v38 = v76;
  v39 = v71;
  v40 = v75;
  v41 = v73;
  block[4] = self;
  v35 = handlerCopy;
  v42 = v84;
  v43 = v82;
  v32 = handlerCopy;
  v33 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v27, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v54);
  objc_destroyWeak(buf);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v80, 8);

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v84, 8);
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) &= v6 == 0;
  if (v6)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    if (!v8)
    {
      v11 = [*(a1 + 32) displayableErrorForError:v6];
      v12 = *(*(a1 + 56) + 8);
      v10 = *(v12 + 40);
      *(v12 + 40) = v11;
      goto LABEL_7;
    }

    v9 = v8;
  }

  else
  {
    v7 = *(*(a1 + 64) + 8);
    v9 = v5;
  }

  v10 = *(v7 + 40);
  *(v7 + 40) = v9;
LABEL_7:

  v13 = PKLogFacilityTypeGetObject(0x24uLL);
  v14 = os_signpost_id_make_with_pointer(v13, *(a1 + 32));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v13, OS_SIGNPOST_INTERVAL_END, v15, "provisioning:preflight:products", "", v18, 2u);
    }
  }

  v16 = PKLogFacilityTypeGetObject(7uLL);
  v17 = PKTimeProfileEnd(v16, @"products", @"PKPaymentProvisioningController: Products");

  dispatch_group_leave(*(a1 + 40));
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_449(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, v7, "provisioning:preflight:feature_applications", "", v10, 2u);
    }
  }

  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = PKTimeProfileEnd(v8, @"features", @"PKPaymentProvisioningController: Feature Applications");

  dispatch_group_leave(*(a1 + 40));
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_456(uint64_t a1, void *a2)
{
  v3 = [a2 arrayByAddingObjectsFromArray:?];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = PKLogFacilityTypeGetObject(0x24uLL);
  v7 = os_signpost_id_make_with_pointer(v6, *(a1 + 32));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v6, OS_SIGNPOST_INTERVAL_END, v8, "provisioning:preflight:accounts", "", v11, 2u);
    }
  }

  v9 = PKLogFacilityTypeGetObject(7uLL);
  v10 = PKTimeProfileEnd(v9, @"accounts", @"PKPaymentProvisioningController: Accounts");

  dispatch_group_leave(*(a1 + 40));
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_460(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _applyIdentityConfiguration:a2 activeConfigurations:v8 completion:0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_465(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v10 = *(*(a1 + 64) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9;
  }

  objc_storeStrong(v11, v14);
  v15 = PKLogFacilityTypeGetObject(0x24uLL);
  v16 = os_signpost_id_make_with_pointer(v15, *(a1 + 32));
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      v20[0] = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v15, OS_SIGNPOST_INTERVAL_END, v17, "provisioning:preflight:browse_banks", "", v20, 2u);
    }
  }

  v18 = PKLogFacilityTypeGetObject(7uLL);
  v19 = PKTimeProfileEnd(v18, @"browse_banks", @"PKPaymentProvisioningController: Browse Banks");

  dispatch_group_leave(*(a1 + 40));
}

void __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_469(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    [*(a1 + 32) _setupFeatureApplications:*(*(*(a1 + 48) + 8) + 40)];
    *(*(a1 + 32) + 241) = 1;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    objc_storeStrong((*(a1 + 32) + 248), *(*(*(a1 + 56) + 8) + 40));
    *(*(a1 + 32) + 240) = 1;
  }

  if ([*(*(a1 + 32) + 248) count])
  {
    [*(a1 + 32) _setupAccounts];
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = v2[56];
    v4 = [v2 _filterPaymentSetupProducts:?];
    [v3 updatePaymentSetupProducts:v4];
  }

  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_2_470;
  aBlock[3] = &unk_1E79D6F68;
  objc_copyWeak(&v19, &location);
  v5 = _Block_copy(aBlock);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 448);
    v8 = [v6 JSONObject];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_3;
    v16[3] = &unk_1E79D6F68;
    objc_copyWeak(&v17, &location);
    [v7 updateWithPaymentSetupProductsResponse:v8 productsFilter:v16 sectionsFilter:v5];

    objc_destroyWeak(&v17);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Adding manual entry section because _availableProductsResponse is nil", v15, 2u);
    }

    [*(*(a1 + 32) + 448) addManualEntrySection:v5];
  }

  [*(a1 + 32) _updatePaymentSetupProductModelWithAvailability:*(*(*(a1 + 80) + 8) + 24) activeConfigurations:*(*(*(a1 + 88) + 8) + 40)];
  v10 = *(a1 + 32);
  if (v10[34])
  {
    v11 = v10[56];
    v21[0] = v10[34];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = [v10 _filterPaymentSetupProducts:v12];
    [v11 updatePaymentSetupProducts:v13];

    [*(*(a1 + 32) + 448) addCarKeyCategory];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 104) + 8) + 40));
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

id __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_2_470(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _filteredPaymentSetupProductSections:v3];

  return v5;
}

id __87__PKPaymentProvisioningController_updatePaymentSetupProductModelWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _filterPaymentSetupProducts:v3];

  return v5;
}

- (void)_identityConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__39;
  v41 = __Block_byref_object_dispose__39;
  v42 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
  v7 = v38[5];
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  PKTimeProfileBegin(0, @"identity");
  v9 = PKLogFacilityTypeGetObject(0x24uLL);
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "provisioning:preflight:identity", "", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79D6FB8;
  v12 = v5;
  v32 = &v37;
  v33 = v35;
  v29 = v5;
  selfCopy = self;
  v13 = completionCopy;
  v31 = v13;
  v14 = _Block_copy(aBlock);
  v15 = v38[5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_477;
  handler[3] = &unk_1E79C4428;
  v16 = v14;
  v27 = v16;
  dispatch_source_set_event_handler(v15, handler);
  dispatch_resume(v38[5]);
  if (!self->_identityProofingManager)
  {
    v17 = [objc_alloc(getCIDVUIProofingFlowManagerClass[0]()) initWithDelegate:self];
    identityProofingManager = self->_identityProofingManager;
    self->_identityProofingManager = v17;
  }

  v19 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Requesting proofingFlowAvailabilityWithCompletionHandler", buf, 2u);
  }

  v20 = self->_identityProofingManager;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_478;
  v23[3] = &unk_1E79C4B80;
  v21 = v5;
  v24 = v5;
  v22 = v16;
  v25 = v22;
  [(CIDVUIProofingFlowManager *)v20 proofingFlowAvailability:v23];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);
}

void __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  v9 = *(*(a1 + 64) + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    v10 = PKLogFacilityTypeGetObject(0x24uLL);
    v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v10, OS_SIGNPOST_INTERVAL_END, v12, "provisioning:preflight:identity", "", v16, 2u);
      }
    }

    v13 = PKLogFacilityTypeGetObject(7uLL);
    v14 = PKTimeProfileEnd(v13, @"identity", @"PKPaymentProvisioningController: Identity");

    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, a2, v5);
    }
  }
}

uint64_t __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_477(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Timeout occured for proofingFlowAvailabilityWithCompletionHandler", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_478(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_2;
  v12[3] = &unk_1E79D6FE0;
  v13 = v8;
  v9 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = a2;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

uint64_t __72__PKPaymentProvisioningController__identityConfigurationWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Proofing availability could not complete with error %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_applyIdentityConfiguration:(unint64_t)configuration activeConfigurations:(id)configurations completion:(id)completion
{
  configurationsCopy = configurations;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PKPaymentProvisioningController__applyIdentityConfiguration_activeConfigurations_completion___block_invoke;
  v12[3] = &unk_1E79C4D88;
  v12[4] = self;
  v13 = configurationsCopy;
  v14 = completionCopy;
  configurationCopy = configuration;
  v10 = completionCopy;
  v11 = configurationsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __95__PKPaymentProvisioningController__applyIdentityConfiguration_activeConfigurations_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updatePaymentSetupProductModelWithAvailability:*(a1 + 56) activeConfigurations:*(a1 + 40)];
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v2 = [*(*(a1 + 32) + 80) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 88));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 provisioningControllerUpdatedProducts:{*(a1 + 32), v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)_updatePaymentSetupProductModelExtensionsWithCompletion:(id)completion
{
  completionCopy = completion;
  PKTimeProfileBegin(0, @"provisioning_extensions");
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "provisioning:preflight:provisioning_extensions", "", buf, 2u);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PKPaymentProvisioningController__updatePaymentSetupProductModelExtensionsWithCompletion___block_invoke;
  v9[3] = &unk_1E79C4838;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(PKPaymentProvisioningController *)self provisioningExtensionProductsWithCompletionHandler:v9];
}

void __91__PKPaymentProvisioningController__updatePaymentSetupProductModelExtensionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _filterPaymentSetupProducts:a2];
  [*(*(a1 + 32) + 448) updatePaymentSetupProducts:v3];
  v4 = PKLogFacilityTypeGetObject(0x24uLL);
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v4, OS_SIGNPOST_INTERVAL_END, v6, "provisioning:preflight:provisioning_extensions", "", v10, 2u);
    }
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = PKTimeProfileEnd(v7, @"provisioning_extensions", @"PKPaymentProvisioningController: Provisioning Extensions");

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)_browsableBanksWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (PKMockBrowseBankPartners())
  {
    _mockBrowseBanksResponse = [(PKPaymentProvisioningController *)self _mockBrowseBanksResponse];
    v9 = _mockBrowseBanksResponse;
    if (completionCopy)
    {
      browseableBankApps = [_mockBrowseBanksResponse browseableBankApps];
      completionCopy[2](completionCopy, 1, browseableBankApps, 0);
    }
  }

  else
  {
    webService = self->_webService;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__PKPaymentProvisioningController__browsableBanksWithRequest_completion___block_invoke;
    v12[3] = &unk_1E79D7030;
    v12[4] = self;
    v13 = completionCopy;
    [(PKPaymentWebService *)webService browseableBankAppsWithRequest:requestCopy completion:v12];
  }
}

void __73__PKPaymentProvisioningController__browsableBanksWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentProvisioningController__browsableBanksWithRequest_completion___block_invoke_2;
  block[3] = &unk_1E79D7008;
  v18 = a2;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v16 = v7;
  v17 = v10;
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__PKPaymentProvisioningController__browsableBanksWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64) == 1 && *(a1 + 32) == 0;
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) displayableErrorForError:?];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v7 = v4;
    v6 = [*(a1 + 48) browseableBankApps];
    (*(v5 + 16))(v5, v3, v6, v7);

    v4 = v7;
  }
}

- (void)_retrievePendingCarKeys:(id)keys
{
  keysCopy = keys;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKPaymentProvisioningController__retrievePendingCarKeys___block_invoke;
    v6[3] = &unk_1E79C4838;
    v6[4] = self;
    v7 = keysCopy;
    [targetDevice retrievePendingProvisioningsWithType:@"CarKey" completion:v6];
  }

  else
  {
    (*(keysCopy + 2))(keysCopy, 0);
  }
}

void __59__PKPaymentProvisioningController__retrievePendingCarKeys___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v28 = a1;
    v4 = objc_alloc_init(PKPaymentSetupProduct);
    v5 = objc_alloc_init(PKPaymentSetupProductConfiguration);
    [(PKPaymentSetupProductConfiguration *)v5 setType:11];
    [(PKPaymentSetupProductConfiguration *)v5 setProductIdentifier:@"carKey"];
    [(PKPaymentSetupProductConfiguration *)v5 setState:1];
    v27 = v5;
    [(PKPaymentSetupProduct *)v4 setConfiguration:v5];
    v6 = PKLocalizedPaymentString(&cfstr_PaymentSetupCa.isa, 0);
    [(PKPaymentSetupProduct *)v4 setDisplayName:v6];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v3;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v12 configuration];
          [v13 setReferralSource:5];
          v14 = [v12 createdAt];
          v15 = PKMediumDateString(v14, 0);

          v16 = [v13 vehicleName];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v15;
          }

          [v13 setLocalizedDescription:v18];

          v19 = [PKCarKeyTerminalPairingCredential alloc];
          v20 = [(PKPaymentSetupProduct *)v4 productIdentifier];
          v21 = [(PKCarKeyTerminalPairingCredential *)v19 initWithConfiguration:v13 productIdentifier:v20];

          [v7 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    v22 = *(v28 + 32);
    v23 = *(v22 + 408);
    *(v22 + 408) = v7;
    v24 = v7;

    (*(*(v28 + 40) + 16))();
    v3 = v29;
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = *(v25 + 408);
    *(v25 + 408) = 0;

    (*(*(a1 + 40) + 16))();
  }
}

- (id)localCredentials
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 pk_safelyAddObjectsFromArray:self->_pendingCarKeyCredentials];

  return v3;
}

- (BOOL)_isExtensionSupported:(id)supported usingUnsupportedProvisioningExtensions:(id)extensions
{
  v18 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  if (extensions)
  {
    extensionsCopy = extensions;
    identifier = [supportedCopy identifier];
    v8 = [extensionsCopy PKDictionaryForKey:identifier];

    if (v8)
    {
      version = [supportedCopy version];
      v10 = [v8 PKArrayContaining:objc_opt_class() forKey:0];
      if (([v10 containsObject:version] & 1) != 0 || objc_msgSend(v10, "containsObject:", 0))
      {
        v11 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = identifier;
          v16 = 2112;
          v17 = version;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Extension: %@ with version: %@ is unsupported", &v14, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)_supportedProvisioningExtensions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"com.apple.PassKit.issuer-provisioning" forKeyedSubscript:*MEMORY[0x1E696A2F8]];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ENTITLEMENT:%@", @"com.apple.developer.payment-pass-provisioning"];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v4];

  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  appleAccountInformation = [targetDevice appleAccountInformation];
  isManagedAppleAccount = [appleAccountInformation isManagedAppleAccount];

  if (isManagedAppleAccount)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ENTITLEMENT:%@", @"com.apple.developer.contactless-payment-pass-provisioning.maids"];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
  }

  v20 = 0;
  v9 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v3 error:&v20];
  v10 = v20;
  v11 = v10;
  if (!v9 || v10)
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Could not get list of provisioning extensions with error: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    context = [(PKPaymentWebService *)self->_webService context];
    configuration = [context configuration];
    unsupportedProvisioningExtensions = [configuration unsupportedProvisioningExtensions];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__PKPaymentProvisioningController__supportedProvisioningExtensions__block_invoke;
    v18[3] = &unk_1E79C9A68;
    v18[4] = self;
    v19 = unsupportedProvisioningExtensions;
    v15 = unsupportedProvisioningExtensions;
    v16 = [v9 pk_objectsPassingTest:v18];
  }

  return v16;
}

- (unint64_t)countSupportedProvisioningExtensions
{
  _supportedProvisioningExtensions = [(PKPaymentProvisioningController *)self _supportedProvisioningExtensions];
  v3 = [_supportedProvisioningExtensions count];

  return v3;
}

- (void)provisioningExtensionProductsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E79C4A40;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(v5, v6);
  }
}

void __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) _supportedProvisioningExtensions];
  v3 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v4 = [*(*(a1 + 32) + 368) targetDevice];
  v5 = [v4 deviceName];
  v6 = [v5 isEqualToString:@"Apple Watch"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_2;
        v18[3] = &unk_1E79D70A8;
        v18[4] = v12;
        v19 = v6;
        [(PKAsyncUnaryOperationComposer *)v3 addOperation:v18];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_2_506;
  v16[3] = &unk_1E79D70F0;
  v17 = *(a1 + 40);
  v14 = [(PKAsyncUnaryOperationComposer *)v3 evaluateWithInput:v13 completion:v16];

  objc_autoreleasePoolPop(context);
}

void __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_3;
  v19[3] = &unk_1E79D7080;
  v11 = v7;
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v24 = *(a1 + 40);
  v13 = v8;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = [PKIssuerProvisioningExtensionConsumerCoordinator beginWithExtension:v10 completion:v19];
  v16 = v15;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_504;
    v17[3] = &unk_1E79C4E28;
    v18 = v15;
    [v11 addCancelAction:v17];
  }
}

void __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || ([v7 isCanceled] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isCanceled") & 1) != 0)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) identifier];
      v11 = v10;
      v12 = @"NO";
      if (*(a1 + 64))
      {
        v12 = @"YES";
      }

      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Did not create product for extension with identifier: %@ extension executation cancelled isRemote: %@", buf, 0x16u);
    }

    [v6 invalidate];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) identifier];
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Querying status for extension with identifier: %@", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_501;
    v18[3] = &unk_1E79D7058;
    v15 = v6;
    v23 = *(a1 + 64);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = *(a1 + 56);
    [v15 statusWithCompletion:v18];
  }
}

void __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_501(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  if ((*(a1 + 64) & 1) == 0)
  {
    if ([v3 passEntriesAvailable])
    {
      goto LABEL_5;
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (![v3 remotePassEntriesAvailable])
  {
LABEL_13:
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      v13 = [v3 description];
      v14 = v13;
      v15 = *(a1 + 64);
      v17 = 138412802;
      v18 = v12;
      if (v15)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Did not create product for extension with identifier: %@ status: [%@] isRemote: %@", &v17, 0x20u);
    }

    goto LABEL_18;
  }

LABEL_5:
  v4 = [PKPaymentSetupProduct productForIssuerProvisioningExtension:*(a1 + 40) withStatus:v3];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 displayName];
    v8 = [v5 productIdentifier];
    v9 = v8;
    v10 = *(a1 + 64);
    v17 = 138412802;
    v18 = v7;
    if (v10)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Created product for extension named: %@ identifier: %@ isRemote: %@", &v17, 0x20u);
  }

  [*(a1 + 48) addObject:v5];
LABEL_18:

  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48));
}

void __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_2_506(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 sortUsingComparator:&__block_literal_global_510];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __86__PKPaymentProvisioningController_provisioningExtensionProductsWithCompletionHandler___block_invoke_3_507(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  if (v5 == v6)
  {
    v7 = 0;
  }

  else if (v5)
  {
    if (v6)
    {
      v7 = [v5 localizedStandardCompare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_mockBrowseBanksResponse
{
  v2 = [@"{availablePartners:[{displayName:Boon. searchTerms:{associatedStoreIdentifiers:[1042647367], appLaunchURLScheme:boon, appLaunchURLPath:applewalletlist, cameraCaptureSupport:[], inAppProvisioningSupport:[prepaid]}, {displayName:UniCredit, searchTerms:[UniCredit, monhey], associatedStoreIdentifiers:[1119177197], appLaunchURLScheme:mhyuc, appLaunchURLPath:appleWalletList, cameraCaptureSupport:[credit, debit, prepaid], inAppProvisioningSupport:[]}, {displayName:Allianz, searchTerms:[Allianz, Allianz Prime], associatedStoreIdentifiers:[1282314742], appLaunchURLScheme:allianz, appLaunchURLPath:applewalletlist, cameraCaptureSupport:[], inAppProvisioningSupport:[prepaid]}, {displayName:ICCREA, searchTerms:[Banca Credito Cooperativo, ICCREA, Istituto Centrale delle Casse Rurali ed Artigiane], associatedStoreIdentifiers:[], appLaunchURLScheme:, appLaunchURLPath:, cameraCaptureSupport:[credit, debit, prepaid], inAppProvisioningSupport:[]}, {displayName:Widiba, searchTerms:[Monte dei Paschi di Siena, Widiba], associatedStoreIdentifiers:[915429623], appLaunchURLScheme:widiba, appLaunchURLPath:applewalletlist, cameraCaptureSupport:[debit], inAppProvisioningSupport:[]}, {displayName:TIM, searchTerms:[Banca Sella, Hype, TIM, ‘TIM Personal’], associatedStoreIdentifiers:[1156051372], appLaunchURLScheme:timpersonal, appLaunchURLPath:applewalletlist, cameraCaptureSupport:[], inAppProvisioningSupport:[prepaid]}, {displayName:Vamsi, searchTerms:[ok], associatedStoreIdentifiers:[123], appLaunchURLScheme:launch, appLaunchURLPath:here, cameraCaptureSupport:[credit, debit], inAppProvisioningSupport:[prepaid]}, {displayName:Banca Mediolanum, searchTerms:[Mediolanum, Mediolanum Wallet’, ‘Banca Mediolanum’], associatedStoreIdentifiers:[412610547], appLaunchURLScheme:mediolanumwallet, appLaunchURLPath:applewalletlist, cameraCaptureSupport:[debit], inAppProvisioningSupport:[]}, {displayName:Hype, searchTerms:[Banca Sella, Hype], associatedStoreIdentifiers:[943405905], appLaunchURLScheme:hype, appLaunchURLPath:appleWalletList, cameraCaptureSupport:[prepaid], inAppProvisioningSupport:[]}, {displayName:N26, searchTerms:[N26], associatedStoreIdentifiers:[956857223], appLaunchURLScheme:number26, appLaunchURLPath:applepay/list, cameraCaptureSupport:[credit, debit], inAppProvisioningSupport:[]}, {displayName:Nexi, searchTerms:[Banca Mediolanum, Banco di Desio, Banco di Spoleto, Carige, CartaSi, Casse Rurali Trentine, Credit Agricole, Nexi, Nexi Pay, Sparkasse], associatedStoreIdentifiers:[518695175], appLaunchURLScheme:cartasiapp, appLaunchURLPath:appleWalletList, cameraCaptureSupport:[credit, debit, prepaid], inAppProvisioningSupport:[]}, {displayName:Bunq, searchTerms:[Bunq], associatedStoreIdentifiers:[1021178150], appLaunchURLScheme:bunq, appLaunchURLPath:x-bunq-app/apple-pay-wallet, cameraCaptureSupport:[debit], inAppProvisioningSupport:[]}]}", "dataUsingEncoding:", 4}[Boon]];
  v3 = [(PKWebServiceResponse *)PKPaymentBrowseableBankAppsResponse responseWithData:v2];

  return v3;
}

- (id)pendingProvisioningForCredential:(id)credential
{
  v16 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_pendingProvisionings;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 representsCredential:{credentialCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)requestProvisioningMethodMetadataForProduct:(id)product completionHandler:(id)handler
{
  productCopy = product;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  setupProductMethods = [productCopy setupProductMethods];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke;
  v15[3] = &unk_1E79D7140;
  v16 = productCopy;
  v17 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = productCopy;
  [setupProductMethods enumerateObjectsUsingBlock:v15];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_4;
  v13[3] = &unk_1E79C4428;
  v14 = handlerCopy;
  v12 = handlerCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v13);
}

void __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [*(a1 + 32) provisioningMethodMetadataForMethod:v3];

  if ((v4 - 1) <= 1 && v5 == 0)
  {
    dispatch_group_enter(*(a1 + 40));
    v7 = [PKPaymentProvisioningMethodMetadataRequest alloc];
    v8 = [*(a1 + 32) configuration];
    v9 = [v8 productIdentifier];
    v10 = PKPaymentSupportedProvisioningMethodToString(v4);
    v11 = [(PKPaymentProvisioningMethodMetadataRequest *)v7 initWithProductIdentifier:v9 provisioningMethod:v10];

    v12 = *(*(a1 + 48) + 368);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_2;
    v13[3] = &unk_1E79D7118;
    v14 = *(a1 + 32);
    v15 = v3;
    v16 = *(a1 + 40);
    [v12 provisioningMethodWithRequest:v11 completion:v13];
  }
}

void __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a2 != 1 || a4)
  {
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_3;
    v8[3] = &unk_1E79C9668;
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) provisioningMethodMetadata];
  [v2 setProvisioningMethodMetadata:v3 forMethod:*(a1 + 48)];

  v4 = *(a1 + 56);

  dispatch_group_leave(v4);
}

uint64_t __97__PKPaymentProvisioningController_requestProvisioningMethodMetadataForProduct_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestPurchasesForProduct:(id)product completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  productCopy = product;
  handlerCopy = handler;
  v33 = productCopy;
  v28 = [productCopy provisioningMethodMetadataForType:@"digitalIssuance"];
  digitalIssuanceMetadata = [v28 digitalIssuanceMetadata];
  context = [(PKPaymentWebService *)self->_webService context];
  regions = [context regions];

  if (digitalIssuanceMetadata && [regions count])
  {
    *v49 = 0;
    v50 = v49;
    v51 = 0x2810000000;
    v52 = &unk_1ADC7D092;
    v53 = 0;
    v8 = dispatch_group_create();
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = regions;
    v9 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v9)
    {
      v31 = *v46;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v11;
            _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Querying for purchases in region %@", buf, 0xCu);
          }

          v13 = [PKPaymentServiceProviderPurchasesRequest alloc];
          configuration = [v33 configuration];
          productIdentifier = [configuration productIdentifier];
          action = [digitalIssuanceMetadata action];
          serviceProviderCountryCode = [digitalIssuanceMetadata serviceProviderCountryCode];
          v18 = [(PKPaymentServiceProviderPurchasesRequest *)v13 initWithPurchaseState:0 serviceProviderIdentifier:0 productIdentifier:productIdentifier actionIdentifier:action serviceProviderCountryCode:serviceProviderCountryCode];

          if (self->_isProvisioningForAltAccount)
          {
            targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
            v20 = [targetDevice trustedDeviceEnrollmentInfoForWebService:self->_webService];

            deviceSerialNumber = [v20 deviceSerialNumber];
            [(PKPaymentServiceProviderPurchasesRequest *)v18 setTargetDeviceSerialNumber:deviceSerialNumber];
          }

          dispatch_group_enter(v8);
          webService = self->_webService;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __80__PKPaymentProvisioningController_requestPurchasesForProduct_completionHandler___block_invoke_521;
          v39[3] = &unk_1E79D7168;
          v44 = v49;
          v40 = v32;
          v41 = v33;
          v42 = v11;
          v43 = v8;
          [(PKPaymentWebService *)webService serviceProviderPurchasesWithRequest:v18 inRegion:v11 completion:v39];
        }

        v9 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v9);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKPaymentProvisioningController_requestPurchasesForProduct_completionHandler___block_invoke_524;
    block[3] = &unk_1E79D7190;
    v36 = v32;
    v23 = v32;
    objc_copyWeak(&v38, buf);
    v37 = handlerCopy;
    v24 = handlerCopy;
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    _Block_object_dispose(v49, 8);
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Error: Could not fetch product purchases", v49, 2u);
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __80__PKPaymentProvisioningController_requestPurchasesForProduct_completionHandler___block_invoke;
    v54[3] = &unk_1E79C4428;
    v55 = handlerCopy;
    v26 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v54);
  }
}

void __80__PKPaymentProvisioningController_requestPurchasesForProduct_completionHandler___block_invoke_521(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[6];
      *buf = 138412546;
      v41 = v8;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error querying region %@ for purchases: %@", buf, 0x16u);
    }
  }

  else
  {
    v26 = 0;
    os_unfair_lock_lock((*(a1[8] + 8) + 32));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v28 = *v37;
      v29 = a1;
      do
      {
        v12 = 0;
        v30 = v10;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * v12);
          if (([v13 state] & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            v14 = [v13 identifier];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v15 = a1[4];
            v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v33;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = [*(*(&v32 + 1) + 8 * i) purchase];
                  v21 = [v20 identifier];
                  v22 = [v21 isEqualToString:v14];

                  if (v22)
                  {

                    v24 = PKLogFacilityTypeGetObject(7uLL);
                    a1 = v29;
                    if (os_log_type_enabled(&v24->super.super, OS_LOG_TYPE_DEFAULT))
                    {
                      v25 = v29[6];
                      *buf = 138412546;
                      v41 = v14;
                      v42 = 2112;
                      v43 = v25;
                      _os_log_impl(&dword_1AD337000, &v24->super.super, OS_LOG_TYPE_DEFAULT, "Dropped purchase: %@ from region: %@ as this is already present in purcahses from other regions", buf, 0x16u);
                    }

                    goto LABEL_22;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            a1 = v29;
            v23 = v29[4];
            v24 = [[PKPaymentPurchasedProductCredential alloc] initWithPaymentSetupProduct:v29[5] purchase:v13];
            [v23 addObject:v24];
LABEL_22:
            v11 = v28;
            v10 = v30;
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock((*(a1[8] + 8) + 32));
    v6 = v26;
    v5 = v27;
  }

  dispatch_group_leave(a1[7]);
}

void __80__PKPaymentProvisioningController_requestPurchasesForProduct_completionHandler___block_invoke_524(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) copy];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v2 count];
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Final (pending/refunded) purchases count: %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 50, v2);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v2, 0);
  }
}

- (void)setupProductForProvisioning:(id)provisioning includePurchases:(BOOL)purchases withCompletionHandler:(id)handler
{
  provisioningCopy = provisioning;
  handlerCopy = handler;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__39;
  v66[4] = __Block_byref_object_dispose__39;
  v67 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v12 = &unk_1ADB86000;
  if (provisioningCopy)
  {
    configuration = [provisioningCopy configuration];
    type = [configuration type];
    if (type == 6)
    {
      partnerIdentifier = [provisioningCopy partnerIdentifier];
      v17 = [provisioningCopy setupProductMethodOfType:4 withIdentifier:partnerIdentifier];

      provisioningExtension = [v17 provisioningExtension];
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x3032000000;
      v60[3] = __Block_byref_object_copy__39;
      v60[4] = __Block_byref_object_dispose__39;
      v61 = 0;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_2;
      v54[3] = &unk_1E79D7230;
      v54[4] = self;
      v19 = provisioningExtension;
      v55 = v19;
      v57 = v60;
      v58 = v68;
      v56 = provisioningCopy;
      v59 = v66;
      [(PKAsyncUnaryOperationComposer *)v11 addOperation:v54];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_7;
      v48[3] = &unk_1E79D7230;
      v51 = v60;
      v48[4] = self;
      v20 = v19;
      v49 = v20;
      v50 = v10;
      v52 = v68;
      v53 = v66;
      [(PKAsyncUnaryOperationComposer *)v11 addOperation:v48];

      _Block_object_dispose(v60, 8);
      v12 = &unk_1ADB86000;
    }

    else
    {
      if (type == 10)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_541;
        v35[3] = &unk_1E79D71B8;
        v38 = v68;
        v36 = v10;
        selfCopy = self;
        [(PKAsyncUnaryOperationComposer *)v11 addOperation:v35];
        v15 = v36;
      }

      else if (type == 11)
      {
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke;
        v62[3] = &unk_1E79D71B8;
        v65 = v68;
        v63 = v10;
        selfCopy2 = self;
        [(PKAsyncUnaryOperationComposer *)v11 addOperation:v62];
        v15 = v63;
      }

      else
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_3_537;
        v45[3] = &unk_1E79CD838;
        v45[4] = self;
        v21 = provisioningCopy;
        v46 = v21;
        v47 = v68;
        [(PKAsyncUnaryOperationComposer *)v11 addOperation:v45];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_5_539;
        v39[3] = &unk_1E79D7258;
        v43 = v68;
        purchasesCopy = purchases;
        v40 = v21;
        selfCopy3 = self;
        v42 = v10;
        [(PKAsyncUnaryOperationComposer *)v11 addOperation:v39];

        v15 = v46;
      }
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_2_542;
    v31[3] = &unk_1E79D71B8;
    v34 = v68;
    v32 = v10;
    selfCopy4 = self;
    [(PKAsyncUnaryOperationComposer *)v11 addOperation:v31];
    configuration = v32;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = v12[283];
  v26[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_3_543;
  v26[3] = &unk_1E79D7280;
  v23 = handlerCopy;
  v28 = v23;
  v29 = v68;
  v30 = v66;
  v24 = v10;
  v27 = v24;
  v25 = [(PKAsyncUnaryOperationComposer *)v11 evaluateWithInput:null completion:v26];

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  *(*(a1[6] + 8) + 24) = 1;
  v5 = a1[4];
  v6 = *(a1[5] + 408);
  v7 = a4;
  v8 = a3;
  [v5 pk_safelyAddObjectsFromArray:v6];
  v7[2](v7, v8, 0);
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong((*(a1 + 32) + 424), *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 432);
  *(v8 + 432) = 0;

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_3;
  v17[3] = &unk_1E79D7208;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v20 = v7;
  v17[4] = v10;
  v18 = v6;
  v21 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = *(a1 + 72);
  v19 = v12;
  v22 = v13;
  v14 = v6;
  v15 = v7;
  v16 = [PKIssuerProvisioningExtensionConsumerCoordinator beginWithExtension:v11 completion:v17];
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [*(*(a1 + 32) + 368) targetDevice];
    v9 = [v8 deviceName];
    v10 = [v9 isEqualToString:@"Apple Watch"];

    if (v10)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_5;
      v24[3] = &unk_1E79D71E0;
      v25 = v6;
      v19 = *(a1 + 56);
      v11 = v19;
      v27 = v19;
      v26 = *(a1 + 40);
      [v25 remotePassEntriesWithCompletion:v24];

      v12 = v25;
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_4;
      v28[3] = &unk_1E79D71E0;
      v29 = v6;
      v20 = *(a1 + 56);
      v18 = v20;
      v31 = v20;
      v30 = *(a1 + 40);
      [v29 passEntriesWithCompletion:v28];

      v12 = v29;
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v13 = [*(a1 + 48) displayName];
    v12 = PKLocalizedPaymentString(&cfstr_ProvisioningEx_1.isa, &stru_1F2281668.isa, v13);

    v14 = PKLocalizedPaymentString(&cfstr_ProvisioningEx_2.isa, 0);
    v15 = PKDisplayableErrorCustomWithType(-1, v14, v12, 0, 0);
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_6;
    block[3] = &unk_1E79C44A0;
    v23 = *(a1 + 56);
    v22 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  (*(*(a1 + 48) + 16))();
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  (*(*(a1 + 48) + 16))();
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_7(void *a1, uint64_t a2, void *a3, void *a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1[7] + 8) + 40) count];
  if (!v8)
  {
    *(*(a1[8] + 8) + 24) = 0;
    v33 = PKDisplayableErrorForCommonType(7, 0);
    v34 = *(a1[9] + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_2_536;
    v40[3] = &unk_1E79C44A0;
    v41 = v6;
    v42 = v7;
    v32 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v40);

    v31 = v42;
    goto LABEL_26;
  }

  v9 = v8;
  v36 = v6;
  v37 = v7;
  v55[0] = *(a1[4] + 368);
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
  v39 = a1;
  v48 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v11 = *(*(a1[7] + 8) + 40);
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v49;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v49 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v48 + 1) + 8 * i);
      v17 = [v16 paymentPassEntry];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 addRequestConfiguration];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 _filterWebServices:v10 primaryAccountIdentifierRequired:1];
          v22 = v21;
          if (v21 && [v21 count])
          {
            v23 = [[PKPaymentIssuerProvisioningExtensionCredential alloc] initWithExtension:v39[5] entry:v18];
            [v38 addObject:v23];
            [v39[6] addObject:v23];
          }

          else
          {
            v23 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(&v23->super.super, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v16 identifier];
              *buf = 138412290;
              v53 = v24;
              _os_log_impl(&dword_1AD337000, &v23->super.super, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: filtering pass entry %@ due to configuration parameters.", buf, 0xCu);
            }
          }

          goto LABEL_18;
        }

        v22 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v16 identifier];
          *buf = 138412290;
          v53 = v23;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: filtering pass entry %@ due to missing configuration.", buf, 0xCu);
LABEL_18:
        }
      }

      else
      {
        v20 = PKLogFacilityTypeGetObject(7uLL);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v22 = [v16 identifier];
        *buf = 138412290;
        v53 = v22;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController: filtering pass entry %@ due to type.", buf, 0xCu);
      }

LABEL_20:
    }

    v13 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v13);
LABEL_22:

  v25 = v38;
  *(*(v39[8] + 8) + 24) = [v38 count] != 0;
  if ((*(*(v39[8] + 8) + 24) & 1) == 0)
  {

    v26 = PKDisplayableErrorForCommonType(7, 0);
    v27 = *(v39[9] + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v25 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_535;
  block[3] = &unk_1E79CBD70;
  v29 = v39[5];
  block[4] = v39[4];
  v44 = v29;
  v45 = v25;
  v46 = v36;
  v47 = v37;
  v30 = v36;
  v31 = v37;
  v32 = v25;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_26:
}

uint64_t __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_535(uint64_t a1)
{
  if (*(*(a1 + 32) + 424) == *(a1 + 40))
  {
    v2 = [*(a1 + 48) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 432);
    *(v3 + 432) = v2;
  }

  v5 = *(*(a1 + 64) + 16);

  return v5();
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_3_537(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_4_538;
  v13[3] = &unk_1E79CC068;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 requestProvisioningMethodMetadataForProduct:v9 completionHandler:v13];
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_5_539(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) supportsSetupProductMethodForType:2];
  v9 = *(*(*(a1 + 56) + 8) + 24) != 1 || v8 == 0;
  if (v9 || *(a1 + 64) != 1 || ([*(a1 + 32) suppressPendingPurchases] & 1) != 0)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_6_540;
    v12[3] = &unk_1E79D5958;
    v13 = *(a1 + 48);
    v15 = v7;
    v14 = v6;
    [v10 requestPurchasesForProduct:v11 completionHandler:v12];
  }
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_6_540(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [*(a1 + 32) addObjectsFromArray:v6];
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error getting purchases for product:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_541(void *a1, uint64_t a2, void *a3, void *a4)
{
  *(*(a1[6] + 8) + 24) = 1;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a4;
  v11 = a3;
  v8 = [v6 associatedCredentialsForDefaultBehaviour];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [v5 addObjectsFromArray:v10];

  v7[2](v7, v11, 0);
}

void __102__PKPaymentProvisioningController_setupProductForProvisioning_includePurchases_withCompletionHandler___block_invoke_2_542(void *a1, uint64_t a2, void *a3, void *a4)
{
  *(*(a1[6] + 8) + 24) = 1;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a4;
  v11 = a3;
  v8 = [v6 associatedCredentialsForDefaultBehaviour];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [v5 addObjectsFromArray:v10];

  v7[2](v7, v11, 0);
}

- (void)setupAccountCredentialForProvisioning:(id)provisioning completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  provisioningCopy = provisioning;
  completionCopy = completion;
  v8 = completionCopy;
  if (provisioningCopy)
  {
    context = [(PKPaymentWebService *)self->_webService context];
    primaryRegion = [context primaryRegion];

    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      accountServiceURL = [primaryRegion accountServiceURL];
      accountServicePushTopic = [primaryRegion accountServicePushTopic];
      *buf = 138412546;
      v22 = accountServiceURL;
      v23 = 2112;
      v24 = accountServicePushTopic;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "setupAccountCredentialForProvisioning accountServiceURL %@ accountServicePushTopic %@", buf, 0x16u);
    }

    accountServiceURL2 = [primaryRegion accountServiceURL];
    if (accountServiceURL2 && (v15 = accountServiceURL2, [primaryRegion accountServicePushTopic], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      [(PKPaymentProvisioningController *)self _setupAccountCredentialForProvisioning:provisioningCopy completion:v8];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = primaryRegion;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "!!!! Missing account service URL or push topic, updating accounts before setting up account credential. Region: %@", buf, 0xCu);
      }

      targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__PKPaymentProvisioningController_setupAccountCredentialForProvisioning_completion___block_invoke;
      v18[3] = &unk_1E79D72A8;
      v18[4] = self;
      v19 = provisioningCopy;
      v20 = v8;
      [targetDevice updatedAccountsForProvisioningWithCompletion:v18];
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
    primaryRegion = [(PKPaymentProvisioningController *)self displayableErrorForError:0];
    (v8)[2](v8, 0, primaryRegion);
LABEL_12:
  }
}

void __84__PKPaymentProvisioningController_setupAccountCredentialForProvisioning_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Finished updating accounts %@ %@, continuing with setting up account credential.", &v8, 0x16u);
  }

  [*(a1 + 32) _setupAccountCredentialForProvisioning:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_setupAccountCredentialForProvisioning:(id)provisioning completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  provisioningCopy = provisioning;
  completionCopy = completion;
  account = [provisioningCopy account];
  accountIdentifier = [account accountIdentifier];
  v10 = PKFeatureIdentifierToString([account feature]);
  _supportedFeatureIdentifierStringsForAccountProvisioning = [(PKPaymentProvisioningController *)self _supportedFeatureIdentifierStringsForAccountProvisioning];
  if ([_supportedFeatureIdentifierStringsForAccountProvisioning containsObject:v10])
  {
    v29 = v10;
    passDetailsResponse = [provisioningCopy passDetailsResponse];
    v13 = passDetailsResponse;
    if (passDetailsResponse && [passDetailsResponse status] != -1)
    {
      if ([v13 status] != 1 || (objc_msgSend(v13, "provisioningIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
      {
        v16 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = accountIdentifier;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Account credential for account: %@ has already already setup for provisioning", buf, 0xCu);
        }

        v10 = v29;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1, 0);
        }

        goto LABEL_25;
      }

      v18 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Error: Pass details response cached but missing provisioning identifier", buf, 2u);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke;
    aBlock[3] = &unk_1E79D7320;
    v19 = completionCopy;
    v39 = v19;
    aBlock[4] = self;
    v20 = provisioningCopy;
    v38 = v20;
    v21 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_546;
    v30[3] = &unk_1E79D7398;
    v28 = accountIdentifier;
    v31 = accountIdentifier;
    v32 = account;
    v22 = v20;
    v33 = v22;
    selfCopy = self;
    v35 = v19;
    v23 = v21;
    v36 = v23;
    v24 = _Block_copy(v30);
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      sharingInstanceIdentifier = [v22 sharingInstanceIdentifier];

      if (sharingInstanceIdentifier)
      {
        v27 = 111;
      }

      else
      {
        v27 = 255;
      }

      [targetDevice paymentWebService:self->_webService deviceMetadataWithFields:v27 completion:v24];
    }

    else
    {
      v24[2](v24, 0);
    }

    accountIdentifier = v28;
    v10 = v29;
LABEL_25:

    goto LABEL_26;
  }

  v17 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = accountIdentifier;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Account credential for account: %@ is not supported by target device supported features", buf, 0xCu);
  }

  if (completionCopy)
  {
    v13 = [(PKPaymentProvisioningController *)self displayableErrorForError:0];
    (completionCopy)[2](completionCopy, 0, v13);
    goto LABEL_25;
  }

LABEL_26:
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke(id *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status] == 4)
  {
    v4 = [v3 passURL];
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Downloading the account shell pass again after getting pass details: %@", buf, 0xCu);
      }

      objc_initWeak(buf, a1[4]);
      v6 = *(a1[4] + 46);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_544;
      v9[3] = &unk_1E79D72F8;
      objc_copyWeak(&v13, buf);
      v10 = a1[5];
      v11 = v4;
      v12 = a1[6];
      v14 = v3 != 0;
      [v6 passAtURL:v11 completion:v9];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      v8 = a1[6];
      if (v8)
      {
        v8[2](v8, v3 != 0, 0);
      }
    }
  }

  else
  {
    v7 = a1[6];
    if (v7)
    {
      v7[2](v7, v3 != 0, 0);
    }
  }
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_544(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_2;
  block[3] = &unk_1E79D72D0;
  objc_copyWeak(v12, (a1 + 56));
  v12[1] = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 64);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v12);
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && *(a1 + 72) == 1 && (v3 = *(a1 + 32)) != 0)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Updating the account credential payment pass %@", &v8, 0xCu);
    }

    [*(a1 + 40) setPaymentPass:*(a1 + 32)];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "A nil payment pass was defined after getting the pass at url %@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 80), 0);
  }
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_546(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKAccountWebServicePassDetailsRequest);
  [(PKAccountWebServicePassDetailsRequest *)v4 setAccountIdentifier:*(a1 + 32)];
  v5 = [*(a1 + 40) accountBaseURL];
  [(PKAccountWebServicePassDetailsRequest *)v4 setBaseURL:v5];

  [(PKAccountWebServicePassDetailsRequest *)v4 setDeviceMetadata:v3];
  v6 = [*(a1 + 48) sharingInstanceIdentifier];
  [(PKAccountWebServicePassDetailsRequest *)v4 setSharingInstanceIdentifier:v6];

  v7 = *(*(a1 + 56) + 368);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_2_548;
  v8[3] = &unk_1E79D7370;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v7 accountPassDetailsRequest:v4 completion:v8];
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_2_548(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_3;
  v9[3] = &unk_1E79D7348;
  v10 = v5;
  v11 = a1[4];
  v12 = v6;
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __85__PKPaymentProvisioningController__setupAccountCredentialForProvisioning_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPassDetailsResponse:?];
  }

  v2 = *(a1 + 48);
  if (v2 && (PKAccountDisplayableError(v2, [*(a1 + 56) feature], 0, 0), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v4;
      (*(v5 + 16))(v5, *(a1 + 32) != 0);
      v4 = v6;
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
    v4 = 0;
  }
}

- (id)_filteredPaymentSetupProductSections:(id)sections
{
  v33 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v5 = sectionsCopy;
  if (self->_isProvisioningForAltAccount)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v5;
    obj = v5;
    v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v20 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v22 = v7;
          categories = [v7 categories];
          v10 = [categories countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(categories);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                identifier = [v14 identifier];
                if (([identifier isEqualToString:@"creditDebit"] & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", @"appExtensions") & 1) == 0)
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [categories countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }

          if ([v8 count])
          {
            [v22 setCategories:v8];
            [v19 addObject:v22];
          }
        }

        v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }

    v5 = v17;
  }

  else
  {
    v19 = sectionsCopy;
  }

  return v19;
}

- (id)_filterPaymentSetupProducts:(id)products
{
  v58 = *MEMORY[0x1E69E9840];
  productsCopy = products;
  if (!self->_targetDeviceSupportsTypeF)
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      felicaSecureElementIsAvailable = [targetDevice felicaSecureElementIsAvailable];
      v7 = 1;
      if (!felicaSecureElementIsAvailable)
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 2;
    }

    self->_targetDeviceSupportsTypeF = v7;
  }

  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _supportedFeatureIdentifierStrings = [(PKPaymentProvisioningController *)self _supportedFeatureIdentifierStrings];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = productsCopy;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    selfCopy = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        configuration = [v13 configuration];
        [configuration state];

        if (self->_allowedPaymentNetworks)
        {
          paymentOptions = [v13 paymentOptions];
          firstObject = [paymentOptions firstObject];

          v17 = PKPaymentNetworkNameForPaymentCredentialType([firstObject cardType]);
          if ([(NSArray *)self->_allowedPaymentNetworks containsObject:v17])
          {
            goto LABEL_17;
          }

          configuration2 = [v13 configuration];
          if ([configuration2 featureIdentifier] == 2)
          {

LABEL_17:
            goto LABEL_18;
          }

          configuration3 = [v13 configuration];
          v36 = v10;
          v37 = v11;
          v38 = v8;
          type = [configuration3 type];

          v40 = type == 5;
          v8 = v38;
          v11 = v37;
          v10 = v36;
          self = selfCopy;
          if (!v40)
          {
            goto LABEL_25;
          }
        }

LABEL_18:
        if ([(NSSet *)self->_requiredTransitNetworkIdentifiers count])
        {
          supportedTransitNetworkIdentifiers = [v13 supportedTransitNetworkIdentifiers];
          v20 = supportedTransitNetworkIdentifiers;
          if (!supportedTransitNetworkIdentifiers || ![supportedTransitNetworkIdentifiers count])
          {

LABEL_25:
            configuration4 = [v13 configuration];
LABEL_26:
            v24 = v13;
            v25 = 1;
            goto LABEL_27;
          }

          requiredTransitNetworkIdentifiers = self->_requiredTransitNetworkIdentifiers;
          v22 = [MEMORY[0x1E695DFD8] setWithArray:v20];
          LODWORD(requiredTransitNetworkIdentifiers) = [(NSSet *)requiredTransitNetworkIdentifiers intersectsSet:v22];

          if (!requiredTransitNetworkIdentifiers)
          {
            goto LABEL_25;
          }
        }

        if (([v13 allSupportedProtocols] & 4) != 0)
        {
          targetDeviceSupportsTypeF = self->_targetDeviceSupportsTypeF;
          configuration4 = [v13 configuration];
          if (targetDeviceSupportsTypeF != 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          configuration4 = [v13 configuration];
        }

        if ([configuration4 type] == 7)
        {
          featureIdentifier = [configuration4 featureIdentifier];
          v30 = PKFeatureIdentifierToString(featureIdentifier);
          v31 = [_supportedFeatureIdentifierStrings containsObject:v30];

          if (!v31 || !PKDeviceSupportsApplicationForFeatureIdentifier(featureIdentifier))
          {
            goto LABEL_26;
          }
        }

        allowedProductIdentifiers = self->_allowedProductIdentifiers;
        if (allowedProductIdentifiers)
        {
          productIdentifier = [v13 productIdentifier];
          v34 = [(NSSet *)allowedProductIdentifiers containsObject:productIdentifier];

          if (!v34)
          {
            goto LABEL_26;
          }
        }

        if ([v13 minimumSupportedAge] < 13 || self->_isCurrentUserUnder13 != 1)
        {
          [v13 setMeetsAgeRequirements:1];
          if (!self->_isProvisioningForAltAccount || [v13 minimumTargetUserSupportedAge] < 13 || self->_isTargetUserUnder13 != 1)
          {
            if ([configuration4 type] != 12)
            {
              goto LABEL_51;
            }

            criteriaIdentifier = [v13 criteriaIdentifier];
            v42 = [(PKPaymentOffersController *)self->_paymentOffersController paymentOfferCriteriaForIdentifier:criteriaIdentifier];
            if (v42)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

LABEL_51:
                [v48 addObject:v13];
                goto LABEL_31;
              }

              v43 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v56 = criteriaIdentifier;
                v44 = v43;
                v45 = "Payment offers controller criteria %@ is not of type installments";
LABEL_56:
                _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
              }
            }

            else
            {
              v43 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v56 = criteriaIdentifier;
                v44 = v43;
                v45 = "Payment offers controller doesnt have criteria for %@";
                goto LABEL_56;
              }
            }

            goto LABEL_28;
          }
        }

        v24 = v13;
        v25 = 0;
LABEL_27:
        [v24 setMeetsAgeRequirements:v25];
LABEL_28:
        v26 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          displayName = [v13 displayName];
          *buf = 138412290;
          v56 = displayName;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Product %@ is not supported by target device", buf, 0xCu);
        }

LABEL_31:
        ++v12;
      }

      while (v10 != v12);
      v46 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
      v10 = v46;
    }

    while (v46);
  }

  return v48;
}

- (void)_queryRequirementsForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  state = [credentialCopy state];
  requirementsResponse = [state requirementsResponse];

  if (requirementsResponse)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v10 = [[PKPaymentRequirementsRequest alloc] initWithPaymentCredential:credentialCopy];
    referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];

    if (referrerIdentifier)
    {
      referrerIdentifier2 = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
      [(PKPaymentRequirementsRequest *)v10 setReferrerIdentifier:referrerIdentifier2];
    }

    state2 = [credentialCopy state];
    v14 = [state2 sid];

    utility = self->_utility;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__PKPaymentProvisioningController__queryRequirementsForCredential_completion___block_invoke;
    v16[3] = &unk_1E79D73C0;
    v17 = credentialCopy;
    selfCopy = self;
    v19 = completionCopy;
    [(PKProvisioningUtility *)utility requestRequirements:v10 sid:v14 completion:v16];
  }
}

void __78__PKPaymentProvisioningController__queryRequirementsForCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentProvisioningController__queryRequirementsForCredential_completion___block_invoke_2;
  block[3] = &unk_1E79C4F68;
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKPaymentProvisioningController__queryRequirementsForCredential_completion___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32) || [*(a1 + 40) isRemoteCredential] && (objc_msgSend(*(a1 + 40), "remoteCredential"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "status"), v2, v3 == 2) && objc_msgSend(*(a1 + 32), "status") != 1)
  {
    v5 = [*(a1 + 48) displayableErrorForError:*(a1 + 56)];
  }

  else
  {
    v4 = [*(a1 + 40) state];
    [v4 setRequirementsResponse:*(a1 + 32)];

    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 64) + 16))();
}

- (void)_queryEligibilityForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  state = [credentialCopy state];
  eligibilityResponse = [state eligibilityResponse];

  if (eligibilityResponse)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v10 = [[PKPaymentEligibilityRequest alloc] initWithPaymentCredential:credentialCopy];
    referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];

    if (referrerIdentifier)
    {
      referrerIdentifier2 = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
      [(PKPaymentEligibilityRequest *)v10 setReferrerIdentifier:referrerIdentifier2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPaymentEligibilityRequest *)v10 setPrimaryAccountNumberInputMethod:1];
      [(PKPaymentEligibilityRequest *)v10 setExpirationInputMethod:1];
      [(PKPaymentEligibilityRequest *)v10 setCardholderNameInputMethod:1];
    }

    state2 = [credentialCopy state];
    v14 = [state2 sid];

    utility = self->_utility;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PKPaymentProvisioningController__queryEligibilityForCredential_completion___block_invoke;
    v17[3] = &unk_1E79D73E8;
    v17[4] = self;
    v18 = credentialCopy;
    v19 = v14;
    v20 = completionCopy;
    v16 = v14;
    [(PKProvisioningUtility *)utility requestEligibility:v10 sid:v16 completion:v17];
  }
}

void __77__PKPaymentProvisioningController__queryEligibilityForCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaymentProvisioningController__queryEligibilityForCredential_completion___block_invoke_2;
  v10[3] = &unk_1E79C4F40;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v5;
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __77__PKPaymentProvisioningController__queryEligibilityForCredential_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 304) & 1) == 0 && [*(a1 + 40) isFPANCredential] && objc_msgSend(*(a1 + 48), "supersededBy"))
  {
    v2 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "[%@] Excluding FPAN credential since the same card is already being offered as a previous card", &v11, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 48);
  if (v5 && !*(a1 + 64) && ([v5 eligibilityStatus] == 1 ? (v6 = v4) : (v6 = 0), objc_msgSend(*(a1 + 40), "state"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setEligibilityResponse:", *(a1 + 48)), v7, (v6 & 1) != 0))
  {
    v8 = 0;
    v9 = 1;
  }

  else if (*(a1 + 64))
  {
    v8 = [*(a1 + 32) displayableErrorForError:?];
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v8);
  }
}

- (void)requestRequirements:(id)requirements withCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  requirementsCopy = requirements;
  handlerCopy = handler;
  v8 = handlerCopy;
  state = self->_state;
  if (state)
  {
    if (handlerCopy)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PKPaymentProvisioningControllerStateToString(state);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: Requirements requested but state is: %@", &v12, 0xCu);
      }

      v8[2](v8, 0, 0);
    }
  }

  else
  {
    [(PKPaymentProvisioningController *)self _requestRequirements:requirementsCopy withCompletionHandler:handlerCopy];
  }
}

- (void)_requestRequirements:(id)requirements withCompletionHandler:(id)handler
{
  requirementsCopy = requirements;
  handlerCopy = handler;
  [(PKPaymentProvisioningController *)self _setLocalizedProgressDescription:0];
  paymentCredential = [requirementsCopy paymentCredential];
  currentCredential = self->_currentCredential;
  self->_currentCredential = paymentCredential;

  state = [(PKPaymentCredential *)self->_currentCredential state];
  requirementsResponse = [state requirementsResponse];

  if (requirementsResponse && [requirementsResponse status] == 1)
  {
    [(PKSecureElementProvisioningState *)self->_provisioningState setRequirementsResponse:requirementsResponse];
    [(PKPaymentProvisioningController *)self _setState:1 notify:1];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, requirementsResponse, 0);
    }
  }

  else
  {
    referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];

    if (referrerIdentifier)
    {
      referrerIdentifier2 = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
      [requirementsCopy setReferrerIdentifier:referrerIdentifier2];
    }

    _effectiveSessionIdentifier = [(PKPaymentProvisioningController *)self _effectiveSessionIdentifier];
    utility = self->_utility;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__PKPaymentProvisioningController__requestRequirements_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E79D7410;
    v16[4] = self;
    v17 = handlerCopy;
    [(PKProvisioningUtility *)utility requestRequirements:requirementsCopy sid:_effectiveSessionIdentifier completion:v16];
  }
}

void __78__PKPaymentProvisioningController__requestRequirements_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentProvisioningController__requestRequirements_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E79CB4E8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __78__PKPaymentProvisioningController__requestRequirements_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 168) setRequirementsResponse:?];
    v2 = *(*(a1 + 40) + 168);
    v3 = [*(a1 + 32) nonce];
    [v2 setNonce:v3];

    if ([*(a1 + 32) status] == 1)
    {
      [*(a1 + 40) _setState:1 notify:1];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)resolveAmbiguousRequirementsWithProductIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (!self->_state)
    {
      v9 = identifierCopy;
      requirementsResponse = [(PKSecureElementProvisioningState *)self->_provisioningState requirementsResponse];
      status = [requirementsResponse status];

      identifierCopy = v9;
      if (status == 2)
      {
        [(PKPaymentProvisioningController *)self _setState:1 notify:0];
        provisioningState = self->_provisioningState;
        v8 = [v9 copy];
        [(PKSecureElementProvisioningState *)provisioningState setProductIdentifier:v8];

        identifierCopy = v9;
      }
    }
  }
}

- (void)resolveRequirementsUsingProduct:(id)product
{
  productCopy = product;
  if (productCopy && !self->_state)
  {
    v6 = productCopy;
    [(PKPaymentProvisioningController *)self _setState:1 notify:0];
    v5 = [[PKPaymentRequirementsResponse alloc] initWithProduct:v6];
    [(PKSecureElementProvisioningState *)self->_provisioningState setRequirementsResponse:v5];

    productCopy = v6;
  }
}

- (void)resolveRequirementsUsingProvisioningMethodMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy && !self->_state)
  {
    v6 = metadataCopy;
    [(PKPaymentProvisioningController *)self _setState:1 notify:0];
    v5 = [[PKPaymentRequirementsResponse alloc] initWithProvisioningMethodMetadata:v6];
    [(PKSecureElementProvisioningState *)self->_provisioningState setRequirementsResponse:v5];

    metadataCopy = v6;
  }
}

- (void)resolveRequirementsForShareableCredential:(id)credential
{
  v12 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentCredential = self->_currentCredential;
    v10 = 138412290;
    v11 = currentCredential;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "resolivng requirements for credential %@", &v10, 0xCu);
  }

  if (!self->_state)
  {
    [(PKPaymentProvisioningController *)self _setState:1 notify:0];
    objc_storeStrong(&self->_currentCredential, credential);
    v8 = +[PKPaymentRequirementsResponse emptyRequirementsResponse];
    [(PKSecureElementProvisioningState *)self->_provisioningState setRequirementsResponse:v8];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v10 = 67109120;
    LODWORD(v11) = state;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "state is %d", &v10, 8u);
  }
}

- (void)resolveRequirementsForIssuerProvisioningExtensionCredential:(id)credential
{
  v12 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentCredential = self->_currentCredential;
    v10 = 138412290;
    v11 = currentCredential;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "resolivng requirements for credential %@", &v10, 0xCu);
  }

  if (!self->_state)
  {
    [(PKPaymentProvisioningController *)self _setState:1 notify:0];
    objc_storeStrong(&self->_currentCredential, credential);
    v8 = +[PKPaymentRequirementsResponse emptyRequirementsResponse];
    [(PKSecureElementProvisioningState *)self->_provisioningState setRequirementsResponse:v8];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    v10 = 67109120;
    LODWORD(v11) = state;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "state is %d", &v10, 8u);
  }
}

- (BOOL)setState:(int64_t)state forCredential:(id)credential
{
  v18 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentCredential = self->_currentCredential;
    v16 = 67109378;
    *v17 = state;
    *&v17[4] = 2112;
    *&v17[6] = currentCredential;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to set provisioning controller state to %d for credential %@", &v16, 0x12u);
  }

  v9 = 0;
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        state = self->_state;
        break;
      case 4:
        state = self->_state & 0xFFFFFFFFFFFFFFFELL;
        break;
      case 5:
        v10 = self->_state == 4;
        goto LABEL_17;
      default:
        goto LABEL_20;
    }

    v10 = state == 2;
  }

  else
  {
    switch(state)
    {
      case 0:
        v9 = 1;
        goto LABEL_20;
      case 1:
        v10 = self->_state == 0;
        break;
      case 2:
        v10 = self->_state == 1;
        break;
      default:
        goto LABEL_20;
    }
  }

LABEL_17:
  v9 = v10;
LABEL_20:
  if ([credentialCopy isHomeKeyCredential] & 1) != 0 || ((objc_msgSend(credentialCopy, "isAppleBalanceCredential") | v9))
  {
    [(PKPaymentProvisioningController *)self _setState:state notify:0];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"failed";
    v14 = self->_state;
    if (v12)
    {
      v13 = @"succeeded";
    }

    v16 = 138412546;
    *v17 = v13;
    *&v17[8] = 1024;
    *&v17[10] = v14;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Setting provisioning controller state %@, state is %d", &v16, 0x12u);
  }

  return v12;
}

- (void)resolveLocalEligibilityRequirementsForAppleBalanceCredential:(id)credential withCompletion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  isAppleBalanceCredential = [credentialCopy isAppleBalanceCredential];
  if (([credentialCopy isRemoteCredential] & 1) != 0 || (isAppleBalanceCredential & 1) != 0 || objc_msgSend(credentialCopy, "isLocalPassCredential"))
  {
    v9 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__39;
    v20[4] = __Block_byref_object_dispose__39;
    v21 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke;
    v19[3] = &unk_1E79D7438;
    v19[4] = v20;
    [(PKAsyncUnaryOperationComposer *)v9 addOperation:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke_574;
    v18[3] = &unk_1E79CD7C0;
    v18[4] = self;
    v18[5] = v20;
    [(PKAsyncUnaryOperationComposer *)v9 addOperation:v18];
    objc_initWeak(&location, self);
    null = [MEMORY[0x1E695DFB0] null];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke_582;
    v12[3] = &unk_1E79D7528;
    v15 = v20;
    objc_copyWeak(&v16, &location);
    v13 = credentialCopy;
    v14 = completionCopy;
    v11 = [(PKAsyncUnaryOperationComposer *)v9 evaluateWithInput:null completion:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    _Block_object_dispose(v20, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  if (([v8 ams_isActiveAccountCombined] & 1) == 0)
  {
    v9 = [v8 ams_activeiTunesAccount];

    if (v9)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Apple Account provisioning failed: iCloud and iTunes account do not match", v16, 2u);
      }

      v11 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr.isa, 0);
      v12 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_0.isa, 0);
      v13 = PKDisplayableErrorCustomWithType(-1, v11, v12, 0, 0);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  v7[2](v7, v6, *(*(*(a1 + 32) + 8) + 40) != 0);
}

void __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke_574(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E698DC80] sharedInstance];
  v9 = [v8 primaryAuthKitAccount];
  v10 = [v8 appleIDCountryCodeForAccount:v9];
  v11 = [*(*(a1 + 32) + 368) targetDevice];
  v12 = [v11 deviceRegion];

  if (([v12 isEqualToString:v10] & 1) == 0)
  {
    v13 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Apple Account provisioning failed: account region %@ and device region %@ do not match", &v19, 0x16u);
    }

    v14 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_1.isa, 0);
    v15 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_2.isa, 0);
    v16 = PKDisplayableErrorCustomWithType(-1, v14, v15, 0, 0);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v7[2](v7, v6, *(*(*(a1 + 40) + 8) + 40) != 0);
}

void __111__PKPaymentProvisioningController_resolveLocalEligibilityRequirementsForAppleBalanceCredential_withCompletion___block_invoke_582(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      objc_storeStrong(WeakRetained + 8, *(a1 + 32));
      [v8 _setState:1 notify:0];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 48) + 8) + 40));
  }
}

- (void)requestEligibility:(id)eligibility withCompletionHandler:(id)handler
{
  eligibilityCopy = eligibility;
  handlerCopy = handler;
  state = self->_state;
  if (state == 1)
  {
    goto LABEL_5;
  }

  if (!state)
  {
    paymentCredential = [eligibilityCopy paymentCredential];
    if (paymentCredential)
    {

      goto LABEL_5;
    }

    issuerIdentifier = [eligibilityCopy issuerIdentifier];
    if (issuerIdentifier)
    {
      v23 = issuerIdentifier;
      encryptedCardData = [eligibilityCopy encryptedCardData];

      if (encryptedCardData)
      {
LABEL_5:
        paymentCredential2 = [eligibilityCopy paymentCredential];
        state = [paymentCredential2 state];
        eligibilityResponse = [state eligibilityResponse];

        if (eligibilityResponse && [eligibilityResponse eligibilityStatus] == 1)
        {
          [(PKSecureElementProvisioningState *)self->_provisioningState setEligibilityResponse:eligibilityResponse];
          [(PKPaymentProvisioningController *)self _setState:2 notify:1];
          if (handlerCopy)
          {
            handlerCopy[2](handlerCopy, eligibilityResponse, 0);
          }

LABEL_30:

          goto LABEL_31;
        }

        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke;
        v38[3] = &unk_1E79CB778;
        v38[4] = &v39;
        v13 = PKBeginBackgroundTask(@"com.apple.passbook.cardChecking", v38);
        v40[3] = v13;
        referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];

        if (referrerIdentifier)
        {
          referrerIdentifier2 = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
          [eligibilityCopy setReferrerIdentifier:referrerIdentifier2];
        }

        addPaymentPassRequestConfiguration = [eligibilityCopy addPaymentPassRequestConfiguration];
        currentAddPaymentPassRequestConfiguration = self->_currentAddPaymentPassRequestConfiguration;
        self->_currentAddPaymentPassRequestConfiguration = addPaymentPassRequestConfiguration;

        if ([(PKPaymentProvisioningController *)self _isProvisioningPaymentAccount])
        {
          v18 = PKLocalizedAquamanString(&cfstr_ProgressContac.isa, 0);
        }

        else
        {
          paymentCredential3 = [eligibilityCopy paymentCredential];
          credentialType = [paymentCredential3 credentialType];

          if (credentialType == 135)
          {
            v21 = 0;
            goto LABEL_21;
          }

          v18 = PKCoreLocalizedString(&cfstr_ProgressContac_0.isa, 0);
        }

        v21 = v18;
LABEL_21:
        [(PKPaymentProvisioningController *)self _setLocalizedProgressDescription:v21];
        if (-[PKSecureElementProvisioningState hasNonce](self->_provisioningState, "hasNonce") && [eligibilityCopy requiresNonce])
        {
          useNonce = [(PKSecureElementProvisioningState *)self->_provisioningState useNonce];
          [eligibilityCopy setNonce:useNonce];
        }

        paymentCredential4 = [eligibilityCopy paymentCredential];
        state2 = [paymentCredential4 state];
        v28 = [state2 sid];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v31 = [(PKSecureElementProvisioningState *)self->_provisioningState sid];
          v32 = v31;
          v33 = &stru_1F227FD28;
          if (v31)
          {
            v33 = v31;
          }

          v30 = v33;
        }

        utility = self->_utility;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke_2;
        v35[3] = &unk_1E79D7488;
        v35[4] = self;
        v36 = handlerCopy;
        v37 = &v39;
        [(PKProvisioningUtility *)utility requestEligibility:eligibilityCopy sid:v30 completion:v35];

        _Block_object_dispose(&v39, 8);
        goto LABEL_30;
      }
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

LABEL_31:
}

void __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    PKEndBackgroundTask(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79D7460;
  v7 = a1[4];
  v8 = a1[5];
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v9 = v8;
  v10 = a1[6];
  v17 = v9;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__PKPaymentProvisioningController_requestEligibility_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 168);
    v4 = [v2 nonce];
    [v3 setNonce:v4];

    if (!*(a1 + 48))
    {
      [*(*(a1 + 40) + 168) setEligibilityResponse:*(a1 + 32)];
      v7 = [*(a1 + 32) eligibilityStatus];
      if (v7 == 3)
      {
        [*(a1 + 40) _passAlreadyProvisioned];
      }

      else if (v7 == 1)
      {
        [*(a1 + 40) _setState:2 notify:1];
      }
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    if (*(a1 + 48))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 32);
    }

    (*(v5 + 16))(v5, v6);
  }

  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (v8)
  {
    PKEndBackgroundTask(v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (void)acceptTerms
{
  v7 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 3)
  {
    self->_state = 4;
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PKPaymentProvisioningControllerStateToString(state);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Terms accept requested but found incorrect state: %@", &v5, 0xCu);
    }
  }
}

- (void)declineTerms
{
  v9 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 3)
  {
    self->_state = 1;
    [(PKSecureElementProvisioningState *)self->_provisioningState setEligibilityResponse:0];
    useNonce = [(PKSecureElementProvisioningState *)self->_provisioningState useNonce];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PKPaymentProvisioningControllerStateToString(state);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Terms decline requested but found incorrect state: %@", &v7, 0xCu);
    }
  }
}

- (void)resolveProvisioningForCredential:(id)credential
{
  if (!self->_state)
  {
    associatedCredentials = self->_associatedCredentials;
    credentialCopy = credential;
    [(NSMutableArray *)associatedCredentials removeObject:credentialCopy];
    [(PKPaymentProvisioningControllerCredentialQueue *)self->_credentialProvisioningQueue removeCredential:credentialCopy];

    currentCredential = self->_currentCredential;
    self->_currentCredential = 0;

    [(PKPaymentProvisioningController *)self _setState:5 notify:1];
  }
}

- (void)requestExternalizedAuthForWatchWithVisibleViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Requesting and storing externalized auth", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PKPaymentProvisioningController_requestExternalizedAuthForWatchWithVisibleViewController_completion___block_invoke;
  aBlock[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v13 = v9;
  v10 = _Block_copy(aBlock);
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    [targetDevice requestAndStoreExternalizedAuthWithVisibleViewController:controllerCopy completion:v10];
  }

  else if (objc_opt_respondsToSelector())
  {
    [targetDevice requestAndStoreExternalizedAuthWithCompletion:v10];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Target device doesn't support generating an externalized auth. Let the user proceed anyways because it might succeed", buf, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

void __103__PKPaymentProvisioningController_requestExternalizedAuthForWatchWithVisibleViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Requested externalized auth returned %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v3)
    {
      v6 = [v3 code];
      v7 = *(a1 + 32);
      if (v6 == 4)
      {
        (*(v7 + 16))(v7, 0, v3);
      }

      else
      {
        v8 = MEMORY[0x1E696ABC0];
        v9 = PKLocalizedPaymentString(&cfstr_WatchOnWristRe.isa, 0, *MEMORY[0x1E696A578]);
        v14[0] = v9;
        v13[1] = *MEMORY[0x1E696A598];
        v10 = PKLocalizedPaymentString(&cfstr_WatchOnWristRe_0.isa, 0);
        v14[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        v12 = [v8 errorWithDomain:@"PKDisplayableError" code:60000 userInfo:v11];
        (*(v7 + 16))(v7, 1, v12);
      }
    }

    else
    {
      (*(v5 + 16))(v5, 1, 0);
    }
  }
}

- (void)storeExternalizedAuth:(id)auth
{
  authCopy = auth;
  if (authCopy)
  {
    v6 = authCopy;
    objc_storeStrong(&self->_externalizedAuth, auth);
    authCopy = v6;
  }
}

- (void)requestProvisioning:(id)provisioning withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKPaymentProvisioningController_requestProvisioning_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E79D74B0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PKPaymentProvisioningController *)self requestProvisioning:provisioning withCompletion:v8];
}

uint64_t __77__PKPaymentProvisioningController_requestProvisioning_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)requestProvisioning:(id)provisioning withCompletion:(id)completion
{
  provisioningCopy = provisioning;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_state == 4)
  {
    v9 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(&location, self);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__39;
    v19[4] = __Block_byref_object_dispose__39;
    v20 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke;
    v17[3] = &unk_1E79D7500;
    objc_copyWeak(&v18, &location);
    v17[4] = v19;
    [(PKAsyncUnaryOperationComposer *)v9 addOperation:v17];
    null = [MEMORY[0x1E695DFB0] null];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke_3;
    v12[3] = &unk_1E79D7528;
    objc_copyWeak(&v16, &location);
    v13 = provisioningCopy;
    v14 = v8;
    v15 = v19;
    v11 = [(PKAsyncUnaryOperationComposer *)v9 evaluateWithInput:null completion:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    _Block_object_dispose(v19, 8);

    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained[8];
  if ([v9 credentialType] == 135 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v9, "isFromBackgroundProvisioning") & 1) == 0)
  {
    v10 = +[PKAccountService sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke_2;
    v11[3] = &unk_1E79D74D8;
    v14 = *(a1 + 32);
    v13 = v7;
    v12 = v6;
    [v10 backgroundProvisionInProgressForFeature:4 withCompletion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PKLocalizedAppleBalanceString(&cfstr_ErrorBackgroun.isa, 0);
    v4 = PKLocalizedAppleBalanceString(&cfstr_ErrorBackgroun_0.isa, 0);
    v5 = PKDisplayableErrorCustomWithType(-1, v3, v4, 0, 0);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void __70__PKPaymentProvisioningController_requestProvisioning_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a4 isCanceled])
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _requestProvisioning:*(a1 + 32) withCompletionHandler:*(a1 + 40)];
  }
}

- (void)_noteProvisioningDidBegin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKPaymentProvisioningController__noteProvisioningDidBegin__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__PKPaymentProvisioningController__noteProvisioningDidBegin__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 136);
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 136);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Received Note provisioning did begin (%li)", &buf, 0xCu);
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Note provisioning did begin to target device", &buf, 2u);
    }

    v4 = *(a1 + 32);
    v5 = [v4 _localizedProgressDescriptionForEnablingCard];
    [v4 _setLocalizedProgressDescription:v5];

    v6 = [*(*(a1 + 32) + 368) targetDevice];
    [v6 noteProvisioningDidBegin];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v10 = 0x2020000000;
    v11 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PKPaymentProvisioningController__noteProvisioningDidBegin__block_invoke_615;
    v8[3] = &unk_1E79CB778;
    v8[4] = &buf;
    v7 = PKBeginBackgroundTask(@"com.apple.passbook.cardProvisioning", v8);
    *(*(&buf + 1) + 24) = v7;
    *(*(a1 + 32) + 128) = v7;
    _Block_object_dispose(&buf, 8);
  }
}

void __60__PKPaymentProvisioningController__noteProvisioningDidBegin__block_invoke_615(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    PKEndBackgroundTask(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)_noteProvisioningDidEnd
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKPaymentProvisioningController__noteProvisioningDidEnd__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__PKPaymentProvisioningController__noteProvisioningDidEnd__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  --*(*(a1 + 32) + 136);
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 136);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Received Note provisioning did end (%li)", &v7, 0xCu);
  }

  v4 = *(*(a1 + 32) + 136);
  if (v4)
  {
    if (v4 < 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = v4;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Unbalance Note provisioning did begin/end current count:%li. Setting back to 0", &v7, 0xCu);
      }

      *(*(a1 + 32) + 136) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Note provisioning did end to target device", &v7, 2u);
    }

    v5 = *(*(a1 + 32) + 128);
    if (v5)
    {
      PKEndBackgroundTask(v5);
      *(*(a1 + 32) + 128) = 0;
    }

    else
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Unexpected invalid background task identifier", &v7, 2u);
      }
    }

    [*(a1 + 32) _setLocalizedProgressDescription:0];
    v6 = [*(*(a1 + 32) + 368) targetDevice];
    [v6 noteProvisioningDidEnd];
  }
}

- (id)_localizedProgressDescriptionForEnablingCard
{
  if ([(PKPaymentProvisioningController *)self _isProvisioningPaymentAccount]|| [(PKPaymentCredential *)self->_currentCredential credentialType]== 135)
  {
    longDescription = [(PKPaymentCredential *)self->_currentCredential longDescription];
    v4 = longDescription;
    if (longDescription)
    {
      PKLocalizedAquamanString(&cfstr_ProgressSettin.isa, &stru_1F2281668.isa, longDescription);
    }

    else
    {
      PKLocalizedAquamanString(&cfstr_ProgressSettin_0.isa, 0);
    }
    v5 = ;
  }

  else
  {
    v5 = PKCoreLocalizedString(&cfstr_ProgressEnabli.isa, 0);
  }

  return v5;
}

- (void)ingestSecureElementPassForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  currentCredential = self->_currentCredential;
  self->_currentCredential = credentialCopy;
  v9 = credentialCopy;

  _effectiveSessionIdentifier = [(PKPaymentProvisioningController *)self _effectiveSessionIdentifier];
  provisioningTracker = [(PKPaymentProvisioningController *)self provisioningTracker];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke;
  v15[3] = &unk_1E79D75A0;
  v15[4] = self;
  v16 = _effectiveSessionIdentifier;
  v17 = provisioningTracker;
  v18 = completionCopy;
  v12 = provisioningTracker;
  v13 = _effectiveSessionIdentifier;
  v14 = completionCopy;
  [(PKPaymentProvisioningController *)self _updateCredentialWithPaymentPass:v9 completion:v15];
}

void __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[PKPaymentProvisioningPassData alloc] initWithSecureElementPass:v3];
    [*(a1 + 32) _addOrUpdateProvisonedPassData:v4];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 16);
    v8 = *(v5 + 320);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke_2;
    v12[3] = &unk_1E79D7578;
    v12[4] = v5;
    v15 = *(a1 + 56);
    v13 = v4;
    v14 = *(a1 + 48);
    v9 = v4;
    [v7 ingestProvisioningPassData:v9 cloudStoreCoordinatorDelegate:v8 moreInfoURLs:0 ingestionProperties:0 sid:v6 completion:v12];
  }

  else
  {
    v10 = *(a1 + 56);
    v11 = PKDisplayableErrorForCommonType(1, 0);
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke_2(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke_3;
  v9[3] = &unk_1E79D7550;
  v9[4] = *(a1 + 32);
  v10 = v7;
  v14 = a3;
  v15 = a4;
  v13 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __83__PKPaymentProvisioningController_ingestSecureElementPassForCredential_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 456), *(a1 + 40));
  *(*(a1 + 32) + 297) = *(a1 + 72);
  *(*(a1 + 32) + 298) = *(a1 + 73);
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_requestProvisioning:(id)provisioning withCompletionHandler:(id)handler
{
  provisioningCopy = provisioning;
  handlerCopy = handler;
  provisioningTracker = [(PKPaymentProvisioningController *)self provisioningTracker];
  _effectiveSessionIdentifier = [(PKPaymentProvisioningController *)self _effectiveSessionIdentifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E79C4E28;
  aBlock[4] = self;
  v25 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_3;
  v34[3] = &unk_1E79D75C8;
  v34[4] = self;
  v9 = handlerCopy;
  v36 = v9;
  v10 = provisioningTracker;
  v35 = v10;
  v11 = _Block_copy(v34);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_4;
  v30[3] = &unk_1E79D75F0;
  v30[4] = self;
  v12 = provisioningCopy;
  v31 = v12;
  v13 = v9;
  v33 = v13;
  v14 = v10;
  v32 = v14;
  v15 = _Block_copy(v30);
  referrerIdentifier = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];

  if (referrerIdentifier)
  {
    referrerIdentifier2 = [(PKSecureElementProvisioningState *)self->_provisioningState referrerIdentifier];
    [v12 setReferrerIdentifier:referrerIdentifier2];
  }

  useNonce = [(PKSecureElementProvisioningState *)self->_provisioningState useNonce];
  [v12 setNonce:useNonce];

  utility = self->_utility;
  externalizedAuth = self->_externalizedAuth;
  cloudStoreCoordinator = self->_cloudStoreCoordinator;
  isAppleBalanceCredential = [(PKPaymentCredential *)self->_currentCredential isAppleBalanceCredential];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_647;
  v27[3] = &unk_1E79D7618;
  v28 = v15;
  v29 = v11;
  v23 = v11;
  v24 = v15;
  [(PKProvisioningUtility *)utility requestProvisioning:v12 externalizedAuth:externalizedAuth cloudStoreCoordinatorDelegate:cloudStoreCoordinator onStartPassDownload:v25 sid:_effectiveSessionIdentifier requireZoneCreationSuccess:isAppleBalanceCredential completion:v27];
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E79C4E28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setState:5 notify:1];
  v2 = [*(*(a1 + 32) + 368) targetDevice];
  v3 = [v2 deviceName];

  if ([v3 isEqualToString:@"iPhone"])
  {
    v4 = @"PROGRESS_DOWNLOADING_CARD_IPHONE";
  }

  else if ([v3 isEqualToString:@"Apple Watch"])
  {
    v4 = @"PROGRESS_DOWNLOADING_CARD_WATCH";
  }

  else if ([v3 isEqualToString:@"iPad"])
  {
    v4 = @"PROGRESS_DOWNLOADING_CARD_IPAD";
  }

  else
  {
    v4 = @"PROGRESS_DOWNLOADING_CARD_GENERIC";
  }

  v5 = PKCoreLocalizedString(&v4->isa, 0);
  [*(a1 + 32) _setLocalizedProgressDescription:v5];
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 168);
  v5 = [v3 provisioningResponse];
  [v4 setProvisioningResponse:v5];

  v6 = *(a1 + 32);
  if (*(v6 + 64))
  {
    [*(v6 + 40) removeObject:?];
    [*(*(a1 + 32) + 440) removeCredential:*(*(a1 + 32) + 64)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    v6 = *(a1 + 32);
  }

  v9 = *(v6 + 72);
  *(v6 + 72) = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v3 provisionedPasses];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) _addOrUpdateProvisonedPassData:*(*(&v22 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v15 = [v3 moreInfoItems];
  v16 = *(a1 + 32);
  v17 = *(v16 + 456);
  *(v16 + 456) = v15;

  *(*(a1 + 32) + 297) = [v3 expressModeSetupOptional];
  *(*(a1 + 32) + 298) = [v3 ampEnrollmentAvailable];
  if (*(a1 + 48))
  {
    v18 = [v3 provisionedPasses];
    v19 = [v18 firstObject];
    v20 = [v19 secureElementPass];
    v21 = [v20 paymentPass];

    (*(*(a1 + 48) + 16))();
  }
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(*(a1 + 32) + 168);
  v9 = a4;
  v10 = [a2 nonce];
  [v8 setNonce:v10];

  [*(a1 + 32) _handleProvisioningError:v7 forRequest:*(a1 + 40) pass:v9];
  v11 = [v7 domain];
  LODWORD(v10) = [v11 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

  if (v10 && [v7 code] == 40400)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Removing eligibility as next step token is invalid", v16, 2u);
    }

    [*(*(a1 + 32) + 168) setEligibilityResponse:0];
    v13 = *(a1 + 32);
    v14 = 0;
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = 1;
  }

  [v13 _setState:v14 notify:1];
  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, *(a1 + 48), v7);
  }
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_647(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_2_648;
  v9[3] = &unk_1E79D2668;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __78__PKPaymentProvisioningController__requestProvisioning_withCompletionHandler___block_invoke_2_648(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) provisionedPasses];
    v3 = [v2 firstObject];
    v7 = [v3 secureElementPass];

    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) provisioningResponse];
    (*(v4 + 16))(v4, v5, *(a1 + 32), v7);
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

- (void)_deletePaymentPass:(id)pass
{
  passCopy = pass;
  v5 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:passCopy];

  [(PKPaymentWebService *)self->_webService deprovisionForRequest:v5 completion:0];
}

- (void)verifyPassIsSupportedForExpressInLocalMarket:(id)market completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  marketCopy = market;
  completionCopy = completion;
  paymentPass = [marketCopy paymentPass];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke;
  aBlock[3] = &unk_1E79D7640;
  objc_copyWeak(&v31, &location);
  v8 = completionCopy;
  v30 = v8;
  v9 = _Block_copy(aBlock);
  if (PKLocationServicesEnabled())
  {
    context = [(PKPaymentWebService *)self->_webService context];
    configuration = [context configuration];
    marketsURL = [configuration marketsURL];

    if (marketsURL)
    {
      targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
      deviceClass = [targetDevice deviceClass];
      deviceVersion = [targetDevice deviceVersion];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_653;
      v24[3] = &unk_1E79D76E0;
      objc_copyWeak(&v28, &location);
      v27 = v9;
      v16 = targetDevice;
      v25 = v16;
      v26 = paymentPass;
      [PKPaymentMarketsConfiguration paymentMarketsConfigurationWithURL:marketsURL forDeviceClass:deviceClass version:deviceVersion completion:v24];

      objc_destroyWeak(&v28);
    }

    else
    {
      v20 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138412290;
        v34 = v21;
        v22 = v21;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "%@: No markets URL", buf, 0xCu);
      }

      (*(v9 + 2))(v9, 0, 0);
    }
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138412290;
      v34 = v18;
      v19 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "%@: Location services disabled or not authorized", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0, 0);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(WeakRetained + 22) stopUpdatingLocation];
  v6 = *(WeakRetained + 23);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(WeakRetained + 23);
    *(WeakRetained + 23) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9);
  }
}

void __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_653(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v6;
        v10 = v18;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%@: Failed to get market data: %@", buf, 0x16u);
      }

      (*(a1[6] + 2))();
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_654;
      aBlock[3] = &unk_1E79D76B8;
      objc_copyWeak(&v16, a1 + 7);
      v15 = a1[6];
      v12 = a1[4];
      v13 = a1[5];
      v14 = v5;
      v8 = _Block_copy(aBlock);
      [WeakRetained _startLocationSearchWithTimeout:v8 completion:10.0];

      objc_destroyWeak(&v16);
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_654(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  if (!v3)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = objc_opt_class();
      v8 = v26;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%@: Unable to get location", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) upgradeRequestForPass:*(a1 + 40)];
    v6 = [v5 paymentApplicationIdentifiers];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v5 = [*(a1 + 40) devicePrimaryPaymentApplication];
    v6 = [v9 initWithObjects:{v5, 0}];
  }

  v10 = v6;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_657;
  v22[3] = &unk_1E79D7668;
  v11 = *(a1 + 48);
  v23 = *(a1 + 40);
  v12 = v10;
  v24 = v12;
  v13 = [v11 marketsForLocation:v3 passingTest:v22];
  if ([v13 count])
  {
    v14 = [PKPaymentMarketsConfiguration closestMarketFromSet:v13 forLocation:v3];
    if (v14)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_659;
      v20[3] = &unk_1E79D7690;
      v21 = *(a1 + 56);
      [WeakRetained _loadMoreInfoItemForMarket:v14 eligibleMarkets:v13 completionHandler:v20];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = v16;
      v19 = [v17 uniqueID];
      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "%@: no express capable credential type found for the current location on pass: %@.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_19:
}

uint64_t __91__PKPaymentProvisioningController_verifyPassIsSupportedForExpressInLocalMarket_completion___block_invoke_657(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a2 expressCredentialTypes];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) devicePaymentApplications];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = *(a1 + 40);
      v11 = [v9 applicationIdentifier];
      if ([v10 containsObject:v11])
      {
        break;
      }

      v12 = [v9 supportsExpress];

      if (v12)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

LABEL_9:
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "paymentNetworkIdentifier")}];
    v14 = [v3 containsObject:v13];

    if (v14)
    {
      v15 = 1;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_12:
  v15 = 0;
LABEL_14:

  return v15;
}

- (void)provisionHomeKeyCredential:(id)credential completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  handlerCopy = handler;
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = credentialCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Provisioning HomeKey credential %@", buf, 0xCu);
  }

  if (self->_state == 4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4450;
    v23 = handlerCopy;
    v10 = _Block_copy(aBlock);
    objc_storeStrong(&self->_currentCredential, credential);
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      serialNumber = [credentialCopy serialNumber];
      v24 = serialNumber;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke_3;
      v18[3] = &unk_1E79D7708;
      v18[4] = self;
      v19 = credentialCopy;
      v20 = targetDevice;
      v21 = v10;
      [v20 provisionHomeKeyPassForSerialNumbers:v13 completionHandler:v18];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Target device does not response to provisionHomeKeyPassForSerialNumbers:completionHandler:", buf, 2u);
      }

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      (*(v10 + 2))(v10, v17);
    }

    v16 = v23;
    goto LABEL_12;
  }

  if (handlerCopy)
  {
    v14 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26 = @"Error: provisioning controller in incorrect state:";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v15];

    (*(handlerCopy + 2))(handlerCopy, v16);
LABEL_12:
  }
}

void __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __80__PKPaymentProvisioningController_provisionHomeKeyCredential_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v31 = [v5 count];
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Provisioning HomeKey credential returned provisionedPasses: %lu error: %@", buf, 0x16u);
  }

  if (!v6)
  {
    [*(a1 + 32) _setState:5 notify:1];
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    [*(*(a1 + 32) + 440) removeCredential:*(a1 + 40)];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if (!v11)
          {
            v11 = *(*(&v24 + 1) + 8 * i);
          }

          v14 = [PKPaymentProvisioningPassData alloc];
          v15 = [(PKPaymentProvisioningPassData *)v14 initWithSecureElementPass:v11, v24];
          [*(a1 + 32) _addOrUpdateProvisonedPassData:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);

      if (v11)
      {
        v16 = [*(a1 + 48) deviceName];
        v17 = [v16 isEqualToString:@"Apple Watch"];

        v18 = [v11 localizedDescription];
        v19 = PKPaymentSetupMoreInfoItemDictionaryForHomeExpress(v18, v17);

        v20 = [[PKPaymentSetupMoreInfoItem alloc] initWithMoreInfoDictionary:v19];
        v28 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        v22 = *(a1 + 32);
        v23 = *(v22 + 456);
        *(v22 + 456) = v21;

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
    }

    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Provisioned HomeKey with no error, but no provisioned pass not found!", buf, 2u);
    }

    goto LABEL_18;
  }

LABEL_19:
  (*(*(a1 + 56) + 16))();
}

- (void)_startLocationSearchWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E69E96A0];
  v8 = MEMORY[0x1E69E96A0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke;
  v10[3] = &unk_1E79C4D88;
  v10[4] = self;
  v11 = v7;
  v12 = completionCopy;
  timeoutCopy = timeout;
  v9 = completionCopy;
  dispatch_async(v7, v10);
}

void __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[23];
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 184);
    *(v4 + 184) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[24];
  if (v6)
  {
    v7 = _Block_copy(v6);
    v8 = *(a1 + 32);
    v9 = *(v8 + 192);
    *(v8 + 192) = 0;

    v7[2](v7, 0);
    v2 = *(a1 + 32);
  }

  v10 = v2[22];
  if (!v10)
  {
    if (!v2[25])
    {
      v11 = MEMORY[0x1E695FBE0];
      v12 = PKPassKitCoreBundle();
      v13 = [v11 newAssertionForBundle:v12 withReason:@"Passbook is displaying provisioning flow"];
      v14 = *(a1 + 32);
      v15 = *(v14 + 200);
      *(v14 + 200) = v13;
    }

    v16 = objc_alloc(MEMORY[0x1E695FBE8]);
    v17 = PKPassKitCoreBundle();
    v18 = [v17 bundlePath];
    v19 = [v16 initWithEffectiveBundlePath:v18 delegate:*(a1 + 32) onQueue:*(a1 + 40)];
    v20 = *(a1 + 32);
    v21 = *(v20 + 176);
    *(v20 + 176) = v19;

    [*(*(a1 + 32) + 176) setDesiredAccuracy:*MEMORY[0x1E6985CB8]];
    v10 = *(*(a1 + 32) + 176);
  }

  v22 = [v10 location];
  v23 = v22;
  if (!v22)
  {
    v23 = *(*(a1 + 32) + 536);
  }

  v24 = v23;

  if ([*(a1 + 32) _isValidLocation:v24])
  {
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v47 = objc_opt_class();
      v48 = 2112;
      v49 = v24;
      v26 = v47;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "%@: current location:%@ is valid will use it.", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*(a1 + 56) > 0.0)
    {
      v27 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = *(a1 + 56);
        *buf = 138412546;
        v47 = v28;
        v48 = 2048;
        v49 = v29;
        v30 = v28;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "%@: Start Location search with time out:%fsec", buf, 0x16u);
      }

      v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 40));
      v32 = *(a1 + 32);
      v33 = *(v32 + 184);
      *(v32 + 184) = v31;

      v34 = *(*(a1 + 32) + 184);
      v35 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      objc_initWeak(buf, *(a1 + 32));
      v36 = *(*(a1 + 32) + 184);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_673;
      handler[3] = &unk_1E79C9D80;
      objc_copyWeak(&v45, buf);
      dispatch_source_set_event_handler(v36, handler);
      dispatch_resume(*(*(a1 + 32) + 184));
      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    v37 = a1 + 32;
    objc_initWeak(buf, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_674;
    aBlock[3] = &unk_1E79D7730;
    objc_copyWeak(&v43, buf);
    v42 = *(a1 + 48);
    v38 = _Block_copy(aBlock);
    v39 = _Block_copy(v38);
    v40 = *(*v37 + 192);
    *(*v37 + 192) = v39;

    [*(*v37 + 176) startUpdatingLocation];
    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
  }
}

void __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_673(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = objc_opt_class();
      v3 = v8;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "%@: Location search timed out", &v7, 0xCu);
    }

    v4 = WeakRetained[24];
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = WeakRetained[24];
      WeakRetained[24] = 0;

      v5[2](v5, 0);
    }
  }
}

void __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_674(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_2;
  block[3] = &unk_1E79CF2C0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __78__PKPaymentProvisioningController__startLocationSearchWithTimeout_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained[22] stopUpdatingLocation];
    v4 = v9[22];
    v9[22] = 0;

    v5 = v9[25];
    v9[25] = 0;

    v3 = v9;
    v6 = v9[23];
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = v9[23];
      v9[23] = 0;

      v3 = v9;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, *(a1 + 32));
      v3 = v9;
    }
  }
}

- (BOOL)_isValidLocation:(id)location
{
  locationCopy = location;
  date = [MEMORY[0x1E695DF00] date];
  [locationCopy horizontalAccuracy];
  if (v5 >= *MEMORY[0x1E6985CB8])
  {
    v8 = 0;
  }

  else
  {
    timestamp = [locationCopy timestamp];
    [date timeIntervalSinceDate:timestamp];
    v8 = v7 < 300.0;
  }

  return v8;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = locationsCopy;
    v9 = v23;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: received locations:%@", buf, 0x16u);
  }

  if (self->_locationCompletion)
  {
    objc_initWeak(buf, self);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = locationsCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([(PKPaymentProvisioningController *)self _isValidLocation:v14])
          {
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __70__PKPaymentProvisioningController_locationManager_didUpdateLocations___block_invoke;
            v15[3] = &unk_1E79C54B8;
            objc_copyWeak(&v16, buf);
            v15[4] = v14;
            dispatch_async(MEMORY[0x1E69E96A0], v15);
            objc_destroyWeak(&v16);
            goto LABEL_14;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_destroyWeak(buf);
  }
}

void __70__PKPaymentProvisioningController_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[24];
    if (v4)
    {
      v6 = v3;
      (*(v4 + 16))(v4, *(a1 + 32));
      v5 = v6[24];
      v6[24] = 0;

      v3 = v6;
    }
  }
}

- (id)_eligibleMarketNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = namesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        analyticsReportingNameValue = [*(*(&v13 + 1) + 8 * i) analyticsReportingNameValue];
        if ([analyticsReportingNameValue length])
        {
          [v4 addObject:analyticsReportingNameValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];

  return v11;
}

- (void)_loadMoreInfoItemForMarket:(id)market eligibleMarkets:(id)markets completionHandler:(id)handler
{
  marketCopy = market;
  handlerCopy = handler;
  notificationAssetIdentifier = [marketCopy notificationAssetIdentifier];
  v10 = +[PKMobileAssetManager sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentProvisioningController__loadMoreInfoItemForMarket_eligibleMarkets_completionHandler___block_invoke;
  v13[3] = &unk_1E79D7758;
  v14 = marketCopy;
  v15 = handlerCopy;
  v13[4] = self;
  v11 = marketCopy;
  v12 = handlerCopy;
  [v10 fetchMarketNotificationAssetsForIdentifier:notificationAssetIdentifier isDiscretionary:0 completionHandler:v13];
}

void __96__PKPaymentProvisioningController__loadMoreInfoItemForMarket_eligibleMarkets_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 368);
  v4 = a2;
  v5 = [v3 targetDevice];
  v6 = [v5 deviceName];
  v7 = [v6 isEqualToString:@"Apple Watch"];

  v8 = *(a1 + 48);
  v9 = [PKPaymentSetupMoreInfoItem alloc];
  v11 = PKPaymentSetupMoreInfoItemDictionaryForExpressUpgradeMarket(v4, v7, [*(a1 + 40) expressUpgradeHideDisableAction] == 1, 0, 0);

  v10 = [(PKPaymentSetupMoreInfoItem *)v9 initWithMoreInfoDictionary:v11];
  (*(v8 + 16))(v8, v10);
}

- (void)removeProvisionedPasses
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_provisionedPasses;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        secureElementPass = [*(*(&v14 + 1) + 8 * v7) secureElementPass];
        paymentPass = [secureElementPass paymentPass];

        if (paymentPass)
        {
          targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
          webService = self->_webService;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __58__PKPaymentProvisioningController_removeProvisionedPasses__block_invoke;
          v12[3] = &unk_1E79C9640;
          v13 = paymentPass;
          [targetDevice paymentWebService:webService removePass:v13 withCompletionHandler:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [(NSMutableOrderedSet *)self->_provisionedPasses removeAllObjects];
}

void __58__PKPaymentProvisioningController_removeProvisionedPasses__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error removing provisioned pass. pass=%@, error=%@", &v8, 0x16u);
    }
  }
}

- (void)_passAlreadyProvisioned
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController _passAlreadyProvisioned. Calling download all payment passes.", v5, 2u);
  }

  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  [targetDevice downloadAllPaymentPassesForPaymentWebService:self->_webService];
}

- (void)_handleProvisioningError:(id)error forRequest:(id)request pass:(id)pass
{
  v22 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  passCopy = pass;
  eligibilityResponse = [requestCopy eligibilityResponse];
  applicationIdentifier = [eligibilityResponse applicationIdentifier];
  v11 = applicationIdentifier;
  if (applicationIdentifier)
  {
    applicationIdentifier2 = applicationIdentifier;
  }

  else
  {
    applicationIdentifier2 = [requestCopy applicationIdentifier];
  }

  v13 = applicationIdentifier2;

  subCredentialIdentifier = [requestCopy subCredentialIdentifier];
  v15 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v13;
    v20 = 2112;
    v21 = subCredentialIdentifier;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPaymentProvisioningController handling provisioning error for aid: %@ subcredentialId: %@", &v18, 0x16u);
  }

  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v17 = targetDevice;
  if (subCredentialIdentifier)
  {
    if (objc_opt_respondsToSelector())
    {
      [v17 deleteKeyMaterialForSubCredentialId:subCredentialIdentifier];
    }
  }

  else if (v13)
  {
    [targetDevice paymentWebService:self->_webService deleteApplicationWithAID:v13];
  }

  if (passCopy)
  {
    [(PKPaymentProvisioningController *)self _deletePaymentPass:passCopy];
  }
}

- (void)_setLocalizedProgressDescription:(id)description
{
  v4 = [description copy];
  localizedProgressDescription = self->_localizedProgressDescription;
  self->_localizedProgressDescription = v4;
  v6 = v4;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"PKPaymentProvisioningControllerLocalizedProgressDescriptionDidChangeNotification" object:self];
}

- (BOOL)_isProvisioningPaymentAccount
{
  if ([(PKPaymentCredential *)self->_currentCredential credentialType]== 123)
  {
    return 1;
  }

  currentAddPaymentPassRequestConfiguration = self->_currentAddPaymentPassRequestConfiguration;

  return [(PKAddPaymentPassRequestConfiguration *)currentAddPaymentPassRequestConfiguration isPaymentAccount];
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    os_unfair_lock_lock(&self->_delegatesLock);
    [(NSHashTable *)self->_delegates addObject:delegateCopy];

    os_unfair_lock_unlock(&self->_delegatesLock);
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    os_unfair_lock_lock(&self->_delegatesLock);
    [(NSHashTable *)self->_delegates removeObject:delegateCopy];

    os_unfair_lock_unlock(&self->_delegatesLock);
  }
}

- (id)associatedCredentialsForDefaultBehaviour
{
  associatedCredentials = self->_associatedCredentials;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKPaymentProvisioningController_associatedCredentialsForDefaultBehaviour__block_invoke;
  v5[3] = &unk_1E79C8588;
  v5[4] = self;
  v3 = [(NSMutableArray *)associatedCredentials pk_objectsPassingTest:v5];

  return v3;
}

uint64_t __75__PKPaymentProvisioningController_associatedCredentialsForDefaultBehaviour__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalPassCredential] & 1) != 0 || (objc_msgSend(v3, "isPeerPaymentCredential") & 1) != 0 || (objc_msgSend(v3, "isAccountCredential") & 1) != 0 || (objc_msgSend(v3, "isShareableCredential") & 1) != 0 || (objc_msgSend(v3, "isLocalAppletSubcredentialPassCredential"))
  {
    v4 = 1;
  }

  else if ([v3 isRemoteCredential])
  {
    v6 = [v3 remoteCredential];
    v7 = [v6 cardType];
    if (v7 == 2)
    {
      v10 = 1;
      LOBYTE(v9) = 1;
    }

    else if (v7)
    {
      LOBYTE(v9) = 0;
      v10 = 1;
    }

    else
    {
      v8 = [v6 credentialType];
      v9 = ((v8 - 103) < 7) & (0x61u >> (v8 - 103));
      v10 = (v8 - 129) < 0xFFFFFFFFFFFFFFFELL;
    }

    v11 = *(*(a1 + 32) + 448);
    v12 = [v6 productIdentifier];
    v13 = [v11 productForProductIdentifier:v12];

    v14 = [v13 configuration];
    v15 = [v14 type];

    v16 = [v6 status];
    v17 = v15 != 9 && v10;
    if (v16 == 2)
    {
      v17 = 1;
    }

    if (v9)
    {
      v4 = v16 == 2;
    }

    else
    {
      v4 = v17;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)allCredentials
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  associatedCredentials = [(PKPaymentProvisioningController *)self associatedCredentials];
  v5 = associatedCredentials;
  v6 = MEMORY[0x1E695E0F0];
  if (associatedCredentials)
  {
    v7 = associatedCredentials;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [v3 addObjectsFromArray:v7];

  purchaseCredentials = [(PKPaymentProvisioningController *)self purchaseCredentials];
  v9 = purchaseCredentials;
  if (purchaseCredentials)
  {
    v10 = purchaseCredentials;
  }

  else
  {
    v10 = v6;
  }

  [v3 addObjectsFromArray:v10];

  return v3;
}

- (id)associatedCredentialsForProductIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allCredentials = [(PKPaymentProvisioningController *)self allCredentials];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKPaymentProvisioningController_associatedCredentialsForProductIdentifier___block_invoke;
  v9[3] = &unk_1E79C8588;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allCredentials pk_objectsPassingTest:v9];

  return v7;
}

uint64_t __77__PKPaymentProvisioningController_associatedCredentialsForProductIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 setupProductIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)isPasscodeUpgradeRequired
{
  eligibilityResponse = [(PKSecureElementProvisioningState *)self->_provisioningState eligibilityResponse];
  region = [eligibilityResponse region];

  if (PKEnforceUpgradedPasscodePolicyForAllRegions())
  {
    v5 = 1;
  }

  else if (region)
  {
    v5 = [(PKPaymentWebService *)self->_webService isChinaRegionIdentifier:region];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)preflightPasscodeUpgradeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v6 = self->_webService;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__39;
  v31[4] = __Block_byref_object_dispose__39;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke;
  v28[3] = &unk_1E79CD7C0;
  v7 = v6;
  v29 = v7;
  v30 = v35;
  [(PKAsyncUnaryOperationComposer *)v5 addOperation:v28];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_3;
  v23[3] = &unk_1E79D77D0;
  v8 = v7;
  v24 = v8;
  v25 = v31;
  v26 = v33;
  v27 = v35;
  [(PKAsyncUnaryOperationComposer *)v5 addOperation:v23];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_5;
  v18[3] = &unk_1E79D7820;
  v9 = v8;
  v21 = v35;
  v22 = v31;
  v19 = v9;
  selfCopy = self;
  [(PKAsyncUnaryOperationComposer *)v5 addOperation:v18];
  null = [MEMORY[0x1E695DFB0] null];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_7;
  v13[3] = &unk_1E79D7870;
  v11 = completionCopy;
  v14 = v11;
  v15 = v35;
  v16 = v31;
  v17 = v33;
  v12 = [(PKAsyncUnaryOperationComposer *)v5 evaluateWithInput:null completion:v13];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) targetDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 32) targetDevice];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_2;
    v11[3] = &unk_1E79D7780;
    v14 = *(a1 + 40);
    v13 = v7;
    v12 = v6;
    [v10 notePasscodeUpgradeFlowWillBeginWithCompletion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) targetDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 32) targetDevice];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_4;
    v16[3] = &unk_1E79D77A8;
    v19 = *(a1 + 48);
    v20 = *(a1 + 40);
    v18 = v7;
    v17 = v6;
    [v10 enforceUpgradedPasscodePolicyWithCompletion:v16];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22[0] = @"Error: target device does not support enforceUpgradedPasscodePolicyWithCompletion:";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v12];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    (*(v7 + 2))(v7, v6, 1);
  }
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_4(void *a1, char a2, id obj)
{
  *(*(a1[6] + 8) + 24) = a2;
  *(*(a1[7] + 8) + 24) = obj == 0;
  objc_storeStrong((*(a1[8] + 8) + 40), obj);
  v5 = obj;
  (*(a1[5] + 16))();
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) targetDevice];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 32) targetDevice];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_6;
    v14[3] = &unk_1E79D77F8;
    v17 = *(a1 + 48);
    v16 = v7;
    v15 = v6;
    [v10 startRequiringUpgradedPasscodeWithCompletion:v14];
  }

  else
  {
    v11 = [*(*(a1 + 40) + 368) targetDevice];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [*(*(a1 + 40) + 368) targetDevice];
      [v13 startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:0];
    }

    (*(v7 + 2))(v7, v6, 0);
  }
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_6(void *a1, int a2, id obj)
{
  *(*(a1[6] + 8) + 24) = obj == 0;
  objc_storeStrong((*(a1[7] + 8) + 40), obj);
  v5 = obj;
  (*(a1[5] + 16))();
}

void __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_7(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_8;
  v2[3] = &unk_1E79D7848;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __74__PKPaymentProvisioningController_preflightPasscodeUpgradeWithCompletion___block_invoke_8(void *a1)
{
  result = a1[4];
  if (result)
  {
    if ((*(*(a1[5] + 8) + 24) & 1) == 0 && !*(*(a1[6] + 8) + 40))
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      v4 = *(a1[6] + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      result = a1[4];
    }

    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)passcodeUpgradeCompleted:(BOOL)completed
{
  if (self->_state == 2)
  {
    if (completed)
    {
      self->_state = 3;
      goto LABEL_8;
    }

    self->_state = 1;
    goto LABEL_7;
  }

  if (!completed)
  {
LABEL_7:
    [(PKPaymentProvisioningController *)self _endRequiringUpgradedPasscodeIfNecessary];
  }

LABEL_8:
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    targetDevice2 = [(PKPaymentWebService *)self->_webService targetDevice];
    [targetDevice2 notePasscodeUpgradeFlowDidEnd];
  }
}

- (void)_endRequiringUpgradedPasscodeIfNecessary
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    targetDevice2 = [(PKPaymentWebService *)self->_webService targetDevice];
    [targetDevice2 endRequiringUpgradedPasscodeIfNecessary];
  }
}

- (int64_t)availableSecureElementPassSpaces
{
  v17 = *MEMORY[0x1E69E9840];
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (targetDevice && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [targetDevice paymentWebService:self->_webService passesOfType:1];
    v5 = [v4 pk_countObjectsPassingTest:&__block_literal_global_699_0];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Target device did not respond to passesOfType. Assuming it has no passes", &v15, 0xCu);
    }

    v5 = 0;
    if (!targetDevice)
    {
LABEL_13:
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Target device did not respond to max payment cards. Assuming local maximum.", &v15, 0xCu);
      }

      maximumPaymentCards = PKMaxPaymentCards();
      if (!maximumPaymentCards)
      {
        goto LABEL_9;
      }

LABEL_16:
      v11 = maximumPaymentCards - v5;
      goto LABEL_17;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    goto LABEL_13;
  }

  maximumPaymentCards = [targetDevice maximumPaymentCards];
  if (maximumPaymentCards)
  {
    goto LABEL_16;
  }

LABEL_9:
  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: Unknown maximum SE cards returned. Returning Not Found.", &v15, 2u);
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:

  return v11;
}

+ (id)watchWebServiceForIssuerProvisioning
{
  if (PKIsPairedWithWatch() && (v2 = objc_alloc_init(getNPKCompanionAgentConnectionClass_2[0]()), v3 = [v2 isIssuerAppProvisioningSupported], v2, v3))
  {
    v4 = objc_alloc_init(getNPKCompanionAgentConnectionClass_2[0]());
    watchPaymentWebService = [v4 watchPaymentWebService];
  }

  else
  {
    watchPaymentWebService = 0;
  }

  return watchPaymentWebService;
}

- (void)cleanupTransferredCredentialFromSourceDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  localPassCredential = [device localPassCredential];
  paymentPass = [localPassCredential paymentPass];
  uniqueID = [paymentPass uniqueID];
  v9 = [uniqueID copy];

  if ([paymentPass isRemotePass])
  {
    v10 = objc_alloc_init(getNPKCompanionAgentConnectionClass_2[0]());
    watchPaymentWebService = [v10 watchPaymentWebService];
    targetDevice = [watchPaymentWebService targetDevice];
  }

  else
  {
    watchPaymentWebService = +[PKPaymentWebService sharedService];
    targetDevice = [watchPaymentWebService targetDevice];
  }

  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PKPaymentProvisioningController_cleanupTransferredCredentialFromSourceDevice_completion___block_invoke;
    v15[3] = &unk_1E79C4568;
    v16 = v9;
    v17 = completionCopy;
    [targetDevice paymentWebService:watchPaymentWebService removePass:paymentPass withCompletionHandler:v15];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Error: Target device does not support pass deletion", v14, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __91__PKPaymentProvisioningController_cleanupTransferredCredentialFromSourceDevice_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentProvisioningController_cleanupTransferredCredentialFromSourceDevice_completion___block_invoke_2;
  v7[3] = &unk_1E79C4F18;
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __91__PKPaymentProvisioningController_cleanupTransferredCredentialFromSourceDevice_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1 && !*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Deleted pass: %@ from source device", &v6, 0xCu);
    }
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Failed to delete pass from source device with error: %@", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)triggerWatchProvisioningForAppleBalanceCredential:(id)credential
{
  if ([credential isAppleBalanceCredential] && PKIsPairedWithWatch())
  {
    v3 = objc_alloc_init(getNPKCompanionAgentConnectionClass_2[0]());
    [v3 provisionPassForRemoteCredentialWithType:135 andIdentifier:0 completion:&__block_literal_global_705_0];
  }
}

void __85__PKPaymentProvisioningController_triggerWatchProvisioningForAppleBalanceCredential___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"failed";
    if (a2)
    {
      v6 = @"succeeded";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Provisioning Apple Balance pass to Watch %@ with error %@", &v7, 0x16u);
  }
}

- (void)updateStateAfterProvisioning:(id)provisioning credential:(id)credential passes:(id)passes moreInfoItems:(id)items
{
  credentialCopy = credential;
  itemsCopy = items;
  provisioningState = self->_provisioningState;
  passesCopy = passes;
  provisioningCopy = provisioning;
  requirementsResponse = [provisioningCopy requirementsResponse];
  [(PKSecureElementProvisioningState *)provisioningState setRequirementsResponse:requirementsResponse];

  v15 = self->_provisioningState;
  eligibilityResponse = [provisioningCopy eligibilityResponse];
  [(PKSecureElementProvisioningState *)v15 setEligibilityResponse:eligibilityResponse];

  v17 = self->_provisioningState;
  provisioningResponse = [provisioningCopy provisioningResponse];
  [(PKSecureElementProvisioningState *)v17 setProvisioningResponse:provisioningResponse];

  v19 = self->_provisioningState;
  productIdentifier = [provisioningCopy productIdentifier];
  [(PKSecureElementProvisioningState *)v19 setProductIdentifier:productIdentifier];

  v21 = self->_provisioningState;
  referrerIdentifier = [provisioningCopy referrerIdentifier];

  [(PKSecureElementProvisioningState *)v21 setReferrerIdentifier:referrerIdentifier];
  v23 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:passesCopy];

  provisionedPasses = self->_provisionedPasses;
  self->_provisionedPasses = v23;

  objc_storeStrong(&self->_moreInfoItems, items);
  if (credentialCopy)
  {
    [(NSMutableArray *)self->_associatedCredentials removeObject:credentialCopy];
  }
}

- (id)_effectiveSessionIdentifier
{
  state = [(PKPaymentCredential *)self->_currentCredential state];
  v4 = [state sid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKSecureElementProvisioningState *)self->_provisioningState sid];
    v8 = v7;
    v9 = &stru_1F227FD28;
    if (v7)
    {
      v9 = v7;
    }

    v6 = v9;
  }

  return v6;
}

- (void)finishOptionalExpressModeSetupForPass:(id)pass withProvisioningTracker:(id)tracker completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  trackerCopy = tracker;
  completionCopy = completion;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (PKTargetDeviceSupportsExpress(targetDevice))
  {
    objc_initWeak(location, self);
    webService = self->_webService;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke;
    v14[3] = &unk_1E79D78B8;
    objc_copyWeak(&v18, location);
    v14[4] = self;
    v15 = passCopy;
    v16 = trackerCopy;
    v17 = completionCopy;
    [targetDevice paymentWebService:webService handlePotentialExpressPass:v15 withCompletionHandler:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[PKPaymentProvisioningController finishOptionalExpressModeSetupForPass:withProvisioningTracker:completion:]";
      v20 = 2112;
      v21 = targetDevice;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "%s called for target device (%@) which does not support express. File a radar!", location, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke_2;
    block[3] = &unk_1E79C4F68;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v7 = v5;
    v8 = v3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke_3;
  v6[3] = &unk_1E79C44A0;
  v8 = *(a1 + 64);
  v7 = *(a1 + 48);
  [v2 handleOptionalExpressModeSetupDidFinishForPass:v3 withExpressModes:v4 provisioningTracker:v5 completion:v6];
}

uint64_t __108__PKPaymentProvisioningController_finishOptionalExpressModeSetupForPass_withProvisioningTracker_completion___block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) count] != 0;
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)handleOptionalExpressModeSetupDidFinishForPass:(id)pass withExpressModes:(id)modes provisioningTracker:(id)tracker completion:(id)completion
{
  v32[2] = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  completionCopy = completion;
  serialNumber = [pass serialNumber];
  v12 = serialNumber;
  if (serialNumber)
  {
    v13 = serialNumber;
  }

  else
  {
    v13 = &stru_1F227FD28;
  }

  v14 = v13;

  if (modesCopy)
  {
    allObjects = [modesCopy allObjects];
    v16 = [allObjects componentsJoinedByString:{@", "}];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1F227FD28;
    }

    v19 = v18;

    v31[0] = @"automaticExpressModes";
    v31[1] = @"passSerialNumber";
    v32[0] = v19;
    v32[1] = v14;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v29 = @"passSerialNumber";
    v30 = v14;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  }

  self->_expressModeSetupOptional = 0;
  utility = self->_utility;
  provisioningState = self->_provisioningState;
  selfCopy = self;
  provisioningResponse = [(PKSecureElementProvisioningState *)provisioningState provisioningResponse];
  moreInfoURLs = [provisioningResponse moreInfoURLs];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __130__PKPaymentProvisioningController_handleOptionalExpressModeSetupDidFinishForPass_withExpressModes_provisioningTracker_completion___block_invoke;
  v27[3] = &unk_1E79C4838;
  v27[4] = selfCopy;
  v28 = completionCopy;
  v26 = completionCopy;
  [(PKProvisioningUtility *)utility downloadMoreInfoItemsFrom:moreInfoURLs metadata:v20 sid:&stru_1F227FD28 completion:v27];
}

void __130__PKPaymentProvisioningController_handleOptionalExpressModeSetupDidFinishForPass_withExpressModes_provisioningTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__PKPaymentProvisioningController_handleOptionalExpressModeSetupDidFinishForPass_withExpressModes_provisioningTracker_completion___block_invoke_2;
  block[3] = &unk_1E79C4D60;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __130__PKPaymentProvisioningController_handleOptionalExpressModeSetupDidFinishForPass_withExpressModes_provisioningTracker_completion___block_invoke_2(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v2 = [*(a1 + 40) copy];
    v3 = v5[57];
    v5[57] = v2;

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }
}

- (id)provisioningTracker
{
  v2 = [[PKPaymentProvisioningTracker alloc] initWithPaymentProvisioningController:self];

  return v2;
}

- (BOOL)hasPaymentPass
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    targetDevice2 = [(PKPaymentWebService *)self->_webService targetDevice];
    v6 = [targetDevice2 paymentWebService:self->_webService passesOfType:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 count] != 0;

  return v7;
}

- (BOOL)hasCreditPaymentPass
{
  v2 = [(PKPaymentProvisioningController *)self _paymentPassWithPaymentMethodType:2];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasDebitPaymentPass
{
  v2 = [(PKPaymentProvisioningController *)self _paymentPassWithPaymentMethodType:1];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_paymentPassWithPaymentMethodType:(unint64_t)type
{
  v27 = *MEMORY[0x1E69E9840];
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    targetDevice2 = [(PKPaymentWebService *)self->_webService targetDevice];
    v8 = [targetDevice2 paymentWebService:self->_webService passesOfType:1];
  }

  else
  {
    v8 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        paymentPass = [v15 paymentPass];
        devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
        paymentType = [devicePrimaryPaymentApplication paymentType];

        if (paymentType == type)
        {
          paymentPass2 = [v15 paymentPass];
          [array addObject:paymentPass2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v20 = [array copy];

  return v20;
}

- (id)_displayableErrorOverrideForUnderlyingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v5)
  {
    v6 = PKDisplayableErrorForCommonType(2, errorCopy);
    goto LABEL_14;
  }

  domain2 = [errorCopy domain];
  v8 = [domain2 isEqualToString:@"PKWebServiceErrorDomain"];

  if (v8)
  {
    code = [errorCopy code];
    if ((code - 2) < 4 || !code)
    {
      localizedFailureReason = [errorCopy localizedFailureReason];

      if (!localizedFailureReason)
      {
LABEL_7:
        localizedFailureReason2 = PKCoreLocalizedString(&cfstr_CouldNotAddCar.isa, 0);
        localizedRecoverySuggestion = PKCoreLocalizedString(&cfstr_CouldNotAddCar_0.isa, 0);
LABEL_11:
        v16 = localizedRecoverySuggestion;
        v6 = PKDisplayableErrorCustomWithType(-1, localizedFailureReason2, localizedRecoverySuggestion, errorCopy, 0);

        goto LABEL_14;
      }

LABEL_10:
      localizedFailureReason2 = [errorCopy localizedFailureReason];
      localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
      goto LABEL_11;
    }
  }

  else
  {
    domain3 = [errorCopy domain];
    v14 = [domain3 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

    if (v14)
    {
      localizedFailureReason3 = [errorCopy localizedFailureReason];

      if (localizedFailureReason3)
      {
        goto LABEL_10;
      }

      if (![errorCopy code])
      {
        goto LABEL_7;
      }
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)displayableErrorForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"PKDisplayableError"];

  if (v6)
  {
    v7 = errorCopy;
  }

  else
  {
    v8 = [(PKPaymentProvisioningController *)self _displayableErrorOverrideForUnderlyingError:errorCopy];
    if (v8)
    {
      goto LABEL_6;
    }

    v7 = PKDisplayableErrorForCommonType(0, errorCopy);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (id)displayableErrorForProvisioningError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"PKDisplayableError"];

  if (v6)
  {
    v7 = errorCopy;
LABEL_10:
    v10 = v7;
    goto LABEL_11;
  }

  if (errorCopy)
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"PKWebServiceErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 1)
      {
        v10 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v10 = [(PKPaymentProvisioningController *)self _displayableErrorOverrideForUnderlyingError:errorCopy];
  if (!v10)
  {
    v7 = PKDisplayableErrorForCommonType(1, errorCopy);
    goto LABEL_10;
  }

LABEL_11:

  return v10;
}

- (void)accountAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PKPaymentProvisioningController_accountAdded___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = addedCopy;
  selfCopy = self;
  v5 = addedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __48__PKPaymentProvisioningController_accountAdded___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) accountIdentifier];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating setup products because account added: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _reloadSetupProducts];
}

- (void)_reloadSetupProducts
{
  supportedFeatureIdentifierStrings = self->_supportedFeatureIdentifierStrings;
  self->_supportedFeatureIdentifierStrings = 0;

  supportedFeatureIdentifierStringsForAccountProvisioning = self->_supportedFeatureIdentifierStringsForAccountProvisioning;
  self->_supportedFeatureIdentifierStringsForAccountProvisioning = 0;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKPaymentProvisioningController__reloadSetupProducts__block_invoke;
  v5[3] = &unk_1E79C9640;
  v5[4] = self;
  [(PKPaymentProvisioningController *)self updatePaymentSetupProductModelWithCompletionHandler:v5];
}

uint64_t __55__PKPaymentProvisioningController__reloadSetupProducts__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _informDelegatesOfAccountsUpdated];
  }

  return result;
}

- (void)featureApplicationAdded:(id)added
{
  addedCopy = added;
  applicationState = [addedCopy applicationState];
  if ((applicationState - 4) < 5 || applicationState == 16)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKPaymentProvisioningController_featureApplicationAdded___block_invoke;
    v7[3] = &unk_1E79C4DD8;
    v7[4] = self;
    v8 = addedCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __59__PKPaymentProvisioningController_featureApplicationAdded___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 448) setupProductsOfType:7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v21 = *v29;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v6 configuration];
        v8 = [v7 featureIdentifier];
        v9 = [*(a1 + 40) feature];

        if (v8 == v9)
        {
          v10 = [v6 featureApplications];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * i) applicationIdentifier];
                v17 = [*(a1 + 40) applicationIdentifier];
                v18 = [v16 isEqualToString:v17];

                if (v18)
                {
                  v19 = v11;
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v19 = [v11 mutableCopy];
          [v19 addObject:*(a1 + 40)];
          v20 = [v19 copy];
          [v6 setFeatureApplications:v20];

LABEL_17:
          v4 = v21;
          v3 = v22;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }
}

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKPaymentProvisioningController_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = removedCopy;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __61__PKPaymentProvisioningController_featureApplicationRemoved___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 448) setupProductsOfType:7];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v2 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v31;
    v21 = *v31;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        v7 = [v6 configuration];
        v8 = [v7 featureIdentifier];
        v9 = [*(a1 + 40) feature];

        if (v8 == v9)
        {
          v25 = v5;
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v24 = v6;
          v11 = [v6 featureApplications];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [v16 applicationIdentifier];
                v18 = [*(a1 + 40) applicationIdentifier];
                v19 = [v17 isEqualToString:v18];

                if ((v19 & 1) == 0)
                {
                  [v10 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }

          v20 = [v10 copy];
          [v24 setFeatureApplications:v20];

          v4 = v21;
          v3 = v22;
          v5 = v25;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v3);
  }
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  applicationState = [changedCopy applicationState];
  if ((applicationState - 4) < 5 || applicationState == 16)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PKPaymentProvisioningController_featureApplicationChanged___block_invoke;
    v7[3] = &unk_1E79C4DD8;
    v7[4] = self;
    v8 = changedCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    [(PKPaymentProvisioningController *)self featureApplicationRemoved:changedCopy];
  }
}

void __61__PKPaymentProvisioningController_featureApplicationChanged___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 448) setupProductsOfType:7];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v2 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v31;
    v21 = *v31;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        v7 = [v6 configuration];
        v8 = [v7 featureIdentifier];
        v9 = [*(a1 + 40) feature];

        if (v8 == v9)
        {
          v25 = v5;
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v24 = v6;
          v11 = [v6 featureApplications];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [v16 applicationIdentifier];
                v18 = [*(a1 + 40) applicationIdentifier];
                v19 = [v17 isEqualToString:v18];

                if (v19)
                {
                  v16 = *(a1 + 40);
                }

                [v10 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }

          v20 = [v10 copy];
          [v24 setFeatureApplications:v20];

          v4 = v21;
          v3 = v22;
          v5 = v25;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v3);
  }
}

- (void)didReceivePendingProvisioningUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentProvisioningController_didReceivePendingProvisioningUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = updateCopy;
  selfCopy = self;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__PKPaymentProvisioningController_didReceivePendingProvisioningUpdate___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x25uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 32);
    *buf = 138412290;
    v40 = v28;
    _os_log_debug_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEBUG, "Received pending provisioning change: %@", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 pendingProvisioning];
        v10 = [*(*(a1 + 40) + 280) indexOfObject:v9];
        v11 = [v8 type];
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            if (v10 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v9 setStatus:5];
              [*(*(a1 + 40) + 280) setObject:v9 atIndexedSubscript:v10];
              v16 = [*(*(a1 + 40) + 40) count];
              if (v16)
              {
                v17 = v16;
                v18 = 0;
                while (1)
                {
                  v19 = [*(*(a1 + 40) + 40) objectAtIndexedSubscript:v18];
                  v20 = [v9 representsCredential:v19];

                  if (v20)
                  {
                    break;
                  }

                  if (v17 == ++v18)
                  {
                    goto LABEL_29;
                  }
                }

                v14 = *(*(a1 + 40) + 40);
                v15 = v18;
                goto LABEL_28;
              }
            }
          }

          else if (v11 == 3 && v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = *(*(a1 + 40) + 280);
            v15 = v10;
LABEL_28:
            [v14 removeObjectAtIndex:v15];
          }
        }

        else
        {
          if (v11)
          {
            if (v11 != 1)
            {
              goto LABEL_29;
            }

            v12 = *(*(a1 + 40) + 280);
            if (v10 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v12 setObject:v9 atIndexedSubscript:v10];
              goto LABEL_29;
            }
          }

          else
          {
            v12 = *(*(a1 + 40) + 280);
          }

          [v12 addObject:v9];
        }

LABEL_29:
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock((*(a1 + 40) + 88));
  v21 = [*(*(a1 + 40) + 80) allObjects];
  os_unfair_lock_unlock((*(a1 + 40) + 88));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v27 provisioningControllerUpdatedPendingProvisioning:{*(a1 + 40), v29}];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v24);
  }
}

- (void)paymentWebService:(id)service didQueueTSMConnectionForTaskID:(unint64_t)d
{
  serviceCopy = service;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPaymentProvisioningController_paymentWebService_didQueueTSMConnectionForTaskID___block_invoke;
  block[3] = &unk_1E79CBF50;
  v9 = serviceCopy;
  selfCopy = self;
  dCopy = d;
  v7 = serviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__PKPaymentProvisioningController_paymentWebService_didQueueTSMConnectionForTaskID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 368))
  {
    v3 = *(v1 + 24);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    LODWORD(v3) = [v3 containsObject:v4];

    if (v3)
    {
      v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 40) target:sel__updateLocalizedProgressAndInvalidateTimer selector:0 userInfo:0 repeats:20.0];
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      if ([*(a1 + 40) _isProvisioningPaymentAccount])
      {
        PKLocalizedAquamanString(&cfstr_ProgressConfig.isa, 0);
      }

      else
      {
        PKCoreLocalizedString(&cfstr_ProgressConfig_0.isa, 0);
      }
      v8 = ;
      [*(a1 + 40) _setLocalizedProgressDescription:v8];
    }
  }
}

- (void)paymentWebService:(id)service didCompleteTSMConnectionForTaskID:(unint64_t)d
{
  serviceCopy = service;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentProvisioningController_paymentWebService_didCompleteTSMConnectionForTaskID___block_invoke;
  block[3] = &unk_1E79CBF50;
  v9 = serviceCopy;
  selfCopy = self;
  dCopy = d;
  v7 = serviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__PKPaymentProvisioningController_paymentWebService_didCompleteTSMConnectionForTaskID___block_invoke(void *a1)
{
  v1 = a1[5];
  if (a1[4] == *(v1 + 368))
  {
    v3 = *(v1 + 24);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    LODWORD(v3) = [v3 containsObject:v4];

    if (v3)
    {
      v5 = a1[5];

      [v5 _updateLocalizedProgressAndInvalidateTimer];
    }
  }
}

- (void)_updateLocalizedProgressAndInvalidateTimer
{
  [(NSTimer *)self->_descriptionTimer invalidate];
  descriptionTimer = self->_descriptionTimer;
  self->_descriptionTimer = 0;

  _localizedProgressDescriptionForEnablingCard = [(PKPaymentProvisioningController *)self _localizedProgressDescriptionForEnablingCard];
  [(PKPaymentProvisioningController *)self _setLocalizedProgressDescription:_localizedProgressDescriptionForEnablingCard];
}

- (void)proofingFlowManager:(id)manager completedProofingWithError:(id)error
{
  identityProofingManagerCompletionHandler = self->_identityProofingManagerCompletionHandler;
  if (identityProofingManagerCompletionHandler)
  {
    identityProofingManagerCompletionHandler[2](identityProofingManagerCompletionHandler, error);
  }
}

- (void)proofingFlowManager:(id)manager didChangeActiveConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  -[PKPaymentProvisioningController _applyIdentityConfiguration:activeConfigurations:completion:](self, "_applyIdentityConfiguration:activeConfigurations:completion:", [configurationsCopy count] != 0, configurationsCopy, &__block_literal_global_735);
}

void __85__PKPaymentProvisioningController_proofingFlowManager_didChangeActiveConfigurations___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "Identity Proofing configurations have been updated, model updated", v1, 2u);
  }
}

- (void)deleteCredential:(id)credential completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  handlerCopy = handler;
  if ([credentialCopy isDeletable])
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if ([credentialCopy isCarKeyTerminalPairingCredential] && objc_msgSend(credentialCopy, "credentialType") == 301 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      configuration = [credentialCopy configuration];
      v10 = [PKPendingCarKeyProvisioning uniqueIdentifierForCarKeyConfiguration:configuration];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke;
      v26[3] = &unk_1E79D0850;
      v26[4] = self;
      v27 = credentialCopy;
      v28 = handlerCopy;
      [targetDevice removePendingProvisioningOfType:@"CarKey" withUniqueIdentifier:v10 completion:v26];

      v11 = v27;
    }

    else
    {
      if (![credentialCopy isFPANCredential] || (objc_opt_respondsToSelector() & 1) == 0)
      {
        remoteCredential = [credentialCopy remoteCredential];
        configuration = [remoteCredential paymentPass];

        if (configuration)
        {
          v15 = [[PKPaymentDeleteRequest alloc] initWithPaymentPass:configuration];
          webService = self->_webService;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_744;
          v18[3] = &unk_1E79D7908;
          v19 = credentialCopy;
          selfCopy = self;
          v21 = handlerCopy;
          [(PKPaymentWebService *)webService deleteForRequest:v15 completion:v18];
        }

        else
        {
          v17 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = credentialCopy;
            _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Attempted to delete pass for credential %@, but missing pass", buf, 0xCu);
          }

          if (!handlerCopy)
          {
            configuration = 0;
            goto LABEL_21;
          }

          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:0 userInfo:0];
          (*(handlerCopy + 2))(handlerCopy, v15);
        }

LABEL_21:
        goto LABEL_22;
      }

      fpanCredential = [credentialCopy fpanCredential];
      configuration = [fpanCredential descriptor];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_741;
      v22[3] = &unk_1E79D78E0;
      v23 = credentialCopy;
      selfCopy2 = self;
      v25 = handlerCopy;
      [targetDevice deleteFPANCardWithDescriptor:configuration completion:v22];

      v11 = v23;
    }

    goto LABEL_21;
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = credentialCopy;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to delete credential %@, but it isn't deletable", buf, 0xCu);
  }

  if (handlerCopy)
  {
    targetDevice = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, targetDevice);
LABEL_22:
  }
}

uint64_t __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke(void *a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1[4] + 408);
    v10[0] = a1[5];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v3 arrayByExcludingObjectsInArray:v4];
    v6 = a1[4];
    v7 = *(v6 + 408);
    *(v6 + 408) = v5;

    if (![*(a1[4] + 408) count])
    {
      [*(a1[4] + 448) removeCarKeyCategory];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_2;
      block[3] = &unk_1E79C4E28;
      block[4] = a1[4];
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating setup products because all pending car keys were removed", v4, 2u);
  }

  return [*(a1 + 32) _reloadSetupProducts];
}

void __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_741(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Deleted FPAN credential %@, error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_742;
  block[3] = &unk_1E79C4EF0;
  v10 = v3;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_742(void *a1)
{
  if (!a1[4])
  {
    [*(a1[5] + 40) removeObjectIdenticalTo:a1[6]];
  }

  result = a1[7];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_744(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v7;
    v17 = 2048;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Deleted credential %@, return result: %lu error: %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_745;
  block[3] = &unk_1E79C4EF0;
  v12 = v5;
  v10 = *(a1 + 32);
  v8 = v10.i64[0];
  v13 = vextq_s8(v10, v10, 8uLL);
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__PKPaymentProvisioningController_deleteCredential_completionHandler___block_invoke_745(void *a1)
{
  if (!a1[4])
  {
    [*(a1[5] + 40) removeObjectIdenticalTo:a1[6]];
  }

  result = a1[7];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_addOrUpdateProvisonedPassData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = dataCopy;
    v5 = [(NSMutableOrderedSet *)self->_provisionedPasses indexOfObject:dataCopy];
    provisionedPasses = self->_provisionedPasses;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)provisionedPasses addObject:v7];
    }

    else
    {
      [(NSMutableOrderedSet *)provisionedPasses replaceObjectAtIndex:v5 withObject:v7];
    }

    dataCopy = v7;
  }
}

- (PKPaymentPass)provisionedPass
{
  firstObject = [(NSMutableOrderedSet *)self->_provisionedPasses firstObject];
  secureElementPass = [firstObject secureElementPass];
  paymentPass = [secureElementPass paymentPass];

  return paymentPass;
}

- (BOOL)suppressDefaultCardholderNameField
{
  webService = [(PKPaymentProvisioningController *)self webService];
  targetDevice = [webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  webService2 = [(PKPaymentProvisioningController *)self webService];
  context = [webService2 context];
  configuration = [context configuration];
  v9 = [configuration suppressCardholderNameFieldForRegion:deviceRegion];

  return v9;
}

@end