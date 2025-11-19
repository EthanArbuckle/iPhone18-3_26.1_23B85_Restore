@interface PDPassLibrary
- (BOOL)_entitledForObject:(id)a3 forActions:(unint64_t)a4;
- (BOOL)_entitledForPassType:(unint64_t)a3 uniqueIdentifier:(id)a4 actions:(unint64_t)a5;
- (BOOL)_hasBackgroundAddPassesAuthorization;
- (BOOL)_hasPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 paymentApplicationStates:(id)a5;
- (BOOL)_isConfigurationValid:(id)a3;
- (BOOL)_isWatchIssuerAppProvisioningSupported;
- (BOOL)_writePass:(id)a3 error:(id *)a4;
- (BOOL)_writePass:(id)a3 withSettings:(unint64_t)a4 error:(id *)a5;
- (BOOL)willSanitizePasses;
- (PDPassLibrary)initWithConnection:(id)a3 server:(id)a4;
- (PDPassLibraryDelegate)delegate;
- (id)_entitlementFilteredPasses:(id)a3;
- (id)_filteredPasses:(id)a3 forApplicationIdentifier:(id)a4;
- (id)_filteredPasses:(id)a3 forWebDomain:(id)a4;
- (id)_inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 isMultiTokensRequest:(BOOL)a6;
- (id)_inAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 isMultiTokensRequest:(BOOL)a6;
- (id)_rateLimiter;
- (id)_sanitizePassIfNeeded:(id)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (unint64_t)_addPassesWithEnumerator:(id)a3 firstPassUniqueID:(id *)a4;
- (void)_addPasses:(id)a3 withCompletion:(id)a4;
- (void)_getEncryptedServiceProviderDataForSecureElementPass:(id)a3 publicKey:(id)a4 scheme:(id)a5 completion:(id)a6;
- (void)_getPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)_getServiceProviderDataForPass:(id)a3 completion:(id)a4;
- (void)_hasPassesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 handler:(id)a10;
- (void)_passesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 handler:(id)a10;
- (void)_paymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 webPayment:(BOOL)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 withHandler:(id)a10;
- (void)_queue_replacePass:(id)a3 handler:(id)a4;
- (void)_sanitizePasses:(id)a3;
- (void)_setBackupDefaultPaymentPassState:(id)a3;
- (void)_setBackupPassbookDeletedState:(id)a3;
- (void)_usingSynchronousProxy:(BOOL)a3 addPassesWithEnumerator:(id)a4 estimatedNumberOfPasses:(unint64_t)a5 osTransaction:(id)a6 completionHandler:(id)a7;
- (void)activated;
- (void)addPassesWithData:(id)a3 handler:(id)a4;
- (void)addSharedFlight:(id)a3 fromSenderAddress:(id)a4 handler:(id)a5;
- (void)archivePassWithUniqueID:(id)a3 handler:(id)a4;
- (void)backupMetadataWithHandler:(id)a3;
- (void)badgeCountItemsWithCompletion:(id)a3;
- (void)canAddCarKeyPassWithConfiguration:(id)a3 completion:(id)a4;
- (void)canAddClassicApplePayCredentialWithConfiguration:(id)a3 completion:(id)a4;
- (void)canAddFelicaPassWithHandler:(id)a3;
- (void)canAddHomeKeyWithConfiguration:(id)a3 completion:(id)a4;
- (void)canAddPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)canAddPushablePassWithConfiguration:(id)a3 completion:(id)a4;
- (void)canPresentPaymentRequest:(id)a3 completion:(id)a4;
- (void)checkForTransitNotification;
- (void)clearConnectionReference;
- (void)contactlessInterfaceDidDismissFromSource:(int64_t)a3;
- (void)contactlessInterfaceDidPresentFromSource:(int64_t)a3;
- (void)countPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)dealloc;
- (void)defaultPaymentPassWithHandler:(id)a3;
- (void)deleteAllInternalWalletMessages;
- (void)deleteInternalWalletMessageWithIdentifier:(id)a3;
- (void)deleteKeyMaterialForSubCredentialId:(id)a3;
- (void)enabledValueAddedServicePassesWithHandler:(id)a3;
- (void)exportableCardEntry:(id)a3 completion:(id)a4;
- (void)exportableManifestWithCompletion:(id)a3;
- (void)expressTransitPassWithHandler:(id)a3;
- (void)fetchCurrentRelevantPassInfo:(id)a3;
- (void)fetchHasCandidatePasses:(id)a3;
- (void)flightSubscriptionsWithCompletion:(id)a3;
- (void)flightsWithScheduledDepartureFromStartDate:(id)a3 endDate:(id)a4 completion:(id)a5;
- (void)forceImmediateRevocationCheck;
- (void)getArchivedObjectWithUniqueID:(id)a3 handler:(id)a4;
- (void)getDataForBundleResourceNamed:(id)a3 withExtension:(id)a4 objectUniqueIdentifier:(id)a5 handler:(id)a6;
- (void)getDataForBundleResources:(id)a3 objectUniqueIdentifier:(id)a4 handler:(id)a5;
- (void)getDiffForPassUpdateUserNotificationWithIdentifier:(id)a3 handler:(id)a4;
- (void)getIdentityPassesOfTypes:(id)a3 handler:(id)a4;
- (void)getImageSetForUniqueID:(id)a3 ofType:(int64_t)a4 displayProfile:(id)a5 suffix:(id)a6 handler:(id)a7;
- (void)getManifestHashAndSettingsForPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5;
- (void)getMetadataForFieldWithProperties:(id)a3 handler:(id)a4;
- (void)getPassUniqueIDsForAssociatedApplicationIdentifier:(id)a3 handler:(id)a4;
- (void)getPassWithPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5;
- (void)getPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)getPassesOfCardType:(int64_t)a3 handler:(id)a4;
- (void)getPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)getPassesWithHandler:(id)a3;
- (void)getPassesWithReaderIdentifier:(id)a3 handler:(id)a4;
- (void)getPassesWithSearchableTransactions:(id)a3;
- (void)getPassesWithUniqueIdentifiers:(id)a3 handler:(id)a4;
- (void)hasInAppPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 withHandler:(id)a8;
- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6;
- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6;
- (void)hasPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)hasPassesInExpiredSectionWithHandler:(id)a3;
- (void)hasPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)hasPassesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentRequestType:(id)a7 isMultiTokensRequest:(BOOL)a8 completion:(id)a9;
- (void)hasProvisioningExtensionsWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 withHandler:(id)a6;
- (void)hasRemoteLibraryWithHandler:(id)a3;
- (void)hasSecureElementPassesOfType:(int64_t)a3 handler:(id)a4;
- (void)iPadSupportsPasses:(id)a3;
- (void)inAppPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 withHandler:(id)a8;
- (void)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6;
- (void)inAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6;
- (void)insertInternalWalletMessageWithContent:(id)a3 badged:(BOOL)a4 completion:(id)a5;
- (void)introduceDatabaseIntegrityProblem;
- (void)invalidateVehicleConnectionSessionIdentifier:(id)a3;
- (void)isPassbookVisibleWithHandler:(id)a3;
- (void)isPaymentPassActivationAvailableWithHandler:(id)a3;
- (void)isRemovingPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)a3;
- (void)issueWalletUserNotificationWithTitle:(id)a3 message:(id)a4 forPassUniqueIdentifier:(id)a5 customActionRoute:(id)a6;
- (void)issuerBindingFlowAuthenticationPerformed;
- (void)migrateDataWithHandler:(id)a3 didRestoreFromBackup:(BOOL)a4;
- (void)noteACAccountChanged:(id)a3 handler:(id)a4;
- (void)noteAppleAccountChanged:(id)a3 handler:(id)a4;
- (void)noteObjectSharedWithUniqueID:(id)a3;
- (void)notifyPassUsedWithIdentifier:(id)a3 fromSource:(int64_t)a4;
- (void)openPaymentUIWithCompletion:(id)a3;
- (void)openWalletUIWithRelevantPass:(id)a3;
- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)a3 containingPassUniqueIdentifier:(id)a4 newState:(unint64_t)a5 completion:(id)a6;
- (void)passUniqueIDsMatchingSearchTerm:(id)a3 completion:(id)a4;
- (void)passWithDPANIdentifier:(id)a3 handler:(id)a4;
- (void)passWithFPANIdentifier:(id)a3 handler:(id)a4;
- (void)passbookHasBeenDeletedWithHandler:(id)a3;
- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 handler:(id)a4;
- (void)paymentPassWithAssociatedAccountIdentifier:(id)a3 completion:(id)a4;
- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4;
- (void)peerPaymentPassUniqueIDWithHandler:(id)a3;
- (void)pendingUserNotificationsWithIdentifier:(id)a3 completion:(id)a4;
- (void)personalizePassWithUniqueIdentifier:(id)a3 contact:(id)a4 personalizationToken:(id)a5 requiredPersonalizationFields:(unint64_t)a6 personalizationSource:(unint64_t)a7 handler:(id)a8;
- (void)postUpgradedPassNotificationForMarket:(id)a3 passUniqueID:(id)a4;
- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)a3 handler:(id)a4;
- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)a3 destinationFileHandles:(id)a4 handler:(id)a5;
- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)a3 handler:(id)a4;
- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)a3 fromSource:(int64_t)a4 handler:(id)a5;
- (void)presentIssuerBindingFlowForIssuerData:(id)a3 signature:(id)a4 orientation:(id)a5;
- (void)presentPaymentSetupRequest:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)a3 completion:(id)a4;
- (void)recomputeRelevantPassesWithSearchMode:(int64_t)a3;
- (void)recoverPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)removeAllScheduledActivities;
- (void)removePassWithUniqueID:(id)a3 diagnosticReason:(id)a4 handler:(id)a5;
- (void)removePassesOfType:(unint64_t)a3 withDiagnosticReason:(id)a4 handler:(id)a5;
- (void)removePassesWithUniqueIDs:(id)a3 diagnosticReason:(id)a4 handler:(id)a5;
- (void)replacePassWithPassData:(id)a3 handler:(id)a4;
- (void)requestStateOfRelevancyPresentmentOfType:(unint64_t)a3 containingPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)a3;
- (void)resetApplePayWithDiagnosticReason:(id)a3 handler:(id)a4;
- (void)sendCatalogChanged:(id)a3;
- (void)sendDynamicStatesUpdated:(id)a3 catalog:(id)a4;
- (void)sendPassAdded:(id)a3 state:(id)a4 catalog:(id)a5;
- (void)sendPassArchived:(id)a3 state:(id)a4 catalog:(id)a5;
- (void)sendPassRecovered:(id)a3 state:(id)a4 catalog:(id)a5;
- (void)sendPassRemoved:(id)a3 catalog:(id)a4;
- (void)sendPassUpdated:(id)a3 state:(id)a4 catalog:(id)a5;
- (void)sendRKEPassThroughMessage:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5;
- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)a3;
- (void)sendUserEditedCatalog:(id)a3;
- (void)sessionDidChangeConnectionStatus:(int64_t)a3;
- (void)sessionDidReceiveData:(id)a3;
- (void)setBackupMetadata:(id)a3 handler:(id)a4;
- (void)setIssuerBindingManager:(id)a3;
- (void)setSecureElement:(id)a3;
- (void)setSortingState:(int64_t)a3 forObjectWithUniqueID:(id)a4 withCompletion:(id)a5;
- (void)setSubcredentialManager:(id)a3;
- (void)shuffleGroups:(int)a3;
- (void)signData:(id)a3 forPassUniqueID:(id)a4 completion:(id)a5;
- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)simulateFlightUpdate:(id)a3 forPassUniqueID:(id)a4 handler:(id)a5;
- (void)sortedTransitPassesForAppletDataFormat:(id)a3 handler:(id)a4;
- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)a3;
- (void)spotlightReindexAllContentWithAcknowledgement:(id)a3;
- (void)spotlightReindexContentWithIdentifiers:(id)a3 acknowledgement:(id)a4;
- (void)spotlightResetWithCompletion:(id)a3;
- (void)spotlightStatusWithCompletion:(id)a3;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPassWithUniqueID:(id)a5 handler:(id)a6;
- (void)unexpiredPassesOrderedByGroup:(id)a3;
- (void)updateDate:(id)a3 forPendingNotificationWithIdentifier:(id)a4;
- (void)updateIngestedDate:(id)a3 forPassWithUniqueID:(id)a4;
- (void)updateObjectWithUniqueIdentifier:(id)a3 handler:(id)a4;
- (void)updateSettings:(unint64_t)a3 forObjectWithUniqueID:(id)a4;
- (void)usingSynchronousProxy:(BOOL)a3 addISO18013Blobs:(id)a4 cardType:(int64_t)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 addISO18013BlobsFromCredentials:(id)a4 cardType:(int64_t)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 addPassIngestionPayloads:(id)a4 withCompletionHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 addPassesContainer:(id)a4 withCompletionHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 addUnsignedPassesWithDataFileDescriptors:(id)a4 completionHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 availableHomeKeyPassesWithCompletionHandler:(id)a4;
- (void)usingSynchronousProxy:(BOOL)a3 canAddCarKeyPassWithConfiguration:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 canAddSecureElementPassWithConfiguration:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 checkFidoKeyPresenceForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 fidoKeyHash:(id)a6 completion:(id)a7;
- (void)usingSynchronousProxy:(BOOL)a3 configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)a4 homeIdentifier:(id)a5 fromUnifiedAccessDescriptor:(id)a6 andAliroDescriptor:(id)a7 completion:(id)a8;
- (void)usingSynchronousProxy:(BOOL)a3 configurePushProvisioningConfiguration:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 configurePushProvisioningConfigurationV2:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 containsPassWithPassTypeIdentifier:(id)a4 serialNumber:(id)a5 completionHandler:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 createFidoKeyForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 challenge:(id)a6 externalizedAuth:(id)a7 completion:(id)a8;
- (void)usingSynchronousProxy:(BOOL)a3 dynamicStateForPassUniqueID:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 enableExpressForPassWithPassTypeIdentifier:(id)a4 serialNumber:(id)a5 completionHandler:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 fetchHomePaymentApplicationsForSerialNumber:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 generateAuxiliaryCapabilitiesForRequirements:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 generateISOEncryptionCertificateForSubCredentialId:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 generateSEEncryptionCertificateForSubCredentialId:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 generateTransactionKeyWithReaderIdentifier:(id)a4 readerPublicKey:(id)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 getCachedImageSetContainerForUniqueID:(id)a4 type:(int64_t)a5 withDisplayProfile:(id)a6 displayTraits:(id)a7 handler:(id)a8;
- (void)usingSynchronousProxy:(BOOL)a3 getContentForUniqueID:(id)a4 withHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getEncryptedServiceProviderDataForUniqueID:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getGroupsControllerSnapshotWithOptions:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getImageSetContainerForUniqueID:(id)a4 type:(int64_t)a5 withDisplayProfile:(id)a6 suffix:(id)a7 handler:(id)a8;
- (void)usingSynchronousProxy:(BOOL)a3 getManifestHashForPassWithUniqueID:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getPassForProvisioningCredentialHash:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getPassesAndCatalogOfPassTypes:(unint64_t)a4 limitResults:(BOOL)a5 withHandler:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 getPassesOfStyles:(unint64_t)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getPaymentPassesPendingActivationWithHandler:(id)a4;
- (void)usingSynchronousProxy:(BOOL)a3 getServiceProviderDataForUniqueID:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 longTermPrivacyKeyForCredentialGroupIdentifier:(id)a4 reuseExisting:(BOOL)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 passLocalizedStringForKey:(id)a4 uniqueID:(id)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 postUpgradesAvailableNotificationForMarket:(id)a4 passUniqueID:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 provisionHomeKeyPassForSerialNumbers:(id)a4 completionHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 replaceUnsignedPassWithDataFileDescriptor:(id)a4 completionHandler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 requestIssuerBoundPassesWithBindingWithData:(id)a4 automaticallyProvision:(BOOL)a5 withCompletion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 setLiveRenderingEnabled:(BOOL)a4 forPassUniqueID:(id)a5 handler:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 signWithFidoKeyForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 fidoKeyHash:(id)a6 challenge:(id)a7 publicKeyIdentifier:(id)a8 externalizedAuth:(id)a9 completion:(id)a10;
@end

@implementation PDPassLibrary

- (void)activated
{
  sub_1001FA9AC(self->_remoteInterfacePresenter, self);
  [(PDCardFileManager *)self->_cardFileManager startUbiquity];
  v3.receiver = self;
  v3.super_class = PDPassLibrary;
  [(PDPassLibrary *)&v3 activated];
}

- (BOOL)willSanitizePasses
{
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]^ 1;
  }
}

- (PDPassLibrary)initWithConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = PDPassLibrary;
  v8 = [(PDPassLibrary *)&v19 initWithConnection:v6];
  if (v8)
  {
    v9 = [[PKEntitlementWhitelist alloc] initWithConnection:v6];
    whitelist = v8->_whitelist;
    v8->_whitelist = v9;

    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_server, a4);
    v11 = sub_10000444C(v7);
    v12 = sub_100004440(v11);
    remoteInterfacePresenter = v8->_remoteInterfacePresenter;
    v8->_remoteInterfacePresenter = v12;

    v14 = sub_1000044D8(v11);
    assertionManager = v8->_assertionManager;
    v8->_assertionManager = v14;

    v16 = PKPassLibraryInterface();
    [v6 setRemoteObjectInterface:v16];

    v17 = PDPassLibraryExtendedInterface();
    [v6 setExportedInterface:v17];

    [v6 setExportedObject:v8];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PDPassLibrary;
  [(PDPassLibrary *)&v2 dealloc];
}

- (void)setSubcredentialManager:(id)a3
{
  v5 = a3;
  subcredentialManager = self->_subcredentialManager;
  if (subcredentialManager != v5)
  {
    v7 = v5;
    [(PDAppletSubcredentialManager *)subcredentialManager unregisterObserver:self];
    objc_storeStrong(&self->_subcredentialManager, a3);
    subcredentialManager = [(PDAppletSubcredentialManager *)self->_subcredentialManager registerObserver:self];
    v5 = v7;
  }

  _objc_release_x1(subcredentialManager, v5);
}

- (void)setIssuerBindingManager:(id)a3
{
  v5 = a3;
  issuerBindingManager = self->_issuerBindingManager;
  if (issuerBindingManager != v5)
  {
    v7 = v5;
    [(PDIssuerBindingManager *)issuerBindingManager unregisterObserver:self];
    objc_storeStrong(&self->_issuerBindingManager, a3);
    issuerBindingManager = [(PDIssuerBindingManager *)self->_issuerBindingManager registerObserver:self];
    v5 = v7;
  }

  _objc_release_x1(issuerBindingManager, v5);
}

- (void)clearConnectionReference
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_userNotifications)
  {
    v3 = [[NSArray alloc] initWithArray:self->_userNotifications];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
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

        CFUserNotificationCancel([*(*(&v10 + 1) + 8 * v8) pointerValue]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = PDPassLibrary;
  [(PDPassLibrary *)&v9 clearConnectionReference];
}

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = PDPassLibrary;
  v2 = [(PDPassLibrary *)&v4 remoteObjectProxy];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v5.receiver = self;
  v5.super_class = PDPassLibrary;
  v3 = [(PDPassLibrary *)&v5 remoteObjectProxyWithErrorHandler:a3];

  return v3;
}

- (void)sendPassAdded:(id)a3 state:(id)a4 catalog:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:a3];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (v8)
    {
      v12 = [v10 uniqueID];
      v16 = v12;
      v17 = v8;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    v14 = [(PDPassLibrary *)self remoteObjectProxy];
    [v14 catalogChanged:v9 withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    v15 = [(PDPassLibrary *)self remoteObjectProxy];
    [v15 passAdded:v10];
  }
}

- (void)sendPassUpdated:(id)a3 state:(id)a4 catalog:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:a3];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (v8)
    {
      v12 = [v10 uniqueID];
      v16 = v12;
      v17 = v8;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    v14 = [(PDPassLibrary *)self remoteObjectProxy];
    [v14 catalogChanged:v9 withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    v15 = [(PDPassLibrary *)self remoteObjectProxy];
    [v15 passUpdated:v10];
  }
}

- (void)sendDynamicStatesUpdated:(id)a3 catalog:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = [(PDPassLibrary *)self remoteObjectProxy];
    [v7 catalogChanged:v6 withNewPasses:0 states:v8];
  }
}

- (void)sendPassRemoved:(id)a3 catalog:(id)a4
{
  v6 = a4;
  v9 = [(PDPassLibrary *)self _sanitizePassIfNeeded:a3];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = [(PDPassLibrary *)self remoteObjectProxy];
    [v7 catalogChanged:v6 withNewPasses:0 states:0];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
  {
    v8 = [(PDPassLibrary *)self remoteObjectProxy];
    [v8 passRemoved:v9];
  }
}

- (void)sendPassRecovered:(id)a3 state:(id)a4 catalog:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:a3];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (v8)
    {
      v12 = [v10 uniqueID];
      v16 = v12;
      v17 = v8;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    v14 = [(PDPassLibrary *)self remoteObjectProxy];
    [v14 catalogChanged:v9 withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    v15 = [(PDPassLibrary *)self remoteObjectProxy];
    [v15 passRecovered:v10];
  }
}

- (void)sendPassArchived:(id)a3 state:(id)a4 catalog:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (PKManualArchiveEnabled())
  {
    v11 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v8];

    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v12 = [[NSSet alloc] initWithObjects:{v11, 0}];
      if (v9)
      {
        v13 = [v11 uniqueID];
        v17 = v13;
        v18 = v9;
        v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      else
      {
        v14 = &__NSDictionary0__struct;
      }

      v15 = [(PDPassLibrary *)self remoteObjectProxy];
      [v15 catalogChanged:v10 withNewPasses:v12 states:v14];
    }

    if ([(PDPassLibrary *)self _entitledForObject:v11 forActions:2])
    {
      v16 = [(PDPassLibrary *)self remoteObjectProxy];
      [v16 passArchived:v11];
    }
  }

  else
  {
    v11 = v8;
  }
}

- (void)sendCatalogChanged:(id)a3
{
  v5 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v4 = [(PDPassLibrary *)self remoteObjectProxy];
    [v4 catalogChanged:v5 withNewPasses:0 states:0];
  }
}

- (void)getPassesWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = PDOSTransactionCreate("PDPassLibrary");
    v6 = objc_autoreleasePoolPush();
    v7 = [(PDDatabaseManager *)self->_databaseManager passes];
    v8 = [(PDPassLibrary *)self _entitlementFilteredPasses:v7];
    v9[2](v9, v8);

    objc_autoreleasePoolPop(v6);
    v4 = v9;
  }
}

- (void)getPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDDatabaseManager *)self->_databaseManager passesOfType:a3];
    v10 = [(PDPassLibrary *)self _entitlementFilteredPasses:v9];
    v11[2](v11, v10);

    objc_autoreleasePoolPop(v8);
    v6 = v11;
  }
}

- (void)getPassesOfCardType:(int64_t)a3 handler:(id)a4
{
  v11 = a4;
  v6 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  if (v11 && v6)
  {
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDDatabaseManager *)self->_databaseManager passesOfCardType:a3];
    v10 = [(PDPassLibrary *)self _entitlementFilteredPasses:v9];
    v11[2](v11, v10);

    objc_autoreleasePoolPop(v8);
  }
}

- (void)getIdentityPassesOfTypes:(id)a3 handler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  if (v6 && v7)
  {
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = objc_autoreleasePoolPush();
    v10 = [(PDDatabaseManager *)self->_databaseManager identityPassesOfTypes:v12];
    v11 = [(PDPassLibrary *)self _entitlementFilteredPasses:v10];
    v6[2](v6, v11);

    objc_autoreleasePoolPop(v9);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getPassesOfStyles:(unint64_t)a4 handler:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v8)
  {
    if (v6)
    {
      v9 = PDOSTransactionCreate("PDPassLibrary");
      v10 = objc_autoreleasePoolPush();
      v11 = [(PDDatabaseManager *)self->_databaseManager passesOfStyles:a4];
      v12 = [(PDPassLibrary *)self _entitlementFilteredPasses:v11];
      v8[2](v8, v12);

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v13 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000540B0;
      block[3] = &unk_10083DED8;
      block[4] = self;
      v16 = a4;
      v15 = v8;
      dispatch_async(v13, block);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getPassForProvisioningCredentialHash:(id)a4 handler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v6)
    {
      v10 = PDOSTransactionCreate("PDPassLibrary");
      v11 = objc_autoreleasePoolPush();
      v12 = [(PDDatabaseManager *)self->_databaseManager passWithProvisioningCredentialHash:v8];
      v13 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v12];
      v9[2](v9, v13);

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v14 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000542BC;
      block[3] = &unk_10083D320;
      block[4] = self;
      v16 = v8;
      v17 = v9;
      dispatch_async(v14, block);
    }
  }
}

- (void)canAddFelicaPassWithHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    if (PKFelicaSecureElementIsAvailable())
    {
      v4 = PKIsPad() ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5[2](v5, v4);
    v3 = v5;
  }
}

- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPassWithUniqueID:(id)a5 handler:(id)a6
{
  databaseManager = self->_databaseManager;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v16 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:a5];
  paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
  v15 = [v16 paymentPass];
  [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator submitVerificationCode:v13 verificationData:v12 forPass:v15 handler:v11];
}

- (void)openWalletUIWithRelevantPass:(id)a3
{
  v5 = a3;
  v6 = [(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess];
  v7 = v6;
  if (!v5 || !v6)
  {
    v8 = PKLogFacilityTypeGetObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = NSStringFromSelector(a2);
      v14 = 138412290;
      v15 = v10;
      v11 = "%@: Relevant unique ID not passed in";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = NSStringFromSelector(a2);
      v14 = 138412290;
      v15 = v10;
      v11 = "%@: Not entitled to perform";
    }

    v12 = v8;
    v13 = 12;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);

    goto LABEL_14;
  }

  if (![(PDDatabaseManager *)self->_databaseManager passExistsWithUniqueID:v5])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      v11 = "%@: Relevant unique ID does not exist: %@";
      v12 = v8;
      v13 = 22;
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  PDOpenWalletUI();
LABEL_15:
}

- (void)badgeCountItemsWithCompletion:(id)a3
{
  whitelist = self->_whitelist;
  v6 = a3;
  if ([(PKEntitlementWhitelist *)whitelist badgeCountItemsAccess])
  {
    v9 = [(PDUserNotificationManager *)self->_userNotificationManager badgeCountItems];
    v6[2](v6);
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Not entitled to perform", buf, 0xCu);
    }

    (v6[2])(v6, &__NSArray0__struct);
  }
}

- (void)openPaymentUIWithCompletion:(id)a3
{
  v4 = a3;
  if ((PKStoreDemoModeEnabled() & 1) != 0 || !PKSecureElementIsAvailable())
  {
    if (PKIsHandoffClient() && [(PKIDSManager *)self->_idsManager hasRemoteDevices])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [(PKIDSManager *)self->_idsManager remoteDevices];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(PKIDSManager *)self->_idsManager sendSetupRequest:*(*(&v13 + 1) + 8 * v11) appDisplayName:0 completion:0];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
        }

        while (v9);
      }

      if (v4)
      {
        v4[2](v4, 1);
      }
    }

    else if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v5 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100054A00;
    v17[3] = &unk_10083F350;
    v6 = v4;
    v17[4] = self;
    v18 = v6;
    [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:v5 completion:v17];

    if (v6)
    {
      v6[2](v6, 1);
    }
  }
}

- (BOOL)_isConfigurationValid:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist featuresAllAccess]&& ((PKIsMac() & 1) != 0 || (PKIsPhone() & 1) != 0 || (PKIsPad() & 1) != 0 || (PKIsWatch() & 1) != 0 || PKIsVision()))
  {
    v5 = [v4 signedFields];
    if (v5 || ([v4 signature], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v10 = [v4 originatingURL];

      if (!v10)
      {
        v7 = 1;
        goto LABEL_14;
      }
    }

    v6 = PKValidatePaymentSetupConfiguration();
    v7 = v6 == 0;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupConfiguration cannot be processed", v11, 2u);
    }

    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPassLibrary requesting payment setup features", buf, 2u);
  }

  if (!v7)
  {
    goto LABEL_49;
  }

  if (![(PDPassLibrary *)self _isConfigurationValid:v6]|| +[PKWalletVisibility isWalletRestricted])
  {
LABEL_48:
    v7[2](v7, 0);
    goto LABEL_49;
  }

  if (PKSecureElementIsAvailable())
  {
    v9 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator paymentSetupFeaturesCoordinator];
    v10 = [v6 usePaymentSetupFeaturesFromCDN];
    v11 = [(PKEntitlementWhitelist *)self->_whitelist applicationID];
    if (v10)
    {
      [v9 staticPaymentSetupFeaturesForSourceApplicationID:v11 blockServerFetch:0 completion:v7];
    }

    else
    {
      [v9 paymentSetupFeaturesForSourceApplicationID:v11 completion:v7];
    }

    goto LABEL_49;
  }

  if (!PKIsHandoffClient() || ![(PKIDSManager *)self->_idsManager hasRemoteDevices])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not able to return payment setup features", buf, 2u);
    }

    goto LABEL_48;
  }

  oslog = v8;
  v31 = v7;
  v32 = v6;
  v12 = objc_alloc_init(NSMutableDictionary);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(PKIDSManager *)self->_idsManager remoteDevices];
  v35 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v35)
  {
    v34 = *v41;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v15 = [v14 supportedSetupFeatures];
        v16 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            v19 = 0;
            do
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v36 + 1) + 8 * v19);
              v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 type]);
              v22 = [v12 objectForKey:v21];
              if (!v22)
              {
                v22 = v20;
                [v12 setObject:v22 forKey:v21];
              }

              v23 = [v20 state];
              v24 = [v22 state];
              if (v24 == 2)
              {
                if (v23 == 3)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                if (v24 == 1)
                {
                  if ((v23 & 0xFFFFFFFFFFFFFFFELL) != 2)
                  {
                    goto LABEL_30;
                  }

LABEL_29:
                  [v22 setState:v23];
                  goto LABEL_30;
                }

                if (!v24 && v23 - 1 < 3)
                {
                  goto LABEL_29;
                }
              }

LABEL_30:

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v25 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
            v17 = v25;
          }

          while (v25);
        }
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v35);
  }

  v26 = [v12 objectForKey:&off_1008A28A0];
  v27 = v26;
  if (v26 && [v26 state] == 1)
  {
    [v27 setState:0];
  }

  v28 = [v12 allValues];
  v7 = v31;
  v6 = v32;
  if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_DEFAULT, "Returning payment setup features from remote devices :%@", buf, 0xCu);
  }

  (v31)[2](v31, v28);
LABEL_49:
}

- (void)presentPaymentSetupRequest:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 configuration];
  if ([(PDPassLibrary *)self _isConfigurationValid:v11])
  {
    v12 = [v8 paymentSetupFeatures];
    v13 = [v12 count];

    if (v13)
    {
      if (PKIsMac())
      {
        [(PDPassLibrary *)self openPaymentUIWithCompletion:v10];
      }

      else if (PKPassbookIsCurrentlyDeletedByUser())
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Prompting user to install Wallet", buf, 2u);
        }

        v16 = v10;
        PKShowAlertForWalletUninstalled();
      }

      else
      {
        sub_1005CC7F8(self->_remoteInterfacePresenter, v8, 0, v9, v10);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not able to present payment setup features", buf, 2u);
  }

  (*(v10 + 2))(v10, 0);
LABEL_9:
}

- (void)paymentPassWithAssociatedAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100055464;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = PDDefaultPaymentPassUniqueIdentifier();
  [(PDPassLibrary *)self presentContactlessInterfaceForPassWithUniqueIdentifier:v7 fromSource:a3 handler:v6];
}

- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)a3 fromSource:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    goto LABEL_2;
  }

  v11 = [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation];
  if (v8 && a4 == 4 && !v11)
  {
    if (![(PDPassLibrary *)self _entitledForPassType:1 uniqueIdentifier:v8 actions:2])
    {
      goto LABEL_10;
    }

LABEL_2:
    remoteInterfacePresenter = self->_remoteInterfacePresenter;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100055818;
    v13[3] = &unk_10083E3C8;
    v14 = v9;
    sub_1005CB414(remoteInterfacePresenter, v8, a4, v13);

    goto LABEL_3;
  }

  if (v11)
  {
    goto LABEL_2;
  }

LABEL_10:
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[PDPassLibrary presentContactlessInterfaceForPassWithUniqueIdentifier:fromSource:handler:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

LABEL_3:
}

- (void)canPresentPaymentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100055968;
    v10[3] = &unk_10083F418;
    v10[4] = self;
    v12 = v7;
    v11 = v6;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)isPaymentPassActivationAvailableWithHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = PKSecureElementIsAvailable() != 0;
    (*(a3 + 2))(v5, v4);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getPassesAndCatalogOfPassTypes:(unint64_t)a4 limitResults:(BOOL)a5 withHandler:(id)a6
{
  v8 = a3;
  v10 = a6;
  if (v10)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100056758;
      v17[3] = &unk_10083F440;
      v17[4] = self;
      v19 = a4;
      v20 = a5;
      v18 = v10;
      v11 = objc_retainBlock(v17);
      v12 = v11;
      if (v8)
      {
        (v11[2])(v11);
      }

      else
      {
        v14 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100056808;
        block[3] = &unk_10083D648;
        v16 = v12;
        dispatch_async(v14, block);
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[PDPassLibrary usingSynchronousProxy:getPassesAndCatalogOfPassTypes:limitResults:withHandler:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
      }

      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getGroupsControllerSnapshotWithOptions:(id)a4 handler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100056A30;
      v16[3] = &unk_10083D320;
      v16[4] = self;
      v17 = v8;
      v18 = v9;
      v10 = objc_retainBlock(v16);
      v11 = v10;
      if (v6)
      {
        (v10[2])(v10);
      }

      else
      {
        v13 = PDDefaultQueue();
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100056B88;
        v14[3] = &unk_10083D648;
        v15 = v11;
        dispatch_async(v13, v14);
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[PDPassLibrary usingSynchronousProxy:getGroupsControllerSnapshotWithOptions:handler:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
      }

      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getPaymentPassesPendingActivationWithHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (v4)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [(PDDatabaseManager *)self->_databaseManager paymentPassesPendingActivation];
        v9 = [(PDPassLibrary *)self _entitlementFilteredPasses:v8];
        v6[2](v6, v9);

        objc_autoreleasePoolPop(v7);
      }

      else
      {
        v11 = PDDefaultQueue();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100056D60;
        v12[3] = &unk_10083C820;
        v12[4] = self;
        v13 = v6;
        dispatch_async(v11, v12);
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[PDPassLibrary usingSynchronousProxy:getPaymentPassesPendingActivationWithHandler:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
      }

      v6[2](v6, 0);
    }
  }
}

- (void)sendUserEditedCatalog:(id)a3
{
  v4 = a3;
  v5 = PDOSTransactionCreate("PDPassLibrary");
  v6 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056EB8;
  block[3] = &unk_10083C4C0;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)notifyPassUsedWithIdentifier:(id)a3 fromSource:(int64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100056F8C;
  v4[3] = &unk_10083F468;
  v4[4] = self;
  v4[5] = a4;
  [(PDPassLibrary *)self _getPassWithUniqueID:a3 handler:v4];
}

- (void)getPassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    v7 = a3;
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v7];

    if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
    {
      v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v9];
      v11[2](v11, v10);
    }

    else
    {
      v11[2](v11, 0);
    }

    v6 = v11;
  }
}

- (void)hasPassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = dispatch_get_global_queue(21, 0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100057284;
      v11[3] = &unk_10083F490;
      v13 = v7;
      v11[4] = self;
      v12 = v6;
      v9 = v11;
      *&block = _NSConcreteStackBlock;
      *(&block + 1) = 3221225472;
      v15 = sub_100005610;
      v16 = &unk_10083D648;
      v17 = v9;
      dispatch_async(v8, &block);
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 136315138;
        *(&block + 4) = "[PDPassLibrary hasPassWithUniqueID:handler:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &block, 0xCu);
      }

      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)getPassesWithReaderIdentifier:(id)a3 handler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = [(PDDatabaseManager *)self->_databaseManager passesWithPairedReaderIdentifier:v7];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000573DC;
    v11[3] = &unk_10083F4B8;
    v11[4] = self;
    v10 = [v9 pk_setBySafelyApplyingBlock:v11];

    v6[2](v6, v10);
  }
}

- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      [(PDSecureElementPassDatabaseRequest *)v8 setPrimaryPaymentApplicationStates:v6];
      v9 = [(PDDatabaseManager *)self->_databaseManager secureElementPassesForRequest:v8];
      v7[2](v7, v9);
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[PDPassLibrary passesWithPrimaryPaymentApplicationStates:handler:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v11, 0xCu);
      }

      v7[2](v7, 0);
    }
  }
}

- (void)hasRemoteLibraryWithHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v6 = v3;
    v4 = PKPairedOrPairingDevice();
    if (v4)
    {
      v5 = PKNRDeviceHasAltAccount() ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v6[2](v6, v5);

    v3 = v6;
  }
}

- (void)inAppPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 withHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (v17)
  {
    v18 = dispatch_get_global_queue(21, 0);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000577CC;
    v20[3] = &unk_10083F508;
    v20[4] = self;
    v21 = v14;
    v25 = a4;
    v22 = v15;
    v23 = v16;
    v26 = a7;
    v24 = v17;
    v19 = v20;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v28 = v19;
    dispatch_async(v18, block);
  }
}

- (void)hasInAppPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 withHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (v17)
  {
    v18 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057A30;
    block[3] = &unk_10083F508;
    block[4] = self;
    v20 = v14;
    v24 = a4;
    v21 = v15;
    v22 = v16;
    v25 = a7;
    v23 = v17;
    dispatch_async(v18, block);
  }
}

- (void)hasPassesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentRequestType:(id)a7 isMultiTokensRequest:(BOOL)a8 completion:(id)a9
{
  if (a9)
  {
    LOBYTE(v9) = a8;
    [(PDPassLibrary *)self _hasPassesWithSupportedNetworks:a3 merchantCapabilities:a4 webDomain:a5 issuerCountryCodes:a6 paymentApplicationStates:0 paymentRequestType:a7 isMultiTokensRequest:v9 handler:a9];
  }
}

- (void)_hasPassesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 handler:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  accountManager = self->_accountManager;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100057DF0;
  v29[3] = &unk_10083F558;
  v30 = v17;
  v31 = v18;
  v32 = self;
  v33 = v16;
  v36 = v21;
  v37 = a4;
  v34 = v19;
  v35 = v20;
  v38 = a9;
  v23 = v20;
  v24 = v19;
  v25 = v16;
  v26 = v21;
  v27 = v18;
  v28 = v17;
  [(PDAccountManager *)accountManager accountsWithCompletion:v29];
}

- (BOOL)_hasPaymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 paymentApplicationStates:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if ([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate])
  {
    databaseManager = self->_databaseManager;
  }

  else
  {
    v14 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    if (((v10 | v14) & 1) == 0)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v15 = v14;
    databaseManager = self->_databaseManager;
    if ((v15 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = v9;
LABEL_7:
  v13 = [(PDDatabaseManager *)databaseManager passExistsForNonWebInAppPaymentOnNetworks:v8 withCapabilities:a4 paymentApplicationStates:v12];
LABEL_12:

  return v13;
}

- (void)_passesWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 webDomain:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 handler:(id)a10
{
  v15 = a3;
  v16 = a5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000581BC;
  v25[3] = &unk_10083F580;
  v17 = v16 != 0;
  v26 = v15;
  v27 = v16;
  v28 = self;
  v29 = a6;
  v32 = a9;
  v30 = a7;
  v31 = a10;
  v18 = v31;
  v19 = v30;
  v20 = v29;
  v21 = v16;
  v22 = v15;
  LOBYTE(v23) = a9;
  [(PDPassLibrary *)self _paymentPassesForNetworks:v22 capabilities:a4 issuerCountryCodes:v20 webPayment:v17 paymentApplicationStates:v19 paymentRequestType:a8 isMultiTokensRequest:v23 withHandler:v25];
}

- (void)_paymentPassesForNetworks:(id)a3 capabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 webPayment:(BOOL)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 withHandler:(id)a10
{
  v12 = a6;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v34 = a8;
  v19 = a10;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000059C0;
  v42 = sub_10000B0EC;
  v43 = 0;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    if (((v20 | v21) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  databaseManager = self->_databaseManager;
  paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
  if (v12)
  {
    v24 = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    if (v21)
    {
      v25 = v17;
    }

    else
    {
      v25 = 0;
    }

    if (v21)
    {
      v26 = v18;
    }

    else
    {
      v26 = 0;
    }

    v27 = [(PDDatabaseManager *)databaseManager passesForWebPaymentOnNetworks:v16 withCapabilities:a4 webService:v24 issuerCountryCodes:v25 paymentApplicationStates:v26 isMultiTokensRequest:a9];
  }

  else
  {
    v28 = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    v24 = v28;
    if (v21)
    {
      v29 = v18;
    }

    else
    {
      v29 = 0;
    }

    if (v21)
    {
      v30 = v17;
    }

    else
    {
      v30 = 0;
    }

    v27 = [(PDDatabaseManager *)databaseManager passesForNonWebInAppPaymentOnNetworks:v16 withCapabilities:a4 issuerCountryCodes:v30 paymentApplicationStates:v29 paymentRequestType:v34 isMultiTokensRequest:a9 webService:v28];
  }

  v31 = v39[5];
  v39[5] = v27;

LABEL_23:
  accountManager = self->_accountManager;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000584E0;
  v35[3] = &unk_10083F5D0;
  v37 = &v38;
  v33 = v19;
  v36 = v33;
  [(PDAccountManager *)accountManager accountsWithCompletion:v35];

  _Block_object_dispose(&v38, 8);
}

- (void)hasProvisioningExtensionsWithSupportedNetworks:(id)a3 merchantCapabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    goto LABEL_21;
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  }

  if (PKPaymentSheetExpressProvisioningWebFlow())
  {
    goto LABEL_15;
  }

  v15 = [(PDPassLibrary *)self remoteProcessApplicationIdentifier];
  v16 = v15;
  if (!v15 || ![v15 hasPrefix:@"com.apple.WebKit"])
  {

LABEL_15:
    if ((v13 | v14))
    {
      v19 = [PKPaymentProvisioningController alloc];
      v20 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
      v21 = [v19 initWithWebService:v20];

      if (v21)
      {
        v22 = [v21 countSupportedProvisioningExtensions] != 0;
      }

      else
      {
        v22 = 0;
      }

      v12[2](v12, v22);
    }

    else
    {
      v12[2](v12, 0);
    }

    goto LABEL_21;
  }

  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    v23 = 138412546;
    v24 = v18;
    v25 = 1024;
    v26 = [(PDPassLibrary *)self remoteProcessIdentifier];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ returns NO for pid: %i as PKPaymentSheetExpressProvisioningWebFlow is off", &v23, 0x12u);
  }

  v12[2](v12, 0);
LABEL_21:
}

- (id)_inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 isMultiTokensRequest:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v14 = [(PDPassLibrary *)self remoteProcessApplicationIdentifier];
    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(a2);
        v29 = 138412546;
        v30 = v16;
        v31 = 1024;
        v32 = [(PDPassLibrary *)self remoteProcessIdentifier];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: %@ failed to determine remote application identifier for remote process with pid: %i", &v29, 0x12u);
      }

      v11 = 0;
    }
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    v18 = 1;
LABEL_13:
    databaseManager = self->_databaseManager;
    v21 = [NSSet setWithObject:PKPaymentNetworkPrivateLabel];
    v22 = (v18 & 1) == 0;
    if (v18)
    {
      v23 = v12;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v13;
    }

    v25 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v26 = [(PDDatabaseManager *)databaseManager passesForInAppPaymentOnNetworks:v21 issuerCountryCodes:v23 paymentApplicationStates:v24 paymentRequestType:0 isMultiTokensRequest:v6 webService:v25];

    v27 = [(PDPassLibrary *)self _filteredPasses:v26 forApplicationIdentifier:v11];

    goto LABEL_21;
  }

  v19 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  v18 = v19;
  if ((v17 | v19))
  {
    goto LABEL_13;
  }

  v27 = 0;
LABEL_21:

  return v27;
}

- (id)_inAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 isMultiTokensRequest:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    v14 = 1;
LABEL_7:
    databaseManager = self->_databaseManager;
    v17 = [NSSet setWithObject:PKPaymentNetworkPrivateLabel];
    v18 = (v14 & 1) == 0;
    if (v14)
    {
      v19 = v11;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v12;
    }

    v21 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v22 = [(PDDatabaseManager *)databaseManager passesForInAppPaymentOnNetworks:v17 issuerCountryCodes:v19 paymentApplicationStates:v20 paymentRequestType:0 isMultiTokensRequest:v6 webService:v21];

    v23 = [(PDPassLibrary *)self _filteredPasses:v22 forWebDomain:v10];

    goto LABEL_15;
  }

  v15 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  v14 = v15;
  if ((v13 | v15))
  {
    goto LABEL_7;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (void)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058E74;
    v15[3] = &unk_10083F5F8;
    v18 = v12;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)inAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100059040;
  v18[3] = &unk_10083F5F8;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  dispatch_async(v13, block);
}

- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100059214;
    v15[3] = &unk_10083F5F8;
    v18 = v12;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)a3 issuerCountryCodes:(id)a4 isMultiTokensRequest:(BOOL)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000593F0;
    v15[3] = &unk_10083F5F8;
    v18 = v12;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v19 = a5;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)getPassesWithUniqueIdentifiers:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100059598;
    v10[3] = &unk_10083D320;
    v11 = v6;
    v12 = self;
    v13 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v15 = v9;
    dispatch_async(v8, block);
  }
}

- (void)unexpiredPassesOrderedByGroup:(id)a3
{
  if (a3)
  {
    databaseManager = self->_databaseManager;
    v4 = a3;
    v5 = [(PDDatabaseManager *)databaseManager unexpiredPassesOrderedByGroup];
    v4[2](v4, v5);
  }
}

- (void)passUniqueIDsMatchingSearchTerm:(id)a3 completion:(id)a4
{
  if (a4)
  {
    databaseManager = self->_databaseManager;
    v6 = a4;
    v7 = [(PDDatabaseManager *)databaseManager passUniqueIDsMatchingSearchTerm:a3];
    v6[2](v6, v7);
  }
}

- (void)getPassesWithSearchableTransactions:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000598F4;
    v7[3] = &unk_10083F648;
    v8 = objc_alloc_init(NSMutableSet);
    v5 = v8;
    [(PDPassLibrary *)self getPassesOfType:1 handler:v7];
    [(PDPassLibrary *)self _sanitizePasses:v5];
    v6 = [v5 copy];
    v4[2](v4, v6);
  }
}

- (void)getPassUniqueIDsForAssociatedApplicationIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = dispatch_get_global_queue(21, 0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100059BE8;
      v11[3] = &unk_10083D320;
      v11[4] = self;
      v12 = v6;
      v13 = v7;
      v9 = v11;
      *&block = _NSConcreteStackBlock;
      *(&block + 1) = 3221225472;
      v15 = sub_100005610;
      v16 = &unk_10083D648;
      v17 = v9;
      dispatch_async(v8, &block);
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 136315138;
        *(&block + 4) = "[PDPassLibrary getPassUniqueIDsForAssociatedApplicationIdentifier:handler:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &block, 0xCu);
      }

      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)getMetadataForFieldWithProperties:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005A030;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getManifestHashForPassWithUniqueID:(id)a4 handler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (v6)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [(PDCardFileManager *)self->_cardFileManager objectWithUniqueID:v8];
        v12 = [v11 dataAccessor];
        v13 = [v12 manifestHash];
        v9[2](v9, v13);

        objc_autoreleasePoolPop(v10);
      }

      else
      {
        v15 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10005A2F4;
        block[3] = &unk_10083F490;
        v18 = v9;
        block[4] = self;
        v17 = v8;
        dispatch_async(v15, block);
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[PDPassLibrary usingSynchronousProxy:getManifestHashForPassWithUniqueID:handler:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
      }

      v9[2](v9, 0);
    }
  }
}

- (void)enabledValueAddedServicePassesWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005A498;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (id)_filteredPasses:(id)a3 forWebDomain:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A610;
  v8[3] = &unk_10083F698;
  v8[4] = self;
  v9 = a4;
  v5 = v9;
  v6 = [a3 objectsPassingTest:v8];

  return v6;
}

- (id)_filteredPasses:(id)a3 forApplicationIdentifier:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A75C;
  v8[3] = &unk_10083F698;
  v8[4] = self;
  v9 = a4;
  v5 = v9;
  v6 = [a3 objectsPassingTest:v8];

  return v6;
}

- (void)hasPassesOfType:(unint64_t)a3 handler:(id)a4
{
  if (a4)
  {
    databaseManager = self->_databaseManager;
    v6 = a4;
    v6[2](v6, [(PDDatabaseManager *)databaseManager passExistsWithPassType:a3]);
  }
}

- (void)hasPassesInExpiredSectionWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    v6 = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    v7 = v10;
    if (v6)
    {
      v8 = [(PDDatabaseManager *)self->_databaseManager hasPassesInExpiredSection];
      v7 = v10;
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v4 = v7[2](v7, v9);
    v5 = v10;
  }

  _objc_release_x1(v4, v5);
}

- (void)canAddPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (PKStoreDemoModeEnabled())
  {
    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (a3 == 1)
  {
    v8 = [(PDDatabaseManager *)self->_databaseManager countActiveSecureElementPasses];
    if (PKDisableDynamicSEAllocation())
    {
      v9 = PKMaxPaymentCards();
      v10 = v9 - 1 < v8;
    }

    else
    {
      v10 = 0;
      v9 = -1;
    }

    IsAvailable = PKSecureElementIsAvailable();
    v12 = +[PKSecureElement isInFailForward];
    v13 = PKIsSRD();
    v14 = PKIsBeneficiaryAccount();
    v15 = v14;
    if (IsAvailable)
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16 | v10 | v14 | v12;
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"YES";
      v24 = 138544898;
      if (v17)
      {
        v20 = @"NO";
      }

      else
      {
        v20 = @"YES";
      }

      v25 = v20;
      v26 = 2050;
      v27 = v9;
      if (IsAvailable)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v28 = 2048;
      if (v12)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v29 = v8;
      v30 = 2114;
      if (v13)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v31 = v21;
      if ((v15 & 1) == 0)
      {
        v19 = @"NO";
      }

      v32 = 2114;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      v36 = 2114;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "canAddPass: %{public}@ with maxCards: %{public}ld, passCount: %ld - seAvailable: %{public}@, isInFailForward: %{public}@ isSRD: %{public}@ isBeneficiaryAccount: %{public}@", &v24, 0x48u);
    }

    if (v6)
    {
      v6[2](v6, (v17 ^ 1) & 1);
    }
  }

  else if (a3)
  {
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else if (v6)
  {
    v7 = (+[PKWalletVisibility isWalletVisible]& 1) != 0 || PKPassbookIsCurrentlyDeletedByUser() != 0;
    v6[2](v6, v7);
  }
}

- (void)countPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist passesOverviewAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7[2](v7, [(PDDatabaseManager *)self->_databaseManager countPassesOfType:a3]);
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromSelector(a2);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: not entitled for %@", &v10, 0xCu);
      }

      v7[2](v7, 0);
    }
  }
}

- (void)defaultPaymentPassWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005ADC0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)peerPaymentPassUniqueIDWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v5 = [(PDDatabaseManager *)self->_databaseManager peerPaymentAccount];
      v6 = [v5 associatedPassUniqueID];
      v4[2](v4, v6);
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7CF8();
      }

      v4[2](v4, 0);
    }
  }
}

- (void)expressTransitPassWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005B088;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005B324;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)sortedTransitPassesForAppletDataFormat:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005BDAC;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getEncryptedServiceProviderDataForUniqueID:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (v7 && [v7 length] && -[PDPassLibrary _entitledForUniqueID:forActions:](self, "_entitledForUniqueID:forActions:", v7, 2))
    {
      if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
      {
LABEL_6:
        v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v7];
        if ([v9 passType]== 1)
        {
          v10 = [v9 secureElementPass];
          v11 = objc_alloc_init(PKAsyncUnaryOperationComposer);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v41 = 0x3032000000;
          v42 = sub_1000059C0;
          v43 = sub_10000B0EC;
          v44 = 0;
          v38[0] = 0;
          v38[1] = v38;
          v38[2] = 0x3032000000;
          v38[3] = sub_1000059C0;
          v38[4] = sub_10000B0EC;
          v39 = 0;
          v36[0] = 0;
          v36[1] = v36;
          v36[2] = 0x3032000000;
          v36[3] = sub_1000059C0;
          v36[4] = sub_10000B0EC;
          v37 = 0;
          v34[0] = 0;
          v34[1] = v34;
          v34[2] = 0x3032000000;
          v34[3] = sub_1000059C0;
          v34[4] = sub_10000B0EC;
          v35 = 0;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10005CB0C;
          v29[3] = &unk_10083F7B0;
          v29[4] = self;
          v30 = v9;
          p_buf = &buf;
          v32 = v36;
          v33 = v38;
          [v11 addOperation:v29];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10005D1A8;
          v23[3] = &unk_10083F800;
          v23[4] = self;
          v12 = v10;
          v24 = v12;
          v25 = v36;
          v26 = v38;
          v27 = v34;
          v28 = &buf;
          [v11 addOperation:v23];
          v13 = +[NSNull null];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10005D41C;
          v19[3] = &unk_10083F828;
          v21 = &buf;
          v20 = v8;
          v22 = v34;
          v14 = [v11 evaluateWithInput:v13 completion:v19];

          _Block_object_dispose(v34, 8);
          _Block_object_dispose(v36, 8);

          _Block_object_dispose(v38, 8);
          _Block_object_dispose(&buf, 8);
        }

        else
        {
          v18 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Pass for unique ID %@ wasn't a secure element pass", &buf, 0xCu);
          }

          v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
          (*(v8 + 2))(v8, 0, v12);
        }

        goto LABEL_23;
      }

      v9 = [(PDPassLibrary *)self remoteProcessApplicationInfo];
      if ([v9 isRunning]&& ([v9 isVisible]& 1) != 0)
      {

        goto LABEL_6;
      }

      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[PDPassLibrary usingSynchronousProxy:getEncryptedServiceProviderDataForUniqueID:completion:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s requires the client to be running in the foreground", &buf, 0xCu);
      }

      v17 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
      (*(v8 + 2))(v8, 0, v17);
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[PDPassLibrary usingSynchronousProxy:getEncryptedServiceProviderDataForUniqueID:completion:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &buf, 0xCu);
      }

      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v8 + 2))(v8, 0, v9);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PDPassLibrary usingSynchronousProxy:getEncryptedServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s requires a completion", &buf, 0xCu);
    }
  }

LABEL_23:
}

- (void)usingSynchronousProxy:(BOOL)a3 getServiceProviderDataForUniqueID:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (v7 && [v7 length] && -[PDPassLibrary _entitledForUniqueID:forActions:](self, "_entitledForUniqueID:forActions:", v7, 2))
    {
      if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) == 0)
      {
        v9 = [(PDPassLibrary *)self remoteProcessApplicationInfo];
        if (![v9 isRunning]|| ([v9 isVisible]& 1) == 0)
        {
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315138;
            v15 = "[PDPassLibrary usingSynchronousProxy:getServiceProviderDataForUniqueID:completion:]";
            v12 = "%s requires the client to be running in the foreground";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
          }

LABEL_21:

          v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
          v8[2](v8, 0, v13);

          goto LABEL_22;
        }
      }

      v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v7];
      if ([v9 passType]== 1)
      {
        [(PDPassLibrary *)self _getServiceProviderDataForPass:v9 completion:v8];
        goto LABEL_22;
      }

      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        v12 = "Couldn't get service provider data: Pass for unique ID %@ wasn't a secure element pass";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[PDPassLibrary usingSynchronousProxy:getServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v14, 0xCu);
    }

    v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    v8[2](v8, 0, v9);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[PDPassLibrary usingSynchronousProxy:getServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s requires a completion", &v14, 0xCu);
    }
  }

LABEL_22:
}

- (void)_getEncryptedServiceProviderDataForSecureElementPass:(id)a3 publicKey:(id)a4 scheme:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [v10 devicePrimaryPaymentApplication];
    v15 = [v14 applicationIdentifier];
    secureElement = self->_secureElement;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005D9F4;
    v18[3] = &unk_10083F850;
    v19 = v15;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v17 = v15;
    [(PKSecureElement *)secureElement accessSecureElementManagerSessionWithHandler:v18];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[PDPassLibrary _getEncryptedServiceProviderDataForSecureElementPass:publicKey:scheme:completion:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s requires a completion", buf, 0xCu);
    }
  }
}

- (void)_getServiceProviderDataForPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 devicePrimaryPaymentApplication];
    v9 = [v8 applicationIdentifier];
    secureElement = self->_secureElement;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005DCE8;
    v12[3] = &unk_10083F878;
    v13 = v9;
    v14 = v7;
    v11 = v9;
    [(PKSecureElement *)secureElement accessSecureElementManagerSessionWithHandler:v12];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[PDPassLibrary _getServiceProviderDataForPass:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s requires a completion", buf, 0xCu);
    }
  }
}

- (void)checkForTransitNotification
{
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v3 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005DF94;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7D2C();
    }
  }
}

- (void)postUpgradedPassNotificationForMarket:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E0E8;
    v9[3] = &unk_10083F8A0;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [(PDPassLibrary *)self _getPassWithUniqueID:v11 handler:v9];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7D60();
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 postUpgradesAvailableNotificationForMarket:(id)a4 passUniqueID:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "postUpgradesAvailableNotificationForMarket:passUniqueID: does not currently support sync", buf, 2u);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (![(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7D94();
    }

    goto LABEL_8;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E3F4;
  v11[3] = &unk_10083F8A0;
  v11[4] = self;
  v12 = v8;
  v13 = v9;
  [(PDPassLibrary *)self _getPassWithUniqueID:v13 handler:v11];

LABEL_9:
}

- (void)passWithFPANIdentifier:(id)a3 handler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager passWithPrimaryAccountIdentifier:v9];
      v8 = [v7 paymentPass];

      v6[2](v6, v8);
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (void)passWithDPANIdentifier:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:v10];
      if (v7)
      {
        v8 = [(PDDatabaseManager *)self->_databaseManager passWithPaymentApplication:v7];
        v9 = [v8 paymentPass];
      }

      else
      {
        v9 = 0;
      }

      v6[2](v6, v9);
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (void)isRemovingPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v9 = v6;
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = a3 == 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [(PKSecureElement *)self->_secureElement isDeletingAllApplets];
    }

    else
    {
      v8 = 0;
    }

    v9[2](v9, v8);
    v6 = v9;
  }
}

- (void)hasSecureElementPassesOfType:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v8 = v6;
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager hasSecureElementPassesOfType:a3];
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7);
    v6 = v8;
  }
}

- (void)isPassbookVisibleWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    (*(a3 + 2))(v4, +[PKWalletVisibility isWalletVisible]);
  }
}

- (void)passbookHasBeenDeletedWithHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = PKPassbookIsCurrentlyDeletedByUser() != 0;
    (*(a3 + 2))(v5, v4);
  }
}

- (void)iPadSupportsPasses:(id)a3
{
  if (a3)
  {
    paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
    v4 = a3;
    v5 = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    v6 = [v5 _appleAccountInformation];

    v4[2](v4, [v6 aidaAccountAvailable]);
  }
}

- (void)getArchivedObjectWithUniqueID:(id)a3 handler:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDCardFileManager *)self->_cardFileManager objectWithUniqueID:v11];
    if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
    {
      v10 = [v9 archiveData];
      v6[2](v6, v10);
    }

    else
    {
      v6[2](v6, 0);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)getDataForBundleResourceNamed:(id)a3 withExtension:(id)a4 objectUniqueIdentifier:(id)a5 handler:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    if ([(PDPassLibrary *)self _entitledForUniqueID:v11 forActions:2])
    {
      v14 = PDOSTransactionCreate("PDPassLibrary");
      v15 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:v11];
      v16 = [v15 dataForBundleResourceNamed:v17 withExtension:v10];
      v12[2](v12, v16);
    }

    else
    {
      v12[2](v12, 0);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)getDataForBundleResources:(id)a3 objectUniqueIdentifier:(id)a4 handler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    if ([(PDPassLibrary *)self _entitledForUniqueID:v8 forActions:2])
    {
      v11 = PDOSTransactionCreate("PDPassLibrary");
      v12 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:v8];
      v13 = [v12 dataForBundleResources:v14];
      v9[2](v9, v13);
    }

    else
    {
      v9[2](v9, 0);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 passLocalizedStringForKey:(id)a4 uniqueID:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if (!a3)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "passLocalizedStringForKey does not currently support async", v16, 2u);
      }
    }

    if ([(PDPassLibrary *)self _entitledForUniqueID:v11 forActions:2])
    {
      v14 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:v11];
      v15 = [v14 passLocalizedStringForKey:v10];
      v12[2](v12, v15);
    }

    else
    {
      v12[2](v12, 0);
    }
  }
}

- (void)getPassWithPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v12 = v8;
    v10 = [(PDDatabaseManager *)self->_databaseManager passWithPassTypeID:a3 serialNumber:a4];
    if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
    {
      v11 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v10];
      v12[2](v12, v11);
    }

    else
    {
      v12[2](v12, 0);
    }

    v9 = v12;
  }

  _objc_release_x1(v8, v9);
}

- (void)getManifestHashAndSettingsForPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005F088;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }
}

- (void)replacePassWithPassData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F2E0;
  block[3] = &unk_10083D320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_queue_replacePass:(id)a3 handler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = PDDefaultQueue();
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  if (v12 && [(PDPassLibrary *)self _entitledForObject:v12 forActions:4])
  {
    v9 = [v12 passTypeIdentifier];
    v10 = [v12 serialNumber];
    if ([(PDDatabaseManager *)self->_databaseManager passExistsWithPassTypeID:v9 serialNumber:v10])
    {
      v11 = [(PDCardFileManager *)self->_cardFileManager writeCard:v12 source:4 error:0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (v6)
  {
    v6[2](v6, v11);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getContentForUniqueID:(id)a4 withHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if ([(PDPassLibrary *)self _entitledForUniqueID:v8 forActions:2])
    {
      if (v6)
      {
        v10 = PDOSTransactionCreate("PDPassLibrary");
        v11 = objc_autoreleasePoolPush();
        v12 = [(PDCardFileManager *)self->_cardFileManager contentForUniqueID:v8];
        v9[2](v9, v12);

        objc_autoreleasePoolPop(v11);
        goto LABEL_8;
      }

      cardFileManager = self->_cardFileManager;
      if (cardFileManager)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10005F5E0;
        v14[3] = &unk_10083F8C8;
        v15 = v9;
        [(PDCardFileManager *)cardFileManager fetchContentForUniqueID:v8 withCompletion:v14];

        goto LABEL_8;
      }
    }

    v9[2](v9, 0);
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)a3 getCachedImageSetContainerForUniqueID:(id)a4 type:(int64_t)a5 withDisplayProfile:(id)a6 displayTraits:(id)a7 handler:(id)a8
{
  v12 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v17)
  {
    if (v16 && [(PDPassLibrary *)self _entitledForUniqueID:v14 forActions:2])
    {
      if (v12)
      {
        v18 = PDOSTransactionCreate("PDPassLibrary");
        v19 = objc_autoreleasePoolPush();
        v20 = [(PDCardFileManager *)self->_cardFileManager cachedImageSetContainerForUniqueID:v14 type:a5 withDisplayProfile:v15 displayTraits:v16];
        v17[2](v17, v20);

        objc_autoreleasePoolPop(v19);
      }

      else
      {
        cardFileManager = self->_cardFileManager;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10005F790;
        v22[3] = &unk_10083F8F0;
        v23 = v17;
        [(PDCardFileManager *)cardFileManager fetchCachedImageSetContainerForUniqueID:v14 type:a5 withDisplayProfile:v15 displayTraits:v16 completion:v22];
      }
    }

    else
    {
      v17[2](v17, 0);
    }
  }
}

- (void)getImageSetForUniqueID:(id)a3 ofType:(int64_t)a4 displayProfile:(id)a5 suffix:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = v12;
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005F8C4;
    v14[3] = &unk_10083F8F0;
    v15 = v12;
    [(PDPassLibrary *)self usingSynchronousProxy:0 getImageSetContainerForUniqueID:a3 type:a4 withDisplayProfile:a5 suffix:a6 handler:v14];
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getImageSetContainerForUniqueID:(id)a4 type:(int64_t)a5 withDisplayProfile:(id)a6 suffix:(id)a7 handler:(id)a8
{
  v12 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v17)
  {
    if ([(PDPassLibrary *)self _entitledForUniqueID:v14 forActions:2])
    {
      if (v12)
      {
        v18 = PDOSTransactionCreate("PDPassLibrary");
        v19 = objc_autoreleasePoolPush();
        v20 = [(PDCardFileManager *)self->_cardFileManager imageSetContainerForUniqueID:v14 ofType:a5 withDisplayProfile:v15 suffix:v16];
        v17[2](v17, v20);

        objc_autoreleasePoolPop(v19);
        goto LABEL_8;
      }

      cardFileManager = self->_cardFileManager;
      if (cardFileManager)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10005FAD0;
        v22[3] = &unk_10083F8F0;
        v23 = v17;
        [(PDCardFileManager *)cardFileManager fetchImageSetContainerForUniqueID:v14 ofType:a5 withDisplayProfile:v15 suffix:v16 completion:v22];

        goto LABEL_8;
      }
    }

    v17[2](v17, 0);
  }

LABEL_8:
}

- (void)updateSettings:(unint64_t)a3 forObjectWithUniqueID:(id)a4
{
  v6 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FC34;
    block[3] = &unk_10083D690;
    block[4] = self;
    v11 = a3;
    v10 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7DC8();
    }
  }
}

- (void)setSortingState:(int64_t)a3 forObjectWithUniqueID:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005FD8C;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = v8;
    v15 = a3;
    v14 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7DFC();
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 setLiveRenderingEnabled:(BOOL)a4 forPassUniqueID:(id)a5 handler:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  if (v10)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
    {
      if (v9)
      {
        v10[2](v10, [(PDPassLiveRenderManager *)self->_passLiveRenderManager updateLiveRenderingEnabled:v7 forPassUniqueID:v9]);
      }

      else
      {
        v10[2](v10, 1uLL);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "passd was asked to change live rendering by an unentitled process. Refusing.", v12, 2u);
      }

      v10[2](v10, 0);
    }
  }
}

- (void)addSharedFlight:(id)a3 fromSenderAddress:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      [(PDFlightManager *)self->_flightManager addSharedFlight:v8 fromSenderAddress:v9 completion:v10];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7E30();
      }

      v10[2](v10, 0);
    }
  }
}

- (void)simulateFlightUpdate:(id)a3 forPassUniqueID:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (v9)
      {
        v10[2](v10, [(PDFlightManager *)self->_flightManager simulateFlightUpdate:v8 forPassUniqueID:v9]);
      }

      else
      {
        v10[2](v10, 1uLL);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7E64();
      }

      v10[2](v10, 0);
    }
  }
}

- (void)flightsWithScheduledDepartureFromStartDate:(id)a3 endDate:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) == 0)
    {
      v9[2](v9, 0);
    }

    v10 = [(PDFlightManager *)self->_flightManager flightsWithScheduledDepartureFromStartDate:v11 endDate:v8];
    (v9)[2](v9, v10);
  }
}

- (void)flightSubscriptionsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) == 0)
    {
      v6[2](v6, 0);
    }

    v5 = [(PDFlightManager *)self->_flightManager flightSubscriptions];
    (v6)[2](v6, v5);

    v4 = v6;
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 dynamicStateForPassUniqueID:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (v7)
      {
        v9 = [(PDPassDynamicStateManager *)self->_dynamicStateManager passDynamicStateForUniqueIdentifier:v7];
        v8[2](v8, v9);

        goto LABEL_9;
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "passd was asked to get dynamic state by an unentitled process. Refusing.", v11, 2u);
      }
    }

    v8[2](v8, 0);
  }

LABEL_9:
}

- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100060438;
    v7[3] = &unk_10083C420;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7E98();
    }
  }
}

- (void)noteObjectSharedWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000605B4;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)addPassesWithData:(id)a3 handler:(id)a4
{
  v5 = a3;
  v21 = a4;
  v23 = PDOSTransactionCreate("PDPassLibrary");
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v30 = 0;
        v14 = [PKPass createWithData:v12 warnings:0 error:&v30];
        v15 = v30;
        if (v14)
        {
          [v6 addObject:v14];
        }

        else
        {
          v16 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1005B7ECC(&buf, v29, v16);
          }
        }

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000608EC;
  v26[3] = &unk_10083F968;
  v27 = v6;
  v17 = v6;
  v18 = objc_retainBlock(v26);
  v19 = [v17 count];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000609AC;
  v24[3] = &unk_10083F990;
  v25 = v21;
  v20 = v21;
  [(PDPassLibrary *)self _usingSynchronousProxy:0 addPassesWithEnumerator:v18 estimatedNumberOfPasses:v19 osTransaction:v23 completionHandler:v24];
}

- (void)usingSynchronousProxy:(BOOL)a3 addPassesContainer:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PDOSTransactionCreate("PDPassLibrary");
  if (v8 && ![v8 unarchivePassesWithOptions:0 usingBlock:0])
  {
    v13 = v11;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100060BCC;
    v19[3] = &unk_10083F968;
    v14 = v8;
    v20 = v14;
    v15 = objc_retainBlock(v19);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100060C8C;
    v16[3] = &unk_10083F9E0;
    v17 = v14;
    v18 = v9;
    [(PDPassLibrary *)self _usingSynchronousProxy:v6 addPassesWithEnumerator:v15 estimatedNumberOfPasses:v13 osTransaction:v10 completionHandler:v16];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDPassLibrary (%p): could not extract passes from container for addPassesContainer:.", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 2);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 addPassIngestionPayloads:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PDOSTransactionCreate("PDPassLibrary");
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100060E28;
  v16[3] = &unk_10083F968;
  v17 = v7;
  v10 = v7;
  v11 = objc_retainBlock(v16);
  v12 = [v10 count];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100060F8C;
  v14[3] = &unk_10083F990;
  v15 = v8;
  v13 = v8;
  [(PDPassLibrary *)self _usingSynchronousProxy:0 addPassesWithEnumerator:v11 estimatedNumberOfPasses:v12 osTransaction:v9 completionHandler:v14];
}

- (void)_usingSynchronousProxy:(BOOL)a3 addPassesWithEnumerator:(id)a4 estimatedNumberOfPasses:(unint64_t)a5 osTransaction:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    PKShowAlertForWalletUninstalled();
    v13[2](v13, 2);
    goto LABEL_14;
  }

  if ([(PKEntitlementWhitelist *)self->_whitelist passesAddSilently])
  {
    v14 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061408;
    block[3] = &unk_10083FA08;
    block[4] = self;
    v40 = v11;
    v41 = v13;
    v39 = v12;
    dispatch_async(v14, block);

    v15 = v40;
LABEL_5:

    goto LABEL_14;
  }

  if ([(PDPassLibrary *)self _hasBackgroundAddPassesAuthorization])
  {
    v16 = [(PDPassLibrary *)self _rateLimiter];
    v17 = [(PDPassLibrary *)self remoteProcessBundleIdentifier];
    v18 = [v16 proposeOperation:0 bundleIdentifier:v17 tokens:a5];

    if (!v18)
    {
      v31 = PDDefaultQueue();
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100061624;
      v32[3] = &unk_10083FA30;
      v32[4] = self;
      v33 = v11;
      v34 = v13;
      dispatch_async(v31, v32);

      v15 = v33;
      goto LABEL_5;
    }
  }

  [(PDPassLibrary *)self remoteProcessIdentifier];
  v19 = PDLocalizedAppNameForPID();
  v42[0] = kCFUserNotificationAlternateButtonTitleKey;
  if (a5 == 1)
  {
    v20 = @"INGESTION_ADD";
  }

  else
  {
    v20 = @"INGESTION_ADD_N";
  }

  v21 = PKLocalizedString(&v20->isa);
  v43[0] = v21;
  v42[1] = kCFUserNotificationOtherButtonTitleKey;
  v22 = PKLocalizedString(@"REVIEW_BUTTON_TITLE");
  v43[1] = v22;
  v42[2] = kCFUserNotificationDefaultButtonTitleKey;
  v23 = PKLocalizedString(@"INGESTION_CANCEL");
  v43[2] = v23;
  v42[3] = kCFUserNotificationAlertHeaderKey;
  v24 = PKLocalizedString(@"ADD_PASSES_TITLE", @"%@%lu", v19, a5);
  v43[3] = v24;
  v43[4] = &__kCFBooleanTrue;
  v42[4] = PKUserNotificationDontDismissOnUnlock;
  v42[5] = PKUserNotificationAllowMenuButtonDismissal;
  v43[5] = &__kCFBooleanTrue;
  v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:6];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100061454;
  v35[3] = &unk_10083FA58;
  v35[4] = self;
  v36 = v13;
  v37 = v11;
  v26 = [PKUserNotificationAgent presentNotificationWithParameters:v25 responseHandler:v35];
  os_unfair_lock_lock(&self->_lock);
  userNotifications = self->_userNotifications;
  if (!userNotifications)
  {
    v28 = objc_alloc_init(NSMutableArray);
    v29 = self->_userNotifications;
    self->_userNotifications = v28;

    userNotifications = self->_userNotifications;
  }

  v30 = [NSValue valueWithPointer:v26];
  [(NSMutableArray *)userNotifications addObject:v30];

  os_unfair_lock_unlock(&self->_lock);
LABEL_14:
}

- (void)usingSynchronousProxy:(BOOL)a3 addUnsignedPassesWithDataFileDescriptors:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000618EC;
    block[3] = &unk_10083F418;
    v17 = v7;
    v18 = self;
    v19 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to add unsigned passes, but missing proper entitlement.", buf, 2u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v20 + 1) + 8 * v15) invalidate];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 2);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 provisionHomeKeyPassForSerialNumbers:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062054;
    block[3] = &unk_10083F418;
    v13 = v7;
    v14 = self;
    v15 = v8;
    dispatch_async(v9, block);

    v10 = v13;
LABEL_7:

    goto LABEL_8;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to provision HomeKeys for serialNumbers, but missing proper entitlement.", buf, 2u);
  }

  if (v8)
  {
    v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(v8 + 2))(v8, 0, v10);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)a3 availableHomeKeyPassesWithCompletionHandler:(id)a4
{
  v5 = a4;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v6 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000632A8;
    block[3] = &unk_10083D648;
    v10 = v5;
    dispatch_async(v6, block);

    v7 = v10;
LABEL_7:

    goto LABEL_8;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to fetch available HomeKeys, but missing proper entitlement.", buf, 2u);
  }

  if (v5)
  {
    v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(v5 + 2))(v5, 0, v7);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)a3 replaceUnsignedPassWithDataFileDescriptor:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063A44;
    block[3] = &unk_10083F418;
    v12 = v7;
    v13 = self;
    v14 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to replace unsigned passes, but missing proper entitlement.", buf, 2u);
    }

    [v7 invalidate];
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 containsPassWithPassTypeIdentifier:(id)a4 serialNumber:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v12 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100063DF0;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    dispatch_async(v12, v14);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to call containsPassWithPassTypeIdentifier, but missing proper entitlement.", buf, 2u);
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 enableExpressForPassWithPassTypeIdentifier:(id)a4 serialNumber:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]&& ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    v12 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100063FC4;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    dispatch_async(v12, v14);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to call enableExpressForPassWithPassTypeIdentifier, but missing proper entitlements.", buf, 2u);
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

- (void)removePassWithUniqueID:(id)a3 diagnosticReason:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000643EC;
  v15[3] = &unk_10083E468;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)removePassesWithUniqueIDs:(id)a3 diagnosticReason:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064598;
  v15[3] = &unk_10083E468;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)recoverPassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000647F4;
  block[3] = &unk_10083D320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)archivePassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PKManualArchiveEnabled())
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064940;
    block[3] = &unk_10083D320;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(v8, block);
  }
}

- (void)removePassesOfType:(unint64_t)a3 withDiagnosticReason:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = PDDefaultQueue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064A98;
  v13[3] = &unk_10083F918;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)resetApplePayWithDiagnosticReason:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064BF8;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)updateObjectWithUniqueIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D90;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)personalizePassWithUniqueIdentifier:(id)a3 contact:(id)a4 personalizationToken:(id)a5 requiredPersonalizationFields:(unint64_t)a6 personalizationSource:(unint64_t)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v18 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064F20;
    block[3] = &unk_10083FCD8;
    block[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v24 = a6;
    v25 = a7;
    v23 = v17;
    dispatch_async(v18, block);
  }

  else if (v17)
  {
    (*(v17 + 2))(v17, 0);
  }
}

- (void)recomputeRelevantPassesWithSearchMode:(int64_t)a3
{
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006500C;
    v6[3] = &unk_10083D700;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(v5, v6);
  }
}

- (void)fetchHasCandidatePasses:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100065154;
    v7[3] = &unk_10083C820;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)fetchCurrentRelevantPassInfo:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100065284;
    v6[3] = &unk_10083C820;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)migrateDataWithHandler:(id)a3 didRestoreFromBackup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataMigrationRequestedWithPassLibrary:self didRestoreFromBackup:v4];

    objc_autoreleasePoolPop(v7);
    v6[2](v6, 1);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7F0C();
    }

    v6[2](v6, 0);
  }
}

- (void)setSecureElement:(id)a3
{
  v5 = a3;
  if (self->_secureElement != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_secureElement, a3);
    v5 = v6;
  }
}

- (void)signData:(id)a3 forPassUniqueID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006557C;
  v15[3] = &unk_10083FD50;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)usingSynchronousProxy:(BOOL)a3 createFidoKeyForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 challenge:(id)a6 externalizedAuth:(id)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v18 = PDDefaultQueue();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100065DB4;
    v21[3] = &unk_10083DD98;
    v21[4] = self;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    dispatch_async(v18, v21);
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to create FIDO key, but missing proper entitlement.", buf, 2u);
    }

    if (v17)
    {
      v20 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v17 + 2))(v17, 0, 0, 0, v20);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 checkFidoKeyPresenceForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 fidoKeyHash:(id)a6 completion:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v15 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065F64;
    block[3] = &unk_10083FD78;
    block[4] = self;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempting to check for FIDO key, but missing proper entitlement.", buf, 2u);
    }

    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 signWithFidoKeyForRelyingParty:(id)a4 relyingPartyAccountHash:(id)a5 fidoKeyHash:(id)a6 challenge:(id)a7 publicKeyIdentifier:(id)a8 externalizedAuth:(id)a9 completion:(id)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v22 = PDDefaultQueue();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000661B0;
    v25[3] = &unk_10083FDA0;
    v25[4] = self;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    dispatch_async(v22, v25);
  }

  else
  {
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Attempting to sign FIDO challenge, but missing proper entitlement.", buf, 2u);
    }

    if (v21)
    {
      v24 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v21 + 2))(v21, 0, v24);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 generateSEEncryptionCertificateForSubCredentialId:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006636C;
    block[3] = &unk_10083D320;
    block[4] = self;
    v13 = v7;
    v14 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to generate SE encryption cert, but missing proper entitlement.", buf, 2u);
    }

    if (v8)
    {
      v11 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v8 + 2))(v8, 0, v11);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 generateISOEncryptionCertificateForSubCredentialId:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066504;
    block[3] = &unk_10083D320;
    block[4] = self;
    v13 = v7;
    v14 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to generateISO encryption cert, but missing proper entitlement.", buf, 2u);
    }

    if (v8)
    {
      v11 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v8 + 2))(v8, 0, 0, v11);
    }
  }
}

- (void)deleteKeyMaterialForSubCredentialId:(id)a3
{
  v4 = a3;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting key material for subcredential id: %@", buf, 0xCu);
    }

    v6 = PDDefaultQueue();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000666B0;
    v8[3] = &unk_10083C420;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to delete sub credential key material, but missing proper entitlement.", buf, 2u);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 addISO18013BlobsFromCredentials:(id)a4 cardType:(int64_t)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000668CC;
    v14[3] = &unk_10083F918;
    v14[4] = self;
    v15 = v9;
    v17 = a5;
    v16 = v10;
    dispatch_async(v11, v14);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to addISO18013BlobsFromCredentials, but missing proper entitlement.", buf, 2u);
    }

    if (v10)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v10 + 2))(v10, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 addISO18013Blobs:(id)a4 cardType:(int64_t)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100066A6C;
    v14[3] = &unk_10083F918;
    v14[4] = self;
    v15 = v9;
    v17 = a5;
    v16 = v10;
    dispatch_async(v11, v14);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to addISO18013Blobs, but missing proper entitlement.", buf, 2u);
    }

    if (v10)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v10 + 2))(v10, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 longTermPrivacyKeyForCredentialGroupIdentifier:(id)a4 reuseExisting:(BOOL)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100066C10;
    v14[3] = &unk_10083E128;
    v14[4] = self;
    v15 = v9;
    v17 = a5;
    v16 = v10;
    dispatch_async(v11, v14);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to generateLongTermPrivacyKeyForCredentialGroupIdentifier, but missing proper entitlement.", buf, 2u);
    }

    if (v10)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v10 + 2))(v10, 0, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 generateAuxiliaryCapabilitiesForRequirements:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GenerateAuxiliaryCapabilitiesForRequirements starting...", buf, 2u);
    }

    v10 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066DF0;
    block[3] = &unk_10083D320;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to generateLongTermPrivacyKeyForCredentialGroupIdentifier, but missing proper entitlement.", buf, 2u);
    }

    if (v8)
    {
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v8 + 2))(v8, 0, v12);
    }
  }
}

- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100067108;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = v8;
    v15 = a4;
    v14 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call to signData:signatureEntanglementMode:withCompletionHandler: missing proper entitlements", buf, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)a3
{
  if (a3)
  {
    v5 = a3;
    (*(a3 + 2))(v5, [(PDPassLibrary *)self _isWatchIssuerAppProvisioningSupported]);
  }
}

- (BOOL)_isWatchIssuerAppProvisioningSupported
{
  v2 = PKIsPairedWithWatch();
  if (v2)
  {
    v3 = objc_alloc_init(off_10091E2A0());
    v4 = [v3 isIssuerAppProvisioningSupported];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)requestStateOfRelevancyPresentmentOfType:(unint64_t)a3 containingPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  whitelist = self->_whitelist;
  v10 = a5;
  if ([(PKEntitlementWhitelist *)whitelist passesAllAccess])
  {
    v10[2](v10, [(_PDSystemPassRelevancyCoordinator *)self->_relevancyCoordinator stateOfPresentmentOfType:a3 containingPassUniqueIdentifier:v8]);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client missing proper entitlements", v12, 2u);
    }

    v10[2](v10, 0);
  }
}

- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)a3 containingPassUniqueIdentifier:(id)a4 newState:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v12 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067500;
    block[3] = &unk_10083FE18;
    block[4] = self;
    v19 = a3;
    v17 = v10;
    v20 = a5;
    v18 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client missing proper entitlements", v15, 2u);
    }

    v14 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(v11 + 2))(v11, 0, v14);
  }
}

- (void)backupMetadataWithHandler:(id)a3
{
  v4 = a3;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preparing backup metadata", buf, 2u);
    }

    v6 = [(PDDefaultPassManager *)self->_defaultPassManager defaultPaymentPassIdentifier];
    v7 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v6];
    v8 = [v7 paymentPass];

    v9 = [v8 serialNumber];
    IsCurrentlyDeletedByUser = PKPassbookIsCurrentlyDeletedByUser();
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = IsCurrentlyDeletedByUser == 0;
    }

    if (v11)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Backup skipping - no data to backup was present to backup", buf, 2u);
      }

      v18 = 0;
      v13 = v5;
      goto LABEL_28;
    }

    v12 = IsCurrentlyDeletedByUser;
    v13 = [NSNumber numberWithUnsignedInteger:2];
    v14 = [NSMutableDictionary dictionaryWithObject:v13 forKey:@"backupDataVersionNumberKey"];
    v15 = v14;
    if (v9)
    {
      [v14 setObject:v9 forKeyedSubscript:@"backupDataDefaultPaymentPassSerialNumberKey"];
      if (v12)
      {
LABEL_10:
        v16 = [NSNumber numberWithBool:1];
        [v15 setObject:v16 forKeyedSubscript:@"backupDataPassbookDeletedKey"];
LABEL_23:

        v20 = 0;
        v18 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v20];
        v19 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = v18;
            v23 = 2112;
            v24 = v19;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: unable to encode backup data (%@) with error: %@", buf, 0x16u);
          }
        }

LABEL_28:
        if (v4)
        {
          v4[2](v4, v18);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Backup metadata completed", buf, 2u);
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Backup skipping default payment pass serial number - none found", buf, 2u);
      }

      if (v12)
      {
        goto LABEL_10;
      }
    }

    v16 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Backup skipping passbook deleted - Passbook has not been deleted", buf, 2u);
      v16 = v5;
    }

    goto LABEL_23;
  }

  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1005B7F40();
  }

  if (v4)
  {
    v4[2](v4, 0);
  }

LABEL_33:
}

- (void)setBackupMetadata:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    if (v6 && [v6 length])
    {
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
      v19 = 0;
      v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v6 error:&v19];
      v12 = v19;

      if (!v12 && v11 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v13 = v11;
        v14 = [v13 objectForKey:@"backupDataVersionNumberKey"];
        v15 = [v14 integerValue];
        if (v15 == 1)
        {
          [(PDPassLibrary *)self _setBackupDefaultPaymentPassState:v13];
        }

        else if (v15 == 2)
        {
          [(PDPassLibrary *)self _setBackupDefaultPaymentPassState:v13];
          [(PDPassLibrary *)self _setBackupPassbookDeletedState:v13];
        }

        else
        {
          v18 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error: Not able to decode metadata contents as client does not know about version number: %@", buf, 0xCu);
          }
        }

        if (v7)
        {
          v7[2](v7);
        }
      }

      else
      {
        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error: unable to decode backup data with error: %@", buf, 0xCu);
        }

        if (v7)
        {
          v7[2](v7);
        }
      }

      goto LABEL_28;
    }

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error: No data returned in backup metadata call", buf, 2u);
    }
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7F74();
    }
  }

  if (v7)
  {
    v7[2](v7);
  }

LABEL_28:
}

- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)a3 handler:(id)a4
{
  v5 = a4;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    PDWritePassdPreferencesToSafeHaven();
    if (v5)
    {
LABEL_3:
      v5[2](v5);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "passd was asked to prepare for Buddy safe-haven by an unentitled process. Refusing.", v7, 2u);
    }

    if (v5)
    {
      goto LABEL_3;
    }
  }
}

- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)a3 destinationFileHandles:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained prepareForBackupRestoreWithRequiredFileURLs:v8 destinationFileHandles:v9 handler:v10];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "passd was asked to prepare for Buddy safe-haven by an unentitled process. Refusing.", v13, 2u);
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (void)_setBackupDefaultPaymentPassState:(id)a3
{
  v3 = [a3 PKStringForKey:@"backupDataDefaultPaymentPassSerialNumberKey"];
  if (v3)
  {
    PKSetLastBackedUpDefaultPaymentPassSerialNumber();
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "Backup matadata contained defaultPaymentPassSerialNumber: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "Backup matadata did not contain defaultPaymentPassSerialNumber";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }
}

- (void)_setBackupPassbookDeletedState:(id)a3
{
  v3 = [a3 PKNumberForKey:@"backupDataPassbookDeletedKey"];
  v4 = v3;
  if (v3)
  {
    [v3 BOOLValue];
    PKSetLastBackupPassbookWasDeleted();
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      v6 = "Backup matadata contained passbook deleted: %@";
      v7 = v5;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "Backup matadata did not contain passbook deleted";
      v7 = v5;
      v8 = 2;
      goto LABEL_6;
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 canAddSecureElementPassWithConfiguration:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_retainBlock(v9);
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "canAddSecureElementPassWithConfiguration: called with configuration: %@ completion: %@", buf, 0x16u);
  }

  if (v9)
  {
    if (v8)
    {
      [v8 updateAllowManagedAppleIDWithEntitlements:self->_whitelist];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000682C4;
      v18[3] = &unk_10083FE68;
      v19 = v8;
      v20 = self;
      v21 = v9;
      v22 = v6;
      v12 = objc_retainBlock(v18);
      v13 = v12;
      if (v6)
      {
        (v12[2])(v12);
      }

      else
      {
        v15 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100068644;
        block[3] = &unk_10083D648;
        v17 = v13;
        dispatch_async(v15, block);
      }

      v14 = v19;
    }

    else
    {
      v14 = [NSError errorWithDomain:PKPassKitErrorDomain code:1 userInfo:0];
      (*(v9 + 2))(v9, 0, v14);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 canAddCarKeyPassWithConfiguration:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v6)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "canAddCarKeyPassWithConfiguration: synchronous not supported.", buf, 2u);
      }
    }

    else
    {
      v11 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006877C;
      block[3] = &unk_10083D320;
      block[4] = self;
      v13 = v8;
      v14 = v9;
      dispatch_async(v11, block);
    }
  }
}

- (void)canAddPushablePassWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning])
    {
      [(PDPushProvisioningManager *)self->_pushProvisioningManager isPushProvisioningSupportedForConfiguration:v6 completion:v7];
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client is missing entitlement to support sharing secure element passes.", v10, 2u);
      }

      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }
}

- (void)canAddClassicApplePayCredentialWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = objc_alloc_init(PKProvisioningRequirementOracle);
    v9 = [v8 requirementsForAddSecureElementPassConfiguration:v7];

    v10 = [v8 recoverableRequirements];
    v11 = [v9 requirementsByRemovingRequirements:v10];

    provisioningRequirementsChecker = self->_provisioningRequirementsChecker;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000689C4;
    v13[3] = &unk_10083FE90;
    v13[4] = self;
    v14 = v6;
    [(PDProvisioningRequirementsChecker *)provisioningRequirementsChecker meetsWithRequirementsContainer:v11 completion:v13];
  }
}

- (void)canAddCarKeyPassWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 allowManagedAppleID] != 1)
    {
      v8 = +[PKAppleAccountManager sharedInstance];
      v9 = [v8 appleAccountInformation];
      v10 = [v9 isManagedAppleAccount];

      if (v10)
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v12 = "Apple account is MAID and app is missing MAID entitlment";
          v13 = &v16;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) == 0 && ![(PKEntitlementWhitelist *)self->_whitelist secureElementPassProvisioning])
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "Client is missing entitlement to add a car key";
        v13 = &v15;
        goto LABEL_11;
      }

LABEL_12:

      v14 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v7 + 2))(v7, 0, 0, v14);

      goto LABEL_13;
    }

    [(PDCarKeyRequirementsChecker *)self->_carKeyRequirementsChecker canAddCarKeyPassWithConfiguration:v6 completion:v7];
  }

LABEL_13:
}

- (void)canAddHomeKeyWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100068FF0;
    v24[3] = &unk_10083FEB8;
    v9 = v7;
    v25 = v9;
    v10 = objc_retainBlock(v24);
    v11 = +[PKAppleAccountManager sharedInstance];
    v12 = [v11 appleAccountInformation];
    if ([v12 isManagedAppleAccount])
    {
      v13 = [(PKEntitlementWhitelist *)self->_whitelist secureElementPassProvisioningForMAIDs];

      if ((v13 & 1) == 0)
      {
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Apple account is MAID and app is missing MAID entitlment", buf, 2u);
        }

        v15 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
        (v10[2])(v10, 0, @"missing proper entitlement", v15);

        goto LABEL_24;
      }
    }

    else
    {
    }

    if (([(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (PKIsPhone() & 1) != 0 || (PKIsWatch())
      {
        if (PKNearFieldSupportsSimultaneousRequestRouting())
        {
          if (+[PKWalletVisibility isWalletRestricted])
          {
            (v10[2])(v10, 4, @"wallet is restricted", 0);
          }

          else if (PKIsBeneficiaryAccount())
          {
            (v10[2])(v10, 6, @"is beneficiary account", 0);
          }

          else if (PKPasscodeEnabled())
          {
            v16 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
            v17 = [v16 _appleAccountInformation];

            if ([v17 aidaAccountAvailable])
            {
              v18 = PDDefaultQueue();
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 3221225472;
              v19[2] = sub_100069168;
              v19[3] = &unk_10083FFA0;
              v19[4] = self;
              v21 = v10;
              v20 = v6;
              v22 = v9;
              dispatch_async(v18, v19);
            }

            else
            {
              (v10[2])(v10, 8, @"no icloud", 0);
            }
          }

          else
          {
            (v10[2])(v10, 7, @"passcode not set", 0);
          }
        }

        else
        {
          (v10[2])(v10, 2, @"unsupported device", 0);
        }
      }

      else
      {
        (v10[2])(v10, 1, @"unsupported device family", 0);
      }
    }

    else
    {
      (v10[2])(v10, 0, @"missing proper entitlement", 0);
    }

LABEL_24:
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    provisioningRequirementsChecker = self->_provisioningRequirementsChecker;
    if (provisioningRequirementsChecker)
    {
      if (v6)
      {
        [(PDProvisioningRequirementsChecker *)provisioningRequirementsChecker meetsWithRequirementsContainer:v8 completion:v9];
      }

      else
      {
        v13 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000699D4;
        block[3] = &unk_10083D320;
        block[4] = self;
        v15 = v8;
        v16 = v9;
        dispatch_async(v13, block);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
      }

      (*(v9 + 2))(v9, 1, 0);
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to call meetsProvisioningRequirements, but missing proper entitlement.", buf, 2u);
    }

    (*(v9 + 2))(v9, 0, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 generateTransactionKeyWithReaderIdentifier:(id)a4 readerPublicKey:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned];
  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GenerateTransactionKeyWithReaderIdentifier starting...", buf, 2u);
    }

    v15 = PDDefaultQueue();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100069BA4;
    v16[3] = &unk_10083E468;
    v16[4] = self;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    dispatch_async(v15, v16);
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to call generateTransactionKeyWithReaderIdentifier, but missing proper entitlement.", buf, 2u);
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0, 0, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)a4 homeIdentifier:(id)a5 fromUnifiedAccessDescriptor:(id)a6 andAliroDescriptor:(id)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned];
  v19 = PKLogFacilityTypeGetObject();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ConfigureHomeAuxiliaryCapabilitiesForSerialNumber starting...", buf, 2u);
    }

    v21 = PDDefaultQueue();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006A08C;
    v22[3] = &unk_10083DD98;
    v22[4] = self;
    v23 = v13;
    v24 = v15;
    v25 = v16;
    v26 = v14;
    v27 = v17;
    dispatch_async(v21, v22);
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to call configureHomeAuxiliaryCapabilitiesForSerialNumber, but missing proper entitlement.", buf, 2u);
    }

    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 fetchHomePaymentApplicationsForSerialNumber:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v9 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006AF38;
      block[3] = &unk_10083D320;
      block[4] = self;
      v12 = v7;
      v13 = v8;
      dispatch_async(v9, block);
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7FA8();
      }

      (*(v8 + 2))(v8, 0, 0);
    }
  }
}

- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning])
  {
    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006B9A4;
    v11[3] = &unk_1008400D0;
    v11[4] = self;
    v13 = a3;
    v12 = v6;
    [(PDDeviceRegistrationServiceCoordinator *)deviceRegistrationServiceCoordinator performDeviceRegistrationForReason:@"push provisioning nonces" brokerURL:0 action:1 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v11];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPassLibrary pushProvisioningNoncesWithCredentialCount:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    if (v6)
    {
      v14 = NSDebugDescriptionErrorKey;
      v15 = @"client is not entitled";
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:v9];
      (*(v6 + 2))(v6, 0, v10);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 configurePushProvisioningConfiguration:(id)a4 completion:(id)a5
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006BB54;
  v9[3] = &unk_1008400F8;
  v10 = a5;
  v8 = v10;
  [(PDPassLibrary *)self usingSynchronousProxy:v6 configurePushProvisioningConfigurationV2:a4 completion:v9];
}

- (void)usingSynchronousProxy:(BOOL)a3 configurePushProvisioningConfigurationV2:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v9 = [v7 secureElementPassConfiguration];
      [v9 updateAllowManagedAppleIDWithEntitlements:self->_whitelist];

      [(PDPushProvisioningManager *)self->_pushProvisioningManager configurePushProvisioningConfiguration:v7 completion:v8];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[PDPassLibrary usingSynchronousProxy:configurePushProvisioningConfigurationV2:completion:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client is missing shareable entitled for method: %s", buf, 0xCu);
      }

      v13 = NSDebugDescriptionErrorKey;
      v14 = @"client is not entitled";
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:v11];
      v8[2](v8, 0, v12);
    }
  }
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
    {
      [(PDAppletSubcredentialManager *)self->_subcredentialManager startVehicleConnectionSessionWithPassUniqueIdentifier:v6 completion:v7];
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[PDPassLibrary startVehicleConnectionSessionWithPassUniqueIdentifier:completion:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client is missing shareable entitled for method: %s", &v9, 0xCu);
      }

      v7[2](v7, 0);
    }
  }
}

- (void)sendRKEPassThroughMessage:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
  {
    [(PDAppletSubcredentialManager *)self->_subcredentialManager sendRKEPassThroughData:v8 forSessionIdentifier:v9 withCompletion:v10];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDPassLibrary sendRKEPassThroughMessage:forSessionIdentifier:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client is missing shareable entitled for method: %s", buf, 0xCu);
    }

    v14 = NSDebugDescriptionErrorKey;
    v15 = @"client is not entitled";
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:v12];
    v10[2](v10, 0, v13);
  }
}

- (void)invalidateVehicleConnectionSessionIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
    {
      [(PDAppletSubcredentialManager *)self->_subcredentialManager invalidateVehicleConnectionSessionForIdentifier:v4];
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[PDPassLibrary invalidateVehicleConnectionSessionIdentifier:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is missing shareable entitled for method: %s", &v6, 0xCu);
      }
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 requestIssuerBoundPassesWithBindingWithData:(id)a4 automaticallyProvision:(BOOL)a5 withCompletion:(id)a6
{
  v9 = a6;
  v10 = v9;
  if (v9)
  {
    issuerBindingManager = self->_issuerBindingManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006C208;
    v12[3] = &unk_100840148;
    v14 = a5;
    v12[4] = self;
    v13 = v9;
    [(PDIssuerBindingManager *)issuerBindingManager requestIssuerBoundPassesWithBindingWithData:a4 withCompletion:v12];
  }
}

- (void)presentIssuerBindingFlowForIssuerData:(id)a3 signature:(id)a4 orientation:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      sub_1005CBB58(self->_remoteInterfacePresenter, a3, a4, a5, 0);
    }
  }
}

- (BOOL)_hasBackgroundAddPassesAuthorization
{
  v2 = [(PDPassLibrary *)self connection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [PKTCCCoordinator authorizationStatusForCapability:0 auditToken:v6];

  return v4 == 1;
}

- (id)_rateLimiter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C478;
  block[3] = &unk_10083C470;
  block[4] = self;
  if (qword_1009241E0 != -1)
  {
    dispatch_once(&qword_1009241E0, block);
  }

  return qword_1009241D8;
}

- (void)contactlessInterfaceDidPresentFromSource:(int64_t)a3
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation])
  {
    v5 = [(PDPassLibrary *)self remoteObjectProxy];
    [v5 contactlessInterfaceDidPresentFromSource:a3];
  }
}

- (void)contactlessInterfaceDidDismissFromSource:(int64_t)a3
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation])
  {
    v5 = [(PDPassLibrary *)self remoteObjectProxy];
    [v5 contactlessInterfaceDidDismissFromSource:a3];
  }
}

- (void)sessionDidChangeConnectionStatus:(int64_t)a3
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess])
  {
    v5 = [(PDPassLibrary *)self remoteObjectProxy];
    [v5 vehicleConnectionDidUpdateConnectionState:a3];
  }
}

- (void)sessionDidReceiveData:(id)a3
{
  v5 = a3;
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess])
  {
    v4 = [(PDPassLibrary *)self remoteObjectProxy];
    [v4 vehicleConnectionDidRecievePassthroughData:v5];
  }
}

- (void)issuerBindingFlowAuthenticationPerformed
{
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    v3 = [(PDPassLibrary *)self remoteObjectProxy];
    [v3 issuerBindingAuthenticationOccured];
  }
}

- (id)_sanitizePassIfNeeded:(id)a3
{
  v4 = a3;
  if ([(PDPassLibrary *)self willSanitizePasses])
  {
    v5 = [v4 paymentPass];
    [v5 sanitizePaymentApplications];
  }

  return v4;
}

- (void)_sanitizePasses:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v9 = [(PDPassLibrary *)self _sanitizePassIfNeeded:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_entitlementFilteredPasses:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    [(PDPassLibrary *)self _sanitizePasses:v4];
    v5 = v4;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006C9A8;
    v8[3] = &unk_100840170;
    v8[4] = self;
    v5 = [v4 objectsPassingTest:v8];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_entitledForObject:(id)a3 forActions:(unint64_t)a4
{
  v6 = a3;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v9 = [v8 passTypeIdentifier];
      v10 = [v8 teamID];
      v11 = [v8 associatedPassTypeIdentifiers];
      if ([v8 passType] == 1)
      {
        v12 = [v8 associatedApplicationIdentifiers];
      }

      else
      {
        v12 = 0;
      }

      v7 = [(PKEntitlementWhitelist *)self->_whitelist entitledToPerformPassAction:a4 passTypeID:v9 teamID:v10 associatedPassTypeIdentifiers:v11 associatedApplicationIdentifiers:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_entitledForPassType:(unint64_t)a3 uniqueIdentifier:(id)a4 actions:(unint64_t)a5
{
  v8 = a4;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    databaseManager = self->_databaseManager;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v11 = [(PDDatabaseManager *)databaseManager getPassTypeID:&v20 teamID:&v19 associatedPassTypeIdentifiers:&v18 associatedApplicationIdentifiers:&v17 forUniqueID:v8];
    v12 = v20;
    v13 = v19;
    v14 = v18;
    v15 = v17;
    if (v11 && (a3 == -1 || PKPassTypeForPassTypeIdentifier() == a3))
    {
      v9 = [(PKEntitlementWhitelist *)self->_whitelist entitledToPerformPassAction:a5 passTypeID:v12 teamID:v13 associatedPassTypeIdentifiers:v14 associatedApplicationIdentifiers:v15];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_getPassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CD30;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

- (void)_addPasses:(id)a3 withCompletion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006CE00;
  v8[3] = &unk_10083F968;
  v9 = a3;
  v6 = v9;
  v7 = a4;
  [(PDPassLibrary *)self _addPassesWithEnumerator:v8];
  v7[2](v7, 0);
}

- (unint64_t)_addPassesWithEnumerator:(id)a3 firstPassUniqueID:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_autoreleasePoolPush();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006D038;
  v12[3] = &unk_100840198;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = &v17;
  v12[7] = a4;
  v6[2](v6, v12);
  objc_autoreleasePoolPop(v7);
  if (*(v14 + 24) == 1)
  {
    v8 = [PKTPSDiscoverabilitySignal alloc];
    v9 = [v8 initWithIdentifier:PKTPSDiscoverabilitySignalIdentifierPass bundleIdentifier:PKServiceBundleIdentifier context:PKTPSDiscoverabilitySignalContextPassAdded];
    [v9 donateSignalWithCompletion:&stru_1008401B8];
  }

  v10 = v18[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (BOOL)_writePass:(id)a3 error:(id *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = a3;
  v13 = v5;
  v14 = a4;
  PKTimeToPerformBlock();
  if (*(v16 + 24) == 1)
  {
    v7 = v6;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 uniqueID];
      *buf = 138543618;
      v20 = v9;
      v21 = 2050;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPassLibrary: wrote pass %{public}@ in %{public}f seconds", buf, 0x16u);
    }

    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v10 & 1;
}

- (BOOL)_writePass:(id)a3 withSettings:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(PDPassLibrary *)self _writePass:v8 error:a5];
  if (v9)
  {
    databaseManager = self->_databaseManager;
    v11 = [v8 uniqueID];
    [(PDDatabaseManager *)databaseManager updateSettings:a4 forPassWithUniqueIdentifier:v11];
  }

  return v9;
}

- (void)getDiffForPassUpdateUserNotificationWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    userNotificationManager = self->_userNotificationManager;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006D6D0;
    v10[3] = &unk_100840208;
    v11 = v7;
    [(PDUserNotificationManager *)userNotificationManager userNotificationWithIdentifier:v6 completion:v10];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1005B8190();
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)introduceDatabaseIntegrityProblem
{
  v3 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D7B8;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateIngestedDate:(id)a3 forPassWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D90C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)noteAppleAccountChanged:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006DAE8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)noteACAccountChanged:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006E09C;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)shuffleGroups:(int)a3
{
  v5 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E218;
  v6[3] = &unk_100840230;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)issueWalletUserNotificationWithTitle:(id)a3 message:(id)a4 forPassUniqueIdentifier:(id)a5 customActionRoute:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v14 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E3B4;
    block[3] = &unk_10083DE38;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = self;
    dispatch_async(v14, block);
  }
}

- (void)pendingUserNotificationsWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E520;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

- (void)updateDate:(id)a3 forPendingNotificationWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E674;
    block[3] = &unk_10083C4C0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

- (void)insertInternalWalletMessageWithContent:(id)a3 badged:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v10 = PDDefaultQueue();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006E784;
    v11[3] = &unk_10083E128;
    v11[4] = self;
    v12 = v8;
    v14 = a4;
    v13 = v9;
    dispatch_async(v10, v11);
  }
}

- (void)deleteInternalWalletMessageWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006E8BC;
    v6[3] = &unk_10083C420;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)deleteAllInternalWalletMessages
{
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v3 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E96C;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006EA44;
    v6[3] = &unk_10083C420;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)removeAllScheduledActivities
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = PDScheduledActivityClients();
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = PDScheduledActivitiesForClient();
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v13;
          do
          {
            v11 = 0;
            do
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v7);
              }

              PDScheduledActivityRemove();
              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }
}

- (void)forceImmediateRevocationCheck
{
  v3 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006ECCC;
  v5[3] = &unk_10083C470;
  v5[4] = self;
  v4 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v7 = v4;
  dispatch_async(v3, block);
}

- (void)spotlightReindexAllContentWithAcknowledgement:(id)a3
{
  v4 = a3;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006ED90;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)spotlightReindexContentWithIdentifiers:(id)a3 acknowledgement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF1C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)spotlightResetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F088;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)spotlightStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F2E0;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)exportableManifestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PDHeavyQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F4A4;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)exportableCardEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FF78;
  block[3] = &unk_10083F418;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (PDPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end