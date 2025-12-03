@interface PKPaymentWebServiceTargetDevice
+ (id)localTargetDevice;
- (BOOL)claimSecureElementForCurrentUser;
- (BOOL)paymentWebService:(id)service canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier;
- (BOOL)paymentWebServiceSupportsAccounts:(id)accounts;
- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)registration;
- (BOOL)secureElementIsAvailable;
- (PKPaymentWebServiceTargetDevice)init;
- (id)appleAccountInformation;
- (id)deviceIDSIdentifier;
- (id)identityPassesOfTypes:(id)types;
- (id)passesOfCardType:(int64_t)type;
- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)service;
- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)service;
- (id)trustedDeviceEnrollmentInfoForWebService:(id)service;
- (id)upgradeRequestForPass:(id)pass;
- (unint64_t)secureElementOwnershipStateForCurrentUser;
- (void)_addPass:(id)pass properties:(id)properties completion:(id)completion;
- (void)_cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)_canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)_paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion;
- (void)_paymentWebService:(id)service pass:(id)pass withExpressConfig:(id)config hasDisqualifyingConflicts:(id)conflicts;
- (void)_performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion;
- (void)_updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion;
- (void)_validateCommonPreconditionsWithCompletion:(id)completion;
- (void)accountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountsWithCompletion:(id)completion;
- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)addPendingProvisionings:(id)provisionings completion:(id)completion;
- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion;
- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)carKeyAcceptInvitationWithInvitationIdentifier:(id)identifier activationCode:(id)code analyticsUpdateConfig:(id)config completion:(id)completion;
- (void)carKeyAccountAttestationRequestForCredential:(id)credential completion:(id)completion;
- (void)carKeyDecryptData:(id)data credential:(id)credential ephemeralPublicKey:(id)key completion:(id)completion;
- (void)carKeyGetPretrackRequestForKeyWithInvitationIdentifier:(id)identifier completion:(id)completion;
- (void)carKeyGetPretrackShareDataForShare:(id)share completion:(id)completion;
- (void)carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier:(id)identifier transportIdentifier:(id)transportIdentifier completion:(id)completion;
- (void)carKeyHandleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completion:(id)completion;
- (void)carKeyPreWarmForManufacturer:(id)manufacturer completion:(id)completion;
- (void)carKeyRejectInvitation:(id)invitation completion:(id)completion;
- (void)carKeyRetryActivationCodeWithInvitationIdentifier:(id)identifier activationCode:(id)code completion:(id)completion;
- (void)carKeyRoutingInformationForInvitationWithIdentifier:(id)identifier transportIdentifier:(id)transportIdentifier completion:(id)completion;
- (void)carKeySetAccountAttestation:(id)attestation forCredential:(id)credential completion:(id)completion;
- (void)carKeySetEncryptedProductPlanIdentifierContainer:(id)container invitationIdentifier:(id)identifier completion:(id)completion;
- (void)carKeyStartShareAcceptanceFlow:(id)flow transportIdentifier:(id)identifier completion:(id)completion;
- (void)carKeyUpdateTrackingAttestation:(id)attestation forCredential:(id)credential encryptedContainer:(id)container completion:(id)completion;
- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion;
- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion;
- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion;
- (void)dealloc;
- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion;
- (void)deleteInvitation:(id)invitation completion:(id)completion;
- (void)deviceSupportedRadioTechnologiesWithCompletion:(id)completion;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)featureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error;
- (void)fpanDescriptorAndCredentialForFPAN:(id)n descriptor:(id *)descriptor credential:(id *)credential error:(id *)error;
- (void)generateIdentityProvisioningAttestationsWithISOCredential:(id)credential pairingID:(id)d completion:(id)completion;
- (void)insertFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)noteForegroundVerificationObserverActive:(BOOL)active;
- (void)notePasscodeUpgradeFlowDidEnd;
- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion;
- (void)noteProvisioningDidBegin;
- (void)noteProvisioningDidEnd;
- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service configurationDataWithCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service deleteApplicationWithAID:(id)d;
- (void)paymentWebService:(id)service deviceMetadataWithFields:(unint64_t)fields completion:(id)completion;
- (void)paymentWebService:(id)service didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic;
- (void)paymentWebService:(id)service generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion;
- (void)paymentWebService:(id)service handlePotentialExpressPass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service matchingInvitationOnDevice:(id)device withTimeout:(unint64_t)timeout completion:(id)completion;
- (void)paymentWebService:(id)service provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion;
- (void)paymentWebService:(id)service registrationDataWithAuthToken:(id)token completionHandler:(id)handler;
- (void)paymentWebService:(id)service registrationDataWithCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service removePass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service requestPassUpgrade:(id)upgrade pass:(id)pass completion:(id)completion;
- (void)paymentWebService:(id)service setNewAuthRandom:(id)random;
- (void)paymentWebService:(id)service setNewAuthRandomIfNecessaryReturningPairingState:(id)state;
- (void)paymentWebService:(id)service signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service subcredentialInvitationsWithCompletion:(id)completion;
- (void)paymentWebService:(id)service updateAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)paymentWebService:(id)service updateMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)renewAppleAccountWithCompletionHandler:(id)handler;
- (void)requestBackgroundRegistrationForCredential:(id)credential withCompletion:(id)completion;
- (void)saveProvisioningSupportData:(id)data forPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)serviceProviderDataForSecureElementPass:(id)pass encrypted:(BOOL)encrypted completion:(id)completion;
- (void)signatureForAuthToken:(id)token webService:(id)service completion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion;
- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion;
- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)updatedAccountsForProvisioningWithCompletion:(id)completion;
@end

@implementation PKPaymentWebServiceTargetDevice

+ (id)localTargetDevice
{
  if (qword_1ED6D16F8 != -1)
  {
    dispatch_once(&qword_1ED6D16F8, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_187;

  return v3;
}

void __52__PKPaymentWebServiceTargetDevice_localTargetDevice__block_invoke()
{
  v0 = objc_alloc_init(PKPaymentWebServiceTargetDevice);
  v1 = _MergedGlobals_187;
  _MergedGlobals_187 = v0;
}

- (PKPaymentWebServiceTargetDevice)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentWebServiceTargetDevice;
  v2 = [(PKPaymentWebServiceTargetDevice *)&v8 init];
  if (v2 && (PKRunningInPassd() & 1) == 0)
  {
    v3 = +[PKPassLibrary sharedInstance];
    passLibrary = v2->_passLibrary;
    v2->_passLibrary = v3;

    v5 = +[PKPaymentService paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = v5;
  }

  return v2;
}

- (id)appleAccountInformation
{
  v2 = +[PKAppleAccountManager sharedInstance];
  appleAccountInformation = [v2 appleAccountInformation];

  return appleAccountInformation;
}

- (void)dealloc
{
  [(PKAssertion *)self->_provisioningAssertion invalidate];
  [(PKAssertion *)self->_requiringUpgradedPasscodeAssertion invalidate];
  [(PKAssertion *)self->_activePasscodeUpgradeFlowAssertion invalidate];
  v3.receiver = self;
  v3.super_class = PKPaymentWebServiceTargetDevice;
  [(PKPaymentWebServiceTargetDevice *)&v3 dealloc];
}

- (void)noteProvisioningDidBegin
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Note Provisioning Did Begin.", buf, 2u);
  }

  if (!self->_provisioningAssertionActive)
  {
    self->_provisioningAssertionActive = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processIdentifier = [processInfo processIdentifier];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", processName, processIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PKPaymentWebServiceTargetDevice_noteProvisioningDidBegin__block_invoke;
    v8[3] = &unk_1E79C5218;
    v8[4] = self;
    [PKAssertion acquireAssertionOfType:1 withReason:v7 completion:v8];
  }
}

void __59__PKPaymentWebServiceTargetDevice_noteProvisioningDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v5 + 24), a2);
    [v4 setInvalidateWhenBackgrounded:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PKPaymentWebServiceTargetDevice_noteProvisioningDidBegin__block_invoke_2;
    v8[3] = &unk_1E79C4E28;
    v8[4] = v6;
    [v7 setInvalidationHandler:v8];
  }

  else
  {
    *(v5 + 32) = 0;
  }
}

void __59__PKPaymentWebServiceTargetDevice_noteProvisioningDidBegin__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)noteProvisioningDidEnd
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Note Provisioning Did End.", v6, 2u);
  }

  provisioningAssertion = self->_provisioningAssertion;
  self->_provisioningAssertion = 0;
  v5 = provisioningAssertion;

  [(PKAssertion *)v5 invalidate];
}

- (id)deviceIDSIdentifier
{
  v2 = IDSCopyLocalDeviceUniqueID();

  return v2;
}

- (void)noteForegroundVerificationObserverActive:(BOOL)active
{
  if (active)
  {
    if (!self->_verificationAssertionActive)
    {
      self->_verificationAssertionActive = 1;
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      processIdentifier = [processInfo processIdentifier];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", processName, processIdentifier];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __76__PKPaymentWebServiceTargetDevice_noteForegroundVerificationObserverActive___block_invoke;
      v9[3] = &unk_1E79C5218;
      v9[4] = self;
      [PKAssertion acquireAssertionOfType:2 withReason:v7 completion:v9];
    }
  }

  else
  {
    verificationAssertion = self->_verificationAssertion;

    [(PKAssertion *)verificationAssertion invalidate];
  }
}

void __76__PKPaymentWebServiceTargetDevice_noteForegroundVerificationObserverActive___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v5 + 40), a2);
    [v4 setInvalidateWhenBackgrounded:1];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPaymentWebServiceTargetDevice_noteForegroundVerificationObserverActive___block_invoke_2;
    v8[3] = &unk_1E79C4E28;
    v8[4] = v6;
    [v7 setInvalidationHandler:v8];
  }

  else
  {
    *(v5 + 48) = 0;
  }
}

void __76__PKPaymentWebServiceTargetDevice_noteForegroundVerificationObserverActive___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)paymentWebService:(id)service queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  topicCopy = topic;
  completionCopy = completion;
  _paymentDevice = [serviceCopy _paymentDevice];
  hasRegistrationRegionMap = [_paymentDevice hasRegistrationRegionMap];

  v12 = PKLogFacilityTypeGetObject(7uLL);
  v13 = v12;
  if ((hasRegistrationRegionMap & 1) == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "NF appears to be missing its registration region map. Re-setting per <rdar://33865268>", buf, 2u);
    }

    AnalyticsSendEvent();
    context = [serviceCopy context];
    tSMURLStringByPushTopic = [context TSMURLStringByPushTopic];

    context2 = [serviceCopy context];
    primaryRegion = [context2 primaryRegion];
    trustedServiceManagerPushTopic = [primaryRegion trustedServiceManagerPushTopic];

    _paymentDevice2 = [serviceCopy _paymentDevice];
    [_paymentDevice2 setRegistrationRegionMap:tSMURLStringByPushTopic primaryRegionTopic:trustedServiceManagerPushTopic];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = topicCopy;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Queueing TSM connection on local SE for %@", buf, 0xCu);
  }

  _paymentDevice3 = [serviceCopy _paymentDevice];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __119__PKPaymentWebServiceTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
  v22[3] = &unk_1E79C4E50;
  v23 = completionCopy;
  v21 = completionCopy;
  [_paymentDevice3 queueConnectionToTrustedServiceManagerForPushTopic:topicCopy withCompletion:v22];
}

uint64_t __119__PKPaymentWebServiceTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)serviceProviderDataForSecureElementPass:(id)pass encrypted:(BOOL)encrypted completion:(id)completion
{
  encryptedCopy = encrypted;
  passCopy = pass;
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = +[PKPassLibrary sharedInstance];
    if (encryptedCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke;
      v13[3] = &unk_1E79C5688;
      v10 = &v14;
      v14 = completionCopy;
      [v9 encryptedServiceProviderDataForSecureElementPass:passCopy completion:v13];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke_50;
      v11[3] = &unk_1E79C5240;
      v10 = &v12;
      v12 = completionCopy;
      [v9 serviceProviderDataForSecureElementPass:passCopy completion:v11];
    }
  }
}

void __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 localizedDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Received nil service provider data with error %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:{0, @"data"}];
    v12 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 localizedDescription];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Received nil service provider data with error %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)paymentWebService:(id)service configurationDataWithCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    _paymentDevice = [service _paymentDevice];
    configurationData = [_paymentDevice configurationData];

    if (configurationData)
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A278];
      v12[0] = @"Failed to obtain device configuration data";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v10];
    }

    handlerCopy[2](handlerCopy, configurationData, v8);
  }
}

- (void)paymentWebService:(id)service registrationDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  appleAccountInformation = [(PKPaymentWebServiceTargetDevice *)self appleAccountInformation];
  authorizationHeader = [appleAccountInformation authorizationHeader];

  _paymentDevice = [serviceCopy _paymentDevice];

  [_paymentDevice registrationDataWithAuthToken:authorizationHeader completionHandler:handlerCopy];
}

- (void)paymentWebService:(id)service registrationDataWithAuthToken:(id)token completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice registrationDataWithAuthToken:tokenCopy completionHandler:handlerCopy];
}

- (void)paymentWebService:(id)service signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice signData:dataCopy signatureEntanglementMode:mode withCompletionHandler:handlerCopy];
}

- (void)paymentWebService:(id)service provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice provisioningDataIncludingDeviceMetadata:metadataCopy withCompletionHandler:handlerCopy];
}

- (id)trustedDeviceEnrollmentInfoForWebService:(id)service
{
  _paymentDevice = [service _paymentDevice];
  trustedDeviceEnrollmentInfo = [_paymentDevice trustedDeviceEnrollmentInfo];

  return trustedDeviceEnrollmentInfo;
}

- (void)signatureForAuthToken:(id)token webService:(id)service completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice signatureForAuthToken:tokenCopy completion:completionCopy];
}

- (void)paymentWebService:(id)service didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic
{
  topicCopy = topic;
  mapCopy = map;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice setRegistrationRegionMap:mapCopy primaryRegionTopic:topicCopy];
}

- (void)paymentWebService:(id)service deleteApplicationWithAID:(id)d
{
  dCopy = d;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice deleteApplicationWithAID:dCopy];
}

- (void)addPendingProvisionings:(id)provisionings completion:(id)completion
{
  completionCopy = completion;
  paymentService = self->_paymentService;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPaymentWebServiceTargetDevice_addPendingProvisionings_completion___block_invoke;
  v9[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v8 = completionCopy;
  [(PKPaymentService *)paymentService addPendingProvisionings:provisionings completion:v9];
}

uint64_t __70__PKPaymentWebServiceTargetDevice_addPendingProvisionings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)renewAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[PKAppleAccountManager sharedInstance];
  [v4 renewAppleAccountWithCompletionHandler:handlerCopy];
}

- (void)paymentWebService:(id)service setNewAuthRandomIfNecessaryReturningPairingState:(id)state
{
  stateCopy = state;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke;
  v7[3] = &unk_1E79C5090;
  v8 = stateCopy;
  v6 = stateCopy;
  [(PKPaymentWebServiceTargetDevice *)self _initializeSecureElementIfNecessaryWithCompletion:v7];
}

uint64_t __102__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentWebService:(id)service setNewAuthRandom:(id)random
{
  randomCopy = random;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandom___block_invoke;
  v7[3] = &unk_1E79C5268;
  v8 = randomCopy;
  v6 = randomCopy;
  [(PKPaymentWebServiceTargetDevice *)self _initializeSecureElement:v7];
}

uint64_t __70__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandom___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)paymentWebService:(id)service canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  IsAvailable = PKSecureElementIsAvailable();
  v7 = IsAvailable != 0;
  if (identifierCopy && IsAvailable)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = 1;
    v8 = [(PKPassLibrary *)self->_passLibrary passesOfType:1, 0];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          primaryAccountIdentifier = [v13 primaryAccountIdentifier];
          v15 = [primaryAccountIdentifier isEqualToString:identifierCopy];

          if (v15 && [v13 activationState] < 4)
          {
            v7 = 0;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v7 = 1;
    }

LABEL_14:
  }

  return v7;
}

- (void)_validateCommonPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "No completion, bailing out", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!PKSecureElementIsAvailable())
  {
    goto LABEL_9;
  }

  if (!PKHasVerifiedPrimaryAppleAccount())
  {
    v9 = 6;
    goto LABEL_14;
  }

  if (!PKPasscodeEnabled())
  {
    v9 = 9;
    goto LABEL_14;
  }

  appleAccountInformation = [(PKPaymentWebServiceTargetDevice *)self appleAccountInformation];
  aaAlternateDSID = [appleAccountInformation aaAlternateDSID];
  v7 = PKIsBeneficiaryAccountWithAltDsid(aaAlternateDSID);

  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Common precondition validation failed because account is beneficiary account", v13, 2u);
    }

LABEL_9:
    v9 = 0;
LABEL_14:
    v10 = PKDisplayableErrorForCommonType(v9, 0);
    completionCopy[2](completionCopy, 0, v10);
    goto LABEL_15;
  }

  passLibrary = self->_passLibrary;
  if (!passLibrary || [(PKPassLibrary *)passLibrary canAddPassOfType:1])
  {
    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_16;
  }

  if (PKDisableDynamicSEAllocation())
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  v10 = PKDisplayableErrorForCommonType(v12, 0);
  completionCopy[2](completionCopy, 0, v10);
LABEL_15:

LABEL_16:
}

- (void)_paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_alloc_init(PKInAppPaymentService);
  [(PKInAppPaymentService *)v6 paymentHardwareStatusWithType:type completion:completionCopy];
}

- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandler:(id)handler
{
  passCopy = pass;
  handlerCopy = handler;
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Adding Payment pass to pass library", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PKPaymentWebServiceTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E79C4E78;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(PKPaymentWebServiceTargetDevice *)self _addPass:passCopy properties:0 completion:v11];
}

void __90__PKPaymentWebServiceTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Added pass with result: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)paymentWebService:(id)service handlePotentialExpressPass:(id)pass withCompletionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  passCopy = pass;
  handlerCopy = handler;
  uniqueID = [passCopy uniqueID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E79C4A40;
  aBlock[4] = self;
  v11 = handlerCopy;
  v56 = v11;
  v12 = _Block_copy(aBlock);
  if ([(PKPaymentWebServiceTargetDevice *)self secureElementSupportsExpressMode])
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_66;
    v52[3] = &unk_1E79C5308;
    v52[4] = self;
    v53 = v11;
    v13 = v12;
    v54 = v13;
    v14 = _Block_copy(v52);
    v15 = [[PKExpressPassInformation alloc] initForPaymentPass:passCopy withTechologyTest:&__block_literal_global_83];
    if (v15)
    {
      v16 = v13;
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [passCopy uniqueID];
        v19 = v18 = v15;
        *buf = 138412290;
        v58 = v19;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Pass %@ has express info", buf, 0xCu);

        v15 = v18;
      }

      v20 = v15;
      v21 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v15 forSecureElementPass:passCopy];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_86;
      v47[3] = &unk_1E79C5350;
      v50 = v14;
      v48 = passCopy;
      v49 = v21;
      v51 = v16;
      v22 = v21;
      [(PKPaymentWebServiceTargetDevice *)self _paymentWebService:serviceCopy pass:v48 withExpressConfig:v22 hasDisqualifyingConflicts:v47];
    }

    else
    {
      v36 = v14;
      devicePrimaryContactlessPaymentApplication = [passCopy devicePrimaryContactlessPaymentApplication];
      v25 = [devicePrimaryContactlessPaymentApplication paymentNetworkIdentifier] - 1;

      if (v25 > 0x62)
      {
        v33 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = uniqueID;
          _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Pass %@ doesn't support express", buf, 0xCu);
        }

        v13[2](v13);
        v20 = 0;
      }

      else
      {
        v26 = [(PKPaymentWebServiceTargetDevice *)self upgradeRequestForPass:passCopy];
        v27 = PKLogFacilityTypeGetObject(7uLL);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v28)
          {
            uniqueID2 = [passCopy uniqueID];
            *buf = 138412290;
            v58 = uniqueID2;
            _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Pass %@ has upgrade request", buf, 0xCu);
          }

          v30 = [[PKExpressPassInformation alloc] initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:v26 paymentPass:passCopy withTechologyTest:&__block_literal_global_83];
          v14 = v36;
          if (v30)
          {
            v31 = [PKExpressPassConfiguration alloc];
            [passCopy devicePaymentApplications];
            v32 = v35 = v30;
            v34 = [(PKExpressPassConfiguration *)v31 initWithPassInformation:v35 forPaymentApplications:v32];

            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_87;
            v38[3] = &unk_1E79C53A0;
            v39 = passCopy;
            selfCopy = self;
            v41 = serviceCopy;
            v42 = v26;
            v44 = &__block_literal_global_83;
            v45 = v36;
            v43 = uniqueID;
            v46 = v13;
            v30 = v35;
            [(PKPaymentWebServiceTargetDevice *)self _paymentWebService:v41 pass:v39 withExpressConfig:v34 hasDisqualifyingConflicts:v38];
          }

          else
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = uniqueID;
              _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Invalid upgrade request on pass %@, could not create test express info", buf, 0xCu);
            }

            v13[2](v13);
          }
        }

        else
        {
          if (v28)
          {
            *buf = 138412290;
            v58 = uniqueID;
            _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Pass %@ can't be upgraded to express", buf, 0xCu);
          }

          v13[2](v13);
        }

        v20 = 0;
      }
    }
  }

  else
  {
    v23 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = uniqueID;
      _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Skipping potential express enablement of %@ as SE does not support express", buf, 0xCu);
    }

    v12[2](v12);
  }
}

uint64_t __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sanitizeExpressPasses];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 && v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Pass can become express. Setting it now.", buf, 2u);
    }

    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_67;
    v11[3] = &unk_1E79C52E0;
    v12 = v6;
    v13 = *(a1 + 40);
    [v9 _setExpressWithPassConfiguration:v12 credential:0 handler:v11];
  }

  else
  {
    if (v8)
    {
      v10 = [v5 uniqueID];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "No express upgrade for pass %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_67(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [*(a1 + 32) passUniqueIdentifier];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Express set success: %@ for passUniqueIdentifier: %@", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (a2)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v11 = [*(a1 + 32) passInformation];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_75;
      v14[3] = &unk_1E79C52B8;
      v12 = v10;
      v15 = v12;
      [v11 enumerateCredentialsUsingBlock:v14];

      if ([v12 count])
      {
        v13 = [v12 copy];
      }

      else
      {
        v13 = 0;
      }

      v9 = *(a1 + 40);
    }

    else
    {
      v13 = 0;
    }

    (*(v9 + 16))(v9, v13);
  }
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 selectionCriteria];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E79C5290;
  v6 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 supportsExpress])
  {
    v3 = *(a1 + 32);
    v4 = [v5 type];
    [v3 addObject:v4];
  }
}

uint64_t __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_86(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) uniqueID];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pass %@ has conflict with pre-existing pass, not enabling express", &v7, 0xCu);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_87(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 64);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Pass %@ upgrade request has potential conflicts, not upgrading for express", buf, 0xCu);
    }

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 32) uniqueID];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Attempting upgrade of pass %@", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_88;
    v12[3] = &unk_1E79C5378;
    v15 = *(a1 + 72);
    v13 = *(a1 + 32);
    v16 = *(a1 + 80);
    v14 = *(a1 + 64);
    v17 = *(a1 + 88);
    [v11 paymentWebService:v8 requestPassUpgrade:v9 pass:v10 completion:v12];
  }
}

void __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_88(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[PKExpressPassInformation alloc] initForPaymentPass:v5 withTechologyTest:*(a1 + 48)];
  v7 = v6;
  if (!a2 && v5 && v6)
  {
    v8 = [PKExpressPassConfiguration alloc];
    v9 = [*(a1 + 32) devicePaymentApplications];
    v10 = [(PKExpressPassConfiguration *)v8 initWithPassInformation:v7 forPaymentApplications:v9];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Express upgrade of pass %@ failed", &v13, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (id)passesOfCardType:(int64_t)type
{
  v4 = +[PKPassLibrary sharedInstance];
  v5 = [v4 passesOfCardType:type];

  return v5;
}

- (id)identityPassesOfTypes:(id)types
{
  typesCopy = types;
  v4 = +[PKPassLibrary sharedInstance];
  v5 = [v4 identityPassesOfTypes:typesCopy];

  return v5;
}

- (void)_paymentWebService:(id)service pass:(id)pass withExpressConfig:(id)config hasDisqualifyingConflicts:(id)conflicts
{
  serviceCopy = service;
  passCopy = pass;
  configCopy = config;
  conflictsCopy = conflicts;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke;
  aBlock[3] = &unk_1E79C5268;
  v26 = conflictsCopy;
  v14 = conflictsCopy;
  v15 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke_2;
  v20[3] = &unk_1E79C53F0;
  v23 = passCopy;
  v24 = v15;
  v20[4] = self;
  v21 = serviceCopy;
  v22 = configCopy;
  v16 = passCopy;
  v17 = configCopy;
  v18 = serviceCopy;
  v19 = v15;
  [(PKPaymentWebServiceTargetDevice *)self _conflictingExpressPassIdentifiersForPassConfiguration:v17 withCompletion:v20];
}

uint64_t __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Potential express state conflicts with existing express state, not enabling for express", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
    return;
  }

  v4 = [*(a1 + 32) paymentWebService:*(a1 + 40) passesOfType:1];
  if ([v4 count])
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = [*(a1 + 48) passUniqueIdentifier];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (!v7)
    {
      goto LABEL_24;
    }

    v8 = v7;
    v9 = *v26;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 uniqueID];
        v13 = v5;
        v14 = v13;
        if (v12 == v13)
        {

          v16 = v12;
          goto LABEL_20;
        }

        if (!v5 || !v12)
        {

LABEL_18:
          v16 = [[PKExpressPassInformation alloc] initForPaymentPass:v11 withTechologyTest:0];
          if (v16)
          {
            v12 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v16 forSecureElementPass:v11];
            [v20 addObject:v12];
LABEL_20:
          }

          continue;
        }

        v15 = [(PKExpressPassConfiguration *)v12 isEqualToString:v13];

        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v8)
      {
LABEL_24:

        v17 = *(a1 + 32);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke_90;
        v21[3] = &unk_1E79C53C8;
        v18 = *(a1 + 48);
        v22 = *(a1 + 56);
        v23 = v6;
        v24 = *(a1 + 64);
        [v17 _conflictingExpressPassIdentifiersForPassConfiguration:v18 withReferenceExpressState:v20 completion:v21];

        v4 = v19;
        goto LABEL_26;
      }
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_26:
}

void __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke_90(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 count])
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_28;
  }

  v4 = PKExpressPassCategoryIdentifier(*(a1 + 32));
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Comparing category conflicts for new pass of category: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v8)
  {
    goto LABEL_25;
  }

  oslog = v5;
  v19 = a1;
  v9 = *v21;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [v11 uniqueID];
      v13 = [v3 containsObject:v12];

      if (v13)
      {
        v14 = PKExpressPassCategoryIdentifier(v11);
        v15 = v14;
        if (v4 && v14)
        {
          if ([v4 isEqual:v14])
          {
            goto LABEL_13;
          }
        }

        else if (v4 == v14)
        {
LABEL_13:
          if (([v11 hasAssociatedPeerPaymentAccount] & 1) == 0)
          {
            v5 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v11 uniqueID];
              *buf = 138412546;
              v25 = v15;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Exiting early, found conflicting category:%@ for pass with unique ID:%@", buf, 0x16u);
            }

            a1 = v19;
            goto LABEL_25;
          }

          goto LABEL_17;
        }

        [v6 addObject:v15];
LABEL_17:

        continue;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v5 = oslog;
  a1 = v19;
LABEL_25:

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "The following categories were checked and did not conflict:\n%@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_28:
}

- (void)paymentWebService:(id)service removePass:(id)pass withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uniqueID = [pass uniqueID];
  [(PKPaymentWebServiceTargetDevice *)self _removePassWithUniqueID:uniqueID diagnosticReason:@"Target device remove requested"];

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
    v8 = handlerCopy;
  }
}

- (BOOL)claimSecureElementForCurrentUser
{
  v2 = PKCurrentUserUUID();
  v3 = PKSetSecureElementOwnerUserUUID(v2, 0);

  return v3;
}

- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (unint64_t)secureElementOwnershipStateForCurrentUser
{
  v2 = PKCurrentUserUUID();
  v3 = PKGetSecureElementOwnershipState(v2);

  return v3;
}

- (BOOL)secureElementIsAvailable
{
  IsAvailable = PKSecureElementIsAvailable();
  if (IsAvailable)
  {
    LOBYTE(IsAvailable) = !+[PKSecureElement isInFailForward];
  }

  return IsAvailable;
}

- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)registration
{
  v23 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  if (!PKIsManagedAppleID() && PKCurrentPassbookState() <= 1)
  {
    v5 = PKPeerPaymentServiceOverrideURL();

    if (v5)
    {
      context = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&dword_1AD337000, context, OS_LOG_TYPE_DEFAULT, "Payment web service supports peer payments due to service override URL", v16, 2u);
      }

      v7 = 1;
LABEL_13:

      goto LABEL_9;
    }

    if (([registrationCopy needsRegistration] & 1) == 0)
    {
      context = [registrationCopy context];
      peerPaymentServiceURL = [context peerPaymentServiceURL];

      hasPeerPaymentAccount = [context hasPeerPaymentAccount];
      context2 = [registrationCopy context];
      configuration = [context2 configuration];
      deviceRegion = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
      v14 = [configuration peerPaymentEnabledForRegion:deviceRegion];

      v7 = (hasPeerPaymentAccount | v14) & (peerPaymentServiceURL != 0);
      v15 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109888;
        v16[1] = (hasPeerPaymentAccount | v14) & (peerPaymentServiceURL != 0);
        v17 = 1024;
        v18 = hasPeerPaymentAccount;
        v19 = 1024;
        v20 = v14 & 1;
        v21 = 1024;
        v22 = peerPaymentServiceURL != 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Payment web service supports peer payments = %d, hasAccount: %d, regionEnabled: %d, hasURL: %d", v16, 0x1Au);
      }

      goto LABEL_13;
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)service
{
  v18 = *MEMORY[0x1E69E9840];
  context = [service context];
  configuration = [context configuration];
  deviceRegion = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
  v7 = [configuration applyServiceEnabledForRegion:deviceRegion];
  v8 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Payment web service supports apply service: %d", &v16, 8u);
  }

  if (v7)
  {
    v9 = [context applyServiceFeaturesForRegionMeetingEnablementThreshold:deviceRegion];
    v10 = PKDeviceSupportedFeatureIdentifiers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Device supported feature identifiers: %@", &v16, 0xCu);
    }

    v11 = MEMORY[0x1E695DFA8];
    allKeys = [v9 allKeys];
    v13 = [v11 setWithArray:allKeys];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Config supported feature identifiers: %@", &v16, 0xCu);
    }

    [v13 intersectSet:v10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Final supported feature identifiers: %@", &v16, 0xCu);
    }

    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)service
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PKDeviceSupportedFeatureIdentifiers();
  v4 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Device supported feature identifiers: %@", &v6, 0xCu);
  }

  return v3;
}

- (BOOL)paymentWebServiceSupportsAccounts:(id)accounts
{
  v19 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  if ([accountsCopy needsRegistration])
  {
    v5 = 0;
  }

  else
  {
    context = [accountsCopy context];
    primaryRegion = [context primaryRegion];
    hasAccounts = [primaryRegion hasAccounts];

    configuration = [context configuration];
    deviceRegion = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
    v11 = [configuration accountServiceEnabledForRegion:deviceRegion];

    v5 = hasAccounts | v11;
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109632;
      v14[1] = v5 & 1;
      v15 = 1024;
      v16 = hasAccounts;
      v17 = 1024;
      v18 = v11 & 1;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Payment web service supports accounts = %d, hasAccount: %d, regionEnabled: %d", v14, 0x14u);
    }
  }

  return v5 & 1;
}

- (void)updatedAccountsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = +[PKAccountService sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__PKPaymentWebServiceTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C4BD0;
    v7 = v4;
    v8 = completionCopy;
    v5 = v4;
    [v5 updateAccountsWithCompletion:v6];
  }
}

void __80__PKPaymentWebServiceTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__PKPaymentWebServiceTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke_2;
  v2[3] = &unk_1E79C5418;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 accountsForProvisioningWithCompletion:v2];
}

- (void)accountsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = +[PKAccountService sharedInstance];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKPaymentWebServiceTargetDevice_accountsWithCompletion___block_invoke;
    v5[3] = &unk_1E79C5440;
    v6 = completionCopy;
    [v4 accountsWithCompletion:v5];
  }
}

- (void)accountWithIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    identifierCopy = identifier;
    v7 = +[PKAccountService sharedInstance];
    [v7 accountWithIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    accountCopy = account;
    v7 = +[PKAccountService sharedInstance];
    [v7 triggerCloudStoreZoneCreationForAccount:accountCopy withCompletion:completionCopy];
  }
}

- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PKPaymentWebServiceTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C5468;
    v7 = completionCopy;
    [(PKPaymentWebServiceTargetDevice *)self _cachedFeatureApplicationsForProvisioningWithCompletion:v6];
  }
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__PKPaymentWebServiceTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C5440;
    v7 = completionCopy;
    [(PKPaymentWebServiceTargetDevice *)self _featureApplicationsForProvisioningWithCompletion:v6];
  }
}

- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPaymentWebServiceTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke;
    v8[3] = &unk_1E79C5490;
    v9 = identifierCopy;
    v10 = completionCopy;
    v7 = [PKPaymentSession startApplePayTrustSessionWithCompletion:v8];
  }
}

void __76__PKPaymentWebServiceTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 keyWithIdentifier:*(a1 + 32)];
    [v4 invalidateSession];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[PKPaymentWebServiceTargetDevice applePayTrustKeyForIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get Apple Pay Trust session for method: %s", &v7, 0xCu);
    }

    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentWebServiceTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke;
  v10[3] = &unk_1E79C5490;
  v11 = requestCopy;
  v12 = completionCopy;
  v7 = completionCopy;
  v8 = requestCopy;
  v9 = [PKPaymentSession startApplePayTrustSessionWithCompletion:v10];
}

void __80__PKPaymentWebServiceTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) keyIdentifier];
    [v3 deleteKeyWithIdentifier:v4];

    v5 = *(a1 + 32);
    v10 = 0;
    v6 = [v3 createKeyWithRequest:v5 error:&v10];
    v7 = v10;
    [v3 invalidateSession];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[PKPaymentWebServiceTargetDevice createApplePayTrustKeyWithRequest:completion:]_block_invoke";
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get Apple Pay Trust session for method: %s", buf, 0xCu);
    }

    v7 = 0;
    v6 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
  }
}

- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPaymentWebServiceTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E79C5490;
  v11 = identifierCopy;
  v12 = completionCopy;
  v7 = completionCopy;
  v8 = identifierCopy;
  v9 = [PKPaymentSession startApplePayTrustSessionWithCompletion:v10];
}

void __83__PKPaymentWebServiceTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 deleteKeyWithIdentifier:*(a1 + 32)];
    [v4 invalidateSession];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PKPaymentWebServiceTargetDevice deleteApplePayTrustKeyWithIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get Apple Pay Trust session for method: %s", &v8, 0xCu);
    }

    v5 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

- (void)paymentWebService:(id)service deviceMetadataWithFields:(unint64_t)fields completion:(id)completion
{
  completionCopy = completion;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice paymentDeviceMetadataFields:fields completion:completionCopy];
}

- (void)paymentWebService:(id)service updateAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[PKAccountService sharedInstance];
  [v8 updateAccountWithIdentifier:identifierCopy extended:0 completion:completionCopy];
}

- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_activePasscodeUpgradeFlowAssertionActive)
  {
    self->_activePasscodeUpgradeFlowAssertionActive = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processIdentifier = [processInfo processIdentifier];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", processName, processIdentifier];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKPaymentWebServiceTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke;
    v11[3] = &unk_1E79C54E0;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    [PKAssertion acquireAssertionOfType:7 withReason:v10 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);

    goto LABEL_5;
  }

  if (completionCopy)
  {
    v6 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"PasscodeUpgradeFlowActive assertion already exists.";
    processInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    processName = [v6 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:processInfo];
    (v5)[2](v5, 0, processName);
LABEL_5:
  }
}

void __82__PKPaymentWebServiceTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [v6 setInvalidateWhenBackgrounded:1];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __82__PKPaymentWebServiceTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke_2;
      v11[3] = &unk_1E79C54B8;
      objc_copyWeak(&v13, (a1 + 40));
      v12 = v6;
      [v12 setInvalidationHandler:v11];
      objc_storeStrong(v9 + 9, a2);

      objc_destroyWeak(&v13);
    }

    else
    {
      *(WeakRetained + 80) = 0;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, *(v9 + 80), v7);
    }
  }
}

void __82__PKPaymentWebServiceTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    if (v3 == *(a1 + 32))
    {
      *(WeakRetained + 80) = 0;
      WeakRetained[9] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

- (void)notePasscodeUpgradeFlowDidEnd
{
  [(PKAssertion *)self->_activePasscodeUpgradeFlowAssertion invalidate];
  activePasscodeUpgradeFlowAssertion = self->_activePasscodeUpgradeFlowAssertion;
  self->_activePasscodeUpgradeFlowAssertion = 0;

  self->_activePasscodeUpgradeFlowAssertionActive = 0;
}

- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentService *)self->_paymentService plansForPaymentPassWithUniqueIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_requiringUpgradedPasscodeAssertionActive)
  {
    self->_requiringUpgradedPasscodeAssertionActive = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processIdentifier = [processInfo processIdentifier];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", processName, processIdentifier];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PKPaymentWebServiceTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke;
    v9[3] = &unk_1E79C54E0;
    objc_copyWeak(&v11, &location);
    v10 = completionCopy;
    [PKAssertion acquireAssertionOfType:6 withReason:v8 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __80__PKPaymentWebServiceTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [v6 setInvalidateWhenBackgrounded:0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__PKPaymentWebServiceTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_2;
      v12[3] = &unk_1E79C54B8;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = v6;
      [v13 setInvalidationHandler:v12];
      objc_storeStrong(v9 + 7, a2);
      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, 1, 0);
      }

      objc_destroyWeak(&v14);
    }

    else
    {
      *(WeakRetained + 64) = 0;
      v11 = *(a1 + 32);
      if (v11)
      {
        (*(v11 + 16))(v11, 0, 0);
      }
    }
  }
}

void __80__PKPaymentWebServiceTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    if (v3 == *(a1 + 32))
    {
      *(WeakRetained + 64) = 0;
      WeakRetained[7] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

- (void)endRequiringUpgradedPasscodeIfNecessary
{
  [(PKAssertion *)self->_requiringUpgradedPasscodeAssertion invalidate];
  requiringUpgradedPasscodeAssertion = self->_requiringUpgradedPasscodeAssertion;
  self->_requiringUpgradedPasscodeAssertion = 0;

  self->_requiringUpgradedPasscodeAssertionActive = 0;
}

- (void)paymentWebService:(id)service updateMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  uniqueID = [pass uniqueID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PKPaymentWebServiceTargetDevice_paymentWebService_updateMetadataOnPass_withCredential_completion___block_invoke;
  v13[3] = &unk_1E79C4E78;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PKPaymentWebServiceTargetDevice *)self _updateMetadataOnPassWithIdentifier:uniqueID credential:credentialCopy completion:v13];
}

uint64_t __100__PKPaymentWebServiceTargetDevice_paymentWebService_updateMetadataOnPass_withCredential_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestBackgroundRegistrationForCredential:(id)credential withCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = credentialCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Requesting to background register credential: %@", &v10, 0xCu);
  }

  identifier = [credentialCopy identifier];
  [(PKPaymentWebServiceTargetDevice *)self _requestBackgroundRegistrationForCredentialWithIdentifier:identifier completion:completionCopy];
}

- (void)paymentWebService:(id)service subcredentialInvitationsWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)paymentWebService:(id)service matchingInvitationOnDevice:(id)device withTimeout:(unint64_t)timeout completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)deleteInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  [(PKPaymentService *)self->_paymentService deleteSharingMessage:invitation];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
    v6 = completionCopy;
  }
}

- (void)carKeyStartShareAcceptanceFlow:(id)flow transportIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  flowCopy = flow;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentWebServiceTargetDevice_carKeyStartShareAcceptanceFlow_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 startShareAcceptanceFlowWithInvitation:flowCopy fromMailboxIdentifier:identifierCopy completion:v13];
}

- (void)carKeyRoutingInformationForInvitationWithIdentifier:(id)identifier transportIdentifier:(id)transportIdentifier completion:(id)completion
{
  completionCopy = completion;
  transportIdentifierCopy = transportIdentifier;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentWebServiceTargetDevice_carKeyRoutingInformationForInvitationWithIdentifier_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5508;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 routingInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:transportIdentifierCopy completionHandler:v13];
}

- (void)carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier:(id)identifier transportIdentifier:(id)transportIdentifier completion:(id)completion
{
  completionCopy = completion;
  transportIdentifierCopy = transportIdentifier;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __131__PKPaymentWebServiceTargetDevice_carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5530;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 getProductPlanIdentifierRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:transportIdentifierCopy completion:v13];
}

- (void)carKeySetEncryptedProductPlanIdentifierContainer:(id)container invitationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  containerCopy = container;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116__PKPaymentWebServiceTargetDevice_carKeySetEncryptedProductPlanIdentifierContainer_invitationIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 setEncryptedProductPlanIdentifierContainer:containerCopy forInvitationIdentifier:identifierCopy completion:v13];
}

- (void)carKeyAccountAttestationRequestForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PKPaymentWebServiceTargetDevice_carKeyAccountAttestationRequestForCredential_completion___block_invoke;
  v10[3] = &unk_1E79C5558;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [(PKDAManager *)v8 accountAttestionRequestForCredential:credentialCopy withCompletion:v10];
}

- (void)carKeyGetPretrackShareDataForShare:(id)share completion:(id)completion
{
  completionCopy = completion;
  shareCopy = share;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PKPaymentWebServiceTargetDevice_carKeyGetPretrackShareDataForShare_completion___block_invoke;
  v10[3] = &unk_1E79C5530;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [(PKDAManager *)v8 getPretrackShareDataForShare:shareCopy withCompletion:v10];
}

- (void)carKeyGetPretrackRequestForKeyWithInvitationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKPaymentWebServiceTargetDevice_carKeyGetPretrackRequestForKeyWithInvitationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E79C5530;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [(PKDAManager *)v8 getPretrackRequestForKeyWithIdentifier:identifierCopy withCompletion:v10];
}

- (void)carKeySetAccountAttestation:(id)attestation forCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  attestationCopy = attestation;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PKPaymentWebServiceTargetDevice_carKeySetAccountAttestation_forCredential_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 setAccountAttestation:attestationCopy forUpgradeCredential:credentialCopy withCompletion:v13];
}

- (void)carKeyUpdateTrackingAttestation:(id)attestation forCredential:(id)credential encryptedContainer:(id)container completion:(id)completion
{
  completionCopy = completion;
  containerCopy = container;
  credentialCopy = credential;
  attestationCopy = attestation;
  v13 = objc_alloc_init(PKDAManager);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__PKPaymentWebServiceTargetDevice_carKeyUpdateTrackingAttestation_forCredential_encryptedContainer_completion___block_invoke;
  v16[3] = &unk_1E79C4888;
  v17 = v13;
  v18 = completionCopy;
  v14 = v13;
  v15 = completionCopy;
  [(PKDAManager *)v14 updateTrackingAttestation:attestationCopy forCredential:credentialCopy encryptedContainer:containerCopy completion:v16];
}

- (void)carKeyPreWarmForManufacturer:(id)manufacturer completion:(id)completion
{
  completionCopy = completion;
  manufacturerCopy = manufacturer;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PKPaymentWebServiceTargetDevice_carKeyPreWarmForManufacturer_completion___block_invoke;
  v10[3] = &unk_1E79C4860;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [(PKDAManager *)v8 preWarmForManufacturer:manufacturerCopy completion:v10];
}

- (void)carKeyAcceptInvitationWithInvitationIdentifier:(id)identifier activationCode:(id)code analyticsUpdateConfig:(id)config completion:(id)completion
{
  completionCopy = completion;
  configCopy = config;
  codeCopy = code;
  identifierCopy = identifier;
  v13 = objc_alloc_init(PKDAManager);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __130__PKPaymentWebServiceTargetDevice_carKeyAcceptInvitationWithInvitationIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke;
  v16[3] = &unk_1E79C5580;
  v17 = v13;
  v18 = completionCopy;
  v14 = v13;
  v15 = completionCopy;
  [(PKDAManager *)v14 acceptInvitationWithIdentifier:identifierCopy activationCode:codeCopy analyticsUpdateConfig:configCopy completion:v16];
}

- (void)carKeyRejectInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  invitationCopy = invitation;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PKPaymentWebServiceTargetDevice_carKeyRejectInvitation_completion___block_invoke;
  v10[3] = &unk_1E79C55A8;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [(PKDAManager *)v8 rejectInvitation:invitationCopy completion:v10];
}

- (void)carKeyHandleRecipientMessage:(id)message forInvitationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageCopy = message;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentWebServiceTargetDevice_carKeyHandleRecipientMessage_forInvitationIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5580;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 handleRecipientMessage:messageCopy forInvitationIdentifier:identifierCopy completion:v13];
}

- (void)carKeyRetryActivationCodeWithInvitationIdentifier:(id)identifier activationCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  codeCopy = code;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__PKPaymentWebServiceTargetDevice_carKeyRetryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke;
  v13[3] = &unk_1E79C5580;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(PKDAManager *)v11 retryActivationCode:codeCopy forInvitationIdentifier:identifierCopy completion:v13];
}

- (void)carKeyDecryptData:(id)data credential:(id)credential ephemeralPublicKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  credentialCopy = credential;
  dataCopy = data;
  v14 = objc_alloc_init(PKDAManager);
  v13 = [(PKDAManager *)v14 decryptData:dataCopy withCredential:credentialCopy ephemeralPublicKey:keyCopy];

  completionCopy[2](completionCopy, v13, 0);
}

- (void)deviceSupportedRadioTechnologiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = PKRadioTechnologyForConfigurationTechnology(3);
  (*(completion + 2))(completionCopy, v4);
}

- (void)paymentWebService:(id)service generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  _paymentDevice = [service _paymentDevice];
  [_paymentDevice generateTransactionKeyWithParameters:parametersCopy withCompletion:completionCopy];
}

- (void)saveProvisioningSupportData:(id)data forPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = completionCopy;
  if (dataCopy)
  {
    [(PKPaymentService *)self->_paymentService saveProvisioningSupportData:dataCopy forPassUniqueIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)paymentWebService:(id)service requestPassUpgrade:(id)upgrade pass:(id)pass completion:(id)completion
{
  serviceCopy = service;
  upgradeCopy = upgrade;
  passCopy = pass;
  completionCopy = completion;
  if (completionCopy)
  {
    passUpgradeController = self->_passUpgradeController;
    if (!passUpgradeController)
    {
      v14 = [[PKPassUpgradeController alloc] initWithWebService:serviceCopy];
      v15 = self->_passUpgradeController;
      self->_passUpgradeController = v14;

      passUpgradeController = self->_passUpgradeController;
    }

    [(PKPassUpgradeControllerBase *)passUpgradeController requestPassUpgrade:upgradeCopy pass:passCopy diagnosticReason:@"User upgrade" completion:completionCopy];
  }
}

- (void)_addPass:(id)pass properties:(id)properties completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  propertiesCopy = properties;
  completionCopy = completion;
  v11 = completionCopy;
  if (passCopy)
  {
    v12 = [[PKPassIngestionPayload alloc] initWithPass:passCopy];
    [(PKPassIngestionPayload *)v12 setProperties:propertiesCopy];
    passLibrary = self->_passLibrary;
    v18[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__PKPaymentWebServiceTargetDevice__addPass_properties_completion___block_invoke;
    v15[3] = &unk_1E79C55D0;
    v15[4] = self;
    v16 = passCopy;
    v17 = v11;
    [(PKPassLibrary *)passLibrary addPassesWithIngestionPayloads:v14 withCompletionHandler:v15];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __66__PKPaymentWebServiceTargetDevice__addPass_properties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKPaymentWebServiceTargetDevice__addPass_properties_completion___block_invoke_2;
  v8[3] = &unk_1E79C4D88;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = a2;
  v8[4] = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  v7 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E79C4428;
  v13 = v7;
  dispatch_async(v4, block);
}

void __66__PKPaymentWebServiceTargetDevice__addPass_properties_completion___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = [*(a1 + 40) uniqueID];
    v6 = [v2 passWithUniqueID:v3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(a1 + 48);
  if (v5)
  {
    v7 = v4;
    (*(v5 + 16))();
    v4 = v7;
  }
}

- (id)upgradeRequestForPass:(id)pass
{
  passCopy = pass;
  v5 = [PKPaymentDefaultDataProvider alloc];
  paymentService = self->_paymentService;
  v7 = +[PKSecureElement sharedSecureElement];
  v8 = [(PKPaymentDefaultDataProvider *)v5 initWithPaymentService:paymentService secureElement:v7];

  v9 = [[PKPassLibraryDefaultDataProvider alloc] initWithPassLibrary:self->_passLibrary];
  v10 = [[PKExpressPassController alloc] initWithPaymentDataProvider:v8 passLibraryDataProvider:v9 isForWatch:0];
  v11 = [(PKExpressPassController *)v10 expressModeUpgradeRequestForPass:passCopy];

  return v11;
}

- (void)_cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  paymentService = self->_paymentService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceTargetDevice__cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C5468;
  v8 = completionCopy;
  v6 = completionCopy;
  [(PKPaymentService *)paymentService featureApplicationsWithCompletion:v7];
}

void __91__PKPaymentWebServiceTargetDevice__cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_126];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)_updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  paymentService = self->_paymentService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PKPaymentWebServiceTargetDevice__updateMetadataOnPassWithIdentifier_credential_completion___block_invoke;
  v13[3] = &unk_1E79C5618;
  v14 = identifierCopy;
  v15 = completionCopy;
  v13[4] = self;
  v11 = identifierCopy;
  v12 = completionCopy;
  [(PKPaymentService *)paymentService updateMetadataOnPassWithIdentifier:v11 credential:credential completion:v13];
}

void __93__PKPaymentWebServiceTargetDevice__updateMetadataOnPassWithIdentifier_credential_completion___block_invoke(void *a1, char a2)
{
  v2 = a1[6];
  if (a2)
  {
    v6 = [*(a1[4] + 8) passWithUniqueID:a1[5]];
    v3 = [v6 paymentPass];
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = a1[6];

    v4(v5, 0);
  }
}

- (void)_canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion
{
  if (completion)
  {
    [(PKPassLibrary *)self->_passLibrary canAddSecureElementPassWithConfiguration:configuration completion:?];
  }
}

- (void)_performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  reasonCopy = reason;
  v10 = +[PKDeviceRegistrationService sharedInstance];
  [v10 performDeviceRegistrationReturningContextForReason:reasonCopy brokerURL:lCopy actionType:1 completion:completionCopy];
}

- (void)generateIdentityProvisioningAttestationsWithISOCredential:(id)credential pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E6997DE0];
  dCopy = d;
  credentialCopy = credential;
  v11 = objc_alloc_init(v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __114__PKPaymentWebServiceTargetDevice_generateIdentityProvisioningAttestationsWithISOCredential_pairingID_completion___block_invoke;
  v13[3] = &unk_1E79C5660;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 generateIdentityProvisioningAttestationsWithCredential:credentialCopy pairingID:dCopy completion:v13];
}

void __114__PKPaymentWebServiceTargetDevice_generateIdentityProvisioningAttestationsWithISOCredential_pairingID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 transactionKeys];
    v8 = [v7 pk_arrayByApplyingBlock:&__block_literal_global_132];

    v9 = [PKIdentityProvisioningAttestations alloc];
    v10 = [v5 authorizationKeyAttestation];
    v11 = [v5 deviceEncryptionKeyAttestation];
    v12 = [v5 deviceEncryptionKeyAuthorization];
    v13 = [v5 progenitorKeyCASDAttestation];
    v14 = [v5 serverAttestedProvisioningData];
    v15 = [(PKIdentityProvisioningAttestations *)v9 initWithAuthorizationKeyAttestation:v10 deviceEncryptionKeyAttestation:v11 deviceEncryptionKeyAuthorization:v12 progenitorKeyCASDAttestation:v13 transactionKeys:v8 serverAttestedProvisioningData:v14];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed to generate identity attestations with error: %@", &v18, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v6)
    {
      (*(v17 + 16))(v17, 0, v6);
      goto LABEL_8;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v17 + 16))(v17, 0, v8);
  }

LABEL_8:
}

PKIdentityProvisioningTransactionKey *__114__PKPaymentWebServiceTargetDevice_generateIdentityProvisioningAttestationsWithISOCredential_pairingID_completion___block_invoke_129(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PKIdentityProvisioningTransactionKey alloc];
  v4 = [v2 casdAttestation];
  v5 = [v2 authorization];

  v6 = [(PKIdentityProvisioningTransactionKey *)v3 initWithCASDAttestation:v4 authorization:v5];

  return v6;
}

- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 canSaveFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:completionCopy];
}

- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v8 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F23B3BF0];
  [(PKAutoFillCardManager *)v8 activeFPANCardsWithOptions:options allowedCardTypes:v7 completion:completionCopy];
}

- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion
{
  completionCopy = completion;
  hostCopy = host;
  authorizationCopy = authorization;
  cardCopy = card;
  v16 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v16 credentialForFPANCard:cardCopy authorization:authorizationCopy options:options merchantHost:hostCopy completion:completionCopy];
}

- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 updateFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:completionCopy];
}

- (void)insertFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  descriptorCopy = descriptor;
  credentialCopy = credential;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPaymentService *)self->_paymentService insertFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:completionCopy];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Failed to insert fpan with wrong class.", v13, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  v8 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v8 deleteFPANCardWithDescriptor:descriptorCopy completion:completionCopy];
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
  v12 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v12 fpanCredentialForPrimaryAccountIdentifier:identifierCopy passUniqueID:dCopy credential:credential error:error];
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)n descriptor:(id *)descriptor credential:(id *)credential error:(id *)error
{
  nCopy = n;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 fpanDescriptorAndCredentialForFPAN:nCopy descriptor:descriptor credential:credential error:error];
}

@end