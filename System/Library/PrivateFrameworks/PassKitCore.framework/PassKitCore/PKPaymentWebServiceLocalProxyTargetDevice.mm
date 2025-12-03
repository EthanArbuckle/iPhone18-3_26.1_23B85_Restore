@interface PKPaymentWebServiceLocalProxyTargetDevice
- (BOOL)areAliroAccessPassesSupported;
- (BOOL)areUnifiedAccessPassesSupported;
- (BOOL)claimSecureElementForCurrentUser;
- (BOOL)meetsProvisioningRequirements:(id)requirements missingRequirements:(id *)missingRequirements;
- (BOOL)paymentWebService:(id)service canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier;
- (BOOL)paymentWebService:(id)service hasPassesOfType:(unint64_t)type;
- (BOOL)paymentWebServiceSupportsAccounts:(id)accounts;
- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)registration;
- (BOOL)secureElementIsAvailable;
- (BOOL)supportsLowPowerExpressMode;
- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default;
- (PKPaymentWebServiceLocalProxyTargetDevice)initWithConnection:(id)connection;
- (id)_proxyWithErrorHandler:(id)handler;
- (id)_synchronousProxyWithErrorHandler:(id)handler;
- (id)allPaymentApplicationUsageSummaries;
- (id)appleAccountInformation;
- (id)context;
- (id)passesWithPrimaryPaymentApplicationStates:(id)states;
- (id)passesWithReaderIdentifier:(id)identifier;
- (id)paymentWebService:(id)service passesOfType:(unint64_t)type;
- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)service;
- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)service;
- (unint64_t)maximumPaymentCards;
- (unint64_t)paymentSupportedInCurrentRegionForWebService:(id)service;
- (unint64_t)registrationSupportedInCurrentRegionForWebService:(id)service;
- (unint64_t)secureElementOwnershipStateForCurrentUser;
- (void)_invalidateConnection;
- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion;
- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion;
- (void)addPendingProvisionings:(id)provisionings completion:(id)completion;
- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion;
- (void)archiveBackgroundContext:(id)context;
- (void)archiveContext:(id)context;
- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler;
- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion;
- (void)contextWithCompletion:(id)completion;
- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion;
- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion;
- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion;
- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy;
- (void)currentSecureElementSnapshot:(id)snapshot;
- (void)dealloc;
- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)deleteReservation:(id)reservation completion:(id)completion;
- (void)downloadAllPaymentPassesForPaymentWebService:(id)service;
- (void)encryptedServiceProviderDataForSecureElementPass:(id)pass completion:(id)completion;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion;
- (void)familyMembersWithCompletion:(id)completion;
- (void)featureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error;
- (void)fpanDescriptorAndCredentialForFPAN:(id)n descriptor:(id *)descriptor credential:(id *)credential error:(id *)error;
- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion;
- (void)meetsProvisioningRequirements:(id)requirements completion:(id)completion;
- (void)notePasscodeUpgradeFlowDidEnd;
- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion;
- (void)noteProvisioningDidBegin;
- (void)noteProvisioningDidEnd;
- (void)passesOfCardType:(int64_t)type withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandlerV2:(id)v2;
- (void)paymentWebService:(id)service configurationDataWithCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service deleteApplicationWithAID:(id)d;
- (void)paymentWebService:(id)service deviceMetadataWithFields:(unint64_t)fields completion:(id)completion;
- (void)paymentWebService:(id)service didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic;
- (void)paymentWebService:(id)service generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion;
- (void)paymentWebService:(id)service handlePotentialExpressPass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion;
- (void)paymentWebService:(id)service provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion;
- (void)paymentWebService:(id)service registrationDataWithCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service removePass:(id)pass withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service requestPassUpgrade:(id)upgrade pass:(id)pass completion:(id)completion;
- (void)paymentWebService:(id)service setDefaultPaymentPassUniqueIdentifier:(id)identifier;
- (void)paymentWebService:(id)service setNewAuthRandom:(id)random;
- (void)paymentWebService:(id)service setNewAuthRandomIfNecessaryReturningPairingState:(id)state;
- (void)paymentWebService:(id)service signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)paymentWebService:(id)service storePassOwnershipToken:(id)token withIdentifier:(id)identifier;
- (void)paymentWebService:(id)service updateAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)paymentWebService:(id)service validateAddPreconditionsWithCompletion:(id)completion;
- (void)paymentWebService:(id)service validateTransferPreconditionsWithCompletion:(id)completion;
- (void)performDeviceCheckInWithCompletion:(id)completion;
- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion;
- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion;
- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler;
- (void)renewAppleAccountWithCompletionHandler:(id)handler;
- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion;
- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy;
- (void)statusForShareableCredentials:(id)credentials completion:(id)completion;
- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion;
- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)updatedAccountsForProvisioningWithCompletion:(id)completion;
@end

@implementation PKPaymentWebServiceLocalProxyTargetDevice

- (PKPaymentWebServiceLocalProxyTargetDevice)initWithConnection:(id)connection
{
  v30 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v27.receiver = self;
  v27.super_class = PKPaymentWebServiceLocalProxyTargetDevice;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.passkit.localTargetDeviceHandlerQueue", MEMORY[0x1E69E96A8]);
    handlerQueue = v6->_handlerQueue;
    v6->_handlerQueue = v7;

    objc_storeStrong(&v6->_connection, connection);
    connection = v6->_connection;
    v10 = PKPaymentWebServiceProxyObjectInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v10];

    invalidationHandler = [(NSXPCConnection *)v6->_connection invalidationHandler];
    v12 = v6->_connection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__PKPaymentWebServiceLocalProxyTargetDevice_initWithConnection___block_invoke;
    v25[3] = &unk_1E79C4428;
    v13 = invalidationHandler;
    v26 = v13;
    [(NSXPCConnection *)v12 setInvalidationHandler:v25];
    interruptionHandler = [(NSXPCConnection *)v6->_connection interruptionHandler];
    v15 = v6->_connection;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64__PKPaymentWebServiceLocalProxyTargetDevice_initWithConnection___block_invoke_294;
    v23 = &unk_1E79C4428;
    v16 = interruptionHandler;
    v24 = v16;
    [(NSXPCConnection *)v15 setInterruptionHandler:&v20];
    [(NSXPCConnection *)v6->_connection resume:v20];
    v17 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v6->_connection;
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_INFO, "PKPaymentWebServiceLocalProxyTargetDevice initialized with XPC Connection: %@.", buf, 0xCu);
    }
  }

  return v6;
}

void __64__PKPaymentWebServiceLocalProxyTargetDevice_initWithConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKPaymentWebServiceLocalProxyTargetDevice connection invalidated.", v3, 2u);
  }
}

void __64__PKPaymentWebServiceLocalProxyTargetDevice_initWithConnection___block_invoke_294(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKPaymentWebServiceLocalProxyTargetDevice connection interrupted.", v3, 2u);
  }
}

- (void)dealloc
{
  [(PKPaymentWebServiceLocalProxyTargetDevice *)self _invalidateConnection];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceLocalProxyTargetDevice dealloc'd.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentWebServiceLocalProxyTargetDevice;
  [(PKPaymentWebServiceLocalProxyTargetDevice *)&v4 dealloc];
}

- (void)_invalidateConnection
{
  v9 = *MEMORY[0x1E69E9840];
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy invalidateRemoteProxyTargetDevice];

  [(NSXPCConnection *)self->_connection invalidate];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v7 = 138412290;
    v8 = connection;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceLocalProxyTargetDevice invalidated XPC Connection: %@.", &v7, 0xCu);
  }

  v6 = self->_connection;
  self->_connection = 0;
}

- (id)_proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKPaymentWebServiceLocalProxyTargetDevice__proxyWithErrorHandler___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  if (!v7)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceLocalProxyTargetDevice failed to create a remote proxy object.", v10, 2u);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPaymentWebServiceLocalProxyTargetDevice failed to create a remote proxy object."];
  }

  return v7;
}

void __68__PKPaymentWebServiceLocalProxyTargetDevice__proxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "PKPaymentWebServiceLocalProxyTargetDevice XPC Error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)_synchronousProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PKPaymentWebServiceLocalProxyTargetDevice__synchronousProxyWithErrorHandler___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  if (!v7)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceLocalProxyTargetDevice failed to create a synchronous remote proxy object.", v10, 2u);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPaymentWebServiceLocalProxyTargetDevice failed to create a synchronous remote proxy object."];
  }

  return v7;
}

void __79__PKPaymentWebServiceLocalProxyTargetDevice__synchronousProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "PKPaymentWebServiceLocalProxyTargetDevice synchronous XPC Error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)context
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKPaymentWebServiceLocalProxyTargetDevice_context__block_invoke;
  v7[3] = &unk_1E79C4478;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(PKPaymentWebServiceLocalProxyTargetDevice *)self contextWithCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __52__PKPaymentWebServiceLocalProxyTargetDevice_context__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)contextWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79C44C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 getContextWithCompletion:v8];
}

uint64_t __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __67__PKPaymentWebServiceLocalProxyTargetDevice_contextWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)encryptedServiceProviderDataForSecureElementPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  passCopy = pass;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke_2;
  v11[3] = &unk_1E79C4518;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 getEncryptedServiceProviderDataForSecureElementPass:passCopy completion:v11];
}

uint64_t __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __105__PKPaymentWebServiceLocalProxyTargetDevice_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)paymentWebService:(id)service queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v15 = v8;
  topicCopy = topic;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2;
  v12[3] = &unk_1E79C4568;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 queueConnectionToTrustedServiceManagerForPushTopic:topicCopy withCompletion:v12];
}

uint64_t __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __129__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)paymentWebService:(id)service configurationDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E79C4590;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 getConfigurationDataWithCompletion:v9];
}

uint64_t __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_configurationDataWithCompletionHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)paymentWebService:(id)service registrationDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_registrationDataWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_registrationDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E79C45B8;
  v10 = v6;
  v8 = v6;
  [v7 getRegistrationDataWithCompletion:v9];
}

uint64_t __101__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_registrationDataWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __101__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_registrationDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentWebService:(id)service signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E79C4450;
  v10 = handlerCopy;
  v17 = v10;
  dataCopy = data;
  v12 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E79C4608;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 signData:dataCopy signatureEntanglementMode:mode withCompletion:v14];
}

uint64_t __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_3;
  v15[3] = &unk_1E79C45E0;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

uint64_t __120__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)paymentWebService:(id)service provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E79C4450;
  v8 = handlerCopy;
  v14 = v8;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E79C4630;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 getProvisioningDataIncludingDeviceMetadata:metadataCopy withCompletion:v11];
}

uint64_t __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __125__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)paymentWebService:(id)service deleteApplicationWithAID:(id)d
{
  dCopy = d;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy deleteApplicationWithAID:dCopy];
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  idCopy = id;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy deleteKeyMaterialForSubCredentialId:idCopy];
}

- (void)paymentWebService:(id)service didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic
{
  topicCopy = topic;
  mapCopy = map;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy didRegisterWithRegionMap:mapCopy primaryRegionTopic:topicCopy];
}

- (void)renewAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = handlerCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E79C4680;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 renewAppleAccountWithCompletionHandler:v8];
}

uint64_t __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2, 0);
  }

  return result;
}

void __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C4658;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __84__PKPaymentWebServiceLocalProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke_3(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

- (id)appleAccountInformation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKPaymentWebServiceLocalProxyTargetDevice_appleAccountInformation__block_invoke;
  v5[3] = &unk_1E79C46A8;
  v5[4] = &v6;
  [_synchronousProxy appleAccountInformationWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)paymentSupportedInCurrentRegionForWebService:(id)service
{
  serviceCopy = service;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_paymentSupportedInCurrentRegionForWebService___block_invoke;
  v8[3] = &unk_1E79C46D0;
  v8[4] = &v9;
  [_synchronousProxy paymentSupportedInCurrentRegion:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (unint64_t)registrationSupportedInCurrentRegionForWebService:(id)service
{
  serviceCopy = service;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__PKPaymentWebServiceLocalProxyTargetDevice_registrationSupportedInCurrentRegionForWebService___block_invoke;
  v8[3] = &unk_1E79C46D0;
  v8[4] = &v9;
  [_synchronousProxy registrationSupportedInCurrentRegionWithCompletion:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)noteProvisioningDidBegin
{
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy noteProvisioningDidBegin];
}

- (void)noteProvisioningDidEnd
{
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy noteProvisioningDidEnd];
}

- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPaymentWebServiceLocalProxyTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v7];
  [v6 notePasscodeUpgradeFlowWillBeginWithCompletion:v5];
}

uint64_t __92__PKPaymentWebServiceLocalProxyTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)notePasscodeUpgradeFlowDidEnd
{
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy notePasscodeUpgradeFlowDidEnd];
}

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPaymentWebServiceLocalProxyTargetDevice_enforceUpgradedPasscodePolicyWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v7];
  [v6 enforceUpgradedPasscodePolicyWithCompletion:v5];
}

uint64_t __89__PKPaymentWebServiceLocalProxyTargetDevice_enforceUpgradedPasscodePolicyWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy
{
  policyCopy = policy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentWebServiceLocalProxyTargetDevice_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke;
  v7[3] = &unk_1E79C4450;
  v8 = policyCopy;
  v5 = policyCopy;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v7];
  [v6 currentPasscodeMeetsUpgradedPasscodePolicy:v5];
}

uint64_t __88__PKPaymentWebServiceLocalProxyTargetDevice_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy
{
  policyCopy = policy;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:policyCopy];
}

- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79C4568;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 startRequiringUpgradedPasscodeWithCompletion:v8];
}

uint64_t __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __90__PKPaymentWebServiceLocalProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)endRequiringUpgradedPasscodeIfNecessary
{
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy endRequiringUpgradedPasscodeIfNecessary];
}

- (void)paymentWebService:(id)service setNewAuthRandomIfNecessaryReturningPairingState:(id)state
{
  stateCopy = state;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = stateCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke_2;
  v9[3] = &unk_1E79C4720;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 setNewAuthRandomIfNecessaryReturningPairingState:v9];
}

uint64_t __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke_3;
  v13[3] = &unk_1E79C46F8;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a2;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

uint64_t __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)paymentWebService:(id)service setNewAuthRandom:(id)random
{
  randomCopy = random;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = randomCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke_2;
  v9[3] = &unk_1E79C4770;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 setNewAuthRandom:v9];
}

uint64_t __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke_3;
  v4[3] = &unk_1E79C4748;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

uint64_t __80__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_setNewAuthRandom___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (BOOL)paymentWebService:(id)service hasPassesOfType:(unint64_t)type
{
  serviceCopy = service;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_hasPassesOfType___block_invoke;
  v9[3] = &unk_1E79C4798;
  v9[4] = &v10;
  [_synchronousProxy hasPassesOfType:type completion:v9];

  LOBYTE(type) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return type;
}

- (id)paymentWebService:(id)service passesOfType:(unint64_t)type
{
  serviceCopy = service;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passesOfType___block_invoke;
  v10[3] = &unk_1E79C47C0;
  v10[4] = &v11;
  [_synchronousProxy passesOfType:type completion:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __76__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passesOfType___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[PKPassLibrary sharedInstance];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [PKRemoteDataAccessor alloc];
        v12 = [v10 uniqueID];
        v13 = [(PKRemoteDataAccessor *)v11 initWithLibrary:v4 objectUniqueID:v12];

        [v10 setDataAccessor:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

- (id)passesWithReaderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKPaymentWebServiceLocalProxyTargetDevice_passesWithReaderIdentifier___block_invoke;
  v8[3] = &unk_1E79C47E8;
  v8[4] = &v9;
  [_synchronousProxy passesWithReaderIdentifier:identifierCopy completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __72__PKPaymentWebServiceLocalProxyTargetDevice_passesWithReaderIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[PKPassLibrary sharedInstance];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [PKRemoteDataAccessor alloc];
        v12 = [v10 uniqueID];
        v13 = [(PKRemoteDataAccessor *)v11 initWithLibrary:v4 objectUniqueID:v12];

        [v10 setDataAccessor:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

- (id)passesWithPrimaryPaymentApplicationStates:(id)states
{
  statesCopy = states;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PKPaymentWebServiceLocalProxyTargetDevice_passesWithPrimaryPaymentApplicationStates___block_invoke;
  v8[3] = &unk_1E79C47E8;
  v8[4] = &v9;
  [_synchronousProxy passesWithPrimaryPaymentApplicationStates:statesCopy completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __87__PKPaymentWebServiceLocalProxyTargetDevice_passesWithPrimaryPaymentApplicationStates___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[PKPassLibrary sharedInstance];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [PKRemoteDataAccessor alloc];
        v12 = [v10 uniqueID];
        v13 = [(PKRemoteDataAccessor *)v11 initWithLibrary:v4 objectUniqueID:v12];

        [v10 setDataAccessor:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

- (BOOL)paymentWebService:(id)service canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_canProvisionPaymentPassWithPrimaryAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79C4798;
  v10[4] = &v11;
  [_synchronousProxy canProvisionPaymentPassWithPrimaryAccountIdentifier:identifierCopy completion:v10];

  LOBYTE(_synchronousProxy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return _synchronousProxy;
}

- (void)paymentWebService:(id)service validateAddPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke_2;
  v9[3] = &unk_1E79C4568;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 validateAddPreconditionsWithCompletion:v9];
}

void __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKDisplayableErrorForCommonType(0, 0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateAddPreconditionsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)paymentWebService:(id)service handlePotentialExpressPass:(id)pass withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = handlerCopy;
  v15 = v8;
  passCopy = pass;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E79C4810;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 handlePotentialExpressPass:passCopy withCompletion:v12];
}

uint64_t __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __112__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_handlePotentialExpressPass_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)passesOfCardType:(int64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E79C4450;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E79C4838;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 passesOfCardType:type completion:v10];
}

uint64_t __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __84__PKPaymentWebServiceLocalProxyTargetDevice_passesOfCardType_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandler:(id)handler
{
  serviceCopy = service;
  passCopy = pass;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  archiveData = [passCopy archiveData];
  objc_autoreleasePoolPop(v11);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke;
  v18[3] = &unk_1E79C4450;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E79C4568;
  v16[4] = self;
  v17 = v13;
  v15 = v13;
  [v14 addPassData:archiveData completion:v16];
}

uint64_t __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C4428;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t __100__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)downloadAllPaymentPassesForPaymentWebService:(id)service
{
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy downloadAllPaymentPasses];
}

- (BOOL)supportsLowPowerExpressMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PKPaymentWebServiceLocalProxyTargetDevice_supportsLowPowerExpressMode__block_invoke;
  v4[3] = &unk_1E79C4798;
  v4[4] = &v5;
  [_synchronousProxy supportsLowPowerExpressModeWithCompletion:v4];

  LOBYTE(_synchronousProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _synchronousProxy;
}

- (BOOL)claimSecureElementForCurrentUser
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUser__block_invoke;
  v4[3] = &unk_1E79C4798;
  v4[4] = &v5;
  [_synchronousProxy claimSecureElementForCurrentUserWithCompletion:v4];

  LOBYTE(_synchronousProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _synchronousProxy;
}

- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4860;
  v5 = completionCopy;
  v10[4] = self;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke_3;
  v8[3] = &unk_1E79C4888;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 claimSecureElementForCurrentUserWithCompletion:v8];
}

void __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __92__PKPaymentWebServiceLocalProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke_4;
    v5[3] = &unk_1E79C4748;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

- (unint64_t)secureElementOwnershipStateForCurrentUser
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_secureElementOwnershipStateForCurrentUser__block_invoke;
  v5[3] = &unk_1E79C46D0;
  v5[4] = &v6;
  [_synchronousProxy secureElementOwnershipStateForCurrentUserWithCompletion:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)paymentWebService:(id)service validateTransferPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke_2;
  v9[3] = &unk_1E79C4568;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 validateTransferPreconditionsWithCompletion:v9];
}

void __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKDisplayableErrorForCommonType(0, 0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_validateTransferPreconditionsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)paymentWebService:(id)service addPaymentPass:(id)pass withCompletionHandlerV2:(id)v2
{
  serviceCopy = service;
  passCopy = pass;
  v2Copy = v2;
  v11 = objc_autoreleasePoolPush();
  archiveData = [passCopy archiveData];
  objc_autoreleasePoolPop(v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke;
  v20[3] = &unk_1E79C4450;
  v13 = v2Copy;
  v21 = v13;
  v14 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke_2;
  v17[3] = &unk_1E79C48B0;
  v18 = passCopy;
  v19 = v13;
  v17[4] = self;
  v15 = passCopy;
  v16 = v13;
  [v14 addPassData:archiveData completion:v17];
}

uint64_t __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 48);
  v8 = a2;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

uint64_t __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_addPaymentPass_withCompletionHandlerV2___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)paymentWebService:(id)service removePass:(id)pass withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = handlerCopy;
  v15 = v8;
  passCopy = pass;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E79C4568;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 removePass:passCopy completion:v12];
}

uint64_t __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __96__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_removePass_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)paymentWebServiceSupportsPeerPaymentRegistration:(id)registration
{
  registrationCopy = registration;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebServiceSupportsPeerPaymentRegistration___block_invoke;
  v7[3] = &unk_1E79C4798;
  v7[4] = &v8;
  [_synchronousProxy supportsPeerPaymentRegistrationWithCompletion:v7];

  LOBYTE(_synchronousProxy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return _synchronousProxy;
}

- (BOOL)paymentWebServiceSupportsAccounts:(id)accounts
{
  accountsCopy = accounts;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebServiceSupportsAccounts___block_invoke;
  v7[3] = &unk_1E79C4798;
  v7[4] = &v8;
  [_synchronousProxy supportsAccountsWithCompletion:v7];

  LOBYTE(_synchronousProxy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return _synchronousProxy;
}

- (id)supportedFeatureIdentifiersWithPaymentWebService:(id)service
{
  serviceCopy = service;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = [MEMORY[0x1E695DFD8] set];
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_supportedFeatureIdentifiersWithPaymentWebService___block_invoke;
  v8[3] = &unk_1E79C47E8;
  v8[4] = &v9;
  [_synchronousProxy supportedFeatureIdentifiersWithCompletion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:(id)service
{
  serviceCopy = service;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = [MEMORY[0x1E695DFD8] set];
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116__PKPaymentWebServiceLocalProxyTargetDevice_supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService___block_invoke;
  v8[3] = &unk_1E79C47E8;
  v8[4] = &v9;
  [_synchronousProxy supportedFeatureIdentifiersForAccountProvisioningWithCompletion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)updatedAccountsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke;
    v10[3] = &unk_1E79C4450;
    v6 = completionCopy;
    v11 = v6;
    v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke_2;
    v8[3] = &unk_1E79C48D8;
    v8[4] = self;
    v9 = v6;
    [v7 updatedAccountsForProvisioningWithCompletion:v8];
  }
}

void __90__PKPaymentWebServiceLocalProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke;
    v13[3] = &unk_1E79C4450;
    v8 = completionCopy;
    v14 = v8;
    accountCopy = account;
    v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_2;
    v11[3] = &unk_1E79C4770;
    v11[4] = self;
    v12 = v8;
    [v10 triggerCloudStoreZoneCreationForAccount:accountCopy withCompletion:v11];
  }
}

void __100__PKPaymentWebServiceLocalProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_3;
  v4[3] = &unk_1E79C4748;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
    v10[3] = &unk_1E79C4450;
    v6 = completionCopy;
    v11 = v6;
    v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke_2;
    v8[3] = &unk_1E79C4838;
    v8[4] = self;
    v9 = v6;
    [v7 cachedFeatureApplicationsForProvisioningWithCompletion:v8];
  }
}

void __100__PKPaymentWebServiceLocalProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke;
    v10[3] = &unk_1E79C4450;
    v6 = completionCopy;
    v11 = v6;
    v7 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke_2;
    v8[3] = &unk_1E79C4838;
    v8[4] = self;
    v9 = v6;
    [v7 featureApplicationsForProvisioningWithCompletion:v8];
  }
}

void __94__PKPaymentWebServiceLocalProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)paymentWebService:(id)service deviceMetadataWithFields:(unint64_t)fields completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_deviceMetadataWithFields_completion___block_invoke;
    v13[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v14 = v9;
    v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_deviceMetadataWithFields_completion___block_invoke_2;
    v11[3] = &unk_1E79C4900;
    v11[4] = self;
    v12 = v9;
    [v10 deviceMetadataWithFields:fields completion:v11];
  }
}

void __99__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_deviceMetadataWithFields_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_deviceMetadataWithFields_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)paymentWebService:(id)service updateAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_updateAccountWithIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v15 = v9;
    identifierCopy = identifier;
    v11 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_updateAccountWithIdentifier_completion___block_invoke_2;
    v12[3] = &unk_1E79C4928;
    v12[4] = self;
    v13 = v9;
    [v11 updateAccountWithIdentifier:identifierCopy completion:v12];
  }
}

void __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_updateAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_updateAccountWithIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke;
    v13[3] = &unk_1E79C4450;
    v8 = completionCopy;
    v14 = v8;
    identifierCopy = identifier;
    v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke_2;
    v11[3] = &unk_1E79C4950;
    v11[4] = self;
    v12 = v8;
    [v10 applePayTrustKeyForIdentifier:identifierCopy completion:v11];
  }
}

void __86__PKPaymentWebServiceLocalProxyTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_applePayTrustKeyForIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  requestCopy = request;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke_2;
  v11[3] = &unk_1E79C4978;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 createApplePayTrustKeyWithRequest:requestCopy completion:v11];
}

uint64_t __90__PKPaymentWebServiceLocalProxyTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __90__PKPaymentWebServiceLocalProxyTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PKPaymentWebServiceLocalProxyTargetDevice_createApplePayTrustKeyWithRequest_completion___block_invoke_3;
    block[3] = &unk_1E79C44F0;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__PKPaymentWebServiceLocalProxyTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  identifierCopy = identifier;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PKPaymentWebServiceLocalProxyTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_1E79C4888;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 deleteApplePayTrustKeyWithIdentifier:identifierCopy completion:v11];
}

uint64_t __93__PKPaymentWebServiceLocalProxyTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __93__PKPaymentWebServiceLocalProxyTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __93__PKPaymentWebServiceLocalProxyTargetDevice_deleteApplePayTrustKeyWithIdentifier_completion___block_invoke_3;
    v5[3] = &unk_1E79C4748;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

- (void)meetsProvisioningRequirements:(id)requirements completion:(id)completion
{
  requirementsCopy = requirements;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_meetsProvisioningRequirements_completion___block_invoke;
  v14[3] = &unk_1E79C4860;
  v8 = completionCopy;
  v15 = requirementsCopy;
  v16 = v8;
  v9 = requirementsCopy;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_meetsProvisioningRequirements_completion___block_invoke_2;
  v12[3] = &unk_1E79C49A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 usingSynchronousProxy:0 meetsProvisioningRequirements:v9 completion:v12];
}

void __86__PKPaymentWebServiceLocalProxyTargetDevice_meetsProvisioningRequirements_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_meetsProvisioningRequirements_completion___block_invoke_3;
  block[3] = &unk_1E79C4540;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)meetsProvisioningRequirements:(id)requirements missingRequirements:(id *)missingRequirements
{
  requirementsCopy = requirements;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKPaymentWebServiceLocalProxyTargetDevice_meetsProvisioningRequirements_missingRequirements___block_invoke;
  v10[3] = &unk_1E79C49C8;
  v10[4] = &v17;
  v10[5] = &v11;
  [_synchronousProxy usingSynchronousProxy:1 meetsProvisioningRequirements:requirementsCopy completion:v10];

  if (missingRequirements)
  {
    *missingRequirements = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (void)currentSecureElementSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_currentSecureElementSnapshot___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = snapshotCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_currentSecureElementSnapshot___block_invoke_2;
  v8[3] = &unk_1E79C49F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 currentSecureElementSnapshot:v8];
}

void __74__PKPaymentWebServiceLocalProxyTargetDevice_currentSecureElementSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_currentSecureElementSnapshot___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke;
  v16[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v17 = v9;
  metadataCopy = metadata;
  typesCopy = types;
  v12 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke_2;
  v14[3] = &unk_1E79C4A18;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 reserveStorageForAppletTypes:typesCopy metadata:metadataCopy completion:v14];
}

void __94__PKPaymentWebServiceLocalProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPaymentWebServiceLocalProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke_3;
  v13[3] = &unk_1E79C46F8;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

- (void)deleteReservation:(id)reservation completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_deleteReservation_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  reservationCopy = reservation;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_deleteReservation_completion___block_invoke_2;
  v11[3] = &unk_1E79C4A40;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 deleteReservation:reservationCopy completion:v11];
}

void __74__PKPaymentWebServiceLocalProxyTargetDevice_deleteReservation_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPaymentWebServiceLocalProxyTargetDevice_deleteReservation_completion___block_invoke_3;
  block[3] = &unk_1E79C4428;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (unint64_t)maximumPaymentCards
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPaymentWebServiceLocalProxyTargetDevice_maximumPaymentCards__block_invoke;
  v5[3] = &unk_1E79C46D0;
  v5[4] = &v6;
  [_synchronousProxy maximumPaymentCardsWithCompletion:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allPaymentApplicationUsageSummaries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_allPaymentApplicationUsageSummaries__block_invoke;
  v5[3] = &unk_1E79C47C0;
  v5[4] = &v6;
  [_synchronousProxy allPaymentApplicationUsageSummariesWithCompletion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addPendingProvisionings:(id)provisionings completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_addPendingProvisionings_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  provisioningsCopy = provisionings;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_addPendingProvisionings_completion___block_invoke_2;
  v11[3] = &unk_1E79C4860;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 addPendingProvisionings:provisioningsCopy completion:v11];
}

uint64_t __80__PKPaymentWebServiceLocalProxyTargetDevice_addPendingProvisionings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__PKPaymentWebServiceLocalProxyTargetDevice_addPendingProvisionings_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_addPendingProvisionings_completion___block_invoke_3;
    v6[3] = &unk_1E79C44A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (BOOL)secureElementIsAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PKPaymentWebServiceLocalProxyTargetDevice_secureElementIsAvailable__block_invoke;
  v4[3] = &unk_1E79C4798;
  v4[4] = &v5;
  [_synchronousProxy secureElementIsAvailableWithCompletion:v4];

  LOBYTE(_synchronousProxy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return _synchronousProxy;
}

- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default
{
  defaultCopy = default;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_willPassWithUniqueIdentifierAutomaticallyBecomeDefault___block_invoke;
  v7[3] = &unk_1E79C4798;
  v7[4] = &v8;
  [_synchronousProxy willPassWithUniqueIdentifierAutomaticallyBecomeDefault:defaultCopy completion:v7];

  LOBYTE(_synchronousProxy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return _synchronousProxy;
}

- (void)paymentWebService:(id)service setDefaultPaymentPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy setDefaultPaymentPassUniqueIdentifier:identifierCopy];
}

- (void)paymentWebService:(id)service requestPassUpgrade:(id)upgrade pass:(id)pass completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, pass);
  }
}

- (void)performDeviceCheckInWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79C4A68;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performDeviceCheckInWithCompletion:v8];
}

uint64_t __80__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __80__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke_3;
    block[3] = &unk_1E79C4540;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke;
  v16[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v17 = v9;
  lCopy = l;
  reasonCopy = reason;
  v12 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke_2;
  v14[3] = &unk_1E79C4AB8;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 performDeviceRegistrationReturningContextForReason:reasonCopy brokerURL:lCopy completion:v14];
}

uint64_t __117__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __117__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke_3;
    v11[3] = &unk_1E79C4A90;
    v14 = v9;
    v15 = a2;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

- (void)paymentWebService:(id)service storePassOwnershipToken:(id)token withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tokenCopy = token;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy storePassOwnershipToken:tokenCopy withIdentifier:identifierCopy];
}

- (void)paymentWebService:(id)service passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passOwnershipTokenWithIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v15 = v8;
  identifierCopy = identifier;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passOwnershipTokenWithIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E79C4AE0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 passOwnershipTokenWithIdentifier:identifierCopy completion:v12];
}

uint64_t __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passOwnershipTokenWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passOwnershipTokenWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_passOwnershipTokenWithIdentifier_completion___block_invoke_3;
    v6[3] = &unk_1E79C44A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)familyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPaymentWebServiceLocalProxyTargetDevice_familyMembersWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKPaymentWebServiceLocalProxyTargetDevice_familyMembersWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79C4B08;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 familyMembersWithCompletion:v8];
}

uint64_t __73__PKPaymentWebServiceLocalProxyTargetDevice_familyMembersWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__PKPaymentWebServiceLocalProxyTargetDevice_familyMembersWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__PKPaymentWebServiceLocalProxyTargetDevice_familyMembersWithCompletion___block_invoke_3;
    v6[3] = &unk_1E79C44A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)paymentWebService:(id)service generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_generateTransactionKeyWithParameters_withCompletion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v15 = v8;
  parametersCopy = parameters;
  v10 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_generateTransactionKeyWithParameters_withCompletion___block_invoke_2;
  v12[3] = &unk_1E79C4B58;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 generateTransactionKeyWithParameters:parametersCopy withCompletion:v12];
}

uint64_t __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_generateTransactionKeyWithParameters_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, a2);
  }

  return result;
}

void __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_generateTransactionKeyWithParameters_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__PKPaymentWebServiceLocalProxyTargetDevice_paymentWebService_generateTransactionKeyWithParameters_withCompletion___block_invoke_3;
  block[3] = &unk_1E79C4B30;
  v14 = *(a1 + 40);
  v23 = v12;
  v24 = v14;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, block);
}

- (void)statusForShareableCredentials:(id)credentials completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_statusForShareableCredentials_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  credentialsCopy = credentials;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_statusForShareableCredentials_completion___block_invoke_2;
  v11[3] = &unk_1E79C4B80;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 statusForShareableCredentials:credentialsCopy completion:v11];
}

uint64_t __86__PKPaymentWebServiceLocalProxyTargetDevice_statusForShareableCredentials_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __86__PKPaymentWebServiceLocalProxyTargetDevice_statusForShareableCredentials_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKPaymentWebServiceLocalProxyTargetDevice_statusForShareableCredentials_completion___block_invoke_3;
  v12[3] = &unk_1E79C4A90;
  v15 = *(a1 + 40);
  v16 = a2;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion
{
  circleCopy = circle;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v16 = v9;
  targetCopy = target;
  v11 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BA8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 prepareProvisioningTarget:targetCopy checkFamilyCircle:circleCopy completion:v13];
}

uint64_t __100__PKPaymentWebServiceLocalProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __100__PKPaymentWebServiceLocalProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_3;
  v13[3] = &unk_1E79C46F8;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = handlerCopy;
  v14 = v7;
  numbersCopy = numbers;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke_2;
  v11[3] = &unk_1E79C4BD0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 provisionHomeKeyPassForSerialNumbers:numbersCopy completionHandler:v11];
}

uint64_t __100__PKPaymentWebServiceLocalProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __100__PKPaymentWebServiceLocalProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentWebServiceLocalProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PKPaymentWebServiceLocalProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = handlerCopy;
  v11 = v5;
  v6 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPaymentWebServiceLocalProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E79C4BD0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 availableHomeKeyPassesWithCompletionHandler:v8];
}

void __89__PKPaymentWebServiceLocalProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPaymentWebServiceLocalProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion
{
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPaymentWebServiceLocalProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke;
  v22[3] = &unk_1E79C4450;
  v13 = completionCopy;
  v23 = v13;
  authCopy = auth;
  challengeCopy = challenge;
  hashCopy = hash;
  partyCopy = party;
  v18 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __136__PKPaymentWebServiceLocalProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke_2;
  v20[3] = &unk_1E79C4BF8;
  v20[4] = self;
  v21 = v13;
  v19 = v13;
  [v18 createFidoKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy challenge:challengeCopy externalizedAuth:authCopy completion:v20];
}

void __136__PKPaymentWebServiceLocalProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __136__PKPaymentWebServiceLocalProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke_3;
  block[3] = &unk_1E79C4B30;
  v14 = *(a1 + 40);
  v23 = v12;
  v24 = v14;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, block);
}

- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __128__PKPaymentWebServiceLocalProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke;
  v19[3] = &unk_1E79C4450;
  v11 = completionCopy;
  v20 = v11;
  keyHashCopy = keyHash;
  hashCopy = hash;
  partyCopy = party;
  v15 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__PKPaymentWebServiceLocalProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke_2;
  v17[3] = &unk_1E79C4770;
  v17[4] = self;
  v18 = v11;
  v16 = v11;
  [v15 checkFidoKeyPresenceForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy completion:v17];
}

void __128__PKPaymentWebServiceLocalProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __128__PKPaymentWebServiceLocalProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke_3;
  v4[3] = &unk_1E79C4748;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion
{
  completionCopy = completion;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __170__PKPaymentWebServiceLocalProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke;
  v28[3] = &unk_1E79C4450;
  v17 = completionCopy;
  v29 = v17;
  authCopy = auth;
  identifierCopy = identifier;
  challengeCopy = challenge;
  keyHashCopy = keyHash;
  hashCopy = hash;
  partyCopy = party;
  v24 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v28];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __170__PKPaymentWebServiceLocalProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke_2;
  v26[3] = &unk_1E79C4C20;
  v26[4] = self;
  v27 = v17;
  v25 = v17;
  [v24 signWithFidoKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy challenge:challengeCopy publicKeyIdentifier:identifierCopy externalizedAuth:authCopy completion:v26];
}

void __170__PKPaymentWebServiceLocalProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __170__PKPaymentWebServiceLocalProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PKPaymentWebServiceLocalProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  idCopy = id;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__PKPaymentWebServiceLocalProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_2;
  v11[3] = &unk_1E79C4C20;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 generateSEEncryptionCertificateForSubCredentialId:idCopy completion:v11];
}

void __106__PKPaymentWebServiceLocalProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PKPaymentWebServiceLocalProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  idCopy = id;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke_2;
  v11[3] = &unk_1E79C4C48;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 generateISOEncryptionCertificateForSubCredentialId:idCopy completion:v11];
}

void __107__PKPaymentWebServiceLocalProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PKPaymentWebServiceLocalProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke_3;
  v15[3] = &unk_1E79C45E0;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

- (BOOL)areUnifiedAccessPassesSupported
{
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  areUnifiedAccessPassesSupported = [_synchronousProxy areUnifiedAccessPassesSupported];

  return areUnifiedAccessPassesSupported;
}

- (BOOL)areAliroAccessPassesSupported
{
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  areAliroAccessPassesSupported = [_synchronousProxy areAliroAccessPassesSupported];

  return areAliroAccessPassesSupported;
}

- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v16 = v9;
  blobsCopy = blobs;
  v11 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 addISO18013Blobs:blobsCopy cardType:type completion:v13];
}

void __82__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v16 = v9;
  credentialsCopy = credentials;
  v11 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 addISO18013BlobsFromCredentials:credentialsCopy cardType:type completion:v13];
}

void __97__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion
{
  existingCopy = existing;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v16 = v9;
  identifierCopy = identifier;
  v11 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C20;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 longTermPrivacyKeyForCredentialGroupIdentifier:identifierCopy reuseExisting:existingCopy completion:v13];
}

void __117__PKPaymentWebServiceLocalProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentWebServiceLocalProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  requirementsCopy = requirements;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__PKPaymentWebServiceLocalProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke_2;
  v11[3] = &unk_1E79C4C98;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 generateAuxiliaryCapabilitiesForRequirements:requirementsCopy completion:v11];
}

void __101__PKPaymentWebServiceLocalProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebServiceLocalProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  v16[3] = &unk_1E79C4450;
  v9 = completionCopy;
  v17 = v9;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v12 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke_2;
  v14[3] = &unk_1E79C4CC0;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 canSaveFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:v14];
}

void __97__PKPaymentWebServiceLocalProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__PKPaymentWebServiceLocalProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKPaymentWebServiceLocalProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v13 = v7;
  v8 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPaymentWebServiceLocalProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke_2;
  v10[3] = &unk_1E79C4838;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 activeFPANCardsWithOptions:options completion:v10];
}

void __83__PKPaymentWebServiceLocalProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentWebServiceLocalProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke_3;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113__PKPaymentWebServiceLocalProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
  v21[3] = &unk_1E79C4450;
  v13 = completionCopy;
  v22 = v13;
  hostCopy = host;
  authorizationCopy = authorization;
  cardCopy = card;
  v17 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __113__PKPaymentWebServiceLocalProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_2;
  v19[3] = &unk_1E79C4CE8;
  v19[4] = self;
  v20 = v13;
  v18 = v13;
  [v17 credentialForFPANCard:cardCopy authorization:authorizationCopy options:options merchantHost:hostCopy completion:v19];
}

void __113__PKPaymentWebServiceLocalProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PKPaymentWebServiceLocalProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentWebServiceLocalProxyTargetDevice_updateFPANCardWithDescriptor_credential_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v9 = completionCopy;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v12 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v13];
  [v12 updateFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:v9];
}

- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKPaymentWebServiceLocalProxyTargetDevice_deleteFPANCardWithDescriptor_completion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v11 = completionCopy;
  v7 = completionCopy;
  descriptorCopy = descriptor;
  v9 = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxyWithErrorHandler:v10];
  [v9 deleteFPANCardWithDescriptor:descriptorCopy completion:v7];
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__PKPaymentWebServiceLocalProxyTargetDevice_fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke;
  v13[3] = &unk_1E79C4D10;
  v13[5] = &v20;
  v13[6] = &v14;
  v13[4] = self;
  [_synchronousProxy fpanCredentialForPrimaryAccountIdentifier:identifierCopy passUniqueID:dCopy completion:v13];

  if (error)
  {
    objc_storeStrong(error, v15[5]);
  }

  if (credential)
  {
    objc_storeStrong(credential, v21[5]);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __117__PKPaymentWebServiceLocalProxyTargetDevice_fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)n descriptor:(id *)descriptor credential:(id *)credential error:(id *)error
{
  nCopy = n;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  _synchronousProxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _synchronousProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__PKPaymentWebServiceLocalProxyTargetDevice_fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke;
  v12[3] = &unk_1E79C4D38;
  v12[6] = &v19;
  v12[7] = &v13;
  v12[4] = self;
  v12[5] = &v25;
  [_synchronousProxy fpanDescriptorAndCredentialForFPAN:nCopy completion:v12];

  if (error)
  {
    objc_storeStrong(error, v14[5]);
  }

  if (descriptor)
  {
    objc_storeStrong(descriptor, v26[5]);
  }

  if (credential)
  {
    objc_storeStrong(credential, v20[5]);
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

void __108__PKPaymentWebServiceLocalProxyTargetDevice_fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)archiveContext:(id)context
{
  contextCopy = context;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy archiveContext:contextCopy];
}

- (void)archiveBackgroundContext:(id)context
{
  contextCopy = context;
  _proxy = [(PKPaymentWebServiceLocalProxyTargetDevice *)self _proxy];
  [_proxy archiveBackgroundContext:contextCopy];
}

@end