@interface PKPaymentWebServiceRemoteProxyTargetDevice
- (PKPaymentWebServiceRemoteProxyTargetDevice)initWithWebService:(id)service connection:(id)connection;
- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion;
- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion;
- (void)addPassData:(id)data completion:(id)completion;
- (void)addPendingProvisionings:(id)provisionings completion:(id)completion;
- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)completion;
- (void)appleAccountInformationWithCompletion:(id)completion;
- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion;
- (void)archiveContext:(id)context;
- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler;
- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion;
- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion;
- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion;
- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion;
- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion;
- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy;
- (void)currentSecureElementSnapshot:(id)snapshot;
- (void)dealloc;
- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteApplicationWithAID:(id)d;
- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)deleteReservation:(id)reservation completion:(id)completion;
- (void)deviceMetadataWithFields:(unint64_t)fields completion:(id)completion;
- (void)didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic;
- (void)downloadAllPaymentPasses;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion;
- (void)familyMembersWithCompletion:(id)completion;
- (void)featureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d completion:(id)completion;
- (void)fpanDescriptorAndCredentialForFPAN:(id)n completion:(id)completion;
- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion;
- (void)getConfigurationDataWithCompletion:(id)completion;
- (void)getContextWithCompletion:(id)completion;
- (void)getEncryptedServiceProviderDataForSecureElementPass:(id)pass completion:(id)completion;
- (void)getProvisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletion:(id)completion;
- (void)getRegistrationDataWithCompletion:(id)completion;
- (void)getTrustedDeviceEnrollmentInfoWithCompletion:(id)completion;
- (void)handlePotentialExpressPass:(id)pass withCompletion:(id)completion;
- (void)hasPassesOfType:(unint64_t)type completion:(id)completion;
- (void)identityPassesOfTypes:(id)types completion:(id)completion;
- (void)invalidateRemoteProxyTargetDevice;
- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion;
- (void)maximumPaymentCardsWithCompletion:(id)completion;
- (void)notePasscodeUpgradeFlowDidEnd;
- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion;
- (void)noteProvisioningDidBegin;
- (void)noteProvisioningDidEnd;
- (void)passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion;
- (void)passesOfCardType:(int64_t)type completion:(id)completion;
- (void)passesOfType:(unint64_t)type completion:(id)completion;
- (void)passesWithPrimaryPaymentApplicationStates:(id)states completion:(id)completion;
- (void)passesWithReaderIdentifier:(id)identifier completion:(id)completion;
- (void)paymentSupportedInCurrentRegion:(id)region;
- (void)performDeviceCheckInWithCompletion:(id)completion;
- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion;
- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion;
- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler;
- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion;
- (void)registrationSupportedInCurrentRegionWithCompletion:(id)completion;
- (void)removePass:(id)pass completion:(id)completion;
- (void)renewAppleAccountWithCompletionHandler:(id)handler;
- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion;
- (void)secureElementIsAvailableWithCompletion:(id)completion;
- (void)secureElementOwnershipStateForCurrentUserWithCompletion:(id)completion;
- (void)setDefaultPaymentPassUniqueIdentifier:(id)identifier;
- (void)setNewAuthRandom:(id)random;
- (void)setNewAuthRandomIfNecessaryReturningPairingState:(id)state;
- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletion:(id)completion;
- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy;
- (void)statusForShareableCredentials:(id)credentials completion:(id)completion;
- (void)storePassOwnershipToken:(id)token withIdentifier:(id)identifier;
- (void)supportedFeatureIdentifiersForAccountProvisioningWithCompletion:(id)completion;
- (void)supportedFeatureIdentifiersWithCompletion:(id)completion;
- (void)supportsAccountsWithCompletion:(id)completion;
- (void)supportsLowPowerExpressModeWithCompletion:(id)completion;
- (void)supportsPeerPaymentRegistrationWithCompletion:(id)completion;
- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion;
- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)updatedAccountsForProvisioningWithCompletion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion;
- (void)validateAddPreconditionsWithCompletion:(id)completion;
- (void)validateTransferPreconditionsWithCompletion:(id)completion;
- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion;
@end

@implementation PKPaymentWebServiceRemoteProxyTargetDevice

- (PKPaymentWebServiceRemoteProxyTargetDevice)initWithWebService:(id)service connection:(id)connection
{
  v44 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  connectionCopy = connection;
  v39.receiver = self;
  v39.super_class = PKPaymentWebServiceRemoteProxyTargetDevice;
  v9 = [(PKPaymentWebServiceRemoteProxyTargetDevice *)&v39 init];
  if (!v9)
  {
LABEL_15:
    v29 = v9;
    goto LABEL_16;
  }

  v10 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
  if ([(PKEntitlementWhitelist *)v10 paymentAllAccess]|| [(PKEntitlementWhitelist *)v10 peerPaymentAllAccess])
  {
    v11 = dispatch_queue_create("com.apple.passkit.remoteTargetDeviceHandlerQueue", MEMORY[0x1E69E96A8]);
    handlerQueue = v9->_handlerQueue;
    v9->_handlerQueue = v11;

    objc_storeStrong(&v9->_webService, service);
    if (!v9->_webService)
    {
      v13 = +[PKPaymentWebService sharedService];
      webService = v9->_webService;
      v9->_webService = v13;

      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v9->_webService;
        *buf = 138412546;
        v41 = v16;
        v42 = 2080;
        v43 = "[PKPaymentWebServiceRemoteProxyTargetDevice initWithWebService:connection:]";
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Shared webService (%@) used as one was not provided to %s.", buf, 0x16u);
      }
    }

    targetDevice = [serviceCopy targetDevice];
    targetDevice = v9->_targetDevice;
    v9->_targetDevice = targetDevice;

    objc_storeStrong(&v9->_connection, connection);
    connection = v9->_connection;
    if (!connection)
    {
      v20 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "[PKPaymentWebServiceRemoteProxyTargetDevice initWithWebService:connection:]";
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "No connection provided to %s", buf, 0xCu);
      }

      connection = v9->_connection;
    }

    v21 = PKPaymentWebServiceProxyObjectInterface();
    [(NSXPCConnection *)connection setExportedInterface:v21];

    [(NSXPCConnection *)v9->_connection setExportedObject:v9];
    invalidationHandler = [(NSXPCConnection *)v9->_connection invalidationHandler];
    v23 = v9->_connection;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke;
    v37[3] = &unk_1E79C4428;
    v24 = invalidationHandler;
    v38 = v24;
    [(NSXPCConnection *)v23 setInvalidationHandler:v37];
    interruptionHandler = [(NSXPCConnection *)v9->_connection interruptionHandler];
    v26 = v9->_connection;
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke_643;
    v35 = &unk_1E79C4428;
    v27 = interruptionHandler;
    v36 = v27;
    [(NSXPCConnection *)v26 setInterruptionHandler:&v32];
    [(NSXPCConnection *)v9->_connection resume:v32];
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = serviceCopy;
      v42 = 2112;
      v43 = connectionCopy;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceRemoteProxyTargetDevice initialized with Web Service: %@ for XPC Connection: %@.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v31 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v9;
    _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Client is not entitled for PKPaymentWebServiceRemoteProxyTargetDevice (%p)", buf, 0xCu);
  }

  v29 = 0;
LABEL_16:

  return v29;
}

void __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKPaymentWebServiceRemoteProxyTargetDevice connection invalidated.", v3, 2u);
  }
}

uint64_t __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke_643(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKPaymentWebServiceRemoteProxyTargetDevice connection interrupted.", v4, 2u);
  }

  return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unexpected interruption on PKPaymentWebServiceRemoteProxyTargetDevice connection."];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    webService = self->_webService;
    *buf = 138412290;
    v8 = webService;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceRemoteProxyTargetDevice with Web Service: %@ dealloc'd.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = PKPaymentWebServiceRemoteProxyTargetDevice;
  [(PKPaymentWebServiceRemoteProxyTargetDevice *)&v6 dealloc];
}

- (void)getContextWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentWebServiceRemoteProxyTargetDevice_getContextWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __71__PKPaymentWebServiceRemoteProxyTargetDevice_getContextWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(*(a1 + 32) + 16) context];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentWebServiceRemoteProxyTargetDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = topicCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = topicCopy;
  dispatch_async(handlerQueue, block);
}

- (void)getEncryptedServiceProviderDataForSecureElementPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_getEncryptedServiceProviderDataForSecureElementPass_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = passCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = passCopy;
  dispatch_async(handlerQueue, block);
}

- (void)getConfigurationDataWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_getConfigurationDataWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)getRegistrationDataWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPaymentWebServiceRemoteProxyTargetDevice_getRegistrationDataWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)getTrustedDeviceEnrollmentInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_getTrustedDeviceEnrollmentInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __91__PKPaymentWebServiceRemoteProxyTargetDevice_getTrustedDeviceEnrollmentInfoWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(*(a1 + 32) + 24) trustedDeviceEnrollmentInfoForWebService:*(*(a1 + 32) + 16)];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentWebServiceRemoteProxyTargetDevice_signData_signatureEntanglementMode_withCompletion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = dataCopy;
  v15 = completionCopy;
  modeCopy = mode;
  v11 = completionCopy;
  v12 = dataCopy;
  dispatch_async(handlerQueue, v13);
}

- (void)supportsLowPowerExpressModeWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportsLowPowerExpressModeWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

uint64_t __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportsLowPowerExpressModeWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) supportsLowPowerExpressMode];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)getProvisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPaymentWebServiceRemoteProxyTargetDevice_getProvisioningDataIncludingDeviceMetadata_withCompletion___block_invoke;
  block[3] = &unk_1E79C4DB0;
  metadataCopy = metadata;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(handlerQueue, block);
}

- (void)deleteApplicationWithAID:(id)d
{
  dCopy = d;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentWebServiceRemoteProxyTargetDevice_deleteApplicationWithAID___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  idCopy = id;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPaymentWebServiceRemoteProxyTargetDevice_deleteKeyMaterialForSubCredentialId___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)didRegisterWithRegionMap:(id)map primaryRegionTopic:(id)topic
{
  mapCopy = map;
  topicCopy = topic;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_didRegisterWithRegionMap_primaryRegionTopic___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = mapCopy;
  v13 = topicCopy;
  v9 = topicCopy;
  v10 = mapCopy;
  dispatch_async(handlerQueue, block);
}

- (void)paymentSupportedInCurrentRegion:(id)region
{
  regionCopy = region;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPaymentWebServiceRemoteProxyTargetDevice_paymentSupportedInCurrentRegion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
  dispatch_async(handlerQueue, v7);
}

uint64_t __78__PKPaymentWebServiceRemoteProxyTargetDevice_paymentSupportedInCurrentRegion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(*(result + 32) + 24) paymentSupportedInCurrentRegionForWebService:*(*(result + 32) + 16)];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)registrationSupportedInCurrentRegionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PKPaymentWebServiceRemoteProxyTargetDevice_registrationSupportedInCurrentRegionWithCompletion___block_invoke;
    v7[3] = &unk_1E79C44A0;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(handlerQueue, v7);
  }
}

uint64_t __97__PKPaymentWebServiceRemoteProxyTargetDevice_registrationSupportedInCurrentRegionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) registrationSupportedInCurrentRegionForWebService:*(*(a1 + 32) + 16)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)noteProvisioningDidBegin
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentWebServiceRemoteProxyTargetDevice_noteProvisioningDidBegin__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)noteProvisioningDidEnd
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentWebServiceRemoteProxyTargetDevice_noteProvisioningDidEnd__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)setNewAuthRandomIfNecessaryReturningPairingState:(id)state
{
  stateCopy = state;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)setNewAuthRandom:(id)random
{
  randomCopy = random;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentWebServiceRemoteProxyTargetDevice_setNewAuthRandom___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = randomCopy;
  v6 = randomCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)hasPassesOfType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentWebServiceRemoteProxyTargetDevice_hasPassesOfType_completion___block_invoke;
  block[3] = &unk_1E79C4658;
  block[4] = self;
  v10 = completionCopy;
  typeCopy = type;
  v8 = completionCopy;
  dispatch_async(handlerQueue, block);
}

void *__73__PKPaymentWebServiceRemoteProxyTargetDevice_hasPassesOfType_completion___block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = [*(result[4] + 24) paymentWebService:*(result[4] + 16) hasPassesOfType:result[6]];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)passesOfType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfType_completion___block_invoke;
    block[3] = &unk_1E79C4658;
    block[4] = self;
    v10 = completionCopy;
    typeCopy = type;
    dispatch_async(handlerQueue, block);
  }
}

void __70__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfType_completion___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = [*(a1[4] + 24) paymentWebService:*(a1[4] + 16) passesOfType:a1[6]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesOfCardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfCardType_completion___block_invoke;
    block[3] = &unk_1E79C4658;
    block[4] = self;
    v10 = completionCopy;
    typeCopy = type;
    dispatch_async(handlerQueue, block);
  }
}

void __74__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfCardType_completion___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = [*(a1[4] + 24) passesOfCardType:a1[6]];
  (*(v1 + 16))(v1, v2);
}

- (void)identityPassesOfTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKPaymentWebServiceRemoteProxyTargetDevice_identityPassesOfTypes_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = completionCopy;
    block[4] = self;
    v11 = typesCopy;
    dispatch_async(handlerQueue, block);
  }
}

void __79__PKPaymentWebServiceRemoteProxyTargetDevice_identityPassesOfTypes_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) identityPassesOfTypes:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesWithReaderIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithReaderIdentifier_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = completionCopy;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_async(handlerQueue, block);
  }
}

void __84__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithReaderIdentifier_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) passesWithReaderIdentifier:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesWithPrimaryPaymentApplicationStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithPrimaryPaymentApplicationStates_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = completionCopy;
    block[4] = self;
    v11 = statesCopy;
    dispatch_async(handlerQueue, block);
  }
}

void __99__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithPrimaryPaymentApplicationStates_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) passesWithPrimaryPaymentApplicationStates:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_canProvisionPaymentPassWithPrimaryAccountIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C44F0;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(handlerQueue, block);
}

void *__109__PKPaymentWebServiceRemoteProxyTargetDevice_canProvisionPaymentPassWithPrimaryAccountIdentifier_completion___block_invoke(void *result)
{
  v1 = result[6];
  if (v1)
  {
    v2 = [*(result[4] + 24) paymentWebService:*(result[4] + 16) canProvisionPaymentPassWithPrimaryAccountIdentifier:result[5]];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)validateAddPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_validateAddPreconditionsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __85__PKPaymentWebServiceRemoteProxyTargetDevice_validateAddPreconditionsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_validateAddPreconditionsWithCompletion___block_invoke_2;
  v4[3] = &unk_1E79C4E50;
  v5 = *(a1 + 40);
  [v2 paymentWebService:v3 validateAddPreconditionsWithCompletion:v4];
}

uint64_t __85__PKPaymentWebServiceRemoteProxyTargetDevice_validateAddPreconditionsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)downloadAllPaymentPasses
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentWebServiceRemoteProxyTargetDevice_downloadAllPaymentPasses__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)claimSecureElementForCurrentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentWebServiceRemoteProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)secureElementOwnershipStateForCurrentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__PKPaymentWebServiceRemoteProxyTargetDevice_secureElementOwnershipStateForCurrentUserWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

uint64_t __102__PKPaymentWebServiceRemoteProxyTargetDevice_secureElementOwnershipStateForCurrentUserWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(*(result + 32) + 24) secureElementOwnershipStateForCurrentUser];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)validateTransferPreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_validateTransferPreconditionsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __90__PKPaymentWebServiceRemoteProxyTargetDevice_validateTransferPreconditionsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_validateTransferPreconditionsWithCompletion___block_invoke_2;
  v4[3] = &unk_1E79C4E50;
  v5 = *(a1 + 40);
  [v2 paymentWebService:v3 validateTransferPreconditionsWithCompletion:v4];
}

uint64_t __90__PKPaymentWebServiceRemoteProxyTargetDevice_validateTransferPreconditionsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handlePotentialExpressPass:(id)pass withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_handlePotentialExpressPass_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = passCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = passCopy;
  dispatch_async(handlerQueue, block);
}

- (void)addPassData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentWebServiceRemoteProxyTargetDevice_addPassData_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  v12 = dataCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(handlerQueue, block);
}

void __69__PKPaymentWebServiceRemoteProxyTargetDevice_addPassData_completion___block_invoke(uint64_t a1)
{
  v2 = [(PKObject *)PKPass createWithData:*(a1 + 32) warnings:0 error:0];
  if ([v2 passType] == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = *(a1 + 40);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__PKPaymentWebServiceRemoteProxyTargetDevice_addPassData_completion___block_invoke_2;
    v9[3] = &unk_1E79C4E78;
    v10 = *(a1 + 48);
    [v6 paymentWebService:v7 addPaymentPass:v4 withCompletionHandlerV2:v9];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }
}

uint64_t __69__PKPaymentWebServiceRemoteProxyTargetDevice_addPassData_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0, 0);
  }

  return result;
}

- (void)removePass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentWebServiceRemoteProxyTargetDevice_removePass_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = passCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = passCopy;
  dispatch_async(handlerQueue, block);
}

- (void)supportsPeerPaymentRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPaymentWebServiceRemoteProxyTargetDevice_supportsPeerPaymentRegistrationWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

uint64_t __92__PKPaymentWebServiceRemoteProxyTargetDevice_supportsPeerPaymentRegistrationWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(*(result + 32) + 24) paymentWebServiceSupportsPeerPaymentRegistration:*(*(result + 32) + 16)];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)supportsAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPaymentWebServiceRemoteProxyTargetDevice_supportsAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

uint64_t __77__PKPaymentWebServiceRemoteProxyTargetDevice_supportsAccountsWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(*(result + 32) + 24) paymentWebServiceSupportsAccounts:*(*(result + 32) + 16)];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)supportedFeatureIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(*(a1 + 32) + 24) supportedFeatureIdentifiersWithPaymentWebService:*(*(a1 + 32) + 16)];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)supportedFeatureIdentifiersForAccountProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersForAccountProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __110__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersForAccountProvisioningWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(*(a1 + 32) + 24) supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:*(*(a1 + 32) + 16)];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)updatedAccountsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = accountCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accountCopy;
  dispatch_async(handlerQueue, block);
}

- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)deviceMetadataWithFields:(unint64_t)fields completion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPaymentWebServiceRemoteProxyTargetDevice_deviceMetadataWithFields_completion___block_invoke;
  block[3] = &unk_1E79C4EA0;
  v10 = completionCopy;
  fieldsCopy = fields;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(handlerQueue, block);
}

- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion
{
  defaultCopy = default;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentWebServiceRemoteProxyTargetDevice_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke;
  block[3] = &unk_1E79C44F0;
  v12 = defaultCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = defaultCopy;
  v10 = completionCopy;
  dispatch_async(handlerQueue, block);
}

uint64_t __112__PKPaymentWebServiceRemoteProxyTargetDevice_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) willPassWithUniqueIdentifierAutomaticallyBecomeDefault:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)setDefaultPaymentPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_setDefaultPaymentPassUniqueIdentifier___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)renewAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)appleAccountInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_appleAccountInformationWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

void __84__PKPaymentWebServiceRemoteProxyTargetDevice_appleAccountInformationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) appleAccountInformation];
  (*(v1 + 16))(v1, v2);
}

- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentWebServiceRemoteProxyTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)notePasscodeUpgradeFlowDidEnd
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPaymentWebServiceRemoteProxyTargetDevice_notePasscodeUpgradeFlowDidEnd__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_enforceUpgradedPasscodePolicyWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy
{
  policyCopy = policy;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPaymentWebServiceRemoteProxyTargetDevice_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = policyCopy;
  v6 = policyCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy
{
  handlerQueue = self->_handlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PKPaymentWebServiceRemoteProxyTargetDevice_startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy___block_invoke;
  v4[3] = &unk_1E79C4EC8;
  v4[4] = self;
  policyCopy = policy;
  dispatch_async(handlerQueue, v4);
}

- (void)startRequiringUpgradedPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)endRequiringUpgradedPasscodeIfNecessary
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_endRequiringUpgradedPasscodeIfNecessary__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

- (void)performDeviceCheckInWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)performDeviceRegistrationReturningContextForReason:(id)reason brokerURL:(id)l completion:(id)completion
{
  reasonCopy = reason;
  lCopy = l;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __118__PKPaymentWebServiceRemoteProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = reasonCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = reasonCopy;
  dispatch_async(handlerQueue, v15);
}

- (void)storePassOwnershipToken:(id)token withIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_storePassOwnershipToken_withIdentifier___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = tokenCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = tokenCopy;
  dispatch_async(handlerQueue, block);
}

- (void)passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_passOwnershipTokenWithIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(handlerQueue, block);
}

- (void)familyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentWebServiceRemoteProxyTargetDevice_familyMembersWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)generateTransactionKeyWithParameters:(id)parameters withCompletion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_generateTransactionKeyWithParameters_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = parametersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = parametersCopy;
  dispatch_async(handlerQueue, block);
}

- (void)statusForShareableCredentials:(id)credentials completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentWebServiceRemoteProxyTargetDevice_statusForShareableCredentials_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = credentialsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = credentialsCopy;
  dispatch_async(handlerQueue, block);
}

- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion
{
  targetCopy = target;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = targetCopy;
  circleCopy = circle;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = targetCopy;
  dispatch_async(handlerQueue, v13);
}

- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler
{
  numbersCopy = numbers;
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = numbersCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = numbersCopy;
  dispatch_async(handlerQueue, block);
}

- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  authCopy = auth;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __137__PKPaymentWebServiceRemoteProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke;
  v23[3] = &unk_1E79C4F40;
  v23[4] = self;
  v24 = partyCopy;
  v25 = hashCopy;
  v26 = challengeCopy;
  v27 = authCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = authCopy;
  v20 = challengeCopy;
  v21 = hashCopy;
  v22 = partyCopy;
  dispatch_async(handlerQueue, v23);
}

- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__PKPaymentWebServiceRemoteProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke;
  block[3] = &unk_1E79C4F68;
  block[4] = self;
  v20 = partyCopy;
  v21 = hashCopy;
  v22 = keyHashCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = keyHashCopy;
  v17 = hashCopy;
  v18 = partyCopy;
  dispatch_async(handlerQueue, block);
}

- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  challengeCopy = challenge;
  identifierCopy = identifier;
  authCopy = auth;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __171__PKPaymentWebServiceRemoteProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke;
  v30[3] = &unk_1E79C4F90;
  v30[4] = self;
  v31 = partyCopy;
  v32 = hashCopy;
  v33 = keyHashCopy;
  v34 = challengeCopy;
  v35 = identifierCopy;
  v36 = authCopy;
  v37 = completionCopy;
  v23 = completionCopy;
  v24 = authCopy;
  v25 = identifierCopy;
  v26 = challengeCopy;
  v27 = keyHashCopy;
  v28 = hashCopy;
  v29 = partyCopy;
  dispatch_async(handlerQueue, v30);
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKPaymentWebServiceRemoteProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(handlerQueue, block);
}

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__PKPaymentWebServiceRemoteProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(handlerQueue, block);
}

- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion
{
  blobsCopy = blobs;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentWebServiceRemoteProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = blobsCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = blobsCopy;
  dispatch_async(handlerQueue, v13);
}

- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = credentialsCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = credentialsCopy;
  dispatch_async(handlerQueue, v13);
}

- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentWebServiceRemoteProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = identifierCopy;
  existingCopy = existing;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  dispatch_async(handlerQueue, v13);
}

- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion
{
  requirementsCopy = requirements;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceRemoteProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = requirementsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requirementsCopy;
  dispatch_async(handlerQueue, block);
}

- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion
{
  proxyCopy = proxy;
  requirementsCopy = requirements;
  completionCopy = completion;
  if (proxyCopy)
  {
    targetDevice = self->_targetDevice;
    v17 = 0;
    v11 = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice meetsProvisioningRequirements:requirementsCopy missingRequirements:&v17];
    v12 = v17;
    completionCopy[2](completionCopy, v11, v12);
  }

  else
  {
    handlerQueue = self->_handlerQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_usingSynchronousProxy_meetsProvisioningRequirements_completion___block_invoke;
    v14[3] = &unk_1E79C4D60;
    v14[4] = self;
    v15 = requirementsCopy;
    v16 = completionCopy;
    dispatch_async(handlerQueue, v14);
  }
}

- (void)currentSecureElementSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPaymentWebServiceRemoteProxyTargetDevice_currentSecureElementSnapshot___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion
{
  typesCopy = types;
  metadataCopy = metadata;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = typesCopy;
  v17 = metadataCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = metadataCopy;
  v14 = typesCopy;
  dispatch_async(handlerQueue, v15);
}

- (void)deleteReservation:(id)reservation completion:(id)completion
{
  reservationCopy = reservation;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPaymentWebServiceRemoteProxyTargetDevice_deleteReservation_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = reservationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reservationCopy;
  dispatch_async(handlerQueue, block);
}

- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  descriptorCopy = descriptor;
  credentialCopy = credential;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = descriptorCopy;
  v17 = credentialCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = credentialCopy;
  v14 = descriptorCopy;
  dispatch_async(handlerQueue, v15);
}

- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke;
  block[3] = &unk_1E79C4EA0;
  v10 = completionCopy;
  optionsCopy = options;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(handlerQueue, block);
}

- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion
{
  cardCopy = card;
  authorizationCopy = authorization;
  hostCopy = host;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__PKPaymentWebServiceRemoteProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
  v21[3] = &unk_1E79C4FB8;
  v21[4] = self;
  v22 = cardCopy;
  v23 = authorizationCopy;
  v24 = hostCopy;
  v25 = completionCopy;
  optionsCopy = options;
  v17 = completionCopy;
  v18 = hostCopy;
  v19 = authorizationCopy;
  v20 = cardCopy;
  dispatch_async(handlerQueue, v21);
}

- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  descriptorCopy = descriptor;
  credentialCopy = credential;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__PKPaymentWebServiceRemoteProxyTargetDevice_updateFPANCardWithDescriptor_credential_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = descriptorCopy;
  v17 = credentialCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = credentialCopy;
  v14 = descriptorCopy;
  dispatch_async(handlerQueue, v15);
}

- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPaymentWebServiceRemoteProxyTargetDevice_deleteFPANCardWithDescriptor_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = descriptorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = descriptorCopy;
  dispatch_async(handlerQueue, block);
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d completion:(id)completion
{
  targetDevice = self->_targetDevice;
  v11 = 0;
  v12 = 0;
  completionCopy = completion;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice fpanCredentialForPrimaryAccountIdentifier:identifier passUniqueID:d credential:&v12 error:&v11];
  v9 = v12;
  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)n completion:(id)completion
{
  targetDevice = self->_targetDevice;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  completionCopy = completion;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice fpanDescriptorAndCredentialForFPAN:n descriptor:&v12 credential:&v11 error:&v10];
  v7 = v12;
  v8 = v11;
  v9 = v10;
  completionCopy[2](completionCopy, v7, v8, v9);
}

- (void)applePayTrustKeyForIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)createApplePayTrustKeyWithRequest:(id)request completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)deleteApplePayTrustKeyWithIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)maximumPaymentCardsWithCompletion:(id)completion
{
  targetDevice = self->_targetDevice;
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice maximumPaymentCards]);
}

- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)completion
{
  targetDevice = self->_targetDevice;
  completionCopy = completion;
  allPaymentApplicationUsageSummaries = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice allPaymentApplicationUsageSummaries];
  (*(completion + 2))(completionCopy, allPaymentApplicationUsageSummaries);
}

- (void)secureElementIsAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = PKSecureElementIsAvailable() != 0;
  (*(completion + 2))(completionCopy, v4);
}

- (void)addPendingProvisionings:(id)provisionings completion:(id)completion
{
  provisioningsCopy = provisionings;
  completionCopy = completion;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_addPendingProvisionings_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = provisioningsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = provisioningsCopy;
  dispatch_async(handlerQueue, block);
}

void __81__PKPaymentWebServiceRemoteProxyTargetDevice_addPendingProvisionings_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_addPendingProvisionings_completion___block_invoke_2;
  v3[3] = &unk_1E79C4450;
  v4 = *(a1 + 48);
  [v2 addPendingProvisionings:v1 completion:v3];
}

uint64_t __81__PKPaymentWebServiceRemoteProxyTargetDevice_addPendingProvisionings_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)archiveContext:(id)context
{
  contextCopy = context;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentWebServiceRemoteProxyTargetDevice_archiveContext___block_invoke;
  block[3] = &unk_1E79C4E28;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(handlerQueue, block);
}

void __61__PKPaymentWebServiceRemoteProxyTargetDevice_archiveContext___block_invoke(uint64_t a1)
{
  v2 = +[PKPaymentService paymentService];
  [v2 setSharedPaymentWebServiceContext:*(a1 + 32)];
}

- (void)invalidateRemoteProxyTargetDevice
{
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentWebServiceRemoteProxyTargetDevice_invalidateRemoteProxyTargetDevice__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

void __79__PKPaymentWebServiceRemoteProxyTargetDevice_invalidateRemoteProxyTargetDevice__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) invalidate];
  [*(*(a1 + 32) + 32) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentWebServiceRemoteProxyTargetDevice with Web Service: %@ invalidated.", &v6, 0xCu);
  }
}

@end