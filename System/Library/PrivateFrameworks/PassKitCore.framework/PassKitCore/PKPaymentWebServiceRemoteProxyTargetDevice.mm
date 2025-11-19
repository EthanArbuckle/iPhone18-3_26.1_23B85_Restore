@interface PKPaymentWebServiceRemoteProxyTargetDevice
- (PKPaymentWebServiceRemoteProxyTargetDevice)initWithWebService:(id)a3 connection:(id)a4;
- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)addISO18013Blobs:(id)a3 cardType:(int64_t)a4 completion:(id)a5;
- (void)addISO18013BlobsFromCredentials:(id)a3 cardType:(int64_t)a4 completion:(id)a5;
- (void)addPassData:(id)a3 completion:(id)a4;
- (void)addPendingProvisionings:(id)a3 completion:(id)a4;
- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)a3;
- (void)appleAccountInformationWithCompletion:(id)a3;
- (void)applePayTrustKeyForIdentifier:(id)a3 completion:(id)a4;
- (void)archiveContext:(id)a3;
- (void)availableHomeKeyPassesWithCompletionHandler:(id)a3;
- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)a3 completion:(id)a4;
- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)checkFidoKeyPresenceForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 completion:(id)a6;
- (void)claimSecureElementForCurrentUserWithCompletion:(id)a3;
- (void)createApplePayTrustKeyWithRequest:(id)a3 completion:(id)a4;
- (void)createFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 externalizedAuth:(id)a6 completion:(id)a7;
- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7;
- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)a3;
- (void)currentSecureElementSnapshot:(id)a3;
- (void)dealloc;
- (void)deleteApplePayTrustKeyWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteApplicationWithAID:(id)a3;
- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4;
- (void)deleteKeyMaterialForSubCredentialId:(id)a3;
- (void)deleteReservation:(id)a3 completion:(id)a4;
- (void)deviceMetadataWithFields:(unint64_t)a3 completion:(id)a4;
- (void)didRegisterWithRegionMap:(id)a3 primaryRegionTopic:(id)a4;
- (void)downloadAllPaymentPasses;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3;
- (void)familyMembersWithCompletion:(id)a3;
- (void)featureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 completion:(id)a5;
- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 completion:(id)a4;
- (void)generateAuxiliaryCapabilitiesForRequirements:(id)a3 completion:(id)a4;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4;
- (void)generateTransactionKeyWithParameters:(id)a3 withCompletion:(id)a4;
- (void)getConfigurationDataWithCompletion:(id)a3;
- (void)getContextWithCompletion:(id)a3;
- (void)getEncryptedServiceProviderDataForSecureElementPass:(id)a3 completion:(id)a4;
- (void)getProvisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletion:(id)a4;
- (void)getRegistrationDataWithCompletion:(id)a3;
- (void)getTrustedDeviceEnrollmentInfoWithCompletion:(id)a3;
- (void)handlePotentialExpressPass:(id)a3 withCompletion:(id)a4;
- (void)hasPassesOfType:(unint64_t)a3 completion:(id)a4;
- (void)identityPassesOfTypes:(id)a3 completion:(id)a4;
- (void)invalidateRemoteProxyTargetDevice;
- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)a3 reuseExisting:(BOOL)a4 completion:(id)a5;
- (void)maximumPaymentCardsWithCompletion:(id)a3;
- (void)notePasscodeUpgradeFlowDidEnd;
- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)a3;
- (void)noteProvisioningDidBegin;
- (void)noteProvisioningDidEnd;
- (void)passOwnershipTokenWithIdentifier:(id)a3 completion:(id)a4;
- (void)passesOfCardType:(int64_t)a3 completion:(id)a4;
- (void)passesOfType:(unint64_t)a3 completion:(id)a4;
- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 completion:(id)a4;
- (void)passesWithReaderIdentifier:(id)a3 completion:(id)a4;
- (void)paymentSupportedInCurrentRegion:(id)a3;
- (void)performDeviceCheckInWithCompletion:(id)a3;
- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 completion:(id)a5;
- (void)prepareProvisioningTarget:(id)a3 checkFamilyCircle:(BOOL)a4 completion:(id)a5;
- (void)provisionHomeKeyPassForSerialNumbers:(id)a3 completionHandler:(id)a4;
- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)a3 withCompletion:(id)a4;
- (void)registrationSupportedInCurrentRegionWithCompletion:(id)a3;
- (void)removePass:(id)a3 completion:(id)a4;
- (void)renewAppleAccountWithCompletionHandler:(id)a3;
- (void)reserveStorageForAppletTypes:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)secureElementIsAvailableWithCompletion:(id)a3;
- (void)secureElementOwnershipStateForCurrentUserWithCompletion:(id)a3;
- (void)setDefaultPaymentPassUniqueIdentifier:(id)a3;
- (void)setNewAuthRandom:(id)a3;
- (void)setNewAuthRandomIfNecessaryReturningPairingState:(id)a3;
- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletion:(id)a5;
- (void)signWithFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 challenge:(id)a6 publicKeyIdentifier:(id)a7 externalizedAuth:(id)a8 completion:(id)a9;
- (void)startRequiringUpgradedPasscodeWithCompletion:(id)a3;
- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)a3;
- (void)statusForShareableCredentials:(id)a3 completion:(id)a4;
- (void)storePassOwnershipToken:(id)a3 withIdentifier:(id)a4;
- (void)supportedFeatureIdentifiersForAccountProvisioningWithCompletion:(id)a3;
- (void)supportedFeatureIdentifiersWithCompletion:(id)a3;
- (void)supportsAccountsWithCompletion:(id)a3;
- (void)supportsLowPowerExpressModeWithCompletion:(id)a3;
- (void)supportsPeerPaymentRegistrationWithCompletion:(id)a3;
- (void)triggerCloudStoreZoneCreationForAccount:(id)a3 withCompletion:(id)a4;
- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updatedAccountsForProvisioningWithCompletion:(id)a3;
- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5;
- (void)validateAddPreconditionsWithCompletion:(id)a3;
- (void)validateTransferPreconditionsWithCompletion:(id)a3;
- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentWebServiceRemoteProxyTargetDevice

- (PKPaymentWebServiceRemoteProxyTargetDevice)initWithWebService:(id)a3 connection:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = PKPaymentWebServiceRemoteProxyTargetDevice;
  v9 = [(PKPaymentWebServiceRemoteProxyTargetDevice *)&v39 init];
  if (!v9)
  {
LABEL_15:
    v29 = v9;
    goto LABEL_16;
  }

  v10 = [[PKEntitlementWhitelist alloc] initWithConnection:v8];
  if ([(PKEntitlementWhitelist *)v10 paymentAllAccess]|| [(PKEntitlementWhitelist *)v10 peerPaymentAllAccess])
  {
    v11 = dispatch_queue_create("com.apple.passkit.remoteTargetDeviceHandlerQueue", MEMORY[0x1E69E96A8]);
    handlerQueue = v9->_handlerQueue;
    v9->_handlerQueue = v11;

    objc_storeStrong(&v9->_webService, a3);
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

    v17 = [v7 targetDevice];
    targetDevice = v9->_targetDevice;
    v9->_targetDevice = v17;

    objc_storeStrong(&v9->_connection, a4);
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
    v22 = [(NSXPCConnection *)v9->_connection invalidationHandler];
    v23 = v9->_connection;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke;
    v37[3] = &unk_1E79C4428;
    v24 = v22;
    v38 = v24;
    [(NSXPCConnection *)v23 setInvalidationHandler:v37];
    v25 = [(NSXPCConnection *)v9->_connection interruptionHandler];
    v26 = v9->_connection;
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __76__PKPaymentWebServiceRemoteProxyTargetDevice_initWithWebService_connection___block_invoke_643;
    v35 = &unk_1E79C4428;
    v27 = v25;
    v36 = v27;
    [(NSXPCConnection *)v26 setInterruptionHandler:&v32];
    [(NSXPCConnection *)v9->_connection resume:v32];
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v7;
      v42 = 2112;
      v43 = v8;
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

- (void)getContextWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentWebServiceRemoteProxyTargetDevice_getContextWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentWebServiceRemoteProxyTargetDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)getEncryptedServiceProviderDataForSecureElementPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_getEncryptedServiceProviderDataForSecureElementPass_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)getConfigurationDataWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_getConfigurationDataWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)getRegistrationDataWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPaymentWebServiceRemoteProxyTargetDevice_getRegistrationDataWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)getTrustedDeviceEnrollmentInfoWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_getTrustedDeviceEnrollmentInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentWebServiceRemoteProxyTargetDevice_signData_signatureEntanglementMode_withCompletion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(handlerQueue, v13);
}

- (void)supportsLowPowerExpressModeWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportsLowPowerExpressModeWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

uint64_t __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportsLowPowerExpressModeWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) supportsLowPowerExpressMode];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)getProvisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPaymentWebServiceRemoteProxyTargetDevice_getProvisioningDataIncludingDeviceMetadata_withCompletion___block_invoke;
  block[3] = &unk_1E79C4DB0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)deleteApplicationWithAID:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentWebServiceRemoteProxyTargetDevice_deleteApplicationWithAID___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)deleteKeyMaterialForSubCredentialId:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPaymentWebServiceRemoteProxyTargetDevice_deleteKeyMaterialForSubCredentialId___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)didRegisterWithRegionMap:(id)a3 primaryRegionTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_didRegisterWithRegionMap_primaryRegionTopic___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)paymentSupportedInCurrentRegion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPaymentWebServiceRemoteProxyTargetDevice_paymentSupportedInCurrentRegion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)registrationSupportedInCurrentRegionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    handlerQueue = self->_handlerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PKPaymentWebServiceRemoteProxyTargetDevice_registrationSupportedInCurrentRegionWithCompletion___block_invoke;
    v7[3] = &unk_1E79C44A0;
    v7[4] = self;
    v8 = v4;
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

- (void)setNewAuthRandomIfNecessaryReturningPairingState:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_setNewAuthRandomIfNecessaryReturningPairingState___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)setNewAuthRandom:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentWebServiceRemoteProxyTargetDevice_setNewAuthRandom___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)hasPassesOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentWebServiceRemoteProxyTargetDevice_hasPassesOfType_completion___block_invoke;
  block[3] = &unk_1E79C4658;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
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

- (void)passesOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfType_completion___block_invoke;
    block[3] = &unk_1E79C4658;
    block[4] = self;
    v10 = v6;
    v11 = a3;
    dispatch_async(handlerQueue, block);
  }
}

void __70__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfType_completion___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = [*(a1[4] + 24) paymentWebService:*(a1[4] + 16) passesOfType:a1[6]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesOfCardType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfCardType_completion___block_invoke;
    block[3] = &unk_1E79C4658;
    block[4] = self;
    v10 = v6;
    v11 = a3;
    dispatch_async(handlerQueue, block);
  }
}

void __74__PKPaymentWebServiceRemoteProxyTargetDevice_passesOfCardType_completion___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = [*(a1[4] + 24) passesOfCardType:a1[6]];
  (*(v1 + 16))(v1, v2);
}

- (void)identityPassesOfTypes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKPaymentWebServiceRemoteProxyTargetDevice_identityPassesOfTypes_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(handlerQueue, block);
  }
}

void __79__PKPaymentWebServiceRemoteProxyTargetDevice_identityPassesOfTypes_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) identityPassesOfTypes:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesWithReaderIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithReaderIdentifier_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(handlerQueue, block);
  }
}

void __84__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithReaderIdentifier_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) passesWithReaderIdentifier:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithPrimaryPaymentApplicationStates_completion___block_invoke;
    block[3] = &unk_1E79C44F0;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_async(handlerQueue, block);
  }
}

void __99__PKPaymentWebServiceRemoteProxyTargetDevice_passesWithPrimaryPaymentApplicationStates_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) passesWithPrimaryPaymentApplicationStates:a1[5]];
  (*(v1 + 16))(v1, v2);
}

- (void)canProvisionPaymentPassWithPrimaryAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_canProvisionPaymentPassWithPrimaryAccountIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C44F0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)validateAddPreconditionsWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_validateAddPreconditionsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)claimSecureElementForCurrentUserWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentWebServiceRemoteProxyTargetDevice_claimSecureElementForCurrentUserWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)secureElementOwnershipStateForCurrentUserWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__PKPaymentWebServiceRemoteProxyTargetDevice_secureElementOwnershipStateForCurrentUserWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)validateTransferPreconditionsWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_validateTransferPreconditionsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)handlePotentialExpressPass:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_handlePotentialExpressPass_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)addPassData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentWebServiceRemoteProxyTargetDevice_addPassData_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)removePass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentWebServiceRemoteProxyTargetDevice_removePass_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)supportsPeerPaymentRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPaymentWebServiceRemoteProxyTargetDevice_supportsPeerPaymentRegistrationWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)supportsAccountsWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPaymentWebServiceRemoteProxyTargetDevice_supportsAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)supportedFeatureIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)supportedFeatureIdentifiersForAccountProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__PKPaymentWebServiceRemoteProxyTargetDevice_supportedFeatureIdentifiersForAccountProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)updatedAccountsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_updatedAccountsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)cachedFeatureApplicationsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_cachedFeatureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_featureApplicationsForProvisioningWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)deviceMetadataWithFields:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPaymentWebServiceRemoteProxyTargetDevice_deviceMetadataWithFields_completion___block_invoke;
  block[3] = &unk_1E79C4EA0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentWebServiceRemoteProxyTargetDevice_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke;
  block[3] = &unk_1E79C44F0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(handlerQueue, block);
}

uint64_t __112__PKPaymentWebServiceRemoteProxyTargetDevice_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 24) willPassWithUniqueIdentifierAutomaticallyBecomeDefault:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)setDefaultPaymentPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_setDefaultPaymentPassUniqueIdentifier___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)renewAppleAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_renewAppleAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)appleAccountInformationWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_appleAccountInformationWithCompletion___block_invoke;
  v7[3] = &unk_1E79C44A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

void __84__PKPaymentWebServiceRemoteProxyTargetDevice_appleAccountInformationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 24) appleAccountInformation];
  (*(v1 + 16))(v1, v2);
}

- (void)notePasscodeUpgradeFlowWillBeginWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentWebServiceRemoteProxyTargetDevice_notePasscodeUpgradeFlowWillBeginWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_enforceUpgradedPasscodePolicyWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPaymentWebServiceRemoteProxyTargetDevice_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)a3
{
  handlerQueue = self->_handlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PKPaymentWebServiceRemoteProxyTargetDevice_startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy___block_invoke;
  v4[3] = &unk_1E79C4EC8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(handlerQueue, v4);
}

- (void)startRequiringUpgradedPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentWebServiceRemoteProxyTargetDevice_startRequiringUpgradedPasscodeWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)performDeviceCheckInWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_performDeviceCheckInWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)performDeviceRegistrationReturningContextForReason:(id)a3 brokerURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __118__PKPaymentWebServiceRemoteProxyTargetDevice_performDeviceRegistrationReturningContextForReason_brokerURL_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(handlerQueue, v15);
}

- (void)storePassOwnershipToken:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentWebServiceRemoteProxyTargetDevice_storePassOwnershipToken_withIdentifier___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)passOwnershipTokenWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_passOwnershipTokenWithIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)familyMembersWithCompletion:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentWebServiceRemoteProxyTargetDevice_familyMembersWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)generateTransactionKeyWithParameters:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_generateTransactionKeyWithParameters_withCompletion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)statusForShareableCredentials:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentWebServiceRemoteProxyTargetDevice_statusForShareableCredentials_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)prepareProvisioningTarget:(id)a3 checkFamilyCircle:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(handlerQueue, v13);
}

- (void)provisionHomeKeyPassForSerialNumbers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebServiceRemoteProxyTargetDevice_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)availableHomeKeyPassesWithCompletionHandler:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPaymentWebServiceRemoteProxyTargetDevice_availableHomeKeyPassesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)createFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 externalizedAuth:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  handlerQueue = self->_handlerQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __137__PKPaymentWebServiceRemoteProxyTargetDevice_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke;
  v23[3] = &unk_1E79C4F40;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(handlerQueue, v23);
}

- (void)checkFidoKeyPresenceForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__PKPaymentWebServiceRemoteProxyTargetDevice_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke;
  block[3] = &unk_1E79C4F68;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(handlerQueue, block);
}

- (void)signWithFidoKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 fidoKeyHash:(id)a5 challenge:(id)a6 publicKeyIdentifier:(id)a7 externalizedAuth:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  handlerQueue = self->_handlerQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __171__PKPaymentWebServiceRemoteProxyTargetDevice_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke;
  v30[3] = &unk_1E79C4F90;
  v30[4] = self;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  dispatch_async(handlerQueue, v30);
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKPaymentWebServiceRemoteProxyTargetDevice_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__PKPaymentWebServiceRemoteProxyTargetDevice_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)addISO18013Blobs:(id)a3 cardType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentWebServiceRemoteProxyTargetDevice_addISO18013Blobs_cardType_completion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(handlerQueue, v13);
}

- (void)addISO18013BlobsFromCredentials:(id)a3 cardType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_addISO18013BlobsFromCredentials_cardType_completion___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(handlerQueue, v13);
}

- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)a3 reuseExisting:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  handlerQueue = self->_handlerQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentWebServiceRemoteProxyTargetDevice_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke;
  v13[3] = &unk_1E79C4F18;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(handlerQueue, v13);
}

- (void)generateAuxiliaryCapabilitiesForRequirements:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PKPaymentWebServiceRemoteProxyTargetDevice_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    targetDevice = self->_targetDevice;
    v17 = 0;
    v11 = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice meetsProvisioningRequirements:v8 missingRequirements:&v17];
    v12 = v17;
    v9[2](v9, v11, v12);
  }

  else
  {
    handlerQueue = self->_handlerQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __109__PKPaymentWebServiceRemoteProxyTargetDevice_usingSynchronousProxy_meetsProvisioningRequirements_completion___block_invoke;
    v14[3] = &unk_1E79C4D60;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    dispatch_async(handlerQueue, v14);
  }
}

- (void)currentSecureElementSnapshot:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPaymentWebServiceRemoteProxyTargetDevice_currentSecureElementSnapshot___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(handlerQueue, v7);
}

- (void)reserveStorageForAppletTypes:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentWebServiceRemoteProxyTargetDevice_reserveStorageForAppletTypes_metadata_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(handlerQueue, v15);
}

- (void)deleteReservation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPaymentWebServiceRemoteProxyTargetDevice_deleteReservation_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PKPaymentWebServiceRemoteProxyTargetDevice_canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(handlerQueue, v15);
}

- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPaymentWebServiceRemoteProxyTargetDevice_activeFPANCardsWithOptions_completion___block_invoke;
  block[3] = &unk_1E79C4EA0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  handlerQueue = self->_handlerQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__PKPaymentWebServiceRemoteProxyTargetDevice_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
  v21[3] = &unk_1E79C4FB8;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(handlerQueue, v21);
}

- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  handlerQueue = self->_handlerQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__PKPaymentWebServiceRemoteProxyTargetDevice_updateFPANCardWithDescriptor_credential_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(handlerQueue, v15);
}

- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPaymentWebServiceRemoteProxyTargetDevice_deleteFPANCardWithDescriptor_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(handlerQueue, block);
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 completion:(id)a5
{
  targetDevice = self->_targetDevice;
  v11 = 0;
  v12 = 0;
  v8 = a5;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice fpanCredentialForPrimaryAccountIdentifier:a3 passUniqueID:a4 credential:&v12 error:&v11];
  v9 = v12;
  v10 = v11;
  v8[2](v8, v9, v10);
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 completion:(id)a4
{
  targetDevice = self->_targetDevice;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = a4;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice fpanDescriptorAndCredentialForFPAN:a3 descriptor:&v12 credential:&v11 error:&v10];
  v7 = v12;
  v8 = v11;
  v9 = v10;
  v6[2](v6, v7, v8, v9);
}

- (void)applePayTrustKeyForIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)createApplePayTrustKeyWithRequest:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)deleteApplePayTrustKeyWithIdentifier:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)maximumPaymentCardsWithCompletion:(id)a3
{
  targetDevice = self->_targetDevice;
  v5 = a3;
  (*(a3 + 2))(v5, [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice maximumPaymentCards]);
}

- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)a3
{
  targetDevice = self->_targetDevice;
  v5 = a3;
  v6 = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice allPaymentApplicationUsageSummaries];
  (*(a3 + 2))(v5, v6);
}

- (void)secureElementIsAvailableWithCompletion:(id)a3
{
  v5 = a3;
  v4 = PKSecureElementIsAvailable() != 0;
  (*(a3 + 2))(v5, v4);
}

- (void)addPendingProvisionings:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentWebServiceRemoteProxyTargetDevice_addPendingProvisionings_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)archiveContext:(id)a3
{
  v4 = a3;
  handlerQueue = self->_handlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentWebServiceRemoteProxyTargetDevice_archiveContext___block_invoke;
  block[3] = &unk_1E79C4E28;
  v8 = v4;
  v6 = v4;
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