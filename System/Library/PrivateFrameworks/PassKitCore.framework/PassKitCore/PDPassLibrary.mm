@interface PDPassLibrary
- (BOOL)_entitledForObject:(id)object forActions:(unint64_t)actions;
- (BOOL)_entitledForPassType:(unint64_t)type uniqueIdentifier:(id)identifier actions:(unint64_t)actions;
- (BOOL)_hasBackgroundAddPassesAuthorization;
- (BOOL)_hasPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities paymentApplicationStates:(id)states;
- (BOOL)_isConfigurationValid:(id)valid;
- (BOOL)_isWatchIssuerAppProvisioningSupported;
- (BOOL)_writePass:(id)pass error:(id *)error;
- (BOOL)_writePass:(id)pass withSettings:(unint64_t)settings error:(id *)error;
- (BOOL)willSanitizePasses;
- (PDPassLibrary)initWithConnection:(id)connection server:(id)server;
- (PDPassLibraryDelegate)delegate;
- (id)_entitlementFilteredPasses:(id)passes;
- (id)_filteredPasses:(id)passes forApplicationIdentifier:(id)identifier;
- (id)_filteredPasses:(id)passes forWebDomain:(id)domain;
- (id)_inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request;
- (id)_inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request;
- (id)_rateLimiter;
- (id)_sanitizePassIfNeeded:(id)needed;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (unint64_t)_addPassesWithEnumerator:(id)enumerator firstPassUniqueID:(id *)d;
- (void)_addPasses:(id)passes withCompletion:(id)completion;
- (void)_getEncryptedServiceProviderDataForSecureElementPass:(id)pass publicKey:(id)key scheme:(id)scheme completion:(id)completion;
- (void)_getPassWithUniqueID:(id)d handler:(id)handler;
- (void)_getServiceProviderDataForPass:(id)pass completion:(id)completion;
- (void)_hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request handler:(id)self0;
- (void)_passesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request handler:(id)self0;
- (void)_paymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes webPayment:(BOOL)payment paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)self0;
- (void)_queue_replacePass:(id)pass handler:(id)handler;
- (void)_sanitizePasses:(id)passes;
- (void)_setBackupDefaultPaymentPassState:(id)state;
- (void)_setBackupPassbookDeletedState:(id)state;
- (void)_usingSynchronousProxy:(BOOL)proxy addPassesWithEnumerator:(id)enumerator estimatedNumberOfPasses:(unint64_t)passes osTransaction:(id)transaction completionHandler:(id)handler;
- (void)activated;
- (void)addPassesWithData:(id)data handler:(id)handler;
- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address handler:(id)handler;
- (void)archivePassWithUniqueID:(id)d handler:(id)handler;
- (void)backupMetadataWithHandler:(id)handler;
- (void)badgeCountItemsWithCompletion:(id)completion;
- (void)canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)canAddClassicApplePayCredentialWithConfiguration:(id)configuration completion:(id)completion;
- (void)canAddFelicaPassWithHandler:(id)handler;
- (void)canAddHomeKeyWithConfiguration:(id)configuration completion:(id)completion;
- (void)canAddPassesOfType:(unint64_t)type handler:(id)handler;
- (void)canAddPushablePassWithConfiguration:(id)configuration completion:(id)completion;
- (void)canPresentPaymentRequest:(id)request completion:(id)completion;
- (void)checkForTransitNotification;
- (void)clearConnectionReference;
- (void)contactlessInterfaceDidDismissFromSource:(int64_t)source;
- (void)contactlessInterfaceDidPresentFromSource:(int64_t)source;
- (void)countPassesOfType:(unint64_t)type handler:(id)handler;
- (void)dealloc;
- (void)defaultPaymentPassWithHandler:(id)handler;
- (void)deleteAllInternalWalletMessages;
- (void)deleteInternalWalletMessageWithIdentifier:(id)identifier;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)enabledValueAddedServicePassesWithHandler:(id)handler;
- (void)exportableCardEntry:(id)entry completion:(id)completion;
- (void)exportableManifestWithCompletion:(id)completion;
- (void)expressTransitPassWithHandler:(id)handler;
- (void)fetchCurrentRelevantPassInfo:(id)info;
- (void)fetchHasCandidatePasses:(id)passes;
- (void)flightSubscriptionsWithCompletion:(id)completion;
- (void)flightsWithScheduledDepartureFromStartDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)forceImmediateRevocationCheck;
- (void)getArchivedObjectWithUniqueID:(id)d handler:(id)handler;
- (void)getDataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier handler:(id)handler;
- (void)getDataForBundleResources:(id)resources objectUniqueIdentifier:(id)identifier handler:(id)handler;
- (void)getDiffForPassUpdateUserNotificationWithIdentifier:(id)identifier handler:(id)handler;
- (void)getIdentityPassesOfTypes:(id)types handler:(id)handler;
- (void)getImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix handler:(id)handler;
- (void)getManifestHashAndSettingsForPassTypeID:(id)d serialNumber:(id)number handler:(id)handler;
- (void)getMetadataForFieldWithProperties:(id)properties handler:(id)handler;
- (void)getPassUniqueIDsForAssociatedApplicationIdentifier:(id)identifier handler:(id)handler;
- (void)getPassWithPassTypeID:(id)d serialNumber:(id)number handler:(id)handler;
- (void)getPassWithUniqueID:(id)d handler:(id)handler;
- (void)getPassesOfCardType:(int64_t)type handler:(id)handler;
- (void)getPassesOfType:(unint64_t)type handler:(id)handler;
- (void)getPassesWithHandler:(id)handler;
- (void)getPassesWithReaderIdentifier:(id)identifier handler:(id)handler;
- (void)getPassesWithSearchableTransactions:(id)transactions;
- (void)getPassesWithUniqueIdentifiers:(id)identifiers handler:(id)handler;
- (void)hasInAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)hasPassWithUniqueID:(id)d handler:(id)handler;
- (void)hasPassesInExpiredSectionWithHandler:(id)handler;
- (void)hasPassesOfType:(unint64_t)type handler:(id)handler;
- (void)hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request completion:(id)completion;
- (void)hasProvisioningExtensionsWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes withHandler:(id)handler;
- (void)hasRemoteLibraryWithHandler:(id)handler;
- (void)hasSecureElementPassesOfType:(int64_t)type handler:(id)handler;
- (void)iPadSupportsPasses:(id)passes;
- (void)inAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)insertInternalWalletMessageWithContent:(id)content badged:(BOOL)badged completion:(id)completion;
- (void)introduceDatabaseIntegrityProblem;
- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier;
- (void)isPassbookVisibleWithHandler:(id)handler;
- (void)isPaymentPassActivationAvailableWithHandler:(id)handler;
- (void)isRemovingPassesOfType:(unint64_t)type handler:(id)handler;
- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)handler;
- (void)issueWalletUserNotificationWithTitle:(id)title message:(id)message forPassUniqueIdentifier:(id)identifier customActionRoute:(id)route;
- (void)issuerBindingFlowAuthenticationPerformed;
- (void)migrateDataWithHandler:(id)handler didRestoreFromBackup:(BOOL)backup;
- (void)noteACAccountChanged:(id)changed handler:(id)handler;
- (void)noteAppleAccountChanged:(id)changed handler:(id)handler;
- (void)noteObjectSharedWithUniqueID:(id)d;
- (void)notifyPassUsedWithIdentifier:(id)identifier fromSource:(int64_t)source;
- (void)openPaymentUIWithCompletion:(id)completion;
- (void)openWalletUIWithRelevantPass:(id)pass;
- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier newState:(unint64_t)state completion:(id)completion;
- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion;
- (void)passWithDPANIdentifier:(id)identifier handler:(id)handler;
- (void)passWithFPANIdentifier:(id)identifier handler:(id)handler;
- (void)passbookHasBeenDeletedWithHandler:(id)handler;
- (void)passesWithPrimaryPaymentApplicationStates:(id)states handler:(id)handler;
- (void)paymentPassWithAssociatedAccountIdentifier:(id)identifier completion:(id)completion;
- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion;
- (void)peerPaymentPassUniqueIDWithHandler:(id)handler;
- (void)pendingUserNotificationsWithIdentifier:(id)identifier completion:(id)completion;
- (void)personalizePassWithUniqueIdentifier:(id)identifier contact:(id)contact personalizationToken:(id)token requiredPersonalizationFields:(unint64_t)fields personalizationSource:(unint64_t)source handler:(id)handler;
- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data handler:(id)handler;
- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler;
- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)source handler:(id)handler;
- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source handler:(id)handler;
- (void)presentIssuerBindingFlowForIssuerData:(id)data signature:(id)signature orientation:(id)orientation;
- (void)presentPaymentSetupRequest:(id)request orientation:(id)orientation completion:(id)completion;
- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion;
- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode;
- (void)recoverPassWithUniqueID:(id)d handler:(id)handler;
- (void)removeAllScheduledActivities;
- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason handler:(id)handler;
- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason handler:(id)handler;
- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason handler:(id)handler;
- (void)replacePassWithPassData:(id)data handler:(id)handler;
- (void)requestStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)d;
- (void)resetApplePayWithDiagnosticReason:(id)reason handler:(id)handler;
- (void)sendCatalogChanged:(id)changed;
- (void)sendDynamicStatesUpdated:(id)updated catalog:(id)catalog;
- (void)sendPassAdded:(id)added state:(id)state catalog:(id)catalog;
- (void)sendPassArchived:(id)archived state:(id)state catalog:(id)catalog;
- (void)sendPassRecovered:(id)recovered state:(id)state catalog:(id)catalog;
- (void)sendPassRemoved:(id)removed catalog:(id)catalog;
- (void)sendPassUpdated:(id)updated state:(id)state catalog:(id)catalog;
- (void)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier withCompletion:(id)completion;
- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)d;
- (void)sendUserEditedCatalog:(id)catalog;
- (void)sessionDidChangeConnectionStatus:(int64_t)status;
- (void)sessionDidReceiveData:(id)data;
- (void)setBackupMetadata:(id)metadata handler:(id)handler;
- (void)setIssuerBindingManager:(id)manager;
- (void)setSecureElement:(id)element;
- (void)setSortingState:(int64_t)state forObjectWithUniqueID:(id)d withCompletion:(id)completion;
- (void)setSubcredentialManager:(id)manager;
- (void)shuffleGroups:(int)groups;
- (void)signData:(id)data forPassUniqueID:(id)d completion:(id)completion;
- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)simulateFlightUpdate:(id)update forPassUniqueID:(id)d handler:(id)handler;
- (void)sortedTransitPassesForAppletDataFormat:(id)format handler:(id)handler;
- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)identifiers;
- (void)spotlightReindexAllContentWithAcknowledgement:(id)acknowledgement;
- (void)spotlightReindexContentWithIdentifiers:(id)identifiers acknowledgement:(id)acknowledgement;
- (void)spotlightResetWithCompletion:(id)completion;
- (void)spotlightStatusWithCompletion:(id)completion;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)submitVerificationCode:(id)code verificationData:(id)data forPassWithUniqueID:(id)d handler:(id)handler;
- (void)unexpiredPassesOrderedByGroup:(id)group;
- (void)updateDate:(id)date forPendingNotificationWithIdentifier:(id)identifier;
- (void)updateIngestedDate:(id)date forPassWithUniqueID:(id)d;
- (void)updateObjectWithUniqueIdentifier:(id)identifier handler:(id)handler;
- (void)updateSettings:(unint64_t)settings forObjectWithUniqueID:(id)d;
- (void)usingSynchronousProxy:(BOOL)proxy addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy addPassIngestionPayloads:(id)payloads withCompletionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy addPassesContainer:(id)container withCompletionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy addUnsignedPassesWithDataFileDescriptors:(id)descriptors completionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy availableHomeKeyPassesWithCompletionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)number homeIdentifier:(id)identifier fromUnifiedAccessDescriptor:(id)descriptor andAliroDescriptor:(id)aliroDescriptor completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy configurePushProvisioningConfiguration:(id)configuration completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy configurePushProvisioningConfigurationV2:(id)v2 completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy containsPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy dynamicStateForPassUniqueID:(id)d handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy enableExpressForPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy fetchHomePaymentApplicationsForSerialNumber:(id)number completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy getCachedImageSetContainerForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getContentForUniqueID:(id)d withHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getEncryptedServiceProviderDataForUniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy getGroupsControllerSnapshotWithOptions:(id)options handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getImageSetContainerForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile suffix:(id)suffix handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getManifestHashForPassWithUniqueID:(id)d handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getPassForProvisioningCredentialHash:(id)hash handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getPassesAndCatalogOfPassTypes:(unint64_t)types limitResults:(BOOL)results withHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getPassesOfStyles:(unint64_t)styles handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getPaymentPassesPendingActivationWithHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getServiceProviderDataForUniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy passLocalizedStringForKey:(id)key uniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)usingSynchronousProxy:(BOOL)proxy provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy replaceUnsignedPassWithDataFileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy requestIssuerBoundPassesWithBindingWithData:(id)data automaticallyProvision:(BOOL)provision withCompletion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)self0;
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

- (PDPassLibrary)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v19.receiver = self;
  v19.super_class = PDPassLibrary;
  v8 = [(PDPassLibrary *)&v19 initWithConnection:connectionCopy];
  if (v8)
  {
    v9 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    whitelist = v8->_whitelist;
    v8->_whitelist = v9;

    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_server, server);
    v11 = sub_10000444C(serverCopy);
    v12 = sub_100004440(v11);
    remoteInterfacePresenter = v8->_remoteInterfacePresenter;
    v8->_remoteInterfacePresenter = v12;

    v14 = sub_1000044D8(v11);
    assertionManager = v8->_assertionManager;
    v8->_assertionManager = v14;

    v16 = PKPassLibraryInterface();
    [connectionCopy setRemoteObjectInterface:v16];

    v17 = PDPassLibraryExtendedInterface();
    [connectionCopy setExportedInterface:v17];

    [connectionCopy setExportedObject:v8];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PDPassLibrary;
  [(PDPassLibrary *)&v2 dealloc];
}

- (void)setSubcredentialManager:(id)manager
{
  managerCopy = manager;
  subcredentialManager = self->_subcredentialManager;
  if (subcredentialManager != managerCopy)
  {
    v7 = managerCopy;
    [(PDAppletSubcredentialManager *)subcredentialManager unregisterObserver:self];
    objc_storeStrong(&self->_subcredentialManager, manager);
    subcredentialManager = [(PDAppletSubcredentialManager *)self->_subcredentialManager registerObserver:self];
    managerCopy = v7;
  }

  _objc_release_x1(subcredentialManager, managerCopy);
}

- (void)setIssuerBindingManager:(id)manager
{
  managerCopy = manager;
  issuerBindingManager = self->_issuerBindingManager;
  if (issuerBindingManager != managerCopy)
  {
    v7 = managerCopy;
    [(PDIssuerBindingManager *)issuerBindingManager unregisterObserver:self];
    objc_storeStrong(&self->_issuerBindingManager, manager);
    issuerBindingManager = [(PDIssuerBindingManager *)self->_issuerBindingManager registerObserver:self];
    managerCopy = v7;
  }

  _objc_release_x1(issuerBindingManager, managerCopy);
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
  remoteObjectProxy = [(PDPassLibrary *)&v4 remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = PDPassLibrary;
  v3 = [(PDPassLibrary *)&v5 remoteObjectProxyWithErrorHandler:handler];

  return v3;
}

- (void)sendPassAdded:(id)added state:(id)state catalog:(id)catalog
{
  stateCopy = state;
  catalogCopy = catalog;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:added];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (stateCopy)
    {
      uniqueID = [v10 uniqueID];
      v16 = uniqueID;
      v17 = stateCopy;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    remoteObjectProxy2 = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy2 passAdded:v10];
  }
}

- (void)sendPassUpdated:(id)updated state:(id)state catalog:(id)catalog
{
  stateCopy = state;
  catalogCopy = catalog;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:updated];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (stateCopy)
    {
      uniqueID = [v10 uniqueID];
      v16 = uniqueID;
      v17 = stateCopy;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    remoteObjectProxy2 = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy2 passUpdated:v10];
  }
}

- (void)sendDynamicStatesUpdated:(id)updated catalog:(id)catalog
{
  updatedCopy = updated;
  catalogCopy = catalog;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:0 states:updatedCopy];
  }
}

- (void)sendPassRemoved:(id)removed catalog:(id)catalog
{
  catalogCopy = catalog;
  v9 = [(PDPassLibrary *)self _sanitizePassIfNeeded:removed];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:0 states:0];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
  {
    remoteObjectProxy2 = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy2 passRemoved:v9];
  }
}

- (void)sendPassRecovered:(id)recovered state:(id)state catalog:(id)catalog
{
  stateCopy = state;
  catalogCopy = catalog;
  v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:recovered];
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
    if (stateCopy)
    {
      uniqueID = [v10 uniqueID];
      v16 = uniqueID;
      v17 = stateCopy;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:v11 states:v13];
  }

  if ([(PDPassLibrary *)self _entitledForObject:v10 forActions:2])
  {
    remoteObjectProxy2 = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy2 passRecovered:v10];
  }
}

- (void)sendPassArchived:(id)archived state:(id)state catalog:(id)catalog
{
  archivedCopy = archived;
  stateCopy = state;
  catalogCopy = catalog;
  if (PKManualArchiveEnabled())
  {
    v11 = [(PDPassLibrary *)self _sanitizePassIfNeeded:archivedCopy];

    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v12 = [[NSSet alloc] initWithObjects:{v11, 0}];
      if (stateCopy)
      {
        uniqueID = [v11 uniqueID];
        v17 = uniqueID;
        v18 = stateCopy;
        v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      else
      {
        v14 = &__NSDictionary0__struct;
      }

      remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
      [remoteObjectProxy catalogChanged:catalogCopy withNewPasses:v12 states:v14];
    }

    if ([(PDPassLibrary *)self _entitledForObject:v11 forActions:2])
    {
      remoteObjectProxy2 = [(PDPassLibrary *)self remoteObjectProxy];
      [remoteObjectProxy2 passArchived:v11];
    }
  }

  else
  {
    v11 = archivedCopy;
  }
}

- (void)sendCatalogChanged:(id)changed
{
  changedCopy = changed;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy catalogChanged:changedCopy withNewPasses:0 states:0];
  }
}

- (void)getPassesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = handlerCopy;
    v5 = PDOSTransactionCreate("PDPassLibrary");
    v6 = objc_autoreleasePoolPush();
    passes = [(PDDatabaseManager *)self->_databaseManager passes];
    v8 = [(PDPassLibrary *)self _entitlementFilteredPasses:passes];
    v9[2](v9, v8);

    objc_autoreleasePoolPop(v6);
    handlerCopy = v9;
  }
}

- (void)getPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = handlerCopy;
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDDatabaseManager *)self->_databaseManager passesOfType:type];
    v10 = [(PDPassLibrary *)self _entitlementFilteredPasses:v9];
    v11[2](v11, v10);

    objc_autoreleasePoolPop(v8);
    handlerCopy = v11;
  }
}

- (void)getPassesOfCardType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  if (handlerCopy && passesAllAccess)
  {
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDDatabaseManager *)self->_databaseManager passesOfCardType:type];
    v10 = [(PDPassLibrary *)self _entitlementFilteredPasses:v9];
    handlerCopy[2](handlerCopy, v10);

    objc_autoreleasePoolPop(v8);
  }
}

- (void)getIdentityPassesOfTypes:(id)types handler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  if (handlerCopy && passesAllAccess)
  {
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = objc_autoreleasePoolPush();
    v10 = [(PDDatabaseManager *)self->_databaseManager identityPassesOfTypes:typesCopy];
    v11 = [(PDPassLibrary *)self _entitlementFilteredPasses:v10];
    handlerCopy[2](handlerCopy, v11);

    objc_autoreleasePoolPop(v9);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getPassesOfStyles:(unint64_t)styles handler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (proxyCopy)
    {
      v9 = PDOSTransactionCreate("PDPassLibrary");
      v10 = objc_autoreleasePoolPush();
      v11 = [(PDDatabaseManager *)self->_databaseManager passesOfStyles:styles];
      v12 = [(PDPassLibrary *)self _entitlementFilteredPasses:v11];
      handlerCopy[2](handlerCopy, v12);

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
      stylesCopy = styles;
      v15 = handlerCopy;
      dispatch_async(v13, block);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getPassForProvisioningCredentialHash:(id)hash handler:(id)handler
{
  proxyCopy = proxy;
  hashCopy = hash;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (proxyCopy)
    {
      v10 = PDOSTransactionCreate("PDPassLibrary");
      v11 = objc_autoreleasePoolPush();
      v12 = [(PDDatabaseManager *)self->_databaseManager passWithProvisioningCredentialHash:hashCopy];
      v13 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v12];
      handlerCopy[2](handlerCopy, v13);

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
      v16 = hashCopy;
      v17 = handlerCopy;
      dispatch_async(v14, block);
    }
  }
}

- (void)canAddFelicaPassWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = handlerCopy;
    if (PKFelicaSecureElementIsAvailable())
    {
      v4 = PKIsPad() ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5[2](v5, v4);
    handlerCopy = v5;
  }
}

- (void)submitVerificationCode:(id)code verificationData:(id)data forPassWithUniqueID:(id)d handler:(id)handler
{
  databaseManager = self->_databaseManager;
  handlerCopy = handler;
  dataCopy = data;
  codeCopy = code;
  v16 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:d];
  paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
  paymentPass = [v16 paymentPass];
  [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator submitVerificationCode:codeCopy verificationData:dataCopy forPass:paymentPass handler:handlerCopy];
}

- (void)openWalletUIWithRelevantPass:(id)pass
{
  passCopy = pass;
  paymentAllAccess = [(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess];
  v7 = paymentAllAccess;
  if (!passCopy || !paymentAllAccess)
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

  if (![(PDDatabaseManager *)self->_databaseManager passExistsWithUniqueID:passCopy])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = passCopy;
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

- (void)badgeCountItemsWithCompletion:(id)completion
{
  whitelist = self->_whitelist;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)whitelist badgeCountItemsAccess])
  {
    badgeCountItems = [(PDUserNotificationManager *)self->_userNotificationManager badgeCountItems];
    completionCopy[2](completionCopy);
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

    (completionCopy[2])(completionCopy, &__NSArray0__struct);
  }
}

- (void)openPaymentUIWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((PKStoreDemoModeEnabled() & 1) != 0 || !PKSecureElementIsAvailable())
  {
    if (PKIsHandoffClient() && [(PKIDSManager *)self->_idsManager hasRemoteDevices])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      remoteDevices = [(PKIDSManager *)self->_idsManager remoteDevices];
      v8 = [remoteDevices countByEnumeratingWithState:&v13 objects:v19 count:16];
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
              objc_enumerationMutation(remoteDevices);
            }

            v12 = [(PKIDSManager *)self->_idsManager sendSetupRequest:*(*(&v13 + 1) + 8 * v11) appDisplayName:0 completion:0];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [remoteDevices countByEnumeratingWithState:&v13 objects:v19 count:16];
        }

        while (v9);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100054A00;
    v17[3] = &unk_10083F350;
    v6 = completionCopy;
    v17[4] = self;
    v18 = v6;
    [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:sharedWebService completion:v17];

    if (v6)
    {
      v6[2](v6, 1);
    }
  }
}

- (BOOL)_isConfigurationValid:(id)valid
{
  validCopy = valid;
  if ([(PKEntitlementWhitelist *)self->_whitelist featuresAllAccess]&& ((PKIsMac() & 1) != 0 || (PKIsPhone() & 1) != 0 || (PKIsPad() & 1) != 0 || (PKIsWatch() & 1) != 0 || PKIsVision()))
  {
    signedFields = [validCopy signedFields];
    if (signedFields || ([validCopy signature], (signedFields = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      originatingURL = [validCopy originatingURL];

      if (!originatingURL)
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

- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPassLibrary requesting payment setup features", buf, 2u);
  }

  if (!completionCopy)
  {
    goto LABEL_49;
  }

  if (![(PDPassLibrary *)self _isConfigurationValid:configurationCopy]|| +[PKWalletVisibility isWalletRestricted])
  {
LABEL_48:
    completionCopy[2](completionCopy, 0);
    goto LABEL_49;
  }

  if (PKSecureElementIsAvailable())
  {
    paymentSetupFeaturesCoordinator = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator paymentSetupFeaturesCoordinator];
    usePaymentSetupFeaturesFromCDN = [configurationCopy usePaymentSetupFeaturesFromCDN];
    applicationID = [(PKEntitlementWhitelist *)self->_whitelist applicationID];
    if (usePaymentSetupFeaturesFromCDN)
    {
      [paymentSetupFeaturesCoordinator staticPaymentSetupFeaturesForSourceApplicationID:applicationID blockServerFetch:0 completion:completionCopy];
    }

    else
    {
      [paymentSetupFeaturesCoordinator paymentSetupFeaturesForSourceApplicationID:applicationID completion:completionCopy];
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
  v31 = completionCopy;
  v32 = configurationCopy;
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
        supportedSetupFeatures = [v14 supportedSetupFeatures];
        v16 = [supportedSetupFeatures countByEnumeratingWithState:&v36 objects:v46 count:16];
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
                objc_enumerationMutation(supportedSetupFeatures);
              }

              v20 = *(*(&v36 + 1) + 8 * v19);
              v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 type]);
              v22 = [v12 objectForKey:v21];
              if (!v22)
              {
                v22 = v20;
                [v12 setObject:v22 forKey:v21];
              }

              state = [v20 state];
              state2 = [v22 state];
              if (state2 == 2)
              {
                if (state == 3)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                if (state2 == 1)
                {
                  if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
                  {
                    goto LABEL_30;
                  }

LABEL_29:
                  [v22 setState:state];
                  goto LABEL_30;
                }

                if (!state2 && state - 1 < 3)
                {
                  goto LABEL_29;
                }
              }

LABEL_30:

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v25 = [supportedSetupFeatures countByEnumeratingWithState:&v36 objects:v46 count:16];
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

  allValues = [v12 allValues];
  completionCopy = v31;
  configurationCopy = v32;
  if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = allValues;
    _os_log_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_DEFAULT, "Returning payment setup features from remote devices :%@", buf, 0xCu);
  }

  (v31)[2](v31, allValues);
LABEL_49:
}

- (void)presentPaymentSetupRequest:(id)request orientation:(id)orientation completion:(id)completion
{
  requestCopy = request;
  orientationCopy = orientation;
  completionCopy = completion;
  configuration = [requestCopy configuration];
  if ([(PDPassLibrary *)self _isConfigurationValid:configuration])
  {
    paymentSetupFeatures = [requestCopy paymentSetupFeatures];
    v13 = [paymentSetupFeatures count];

    if (v13)
    {
      if (PKIsMac())
      {
        [(PDPassLibrary *)self openPaymentUIWithCompletion:completionCopy];
      }

      else if (PKPassbookIsCurrentlyDeletedByUser())
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Prompting user to install Wallet", buf, 2u);
        }

        v16 = completionCopy;
        PKShowAlertForWalletUninstalled();
      }

      else
      {
        sub_1005CC7F8(self->_remoteInterfacePresenter, requestCopy, 0, orientationCopy, completionCopy);
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

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_9:
}

- (void)paymentPassWithAssociatedAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100055464;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)source handler:(id)handler
{
  handlerCopy = handler;
  v7 = PDDefaultPaymentPassUniqueIdentifier();
  [(PDPassLibrary *)self presentContactlessInterfaceForPassWithUniqueIdentifier:v7 fromSource:source handler:handlerCopy];
}

- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    goto LABEL_2;
  }

  paymentPresentation = [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation];
  if (identifierCopy && source == 4 && !paymentPresentation)
  {
    if (![(PDPassLibrary *)self _entitledForPassType:1 uniqueIdentifier:identifierCopy actions:2])
    {
      goto LABEL_10;
    }

LABEL_2:
    remoteInterfacePresenter = self->_remoteInterfacePresenter;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100055818;
    v13[3] = &unk_10083E3C8;
    v14 = handlerCopy;
    sub_1005CB414(remoteInterfacePresenter, identifierCopy, source, v13);

    goto LABEL_3;
  }

  if (paymentPresentation)
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

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_3:
}

- (void)canPresentPaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100055968;
    v10[3] = &unk_10083F418;
    v10[4] = self;
    v12 = completionCopy;
    v11 = requestCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)isPaymentPassActivationAvailableWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v4 = PKSecureElementIsAvailable() != 0;
    (*(handler + 2))(handlerCopy, v4);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getPassesAndCatalogOfPassTypes:(unint64_t)types limitResults:(BOOL)results withHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100056758;
      v17[3] = &unk_10083F440;
      v17[4] = self;
      typesCopy = types;
      resultsCopy = results;
      v18 = handlerCopy;
      v11 = objc_retainBlock(v17);
      v12 = v11;
      if (proxyCopy)
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

      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getGroupsControllerSnapshotWithOptions:(id)options handler:(id)handler
{
  proxyCopy = proxy;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100056A30;
      v16[3] = &unk_10083D320;
      v16[4] = self;
      v17 = optionsCopy;
      v18 = handlerCopy;
      v10 = objc_retainBlock(v16);
      v11 = v10;
      if (proxyCopy)
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

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getPaymentPassesPendingActivationWithHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (proxyCopy)
      {
        v7 = objc_autoreleasePoolPush();
        paymentPassesPendingActivation = [(PDDatabaseManager *)self->_databaseManager paymentPassesPendingActivation];
        v9 = [(PDPassLibrary *)self _entitlementFilteredPasses:paymentPassesPendingActivation];
        handlerCopy[2](handlerCopy, v9);

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
        v13 = handlerCopy;
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)sendUserEditedCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = PDOSTransactionCreate("PDPassLibrary");
  v6 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056EB8;
  block[3] = &unk_10083C4C0;
  v10 = v5;
  selfCopy = self;
  v12 = catalogCopy;
  v7 = catalogCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)notifyPassUsedWithIdentifier:(id)identifier fromSource:(int64_t)source
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100056F8C;
  v4[3] = &unk_10083F468;
  v4[4] = self;
  v4[5] = source;
  [(PDPassLibrary *)self _getPassWithUniqueID:identifier handler:v4];
}

- (void)getPassWithUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = handlerCopy;
    dCopy = d;
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];

    if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
    {
      v10 = [(PDPassLibrary *)self _sanitizePassIfNeeded:v9];
      v11[2](v11, v10);
    }

    else
    {
      v11[2](v11, 0);
    }

    handlerCopy = v11;
  }
}

- (void)hasPassWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = dispatch_get_global_queue(21, 0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100057284;
      v11[3] = &unk_10083F490;
      v13 = handlerCopy;
      v11[4] = self;
      v12 = dCopy;
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

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)getPassesWithReaderIdentifier:(id)identifier handler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    identifierCopy = identifier;
    v8 = PDOSTransactionCreate("PDPassLibrary");
    v9 = [(PDDatabaseManager *)self->_databaseManager passesWithPairedReaderIdentifier:identifierCopy];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000573DC;
    v11[3] = &unk_10083F4B8;
    v11[4] = self;
    v10 = [v9 pk_setBySafelyApplyingBlock:v11];

    handlerCopy[2](handlerCopy, v10);
  }
}

- (void)passesWithPrimaryPaymentApplicationStates:(id)states handler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      [(PDSecureElementPassDatabaseRequest *)v8 setPrimaryPaymentApplicationStates:statesCopy];
      v9 = [(PDDatabaseManager *)self->_databaseManager secureElementPassesForRequest:v8];
      handlerCopy[2](handlerCopy, v9);
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)hasRemoteLibraryWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = handlerCopy;
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

    handlerCopy = v6;
  }
}

- (void)inAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  networksCopy = networks;
  codesCopy = codes;
  typeCopy = type;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v18 = dispatch_get_global_queue(21, 0);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000577CC;
    v20[3] = &unk_10083F508;
    v20[4] = self;
    v21 = networksCopy;
    capabilitiesCopy = capabilities;
    v22 = codesCopy;
    v23 = typeCopy;
    requestCopy = request;
    v24 = handlerCopy;
    v19 = v20;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v28 = v19;
    dispatch_async(v18, block);
  }
}

- (void)hasInAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  networksCopy = networks;
  codesCopy = codes;
  typeCopy = type;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v18 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057A30;
    block[3] = &unk_10083F508;
    block[4] = self;
    v20 = networksCopy;
    capabilitiesCopy = capabilities;
    v21 = codesCopy;
    v22 = typeCopy;
    requestCopy = request;
    v23 = handlerCopy;
    dispatch_async(v18, block);
  }
}

- (void)hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request completion:(id)completion
{
  if (completion)
  {
    LOBYTE(v9) = request;
    [(PDPassLibrary *)self _hasPassesWithSupportedNetworks:networks merchantCapabilities:capabilities webDomain:domain issuerCountryCodes:codes paymentApplicationStates:0 paymentRequestType:type isMultiTokensRequest:v9 handler:completion];
  }
}

- (void)_hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request handler:(id)self0
{
  networksCopy = networks;
  domainCopy = domain;
  codesCopy = codes;
  statesCopy = states;
  typeCopy = type;
  handlerCopy = handler;
  accountManager = self->_accountManager;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100057DF0;
  v29[3] = &unk_10083F558;
  v30 = domainCopy;
  v31 = codesCopy;
  selfCopy = self;
  v33 = networksCopy;
  v36 = handlerCopy;
  capabilitiesCopy = capabilities;
  v34 = statesCopy;
  v35 = typeCopy;
  requestCopy = request;
  v23 = typeCopy;
  v24 = statesCopy;
  v25 = networksCopy;
  v26 = handlerCopy;
  v27 = codesCopy;
  v28 = domainCopy;
  [(PDAccountManager *)accountManager accountsWithCompletion:v29];
}

- (BOOL)_hasPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities paymentApplicationStates:(id)states
{
  networksCopy = networks;
  statesCopy = states;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    supportsWebPayments = 1;
  }

  else
  {
    supportsWebPayments = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if ([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate])
  {
    databaseManager = self->_databaseManager;
  }

  else
  {
    passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    if (((supportsWebPayments | passesAllAccess) & 1) == 0)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v15 = passesAllAccess;
    databaseManager = self->_databaseManager;
    if ((v15 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = statesCopy;
LABEL_7:
  v13 = [(PDDatabaseManager *)databaseManager passExistsForNonWebInAppPaymentOnNetworks:networksCopy withCapabilities:capabilities paymentApplicationStates:v12];
LABEL_12:

  return v13;
}

- (void)_passesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities webDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request handler:(id)self0
{
  networksCopy = networks;
  domainCopy = domain;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000581BC;
  v25[3] = &unk_10083F580;
  v17 = domainCopy != 0;
  v26 = networksCopy;
  v27 = domainCopy;
  selfCopy = self;
  codesCopy = codes;
  requestCopy = request;
  statesCopy = states;
  handlerCopy = handler;
  v18 = handlerCopy;
  v19 = statesCopy;
  v20 = codesCopy;
  v21 = domainCopy;
  v22 = networksCopy;
  LOBYTE(v23) = request;
  [(PDPassLibrary *)self _paymentPassesForNetworks:v22 capabilities:capabilities issuerCountryCodes:v20 webPayment:v17 paymentApplicationStates:v19 paymentRequestType:type isMultiTokensRequest:v23 withHandler:v25];
}

- (void)_paymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes webPayment:(BOOL)payment paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)self0
{
  paymentCopy = payment;
  networksCopy = networks;
  codesCopy = codes;
  statesCopy = states;
  typeCopy = type;
  handlerCopy = handler;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000059C0;
  v42 = sub_10000B0EC;
  v43 = 0;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    supportsWebPayments = 1;
  }

  else
  {
    supportsWebPayments = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    passesAllAccess = 1;
  }

  else
  {
    passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    if (((supportsWebPayments | passesAllAccess) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  databaseManager = self->_databaseManager;
  paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
  if (paymentCopy)
  {
    sharedWebService = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    if (passesAllAccess)
    {
      v25 = codesCopy;
    }

    else
    {
      v25 = 0;
    }

    if (passesAllAccess)
    {
      v26 = statesCopy;
    }

    else
    {
      v26 = 0;
    }

    v27 = [(PDDatabaseManager *)databaseManager passesForWebPaymentOnNetworks:networksCopy withCapabilities:capabilities webService:sharedWebService issuerCountryCodes:v25 paymentApplicationStates:v26 isMultiTokensRequest:request];
  }

  else
  {
    sharedWebService2 = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    sharedWebService = sharedWebService2;
    if (passesAllAccess)
    {
      v29 = statesCopy;
    }

    else
    {
      v29 = 0;
    }

    if (passesAllAccess)
    {
      v30 = codesCopy;
    }

    else
    {
      v30 = 0;
    }

    v27 = [(PDDatabaseManager *)databaseManager passesForNonWebInAppPaymentOnNetworks:networksCopy withCapabilities:capabilities issuerCountryCodes:v30 paymentApplicationStates:v29 paymentRequestType:typeCopy isMultiTokensRequest:request webService:sharedWebService2];
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
  v33 = handlerCopy;
  v36 = v33;
  [(PDAccountManager *)accountManager accountsWithCompletion:v35];

  _Block_object_dispose(&v38, 8);
}

- (void)hasProvisioningExtensionsWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes withHandler:(id)handler
{
  networksCopy = networks;
  codesCopy = codes;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_21;
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    supportsWebPayments = 1;
  }

  else
  {
    supportsWebPayments = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPaymentsPrivate]& 1) != 0)
  {
    passesAllAccess = 1;
  }

  else
  {
    passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  }

  if (PKPaymentSheetExpressProvisioningWebFlow())
  {
    goto LABEL_15;
  }

  remoteProcessApplicationIdentifier = [(PDPassLibrary *)self remoteProcessApplicationIdentifier];
  v16 = remoteProcessApplicationIdentifier;
  if (!remoteProcessApplicationIdentifier || ![remoteProcessApplicationIdentifier hasPrefix:@"com.apple.WebKit"])
  {

LABEL_15:
    if ((supportsWebPayments | passesAllAccess))
    {
      v19 = [PKPaymentProvisioningController alloc];
      sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
      v21 = [v19 initWithWebService:sharedWebService];

      if (v21)
      {
        v22 = [v21 countSupportedProvisioningExtensions] != 0;
      }

      else
      {
        v22 = 0;
      }

      handlerCopy[2](handlerCopy, v22);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
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
    remoteProcessIdentifier = [(PDPassLibrary *)self remoteProcessIdentifier];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ returns NO for pid: %i as PKPaymentSheetExpressProvisioningWebFlow is off", &v23, 0x12u);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_21:
}

- (id)_inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  identifierCopy = identifier;
  codesCopy = codes;
  statesCopy = states;
  if (!identifierCopy)
  {
    remoteProcessApplicationIdentifier = [(PDPassLibrary *)self remoteProcessApplicationIdentifier];
    if (remoteProcessApplicationIdentifier)
    {
      identifierCopy = remoteProcessApplicationIdentifier;
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
        remoteProcessIdentifier = [(PDPassLibrary *)self remoteProcessIdentifier];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: %@ failed to determine remote application identifier for remote process with pid: %i", &v29, 0x12u);
      }

      identifierCopy = 0;
    }
  }

  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    supportsWebPayments = 1;
  }

  else
  {
    supportsWebPayments = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
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
      v23 = codesCopy;
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
      v24 = statesCopy;
    }

    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v26 = [(PDDatabaseManager *)databaseManager passesForInAppPaymentOnNetworks:v21 issuerCountryCodes:v23 paymentApplicationStates:v24 paymentRequestType:0 isMultiTokensRequest:requestCopy webService:sharedWebService];

    v27 = [(PDPassLibrary *)self _filteredPasses:v26 forApplicationIdentifier:identifierCopy];

    goto LABEL_21;
  }

  passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  v18 = passesAllAccess;
  if ((supportsWebPayments | passesAllAccess))
  {
    goto LABEL_13;
  }

  v27 = 0;
LABEL_21:

  return v27;
}

- (id)_inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  domainCopy = domain;
  codesCopy = codes;
  statesCopy = states;
  if (([(PKEntitlementWhitelist *)self->_whitelist inAppPayments]& 1) != 0)
  {
    supportsWebPayments = 1;
  }

  else
  {
    supportsWebPayments = [(PKEntitlementWhitelist *)self->_whitelist supportsWebPayments];
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
      v19 = codesCopy;
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
      v20 = statesCopy;
    }

    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
    v22 = [(PDDatabaseManager *)databaseManager passesForInAppPaymentOnNetworks:v17 issuerCountryCodes:v19 paymentApplicationStates:v20 paymentRequestType:0 isMultiTokensRequest:requestCopy webService:sharedWebService];

    v23 = [(PDPassLibrary *)self _filteredPasses:v22 forWebDomain:domainCopy];

    goto LABEL_15;
  }

  passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
  v14 = passesAllAccess;
  if ((supportsWebPayments | passesAllAccess))
  {
    goto LABEL_7;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (void)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  identifierCopy = identifier;
  codesCopy = codes;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058E74;
    v15[3] = &unk_10083F5F8;
    v18 = handlerCopy;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = codesCopy;
    requestCopy = request;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  domainCopy = domain;
  codesCopy = codes;
  handlerCopy = handler;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100059040;
  v18[3] = &unk_10083F5F8;
  v18[4] = self;
  v19 = domainCopy;
  v20 = codesCopy;
  v21 = handlerCopy;
  requestCopy = request;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = codesCopy;
  v16 = domainCopy;
  v17 = handlerCopy;
  dispatch_async(v13, block);
}

- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  identifierCopy = identifier;
  codesCopy = codes;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100059214;
    v15[3] = &unk_10083F5F8;
    v18 = handlerCopy;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = codesCopy;
    requestCopy = request;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  domainCopy = domain;
  codesCopy = codes;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = dispatch_get_global_queue(21, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000593F0;
    v15[3] = &unk_10083F5F8;
    v18 = handlerCopy;
    v15[4] = self;
    v16 = domainCopy;
    v17 = codesCopy;
    requestCopy = request;
    v14 = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v21 = v14;
    dispatch_async(v13, block);
  }
}

- (void)getPassesWithUniqueIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100059598;
    v10[3] = &unk_10083D320;
    v11 = identifiersCopy;
    selfCopy = self;
    v13 = handlerCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v15 = v9;
    dispatch_async(v8, block);
  }
}

- (void)unexpiredPassesOrderedByGroup:(id)group
{
  if (group)
  {
    databaseManager = self->_databaseManager;
    groupCopy = group;
    unexpiredPassesOrderedByGroup = [(PDDatabaseManager *)databaseManager unexpiredPassesOrderedByGroup];
    groupCopy[2](groupCopy, unexpiredPassesOrderedByGroup);
  }
}

- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion
{
  if (completion)
  {
    databaseManager = self->_databaseManager;
    completionCopy = completion;
    v7 = [(PDDatabaseManager *)databaseManager passUniqueIDsMatchingSearchTerm:term];
    completionCopy[2](completionCopy, v7);
  }
}

- (void)getPassesWithSearchableTransactions:(id)transactions
{
  if (transactions)
  {
    transactionsCopy = transactions;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000598F4;
    v7[3] = &unk_10083F648;
    v8 = objc_alloc_init(NSMutableSet);
    v5 = v8;
    [(PDPassLibrary *)self getPassesOfType:1 handler:v7];
    [(PDPassLibrary *)self _sanitizePasses:v5];
    v6 = [v5 copy];
    transactionsCopy[2](transactionsCopy, v6);
  }
}

- (void)getPassUniqueIDsForAssociatedApplicationIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v8 = dispatch_get_global_queue(21, 0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100059BE8;
      v11[3] = &unk_10083D320;
      v11[4] = self;
      v12 = identifierCopy;
      v13 = handlerCopy;
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

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)getMetadataForFieldWithProperties:(id)properties handler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = dispatch_get_global_queue(25, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005A030;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = propertiesCopy;
    v12 = handlerCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getManifestHashForPassWithUniqueID:(id)d handler:(id)handler
{
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (proxyCopy)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [(PDCardFileManager *)self->_cardFileManager objectWithUniqueID:dCopy];
        dataAccessor = [v11 dataAccessor];
        manifestHash = [dataAccessor manifestHash];
        handlerCopy[2](handlerCopy, manifestHash);

        objc_autoreleasePoolPop(v10);
      }

      else
      {
        v15 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10005A2F4;
        block[3] = &unk_10083F490;
        v18 = handlerCopy;
        block[4] = self;
        v17 = dCopy;
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)enabledValueAddedServicePassesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005A498;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = handlerCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (id)_filteredPasses:(id)passes forWebDomain:(id)domain
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A610;
  v8[3] = &unk_10083F698;
  v8[4] = self;
  domainCopy = domain;
  v5 = domainCopy;
  v6 = [passes objectsPassingTest:v8];

  return v6;
}

- (id)_filteredPasses:(id)passes forApplicationIdentifier:(id)identifier
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A75C;
  v8[3] = &unk_10083F698;
  v8[4] = self;
  identifierCopy = identifier;
  v5 = identifierCopy;
  v6 = [passes objectsPassingTest:v8];

  return v6;
}

- (void)hasPassesOfType:(unint64_t)type handler:(id)handler
{
  if (handler)
  {
    databaseManager = self->_databaseManager;
    handlerCopy = handler;
    handlerCopy[2](handlerCopy, [(PDDatabaseManager *)databaseManager passExistsWithPassType:type]);
  }
}

- (void)hasPassesInExpiredSectionWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v10 = handlerCopy;
    passesAllAccess = [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess];
    v7 = v10;
    if (passesAllAccess)
    {
      hasPassesInExpiredSection = [(PDDatabaseManager *)self->_databaseManager hasPassesInExpiredSection];
      v7 = v10;
      v9 = hasPassesInExpiredSection;
    }

    else
    {
      v9 = 0;
    }

    handlerCopy = v7[2](v7, v9);
    v5 = v10;
  }

  _objc_release_x1(handlerCopy, v5);
}

- (void)canAddPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (PKStoreDemoModeEnabled())
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else if (type == 1)
  {
    countActiveSecureElementPasses = [(PDDatabaseManager *)self->_databaseManager countActiveSecureElementPasses];
    if (PKDisableDynamicSEAllocation())
    {
      v9 = PKMaxPaymentCards();
      v10 = v9 - 1 < countActiveSecureElementPasses;
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

      v29 = countActiveSecureElementPasses;
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

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, (v17 ^ 1) & 1);
    }
  }

  else if (type)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else if (handlerCopy)
  {
    v7 = (+[PKWalletVisibility isWalletVisible]& 1) != 0 || PKPassbookIsCurrentlyDeletedByUser() != 0;
    handlerCopy[2](handlerCopy, v7);
  }
}

- (void)countPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist passesOverviewAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      handlerCopy[2](handlerCopy, [(PDDatabaseManager *)self->_databaseManager countPassesOfType:type]);
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)defaultPaymentPassWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005ADC0;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = handlerCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)peerPaymentPassUniqueIDWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      peerPaymentAccount = [(PDDatabaseManager *)self->_databaseManager peerPaymentAccount];
      associatedPassUniqueID = [peerPaymentAccount associatedPassUniqueID];
      handlerCopy[2](handlerCopy, associatedPassUniqueID);
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7CF8();
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)expressTransitPassWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005B088;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = handlerCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005B324;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = identifiersCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }
}

- (void)sortedTransitPassesForAppletDataFormat:(id)format handler:(id)handler
{
  formatCopy = format;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005BDAC;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = formatCopy;
    v12 = handlerCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getEncryptedServiceProviderDataForUniqueID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy && [dCopy length] && -[PDPassLibrary _entitledForUniqueID:forActions:](self, "_entitledForUniqueID:forActions:", dCopy, 2))
    {
      if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
      {
LABEL_6:
        remoteProcessApplicationInfo = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
        if ([remoteProcessApplicationInfo passType]== 1)
        {
          secureElementPass = [remoteProcessApplicationInfo secureElementPass];
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
          v30 = remoteProcessApplicationInfo;
          p_buf = &buf;
          v32 = v36;
          v33 = v38;
          [v11 addOperation:v29];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10005D1A8;
          v23[3] = &unk_10083F800;
          v23[4] = self;
          v12 = secureElementPass;
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
          v20 = completionCopy;
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
            *(&buf + 4) = dCopy;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Pass for unique ID %@ wasn't a secure element pass", &buf, 0xCu);
          }

          v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v12);
        }

        goto LABEL_23;
      }

      remoteProcessApplicationInfo = [(PDPassLibrary *)self remoteProcessApplicationInfo];
      if ([remoteProcessApplicationInfo isRunning]&& ([remoteProcessApplicationInfo isVisible]& 1) != 0)
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
      (*(completionCopy + 2))(completionCopy, 0, v17);
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

      remoteProcessApplicationInfo = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, remoteProcessApplicationInfo);
    }
  }

  else
  {
    remoteProcessApplicationInfo = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(remoteProcessApplicationInfo, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PDPassLibrary usingSynchronousProxy:getEncryptedServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, remoteProcessApplicationInfo, OS_LOG_TYPE_DEFAULT, "%s requires a completion", &buf, 0xCu);
    }
  }

LABEL_23:
}

- (void)usingSynchronousProxy:(BOOL)proxy getServiceProviderDataForUniqueID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy && [dCopy length] && -[PDPassLibrary _entitledForUniqueID:forActions:](self, "_entitledForUniqueID:forActions:", dCopy, 2))
    {
      if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) == 0)
      {
        remoteProcessApplicationInfo = [(PDPassLibrary *)self remoteProcessApplicationInfo];
        if (![remoteProcessApplicationInfo isRunning]|| ([remoteProcessApplicationInfo isVisible]& 1) == 0)
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
          completionCopy[2](completionCopy, 0, v13);

          goto LABEL_22;
        }
      }

      remoteProcessApplicationInfo = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:dCopy];
      if ([remoteProcessApplicationInfo passType]== 1)
      {
        [(PDPassLibrary *)self _getServiceProviderDataForPass:remoteProcessApplicationInfo completion:completionCopy];
        goto LABEL_22;
      }

      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = dCopy;
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

    remoteProcessApplicationInfo = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    completionCopy[2](completionCopy, 0, remoteProcessApplicationInfo);
  }

  else
  {
    remoteProcessApplicationInfo = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(remoteProcessApplicationInfo, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[PDPassLibrary usingSynchronousProxy:getServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, remoteProcessApplicationInfo, OS_LOG_TYPE_DEFAULT, "%s requires a completion", &v14, 0xCu);
    }
  }

LABEL_22:
}

- (void)_getEncryptedServiceProviderDataForSecureElementPass:(id)pass publicKey:(id)key scheme:(id)scheme completion:(id)completion
{
  passCopy = pass;
  keyCopy = key;
  schemeCopy = scheme;
  completionCopy = completion;
  if (completionCopy)
  {
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    applicationIdentifier = [devicePrimaryPaymentApplication applicationIdentifier];
    secureElement = self->_secureElement;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10005D9F4;
    v18[3] = &unk_10083F850;
    v19 = applicationIdentifier;
    v20 = keyCopy;
    v21 = schemeCopy;
    v22 = completionCopy;
    v17 = applicationIdentifier;
    [(PKSecureElement *)secureElement accessSecureElementManagerSessionWithHandler:v18];
  }

  else
  {
    devicePrimaryPaymentApplication = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[PDPassLibrary _getEncryptedServiceProviderDataForSecureElementPass:publicKey:scheme:completion:]";
      _os_log_impl(&_mh_execute_header, devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT, "%s requires a completion", buf, 0xCu);
    }
  }
}

- (void)_getServiceProviderDataForPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  if (completionCopy)
  {
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    applicationIdentifier = [devicePrimaryPaymentApplication applicationIdentifier];
    secureElement = self->_secureElement;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005DCE8;
    v12[3] = &unk_10083F878;
    v13 = applicationIdentifier;
    v14 = completionCopy;
    v11 = applicationIdentifier;
    [(PKSecureElement *)secureElement accessSecureElementManagerSessionWithHandler:v12];
  }

  else
  {
    devicePrimaryPaymentApplication = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[PDPassLibrary _getServiceProviderDataForPass:completion:]";
      _os_log_impl(&_mh_execute_header, devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT, "%s requires a completion", buf, 0xCu);
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

- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d
{
  marketCopy = market;
  dCopy = d;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E0E8;
    v9[3] = &unk_10083F8A0;
    v9[4] = self;
    v10 = marketCopy;
    v11 = dCopy;
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

- (void)usingSynchronousProxy:(BOOL)proxy postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d
{
  proxyCopy = proxy;
  marketCopy = market;
  dCopy = d;
  if (proxyCopy)
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
  v12 = marketCopy;
  v13 = dCopy;
  [(PDPassLibrary *)self _getPassWithUniqueID:v13 handler:v11];

LABEL_9:
}

- (void)passWithFPANIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager passWithPrimaryAccountIdentifier:identifierCopy];
      paymentPass = [v7 paymentPass];

      handlerCopy[2](handlerCopy, paymentPass);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)passWithDPANIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager paymentApplicationWithDPANIdentifier:identifierCopy];
      if (v7)
      {
        v8 = [(PDDatabaseManager *)self->_databaseManager passWithPaymentApplication:v7];
        paymentPass = [v8 paymentPass];
      }

      else
      {
        paymentPass = 0;
      }

      handlerCopy[2](handlerCopy, paymentPass);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)isRemovingPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = handlerCopy;
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = type == 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      isDeletingAllApplets = [(PKSecureElement *)self->_secureElement isDeletingAllApplets];
    }

    else
    {
      isDeletingAllApplets = 0;
    }

    v9[2](v9, isDeletingAllApplets);
    handlerCopy = v9;
  }
}

- (void)hasSecureElementPassesOfType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = handlerCopy;
    if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
    {
      v7 = [(PDDatabaseManager *)self->_databaseManager hasSecureElementPassesOfType:type];
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7);
    handlerCopy = v8;
  }
}

- (void)isPassbookVisibleWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, +[PKWalletVisibility isWalletVisible]);
  }
}

- (void)passbookHasBeenDeletedWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v4 = PKPassbookIsCurrentlyDeletedByUser() != 0;
    (*(handler + 2))(handlerCopy, v4);
  }
}

- (void)iPadSupportsPasses:(id)passes
{
  if (passes)
  {
    paymentWebServicesCoordinator = self->_paymentWebServicesCoordinator;
    passesCopy = passes;
    sharedWebService = [(PDPaymentWebServiceCoordinator *)paymentWebServicesCoordinator sharedWebService];
    _appleAccountInformation = [sharedWebService _appleAccountInformation];

    passesCopy[2](passesCopy, [_appleAccountInformation aidaAccountAvailable]);
  }
}

- (void)getArchivedObjectWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = PDOSTransactionCreate("PDPassLibrary");
    v8 = objc_autoreleasePoolPush();
    v9 = [(PDCardFileManager *)self->_cardFileManager objectWithUniqueID:dCopy];
    if ([(PDPassLibrary *)self _entitledForObject:v9 forActions:2])
    {
      archiveData = [v9 archiveData];
      handlerCopy[2](handlerCopy, archiveData);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)getDataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier handler:(id)handler
{
  namedCopy = named;
  extensionCopy = extension;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v13 = objc_autoreleasePoolPush();
    if ([(PDPassLibrary *)self _entitledForUniqueID:identifierCopy forActions:2])
    {
      v14 = PDOSTransactionCreate("PDPassLibrary");
      v15 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:identifierCopy];
      v16 = [v15 dataForBundleResourceNamed:namedCopy withExtension:extensionCopy];
      handlerCopy[2](handlerCopy, v16);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)getDataForBundleResources:(id)resources objectUniqueIdentifier:(id)identifier handler:(id)handler
{
  resourcesCopy = resources;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    if ([(PDPassLibrary *)self _entitledForUniqueID:identifierCopy forActions:2])
    {
      v11 = PDOSTransactionCreate("PDPassLibrary");
      v12 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:identifierCopy];
      v13 = [v12 dataForBundleResources:resourcesCopy];
      handlerCopy[2](handlerCopy, v13);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy passLocalizedStringForKey:(id)key uniqueID:(id)d completion:(id)completion
{
  keyCopy = key;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!proxy)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "passLocalizedStringForKey does not currently support async", v16, 2u);
      }
    }

    if ([(PDPassLibrary *)self _entitledForUniqueID:dCopy forActions:2])
    {
      v14 = [(PDCardFileManager *)self->_cardFileManager dataAccessorForObjectWithUniqueID:dCopy];
      v15 = [v14 passLocalizedStringForKey:keyCopy];
      completionCopy[2](completionCopy, v15);
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)getPassWithPassTypeID:(id)d serialNumber:(id)number handler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlerCopy)
  {
    v12 = handlerCopy;
    v10 = [(PDDatabaseManager *)self->_databaseManager passWithPassTypeID:d serialNumber:number];
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

  _objc_release_x1(handlerCopy, v9);
}

- (void)getManifestHashAndSettingsForPassTypeID:(id)d serialNumber:(id)number handler:(id)handler
{
  dCopy = d;
  numberCopy = number;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005F088;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = dCopy;
    v15 = numberCopy;
    v16 = handlerCopy;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005610;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }
}

- (void)replacePassWithPassData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F2E0;
  block[3] = &unk_10083D320;
  v12 = dataCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(v8, block);
}

- (void)_queue_replacePass:(id)pass handler:(id)handler
{
  passCopy = pass;
  handlerCopy = handler;
  v7 = PDDefaultQueue();
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  if (passCopy && [(PDPassLibrary *)self _entitledForObject:passCopy forActions:4])
  {
    passTypeIdentifier = [passCopy passTypeIdentifier];
    serialNumber = [passCopy serialNumber];
    if ([(PDDatabaseManager *)self->_databaseManager passExistsWithPassTypeID:passTypeIdentifier serialNumber:serialNumber])
    {
      v11 = [(PDCardFileManager *)self->_cardFileManager writeCard:passCopy source:4 error:0];
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
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getContentForUniqueID:(id)d withHandler:(id)handler
{
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PDPassLibrary *)self _entitledForUniqueID:dCopy forActions:2])
    {
      if (proxyCopy)
      {
        v10 = PDOSTransactionCreate("PDPassLibrary");
        v11 = objc_autoreleasePoolPush();
        v12 = [(PDCardFileManager *)self->_cardFileManager contentForUniqueID:dCopy];
        handlerCopy[2](handlerCopy, v12);

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
        v15 = handlerCopy;
        [(PDCardFileManager *)cardFileManager fetchContentForUniqueID:dCopy withCompletion:v14];

        goto LABEL_8;
      }
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)proxy getCachedImageSetContainerForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits handler:(id)handler
{
  proxyCopy = proxy;
  dCopy = d;
  profileCopy = profile;
  traitsCopy = traits;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (traitsCopy && [(PDPassLibrary *)self _entitledForUniqueID:dCopy forActions:2])
    {
      if (proxyCopy)
      {
        v18 = PDOSTransactionCreate("PDPassLibrary");
        v19 = objc_autoreleasePoolPush();
        v20 = [(PDCardFileManager *)self->_cardFileManager cachedImageSetContainerForUniqueID:dCopy type:type withDisplayProfile:profileCopy displayTraits:traitsCopy];
        handlerCopy[2](handlerCopy, v20);

        objc_autoreleasePoolPop(v19);
      }

      else
      {
        cardFileManager = self->_cardFileManager;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10005F790;
        v22[3] = &unk_10083F8F0;
        v23 = handlerCopy;
        [(PDCardFileManager *)cardFileManager fetchCachedImageSetContainerForUniqueID:dCopy type:type withDisplayProfile:profileCopy displayTraits:traitsCopy completion:v22];
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)getImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix handler:(id)handler
{
  handlerCopy = handler;
  v13 = handlerCopy;
  if (handlerCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005F8C4;
    v14[3] = &unk_10083F8F0;
    v15 = handlerCopy;
    [(PDPassLibrary *)self usingSynchronousProxy:0 getImageSetContainerForUniqueID:d type:type withDisplayProfile:profile suffix:suffix handler:v14];
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getImageSetContainerForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile suffix:(id)suffix handler:(id)handler
{
  proxyCopy = proxy;
  dCopy = d;
  profileCopy = profile;
  suffixCopy = suffix;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(PDPassLibrary *)self _entitledForUniqueID:dCopy forActions:2])
    {
      if (proxyCopy)
      {
        v18 = PDOSTransactionCreate("PDPassLibrary");
        v19 = objc_autoreleasePoolPush();
        v20 = [(PDCardFileManager *)self->_cardFileManager imageSetContainerForUniqueID:dCopy ofType:type withDisplayProfile:profileCopy suffix:suffixCopy];
        handlerCopy[2](handlerCopy, v20);

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
        v23 = handlerCopy;
        [(PDCardFileManager *)cardFileManager fetchImageSetContainerForUniqueID:dCopy ofType:type withDisplayProfile:profileCopy suffix:suffixCopy completion:v22];

        goto LABEL_8;
      }
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_8:
}

- (void)updateSettings:(unint64_t)settings forObjectWithUniqueID:(id)d
{
  dCopy = d;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FC34;
    block[3] = &unk_10083D690;
    block[4] = self;
    settingsCopy = settings;
    v10 = dCopy;
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

- (void)setSortingState:(int64_t)state forObjectWithUniqueID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005FD8C;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = dCopy;
    stateCopy = state;
    v14 = completionCopy;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7DFC();
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d handler:(id)handler
{
  enabledCopy = enabled;
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
    {
      if (dCopy)
      {
        handlerCopy[2](handlerCopy, [(PDPassLiveRenderManager *)self->_passLiveRenderManager updateLiveRenderingEnabled:enabledCopy forPassUniqueID:dCopy]);
      }

      else
      {
        handlerCopy[2](handlerCopy, 1uLL);
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

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address handler:(id)handler
{
  flightCopy = flight;
  addressCopy = address;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      [(PDFlightManager *)self->_flightManager addSharedFlight:flightCopy fromSenderAddress:addressCopy completion:handlerCopy];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7E30();
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)simulateFlightUpdate:(id)update forPassUniqueID:(id)d handler:(id)handler
{
  updateCopy = update;
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (dCopy)
      {
        handlerCopy[2](handlerCopy, [(PDFlightManager *)self->_flightManager simulateFlightUpdate:updateCopy forPassUniqueID:dCopy]);
      }

      else
      {
        handlerCopy[2](handlerCopy, 1uLL);
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7E64();
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)flightsWithScheduledDepartureFromStartDate:(id)date endDate:(id)endDate completion:(id)completion
{
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  if (completionCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) == 0)
    {
      completionCopy[2](completionCopy, 0);
    }

    v10 = [(PDFlightManager *)self->_flightManager flightsWithScheduledDepartureFromStartDate:dateCopy endDate:endDateCopy];
    (completionCopy)[2](completionCopy, v10);
  }
}

- (void)flightSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = completionCopy;
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) == 0)
    {
      v6[2](v6, 0);
    }

    flightSubscriptions = [(PDFlightManager *)self->_flightManager flightSubscriptions];
    (v6)[2](v6, flightSubscriptions);

    completionCopy = v6;
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy dynamicStateForPassUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      if (dCopy)
      {
        v9 = [(PDPassDynamicStateManager *)self->_dynamicStateManager passDynamicStateForUniqueIdentifier:dCopy];
        handlerCopy[2](handlerCopy, v9);

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

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_9:
}

- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)d
{
  dCopy = d;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100060438;
    v7[3] = &unk_10083C420;
    v7[4] = self;
    v8 = dCopy;
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

- (void)noteObjectSharedWithUniqueID:(id)d
{
  dCopy = d;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000605B4;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = dCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = dCopy;
  dispatch_async(v5, block);
}

- (void)addPassesWithData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v23 = PDOSTransactionCreate("PDPassLibrary");
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = dataCopy;
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
  v25 = handlerCopy;
  v20 = handlerCopy;
  [(PDPassLibrary *)self _usingSynchronousProxy:0 addPassesWithEnumerator:v18 estimatedNumberOfPasses:v19 osTransaction:v23 completionHandler:v24];
}

- (void)usingSynchronousProxy:(BOOL)proxy addPassesContainer:(id)container withCompletionHandler:(id)handler
{
  proxyCopy = proxy;
  containerCopy = container;
  handlerCopy = handler;
  v10 = PDOSTransactionCreate("PDPassLibrary");
  if (containerCopy && ![containerCopy unarchivePassesWithOptions:0 usingBlock:0])
  {
    v13 = v11;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100060BCC;
    v19[3] = &unk_10083F968;
    v14 = containerCopy;
    v20 = v14;
    v15 = objc_retainBlock(v19);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100060C8C;
    v16[3] = &unk_10083F9E0;
    v17 = v14;
    v18 = handlerCopy;
    [(PDPassLibrary *)self _usingSynchronousProxy:proxyCopy addPassesWithEnumerator:v15 estimatedNumberOfPasses:v13 osTransaction:v10 completionHandler:v16];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDPassLibrary (%p): could not extract passes from container for addPassesContainer:.", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 2);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy addPassIngestionPayloads:(id)payloads withCompletionHandler:(id)handler
{
  payloadsCopy = payloads;
  handlerCopy = handler;
  v9 = PDOSTransactionCreate("PDPassLibrary");
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100060E28;
  v16[3] = &unk_10083F968;
  v17 = payloadsCopy;
  v10 = payloadsCopy;
  v11 = objc_retainBlock(v16);
  v12 = [v10 count];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100060F8C;
  v14[3] = &unk_10083F990;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(PDPassLibrary *)self _usingSynchronousProxy:0 addPassesWithEnumerator:v11 estimatedNumberOfPasses:v12 osTransaction:v9 completionHandler:v14];
}

- (void)_usingSynchronousProxy:(BOOL)proxy addPassesWithEnumerator:(id)enumerator estimatedNumberOfPasses:(unint64_t)passes osTransaction:(id)transaction completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  transactionCopy = transaction;
  handlerCopy = handler;
  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    PKShowAlertForWalletUninstalled();
    handlerCopy[2](handlerCopy, 2);
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
    v40 = enumeratorCopy;
    v41 = handlerCopy;
    v39 = transactionCopy;
    dispatch_async(v14, block);

    v15 = v40;
LABEL_5:

    goto LABEL_14;
  }

  if ([(PDPassLibrary *)self _hasBackgroundAddPassesAuthorization])
  {
    _rateLimiter = [(PDPassLibrary *)self _rateLimiter];
    remoteProcessBundleIdentifier = [(PDPassLibrary *)self remoteProcessBundleIdentifier];
    v18 = [_rateLimiter proposeOperation:0 bundleIdentifier:remoteProcessBundleIdentifier tokens:passes];

    if (!v18)
    {
      v31 = PDDefaultQueue();
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100061624;
      v32[3] = &unk_10083FA30;
      v32[4] = self;
      v33 = enumeratorCopy;
      v34 = handlerCopy;
      dispatch_async(v31, v32);

      v15 = v33;
      goto LABEL_5;
    }
  }

  [(PDPassLibrary *)self remoteProcessIdentifier];
  v19 = PDLocalizedAppNameForPID();
  v42[0] = kCFUserNotificationAlternateButtonTitleKey;
  if (passes == 1)
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
  v24 = PKLocalizedString(@"ADD_PASSES_TITLE", @"%@%lu", v19, passes);
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
  v36 = handlerCopy;
  v37 = enumeratorCopy;
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

- (void)usingSynchronousProxy:(BOOL)proxy addUnsignedPassesWithDataFileDescriptors:(id)descriptors completionHandler:(id)handler
{
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000618EC;
    block[3] = &unk_10083F418;
    v17 = descriptorsCopy;
    selfCopy = self;
    v19 = handlerCopy;
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
    v11 = descriptorsCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 2);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler
{
  numbersCopy = numbers;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062054;
    block[3] = &unk_10083F418;
    v13 = numbersCopy;
    selfCopy = self;
    v15 = handlerCopy;
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

  if (handlerCopy)
  {
    v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)proxy availableHomeKeyPassesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v6 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000632A8;
    block[3] = &unk_10083D648;
    v10 = handlerCopy;
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

  if (handlerCopy)
  {
    v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v7);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)usingSynchronousProxy:(BOOL)proxy replaceUnsignedPassWithDataFileDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063A44;
    block[3] = &unk_10083F418;
    v12 = descriptorCopy;
    selfCopy = self;
    v14 = handlerCopy;
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

    [descriptorCopy invalidate];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy containsPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler
{
  identifierCopy = identifier;
  numberCopy = number;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v12 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100063DF0;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = identifierCopy;
    v16 = numberCopy;
    v17 = handlerCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy enableExpressForPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler
{
  identifierCopy = identifier;
  numberCopy = number;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]&& ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    v12 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100063FC4;
    v14[3] = &unk_10083E468;
    v14[4] = self;
    v15 = identifierCopy;
    v16 = numberCopy;
    v17 = handlerCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason handler:(id)handler
{
  dCopy = d;
  reasonCopy = reason;
  handlerCopy = handler;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000643EC;
  v15[3] = &unk_10083E468;
  v16 = dCopy;
  selfCopy = self;
  v18 = reasonCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = reasonCopy;
  v14 = dCopy;
  dispatch_async(v11, v15);
}

- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason handler:(id)handler
{
  dsCopy = ds;
  reasonCopy = reason;
  handlerCopy = handler;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064598;
  v15[3] = &unk_10083E468;
  v16 = dsCopy;
  selfCopy = self;
  v18 = reasonCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = reasonCopy;
  v14 = dsCopy;
  dispatch_async(v11, v15);
}

- (void)recoverPassWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000647F4;
  block[3] = &unk_10083D320;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(v8, block);
}

- (void)archivePassWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (PKManualArchiveEnabled())
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064940;
    block[3] = &unk_10083D320;
    v10 = dCopy;
    selfCopy = self;
    v12 = handlerCopy;
    dispatch_async(v8, block);
  }
}

- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v10 = PDDefaultQueue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064A98;
  v13[3] = &unk_10083F918;
  v13[4] = self;
  v14 = reasonCopy;
  v15 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = reasonCopy;
  dispatch_async(v10, v13);
}

- (void)resetApplePayWithDiagnosticReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064BF8;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = reasonCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = reasonCopy;
  dispatch_async(v8, block);
}

- (void)updateObjectWithUniqueIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D90;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = identifierCopy;
    v11 = handlerCopy;
    dispatch_async(v8, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)personalizePassWithUniqueIdentifier:(id)identifier contact:(id)contact personalizationToken:(id)token requiredPersonalizationFields:(unint64_t)fields personalizationSource:(unint64_t)source handler:(id)handler
{
  identifierCopy = identifier;
  contactCopy = contact;
  tokenCopy = token;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v18 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064F20;
    block[3] = &unk_10083FCD8;
    block[4] = self;
    v20 = identifierCopy;
    v21 = contactCopy;
    v22 = tokenCopy;
    fieldsCopy = fields;
    sourceCopy = source;
    v23 = handlerCopy;
    dispatch_async(v18, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode
{
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006500C;
    v6[3] = &unk_10083D700;
    v6[4] = self;
    v6[5] = mode;
    dispatch_async(v5, v6);
  }
}

- (void)fetchHasCandidatePasses:(id)passes
{
  passesCopy = passes;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100065154;
    v7[3] = &unk_10083C820;
    v7[4] = self;
    v8 = passesCopy;
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
    (*(passesCopy + 2))(passesCopy, 0);
  }
}

- (void)fetchCurrentRelevantPassInfo:(id)info
{
  infoCopy = info;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100065284;
    v6[3] = &unk_10083C820;
    v6[4] = self;
    v7 = infoCopy;
    dispatch_async(v5, v6);
  }

  else
  {
    (*(infoCopy + 2))(infoCopy, 0);
  }
}

- (void)migrateDataWithHandler:(id)handler didRestoreFromBackup:(BOOL)backup
{
  backupCopy = backup;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v7 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataMigrationRequestedWithPassLibrary:self didRestoreFromBackup:backupCopy];

    objc_autoreleasePoolPop(v7);
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7F0C();
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)setSecureElement:(id)element
{
  elementCopy = element;
  if (self->_secureElement != elementCopy)
  {
    v6 = elementCopy;
    objc_storeStrong(&self->_secureElement, element);
    elementCopy = v6;
  }
}

- (void)signData:(id)data forPassUniqueID:(id)d completion:(id)completion
{
  dataCopy = data;
  dCopy = d;
  completionCopy = completion;
  v11 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006557C;
  v15[3] = &unk_10083FD50;
  v16 = dCopy;
  selfCopy = self;
  v18 = dataCopy;
  v19 = completionCopy;
  v12 = dataCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(v11, v15);
}

- (void)usingSynchronousProxy:(BOOL)proxy createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  authCopy = auth;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v18 = PDDefaultQueue();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100065DB4;
    v21[3] = &unk_10083DD98;
    v21[4] = self;
    v22 = partyCopy;
    v23 = hashCopy;
    v24 = challengeCopy;
    v25 = authCopy;
    v26 = completionCopy;
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

    if (completionCopy)
    {
      v20 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v20);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v15 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065F64;
    block[3] = &unk_10083FD78;
    block[4] = self;
    v18 = partyCopy;
    v19 = hashCopy;
    v20 = keyHashCopy;
    v21 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)self0
{
  partyCopy = party;
  hashCopy = hash;
  keyHashCopy = keyHash;
  challengeCopy = challenge;
  identifierCopy = identifier;
  authCopy = auth;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v22 = PDDefaultQueue();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000661B0;
    v25[3] = &unk_10083FDA0;
    v25[4] = self;
    v26 = partyCopy;
    v27 = hashCopy;
    v28 = keyHashCopy;
    v29 = challengeCopy;
    v30 = identifierCopy;
    v31 = authCopy;
    v32 = completionCopy;
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

    if (completionCopy)
    {
      v24 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v24);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006636C;
    block[3] = &unk_10083D320;
    block[4] = self;
    v13 = idCopy;
    v14 = completionCopy;
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

    if (completionCopy)
    {
      v11 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v11);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066504;
    block[3] = &unk_10083D320;
    block[4] = self;
    v13 = idCopy;
    v14 = completionCopy;
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

    if (completionCopy)
    {
      v11 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  idCopy = id;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = idCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting key material for subcredential id: %@", buf, 0xCu);
    }

    v6 = PDDefaultQueue();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000666B0;
    v8[3] = &unk_10083C420;
    v8[4] = self;
    v9 = idCopy;
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

- (void)usingSynchronousProxy:(BOOL)proxy addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000668CC;
    v14[3] = &unk_10083F918;
    v14[4] = self;
    v15 = credentialsCopy;
    typeCopy = type;
    v16 = completionCopy;
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

    if (completionCopy)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion
{
  blobsCopy = blobs;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100066A6C;
    v14[3] = &unk_10083F918;
    v14[4] = self;
    v15 = blobsCopy;
    typeCopy = type;
    v16 = completionCopy;
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

    if (completionCopy)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v11 = PDDefaultQueue();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100066C10;
    v14[3] = &unk_10083E128;
    v14[4] = self;
    v15 = identifierCopy;
    existingCopy = existing;
    v16 = completionCopy;
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

    if (completionCopy)
    {
      v13 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion
{
  requirementsCopy = requirements;
  completionCopy = completion;
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
    v14 = requirementsCopy;
    v15 = completionCopy;
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

    if (completionCopy)
    {
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }
}

- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    v10 = PDDefaultQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100067108;
    v12[3] = &unk_10083F918;
    v12[4] = self;
    v13 = dataCopy;
    modeCopy = mode;
    v14 = handlerCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    }
  }
}

- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    (*(handler + 2))(handlerCopy, [(PDPassLibrary *)self _isWatchIssuerAppProvisioningSupported]);
  }
}

- (BOOL)_isWatchIssuerAppProvisioningSupported
{
  v2 = PKIsPairedWithWatch();
  if (v2)
  {
    v3 = objc_alloc_init(off_10091E2A0());
    isIssuerAppProvisioningSupported = [v3 isIssuerAppProvisioningSupported];

    LOBYTE(v2) = isIssuerAppProvisioningSupported;
  }

  return v2;
}

- (void)requestStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  whitelist = self->_whitelist;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)whitelist passesAllAccess])
  {
    completionCopy[2](completionCopy, [(_PDSystemPassRelevancyCoordinator *)self->_relevancyCoordinator stateOfPresentmentOfType:type containingPassUniqueIdentifier:identifierCopy]);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client missing proper entitlements", v12, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier newState:(unint64_t)state completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v12 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067500;
    block[3] = &unk_10083FE18;
    block[4] = self;
    typeCopy = type;
    v17 = identifierCopy;
    stateCopy = state;
    v18 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)backupMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preparing backup metadata", buf, 2u);
    }

    defaultPaymentPassIdentifier = [(PDDefaultPassManager *)self->_defaultPassManager defaultPaymentPassIdentifier];
    v7 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:defaultPaymentPassIdentifier];
    paymentPass = [v7 paymentPass];

    serialNumber = [paymentPass serialNumber];
    IsCurrentlyDeletedByUser = PKPassbookIsCurrentlyDeletedByUser();
    if (serialNumber)
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
    if (serialNumber)
    {
      [v14 setObject:serialNumber forKeyedSubscript:@"backupDataDefaultPaymentPassSerialNumberKey"];
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
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v18);
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_33:
}

- (void)setBackupMetadata:(id)metadata handler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    if (metadataCopy && [metadataCopy length])
    {
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
      v19 = 0;
      v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:metadataCopy error:&v19];
      v12 = v19;

      if (!v12 && v11 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v13 = v11;
        v14 = [v13 objectForKey:@"backupDataVersionNumberKey"];
        integerValue = [v14 integerValue];
        if (integerValue == 1)
        {
          [(PDPassLibrary *)self _setBackupDefaultPaymentPassState:v13];
        }

        else if (integerValue == 2)
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

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
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

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_28:
}

- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    PDWritePassdPreferencesToSafeHaven();
    if (handlerCopy)
    {
LABEL_3:
      handlerCopy[2](handlerCopy);
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

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler
{
  lsCopy = ls;
  handlesCopy = handles;
  handlerCopy = handler;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained prepareForBackupRestoreWithRequiredFileURLs:lsCopy destinationFileHandles:handlesCopy handler:handlerCopy];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "passd was asked to prepare for Buddy safe-haven by an unentitled process. Refusing.", v13, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)_setBackupDefaultPaymentPassState:(id)state
{
  v3 = [state PKStringForKey:@"backupDataDefaultPaymentPassSerialNumberKey"];
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

- (void)_setBackupPassbookDeletedState:(id)state
{
  v3 = [state PKNumberForKey:@"backupDataPassbookDeletedKey"];
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

- (void)usingSynchronousProxy:(BOOL)proxy canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion
{
  proxyCopy = proxy;
  configurationCopy = configuration;
  completionCopy = completion;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_retainBlock(completionCopy);
    *buf = 138412546;
    v24 = configurationCopy;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "canAddSecureElementPassWithConfiguration: called with configuration: %@ completion: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    if (configurationCopy)
    {
      [configurationCopy updateAllowManagedAppleIDWithEntitlements:self->_whitelist];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000682C4;
      v18[3] = &unk_10083FE68;
      v19 = configurationCopy;
      selfCopy = self;
      v21 = completionCopy;
      v22 = proxyCopy;
      v12 = objc_retainBlock(v18);
      v13 = v12;
      if (proxyCopy)
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
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion
{
  proxyCopy = proxy;
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    if (proxyCopy)
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
      v13 = configurationCopy;
      v14 = completionCopy;
      dispatch_async(v11, block);
    }
  }
}

- (void)canAddPushablePassWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning])
    {
      [(PDPushProvisioningManager *)self->_pushProvisioningManager isPushProvisioningSupportedForConfiguration:configurationCopy completion:completionCopy];
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
      completionCopy[2](completionCopy, 0, v9);
    }
  }
}

- (void)canAddClassicApplePayCredentialWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    configurationCopy = configuration;
    v8 = objc_alloc_init(PKProvisioningRequirementOracle);
    v9 = [v8 requirementsForAddSecureElementPassConfiguration:configurationCopy];

    recoverableRequirements = [v8 recoverableRequirements];
    v11 = [v9 requirementsByRemovingRequirements:recoverableRequirements];

    provisioningRequirementsChecker = self->_provisioningRequirementsChecker;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000689C4;
    v13[3] = &unk_10083FE90;
    v13[4] = self;
    v14 = completionCopy;
    [(PDProvisioningRequirementsChecker *)provisioningRequirementsChecker meetsWithRequirementsContainer:v11 completion:v13];
  }
}

- (void)canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([configurationCopy allowManagedAppleID] != 1)
    {
      v8 = +[PKAppleAccountManager sharedInstance];
      appleAccountInformation = [v8 appleAccountInformation];
      isManagedAppleAccount = [appleAccountInformation isManagedAppleAccount];

      if (isManagedAppleAccount)
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
      (*(completionCopy + 2))(completionCopy, 0, 0, v14);

      goto LABEL_13;
    }

    [(PDCarKeyRequirementsChecker *)self->_carKeyRequirementsChecker canAddCarKeyPassWithConfiguration:configurationCopy completion:completionCopy];
  }

LABEL_13:
}

- (void)canAddHomeKeyWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100068FF0;
    v24[3] = &unk_10083FEB8;
    v9 = completionCopy;
    v25 = v9;
    v10 = objc_retainBlock(v24);
    v11 = +[PKAppleAccountManager sharedInstance];
    appleAccountInformation = [v11 appleAccountInformation];
    if ([appleAccountInformation isManagedAppleAccount])
    {
      secureElementPassProvisioningForMAIDs = [(PKEntitlementWhitelist *)self->_whitelist secureElementPassProvisioningForMAIDs];

      if ((secureElementPassProvisioningForMAIDs & 1) == 0)
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
            sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServicesCoordinator sharedWebService];
            _appleAccountInformation = [sharedWebService _appleAccountInformation];

            if ([_appleAccountInformation aidaAccountAvailable])
            {
              v18 = PDDefaultQueue();
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 3221225472;
              v19[2] = sub_100069168;
              v19[3] = &unk_10083FFA0;
              v19[4] = self;
              v21 = v10;
              v20 = configurationCopy;
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

- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion
{
  proxyCopy = proxy;
  requirementsCopy = requirements;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0)
  {
    provisioningRequirementsChecker = self->_provisioningRequirementsChecker;
    if (provisioningRequirementsChecker)
    {
      if (proxyCopy)
      {
        [(PDProvisioningRequirementsChecker *)provisioningRequirementsChecker meetsWithRequirementsContainer:requirementsCopy completion:completionCopy];
      }

      else
      {
        v13 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000699D4;
        block[3] = &unk_10083D320;
        block[4] = self;
        v15 = requirementsCopy;
        v16 = completionCopy;
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

      (*(completionCopy + 2))(completionCopy, 1, 0);
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

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key completion:(id)completion
{
  identifierCopy = identifier;
  keyCopy = key;
  completionCopy = completion;
  passesAddUnsigned = [(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned];
  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (passesAddUnsigned)
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
    v17 = identifierCopy;
    v18 = keyCopy;
    v19 = completionCopy;
    dispatch_async(v15, v16);
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to call generateTransactionKeyWithReaderIdentifier, but missing proper entitlement.", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)number homeIdentifier:(id)identifier fromUnifiedAccessDescriptor:(id)descriptor andAliroDescriptor:(id)aliroDescriptor completion:(id)completion
{
  numberCopy = number;
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  aliroDescriptorCopy = aliroDescriptor;
  completionCopy = completion;
  passesAddUnsigned = [(PKEntitlementWhitelist *)self->_whitelist passesAddUnsigned];
  v19 = PKLogFacilityTypeGetObject();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (passesAddUnsigned)
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
    v23 = numberCopy;
    v24 = descriptorCopy;
    v25 = aliroDescriptorCopy;
    v26 = identifierCopy;
    v27 = completionCopy;
    dispatch_async(v21, v22);
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to call configureHomeAuxiliaryCapabilitiesForSerialNumber, but missing proper entitlement.", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy fetchHomePaymentApplicationsForSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  if (completionCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      v9 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006AF38;
      block[3] = &unk_10083D320;
      block[4] = self;
      v12 = numberCopy;
      v13 = completionCopy;
      dispatch_async(v9, block);
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1005B7FA8();
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning])
  {
    deviceRegistrationServiceCoordinator = self->_deviceRegistrationServiceCoordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006B9A4;
    v11[3] = &unk_1008400D0;
    v11[4] = self;
    countCopy = count;
    v12 = completionCopy;
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

    if (completionCopy)
    {
      v14 = NSDebugDescriptionErrorKey;
      v15 = @"client is not entitled";
      v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:v9];
      (*(completionCopy + 2))(completionCopy, 0, v10);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy configurePushProvisioningConfiguration:(id)configuration completion:(id)completion
{
  proxyCopy = proxy;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006BB54;
  v9[3] = &unk_1008400F8;
  completionCopy = completion;
  v8 = completionCopy;
  [(PDPassLibrary *)self usingSynchronousProxy:proxyCopy configurePushProvisioningConfigurationV2:configuration completion:v9];
}

- (void)usingSynchronousProxy:(BOOL)proxy configurePushProvisioningConfigurationV2:(id)v2 completion:(id)completion
{
  v2Copy = v2;
  completionCopy = completion;
  if (completionCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist shareableCredentialProvisioning]& 1) != 0 || ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
    {
      secureElementPassConfiguration = [v2Copy secureElementPassConfiguration];
      [secureElementPassConfiguration updateAllowManagedAppleIDWithEntitlements:self->_whitelist];

      [(PDPushProvisioningManager *)self->_pushProvisioningManager configurePushProvisioningConfiguration:v2Copy completion:completionCopy];
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
      completionCopy[2](completionCopy, 0, v12);
    }
  }
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
    {
      [(PDAppletSubcredentialManager *)self->_subcredentialManager startVehicleConnectionSessionWithPassUniqueIdentifier:identifierCopy completion:completionCopy];
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

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier withCompletion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
  {
    [(PDAppletSubcredentialManager *)self->_subcredentialManager sendRKEPassThroughData:messageCopy forSessionIdentifier:identifierCopy withCompletion:completionCopy];
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
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (([(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess]& 1) != 0)
    {
      [(PDAppletSubcredentialManager *)self->_subcredentialManager invalidateVehicleConnectionSessionForIdentifier:identifierCopy];
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

- (void)usingSynchronousProxy:(BOOL)proxy requestIssuerBoundPassesWithBindingWithData:(id)data automaticallyProvision:(BOOL)provision withCompletion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    issuerBindingManager = self->_issuerBindingManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006C208;
    v12[3] = &unk_100840148;
    provisionCopy = provision;
    v12[4] = self;
    v13 = completionCopy;
    [(PDIssuerBindingManager *)issuerBindingManager requestIssuerBoundPassesWithBindingWithData:data withCompletion:v12];
  }
}

- (void)presentIssuerBindingFlowForIssuerData:(id)data signature:(id)signature orientation:(id)orientation
{
  if (data)
  {
    if (signature)
    {
      sub_1005CBB58(self->_remoteInterfacePresenter, data, signature, orientation, 0);
    }
  }
}

- (BOOL)_hasBackgroundAddPassesAuthorization
{
  connection = [(PDPassLibrary *)self connection];
  v3 = connection;
  if (connection)
  {
    [connection auditToken];
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

- (void)contactlessInterfaceDidPresentFromSource:(int64_t)source
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy contactlessInterfaceDidPresentFromSource:source];
  }
}

- (void)contactlessInterfaceDidDismissFromSource:(int64_t)source
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy contactlessInterfaceDidDismissFromSource:source];
  }
}

- (void)sessionDidChangeConnectionStatus:(int64_t)status
{
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy vehicleConnectionDidUpdateConnectionState:status];
  }
}

- (void)sessionDidReceiveData:(id)data
{
  dataCopy = data;
  if (([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]& 1) != 0 || [(PKEntitlementWhitelist *)self->_whitelist carKeyPassThroughAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy vehicleConnectionDidRecievePassthroughData:dataCopy];
  }
}

- (void)issuerBindingFlowAuthenticationPerformed
{
  if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess])
  {
    remoteObjectProxy = [(PDPassLibrary *)self remoteObjectProxy];
    [remoteObjectProxy issuerBindingAuthenticationOccured];
  }
}

- (id)_sanitizePassIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(PDPassLibrary *)self willSanitizePasses])
  {
    paymentPass = [neededCopy paymentPass];
    [paymentPass sanitizePaymentApplications];
  }

  return neededCopy;
}

- (void)_sanitizePasses:(id)passes
{
  passesCopy = passes;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [passesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(passesCopy);
        }

        v9 = [(PDPassLibrary *)self _sanitizePassIfNeeded:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [passesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_entitlementFilteredPasses:(id)passes
{
  passesCopy = passes;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    [(PDPassLibrary *)self _sanitizePasses:passesCopy];
    v5 = passesCopy;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006C9A8;
    v8[3] = &unk_100840170;
    v8[4] = self;
    v5 = [passesCopy objectsPassingTest:v8];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_entitledForObject:(id)object forActions:(unint64_t)actions
{
  objectCopy = object;
  if (([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      passTypeIdentifier = [v8 passTypeIdentifier];
      teamID = [v8 teamID];
      associatedPassTypeIdentifiers = [v8 associatedPassTypeIdentifiers];
      if ([v8 passType] == 1)
      {
        associatedApplicationIdentifiers = [v8 associatedApplicationIdentifiers];
      }

      else
      {
        associatedApplicationIdentifiers = 0;
      }

      v7 = [(PKEntitlementWhitelist *)self->_whitelist entitledToPerformPassAction:actions passTypeID:passTypeIdentifier teamID:teamID associatedPassTypeIdentifiers:associatedPassTypeIdentifiers associatedApplicationIdentifiers:associatedApplicationIdentifiers];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_entitledForPassType:(unint64_t)type uniqueIdentifier:(id)identifier actions:(unint64_t)actions
{
  identifierCopy = identifier;
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
    v11 = [(PDDatabaseManager *)databaseManager getPassTypeID:&v20 teamID:&v19 associatedPassTypeIdentifiers:&v18 associatedApplicationIdentifiers:&v17 forUniqueID:identifierCopy];
    v12 = v20;
    v13 = v19;
    v14 = v18;
    v15 = v17;
    if (v11 && (type == -1 || PKPassTypeForPassTypeIdentifier() == type))
    {
      v9 = [(PKEntitlementWhitelist *)self->_whitelist entitledToPerformPassAction:actions passTypeID:v12 teamID:v13 associatedPassTypeIdentifiers:v14 associatedApplicationIdentifiers:v15];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_getPassWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CD30;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = dCopy;
    v11 = handlerCopy;
    dispatch_async(v8, block);
  }
}

- (void)_addPasses:(id)passes withCompletion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006CE00;
  v8[3] = &unk_10083F968;
  passesCopy = passes;
  v6 = passesCopy;
  completionCopy = completion;
  [(PDPassLibrary *)self _addPassesWithEnumerator:v8];
  completionCopy[2](completionCopy, 0);
}

- (unint64_t)_addPassesWithEnumerator:(id)enumerator firstPassUniqueID:(id *)d
{
  enumeratorCopy = enumerator;
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
  v12[7] = d;
  enumeratorCopy[2](enumeratorCopy, v12);
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

- (BOOL)_writePass:(id)pass error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  passCopy = pass;
  v13 = passCopy;
  errorCopy = error;
  PKTimeToPerformBlock();
  if (*(v16 + 24) == 1)
  {
    v7 = v6;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138543618;
      v20 = uniqueID;
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

- (BOOL)_writePass:(id)pass withSettings:(unint64_t)settings error:(id *)error
{
  passCopy = pass;
  v9 = [(PDPassLibrary *)self _writePass:passCopy error:error];
  if (v9)
  {
    databaseManager = self->_databaseManager;
    uniqueID = [passCopy uniqueID];
    [(PDDatabaseManager *)databaseManager updateSettings:settings forPassWithUniqueIdentifier:uniqueID];
  }

  return v9;
}

- (void)getDiffForPassUpdateUserNotificationWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    userNotificationManager = self->_userNotificationManager;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006D6D0;
    v10[3] = &unk_100840208;
    v11 = handlerCopy;
    [(PDUserNotificationManager *)userNotificationManager userNotificationWithIdentifier:identifierCopy completion:v10];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1005B8190();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)updateIngestedDate:(id)date forPassWithUniqueID:(id)d
{
  dateCopy = date;
  dCopy = d;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D90C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = dateCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = dateCopy;
  dispatch_async(v8, block);
}

- (void)noteAppleAccountChanged:(id)changed handler:(id)handler
{
  changedCopy = changed;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006DAE8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = changedCopy;
  v14 = handlerCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = handlerCopy;
  v11 = changedCopy;
  dispatch_async(v8, block);
}

- (void)noteACAccountChanged:(id)changed handler:(id)handler
{
  changedCopy = changed;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006E09C;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = changedCopy;
  v14 = handlerCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005610;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = handlerCopy;
  v11 = changedCopy;
  dispatch_async(v8, block);
}

- (void)shuffleGroups:(int)groups
{
  v5 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E218;
  v6[3] = &unk_100840230;
  v6[4] = self;
  groupsCopy = groups;
  dispatch_async(v5, v6);
}

- (void)issueWalletUserNotificationWithTitle:(id)title message:(id)message forPassUniqueIdentifier:(id)identifier customActionRoute:(id)route
{
  titleCopy = title;
  messageCopy = message;
  identifierCopy = identifier;
  routeCopy = route;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v14 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E3B4;
    block[3] = &unk_10083DE38;
    v16 = titleCopy;
    v17 = messageCopy;
    v18 = identifierCopy;
    v19 = routeCopy;
    selfCopy = self;
    dispatch_async(v14, block);
  }
}

- (void)pendingUserNotificationsWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E520;
    block[3] = &unk_10083D320;
    block[4] = self;
    v10 = identifierCopy;
    v11 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)updateDate:(id)date forPendingNotificationWithIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E674;
    block[3] = &unk_10083C4C0;
    block[4] = self;
    v10 = dateCopy;
    v11 = identifierCopy;
    dispatch_async(v8, block);
  }
}

- (void)insertInternalWalletMessageWithContent:(id)content badged:(BOOL)badged completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v10 = PDDefaultQueue();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006E784;
    v11[3] = &unk_10083E128;
    v11[4] = self;
    v12 = contentCopy;
    badgedCopy = badged;
    v13 = completionCopy;
    dispatch_async(v10, v11);
  }
}

- (void)deleteInternalWalletMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006E8BC;
    v6[3] = &unk_10083C420;
    v6[4] = self;
    v7 = identifierCopy;
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

- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)d
{
  dCopy = d;
  if ([(PKEntitlementWhitelist *)self->_whitelist passesAllAccess])
  {
    v5 = PDDefaultQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006EA44;
    v6[3] = &unk_10083C420;
    v6[4] = self;
    v7 = dCopy;
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

- (void)spotlightReindexAllContentWithAcknowledgement:(id)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006ED90;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = acknowledgementCopy;
  v6 = acknowledgementCopy;
  dispatch_async(v5, v7);
}

- (void)spotlightReindexContentWithIdentifiers:(id)identifiers acknowledgement:(id)acknowledgement
{
  identifiersCopy = identifiers;
  acknowledgementCopy = acknowledgement;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF1C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = acknowledgementCopy;
  v9 = acknowledgementCopy;
  v10 = identifiersCopy;
  dispatch_async(v8, block);
}

- (void)spotlightResetWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F088;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)spotlightStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F2E0;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)exportableManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PDHeavyQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F4A4;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)exportableCardEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FF78;
  block[3] = &unk_10083F418;
  v12 = entryCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = entryCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

- (PDPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end