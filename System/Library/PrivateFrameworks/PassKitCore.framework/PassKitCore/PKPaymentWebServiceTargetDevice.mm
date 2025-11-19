@interface PKPaymentWebServiceTargetDevice
+ (id)localTargetDevice;
- (BOOL)claimSecureElementForCurrentUser;
- (BOOL)paymentWebService:(id)a3 canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)a4;
- (BOOL)paymentWebServiceSupportsAccounts:(id)a3;
- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)a3;
- (BOOL)secureElementIsAvailable;
- (PKPaymentWebServiceTargetDevice)init;
- (id)appleAccountInformation;
- (id)deviceIDSIdentifier;
- (id)identityPassesOfTypes:(id)a3;
- (id)passesOfCardType:(int64_t)a3;
- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)a3;
- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)a3;
- (id)trustedDeviceEnrollmentInfoForWebService:(id)a3;
- (id)upgradeRequestForPass:(id)a3;
- (unint64_t)secureElementOwnershipStateForCurrentUser;
- (void)_addPass:(id)a3 properties:(id)a4 completion:(id)a5;
- (void)_cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)_canAddSecureElementPassWithConfiguration:(id)a3 completion:(id)a4;
- (void)_paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4;
- (void)_paymentWebService:(id)a3 pass:(id)a4 withExpressConfig:(id)a5 hasDisqualifyingConflicts:(id)a6;
- (void)_performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 completion:(id)a5;
- (void)_updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)_validateCommonPreconditionsWithCompletion:(id)a3;
- (void)accountWithIdentifier:(id)a3 completion:(id)a4;
- (void)accountsWithCompletion:(id)a3;
- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)addPendingProvisionings:(id)a3 completion:(id)a4;
- (void)applePayTrustKeyForIdentifier:(id)a3 completion:(id)a4;
- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)carKeyAcceptInvitationWithInvitationIdentifier:(id)a3 activationCode:(id)a4 analyticsUpdateConfig:(id)a5 completion:(id)a6;
- (void)carKeyAccountAttestationRequestForCredential:(id)a3 completion:(id)a4;
- (void)carKeyDecryptData:(id)a3 credential:(id)a4 ephemeralPublicKey:(id)a5 completion:(id)a6;
- (void)carKeyGetPretrackRequestForKeyWithInvitationIdentifier:(id)a3 completion:(id)a4;
- (void)carKeyGetPretrackShareDataForShare:(id)a3 completion:(id)a4;
- (void)carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 transportIdentifier:(id)a4 completion:(id)a5;
- (void)carKeyHandleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)carKeyPreWarmForManufacturer:(id)a3 completion:(id)a4;
- (void)carKeyRejectInvitation:(id)a3 completion:(id)a4;
- (void)carKeyRetryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)carKeyRoutingInformationForInvitationWithIdentifier:(id)a3 transportIdentifier:(id)a4 completion:(id)a5;
- (void)carKeySetAccountAttestation:(id)a3 forCredential:(id)a4 completion:(id)a5;
- (void)carKeySetEncryptedProductPlanIdentifierContainer:(id)a3 invitationIdentifier:(id)a4 completion:(id)a5;
- (void)carKeyStartShareAcceptanceFlow:(id)a3 transportIdentifier:(id)a4 completion:(id)a5;
- (void)carKeyUpdateTrackingAttestation:(id)a3 forCredential:(id)a4 encryptedContainer:(id)a5 completion:(id)a6;
- (void)claimSecureElementForCurrentUserWithCompletion:(id)a3;
- (void)createApplePayTrustKeyWithRequest:(id)a3 completion:(id)a4;
- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7;
- (void)dealloc;
- (void)deleteApplePayTrustKeyWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4;
- (void)deleteInvitation:(id)a3 completion:(id)a4;
- (void)deviceSupportedRadioTechnologiesWithCompletion:(id)a3;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)featureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6;
- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6;
- (void)generateIdentityProvisioningAttestationsWithISOCredential:(id)a3 pairingID:(id)a4 completion:(id)a5;
- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)noteForegroundVerificationObserverActive:(BOOL)a3;
- (void)notePasscodeUpgradeFlowDidEnd;
- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)a3;
- (void)noteProvisioningDidBegin;
- (void)noteProvisioningDidEnd;
- (void)paymentWebService:(id)a3 addPaymentPass:(id)a4 withCompletionHandler:(id)a5;
- (void)paymentWebService:(id)a3 configurationDataWithCompletionHandler:(id)a4;
- (void)paymentWebService:(id)a3 deleteApplicationWithAID:(id)a4;
- (void)paymentWebService:(id)a3 deviceMetadataWithFields:(unint64_t)a4 completion:(id)a5;
- (void)paymentWebService:(id)a3 didRegisterWithRegionMap:(id)a4 primaryRegionTopic:(id)a5;
- (void)paymentWebService:(id)a3 generateTransactionKeyWithParameters:(id)a4 withCompletion:(id)a5;
- (void)paymentWebService:(id)a3 handlePotentialExpressPass:(id)a4 withCompletionHandler:(id)a5;
- (void)paymentWebService:(id)a3 matchingInvitationOnDevice:(id)a4 withTimeout:(unint64_t)a5 completion:(id)a6;
- (void)paymentWebService:(id)a3 provisioningDataIncludingDeviceMetadata:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)paymentWebService:(id)a3 queueConnectionToTrustedServiceManagerForPushTopic:(id)a4 withCompletion:(id)a5;
- (void)paymentWebService:(id)a3 registrationDataWithAuthToken:(id)a4 completionHandler:(id)a5;
- (void)paymentWebService:(id)a3 registrationDataWithCompletionHandler:(id)a4;
- (void)paymentWebService:(id)a3 removePass:(id)a4 withCompletionHandler:(id)a5;
- (void)paymentWebService:(id)a3 requestPassUpgrade:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)paymentWebService:(id)a3 setNewAuthRandom:(id)a4;
- (void)paymentWebService:(id)a3 setNewAuthRandomIfNecessaryReturningPairingState:(id)a4;
- (void)paymentWebService:(id)a3 signData:(id)a4 signatureEntanglementMode:(unint64_t)a5 withCompletionHandler:(id)a6;
- (void)paymentWebService:(id)a3 subcredentialInvitationsWithCompletion:(id)a4;
- (void)paymentWebService:(id)a3 updateAccountWithIdentifier:(id)a4 completion:(id)a5;
- (void)paymentWebService:(id)a3 updateMetadataOnPass:(id)a4 withCredential:(id)a5 completion:(id)a6;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)renewAppleAccountWithCompletionHandler:(id)a3;
- (void)requestBackgroundRegistrationForCredential:(id)a3 withCompletion:(id)a4;
- (void)saveProvisioningSupportData:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)serviceProviderDataForSecureElementPass:(id)a3 encrypted:(BOOL)a4 completion:(id)a5;
- (void)signatureForAuthToken:(id)a3 webService:(id)a4 completion:(id)a5;
- (void)startRequiringUpgradedPasscodeWithCompletion:(id)a3;
- (void)triggerCloudStoreZoneCreationForAccount:(id)a3 withCompletion:(id)a4;
- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updatedAccountsForProvisioningWithCompletion:(id)a3;
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
  v3 = [v2 appleAccountInformation];

  return v3;
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
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [v4 processIdentifier];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", v5, v6];
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

- (void)noteForegroundVerificationObserverActive:(BOOL)a3
{
  if (a3)
  {
    if (!self->_verificationAssertionActive)
    {
      self->_verificationAssertionActive = 1;
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 processName];
      v6 = [v4 processIdentifier];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", v5, v6];
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

- (void)paymentWebService:(id)a3 queueConnectionToTrustedServiceManagerForPushTopic:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 _paymentDevice];
  v11 = [v10 hasRegistrationRegionMap];

  v12 = PKLogFacilityTypeGetObject(7uLL);
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "NF appears to be missing its registration region map. Re-setting per <rdar://33865268>", buf, 2u);
    }

    AnalyticsSendEvent();
    v14 = [v7 context];
    v15 = [v14 TSMURLStringByPushTopic];

    v16 = [v7 context];
    v17 = [v16 primaryRegion];
    v18 = [v17 trustedServiceManagerPushTopic];

    v19 = [v7 _paymentDevice];
    [v19 setRegistrationRegionMap:v15 primaryRegionTopic:v18];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Queueing TSM connection on local SE for %@", buf, 0xCu);
  }

  v20 = [v7 _paymentDevice];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __119__PKPaymentWebServiceTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
  v22[3] = &unk_1E79C4E50;
  v23 = v9;
  v21 = v9;
  [v20 queueConnectionToTrustedServiceManagerForPushTopic:v8 withCompletion:v22];
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

- (void)serviceProviderDataForSecureElementPass:(id)a3 encrypted:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = +[PKPassLibrary sharedInstance];
    if (v6)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke;
      v13[3] = &unk_1E79C5688;
      v10 = &v14;
      v14 = v8;
      [v9 encryptedServiceProviderDataForSecureElementPass:v7 completion:v13];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __96__PKPaymentWebServiceTargetDevice_serviceProviderDataForSecureElementPass_encrypted_completion___block_invoke_50;
      v11[3] = &unk_1E79C5240;
      v10 = &v12;
      v12 = v8;
      [v9 serviceProviderDataForSecureElementPass:v7 completion:v11];
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

- (void)paymentWebService:(id)a3 configurationDataWithCompletionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = [a3 _paymentDevice];
    v7 = [v6 configurationData];

    if (v7)
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

    v5[2](v5, v7, v8);
  }
}

- (void)paymentWebService:(id)a3 registrationDataWithCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebServiceTargetDevice *)self appleAccountInformation];
  v10 = [v8 authorizationHeader];

  v9 = [v7 _paymentDevice];

  [v9 registrationDataWithAuthToken:v10 completionHandler:v6];
}

- (void)paymentWebService:(id)a3 registrationDataWithAuthToken:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 _paymentDevice];
  [v9 registrationDataWithAuthToken:v8 completionHandler:v7];
}

- (void)paymentWebService:(id)a3 signData:(id)a4 signatureEntanglementMode:(unint64_t)a5 withCompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [a3 _paymentDevice];
  [v11 signData:v10 signatureEntanglementMode:a5 withCompletionHandler:v9];
}

- (void)paymentWebService:(id)a3 provisioningDataIncludingDeviceMetadata:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [a3 _paymentDevice];
  [v8 provisioningDataIncludingDeviceMetadata:v5 withCompletionHandler:v7];
}

- (id)trustedDeviceEnrollmentInfoForWebService:(id)a3
{
  v3 = [a3 _paymentDevice];
  v4 = [v3 trustedDeviceEnrollmentInfo];

  return v4;
}

- (void)signatureForAuthToken:(id)a3 webService:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 _paymentDevice];
  [v9 signatureForAuthToken:v8 completion:v7];
}

- (void)paymentWebService:(id)a3 didRegisterWithRegionMap:(id)a4 primaryRegionTopic:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 _paymentDevice];
  [v9 setRegistrationRegionMap:v8 primaryRegionTopic:v7];
}

- (void)paymentWebService:(id)a3 deleteApplicationWithAID:(id)a4
{
  v5 = a4;
  v6 = [a3 _paymentDevice];
  [v6 deleteApplicationWithAID:v5];
}

- (void)addPendingProvisionings:(id)a3 completion:(id)a4
{
  v6 = a4;
  paymentService = self->_paymentService;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPaymentWebServiceTargetDevice_addPendingProvisionings_completion___block_invoke;
  v9[3] = &unk_1E79C4450;
  v10 = v6;
  v8 = v6;
  [(PKPaymentService *)paymentService addPendingProvisionings:a3 completion:v9];
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

- (void)renewAppleAccountWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[PKAppleAccountManager sharedInstance];
  [v4 renewAppleAccountWithCompletionHandler:v3];
}

- (void)paymentWebService:(id)a3 setNewAuthRandomIfNecessaryReturningPairingState:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke;
  v7[3] = &unk_1E79C5090;
  v8 = v5;
  v6 = v5;
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

- (void)paymentWebService:(id)a3 setNewAuthRandom:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentWebServiceTargetDevice_paymentWebService_setNewAuthRandom___block_invoke;
  v7[3] = &unk_1E79C5268;
  v8 = v5;
  v6 = v5;
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

- (BOOL)paymentWebService:(id)a3 canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  IsAvailable = PKSecureElementIsAvailable();
  v7 = IsAvailable != 0;
  if (v5 && IsAvailable)
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
          v14 = [v13 primaryAccountIdentifier];
          v15 = [v14 isEqualToString:v5];

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

- (void)_validateCommonPreconditionsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(PKPaymentWebServiceTargetDevice *)self appleAccountInformation];
  v6 = [v5 aaAlternateDSID];
  v7 = PKIsBeneficiaryAccountWithAltDsid(v6);

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
    v4[2](v4, 0, v10);
    goto LABEL_15;
  }

  passLibrary = self->_passLibrary;
  if (!passLibrary || [(PKPassLibrary *)passLibrary canAddPassOfType:1])
  {
    v4[2](v4, 1, 0);
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
  v4[2](v4, 0, v10);
LABEL_15:

LABEL_16:
}

- (void)_paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(PKInAppPaymentService);
  [(PKInAppPaymentService *)v6 paymentHardwareStatusWithType:a3 completion:v5];
}

- (void)paymentWebService:(id)a3 addPaymentPass:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
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
  v12 = v8;
  v10 = v8;
  [(PKPaymentWebServiceTargetDevice *)self _addPass:v7 properties:0 completion:v11];
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

- (void)paymentWebService:(id)a3 handlePotentialExpressPass:(id)a4 withCompletionHandler:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 uniqueID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E79C4A40;
  aBlock[4] = self;
  v11 = v9;
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
    v15 = [[PKExpressPassInformation alloc] initForPaymentPass:v8 withTechologyTest:&__block_literal_global_83];
    if (v15)
    {
      v16 = v13;
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v8 uniqueID];
        v19 = v18 = v15;
        *buf = 138412290;
        v58 = v19;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Pass %@ has express info", buf, 0xCu);

        v15 = v18;
      }

      v20 = v15;
      v21 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v15 forSecureElementPass:v8];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_86;
      v47[3] = &unk_1E79C5350;
      v50 = v14;
      v48 = v8;
      v49 = v21;
      v51 = v16;
      v22 = v21;
      [(PKPaymentWebServiceTargetDevice *)self _paymentWebService:v37 pass:v48 withExpressConfig:v22 hasDisqualifyingConflicts:v47];
    }

    else
    {
      v36 = v14;
      v24 = [v8 devicePrimaryContactlessPaymentApplication];
      v25 = [v24 paymentNetworkIdentifier] - 1;

      if (v25 > 0x62)
      {
        v33 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = v10;
          _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Pass %@ doesn't support express", buf, 0xCu);
        }

        v13[2](v13);
        v20 = 0;
      }

      else
      {
        v26 = [(PKPaymentWebServiceTargetDevice *)self upgradeRequestForPass:v8];
        v27 = PKLogFacilityTypeGetObject(7uLL);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v28)
          {
            v29 = [v8 uniqueID];
            *buf = 138412290;
            v58 = v29;
            _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Pass %@ has upgrade request", buf, 0xCu);
          }

          v30 = [[PKExpressPassInformation alloc] initDummyExpressInfoForAutomaticSelectionCriteriaUpgradeRequest:v26 paymentPass:v8 withTechologyTest:&__block_literal_global_83];
          v14 = v36;
          if (v30)
          {
            v31 = [PKExpressPassConfiguration alloc];
            [v8 devicePaymentApplications];
            v32 = v35 = v30;
            v34 = [(PKExpressPassConfiguration *)v31 initWithPassInformation:v35 forPaymentApplications:v32];

            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __102__PKPaymentWebServiceTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_87;
            v38[3] = &unk_1E79C53A0;
            v39 = v8;
            v40 = self;
            v41 = v37;
            v42 = v26;
            v44 = &__block_literal_global_83;
            v45 = v36;
            v43 = v10;
            v46 = v13;
            v30 = v35;
            [(PKPaymentWebServiceTargetDevice *)self _paymentWebService:v41 pass:v39 withExpressConfig:v34 hasDisqualifyingConflicts:v38];
          }

          else
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v10;
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
            v58 = v10;
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
      v58 = v10;
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

- (id)passesOfCardType:(int64_t)a3
{
  v4 = +[PKPassLibrary sharedInstance];
  v5 = [v4 passesOfCardType:a3];

  return v5;
}

- (id)identityPassesOfTypes:(id)a3
{
  v3 = a3;
  v4 = +[PKPassLibrary sharedInstance];
  v5 = [v4 identityPassesOfTypes:v3];

  return v5;
}

- (void)_paymentWebService:(id)a3 pass:(id)a4 withExpressConfig:(id)a5 hasDisqualifyingConflicts:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke;
  aBlock[3] = &unk_1E79C5268;
  v26 = v13;
  v14 = v13;
  v15 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PKPaymentWebServiceTargetDevice__paymentWebService_pass_withExpressConfig_hasDisqualifyingConflicts___block_invoke_2;
  v20[3] = &unk_1E79C53F0;
  v23 = v11;
  v24 = v15;
  v20[4] = self;
  v21 = v10;
  v22 = v12;
  v16 = v11;
  v17 = v12;
  v18 = v10;
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

- (void)paymentWebService:(id)a3 removePass:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a5;
  v7 = [a4 uniqueID];
  [(PKPaymentWebServiceTargetDevice *)self _removePassWithUniqueID:v7 diagnosticReason:@"Target device remove requested"];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
    v8 = v9;
  }
}

- (BOOL)claimSecureElementForCurrentUser
{
  v2 = PKCurrentUserUUID();
  v3 = PKSetSecureElementOwnerUserUUID(v2, 0);

  return v3;
}

- (void)claimSecureElementForCurrentUserWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
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

- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!PKIsManagedAppleID() && PKCurrentPassbookState() <= 1)
  {
    v5 = PKPeerPaymentServiceOverrideURL();

    if (v5)
    {
      v6 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Payment web service supports peer payments due to service override URL", v16, 2u);
      }

      v7 = 1;
LABEL_13:

      goto LABEL_9;
    }

    if (([v4 needsRegistration] & 1) == 0)
    {
      v6 = [v4 context];
      v9 = [v6 peerPaymentServiceURL];

      v10 = [v6 hasPeerPaymentAccount];
      v11 = [v4 context];
      v12 = [v11 configuration];
      v13 = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
      v14 = [v12 peerPaymentEnabledForRegion:v13];

      v7 = (v10 | v14) & (v9 != 0);
      v15 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109888;
        v16[1] = (v10 | v14) & (v9 != 0);
        v17 = 1024;
        v18 = v10;
        v19 = 1024;
        v20 = v14 & 1;
        v21 = 1024;
        v22 = v9 != 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Payment web service supports peer payments = %d, hasAccount: %d, regionEnabled: %d, hasURL: %d", v16, 0x1Au);
      }

      goto LABEL_13;
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 context];
  v5 = [v4 configuration];
  v6 = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
  v7 = [v5 applyServiceEnabledForRegion:v6];
  v8 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Payment web service supports apply service: %d", &v16, 8u);
  }

  if (v7)
  {
    v9 = [v4 applyServiceFeaturesForRegionMeetingEnablementThreshold:v6];
    v10 = PKDeviceSupportedFeatureIdentifiers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Device supported feature identifiers: %@", &v16, 0xCu);
    }

    v11 = MEMORY[0x1E695DFA8];
    v12 = [v9 allKeys];
    v13 = [v11 setWithArray:v12];

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

- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)a3
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

- (BOOL)paymentWebServiceSupportsAccounts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 needsRegistration])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 context];
    v7 = [v6 primaryRegion];
    v8 = [v7 hasAccounts];

    v9 = [v6 configuration];
    v10 = [(PKPaymentWebServiceTargetDevice *)self deviceRegion];
    v11 = [v9 accountServiceEnabledForRegion:v10];

    v5 = v8 | v11;
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109632;
      v14[1] = v5 & 1;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v11 & 1;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Payment web service supports accounts = %d, hasAccount: %d, regionEnabled: %d", v14, 0x14u);
    }
  }

  return v5 & 1;
}

- (void)updatedAccountsForProvisioningWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[PKAccountService sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__PKPaymentWebServiceTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C4BD0;
    v7 = v4;
    v8 = v3;
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

- (void)accountsWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[PKAccountService sharedInstance];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKPaymentWebServiceTargetDevice_accountsWithCompletion___block_invoke;
    v5[3] = &unk_1E79C5440;
    v6 = v3;
    [v4 accountsWithCompletion:v5];
  }
}

- (void)accountWithIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[PKAccountService sharedInstance];
    [v7 accountWithIdentifier:v6 completion:v5];
  }
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[PKAccountService sharedInstance];
    [v7 triggerCloudStoreZoneCreationForAccount:v6 withCompletion:v5];
  }
}

- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PKPaymentWebServiceTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C5468;
    v7 = v4;
    [(PKPaymentWebServiceTargetDevice *)self _cachedFeatureApplicationsForProvisioningWithCompletion:v6];
  }
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__PKPaymentWebServiceTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke;
    v6[3] = &unk_1E79C5440;
    v7 = v4;
    [(PKPaymentWebServiceTargetDevice *)self _featureApplicationsForProvisioningWithCompletion:v6];
  }
}

- (void)applePayTrustKeyForIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPaymentWebServiceTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke;
    v8[3] = &unk_1E79C5490;
    v9 = v5;
    v10 = v6;
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

- (void)createApplePayTrustKeyWithRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentWebServiceTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke;
  v10[3] = &unk_1E79C5490;
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
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

- (void)deleteApplePayTrustKeyWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPaymentWebServiceTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E79C5490;
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
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

- (void)paymentWebService:(id)a3 deviceMetadataWithFields:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a3 _paymentDevice];
  [v8 paymentDeviceMetadataFields:a4 completion:v7];
}

- (void)paymentWebService:(id)a3 updateAccountWithIdentifier:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = +[PKAccountService sharedInstance];
  [v8 updateAccountWithIdentifier:v7 extended:0 completion:v6];
}

- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_activePasscodeUpgradeFlowAssertionActive)
  {
    self->_activePasscodeUpgradeFlowAssertionActive = 1;
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 processName];
    v9 = [v7 processIdentifier];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", v8, v9];
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

  if (v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"PasscodeUpgradeFlowActive assertion already exists.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v6 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v7];
    (v5)[2](v5, 0, v8);
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

- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentService *)self->_paymentService plansForPaymentPassWithUniqueIdentifier:v7 completion:v6];
  }
}

- (void)startRequiringUpgradedPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_requiringUpgradedPasscodeAssertionActive)
  {
    self->_requiringUpgradedPasscodeAssertionActive = 1;
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 processName];
    v7 = [v5 processIdentifier];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", v6, v7];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PKPaymentWebServiceTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke;
    v9[3] = &unk_1E79C54E0;
    objc_copyWeak(&v11, &location);
    v10 = v4;
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

- (void)paymentWebService:(id)a3 updateMetadataOnPass:(id)a4 withCredential:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [a4 uniqueID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PKPaymentWebServiceTargetDevice_paymentWebService_updateMetadataOnPass_withCredential_completion___block_invoke;
  v13[3] = &unk_1E79C4E78;
  v14 = v9;
  v12 = v9;
  [(PKPaymentWebServiceTargetDevice *)self _updateMetadataOnPassWithIdentifier:v11 credential:v10 completion:v13];
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

- (void)requestBackgroundRegistrationForCredential:(id)a3 withCompletion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Requesting to background register credential: %@", &v10, 0xCu);
  }

  v9 = [v6 identifier];
  [(PKPaymentWebServiceTargetDevice *)self _requestBackgroundRegistrationForCredentialWithIdentifier:v9 completion:v7];
}

- (void)paymentWebService:(id)a3 subcredentialInvitationsWithCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)paymentWebService:(id)a3 matchingInvitationOnDevice:(id)a4 withTimeout:(unint64_t)a5 completion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 0, 0);
  }
}

- (void)deleteInvitation:(id)a3 completion:(id)a4
{
  v7 = a4;
  [(PKPaymentService *)self->_paymentService deleteSharingMessage:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 1);
    v6 = v7;
  }
}

- (void)carKeyStartShareAcceptanceFlow:(id)a3 transportIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentWebServiceTargetDevice_carKeyStartShareAcceptanceFlow_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 startShareAcceptanceFlowWithInvitation:v9 fromMailboxIdentifier:v8 completion:v13];
}

- (void)carKeyRoutingInformationForInvitationWithIdentifier:(id)a3 transportIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentWebServiceTargetDevice_carKeyRoutingInformationForInvitationWithIdentifier_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5508;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 routingInformationForInvitationWithIdentifier:v9 fromMailboxIdentifier:v8 completionHandler:v13];
}

- (void)carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 transportIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __131__PKPaymentWebServiceTargetDevice_carKeyGetProductPlanIdentifierRequestForInvitationWithIdentifier_transportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5530;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 getProductPlanIdentifierRequestForInvitationWithIdentifier:v9 fromMailboxIdentifier:v8 completion:v13];
}

- (void)carKeySetEncryptedProductPlanIdentifierContainer:(id)a3 invitationIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116__PKPaymentWebServiceTargetDevice_carKeySetEncryptedProductPlanIdentifierContainer_invitationIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 setEncryptedProductPlanIdentifierContainer:v9 forInvitationIdentifier:v8 completion:v13];
}

- (void)carKeyAccountAttestationRequestForCredential:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PKPaymentWebServiceTargetDevice_carKeyAccountAttestationRequestForCredential_completion___block_invoke;
  v10[3] = &unk_1E79C5558;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(PKDAManager *)v8 accountAttestionRequestForCredential:v6 withCompletion:v10];
}

- (void)carKeyGetPretrackShareDataForShare:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PKPaymentWebServiceTargetDevice_carKeyGetPretrackShareDataForShare_completion___block_invoke;
  v10[3] = &unk_1E79C5530;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(PKDAManager *)v8 getPretrackShareDataForShare:v6 withCompletion:v10];
}

- (void)carKeyGetPretrackRequestForKeyWithInvitationIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKPaymentWebServiceTargetDevice_carKeyGetPretrackRequestForKeyWithInvitationIdentifier_completion___block_invoke;
  v10[3] = &unk_1E79C5530;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(PKDAManager *)v8 getPretrackRequestForKeyWithIdentifier:v6 withCompletion:v10];
}

- (void)carKeySetAccountAttestation:(id)a3 forCredential:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PKPaymentWebServiceTargetDevice_carKeySetAccountAttestation_forCredential_completion___block_invoke;
  v13[3] = &unk_1E79C4860;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 setAccountAttestation:v9 forUpgradeCredential:v8 withCompletion:v13];
}

- (void)carKeyUpdateTrackingAttestation:(id)a3 forCredential:(id)a4 encryptedContainer:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(PKDAManager);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__PKPaymentWebServiceTargetDevice_carKeyUpdateTrackingAttestation_forCredential_encryptedContainer_completion___block_invoke;
  v16[3] = &unk_1E79C4888;
  v17 = v13;
  v18 = v9;
  v14 = v13;
  v15 = v9;
  [(PKDAManager *)v14 updateTrackingAttestation:v12 forCredential:v11 encryptedContainer:v10 completion:v16];
}

- (void)carKeyPreWarmForManufacturer:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PKPaymentWebServiceTargetDevice_carKeyPreWarmForManufacturer_completion___block_invoke;
  v10[3] = &unk_1E79C4860;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(PKDAManager *)v8 preWarmForManufacturer:v6 completion:v10];
}

- (void)carKeyAcceptInvitationWithInvitationIdentifier:(id)a3 activationCode:(id)a4 analyticsUpdateConfig:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(PKDAManager);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __130__PKPaymentWebServiceTargetDevice_carKeyAcceptInvitationWithInvitationIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke;
  v16[3] = &unk_1E79C5580;
  v17 = v13;
  v18 = v9;
  v14 = v13;
  v15 = v9;
  [(PKDAManager *)v14 acceptInvitationWithIdentifier:v12 activationCode:v11 analyticsUpdateConfig:v10 completion:v16];
}

- (void)carKeyRejectInvitation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PKDAManager);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PKPaymentWebServiceTargetDevice_carKeyRejectInvitation_completion___block_invoke;
  v10[3] = &unk_1E79C55A8;
  v11 = v7;
  v12 = v5;
  v8 = v7;
  v9 = v5;
  [(PKDAManager *)v8 rejectInvitation:v6 completion:v10];
}

- (void)carKeyHandleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentWebServiceTargetDevice_carKeyHandleRecipientMessage_forInvitationIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C5580;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 handleRecipientMessage:v9 forInvitationIdentifier:v8 completion:v13];
}

- (void)carKeyRetryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PKDAManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__PKPaymentWebServiceTargetDevice_carKeyRetryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke;
  v13[3] = &unk_1E79C5580;
  v14 = v10;
  v15 = v7;
  v11 = v10;
  v12 = v7;
  [(PKDAManager *)v11 retryActivationCode:v8 forInvitationIdentifier:v9 completion:v13];
}

- (void)carKeyDecryptData:(id)a3 credential:(id)a4 ephemeralPublicKey:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = objc_alloc_init(PKDAManager);
  v13 = [(PKDAManager *)v14 decryptData:v12 withCredential:v11 ephemeralPublicKey:v10];

  v9[2](v9, v13, 0);
}

- (void)deviceSupportedRadioTechnologiesWithCompletion:(id)a3
{
  v5 = a3;
  v4 = PKRadioTechnologyForConfigurationTechnology(3);
  (*(a3 + 2))(v5, v4);
}

- (void)paymentWebService:(id)a3 generateTransactionKeyWithParameters:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 _paymentDevice];
  [v9 generateTransactionKeyWithParameters:v8 withCompletion:v7];
}

- (void)saveProvisioningSupportData:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v11)
  {
    [(PKPaymentService *)self->_paymentService saveProvisioningSupportData:v11 forPassUniqueIdentifier:v8 completion:v9];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)paymentWebService:(id)a3 requestPassUpgrade:(id)a4 pass:(id)a5 completion:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    passUpgradeController = self->_passUpgradeController;
    if (!passUpgradeController)
    {
      v14 = [[PKPassUpgradeController alloc] initWithWebService:v16];
      v15 = self->_passUpgradeController;
      self->_passUpgradeController = v14;

      passUpgradeController = self->_passUpgradeController;
    }

    [(PKPassUpgradeControllerBase *)passUpgradeController requestPassUpgrade:v10 pass:v11 diagnosticReason:@"User upgrade" completion:v12];
  }
}

- (void)_addPass:(id)a3 properties:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [[PKPassIngestionPayload alloc] initWithPass:v8];
    [(PKPassIngestionPayload *)v12 setProperties:v9];
    passLibrary = self->_passLibrary;
    v18[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__PKPaymentWebServiceTargetDevice__addPass_properties_completion___block_invoke;
    v15[3] = &unk_1E79C55D0;
    v15[4] = self;
    v16 = v8;
    v17 = v11;
    [(PKPassLibrary *)passLibrary addPassesWithIngestionPayloads:v14 withCompletionHandler:v15];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
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

- (id)upgradeRequestForPass:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentDefaultDataProvider alloc];
  paymentService = self->_paymentService;
  v7 = +[PKSecureElement sharedSecureElement];
  v8 = [(PKPaymentDefaultDataProvider *)v5 initWithPaymentService:paymentService secureElement:v7];

  v9 = [[PKPassLibraryDefaultDataProvider alloc] initWithPassLibrary:self->_passLibrary];
  v10 = [[PKExpressPassController alloc] initWithPaymentDataProvider:v8 passLibraryDataProvider:v9 isForWatch:0];
  v11 = [(PKExpressPassController *)v10 expressModeUpgradeRequestForPass:v4];

  return v11;
}

- (void)_cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  paymentService = self->_paymentService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceTargetDevice__cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C5468;
  v8 = v4;
  v6 = v4;
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

- (void)_updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  paymentService = self->_paymentService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PKPaymentWebServiceTargetDevice__updateMetadataOnPassWithIdentifier_credential_completion___block_invoke;
  v13[3] = &unk_1E79C5618;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  [(PKPaymentService *)paymentService updateMetadataOnPassWithIdentifier:v11 credential:a4 completion:v13];
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

- (void)_canAddSecureElementPassWithConfiguration:(id)a3 completion:(id)a4
{
  if (a4)
  {
    [(PKPassLibrary *)self->_passLibrary canAddSecureElementPassWithConfiguration:a3 completion:?];
  }
}

- (void)_performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PKDeviceRegistrationService sharedInstance];
  [v10 performDeviceRegistrationReturningContextForReason:v9 brokerURL:v8 actionType:1 completion:v7];
}

- (void)generateIdentityProvisioningAttestationsWithISOCredential:(id)a3 pairingID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E6997DE0];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __114__PKPaymentWebServiceTargetDevice_generateIdentityProvisioningAttestationsWithISOCredential_pairingID_completion___block_invoke;
  v13[3] = &unk_1E79C5660;
  v14 = v7;
  v12 = v7;
  [v11 generateIdentityProvisioningAttestationsWithCredential:v10 pairingID:v9 completion:v13];
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

- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 canSaveFPANCardWithDescriptor:v10 credential:v9 completion:v8];
}

- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F23B3BF0];
  [(PKAutoFillCardManager *)v8 activeFPANCardsWithOptions:a3 allowedCardTypes:v7 completion:v6];
}

- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v16 credentialForFPANCard:v15 authorization:v14 options:a5 merchantHost:v13 completion:v12];
}

- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 updateFPANCardWithDescriptor:v10 credential:v9 completion:v8];
}

- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPaymentService *)self->_paymentService insertFPANCardWithDescriptor:v8 credential:v9 completion:v10];
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
    v10[2](v10, v12);
  }
}

- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v8 deleteFPANCardWithDescriptor:v7 completion:v6];
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v12 fpanCredentialForPrimaryAccountIdentifier:v11 passUniqueID:v10 credential:a5 error:a6];
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [[PKAutoFillCardManager alloc] initWithPaymentService:self->_paymentService];
  [(PKAutoFillCardManager *)v11 fpanDescriptorAndCredentialForFPAN:v10 descriptor:a4 credential:a5 error:a6];
}

@end