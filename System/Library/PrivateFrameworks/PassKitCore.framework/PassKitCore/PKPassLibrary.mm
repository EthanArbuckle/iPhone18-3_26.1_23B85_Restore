@interface PKPassLibrary
+ (BOOL)contactlessInterfaceCanBePresentedFromSource:(int64_t)source;
+ (BOOL)contactlessInterfaceCanBePresentedFromSource:(int64_t)source deviceUILocked:(BOOL)locked;
+ (BOOL)isPassLibraryAvailable;
+ (BOOL)isSecureElementPassActivationAvailable;
+ (BOOL)isSuppressingAutomaticPassPresentation;
+ (PKPassLibrary)sharedInstance;
+ (PKSuppressionRequestToken)requestAutomaticPassPresentationSuppressionWithResponseHandler:(void *)responseHandler;
+ (id)sharedInstanceWithRemoteLibrary;
+ (void)endAutomaticPassPresentationSuppressionWithRequestToken:(PKSuppressionRequestToken)requestToken;
- (BOOL)_hasInterfaceOfType:(unint64_t)type;
- (BOOL)_hasRemoteLibrary;
- (BOOL)_setSetting:(unint64_t)setting enabled:(BOOL)enabled forPass:(id)pass;
- (BOOL)canAddFelicaPass;
- (BOOL)canAddPassOfType:(unint64_t)type;
- (BOOL)canAddSecureElementPassWithConfiguration:(id)configuration outError:(id *)error;
- (BOOL)canAddSecureElementPassWithPrimaryAccountIdentifier:(NSString *)primaryAccountIdentifier;
- (BOOL)containsPass:(PKPass *)pass;
- (BOOL)hasPassWithUniqueID:(id)d;
- (BOOL)hasPassesInExpiredSection;
- (BOOL)hasPassesOfType:(unint64_t)type;
- (BOOL)hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes webDomain:(id)domain paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request;
- (BOOL)hasProvisioningExtensionsWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes;
- (BOOL)hasSecureElementPassesOfType:(int64_t)type;
- (BOOL)iPadSupportsPasses;
- (BOOL)isPassbookVisible;
- (BOOL)isPaymentPassActivationAvailable;
- (BOOL)isRemovingPassesOfType:(unint64_t)type;
- (BOOL)isWatchIssuerAppProvisioningSupported;
- (BOOL)meetsProvisioningRequirements:(id)requirements missingRequirements:(id *)missingRequirements;
- (BOOL)migrateDataWithDidRestoreFromBackup:(BOOL)backup;
- (BOOL)passbookHasBeenDeleted;
- (BOOL)replacePassWithPass:(PKPass *)pass;
- (BOOL)resetApplePayWithDiagnosticReason:(id)reason;
- (BOOL)resetSettingsForPass:(id)pass;
- (BOOL)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier error:(id *)error;
- (NSArray)passes;
- (NSArray)passesOfType:(PKPassType)passType;
- (NSArray)remotePaymentPasses;
- (NSArray)remoteSecureElementPasses;
- (PKPass)passWithPassTypeIdentifier:(NSString *)identifier serialNumber:(NSString *)serialNumber;
- (PKPassLibrary)init;
- (PKPassLibrary)initWithMachServiceName:(id)name resumeNotificationName:(id)notificationName interfaceType:(unint64_t)type;
- (PKPassLibraryDelegate)delegate;
- (id)_copyPassesOfCardType:(int64_t)type;
- (id)_copyPassesOfStyles:(unint64_t)styles withRetries:(unint64_t)retries;
- (id)_copyPassesOfType:(unint64_t)type withRetries:(unint64_t)retries;
- (id)_copyPassesWithRetries:(unint64_t)retries;
- (id)_defaultPaymentPassForPaymentRequest:(id)request;
- (id)_defaultPaymentPassWithoutPaymentRequest;
- (id)_extendedRemoteObjectProxy;
- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)handler;
- (id)_filterPeerPaymentPass:(id)pass request:(id)request;
- (id)_inAppRemoteObjectProxy;
- (id)_inAppRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_inAppRemoteObjectProxyWithFailureHandler:(id)handler;
- (id)_initWithRemote:(id)remote;
- (id)_remoteLibrary;
- (id)_sortedPaymentPassesForPaymentRequest:(id)request additionalPaymentPasses:(id)passes;
- (id)_synchronousExtendedRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_synchronousInAppRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)archiveForObjectWithUniqueID:(id)d;
- (id)backupMetadata;
- (id)cachedImageSetForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits;
- (id)contentForUniqueID:(id)d;
- (id)dataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier;
- (id)dataForBundleResources:(id)resources objectUniqueIdentifier:(id)identifier;
- (id)defaultPaymentPassesWithRemotePasses:(BOOL)passes;
- (id)delegates;
- (id)diffForPassUpdateUserNotificationWithIdentifier:(id)identifier;
- (id)dynamicStateForPassUniqueID:(id)d;
- (id)expressFelicaTransitPasses;
- (id)flightSubscriptions;
- (id)flightsWithScheduledDepartureFromStartDate:(id)date endDate:(id)endDate;
- (id)identityPassesOfTypes:(id)types;
- (id)imageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix;
- (id)inAppPaymentPassesForPaymentRequest:(id)request;
- (id)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request;
- (id)inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request;
- (id)manifestHashForPassWithUniqueID:(id)d;
- (id)passForProvisioningCredentialHash:(id)hash;
- (id)passLocalizedStringForKey:(id)key uniqueID:(id)d;
- (id)passUniqueIDsForAssociatedApplicationIdentifier:(id)identifier;
- (id)passWithDPANIdentifier:(id)identifier;
- (id)passWithFPANIdentifier:(id)identifier;
- (id)passWithUniqueID:(id)d;
- (id)passesOfCardType:(int64_t)type;
- (id)passesOfStyles:(unint64_t)styles;
- (id)passesPendingActivation;
- (id)passesWithPrimaryPaymentApplicationStates:(id)states;
- (id)passesWithReaderIdentifier:(id)identifier;
- (id)paymentPassesWithLocallyStoredValue;
- (id)peerPaymentPassUniqueID;
- (int64_t)_currentNotificationCountForIdentifier:(id)identifier;
- (unint64_t)countPassesOfType:(unint64_t)type;
- (unint64_t)setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d;
- (unint64_t)simulateFlightUpdate:(id)update forPassUniqueID:(id)d;
- (unint64_t)stateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier;
- (void)_activateSecureElementPass:(id)pass withActivationCode:(id)code activationData:(id)data completion:(id)completion;
- (void)_applyDataAccessorToObject:(id)object;
- (void)_applyDataAccessorToObjects:(id)objects;
- (void)_fetchContentForUniqueID:(id)d usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion;
- (void)_fetchImageSetContainerForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion;
- (void)_fetchImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion;
- (void)_getGroupsControllerSnapshotWithOptions:(id)options synchronously:(BOOL)synchronously retries:(unint64_t)retries handler:(id)handler;
- (void)_getPassesAndCatalogOfPassTypes:(unint64_t)types synchronously:(BOOL)synchronously limitResults:(BOOL)results withRetries:(unint64_t)retries handler:(id)handler;
- (void)_postLibraryChangeWithUserInfo:(id)info;
- (void)activatePaymentPass:(PKPaymentPass *)paymentPass withActivationCode:(NSString *)activationCode completion:(void *)completion;
- (void)activateSecureElementPass:(PKSecureElementPass *)secureElementPass withActivationData:(NSData *)activationData completion:(void *)completion;
- (void)addDelegate:(id)delegate;
- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion;
- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion;
- (void)addPasses:(NSArray *)passes withCompletionHandler:(void *)completion;
- (void)addPassesContainer:(id)container withCompletionHandler:(id)handler;
- (void)addPassesWithData:(id)data withCompletionHandler:(id)handler;
- (void)addPassesWithIngestionPayloads:(id)payloads withCompletionHandler:(id)handler;
- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address completion:(id)completion;
- (void)addUnsignedPassesAtURLs:(id)ls withCompletionHandler:(id)handler;
- (void)archivePassWithUniqueID:(id)d;
- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler;
- (void)badgeCountItemsWithCompletion:(id)completion;
- (void)canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)canPresentPaymentRequest:(id)request completion:(id)completion;
- (void)candidateFlightsWithAirlineCode:(id)code flightNumber:(unint64_t)number date:(id)date completion:(id)completion;
- (void)catalogChanged:(id)changed withNewPasses:(id)passes states:(id)states;
- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion;
- (void)checkForTransitNotification;
- (void)configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)number homeIdentifier:(id)identifier fromUnifiedAccessDescriptor:(id)descriptor andAliroDescriptor:(id)aliroDescriptor completion:(id)completion;
- (void)configurePushProvisioningConfiguration:(id)configuration completion:(id)completion;
- (void)configurePushProvisioningConfigurationV2:(id)v2 completion:(id)completion;
- (void)contactlessInterfaceDidDismissFromSource:(int64_t)source;
- (void)contactlessInterfaceDidPresentFromSource:(int64_t)source;
- (void)containsPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler;
- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion;
- (void)dealloc;
- (void)deleteAllInternalWalletMessages;
- (void)deleteInternalWalletMessageWithIdentifier:(id)identifier;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)enableExpressForPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler;
- (void)enabledValueAddedServicePassesWithCompletion:(id)completion;
- (void)encryptedServiceProviderDataForSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion;
- (void)exportableCardEntry:(id)entry completion:(id)completion;
- (void)exportableManifestWithCompletion:(id)completion;
- (void)fetchCurrentRelevantPassInfo:(id)info;
- (void)fetchHasCandidatePasses:(id)passes;
- (void)fetchHomePaymentApplicationsForSerialNumber:(id)number completion:(id)completion;
- (void)fetchTransactionKeyForPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler;
- (void)forceImmediateRevocationCheck;
- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key completion:(id)completion;
- (void)getContainmentStatusAndSettingsForPass:(id)pass withHandler:(id)handler;
- (void)getMetadataForFieldWithProperties:(id)properties withHandler:(id)handler;
- (void)getPassesWithUniqueIdentifiers:(id)identifiers handler:(id)handler;
- (void)hasInAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler;
- (void)insertInternalWalletMessageWithContent:(id)content badged:(BOOL)badged completion:(id)completion;
- (void)introduceDatabaseIntegrityProblem;
- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier;
- (void)issueWalletUserNotificationWithTitle:(id)title message:(id)message forPassUniqueIdentifier:(id)identifier customActionRoute:(id)route;
- (void)issuerBindingAuthenticationOccured;
- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion;
- (void)meetsProvisioningRequirements:(id)requirements completion:(id)completion;
- (void)noteACAccountChanged:(id)changed;
- (void)noteAppleAccountChanged:(id)changed;
- (void)noteObjectSharedWithUniqueID:(id)d;
- (void)notifyPassUsedWithIdentifier:(id)identifier fromSource:(int64_t)source;
- (void)openPaymentSetup;
- (void)openPaymentSetupForMerchantIdentifier:(id)identifier domain:(id)domain completion:(id)completion;
- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier newState:(unint64_t)state completion:(id)completion;
- (void)passAdded:(id)added;
- (void)passArchived:(id)archived;
- (void)passRecovered:(id)recovered;
- (void)passRemoved:(id)removed;
- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion;
- (void)passUpdated:(id)updated;
- (void)passesWithSearchableTransactions:(id)transactions;
- (void)paymentPassWithAssociatedAccountIdentifier:(id)identifier completion:(id)completion;
- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion;
- (void)pendingUserNotificationsWithIdentifier:(id)identifier completion:(id)completion;
- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data;
- (void)prepareForBackupRestoreWithSafeHavenPath:(id)path;
- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)source completion:(id)completion;
- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source completion:(id)completion;
- (void)presentIssuerBindingFlowForIssuerData:(id)data signature:(id)signature orientation:(id)orientation;
- (void)presentPaymentSetupRequest:(id)request orientation:(id)orientation completion:(id)completion;
- (void)presentSecureElementPass:(PKSecureElementPass *)pass;
- (void)presentWalletWithRelevantPassUniqueID:(id)d;
- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler;
- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion;
- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode;
- (void)recoverPassWithUniqueID:(id)d;
- (void)refreshActiveOrScheduledFlights;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)removeAllScheduledActivities;
- (void)removeDelegate:(id)delegate;
- (void)removePass:(PKPass *)pass;
- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason;
- (void)removePasses:(id)passes;
- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason;
- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason completion:(id)completion;
- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason;
- (void)replaceUnsignedPassAtURL:(id)l withCompletionHandler:(id)handler;
- (void)requestIssuerBoundPassesWithBindingWithData:(id)data automaticallyProvision:(BOOL)provision withCompletion:(id)completion;
- (void)requestPersonalizationOfPassWithUniqueIdentifier:(id)identifier contact:(id)contact personalizationToken:(id)token requiredPersonalizationFields:(unint64_t)fields personalizationSource:(unint64_t)source handler:(id)handler;
- (void)requestUpdateOfObjectWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)d;
- (void)resetApplePayWithDiagnosticReason:(id)reason completion:(id)completion;
- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)d;
- (void)sendUserEditedCatalog:(id)catalog;
- (void)serviceProviderDataForSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion;
- (void)setBackupMetadata:(id)metadata;
- (void)setDelegate:(id)delegate;
- (void)setSortingState:(int64_t)state forObjectWithUniqueID:(id)d withCompletion:(id)completion;
- (void)shuffleGroups:(int)groups;
- (void)signData:(NSData *)signData withSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion;
- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion;
- (void)sortedTransitPassesForAppletDataFormat:(id)format completion:(id)completion;
- (void)sortedTransitPassesForTransitNetworkIdentifiersWithCompletion:(id)completion;
- (void)spotlightReindexAllContentWithAcknowledgement:(id)acknowledgement;
- (void)spotlightReindexContentWithIdentifiers:(id)identifiers acknowledgement:(id)acknowledgement;
- (void)spotlightResetWithCompletion:(id)completion;
- (void)spotlightStatusWithCompletion:(id)completion;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)unexpiredPassesOrderedByGroup:(id)group;
- (void)updateDate:(id)date forPendingNotificationWithIdentifier:(id)identifier;
- (void)updateIngestedDate:(id)date forPassWithUniqueID:(id)d;
- (void)updateSettings:(unint64_t)settings forObjectWithUniqueID:(id)d;
- (void)vehicleConnectionDidRecievePassthroughData:(id)data;
- (void)vehicleConnectionDidUpdateConnectionState:(int64_t)state;
@end

@implementation PKPassLibrary

- (PKPassLibrary)init
{
  v3 = [[PKPassLibrary alloc] initWithMachServiceName:@"com.apple.NPKCompanionAgent.library" resumeNotificationName:@"com.apple.NPKCompanionAgent.listener.resumed" interfaceType:0];
  v4 = [(PKPassLibrary *)self _initWithRemote:v3];

  return v4;
}

- (BOOL)_hasRemoteLibrary
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  remoteLibrary = self->_remoteLibrary;
  v13 = remoteLibrary != 0;
  if (remoteLibrary)
  {
    v4 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "PKPassLibrary: checking remote library...", buf, 2u);
    }

    v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__PKPassLibrary__hasRemoteLibrary__block_invoke;
    v9[3] = &unk_1E79C4798;
    v9[4] = &v10;
    [v5 hasRemoteLibraryWithHandler:v9];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (*(v11 + 24))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *buf = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "PKPassLibrary: has remote library: %{public}@.", buf, 0xCu);
    }

    v6 = *(v11 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6 & 1;
}

+ (PKPassLibrary)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PKPassLibrary_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6D1868 != -1)
  {
    dispatch_once(&qword_1ED6D1868, block);
  }

  v2 = qword_1ED6D1870;

  return v2;
}

void __31__PKPassLibrary_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initWithRemote:0];
  v2 = qword_1ED6D1870;
  qword_1ED6D1870 = v1;
}

- (id)passesPendingActivation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PKPassLibrary_passesPendingActivation__block_invoke;
  v5[3] = &unk_1E79C47E8;
  v5[4] = &v6;
  [v2 usingSynchronousProxy:1 getPaymentPassesPendingActivationWithHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__PKPassLibrary_passesPendingActivation__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (BOOL)isPassLibraryAvailable
{
  if (dyld_program_sdk_at_least())
  {
    IsAvailable = PKDaemonIsAvailable();
  }

  else
  {
    IsAvailable = PKPassbookIsSupported();
  }

  return IsAvailable != 0;
}

+ (BOOL)isSecureElementPassActivationAvailable
{
  v2 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
  v3 = v2;
  if (v2)
  {
    isPaymentPassActivationAvailable = [v2 isPaymentPassActivationAvailable];
  }

  else
  {
    isPaymentPassActivationAvailable = 0;
  }

  return isPaymentPassActivationAvailable;
}

+ (PKSuppressionRequestToken)requestAutomaticPassPresentationSuppressionWithResponseHandler:(void *)responseHandler
{
  v3 = responseHandler;
  if (PKApplicationIsInBackground())
  {
    v4 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "+[PKPassLibrary requestAutomaticPassPresentationSuppressionWithResponseHandler:] must not be called while the application is in the background.", buf, 2u);
    }

    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PKPassLibrary_requestAutomaticPassPresentationSuppressionWithResponseHandler___block_invoke;
      block[3] = &unk_1E79C4428;
      v9 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v5 = 0;
  }

  else
  {
    v6 = +[PKAutomaticPassPresentationSuppressor sharedInstance];
    v5 = [v6 requestSuppressionWithResponseHandler:v3];
  }

  return v5;
}

+ (void)endAutomaticPassPresentationSuppressionWithRequestToken:(PKSuppressionRequestToken)requestToken
{
  v4 = +[PKAutomaticPassPresentationSuppressor sharedInstance];
  [v4 endSuppressionWithRequestToken:requestToken];
}

+ (BOOL)isSuppressingAutomaticPassPresentation
{
  v2 = +[PKAutomaticPassPresentationSuppressor sharedInstance];
  isSuppressing = [v2 isSuppressing];

  return isSuppressing;
}

+ (id)sharedInstanceWithRemoteLibrary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PKPassLibrary_sharedInstanceWithRemoteLibrary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_198 != -1)
  {
    dispatch_once(&_MergedGlobals_198, block);
  }

  v2 = qword_1ED6D1860;

  return v2;
}

void __48__PKPassLibrary_sharedInstanceWithRemoteLibrary__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D1860;
  qword_1ED6D1860 = v1;
}

- (id)_initWithRemote:(id)remote
{
  remoteCopy = remote;
  kdebug_trace();
  if (PKDaemonIsAvailable())
  {
    v6 = [(PKPassLibrary *)self initWithMachServiceName:@"com.apple.passd.library" resumeNotificationName:@"com.apple.passd.listener.resumed" interfaceType:2];
    v7 = v6;
    if (v6)
    {
      if (remoteCopy)
      {
        objc_storeStrong(&v6->_remoteLibrary, remote);
        objc_initWeak(&location, v7);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        remoteLibrary = v7->_remoteLibrary;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __33__PKPassLibrary__initWithRemote___block_invoke;
        v13[3] = &unk_1E79CA788;
        objc_copyWeak(&v14, &location);
        v10 = [defaultCenter addObserverForName:@"PKPassLibraryDidChangeNotification" object:remoteLibrary queue:0 usingBlock:v13];
        remoteLibraryObserver = v7->_remoteLibraryObserver;
        v7->_remoteLibraryObserver = v10;

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      kdebug_trace();
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

void __33__PKPassLibrary__initWithRemote___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [v6 userInfo];
    [v4 postNotificationName:@"PKPassLibraryRemotePaymentPassesDidChange" object:WeakRetained userInfo:v5];
  }
}

- (PKPassLibrary)initWithMachServiceName:(id)name resumeNotificationName:(id)notificationName interfaceType:(unint64_t)type
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  v20.receiver = self;
  v20.super_class = PKPassLibrary;
  v10 = [(PKPassLibrary *)&v20 init];
  if (v10)
  {
    if (type == 1)
    {
      v11 = PDPassLibraryInAppInterface();
    }

    else
    {
      if (type == 2)
      {
        PDPassLibraryExtendedInterface();
      }

      else
      {
        PDPassLibraryInterface();
      }
      v11 = ;
    }

    v12 = v11;
    v10->_delegatesLock._os_unfair_lock_opaque = 0;
    v13 = dispatch_queue_create("com.apple.passkit.asynchronousImage", 0);
    asynchronousImageQueue = v10->_asynchronousImageQueue;
    v10->_asynchronousImageQueue = v13;

    v10->_interfaceType = type;
    v15 = [PKXPCService alloc];
    v16 = PKPassLibraryInterface();
    v17 = [(PKXPCService *)v15 initWithMachServiceName:nameCopy remoteObjectInterface:v12 exportedObjectInterface:v16 exportedObject:v10 serviceResumedNotificationName:notificationNameCopy];
    remoteService = v10->_remoteService;
    v10->_remoteService = v17;

    [(PKXPCService *)v10->_remoteService setDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  if (self->_remoteLibraryObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_remoteLibraryObserver];
  }

  v4.receiver = self;
  v4.super_class = PKPassLibrary;
  [(PKPassLibrary *)&v4 dealloc];
}

- (id)_extendedRemoteObjectProxy
{
  if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
  {
    remoteObjectProxy = [(PKXPCService *)self->_remoteService remoteObjectProxy];
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E696A790];
    v6 = [(PKPassLibrary *)self description];
    [v4 raise:v5 format:{@"%@ is not backed by an extended interface", v6}];

    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithFailureHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_synchronousExtendedRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
  {
    v5 = [(PKXPCService *)self->_remoteService synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_inAppRemoteObjectProxy
{
  if ([(PKPassLibrary *)self _hasInterfaceOfType:1])
  {
    remoteObjectProxy = [(PKXPCService *)self->_remoteService remoteObjectProxy];
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E696A790];
    v6 = [(PKPassLibrary *)self description];
    [v4 raise:v5 format:{@"%@ is not backed by an in-app interface", v6}];

    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

- (id)_inAppRemoteObjectProxyWithFailureHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithFailureHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an in-app interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_inAppRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an in-app interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_synchronousInAppRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPassLibrary *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an in-app interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  os_unfair_lock_lock(&self->_delegatesLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(NSHashTable *)self->_delegates removeObject:WeakRetained];
    }

    v5 = obj;
    if (obj)
    {
      delegates = self->_delegates;
      if (!delegates)
      {
        pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
        v8 = self->_delegates;
        self->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

        delegates = self->_delegates;
      }

      [(NSHashTable *)delegates addObject:?];
      v5 = obj;
    }

    objc_storeWeak(&self->_delegate, v5);
  }

  os_unfair_lock_unlock(&self->_delegatesLock);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v8 = delegateCopy;
    os_unfair_lock_lock(&self->_delegatesLock);
    delegates = self->_delegates;
    if (!delegates)
    {
      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v7 = self->_delegates;
      self->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

      delegates = self->_delegates;
    }

    [(NSHashTable *)delegates addObject:v8];
    os_unfair_lock_unlock(&self->_delegatesLock);
    delegateCopy = v8;
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

- (id)delegates
{
  os_unfair_lock_lock(&self->_delegatesLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_delegatesLock);

  return v4;
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PKPassLibrary_remoteService_didInterruptConnection___block_invoke;
  v4[3] = &unk_1E79C9D80;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__PKPassLibrary_remoteService_didInterruptConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [WeakRetained delegates];
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
          [v7 passLibraryReceivedInterruption];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (NSArray)passes
{
  v2 = [(PKPassLibrary *)self _copyPassesWithRetries:2];

  return v2;
}

- (NSArray)passesOfType:(PKPassType)passType
{
  v3 = [(PKPassLibrary *)self _copyPassesOfType:passType withRetries:2];

  return v3;
}

- (void)badgeCountItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PKPassLibrary_badgeCountItemsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C5468;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 badgeCountItemsWithCompletion:v7];
}

- (id)passesOfStyles:(unint64_t)styles
{
  v3 = [(PKPassLibrary *)self _copyPassesOfStyles:styles withRetries:2];

  return v3;
}

- (id)passesOfCardType:(int64_t)type
{
  v3 = [(PKPassLibrary *)self _copyPassesOfCardType:type];

  return v3;
}

- (id)identityPassesOfTypes:(id)types
{
  v30 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__PKPassLibrary_identityPassesOfTypes___block_invoke;
  v13[3] = &unk_1E79CA7B0;
  v13[4] = &v14;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PKPassLibrary_identityPassesOfTypes___block_invoke_2;
  v12[3] = &unk_1E79CA7D8;
  v12[4] = self;
  v12[5] = &v20;
  [v5 getIdentityPassesOfTypes:typesCopy handler:v12];
  v6 = v15[5];
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 138412546;
      v27 = typesCopy;
      v28 = 2114;
      v29 = localizedDescription;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Error retrieving identity passes of types %@: %{public}@", buf, 0x16u);
    }
  }

  v8 = v21[5];
  if (!v8)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

uint64_t __39__PKPassLibrary_identityPassesOfTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 _applyDataAccessorToObjects:v7];
}

- (id)passWithUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__PKPassLibrary_passWithUniqueID___block_invoke;
  v8[3] = &unk_1E79CAC80;
  v8[4] = self;
  v8[5] = &v9;
  [v5 getPassWithUniqueID:dCopy handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __34__PKPassLibrary_passWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObject:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)hasPassWithUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PKPassLibrary_hasPassWithUniqueID___block_invoke;
  v8[3] = &unk_1E79C4798;
  v8[4] = &v9;
  [v5 hasPassWithUniqueID:dCopy handler:v8];
  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)passWithFPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  if ([identifierCopy length])
  {
    v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PKPassLibrary_passWithFPANIdentifier___block_invoke;
    v8[3] = &unk_1E79CAF28;
    v8[4] = self;
    v8[5] = &v9;
    [v5 passWithFPANIdentifier:identifierCopy handler:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__PKPassLibrary_passWithFPANIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObject:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)passWithDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  if ([identifierCopy length])
  {
    v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PKPassLibrary_passWithDPANIdentifier___block_invoke;
    v8[3] = &unk_1E79CAF28;
    v8[4] = self;
    v8[5] = &v9;
    [v5 passWithDPANIdentifier:identifierCopy handler:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__PKPassLibrary_passWithDPANIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObject:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getPassesWithUniqueIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([identifiersCopy count])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__PKPassLibrary_getPassesWithUniqueIdentifiers_handler___block_invoke;
      v13[3] = &unk_1E79C4658;
      v15 = a2;
      v9 = handlerCopy;
      v13[4] = self;
      v14 = v9;
      v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__PKPassLibrary_getPassesWithUniqueIdentifiers_handler___block_invoke_133;
      v11[3] = &unk_1E79C4838;
      v11[4] = self;
      v12 = v9;
      [v10 getPassesWithUniqueIdentifiers:identifiersCopy handler:v11];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
    }
  }
}

uint64_t __56__PKPassLibrary_getPassesWithUniqueIdentifiers_handler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __56__PKPassLibrary_getPassesWithUniqueIdentifiers_handler___block_invoke_133(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _applyDataAccessorToObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)passesWithSearchableTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v6 = transactionsCopy;
  if (transactionsCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__PKPassLibrary_passesWithSearchableTransactions___block_invoke;
    v11[3] = &unk_1E79C4658;
    v13 = a2;
    v7 = transactionsCopy;
    v11[4] = self;
    v12 = v7;
    v8 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__PKPassLibrary_passesWithSearchableTransactions___block_invoke_135;
    v9[3] = &unk_1E79C4810;
    v9[4] = self;
    v10 = v7;
    [v8 getPassesWithSearchableTransactions:v9];
  }
}

void __50__PKPassLibrary_passesWithSearchableTransactions___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E695DFD8] set];
  (*(v4 + 16))(v4, v5);
}

void __50__PKPassLibrary_passesWithSearchableTransactions___block_invoke_135(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _applyDataAccessorToObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)passUniqueIDsForAssociatedApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  if ([identifierCopy length])
  {
    v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKPassLibrary_passUniqueIDsForAssociatedApplicationIdentifier___block_invoke;
    v8[3] = &unk_1E79C47E8;
    v8[4] = &v9;
    [v5 getPassUniqueIDsForAssociatedApplicationIdentifier:identifierCopy handler:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)getMetadataForFieldWithProperties:(id)properties withHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__PKPassLibrary_getMetadataForFieldWithProperties_withHandler___block_invoke;
    v14[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = handlerCopy;
    v14[4] = self;
    v15 = v9;
    propertiesCopy = properties;
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPassLibrary_getMetadataForFieldWithProperties_withHandler___block_invoke_136;
    v12[3] = &unk_1E79CA800;
    v12[4] = self;
    v13 = v9;
    [v11 getMetadataForFieldWithProperties:propertiesCopy handler:v12];
  }
}

uint64_t __63__PKPassLibrary_getMetadataForFieldWithProperties_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)manifestHashForPassWithUniqueID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PKPassLibrary_manifestHashForPassWithUniqueID___block_invoke;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = a2;
  v6 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PKPassLibrary_manifestHashForPassWithUniqueID___block_invoke_139;
  v9[3] = &unk_1E79CA828;
  v9[4] = &v11;
  [v6 usingSynchronousProxy:1 getManifestHashForPassWithUniqueID:dCopy handler:v9];
  v7 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __49__PKPassLibrary_manifestHashForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (PKPass)passWithPassTypeIdentifier:(NSString *)identifier serialNumber:(NSString *)serialNumber
{
  v6 = identifier;
  v7 = serialNumber;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v8 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PKPassLibrary_passWithPassTypeIdentifier_serialNumber___block_invoke;
  v11[3] = &unk_1E79CA850;
  v11[4] = &v12;
  [v8 getPassWithPassTypeID:v6 serialNumber:v7 handler:v11];
  [(PKPassLibrary *)self _applyDataAccessorToObject:v13[5]];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)passesWithReaderIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__PKPassLibrary_passesWithReaderIdentifier___block_invoke;
  v16[3] = &unk_1E79C47E8;
  v16[4] = &v17;
  [v5 getPassesWithReaderIdentifier:identifierCopy handler:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v18[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(PKPassLibrary *)self _applyDataAccessorToObject:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v7);
  }

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (id)passesWithPrimaryPaymentApplicationStates:(id)states
{
  v24 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKPassLibrary_passesWithPrimaryPaymentApplicationStates___block_invoke;
  v16[3] = &unk_1E79C47E8;
  v16[4] = &v17;
  [v5 passesWithPrimaryPaymentApplicationStates:statesCopy handler:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v18[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(PKPassLibrary *)self _applyDataAccessorToObject:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v7);
  }

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (NSArray)remotePaymentPasses
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(PKPassLibrary *)self _hasRemoteLibrary])
  {
    v3 = [(PKPassLibrary *)self->_remoteLibrary passesOfType:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        paymentPass = [*(*(&v13 + 1) + 8 * i) paymentPass];
        if (paymentPass)
        {
          [v4 addObject:paymentPass];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (NSArray)remoteSecureElementPasses
{
  if ([(PKPassLibrary *)self _hasRemoteLibrary])
  {
    v3 = [(PKPassLibrary *)self->_remoteLibrary passesOfType:1];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasPassesOfType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__PKPassLibrary_hasPassesOfType___block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v4 hasPassesOfType:type handler:v6];
  LOBYTE(type) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return type;
}

- (BOOL)hasPassesInExpiredSection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PKPassLibrary_hasPassesInExpiredSection__block_invoke;
  v5[3] = &unk_1E79C4798;
  v5[4] = &v6;
  [v2 hasPassesInExpiredSectionWithHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)paymentPassesWithLocallyStoredValue
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([(PKPassLibrary *)self hasPassesOfType:1])
  {
    v4 = [(PKPassLibrary *)self passesOfType:1];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (([v9 isStoredValuePass] & 1) == 0)
          {
            devicePrimaryPaymentApplication = [v9 devicePrimaryPaymentApplication];
            supportsTransitHistory = [devicePrimaryPaymentApplication supportsTransitHistory];

            if (!supportsTransitHistory)
            {
              continue;
            }
          }

          [array addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v12 = [array copy];

  return v12;
}

- (id)peerPaymentPassUniqueID
{
  if ((PKUseMockSURFServer() & 1) != 0 || PKStoreDemoModeEnabled())
  {
    v3 = PKMockPeerPaymentPassPassTypeID();
    v4 = PKMockPeerPaymentPassSerialNumber();
    v5 = PKGeneratePassUniqueID(v3, v4);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__10;
    v13 = __Block_byref_object_dispose__10;
    v14 = 0;
    v6 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PKPassLibrary_peerPaymentPassUniqueID__block_invoke;
    v8[3] = &unk_1E79CA878;
    v8[4] = &v9;
    [v6 peerPaymentPassUniqueIDWithHandler:v8];
    v5 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (unint64_t)countPassesOfType:(unint64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PKPassLibrary_countPassesOfType___block_invoke;
  v7[3] = &unk_1E79C46D0;
  v7[4] = &v8;
  [v4 countPassesOfType:type handler:v7];
  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)canAddPassOfType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PKPassLibrary_canAddPassOfType___block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v4 canAddPassesOfType:type handler:v6];
  LOBYTE(type) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return type;
}

- (BOOL)canAddSecureElementPassWithPrimaryAccountIdentifier:(NSString *)primaryAccountIdentifier
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = primaryAccountIdentifier;
  if (v4)
  {
    v5 = [[PKAddSecureElementPassConfiguration alloc] initWithType:5];
    if ([(PKPassLibrary *)self canAddSecureElementPassWithConfiguration:v5])
    {
      if (PKSecureElementIsAvailable())
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v6 = 1;
        v7 = [(PKPassLibrary *)self passesOfType:1];
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              primaryAccountIdentifier = [v12 primaryAccountIdentifier];
              v14 = [primaryAccountIdentifier isEqualToString:v4];

              if (v14 && [v12 activationState] <= 3)
              {

                goto LABEL_16;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v6 = 1;
        }

        goto LABEL_30;
      }

LABEL_16:
      if ([(PKPassLibrary *)self _hasRemoteLibrary]&& [(PKPassLibrary *)self isWatchIssuerAppProvisioningSupported])
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = 1;
        v7 = [(PKPassLibrary *)self->_remoteLibrary passesOfType:1, 0];
        v15 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v7);
              }

              v19 = *(*(&v23 + 1) + 8 * j);
              primaryAccountIdentifier2 = [v19 primaryAccountIdentifier];
              v21 = [primaryAccountIdentifier2 isEqualToString:v4];

              if (v21 && [v19 activationState] < 4)
              {
                v6 = 0;
                goto LABEL_30;
              }
            }

            v16 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
            v6 = 1;
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    v6 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v6 = 0;
LABEL_32:

  return v6;
}

- (BOOL)canAddFelicaPass
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__PKPassLibrary_canAddFelicaPass__block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v3 canAddFelicaPassWithHandler:v6];
  if (v8[3])
  {
    canAddFelicaPass = 1;
  }

  else
  {
    if ([(PKPassLibrary *)self _hasRemoteLibrary])
    {
      canAddFelicaPass = [(PKPassLibrary *)self->_remoteLibrary canAddFelicaPass];
    }

    else
    {
      canAddFelicaPass = 0;
    }

    *(v8 + 24) = canAddFelicaPass;
  }

  _Block_object_dispose(&v7, 8);
  return canAddFelicaPass;
}

- (BOOL)isRemovingPassesOfType:(unint64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PKPassLibrary_isRemovingPassesOfType___block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v4 isRemovingPassesOfType:type handler:v6];
  LOBYTE(type) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return type;
}

- (BOOL)hasSecureElementPassesOfType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPassLibrary_hasSecureElementPassesOfType___block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v4 hasSecureElementPassesOfType:type handler:v6];
  LOBYTE(type) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return type;
}

- (BOOL)isPassbookVisible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PKPassLibrary_isPassbookVisible__block_invoke;
  v5[3] = &unk_1E79C4798;
  v5[4] = &v6;
  [v2 isPassbookVisibleWithHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)passbookHasBeenDeleted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PKPassLibrary_passbookHasBeenDeleted__block_invoke;
  v5[3] = &unk_1E79C4798;
  v5[4] = &v6;
  [v2 passbookHasBeenDeletedWithHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)iPadSupportsPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PKPassLibrary_iPadSupportsPasses__block_invoke;
  v5[3] = &unk_1E79C4798;
  v5[4] = &v6;
  [v2 iPadSupportsPasses:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)inAppPaymentPassesForPaymentRequest:(id)request
{
  requestCopy = request;
  v6 = MEMORY[0x1E695DFD8];
  supportedNetworks = [requestCopy supportedNetworks];
  v8 = [v6 setWithArray:supportedNetworks];

  merchantCapabilities = [requestCopy merchantCapabilities];
  supportedCountries = [requestCopy supportedCountries];
  isMultiTokenRequest = [requestCopy isMultiTokenRequest];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PKPassLibrary_inAppPaymentPassesForPaymentRequest___block_invoke;
  v19[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v19[4] = a2;
  v12 = [(PKPassLibrary *)self _synchronousInAppRemoteObjectProxyWithErrorHandler:v19];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "requestType")}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__PKPassLibrary_inAppPaymentPassesForPaymentRequest___block_invoke_146;
  v18[3] = &unk_1E79CA8A0;
  v18[4] = self;
  v18[5] = &v20;
  [v12 inAppPaymentPassesForNetworks:v8 capabilities:merchantCapabilities issuerCountryCodes:supportedCountries paymentRequestType:v13 isMultiTokensRequest:isMultiTokenRequest withHandler:v18];

  v14 = [(PKPassLibrary *)self _filterPeerPaymentPass:v21[5] request:requestCopy];
  v15 = v21[5];
  v21[5] = v14;

  v16 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v16;
}

void __53__PKPassLibrary_inAppPaymentPassesForPaymentRequest___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; error: %@", &v8, 0x16u);
  }
}

void __53__PKPassLibrary_inAppPaymentPassesForPaymentRequest___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObjects:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_filterPeerPaymentPass:(id)pass request:(id)request
{
  requestCopy = request;
  passCopy = pass;
  peerPaymentPassUniqueID = [(PKPassLibrary *)self peerPaymentPassUniqueID];
  isPeerPaymentRequest = [requestCopy isPeerPaymentRequest];
  supportsInstantFundsIn = [requestCopy supportsInstantFundsIn];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__PKPassLibrary__filterPeerPaymentPass_request___block_invoke;
  v14[3] = &unk_1E79CA8C8;
  v16 = supportsInstantFundsIn;
  v17 = isPeerPaymentRequest;
  v15 = peerPaymentPassUniqueID;
  v11 = peerPaymentPassUniqueID;
  v12 = [passCopy objectsPassingTest:v14];

  return v12;
}

uint64_t __48__PKPassLibrary__filterPeerPaymentPass_request___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1 && ([v3 devicePrimaryPaymentApplication], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "supportsInstantFundsIn"), v5, !v6))
  {
    v9 = 0;
  }

  else if (*(a1 + 41) == 1)
  {
    v7 = [v4 uniqueID];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (void)hasInAppPaymentPassesForNetworks:(id)networks capabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (handlerCopy)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __134__PKPassLibrary_hasInAppPaymentPassesForNetworks_capabilities_issuerCountryCodes_paymentRequestType_isMultiTokensRequest_withHandler___block_invoke;
    v24[3] = &unk_1E79C4658;
    v26 = a2;
    v17 = handlerCopy;
    v24[4] = self;
    v25 = v17;
    typeCopy = type;
    codesCopy = codes;
    networksCopy = networks;
    v21 = [(PKPassLibrary *)self _inAppRemoteObjectProxyWithFailureHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __134__PKPassLibrary_hasInAppPaymentPassesForNetworks_capabilities_issuerCountryCodes_paymentRequestType_isMultiTokensRequest_withHandler___block_invoke_148;
    v22[3] = &unk_1E79C4888;
    v22[4] = self;
    v23 = v17;
    [v21 hasInAppPaymentPassesForNetworks:networksCopy capabilities:capabilities issuerCountryCodes:codesCopy paymentRequestType:typeCopy isMultiTokensRequest:requestCopy withHandler:v22];
  }
}

uint64_t __134__PKPassLibrary_hasInAppPaymentPassesForNetworks_capabilities_issuerCountryCodes_paymentRequestType_isMultiTokensRequest_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)inAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  identifierCopy = identifier;
  codesCopy = codes;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__PKPassLibrary_inAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest___block_invoke;
  v15[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v15[4] = a2;
  v11 = [(PKPassLibrary *)self _synchronousInAppRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PKPassLibrary_inAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest___block_invoke_149;
  v14[3] = &unk_1E79CA8A0;
  v14[4] = self;
  v14[5] = &v16;
  [v11 inAppPrivateLabelPaymentPassesForApplicationIdentifier:identifierCopy issuerCountryCodes:codesCopy isMultiTokensRequest:requestCopy withHandler:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __112__PKPassLibrary_inAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; error: %@", &v8, 0x16u);
  }
}

void __112__PKPassLibrary_inAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObjects:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:(id)identifier issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (handlerCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __127__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke;
    v19[3] = &unk_1E79C4658;
    v21 = a2;
    v13 = handlerCopy;
    v19[4] = self;
    v20 = v13;
    codesCopy = codes;
    identifierCopy = identifier;
    v16 = [(PKPassLibrary *)self _inAppRemoteObjectProxyWithFailureHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __127__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke_150;
    v17[3] = &unk_1E79C4888;
    v17[4] = self;
    v18 = v13;
    [v16 hasInAppPrivateLabelPaymentPassesForApplicationIdentifier:identifierCopy issuerCountryCodes:codesCopy isMultiTokensRequest:requestCopy withHandler:v17];
  }
}

uint64_t __127__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForApplicationIdentifier_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)inAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  domainCopy = domain;
  codesCopy = codes;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PKPassLibrary_inAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest___block_invoke;
  v15[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v15[4] = a2;
  v11 = [(PKPassLibrary *)self _synchronousInAppRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__PKPassLibrary_inAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest___block_invoke_151;
  v14[3] = &unk_1E79CA8A0;
  v14[4] = self;
  v14[5] = &v16;
  [v11 inAppPrivateLabelPaymentPassesForWebDomain:domainCopy issuerCountryCodes:codesCopy isMultiTokensRequest:requestCopy withHandler:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __100__PKPassLibrary_inAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; error: %@", &v8, 0x16u);
  }
}

void __100__PKPassLibrary_inAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest___block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObjects:v3];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)hasInAppPrivateLabelPaymentPassesForWebDomain:(id)domain issuerCountryCodes:(id)codes isMultiTokensRequest:(BOOL)request withHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (handlerCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __115__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke;
    v19[3] = &unk_1E79C4658;
    v21 = a2;
    v13 = handlerCopy;
    v19[4] = self;
    v20 = v13;
    codesCopy = codes;
    domainCopy = domain;
    v16 = [(PKPassLibrary *)self _inAppRemoteObjectProxyWithFailureHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __115__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke_152;
    v17[3] = &unk_1E79C4888;
    v17[4] = self;
    v18 = v13;
    [v16 hasInAppPrivateLabelPaymentPassesForWebDomain:domainCopy issuerCountryCodes:codesCopy isMultiTokensRequest:requestCopy withHandler:v17];
  }
}

uint64_t __115__PKPassLibrary_hasInAppPrivateLabelPaymentPassesForWebDomain_issuerCountryCodes_isMultiTokensRequest_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)enabledValueAddedServicePassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PKPassLibrary_enabledValueAddedServicePassesWithCompletion___block_invoke;
    v11[3] = &unk_1E79C4658;
    v13 = a2;
    v7 = completionCopy;
    v11[4] = self;
    v12 = v7;
    v8 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PKPassLibrary_enabledValueAddedServicePassesWithCompletion___block_invoke_153;
    v9[3] = &unk_1E79C4838;
    v9[4] = self;
    v10 = v7;
    [v8 enabledValueAddedServicePassesWithHandler:v9];
  }
}

uint64_t __62__PKPassLibrary_enabledValueAddedServicePassesWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __62__PKPassLibrary_enabledValueAddedServicePassesWithCompletion___block_invoke_153(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _applyDataAccessorToObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unexpiredPassesOrderedByGroup:(id)group
{
  groupCopy = group;
  v6 = groupCopy;
  if (groupCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__PKPassLibrary_unexpiredPassesOrderedByGroup___block_invoke;
    v11[3] = &unk_1E79C4658;
    v13 = a2;
    v7 = groupCopy;
    v11[4] = self;
    v12 = v7;
    v8 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PKPassLibrary_unexpiredPassesOrderedByGroup___block_invoke_154;
    v9[3] = &unk_1E79C4838;
    v9[4] = self;
    v10 = v7;
    [v8 unexpiredPassesOrderedByGroup:v9];
  }
}

uint64_t __47__PKPassLibrary_unexpiredPassesOrderedByGroup___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __47__PKPassLibrary_unexpiredPassesOrderedByGroup___block_invoke_154(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _applyDataAccessorToObjects:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PKPassLibrary_passUniqueIDsMatchingSearchTerm_completion___block_invoke;
    v14[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = completionCopy;
    v14[4] = self;
    v15 = v9;
    termCopy = term;
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKPassLibrary_passUniqueIDsMatchingSearchTerm_completion___block_invoke_155;
    v12[3] = &unk_1E79C4B08;
    v12[4] = self;
    v13 = v9;
    [v11 passUniqueIDsMatchingSearchTerm:termCopy completion:v12];
  }
}

uint64_t __60__PKPassLibrary_passUniqueIDsMatchingSearchTerm_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)containsPass:(PKPass *)pass
{
  v4 = pass;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__PKPassLibrary_containsPass___block_invoke;
  v8[3] = &unk_1E79CA8F0;
  v10 = &v11;
  v6 = v5;
  v9 = v6;
  [(PKPassLibrary *)self getContainmentStatusAndSettingsForPass:v4 withHandler:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

- (void)containsPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = handlerCopy;
  aBlock[4] = self;
  v19 = v10;
  numberCopy = number;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_157;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 usingSynchronousProxy:0 containsPassWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy completionHandler:v16];
}

uint64_t __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_157(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_2;
  block[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

uint64_t __83__PKPassLibrary_containsPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (BOOL)replacePassWithPass:(PKPass *)pass
{
  v4 = pass;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_autoreleasePoolPush();
    archiveData = [(PKObject *)v4 archiveData];
    objc_autoreleasePoolPop(v5);
    if (archiveData)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __37__PKPassLibrary_replacePassWithPass___block_invoke;
      v10[3] = &unk_1E79C4798;
      v10[4] = &v11;
      [v7 replacePassWithPassData:archiveData handler:v10];
      v8 = *(v12 + 24);

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)archiveForObjectWithUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PKPassLibrary_archiveForObjectWithUniqueID___block_invoke;
  v8[3] = &unk_1E79CA828;
  v8[4] = &v9;
  [v5 getArchivedObjectWithUniqueID:dCopy handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)dataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier
{
  namedCopy = named;
  extensionCopy = extension;
  identifierCopy = identifier;
  kdebug_trace();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v11 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PKPassLibrary_dataForBundleResourceNamed_withExtension_objectUniqueIdentifier___block_invoke;
  v14[3] = &unk_1E79CA828;
  v14[4] = &v15;
  [v11 getDataForBundleResourceNamed:namedCopy withExtension:extensionCopy objectUniqueIdentifier:identifierCopy handler:v14];
  kdebug_trace();
  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)dataForBundleResources:(id)resources objectUniqueIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  identifierCopy = identifier;
  LODWORD(identifier) = [(PKPassLibrary *)self _hasInterfaceOfType:2];
  kdebug_trace();
  v17 = resourcesCopy;
  if (identifier)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__10;
    v32 = __Block_byref_object_dispose__10;
    v33 = 0;
    v7 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __63__PKPassLibrary_dataForBundleResources_objectUniqueIdentifier___block_invoke;
    v27[3] = &unk_1E79CA918;
    v27[4] = &v28;
    [v7 getDataForBundleResources:resourcesCopy objectUniqueIdentifier:identifierCopy handler:v27];
    kdebug_trace();
    v8 = v29[5];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
    v9 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = resourcesCopy;
    v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v10)
    {
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          name = [v13 name];
          extension = [v13 extension];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __63__PKPassLibrary_dataForBundleResources_objectUniqueIdentifier___block_invoke_2;
          v20[3] = &unk_1E79CA940;
          v21 = v8;
          v22 = v13;
          [v9 getDataForBundleResourceNamed:name withExtension:extension objectUniqueIdentifier:identifierCopy handler:v20];
        }

        v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v10);
    }

    kdebug_trace();
  }

  return v8;
}

uint64_t __63__PKPassLibrary_dataForBundleResources_objectUniqueIdentifier___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setObject:a2 forKeyedSubscript:*(result + 40)];
  }

  return result;
}

- (id)passLocalizedStringForKey:(id)key uniqueID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PKPassLibrary_passLocalizedStringForKey_uniqueID___block_invoke;
  v14[3] = &unk_1E79CA968;
  v16 = &v18;
  v17 = a2;
  v9 = keyCopy;
  v15 = v9;
  v10 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PKPassLibrary_passLocalizedStringForKey_uniqueID___block_invoke_161;
  v13[3] = &unk_1E79CA878;
  v13[4] = &v18;
  [v10 usingSynchronousProxy:1 passLocalizedStringForKey:v9 uniqueID:dCopy completion:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __52__PKPassLibrary_passLocalizedStringForKey_uniqueID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@] Error: %@;", &v6, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
}

- (void)addPasses:(NSArray *)passes withCompletionHandler:(void *)completion
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = passes;
  v7 = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        archiveData = [v14 archiveData];
        [v8 addObject:archiveData];

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(PKPassLibrary *)self addPassesWithData:v8 withCompletionHandler:v7];
}

- (void)addPassesWithData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([dataCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = handlerCopy;
    aBlock[4] = self;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v10];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke_163;
    v12[3] = &unk_1E79CA990;
    v12[4] = self;
    v13 = v9;
    [v11 addPassesWithData:dataCopy handler:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

void __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke_163(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E79C8958;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

uint64_t __57__PKPassLibrary_addPassesWithData_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)addPassesWithIngestionPayloads:(id)payloads withCompletionHandler:(id)handler
{
  payloadsCopy = payloads;
  handlerCopy = handler;
  if ([payloadsCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = handlerCopy;
    aBlock[4] = self;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke_164;
    v12[3] = &unk_1E79CA9B8;
    v12[4] = self;
    v13 = v9;
    [v11 usingSynchronousProxy:0 addPassIngestionPayloads:payloadsCopy withCompletionHandler:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

void __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke_164(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E79C8958;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

uint64_t __70__PKPassLibrary_addPassesWithIngestionPayloads_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)addPassesContainer:(id)container withCompletionHandler:(id)handler
{
  containerCopy = container;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (containerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPassLibrary_addPassesContainer_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = handlerCopy;
    aBlock[4] = self;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKPassLibrary_addPassesContainer_withCompletionHandler___block_invoke_166;
    v13[3] = &unk_1E79CA9B8;
    v13[4] = self;
    v14 = v10;
    [v12 usingSynchronousProxy:0 addPassesContainer:containerCopy withCompletionHandler:v13];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __58__PKPassLibrary_addPassesContainer_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

uint64_t __58__PKPassLibrary_addPassesContainer_withCompletionHandler___block_invoke_166(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addUnsignedPassesAtURLs:(id)ls withCompletionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  handlerCopy = handler;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = lsCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[PKFileDescriptorXPCContainer alloc] initWithFileURL:*(*(&v33 + 1) + 8 * v14)];
        [v9 safelyAddObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v16 = [v9 count];
  if (v16 == [v10 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79CA9E0;
    v17 = v9;
    v30 = v17;
    v31 = handlerCopy;
    v18 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke_2;
    v26[3] = &unk_1E79C4658;
    v28 = a2;
    v19 = v18;
    v26[4] = self;
    v27 = v19;
    v20 = _Block_copy(v26);
    v21 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke_168;
    v24[3] = &unk_1E79CA9B8;
    v24[4] = self;
    v25 = v19;
    v22 = v19;
    [v21 usingSynchronousProxy:0 addUnsignedPassesWithDataFileDescriptors:v17 completionHandler:v24];
  }

  else
  {
    v23 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Attempting to add unsigned passed, but failed to convert all .pkpass urls to fds", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 2);
    }
  }
}

uint64_t __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
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

        [*(*(&v10 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke_168(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPassLibrary_addUnsignedPassesAtURLs_withCompletionHandler___block_invoke_2_169;
  block[3] = &unk_1E79C4658;
  v6 = *(a1 + 40);
  v7 = a2;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

- (void)provisionHomeKeyPassForSerialNumbers:(id)numbers completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  handlerCopy = handler;
  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = numbersCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Provisioning HomeKey passes: %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPassLibrary_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke;
  v15[3] = &unk_1E79C9778;
  v17 = a2;
  v10 = handlerCopy;
  v15[4] = self;
  v16 = v10;
  v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKPassLibrary_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke_170;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 usingSynchronousProxy:0 provisionHomeKeyPassForSerialNumbers:numbersCopy completionHandler:v13];
}

void __72__PKPassLibrary_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

void __72__PKPassLibrary_provisionHomeKeyPassForSerialNumbers_completionHandler___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) _applyDataAccessorToObjects:v7];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)availableHomeKeyPassesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Fetching available HomeKey passes", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PKPassLibrary_availableHomeKeyPassesWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E79C9778;
  v14 = a2;
  v7 = handlerCopy;
  v12[4] = self;
  v13 = v7;
  v8 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPassLibrary_availableHomeKeyPassesWithCompletionHandler___block_invoke_172;
  v10[3] = &unk_1E79C9BC8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 usingSynchronousProxy:0 availableHomeKeyPassesWithCompletionHandler:v10];
}

void __61__PKPassLibrary_availableHomeKeyPassesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

void __61__PKPassLibrary_availableHomeKeyPassesWithCompletionHandler___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v6)
  {
    v18 = a1;
    v8 = +[PKSecureElement sharedSecureElement];
    v9 = [v8 secureElementIdentifiers];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [[PKSerializedDataAccessor alloc] initWithData:*(*(&v20 + 1) + 8 * i) error:0];
          v15 = [(PKObject *)PKPass createWithFileDataAccessor:v14 validationOptions:2 warnings:0 error:0];
          v16 = [v15 paymentPass];

          [v16 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v9];
          [v7 safelyAddObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v6 = 0;
    a1 = v18;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v7, v6);
  }
}

- (void)replaceUnsignedPassAtURL:(id)l withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v9 = [[PKFileDescriptorXPCContainer alloc] initWithFileURL:lCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E79C4770;
  v23 = v9;
  v24 = handlerCopy;
  v10 = handlerCopy;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke_2;
  v19[3] = &unk_1E79C4658;
  v21 = a2;
  v13 = v12;
  v19[4] = self;
  v20 = v13;
  v14 = _Block_copy(v19);
  v15 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke_175;
  v17[3] = &unk_1E79C4888;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v15 usingSynchronousProxy:0 replaceUnsignedPassWithDataFileDescriptor:v11 completionHandler:v17];
}

uint64_t __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke_175(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPassLibrary_replaceUnsignedPassAtURL_withCompletionHandler___block_invoke_2_176;
  block[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

- (void)generateTransactionKeyWithReaderIdentifier:(id)identifier readerPublicKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke;
  v17[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = completionCopy;
  v17[4] = self;
  v18 = v10;
  keyCopy = key;
  identifierCopy = identifier;
  v13 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke_177;
  v15[3] = &unk_1E79CAA30;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 usingSynchronousProxy:0 generateTransactionKeyWithReaderIdentifier:identifierCopy readerPublicKey:keyCopy completion:v15];
}

void __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, 0, 0, v3);
  }
}

void __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke_177(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke_2;
  block[3] = &unk_1E79CAA08;
  v17 = *(a1 + 40);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = *(a1 + 32);
  v29 = v15;
  v30 = v18;
  v31 = v17;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  dispatch_async(v16, block);
}

uint64_t __87__PKPassLibrary_generateTransactionKeyWithReaderIdentifier_readerPublicKey_completion___block_invoke_2(void *a1)
{
  result = a1[10];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7], a1[8]);
  }

  return result;
}

- (void)configureHomeAuxiliaryCapabilitiesForSerialNumber:(id)number homeIdentifier:(id)identifier fromUnifiedAccessDescriptor:(id)descriptor andAliroDescriptor:(id)aliroDescriptor completion:(id)completion
{
  completionCopy = completion;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke;
  v23[3] = &unk_1E79C9778;
  v25 = a2;
  v14 = completionCopy;
  v23[4] = self;
  v24 = v14;
  aliroDescriptorCopy = aliroDescriptor;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  numberCopy = number;
  v19 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke_179;
  v21[3] = &unk_1E79CAA80;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 usingSynchronousProxy:0 configureHomeAuxiliaryCapabilitiesForSerialNumber:numberCopy homeIdentifier:identifierCopy fromUnifiedAccessDescriptor:descriptorCopy andAliroDescriptor:aliroDescriptorCopy completion:v21];
}

void __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, 0, v3);
  }
}

void __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke_179(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = dispatch_get_global_queue(0, 0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke_2;
  v19[3] = &unk_1E79CAA58;
  v14 = *(a1 + 40);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = *(a1 + 32);
  v25 = v14;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, v19);
}

uint64_t __140__PKPassLibrary_configureHomeAuxiliaryCapabilitiesForSerialNumber_homeIdentifier_fromUnifiedAccessDescriptor_andAliroDescriptor_completion___block_invoke_2(void *a1)
{
  result = a1[9];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7]);
  }

  return result;
}

- (void)fetchTransactionKeyForPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PKPassLibrary_fetchTransactionKeyForPassTypeIdentifier_serialNumber_completionHandler___block_invoke;
  v9[3] = &unk_1E79C5440;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(PKPassLibrary *)self fetchHomePaymentApplicationsForSerialNumber:number completion:v9];
}

void __89__PKPassLibrary_fetchTransactionKeyForPassTypeIdentifier_serialNumber_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a3;
    v6 = [a2 firstObject];
    v7 = [v6 subcredentials];
    v10 = [v7 anyObject];

    v8 = *(a1 + 32);
    v9 = [v10 transactionKey];
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (void)fetchHomePaymentApplicationsForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PKPassLibrary_fetchHomePaymentApplicationsForSerialNumber_completion___block_invoke;
  v14[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  numberCopy = number;
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKPassLibrary_fetchHomePaymentApplicationsForSerialNumber_completion___block_invoke_181;
  v12[3] = &unk_1E79C9BC8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 usingSynchronousProxy:0 fetchHomePaymentApplicationsForSerialNumber:numberCopy completion:v12];
}

void __72__PKPassLibrary_fetchHomePaymentApplicationsForSerialNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __72__PKPassLibrary_fetchHomePaymentApplicationsForSerialNumber_completion___block_invoke_181(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enableExpressForPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke;
  v17[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = handlerCopy;
  v17[4] = self;
  v18 = v10;
  numberCopy = number;
  identifierCopy = identifier;
  v13 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_182;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 usingSynchronousProxy:0 enableExpressForPassWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy completionHandler:v15];
}

void __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

void __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_182(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_2;
  block[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

uint64_t __91__PKPassLibrary_enableExpressForPassWithPassTypeIdentifier_serialNumber_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)openPaymentSetup
{
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  [v2 openPaymentUIWithCompletion:&__block_literal_global_32];
}

- (void)openPaymentSetupForMerchantIdentifier:(id)identifier domain:(id)domain completion:(id)completion
{
  identifierCopy = identifier;
  domainCopy = domain;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Requesting merchant registration status for openPaymentSetup...", buf, 2u);
  }

  v12 = objc_alloc_init(PKInAppPaymentService);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PKPassLibrary_openPaymentSetupForMerchantIdentifier_domain_completion___block_invoke;
  v14[3] = &unk_1E79C4568;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(PKInAppPaymentService *)v12 merchantStatusCheck:identifierCopy merchantDomain:domainCopy sourceApplicationSecondaryIdentifier:0 completion:v14];
}

void __73__PKPassLibrary_openPaymentSetupForMerchantIdentifier_domain_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Merchant registered, opening payment setup", &v9, 2u);
    }

    [*(a1 + 32) openPaymentSetup];
  }

  else
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Could not validate merchant for payment setup: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }
}

- (void)presentPaymentSetupRequest:(id)request orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  orientationCopy = orientation;
  requestCopy = request;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke_185;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 presentPaymentSetupRequest:requestCopy orientation:orientationCopy completion:v16];
}

uint64_t __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke_185(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke_2;
  block[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

uint64_t __67__PKPassLibrary_presentPaymentSetupRequest_orientation_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v18 = v8;
  configurationCopy = configuration;
  v10 = _Block_copy(aBlock);
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPassLibrary requesting payment setup features", buf, 2u);
  }

  v12 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke_186;
  v14[3] = &unk_1E79C4B08;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v12 paymentSetupFeaturesForConfiguration:configurationCopy completion:v14];
}

uint64_t __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke_186(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __65__PKPassLibrary_paymentSetupFeaturesForConfiguration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)paymentPassWithAssociatedAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke_187;
  v13[3] = &unk_1E79CAAC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 paymentPassWithAssociatedAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke_187(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __71__PKPassLibrary_paymentPassWithAssociatedAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)presentSecureElementPass:(PKSecureElementPass *)pass
{
  v4 = pass;
  if (v4)
  {
    v8 = v4;
    uniqueID = [(PKObject *)v4 uniqueID];
    v4 = v8;
    if (uniqueID)
    {
      passType = [(PKPass *)v8 passType];

      v4 = v8;
      if (passType == 1)
      {
        uniqueID2 = [(PKObject *)v8 uniqueID];
        [(PKPassLibrary *)self presentContactlessInterfaceForPassWithUniqueIdentifier:uniqueID2 fromSource:4 completion:0];

        v4 = v8;
      }
    }
  }
}

- (void)presentWalletWithRelevantPassUniqueID:(id)d
{
  if (d)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__PKPassLibrary_presentWalletWithRelevantPassUniqueID___block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = a2;
    dCopy = d;
    v5 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v6];
    [v5 openWalletUIWithRelevantPass:dCopy];
  }
}

void __55__PKPassLibrary_presentWalletWithRelevantPassUniqueID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)canPresentPaymentRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__PKPassLibrary_canPresentPaymentRequest_completion___block_invoke;
    v14[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = completionCopy;
    v14[4] = self;
    v15 = v9;
    requestCopy = request;
    v11 = [(PKPassLibrary *)self _inAppRemoteObjectProxyWithFailureHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__PKPassLibrary_canPresentPaymentRequest_completion___block_invoke_188;
    v12[3] = &unk_1E79CAAF0;
    v12[4] = self;
    v13 = v9;
    [v11 canPresentPaymentRequest:requestCopy completion:v12];
  }
}

uint64_t __53__PKPassLibrary_canPresentPaymentRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)hasPassesWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes webDomain:(id)domain paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  networksCopy = networks;
  codesCopy = codes;
  domainCopy = domain;
  typeCopy = type;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v18 = [(PKPassLibrary *)self _synchronousInAppRemoteObjectProxyWithErrorHandler:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __138__PKPassLibrary_hasPassesWithSupportedNetworks_merchantCapabilities_issuerCountryCodes_webDomain_paymentRequestType_isMultiTokensRequest___block_invoke;
  v20[3] = &unk_1E79C4798;
  v20[4] = &v21;
  [v18 hasPassesWithSupportedNetworks:networksCopy merchantCapabilities:capabilities webDomain:domainCopy issuerCountryCodes:codesCopy paymentRequestType:typeCopy isMultiTokensRequest:requestCopy completion:v20];
  LOBYTE(requestCopy) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return requestCopy;
}

- (BOOL)hasProvisioningExtensionsWithSupportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes
{
  networksCopy = networks;
  codesCopy = codes;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10 = [(PKPassLibrary *)self _synchronousInAppRemoteObjectProxyWithErrorHandler:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__PKPassLibrary_hasProvisioningExtensionsWithSupportedNetworks_merchantCapabilities_issuerCountryCodes___block_invoke;
  v12[3] = &unk_1E79C4798;
  v12[4] = &v13;
  [v10 hasProvisioningExtensionsWithSupportedNetworks:networksCopy merchantCapabilities:capabilities issuerCountryCodes:codesCopy withHandler:v12];
  LOBYTE(capabilities) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return capabilities;
}

- (void)presentContactlessInterfaceForDefaultPassFromSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 presentContactlessInterfaceForDefaultPassFromSource:source handler:v12];
}

void __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_190;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_3;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_190(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __80__PKPassLibrary_presentContactlessInterfaceForDefaultPassFromSource_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)presentContactlessInterfaceForPassWithUniqueIdentifier:(id)identifier fromSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_2;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 presentContactlessInterfaceForPassWithUniqueIdentifier:identifierCopy fromSource:source handler:v15];
}

void __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_191;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_3;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_191(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __94__PKPassLibrary_presentContactlessInterfaceForPassWithUniqueIdentifier_fromSource_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)activatePaymentPass:(PKPaymentPass *)paymentPass withActivationCode:(NSString *)activationCode completion:(void *)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = paymentPass;
  v9 = activationCode;
  v10 = completion;
  if ([(NSString *)v9 length])
  {
    [(PKPassLibrary *)self _activateSecureElementPass:v8 withActivationCode:v9 activationData:0 completion:v10];
  }

  else
  {
    v11 = PKLocalizedPaymentString(&cfstr_InvalidActivat_0.isa, 0);
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

    if (v10)
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)activateSecureElementPass:(PKSecureElementPass *)secureElementPass withActivationData:(NSData *)activationData completion:(void *)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = secureElementPass;
  v9 = activationData;
  v10 = completion;
  if ([(NSData *)v9 length])
  {
    [(PKPassLibrary *)self _activateSecureElementPass:v8 withActivationCode:0 activationData:v9 completion:v10];
  }

  else
  {
    v11 = PKLocalizedPaymentString(&cfstr_InvalidActivat_1.isa, 0);
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

    if (v10)
    {
      v10[2](v10, 0, v14);
    }
  }
}

- (void)_activateSecureElementPass:(id)pass withActivationCode:(id)code activationData:(id)data completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  dataCopy = data;
  codeCopy = code;
  dataAccessor = [passCopy dataAccessor];
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    library = [dataAccessor library];
    passLibraryMachServiceName3 = library;
    if (!library || library == selfCopy)
    {
      goto LABEL_10;
    }

    passLibraryMachServiceName3 = library;
    v19 = passLibraryMachServiceName3;
LABEL_9:

    selfCopy = v19;
LABEL_10:

    goto LABEL_11;
  }

  passLibraryMachServiceName = [passCopy passLibraryMachServiceName];
  if (passLibraryMachServiceName)
  {
    v21 = passLibraryMachServiceName;
    v32 = a2;
    machServiceName = [(PKXPCService *)selfCopy->_remoteService machServiceName];
    passLibraryMachServiceName2 = [passCopy passLibraryMachServiceName];
    v24 = [machServiceName isEqualToString:passLibraryMachServiceName2];

    if ((v24 & 1) == 0)
    {
      v25 = [PKPassLibrary alloc];
      passLibraryMachServiceName3 = [passCopy passLibraryMachServiceName];
      v19 = [(PKPassLibrary *)v25 initWithMachServiceName:passLibraryMachServiceName3 resumeNotificationName:0 interfaceType:0];
      a2 = v32;
      goto LABEL_9;
    }

    a2 = v32;
  }

LABEL_11:
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __89__PKPassLibrary__activateSecureElementPass_withActivationCode_activationData_completion___block_invoke;
  v36[3] = &unk_1E79C4658;
  v39 = a2;
  v26 = completionCopy;
  v38 = v26;
  v27 = selfCopy;
  v37 = v27;
  v28 = [(PKPassLibrary *)v27 _remoteObjectProxyWithFailureHandler:v36];
  uniqueID = [passCopy uniqueID];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __89__PKPassLibrary__activateSecureElementPass_withActivationCode_activationData_completion___block_invoke_201;
  v33[3] = &unk_1E79C4A68;
  v34 = v27;
  v35 = v26;
  v30 = v27;
  v31 = v26;
  [v28 submitVerificationCode:codeCopy verificationData:dataCopy forPassWithUniqueID:uniqueID handler:v33];
}

uint64_t __89__PKPassLibrary__activateSecureElementPass_withActivationCode_activationData_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v5) = 0;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "Error on PKPassLibrary connection.", &v5, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __89__PKPassLibrary__activateSecureElementPass_withActivationCode_activationData_completion___block_invoke_201(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestUpdateOfObjectWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPassLibrary_requestUpdateOfObjectWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPassLibrary_requestUpdateOfObjectWithUniqueIdentifier_completion___block_invoke_202;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateObjectWithUniqueIdentifier:identifierCopy handler:v13];
}

uint64_t __70__PKPassLibrary_requestUpdateOfObjectWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __70__PKPassLibrary_requestUpdateOfObjectWithUniqueIdentifier_completion___block_invoke_202(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestPersonalizationOfPassWithUniqueIdentifier:(id)identifier contact:(id)contact personalizationToken:(id)token requiredPersonalizationFields:(unint64_t)fields personalizationSource:(unint64_t)source handler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __155__PKPassLibrary_requestPersonalizationOfPassWithUniqueIdentifier_contact_personalizationToken_requiredPersonalizationFields_personalizationSource_handler___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v27 = a2;
  v16 = handlerCopy;
  aBlock[4] = self;
  v26 = v16;
  tokenCopy = token;
  contactCopy = contact;
  identifierCopy = identifier;
  v20 = _Block_copy(aBlock);
  v21 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __155__PKPassLibrary_requestPersonalizationOfPassWithUniqueIdentifier_contact_personalizationToken_requiredPersonalizationFields_personalizationSource_handler___block_invoke_203;
  v23[3] = &unk_1E79C4888;
  v23[4] = self;
  v24 = v16;
  v22 = v16;
  [v21 personalizePassWithUniqueIdentifier:identifierCopy contact:contactCopy personalizationToken:tokenCopy requiredPersonalizationFields:fields personalizationSource:source handler:v23];
}

uint64_t __155__PKPassLibrary_requestPersonalizationOfPassWithUniqueIdentifier_contact_personalizationToken_requiredPersonalizationFields_personalizationSource_handler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __155__PKPassLibrary_requestPersonalizationOfPassWithUniqueIdentifier_contact_personalizationToken_requiredPersonalizationFields_personalizationSource_handler___block_invoke_203(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removePass:(PKPass *)pass
{
  if (pass)
  {
    uniqueID = [(PKObject *)pass uniqueID];
    [(PKPassLibrary *)self removePassWithUniqueID:uniqueID diagnosticReason:0];
  }
}

- (void)removePasses:(id)passes
{
  v19 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(passesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = passesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uniqueID = [*(*(&v14 + 1) + 8 * v10) uniqueID];
        v12 = uniqueID;
        if (uniqueID && [uniqueID length])
        {
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  [(PKPassLibrary *)self removePassesWithUniqueIDs:v13 diagnosticReason:0];
}

- (void)getContainmentStatusAndSettingsForPass:(id)pass withHandler:(id)handler
{
  passCopy = pass;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPassLibrary_getContainmentStatusAndSettingsForPass_withHandler___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v9 = handlerCopy;
  aBlock[4] = self;
  v25 = v9;
  v10 = _Block_copy(aBlock);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v11 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v10];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__PKPassLibrary_getContainmentStatusAndSettingsForPass_withHandler___block_invoke_204;
  v16[3] = &unk_1E79CAB18;
  v14 = passCopy;
  v17 = v14;
  v20 = v23;
  v21 = v22;
  v15 = v9;
  selfCopy = self;
  v19 = v15;
  [v11 getManifestHashAndSettingsForPassTypeID:passTypeIdentifier serialNumber:serialNumber handler:v16];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
}

uint64_t __68__PKPassLibrary_getContainmentStatusAndSettingsForPass_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __68__PKPassLibrary_getContainmentStatusAndSettingsForPass_withHandler___block_invoke_204(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a1[4];
    v6 = a2;
    v7 = [v5 manifestHash];
    v8 = [v6 isEqualToData:v7];

    v9 = 1;
    if (!v8)
    {
      v9 = 2;
    }

    *(*(a1[7] + 8) + 24) = v9;
    *(*(a1[8] + 8) + 24) = a3;
  }

  v10 = *(a1[6] + 16);

  return v10();
}

- (void)updateIngestedDate:(id)date forPassWithUniqueID:(id)d
{
  dCopy = d;
  dateCopy = date;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy updateIngestedDate:dateCopy forPassWithUniqueID:dCopy];
}

- (void)noteObjectSharedWithUniqueID:(id)d
{
  dCopy = d;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy noteObjectSharedWithUniqueID:dCopy];
}

- (void)updateSettings:(unint64_t)settings forObjectWithUniqueID:(id)d
{
  dCopy = d;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy updateSettings:settings forObjectWithUniqueID:dCopy];
}

- (void)setSortingState:(int64_t)state forObjectWithUniqueID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy setSortingState:state forObjectWithUniqueID:dCopy withCompletion:completionCopy];
}

- (void)candidateFlightsWithAirlineCode:(id)code flightNumber:(unint64_t)number date:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  codeCopy = code;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy candidateFlightsWithAirlineCode:codeCopy flightNumber:number date:dateCopy completion:completionCopy];
}

- (unint64_t)setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PKPassLibrary_setLiveRenderingEnabled_forPassUniqueID___block_invoke;
  v11[3] = &unk_1E79CA7B0;
  v11[4] = &v12;
  v7 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKPassLibrary_setLiveRenderingEnabled_forPassUniqueID___block_invoke_2;
  v10[3] = &unk_1E79C46D0;
  v10[4] = &v12;
  [v7 usingSynchronousProxy:1 setLiveRenderingEnabled:enabledCopy forPassUniqueID:dCopy handler:v10];
  v8 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (unint64_t)simulateFlightUpdate:(id)update forPassUniqueID:(id)d
{
  updateCopy = update;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PKPassLibrary_simulateFlightUpdate_forPassUniqueID___block_invoke;
  v12[3] = &unk_1E79CA7B0;
  v12[4] = &v13;
  v8 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PKPassLibrary_simulateFlightUpdate_forPassUniqueID___block_invoke_2;
  v11[3] = &unk_1E79C46D0;
  v11[4] = &v13;
  [v8 simulateFlightUpdate:updateCopy forPassUniqueID:dCopy handler:v11];
  v9 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPassLibrary_addSharedFlight_fromSenderAddress_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  addressCopy = address;
  flightCopy = flight;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__PKPassLibrary_addSharedFlight_fromSenderAddress_completion___block_invoke_206;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 addSharedFlight:flightCopy fromSenderAddress:addressCopy handler:v16];
}

uint64_t __62__PKPassLibrary_addSharedFlight_fromSenderAddress_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __62__PKPassLibrary_addSharedFlight_fromSenderAddress_completion___block_invoke_206(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshActiveOrScheduledFlights
{
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  [v2 refreshActiveOrScheduledFlights];
}

- (id)flightSubscriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  v2 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKPassLibrary_flightSubscriptions__block_invoke;
  v5[3] = &unk_1E79C47C0;
  v5[4] = &v6;
  [v2 flightSubscriptionsWithCompletion:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)flightsWithScheduledDepartureFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v8 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKPassLibrary_flightsWithScheduledDepartureFromStartDate_endDate___block_invoke;
  v11[3] = &unk_1E79C47C0;
  v11[4] = &v12;
  [v8 flightsWithScheduledDepartureFromStartDate:dateCopy endDate:endDateCopy completion:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)dynamicStateForPassUniqueID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PKPassLibrary_dynamicStateForPassUniqueID___block_invoke;
  v9[3] = &unk_1E79CA7B0;
  v9[4] = &v10;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PKPassLibrary_dynamicStateForPassUniqueID___block_invoke_2;
  v8[3] = &unk_1E79CAB40;
  v8[4] = &v10;
  [v5 usingSynchronousProxy:1 dynamicStateForPassUniqueID:dCopy handler:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __45__PKPassLibrary_dynamicStateForPassUniqueID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)rescheduleCommutePlanRenewalReminderForPassWithUniqueID:(id)d
{
  dCopy = d;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy rescheduleCommutePlanRenewalReminderForPassWithUniqueID:dCopy];
}

- (void)checkForTransitNotification
{
  _remoteObjectProxy = [(PKPassLibrary *)self _remoteObjectProxy];
  [_remoteObjectProxy checkForTransitNotification];
}

- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d
{
  dCopy = d;
  marketCopy = market;
  _remoteObjectProxy = [(PKPassLibrary *)self _remoteObjectProxy];
  [_remoteObjectProxy postUpgradedPassNotificationForMarket:marketCopy passUniqueID:dCopy];
}

- (void)postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d
{
  dCopy = d;
  marketCopy = market;
  _remoteObjectProxy = [(PKPassLibrary *)self _remoteObjectProxy];
  [_remoteObjectProxy usingSynchronousProxy:0 postUpgradesAvailableNotificationForMarket:marketCopy passUniqueID:dCopy];
}

- (void)signData:(NSData *)signData withSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = signData;
  v10 = secureElementPass;
  v11 = completion;
  if (v11)
  {
    if (v9 && v10)
    {
      remoteLibrary = self;
      if ([(PKPass *)v10 isRemotePass])
      {
        remoteLibrary = self->_remoteLibrary;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__PKPassLibrary_signData_withSecureElementPass_completion___block_invoke;
      v20[3] = &unk_1E79C9778;
      v22 = a2;
      v13 = v11;
      v20[4] = self;
      v21 = v13;
      v14 = [(PKPassLibrary *)remoteLibrary _remoteObjectProxyWithErrorHandler:v20];
      uniqueID = [(PKObject *)v10 uniqueID];
      [v14 signData:v9 forPassUniqueID:uniqueID completion:v13];

      v16 = v21;
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v24 = v19;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] requires all input values -> signData: %@ secureElementPass: %@", buf, 0x20u);
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
      (*(v11 + 2))(v11, 0, 0, v16);
    }
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] had no completion", buf, 0xCu);
    }
  }
}

void __59__PKPassLibrary_signData_withSecureElementPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@] error: %@;", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

- (void)encryptedServiceProviderDataForSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = secureElementPass;
  v8 = completion;
  if (v8)
  {
    if (v7)
    {
      remoteLibrary = self;
      if ([(PKPass *)v7 isRemotePass])
      {
        remoteLibrary = self->_remoteLibrary;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__PKPassLibrary_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke;
      v17[3] = &unk_1E79C9778;
      v19 = a2;
      v10 = v8;
      v17[4] = self;
      v18 = v10;
      v11 = [(PKPassLibrary *)remoteLibrary _remoteObjectProxyWithErrorHandler:v17];
      uniqueID = [(PKObject *)v7 uniqueID];
      [v11 usingSynchronousProxy:0 getEncryptedServiceProviderDataForUniqueID:uniqueID completion:v10];

      v13 = v18;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] requires all input values -> secureElementPass: %@", buf, 0x16u);
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
      (*(v8 + 2))(v8, 0, v13);
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] had no completion", buf, 0xCu);
    }
  }
}

void __77__PKPassLibrary_encryptedServiceProviderDataForSecureElementPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@] error: %@;", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

- (void)serviceProviderDataForSecureElementPass:(PKSecureElementPass *)secureElementPass completion:(void *)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = secureElementPass;
  v8 = completion;
  if (v8)
  {
    if (v7)
    {
      remoteLibrary = self;
      if ([(PKPass *)v7 isRemotePass])
      {
        remoteLibrary = self->_remoteLibrary;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__PKPassLibrary_serviceProviderDataForSecureElementPass_completion___block_invoke;
      v17[3] = &unk_1E79C9778;
      v19 = a2;
      v10 = v8;
      v17[4] = self;
      v18 = v10;
      v11 = [(PKPassLibrary *)remoteLibrary _remoteObjectProxyWithErrorHandler:v17];
      uniqueID = [(PKObject *)v7 uniqueID];
      [v11 usingSynchronousProxy:0 getServiceProviderDataForUniqueID:uniqueID completion:v10];

      v13 = v18;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] requires all input values -> secureElementPass: %@", buf, 0x16u);
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
      (*(v8 + 2))(v8, 0, v13);
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] had no completion", buf, 0xCu);
    }
  }
}

void __68__PKPassLibrary_serviceProviderDataForSecureElementPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@] error: %@;", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)canAddSecureElementPassWithConfiguration:(id)configuration outError:(id *)error
{
  configurationCopy = configuration;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPassLibrary_canAddSecureElementPassWithConfiguration_outError___block_invoke;
  aBlock[3] = &unk_1E79CAB68;
  aBlock[4] = &v14;
  aBlock[5] = a2;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKPassLibrary_canAddSecureElementPassWithConfiguration_outError___block_invoke_208;
  v12[3] = &unk_1E79CAB90;
  v12[4] = &v20;
  v12[5] = &v14;
  [v9 usingSynchronousProxy:1 canAddSecureElementPassWithConfiguration:configurationCopy completion:v12];
  if (error)
  {
    *error = v15[5];
  }

  v10 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __67__PKPassLibrary_canAddSecureElementPassWithConfiguration_outError___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]: %@;", &v9, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPassLibrary_canAddSecureElementPassWithConfiguration_completion___block_invoke;
    aBlock[3] = &unk_1E79CABB8;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    configurationCopy = configuration;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKPassLibrary_canAddSecureElementPassWithConfiguration_completion___block_invoke_209;
    v13[3] = &unk_1E79C4A68;
    v13[4] = self;
    v14 = v9;
    [v12 usingSynchronousProxy:0 canAddSecureElementPassWithConfiguration:configurationCopy completion:v13];
  }
}

void __69__PKPassLibrary_canAddSecureElementPassWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]: %@;", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKPassLibrary_canAddCarKeyPassWithConfiguration_completion___block_invoke;
    aBlock[3] = &unk_1E79CABB8;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    configurationCopy = configuration;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__PKPassLibrary_canAddCarKeyPassWithConfiguration_completion___block_invoke_210;
    v13[3] = &unk_1E79CABE0;
    v13[4] = self;
    v14 = v9;
    [v12 usingSynchronousProxy:0 canAddCarKeyPassWithConfiguration:configurationCopy completion:v13];
  }
}

void __62__PKPassLibrary_canAddCarKeyPassWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]: %@;", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v6 + 16))(v6, 0, 0, v7);
}

- (void)meetsProvisioningRequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPassLibrary_meetsProvisioningRequirements_completion___block_invoke;
    aBlock[3] = &unk_1E79CABB8;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    requirementsCopy = requirements;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKPassLibrary_meetsProvisioningRequirements_completion___block_invoke_212;
    v13[3] = &unk_1E79CAC08;
    v13[4] = self;
    v14 = v9;
    [v12 usingSynchronousProxy:0 meetsProvisioningRequirements:requirementsCopy completion:v13];
  }
}

void __58__PKPassLibrary_meetsProvisioningRequirements_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]: %@;", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
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
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PKPassLibrary_meetsProvisioningRequirements_missingRequirements___block_invoke;
  v10[3] = &unk_1E79CAC30;
  v10[5] = &v17;
  v10[6] = &v11;
  v10[4] = self;
  [v7 usingSynchronousProxy:1 meetsProvisioningRequirements:requirementsCopy completion:v10];
  if (missingRequirements)
  {
    *missingRequirements = v12[5];
  }

  v8 = *(v18 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)passForProvisioningCredentialHash:(id)hash
{
  hashCopy = hash;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__10;
  v10[4] = __Block_byref_object_dispose__10;
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKPassLibrary_passForProvisioningCredentialHash___block_invoke;
  v9[3] = &unk_1E79CAC58;
  v9[4] = v12;
  v9[5] = v10;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKPassLibrary_passForProvisioningCredentialHash___block_invoke_2;
  v8[3] = &unk_1E79CAC80;
  v8[4] = self;
  v8[5] = &v14;
  [v5 usingSynchronousProxy:1 getPassForProvisioningCredentialHash:hashCopy handler:v8];
  v6 = v15[5];

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __51__PKPassLibrary_passForProvisioningCredentialHash___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _applyDataAccessorToObject:*(*(*(a1 + 40) + 8) + 40)];
}

- (id)contentForUniqueID:(id)d
{
  dCopy = d;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PKPassLibrary_contentForUniqueID___block_invoke;
  v7[3] = &unk_1E79CACA8;
  v7[4] = &v8;
  [(PKPassLibrary *)self _fetchContentForUniqueID:dCopy usingSynchronousProxy:1 withCompletion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_fetchContentForUniqueID:(id)d usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  completionCopy = completion;
  v11 = completionCopy;
  if (dCopy && completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PKPassLibrary__fetchContentForUniqueID_usingSynchronousProxy_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79C9778;
    v22 = a2;
    v12 = completionCopy;
    aBlock[4] = self;
    v21 = v12;
    v13 = _Block_copy(aBlock);
    if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
    {
      if (proxyCopy)
      {
        [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v13];
      }

      else
      {
        [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v13];
      }
      v14 = ;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __79__PKPassLibrary__fetchContentForUniqueID_usingSynchronousProxy_withCompletion___block_invoke_215;
      v18[3] = &unk_1E79CACD0;
      v15 = &v19;
      v18[4] = self;
      v19 = v12;
      [v14 usingSynchronousProxy:proxyCopy getContentForUniqueID:dCopy withHandler:v18];
    }

    else
    {
      if (proxyCopy)
      {
        [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
      }

      else
      {
        [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v13];
      }
      v14 = ;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __79__PKPassLibrary__fetchContentForUniqueID_usingSynchronousProxy_withCompletion___block_invoke_2;
      v16[3] = &unk_1E79CACD0;
      v15 = &v17;
      v16[4] = self;
      v17 = v12;
      [v14 getContentForUniqueID:dCopy handler:v16];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __79__PKPassLibrary__fetchContentForUniqueID_usingSynchronousProxy_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)cachedImageSetForUniqueID:(id)d type:(int64_t)type withDisplayProfile:(id)profile displayTraits:(id)traits
{
  dCopy = d;
  profileCopy = profile;
  traitsCopy = traits;
  if ([(PKPassLibrary *)self _hasInterfaceOfType:2]&& [PKImageSet shouldCacheForDisplayProfile:profileCopy imageSetType:type])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__10;
    v21 = __Block_byref_object_dispose__10;
    v22 = 0;
    v13 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke;
    v16[3] = &unk_1E79CAD48;
    v16[4] = &v17;
    v16[5] = type;
    [v13 usingSynchronousProxy:1 getCachedImageSetContainerForUniqueID:dCopy type:type withDisplayProfile:profileCopy displayTraits:traitsCopy handler:v16];
    v14 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKPassLibraryImageSetCache();
    v5 = [v3 imageSetHash];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke_2;
    v11[3] = &unk_1E79CACF8;
    v6 = v3;
    v7 = *(a1 + 40);
    v12 = v6;
    v13 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke_3;
    v8[3] = &unk_1E79CAD20;
    v10 = *(a1 + 32);
    v9 = v6;
    [v4 retrieveItemForKey:v5 synchronous:1 retrievalBlock:v11 deliveryBlock:v8];
  }
}

void __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) consumeImageSet];
  [*(a1 + 32) invalidate];
  if (v3 && [objc_opt_class() imageSetType] != *(a1 + 40))
  {

    v3 = 0;
  }

  v4[2](v4, v3);
}

void __81__PKPassLibrary_cachedImageSetForUniqueID_type_withDisplayProfile_displayTraits___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) invalidate];
}

- (id)imageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix
{
  dCopy = d;
  profileCopy = profile;
  suffixCopy = suffix;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PKPassLibrary_imageSetForUniqueID_ofType_displayProfile_suffix___block_invoke;
  v15[3] = &unk_1E79CAD70;
  v15[4] = &v16;
  [(PKPassLibrary *)self _fetchImageSetContainerForUniqueID:dCopy ofType:type displayProfile:profileCopy suffix:suffixCopy usingSynchronousProxy:1 withCompletion:v15];
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)_fetchImageSetContainerForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  profileCopy = profile;
  suffixCopy = suffix;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
    {
      if ([PKImageSet shouldCacheForDisplayProfile:profileCopy imageSetType:type])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke;
        aBlock[3] = &unk_1E79CADC0;
        typeCopy = type;
        aBlock[4] = self;
        v40 = completionCopy;
        v18 = _Block_copy(aBlock);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_4;
        v37[3] = &unk_1E79C4450;
        v19 = v18;
        v38 = v19;
        v20 = _Block_copy(v37);
        if (proxyCopy)
        {
          [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v20];
        }

        else
        {
          [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v20];
        }
        v24 = ;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_5;
        v34[3] = &unk_1E79CADE8;
        v36 = proxyCopy;
        v34[4] = self;
        v35 = v19;
        v25 = v19;
        [v24 usingSynchronousProxy:proxyCopy getImageSetContainerForUniqueID:dCopy type:type withDisplayProfile:profileCopy suffix:suffixCopy handler:v34];
      }

      else
      {
        v21 = GenerateKeyImageSetCacheKey(type, profileCopy);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_7;
        v28[3] = &unk_1E79CAE10;
        typeCopy2 = type;
        v28[4] = self;
        v33 = proxyCopy;
        v29 = dCopy;
        v30 = profileCopy;
        v31 = suffixCopy;
        v22 = _Block_copy(v28);
        v23 = PKPassLibraryImageSetCache();
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_12;
        v26[3] = &unk_1E79CAE38;
        v27 = completionCopy;
        [v23 retrieveItemForKey:v21 synchronous:proxyCopy retrievalBlock:v22 deliveryBlock:v26];
      }
    }

    else
    {
      [(PKPassLibrary *)self _fetchImageSetForUniqueID:dCopy ofType:type displayProfile:profileCopy suffix:suffixCopy usingSynchronousProxy:proxyCopy withCompletion:completionCopy];
    }
  }
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKPassLibraryImageSetCache();
    v5 = [v3 imageSetHash];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_2;
    v11[3] = &unk_1E79CACF8;
    v6 = v3;
    v7 = *(a1 + 48);
    v12 = v6;
    v13 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_3;
    v8[3] = &unk_1E79CAD98;
    v10 = *(a1 + 40);
    v9 = v6;
    [v4 retrieveItemForKey:v5 synchronous:1 retrievalBlock:v11 deliveryBlock:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) consumeImageSet];
  [*(a1 + 32) invalidate];
  if (v3 && [objc_opt_class() imageSetType] != *(a1 + 40))
  {

    v3 = 0;
  }

  v4[2](v4, v3);
}

uint64_t __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    (*(*(a1 + 40) + 16))();
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = *(*(a1 + 32) + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_6;
    v7[3] = &unk_1E79C44A0;
    v9 = *(a1 + 40);
    v8 = v3;
    v6 = v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_3;
    block[3] = &unk_1E79C4428;
    v11 = v6;
    dispatch_async(v5, block);
  }
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_8;
  aBlock[3] = &unk_1E79CADC0;
  v23 = *(a1 + 64);
  v4 = v3;
  aBlock[4] = *(a1 + 32);
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_9;
  v19[3] = &unk_1E79C4450;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  v8 = *(a1 + 32);
  if (*(a1 + 72))
  {
    [v8 _synchronousExtendedRemoteObjectProxyWithErrorHandler:v7];
  }

  else
  {
    [v8 _extendedRemoteObjectProxyWithErrorHandler:v7];
  }
  v9 = ;
  v10 = *(a1 + 72);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_10;
  v16[3] = &unk_1E79CADE8;
  v18 = v10;
  v16[4] = *(a1 + 32);
  v17 = v6;
  v15 = v6;
  [v9 usingSynchronousProxy:v10 getImageSetContainerForUniqueID:v11 type:v13 withDisplayProfile:v12 suffix:v14 handler:v16];
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 consumeImageSet];
  [v3 invalidate];

  if (v5)
  {
    if ([objc_opt_class() imageSetType] == *(a1 + 48))
    {
      v4 = v5;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v6 = v4;
  (*(*(a1 + 40) + 16))();
}

void __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    (*(*(a1 + 40) + 16))();
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = *(*(a1 + 32) + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __118__PKPassLibrary__fetchImageSetContainerForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_11;
    v7[3] = &unk_1E79C44A0;
    v9 = *(a1 + 40);
    v8 = v3;
    v6 = v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_3;
    block[3] = &unk_1E79C4428;
    v11 = v6;
    dispatch_async(v5, block);
  }
}

- (void)_fetchImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix usingSynchronousProxy:(BOOL)proxy withCompletion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  profileCopy = profile;
  suffixCopy = suffix;
  completionCopy = completion;
  if (completionCopy)
  {
    v18 = GenerateKeyImageSetCacheKey(type, profileCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79CAE10;
    typeCopy = type;
    aBlock[4] = self;
    v28 = proxyCopy;
    v24 = dCopy;
    v25 = profileCopy;
    v26 = suffixCopy;
    v19 = _Block_copy(aBlock);
    v20 = PKPassLibraryImageSetCache();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_6;
    v21[3] = &unk_1E79CAE38;
    v22 = completionCopy;
    [v20 retrieveItemForKey:v18 synchronous:proxyCopy retrievalBlock:v19 deliveryBlock:v21];
  }
}

void __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79CAE60;
  v22 = *(a1 + 64);
  v4 = v3;
  aBlock[4] = *(a1 + 32);
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_3;
  v18[3] = &unk_1E79C4450;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  v8 = *(a1 + 32);
  if (*(a1 + 72))
  {
    [v8 _synchronousRemoteObjectProxyWithErrorHandler:v7];
  }

  else
  {
    [v8 _remoteObjectProxyWithErrorHandler:v7];
  }
  v9 = ;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_4;
  v15[3] = &unk_1E79CAE88;
  v17 = *(a1 + 72);
  v15[4] = *(a1 + 32);
  v16 = v6;
  v14 = v6;
  [v9 getImageSetForUniqueID:v10 ofType:v12 displayProfile:v11 suffix:v13 handler:v15];
}

void __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if ([objc_opt_class() imageSetType] == *(a1 + 48))
    {
      v4 = v5;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v6 = v4;
  (*(*(a1 + 40) + 16))();
}

void __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __109__PKPassLibrary__fetchImageSetForUniqueID_ofType_displayProfile_suffix_usingSynchronousProxy_withCompletion___block_invoke_5;
    v5[3] = &unk_1E79C44A0;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (BOOL)_setSetting:(unint64_t)setting enabled:(BOOL)enabled forPass:(id)pass
{
  passCopy = pass;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v9 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__PKPassLibrary__setSetting_enabled_forPass___block_invoke;
  v13[3] = &unk_1E79CAEB0;
  enabledCopy = enabled;
  v13[4] = self;
  settingCopy = setting;
  v10 = passCopy;
  v14 = v10;
  v16 = &v19;
  v11 = v9;
  v15 = v11;
  [(PKPassLibrary *)self getContainmentStatusAndSettingsForPass:v10 withHandler:v13];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

intptr_t __45__PKPassLibrary__setSetting_enabled_forPass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = v5 | a3;
  v7 = a3 & ~v5;
  if (*(a1 + 72))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) uniqueID];
  [v9 updateSettings:v8 forObjectWithUniqueID:v10];

  *(*(*(a1 + 56) + 8) + 24) = a2 != 0;
  v11 = *(a1 + 48);

  return dispatch_semaphore_signal(v11);
}

- (BOOL)resetSettingsForPass:(id)pass
{
  passCopy = pass;
  defaultSettings = [objc_opt_class() defaultSettings];
  uniqueID = [passCopy uniqueID];

  [(PKPassLibrary *)self updateSettings:defaultSettings forObjectWithUniqueID:uniqueID];
  return 1;
}

- (id)defaultPaymentPassesWithRemotePasses:(BOOL)passes
{
  passesCopy = passes;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v6 = dispatch_group_create();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  v24 = a2;
  v7 = v6;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v8];
  dispatch_group_enter(v7);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke_221;
  v19[3] = &unk_1E79CAF00;
  v19[4] = self;
  v21 = &v31;
  v10 = v7;
  v20 = v10;
  [v9 defaultPaymentPassWithHandler:v19];
  if (passesCopy && [(PKPassLibrary *)self _hasRemoteLibrary])
  {
    v11 = [(PKPassLibrary *)self->_remoteLibrary _remoteObjectProxyWithFailureHandler:v8];
    dispatch_group_enter(v10);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke_2;
    v16[3] = &unk_1E79CAF28;
    v18 = &v25;
    v17 = v10;
    [v11 defaultPaymentPassWithHandler:v16];
  }

  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = v12;
  if (v32[5])
  {
    [v12 addObject:?];
  }

  if (v26[5])
  {
    [v13 addObject:?];
  }

  if (![v13 count])
  {

    v13 = 0;
  }

  v14 = [v13 copy];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke_221(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _applyDataAccessorToObject:v3];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void __54__PKPassLibrary_defaultPaymentPassesWithRemotePasses___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)expressFelicaTransitPasses
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__10;
  v36 = __Block_byref_object_dispose__10;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v4 = dispatch_group_create();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  v25 = a2;
  v5 = v4;
  v24 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v6];
  v8 = [(PKPassLibrary *)self->_remoteLibrary _remoteObjectProxyWithFailureHandler:v6];
  dispatch_group_enter(v5);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke_222;
  v20[3] = &unk_1E79CAC80;
  v22 = &v32;
  v9 = v5;
  v21 = v9;
  [v7 expressTransitPassWithHandler:v20];
  if ([(PKPassLibrary *)self _hasRemoteLibrary])
  {
    dispatch_group_enter(v9);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke_2;
    v17 = &unk_1E79CAC80;
    v19 = &v26;
    v18 = v9;
    [v8 expressTransitPassWithHandler:&v14];
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v10;
  if (v33[5])
  {
    [v10 addObject:?];
  }

  if (v27[5])
  {
    [v11 addObject:?];
  }

  if (![v11 count])
  {

    v11 = 0;
  }

  v12 = [v11 copy];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v12;
}

void __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke_222(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __43__PKPassLibrary_expressFelicaTransitPasses__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)sortedTransitPassesForTransitNetworkIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PKPassLibrary_sortedTransitPassesForTransitNetworkIdentifiersWithCompletion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v14 = a2;
    v7 = completionCopy;
    v13 = v7;
    v8 = _Block_copy(aBlock);
    v9 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PKPassLibrary_sortedTransitPassesForTransitNetworkIdentifiersWithCompletion___block_invoke_223;
    v10[3] = &unk_1E79CAF50;
    v10[4] = self;
    v11 = v7;
    [v9 sortedTransitPassesForTransitNetworkIdentifiers:v10];
  }
}

uint64_t __79__PKPassLibrary_sortedTransitPassesForTransitNetworkIdentifiersWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __79__PKPassLibrary_sortedTransitPassesForTransitNetworkIdentifiersWithCompletion___block_invoke_223(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _applyDataAccessorToObjects:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sortedTransitPassesForAppletDataFormat:(id)format completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKPassLibrary_sortedTransitPassesForAppletDataFormat_completion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    formatCopy = format;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPassLibrary *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PKPassLibrary_sortedTransitPassesForAppletDataFormat_completion___block_invoke_224;
    v13[3] = &unk_1E79C4838;
    v13[4] = self;
    v14 = v9;
    [v12 sortedTransitPassesForAppletDataFormat:formatCopy handler:v13];
  }
}

uint64_t __67__PKPassLibrary_sortedTransitPassesForAppletDataFormat_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __67__PKPassLibrary_sortedTransitPassesForAppletDataFormat_completion___block_invoke_224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _applyDataAccessorToObjects:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_sortedPaymentPassesForPaymentRequest:(id)request additionalPaymentPasses:(id)passes
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  passesCopy = passes;
  isPeerPaymentRequest = [requestCopy isPeerPaymentRequest];
  v36 = requestCopy;
  v8 = [(PKPassLibrary *)self inAppPaymentPassesForPaymentRequest:requestCopy];
  allObjects = [v8 allObjects];
  v10 = [allObjects mutableCopy];

  v11 = [v10 pk_createSetByApplyingBlock:&__block_literal_global_227];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = passesCopy;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        uniqueID = [v17 uniqueID];
        v19 = [v11 containsObject:uniqueID];

        if ((v19 & 1) == 0)
        {
          [v10 safelyAddObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v14);
  }

  if ([v10 count] <= 1)
  {
    v20 = [v10 copy];
    v21 = v36;
    goto LABEL_22;
  }

  v22 = [(PKPassLibrary *)self defaultPaymentPassesWithRemotePasses:0];
  if ([v22 count] && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "uniqueID"), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    v25 = [v22 objectAtIndexedSubscript:0];
    uniqueID2 = [v25 uniqueID];

    lastUsedAlternateFundingSourcePassUniqueIdentifier = 0;
    v21 = v36;
    v28 = isPeerPaymentRequest;
    if (!isPeerPaymentRequest)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = v36;
    v28 = isPeerPaymentRequest;
    if ((isPeerPaymentRequest & 1) == 0)
    {
      countryCode = [v36 countryCode];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __79__PKPassLibrary__sortedPaymentPassesForPaymentRequest_additionalPaymentPasses___block_invoke_2;
      v41[3] = &unk_1E79CAF98;
      v42 = countryCode;
      v29 = countryCode;
      v31 = [v10 pk_firstObjectPassingTest:v41];
      uniqueID2 = [v31 uniqueID];

      lastUsedAlternateFundingSourcePassUniqueIdentifier = 0;
      goto LABEL_20;
    }

    uniqueID2 = 0;
  }

  v29 = +[PKPeerPaymentService sharedInstance];
  lastUsedAlternateFundingSourcePassUniqueIdentifier = [v29 lastUsedAlternateFundingSourcePassUniqueIdentifier];
LABEL_20:

LABEL_21:
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __79__PKPassLibrary__sortedPaymentPassesForPaymentRequest_additionalPaymentPasses___block_invoke_4;
  v37[3] = &unk_1E79CAFC0;
  v40 = v28;
  v38 = lastUsedAlternateFundingSourcePassUniqueIdentifier;
  v39 = uniqueID2;
  v32 = uniqueID2;
  v33 = lastUsedAlternateFundingSourcePassUniqueIdentifier;
  v20 = [v10 sortedArrayUsingComparator:v37];

LABEL_22:

  return v20;
}

uint64_t __79__PKPassLibrary__sortedPaymentPassesForPaymentRequest_additionalPaymentPasses___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 deviceInAppPaymentApplications];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKPassLibrary__sortedPaymentPassesForPaymentRequest_additionalPaymentPasses___block_invoke_3;
  v6[3] = &unk_1E79C7E20;
  v7 = *(a1 + 32);
  v4 = [v3 pk_hasObjectPassingTest:v6];

  return v4;
}

uint64_t __79__PKPassLibrary__sortedPaymentPassesForPaymentRequest_additionalPaymentPasses___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = [v5 uniqueID];
      v9 = [v7 isEqualToString:v8];

      v10 = *(a1 + 32);
      v11 = [v6 uniqueID];
      v12 = [v10 isEqualToString:v11];

      if (v9 && !v12)
      {
        goto LABEL_12;
      }

      if (!(v9 & 1 | ((v12 & 1) == 0)))
      {
        goto LABEL_15;
      }
    }

    v13 = [v5 devicePrimaryInAppPaymentApplication];
    v14 = [v13 paymentType];

    v15 = [v6 devicePrimaryInAppPaymentApplication];
    v16 = [v15 paymentType];

    if (v14 == 1 && v16 != 1)
    {
      goto LABEL_12;
    }

    if (v14 != 1 && v16 == 1)
    {
LABEL_15:
      v23 = 1;
      goto LABEL_16;
    }
  }

  v17 = *(a1 + 40);
  v18 = [v5 uniqueID];
  v19 = [v17 isEqualToString:v18];

  v20 = *(a1 + 40);
  v21 = [v6 uniqueID];
  v22 = [v20 isEqualToString:v21];

  if (!v19 || v22)
  {
    if (v19 & 1 | ((v22 & 1) == 0))
    {
      v24 = [v5 ingestedDate];
      v25 = [v6 ingestedDate];
      v23 = [v24 compare:v25];

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v23 = -1;
LABEL_16:

  return v23;
}

- (id)_defaultPaymentPassForPaymentRequest:(id)request
{
  v3 = [(PKPassLibrary *)self _sortedPaymentPassesForPaymentRequest:request];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_defaultPaymentPassWithoutPaymentRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PKPassLibrary__defaultPaymentPassWithoutPaymentRequest__block_invoke;
  v6[3] = &unk_1E79C9840;
  v6[4] = self;
  v6[5] = a2;
  v2 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPassLibrary__defaultPaymentPassWithoutPaymentRequest__block_invoke_232;
  v5[3] = &unk_1E79CAFE8;
  v5[4] = &v7;
  [v2 defaultPaymentPassWithHandler:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __57__PKPassLibrary__defaultPaymentPassWithoutPaymentRequest__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPassLibrary_pushProvisioningNoncesWithCredentialCount_completion___block_invoke;
  v13[3] = &unk_1E79C9778;
  v15 = a2;
  v8 = completionCopy;
  v13[4] = self;
  v14 = v8;
  v9 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PKPassLibrary_pushProvisioningNoncesWithCredentialCount_completion___block_invoke_233;
  v11[3] = &unk_1E79C9BC8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 pushProvisioningNoncesWithCredentialCount:count completion:v11];
}

void __70__PKPassLibrary_pushProvisioningNoncesWithCredentialCount_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

uint64_t __70__PKPassLibrary_pushProvisioningNoncesWithCredentialCount_completion___block_invoke_233(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)configurePushProvisioningConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PKPassLibrary_configurePushProvisioningConfiguration_completion___block_invoke;
  v8[3] = &unk_1E79CB010;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKPassLibrary *)self configurePushProvisioningConfigurationV2:configuration completion:v8];
}

void __67__PKPassLibrary_configurePushProvisioningConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 shareablePassConfiguration];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)configurePushProvisioningConfigurationV2:(id)v2 completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  completionCopy = completion;
  v9 = completionCopy;
  if (completionCopy)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__PKPassLibrary_configurePushProvisioningConfigurationV2_completion___block_invoke;
    v23[3] = &unk_1E79C9778;
    v25 = a2;
    v10 = completionCopy;
    v23[4] = self;
    v24 = v10;
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v23];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v2Copy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (objc_opt_respondsToSelector())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__PKPassLibrary_configurePushProvisioningConfigurationV2_completion___block_invoke_238;
      v21[3] = &unk_1E79CB038;
      v21[4] = self;
      v22 = v10;
      [v11 usingSynchronousProxy:0 configurePushProvisioningConfigurationV2:v2Copy completion:v21];
      v14 = v22;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v16)
        {
          v17 = NSStringFromSelector(a2);
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "[PKPassLibrary %@] falling back to usingSynchronousProxy:configurePushProvisioningConfiguration:completion: as v2 is not supported", buf, 0xCu);
        }

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __69__PKPassLibrary_configurePushProvisioningConfigurationV2_completion___block_invoke_239;
        v19[3] = &unk_1E79CB060;
        v19[4] = self;
        v20 = v10;
        [v11 usingSynchronousProxy:0 configurePushProvisioningConfiguration:v13 completion:v19];
        v14 = v20;
      }

      else
      {
        if (v16)
        {
          v18 = NSStringFromSelector(a2);
          *buf = 138412546;
          v27 = v18;
          v28 = 2112;
          v29 = v2Copy;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Non PKAddShareablePassConfiguration used with proxy that does not yet support usingSynchronousProxy:configurePushProvisioningConfigurationV2:completion: - %@", buf, 0x16u);
        }

        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
        (*(v10 + 2))(v10, 0, v14);
      }
    }
  }
}

void __69__PKPassLibrary_configurePushProvisioningConfigurationV2_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PKPassLibrary_startVehicleConnectionSessionWithPassUniqueIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79C9778;
    v16 = a2;
    v9 = completionCopy;
    v14[4] = self;
    v15 = v9;
    identifierCopy = identifier;
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKPassLibrary_startVehicleConnectionSessionWithPassUniqueIdentifier_completion___block_invoke_241;
    v12[3] = &unk_1E79C50E0;
    v13 = v9;
    [v11 startVehicleConnectionSessionWithPassUniqueIdentifier:identifierCopy completion:v12];
  }
}

void __82__PKPassLibrary_startVehicleConnectionSessionWithPassUniqueIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

void __82__PKPassLibrary_startVehicleConnectionSessionWithPassUniqueIdentifier_completion___block_invoke_241(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__PKPassLibrary_startVehicleConnectionSessionWithPassUniqueIdentifier_completion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier error:(id *)error
{
  messageCopy = message;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v12 = 0;
  if (messageCopy && identifierCopy)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__10;
    v21 = __Block_byref_object_dispose__10;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__PKPassLibrary_sendRKEPassThroughMessage_forSessionIdentifier_error___block_invoke;
    v16[3] = &unk_1E79C9840;
    v16[4] = self;
    v16[5] = a2;
    v13 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PKPassLibrary_sendRKEPassThroughMessage_forSessionIdentifier_error___block_invoke_242;
    v15[3] = &unk_1E79CAB90;
    v15[4] = &v23;
    v15[5] = &v17;
    [v13 sendRKEPassThroughMessage:messageCopy forSessionIdentifier:v11 withCompletion:v15];
    if (error)
    {
      *error = v18[5];
    }

    v12 = *(v24 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v12 & 1;
}

void __70__PKPassLibrary_sendRKEPassThroughMessage_forSessionIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __62__PKPassLibrary_invalidateVehicleConnectionSessionIdentifier___block_invoke;
    v9 = &unk_1E79C9840;
    selfCopy = self;
    v11 = a2;
    identifierCopy = identifier;
    v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:&v6];
    [v5 invalidateVehicleConnectionSessionIdentifier:{identifierCopy, v6, v7, v8, v9, selfCopy, v11}];
  }
}

void __62__PKPassLibrary_invalidateVehicleConnectionSessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (id)backupMetadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__PKPassLibrary_backupMetadata__block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PKPassLibrary_backupMetadata__block_invoke_243;
  v7[3] = &unk_1E79CA828;
  v7[4] = &v9;
  [v4 backupMetadataWithHandler:v7];
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __31__PKPassLibrary_backupMetadata__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)setBackupMetadata:(id)metadata
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PKPassLibrary_setBackupMetadata___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = a2;
  metadataCopy = metadata;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PKPassLibrary_setBackupMetadata___block_invoke_244;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 setBackupMetadata:metadataCopy handler:v7];
}

void __35__PKPassLibrary_setBackupMetadata___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PKPassLibrary_prepareForBackupRestoreWithExistingPreferencesData___block_invoke;
    aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    aBlock[4] = a2;
    v6 = _Block_copy(aBlock);
    v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PKPassLibrary_prepareForBackupRestoreWithExistingPreferencesData___block_invoke_245;
    v8[3] = &unk_1E79C4E28;
    v8[4] = self;
    [v7 prepareForBackupRestoreWithExistingPreferencesData:dataCopy handler:v8];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "prepareForBackupRestoreWithExistingPreferencesData - Error: No plist data passed in.", buf, 2u);
    }
  }
}

void __68__PKPassLibrary_prepareForBackupRestoreWithExistingPreferencesData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)prepareForBackupRestoreWithSafeHavenPath:(id)path
{
  v42 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = pathCopy;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "prepareForBackupRestoreWithSafeHavenPath - Starting prepare for backup restore with safe haven path: %@", buf, 0xCu);
  }

  if (!pathCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "prepareForBackupRestoreWithSafeHavenPath - Error: No path passed in.", buf, 2u);
    }

    v21 = v6;
    goto LABEL_32;
  }

  selfCopy = self;
  oslog = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKPassLibrary_prepareForBackupRestoreWithSafeHavenPath___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = a2;
  v26 = _Block_copy(aBlock);
  v7 = PKRequiredPaymentSetupFileURLs();
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = v8;
  v31 = *v35;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v35 != v31)
      {
        objc_enumerationMutation(obj);
      }

      path = [*(*(&v34 + 1) + 8 * i) path];
      v12 = pathCopy;
      v13 = [pathCopy stringByAppendingPathComponent:path];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      stringByDeletingLastPathComponent = [v13 stringByDeletingLastPathComponent];
      v33 = 0;
      v16 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v33];
      v17 = v33;

      if (!v16)
      {
        v22 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v17 description];
          *buf = 138543362;
          v41 = v23;
          v24 = "Unable to create parent directories within safe haven: %{public}@";
LABEL_27:
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
        }

LABEL_28:

        pathCopy = v12;
        goto LABEL_29;
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [defaultManager2 createFileAtPath:v13 contents:0 attributes:0];

      if (!v19)
      {
        v22 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v17 description];
          *buf = 138543362;
          v41 = v23;
          v24 = "Failed to create file in safe haven: %{public}@";
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v20 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:v13];
      if (v20)
      {
        [v30 addObject:v20];
      }

      else
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v41 = v13;
          _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create file handle for path: %{public}@", buf, 0xCu);
        }
      }

      pathCopy = v12;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v21 = v26;
  v25 = [(PKPassLibrary *)selfCopy _synchronousRemoteObjectProxyWithErrorHandler:v26];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __58__PKPassLibrary_prepareForBackupRestoreWithSafeHavenPath___block_invoke_248;
  v32[3] = &unk_1E79C4E28;
  v32[4] = selfCopy;
  [v25 prepareForBackupRestoreWithRequiredFileURLs:obj destinationFileHandles:v30 handler:v32];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "prepareForBackupRestoreWithSafeHavenPath - Finished preparation for backup restore.", buf, 2u);
  }

LABEL_32:
}

void __58__PKPassLibrary_prepareForBackupRestoreWithSafeHavenPath___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (int64_t)_currentNotificationCountForIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  identifierCopy = identifier;
  CFPreferencesSynchronize(@"com.apple.PassKit.mapsNotifications", v3, v4);
  v6 = CFPreferencesCopyValue(identifierCopy, @"com.apple.PassKit.mapsNotifications", v3, v4);

  integerValue = [v6 integerValue];
  return integerValue;
}

- (void)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge externalizedAuth:(id)auth completion:(id)completion
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  authCopy = auth;
  completionCopy = completion;
  v18 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPassLibrary creating FIDO key", buf, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__PKPassLibrary_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke;
  v24[3] = &unk_1E79C9778;
  v26 = a2;
  v19 = completionCopy;
  v24[4] = self;
  v25 = v19;
  v20 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__PKPassLibrary_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke_249;
  v22[3] = &unk_1E79CB088;
  v22[4] = self;
  v23 = v19;
  v21 = v19;
  [v20 usingSynchronousProxy:0 createFidoKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy challenge:challengeCopy externalizedAuth:authCopy completion:v22];
}

void __108__PKPassLibrary_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, 0, v3);
  }
}

uint64_t __108__PKPassLibrary_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_externalizedAuth_completion___block_invoke_249(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)checkFidoKeyPresenceForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PKPassLibrary_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke;
  v20[3] = &unk_1E79C9778;
  v22 = a2;
  v12 = completionCopy;
  v20[4] = self;
  v21 = v12;
  keyHashCopy = keyHash;
  hashCopy = hash;
  partyCopy = party;
  v16 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PKPassLibrary_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke_251;
  v18[3] = &unk_1E79C4888;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 usingSynchronousProxy:0 checkFidoKeyPresenceForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy completion:v18];
}

void __100__PKPassLibrary_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __100__PKPassLibrary_checkFidoKeyPresenceForRelyingParty_relyingPartyAccountHash_fidoKeyHash_completion___block_invoke_251(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)signWithFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash fidoKeyHash:(id)keyHash challenge:(id)challenge publicKeyIdentifier:(id)identifier externalizedAuth:(id)auth completion:(id)completion
{
  completionCopy = completion;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __142__PKPassLibrary_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke;
  v29[3] = &unk_1E79C9778;
  v31 = a2;
  v18 = completionCopy;
  v29[4] = self;
  v30 = v18;
  authCopy = auth;
  identifierCopy = identifier;
  challengeCopy = challenge;
  keyHashCopy = keyHash;
  hashCopy = hash;
  partyCopy = party;
  v25 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __142__PKPassLibrary_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke_252;
  v27[3] = &unk_1E79CB0B0;
  v27[4] = self;
  v28 = v18;
  v26 = v18;
  [v25 usingSynchronousProxy:0 signWithFidoKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy fidoKeyHash:keyHashCopy challenge:challengeCopy publicKeyIdentifier:identifierCopy externalizedAuth:authCopy completion:v27];
}

void __142__PKPassLibrary_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __142__PKPassLibrary_signWithFidoKeyForRelyingParty_relyingPartyAccountHash_fidoKeyHash_challenge_publicKeyIdentifier_externalizedAuth_completion___block_invoke_252(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPassLibrary_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke;
  v14[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  idCopy = id;
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKPassLibrary_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_254;
  v12[3] = &unk_1E79CB0B0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 usingSynchronousProxy:0 generateSEEncryptionCertificateForSubCredentialId:idCopy completion:v12];
}

void __78__PKPassLibrary_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __78__PKPassLibrary_generateSEEncryptionCertificateForSubCredentialId_completion___block_invoke_254(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PKPassLibrary_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke;
  v14[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  idCopy = id;
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKPassLibrary_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke_255;
  v12[3] = &unk_1E79CB0D8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 usingSynchronousProxy:0 generateISOEncryptionCertificateForSubCredentialId:idCopy completion:v12];
}

void __79__PKPassLibrary_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v3);
  }
}

uint64_t __79__PKPassLibrary_generateISOEncryptionCertificateForSubCredentialId_completion___block_invoke_255(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __53__PKPassLibrary_deleteKeyMaterialForSubCredentialId___block_invoke;
  v9 = &unk_1E79C9840;
  selfCopy = self;
  v11 = a2;
  idCopy = id;
  v5 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:&v6];
  [v5 deleteKeyMaterialForSubCredentialId:{idCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __53__PKPassLibrary_deleteKeyMaterialForSubCredentialId___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPassLibrary_addISO18013BlobsFromCredentials_cardType_completion___block_invoke;
  v16[3] = &unk_1E79C9778;
  v18 = a2;
  v10 = completionCopy;
  v16[4] = self;
  v17 = v10;
  credentialsCopy = credentials;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKPassLibrary_addISO18013BlobsFromCredentials_cardType_completion___block_invoke_257;
  v14[3] = &unk_1E79C4860;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 usingSynchronousProxy:0 addISO18013BlobsFromCredentials:credentialsCopy cardType:type completion:v14];
}

void __69__PKPassLibrary_addISO18013BlobsFromCredentials_cardType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __69__PKPassLibrary_addISO18013BlobsFromCredentials_cardType_completion___block_invoke_257(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__PKPassLibrary_addISO18013Blobs_cardType_completion___block_invoke;
  v16[3] = &unk_1E79C9778;
  v18 = a2;
  v10 = completionCopy;
  v16[4] = self;
  v17 = v10;
  blobsCopy = blobs;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__PKPassLibrary_addISO18013Blobs_cardType_completion___block_invoke_258;
  v14[3] = &unk_1E79C4860;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 usingSynchronousProxy:0 addISO18013Blobs:blobsCopy cardType:type completion:v14];
}

void __54__PKPassLibrary_addISO18013Blobs_cardType_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __54__PKPassLibrary_addISO18013Blobs_cardType_completion___block_invoke_258(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)longTermPrivacyKeyForCredentialGroupIdentifier:(id)identifier reuseExisting:(BOOL)existing completion:(id)completion
{
  existingCopy = existing;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKPassLibrary_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke;
  v16[3] = &unk_1E79C9778;
  v18 = a2;
  v10 = completionCopy;
  v16[4] = self;
  v17 = v10;
  identifierCopy = identifier;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PKPassLibrary_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke_259;
  v14[3] = &unk_1E79CB0B0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 usingSynchronousProxy:0 longTermPrivacyKeyForCredentialGroupIdentifier:identifierCopy reuseExisting:existingCopy completion:v14];
}

void __89__PKPassLibrary_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __89__PKPassLibrary_longTermPrivacyKeyForCredentialGroupIdentifier_reuseExisting_completion___block_invoke_259(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateAuxiliaryCapabilitiesForRequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PKPassLibrary_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke;
  v14[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  requirementsCopy = requirements;
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKPassLibrary_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke_260;
  v12[3] = &unk_1E79CB100;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 usingSynchronousProxy:0 generateAuxiliaryCapabilitiesForRequirements:requirementsCopy completion:v12];
}

void __73__PKPassLibrary_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __73__PKPassLibrary_generateAuxiliaryCapabilitiesForRequirements_completion___block_invoke_260(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentIssuerBindingFlowForIssuerData:(id)data signature:(id)signature orientation:(id)orientation
{
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__PKPassLibrary_presentIssuerBindingFlowForIssuerData_signature_orientation___block_invoke;
  v15 = &unk_1E79C9840;
  selfCopy = self;
  v17 = a2;
  orientationCopy = orientation;
  signatureCopy = signature;
  dataCopy = data;
  v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:&v12];
  [v11 presentIssuerBindingFlowForIssuerData:dataCopy signature:signatureCopy orientation:{orientationCopy, v12, v13, v14, v15, selfCopy, v17}];
}

void __77__PKPassLibrary_presentIssuerBindingFlowForIssuerData_signature_orientation___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)requestIssuerBoundPassesWithBindingWithData:(id)data automaticallyProvision:(BOOL)provision withCompletion:(id)completion
{
  provisionCopy = provision;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__PKPassLibrary_requestIssuerBoundPassesWithBindingWithData_automaticallyProvision_withCompletion___block_invoke;
  v16[3] = &unk_1E79C9778;
  v18 = a2;
  v10 = completionCopy;
  v16[4] = self;
  v17 = v10;
  dataCopy = data;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PKPassLibrary_requestIssuerBoundPassesWithBindingWithData_automaticallyProvision_withCompletion___block_invoke_262;
  v14[3] = &unk_1E79C9BC8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 usingSynchronousProxy:0 requestIssuerBoundPassesWithBindingWithData:dataCopy automaticallyProvision:provisionCopy withCompletion:v14];
}

void __99__PKPassLibrary_requestIssuerBoundPassesWithBindingWithData_automaticallyProvision_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __99__PKPassLibrary_requestIssuerBoundPassesWithBindingWithData_automaticallyProvision_withCompletion___block_invoke_262(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PKPassLibrary_signData_signatureEntanglementMode_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E79C9778;
  v18 = a2;
  v10 = handlerCopy;
  v16[4] = self;
  v17 = v10;
  dataCopy = data;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__PKPassLibrary_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_263;
  v14[3] = &unk_1E79CB128;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 signData:dataCopy signatureEntanglementMode:mode withCompletionHandler:v14];
}

void __74__PKPassLibrary_signData_signatureEntanglementMode_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v3);
  }
}

uint64_t __74__PKPassLibrary_signData_signatureEntanglementMode_withCompletionHandler___block_invoke_263(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)exportableManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__PKPassLibrary_exportableManifestWithCompletion___block_invoke;
  v11[3] = &unk_1E79C9778;
  v13 = a2;
  v6 = completionCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PKPassLibrary_exportableManifestWithCompletion___block_invoke_265;
  v9[3] = &unk_1E79CB150;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 exportableManifestWithCompletion:v9];
}

void __50__PKPassLibrary_exportableManifestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __50__PKPassLibrary_exportableManifestWithCompletion___block_invoke_265(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)exportableCardEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__PKPassLibrary_exportableCardEntry_completion___block_invoke;
  v14[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  entryCopy = entry;
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PKPassLibrary_exportableCardEntry_completion___block_invoke_267;
  v12[3] = &unk_1E79CB178;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 exportableCardEntry:entryCopy completion:v12];
}

void __48__PKPassLibrary_exportableCardEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __48__PKPassLibrary_exportableCardEntry_completion___block_invoke_267(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)stateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPassLibrary_stateOfRelevancyPresentmentOfType_containingPassUniqueIdentifier___block_invoke;
  v10[3] = &unk_1E79CB1A0;
  v10[4] = self;
  v10[5] = &v11;
  [v7 requestStateOfRelevancyPresentmentOfType:type containingPassUniqueIdentifier:identifierCopy completion:v10];
  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)overrideStateOfRelevancyPresentmentOfType:(unint64_t)type containingPassUniqueIdentifier:(id)identifier newState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __110__PKPassLibrary_overrideStateOfRelevancyPresentmentOfType_containingPassUniqueIdentifier_newState_completion___block_invoke;
  v18[3] = &unk_1E79C9778;
  v20 = a2;
  v12 = completionCopy;
  v18[4] = self;
  v19 = v12;
  identifierCopy = identifier;
  v14 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__PKPassLibrary_overrideStateOfRelevancyPresentmentOfType_containingPassUniqueIdentifier_newState_completion___block_invoke_269;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 overrideStateOfRelevancyPresentmentOfType:type containingPassUniqueIdentifier:identifierCopy newState:state completion:v16];
}

void __110__PKPassLibrary_overrideStateOfRelevancyPresentmentOfType_containingPassUniqueIdentifier_newState_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __110__PKPassLibrary_overrideStateOfRelevancyPresentmentOfType_containingPassUniqueIdentifier_newState_completion___block_invoke_269(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isPaymentPassActivationAvailable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPassLibrary_isPaymentPassActivationAvailable__block_invoke;
  v6[3] = &unk_1E79C4798;
  v6[4] = &v7;
  [v3 isPaymentPassActivationAvailableWithHandler:v6];
  if (v8[3])
  {
    isPaymentPassActivationAvailable = 1;
  }

  else if ([(PKPassLibrary *)self _hasRemoteLibrary])
  {
    isPaymentPassActivationAvailable = [(PKPassLibrary *)self->_remoteLibrary isPaymentPassActivationAvailable];
  }

  else
  {
    isPaymentPassActivationAvailable = 0;
  }

  _Block_object_dispose(&v7, 8);
  return isPaymentPassActivationAvailable;
}

- (id)_remoteLibrary
{
  if ([(PKPassLibrary *)self _hasRemoteLibrary])
  {
    remoteLibrary = self->_remoteLibrary;
  }

  else
  {
    remoteLibrary = 0;
  }

  return remoteLibrary;
}

- (BOOL)migrateDataWithDidRestoreFromBackup:(BOOL)backup
{
  backupCopy = backup;
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = @"NO";
    if (backupCopy)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v17 = v9;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "PKPassLibrary: requesting passd data migration (didRestoreFromBackup: %@)...", buf, 0xCu);
  }

  v6 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKPassLibrary_migrateDataWithDidRestoreFromBackup___block_invoke;
  v11[3] = &unk_1E79C4798;
  v11[4] = &v12;
  [v6 migrateDataWithHandler:v11 didRestoreFromBackup:backupCopy];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (*(v13 + 24))
    {
      v10 = @"success";
    }

    else
    {
      v10 = @"failure";
    }

    *buf = 138543362;
    v17 = v10;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "PKPassLibrary: passd migration state: %{public}@.", buf, 0xCu);
  }

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

- (void)sendUserEditedCatalog:(id)catalog
{
  catalogCopy = catalog;
  _remoteObjectProxy = [(PKPassLibrary *)self _remoteObjectProxy];
  [_remoteObjectProxy sendUserEditedCatalog:catalogCopy];
}

- (void)notifyPassUsedWithIdentifier:(id)identifier fromSource:(int64_t)source
{
  identifierCopy = identifier;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy notifyPassUsedWithIdentifier:identifierCopy fromSource:source];
}

- (void)issueWalletUserNotificationWithTitle:(id)title message:(id)message forPassUniqueIdentifier:(id)identifier customActionRoute:(id)route
{
  routeCopy = route;
  identifierCopy = identifier;
  messageCopy = message;
  titleCopy = title;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy issueWalletUserNotificationWithTitle:titleCopy message:messageCopy forPassUniqueIdentifier:identifierCopy customActionRoute:routeCopy];
}

- (void)pendingUserNotificationsWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C44A0;
    v8 = completionCopy;
    aBlock[4] = self;
    v15 = v8;
    identifierCopy = identifier;
    v10 = _Block_copy(aBlock);
    v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_3;
    v12[3] = &unk_1E79C4B08;
    v12[4] = self;
    v13 = v8;
    [v11 pendingUserNotificationsWithIdentifier:identifierCopy completion:v12];
  }
}

void __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_2;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_4;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __67__PKPassLibrary_pendingUserNotificationsWithIdentifier_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateDate:(id)date forPendingNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dateCopy = date;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy updateDate:dateCopy forPendingNotificationWithIdentifier:identifierCopy];
}

- (void)insertInternalWalletMessageWithContent:(id)content badged:(BOOL)badged completion:(id)completion
{
  badgedCopy = badged;
  completionCopy = completion;
  contentCopy = content;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy insertInternalWalletMessageWithContent:contentCopy badged:badgedCopy completion:completionCopy];
}

- (void)deleteInternalWalletMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy deleteInternalWalletMessageWithIdentifier:identifierCopy];
}

- (void)deleteAllInternalWalletMessages
{
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy deleteAllInternalWalletMessages];
}

- (void)sendUnverifiedPassNotificationIfNeededForUniqueID:(id)d
{
  dCopy = d;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy sendUnverifiedPassNotificationIfNeededForUniqueID:dCopy];
}

- (void)removeAllScheduledActivities
{
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy removeAllScheduledActivities];
}

- (void)introduceDatabaseIntegrityProblem
{
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy introduceDatabaseIntegrityProblem];
}

- (void)forceImmediateRevocationCheck
{
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy forceImmediateRevocationCheck];
}

- (void)spotlightReindexAllContentWithAcknowledgement:(id)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke;
  aBlock[3] = &unk_1E79C44A0;
  v5 = acknowledgementCopy;
  aBlock[4] = self;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_3;
  v9[3] = &unk_1E79C44A0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 spotlightReindexAllContentWithAcknowledgement:v9];
}

void __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_2;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_4;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __63__PKPassLibrary_spotlightReindexAllContentWithAcknowledgement___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)spotlightReindexContentWithIdentifiers:(id)identifiers acknowledgement:(id)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke;
  aBlock[3] = &unk_1E79C44A0;
  v7 = acknowledgementCopy;
  aBlock[4] = self;
  v15 = v7;
  identifiersCopy = identifiers;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_3;
  v12[3] = &unk_1E79C44A0;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v10 spotlightReindexContentWithIdentifiers:identifiersCopy acknowledgement:v12];
}

void __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_2;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_4;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __72__PKPassLibrary_spotlightReindexContentWithIdentifiers_acknowledgement___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)spotlightResetWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C44A0;
  v5 = completionCopy;
  aBlock[4] = self;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44A0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 spotlightResetWithCompletion:v9];
}

void __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_2;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_4;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __46__PKPassLibrary_spotlightResetWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)spotlightStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C44A0;
  v5 = completionCopy;
  aBlock[4] = self;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C4AE0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 spotlightStatusWithCompletion:v9];
}

void __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_2;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_4;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_3;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __47__PKPassLibrary_spotlightStatusWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason
{
  dCopy = d;
  reasonCopy = reason;
  if (dCopy && [dCopy length])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PKPassLibrary_removePassWithUniqueID_diagnosticReason___block_invoke;
    v14[3] = &unk_1E79C9840;
    v14[4] = self;
    v14[5] = a2;
    v9 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
    if (!reasonCopy)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = PKGetMyPid();
      v12 = PKProcessNameForPid(v11);
      reasonCopy = [v10 stringWithFormat:@"Call from %@", v12];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PKPassLibrary_removePassWithUniqueID_diagnosticReason___block_invoke_286;
    v13[3] = &unk_1E79C4E28;
    v13[4] = self;
    [v9 removePassWithUniqueID:dCopy diagnosticReason:reasonCopy handler:v13];
  }
}

void __57__PKPassLibrary_removePassWithUniqueID_diagnosticReason___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason
{
  dsCopy = ds;
  reasonCopy = reason;
  if (dsCopy && [dsCopy count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PKPassLibrary_removePassesWithUniqueIDs_diagnosticReason___block_invoke;
    v14[3] = &unk_1E79C9840;
    v14[4] = self;
    v14[5] = a2;
    v9 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
    if (!reasonCopy)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = PKGetMyPid();
      v12 = PKProcessNameForPid(v11);
      reasonCopy = [v10 stringWithFormat:@"Call from %@", v12];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PKPassLibrary_removePassesWithUniqueIDs_diagnosticReason___block_invoke_287;
    v13[3] = &unk_1E79C4E28;
    v13[4] = self;
    [v9 removePassesWithUniqueIDs:dsCopy diagnosticReason:reasonCopy handler:v13];
  }
}

void __60__PKPassLibrary_removePassesWithUniqueIDs_diagnosticReason___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)recoverPassWithUniqueID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dCopy && [dCopy length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PKPassLibrary_recoverPassWithUniqueID___block_invoke;
    v9[3] = &unk_1E79C9840;
    v9[4] = self;
    v9[5] = a2;
    v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PKPassLibrary_recoverPassWithUniqueID___block_invoke_288;
    v8[3] = &unk_1E79C4E28;
    v8[4] = self;
    [v7 recoverPassWithUniqueID:v6 handler:v8];
  }
}

void __41__PKPassLibrary_recoverPassWithUniqueID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)archivePassWithUniqueID:(id)d
{
  dCopy = d;
  v6 = PKManualArchiveEnabled();
  if (dCopy && v6 && [dCopy length])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PKPassLibrary_archivePassWithUniqueID___block_invoke;
    v9[3] = &unk_1E79C9840;
    v9[4] = self;
    v9[5] = a2;
    v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PKPassLibrary_archivePassWithUniqueID___block_invoke_289;
    v8[3] = &unk_1E79C4E28;
    v8[4] = self;
    [v7 archivePassWithUniqueID:dCopy handler:v8];
  }
}

void __41__PKPassLibrary_archivePassWithUniqueID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@];", &v4, 0xCu);
  }
}

- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason
{
  reasonCopy = reason;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PKPassLibrary_removePassesOfType_withDiagnosticReason___block_invoke;
  v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v13[4] = a2;
  v8 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v13];
  if (!reasonCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = PKGetMyPid();
    v11 = PKProcessNameForPid(v10);
    reasonCopy = [v9 stringWithFormat:@"Call from %@", v11];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PKPassLibrary_removePassesOfType_withDiagnosticReason___block_invoke_290;
  v12[3] = &unk_1E79C4E28;
  v12[4] = self;
  [v8 removePassesOfType:type withDiagnosticReason:reasonCopy handler:v12];
}

void __57__PKPassLibrary_removePassesOfType_withDiagnosticReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

- (void)removePassesOfType:(unint64_t)type withDiagnosticReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PKPassLibrary_removePassesOfType_withDiagnosticReason_completion___block_invoke;
  v19[3] = &unk_1E79C9778;
  v21 = a2;
  v11 = completionCopy;
  v19[4] = self;
  v20 = v11;
  v12 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v19];
  if (!reasonCopy)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = PKGetMyPid();
    v15 = PKProcessNameForPid(v14);
    reasonCopy = [v13 stringWithFormat:@"Call from %@", v15];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKPassLibrary_removePassesOfType_withDiagnosticReason_completion___block_invoke_291;
  v17[3] = &unk_1E79C44A0;
  v17[4] = self;
  v18 = v11;
  v16 = v11;
  [v12 removePassesOfType:type withDiagnosticReason:reasonCopy handler:v17];
}

void __68__PKPassLibrary_removePassesOfType_withDiagnosticReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __68__PKPassLibrary_removePassesOfType_withDiagnosticReason_completion___block_invoke_291(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)resetApplePayWithDiagnosticReason:(id)reason completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "XPC about to start in [PKPassLibrary %@];", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__PKPassLibrary_resetApplePayWithDiagnosticReason_completion___block_invoke;
  v19[3] = &unk_1E79C9840;
  v19[4] = self;
  v19[5] = a2;
  v11 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v19];
  if (!reasonCopy)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = PKGetMyPid();
    v14 = PKProcessNameForPid(v13);
    reasonCopy = [v12 stringWithFormat:@"Call from %@", v14];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__PKPassLibrary_resetApplePayWithDiagnosticReason_completion___block_invoke_292;
  v16[3] = &unk_1E79CB1C8;
  v17 = completionCopy;
  v18 = a2;
  v16[4] = self;
  v15 = completionCopy;
  [v11 resetApplePayWithDiagnosticReason:reasonCopy handler:v16];
}

void __62__PKPassLibrary_resetApplePayWithDiagnosticReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

uint64_t __62__PKPassLibrary_resetApplePayWithDiagnosticReason_completion___block_invoke_292(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC finished in [PKPassLibrary %@]; successful:%d", &v7, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (BOOL)resetApplePayWithDiagnosticReason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "XPC about to start in [PKPassLibrary %@];", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PKPassLibrary_resetApplePayWithDiagnosticReason___block_invoke;
  v15[3] = &unk_1E79C9840;
  v15[4] = self;
  v15[5] = a2;
  v8 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v15];
  if (!reasonCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = PKGetMyPid();
    v11 = PKProcessNameForPid(v10);
    reasonCopy = [v9 stringWithFormat:@"Call from %@", v11];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__PKPassLibrary_resetApplePayWithDiagnosticReason___block_invoke_293;
  v14[3] = &unk_1E79CB1F0;
  v14[5] = &v16;
  v14[6] = a2;
  v14[4] = self;
  [v8 resetApplePayWithDiagnosticReason:reasonCopy handler:v14];
  v12 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v12 & 1;
}

void __51__PKPassLibrary_resetApplePayWithDiagnosticReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPassLibrary %@]; Error: %@", &v8, 0x16u);
  }
}

void __51__PKPassLibrary_resetApplePayWithDiagnosticReason___block_invoke_293(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC finished in [PKPassLibrary %@]; successful:%d", &v6, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)shuffleGroups:(int)groups
{
  v3 = *&groups;
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy shuffleGroups:v3];
}

- (void)noteAppleAccountChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  [v5 noteAppleAccountChanged:changedCopy handler:&__block_literal_global_295];
}

- (void)noteACAccountChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  [v5 noteACAccountChanged:changedCopy handler:&__block_literal_global_297];
}

- (id)diffForPassUpdateUserNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v5 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKPassLibrary_diffForPassUpdateUserNotificationWithIdentifier___block_invoke;
  v8[3] = &unk_1E79CB218;
  v8[4] = &v9;
  [v5 getDiffForPassUpdateUserNotificationWithIdentifier:identifierCopy handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)isWatchIssuerAppProvisioningSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKPassLibrary_isWatchIssuerAppProvisioningSupported__block_invoke;
  v5[3] = &unk_1E79C4798;
  v5[4] = &v6;
  [v2 isWatchIssuerAppProvisioningSupportedWithHandler:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)catalogChanged:(id)changed withNewPasses:(id)passes states:(id)states
{
  v23 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  passesCopy = passes;
  statesCopy = states;
  [(PKPassLibrary *)self _applyDataAccessorToObjects:passesCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(PKPassLibrary *)self delegates];
  v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [changedCopy copy];
          [v14 passLibrary:self receivedUpdatedCatalog:v15 passes:passesCopy states:statesCopy];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_11;
          }

          v15 = [changedCopy copy];
          [v14 passLibrary:self receivedUpdatedCatalog:v15 passes:passesCopy];
        }

LABEL_11:
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)passAdded:(id)added
{
  v9[1] = *MEMORY[0x1E69E9840];
  addedCopy = added;
  [(PKPassLibrary *)self _applyDataAccessorToObject:addedCopy];
  v7 = addedCopy;
  v8 = @"PKPassLibraryAddedPassesUserInfo";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(PKPassLibrary *)self _postLibraryChangeWithUserInfo:v6];
}

- (void)passUpdated:(id)updated
{
  v9[1] = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  [(PKPassLibrary *)self _applyDataAccessorToObject:updatedCopy];
  v7 = updatedCopy;
  v8 = @"PKPassLibraryReplacementPassesUserInfo";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(PKPassLibrary *)self _postLibraryChangeWithUserInfo:v6];
}

- (void)passRecovered:(id)recovered
{
  v9[1] = *MEMORY[0x1E69E9840];
  recoveredCopy = recovered;
  [(PKPassLibrary *)self _applyDataAccessorToObject:recoveredCopy];
  v7 = recoveredCopy;
  v8 = @"PKPassLibraryRecoveredPassesUserInfoKey";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(PKPassLibrary *)self _postLibraryChangeWithUserInfo:v6];
}

- (void)passArchived:(id)archived
{
  v9[1] = *MEMORY[0x1E69E9840];
  archivedCopy = archived;
  if (PKManualArchiveEnabled())
  {
    [(PKPassLibrary *)self _applyDataAccessorToObject:archivedCopy];
    v7 = archivedCopy;
    v8 = @"PKPassLibraryArchivedPassesUserInfoKey";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(PKPassLibrary *)self _postLibraryChangeWithUserInfo:v6];
  }
}

- (void)passRemoved:(id)removed
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"PKPassLibraryPassTypeIdentifierUserInfo";
  removedCopy = removed;
  passTypeIdentifier = [removedCopy passTypeIdentifier];
  v13[1] = @"PKPassLibrarySerialNumberUserInfo";
  v14[0] = passTypeIdentifier;
  serialNumber = [removedCopy serialNumber];

  v14[1] = serialNumber;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = v7;
  v11 = @"PKPassLibraryRemovedPassInfosUserInfo";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v12 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(PKPassLibrary *)self _postLibraryChangeWithUserInfo:v9];
}

- (void)contactlessInterfaceDidPresentFromSource:(int64_t)source
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  delegates = [(PKPassLibrary *)self delegates];
  v5 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(delegates);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 contactlessInterfaceDidPresentFromSource:source];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)contactlessInterfaceDidDismissFromSource:(int64_t)source
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  delegates = [(PKPassLibrary *)self delegates];
  v5 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(delegates);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 contactlessInterfaceDidDismissFromSource:source];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)vehicleConnectionDidUpdateConnectionState:(int64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  delegates = [(PKPassLibrary *)self delegates];
  v5 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(delegates);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 vehicleConnectionDidUpdateConnectionState:state];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [delegates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)vehicleConnectionDidRecievePassthroughData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  delegates = [(PKPassLibrary *)self delegates];
  v6 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(delegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 vehicleConnectionDidRecievePassthroughData:dataCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)issuerBindingAuthenticationOccured
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  delegates = [(PKPassLibrary *)self delegates];
  v3 = [delegates countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(delegates);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 issuerBindingAuthenticationOccured];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [delegates countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_postLibraryChangeWithUserInfo:(id)info
{
  v4 = MEMORY[0x1E696AD88];
  infoCopy = info;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:@"PKPassLibraryDidChangeNotification" object:self userInfo:infoCopy];
}

- (id)_copyPassesWithRetries:(unint64_t)retries
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__PKPassLibrary__copyPassesWithRetries___block_invoke;
  v15[3] = &unk_1E79CAC58;
  v15[4] = &v22;
  v15[5] = &v16;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__PKPassLibrary__copyPassesWithRetries___block_invoke_2;
  v14[3] = &unk_1E79CA7D8;
  v14[4] = self;
  v14[5] = &v26;
  [v5 getPassesWithHandler:v14];
  if (*(v23 + 24) == 1)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (retries)
    {
      if (v7)
      {
        localizedDescription = [v17[5] localizedDescription];
        *buf = 134218242;
        retriesCopy = retries;
        v34 = 2114;
        v35 = localizedDescription;
        _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Error retrieving passes (%lu retries remaining): %{public}@", buf, 0x16u);
      }

      v8 = [(PKPassLibrary *)self _copyPassesWithRetries:retries - 1];
      v6 = v27[5];
      v27[5] = v8;
    }

    else if (v7)
    {
      localizedDescription2 = [v17[5] localizedDescription];
      *buf = 138543362;
      retriesCopy = localizedDescription2;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Error retrieving passes (giving up): %{public}@", buf, 0xCu);
    }
  }

  v9 = v27[5];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

uint64_t __40__PKPassLibrary__copyPassesWithRetries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 _applyDataAccessorToObjects:v7];
}

- (id)_copyPassesOfType:(unint64_t)type withRetries:(unint64_t)retries
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PKPassLibrary__copyPassesOfType_withRetries___block_invoke;
  v17[3] = &unk_1E79CAC58;
  v17[4] = &v24;
  v17[5] = &v18;
  v7 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__PKPassLibrary__copyPassesOfType_withRetries___block_invoke_2;
  v16[3] = &unk_1E79CA7D8;
  v16[4] = self;
  v16[5] = &v28;
  [v7 getPassesOfType:type handler:v16];
  if (*(v25 + 24) == 1)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (retries)
    {
      if (v9)
      {
        localizedDescription = [v19[5] localizedDescription];
        *buf = 134218242;
        retriesCopy = retries;
        v36 = 2114;
        v37 = localizedDescription;
        _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Error retrieving passes (%lu retries remaining): %{public}@", buf, 0x16u);
      }

      v10 = [(PKPassLibrary *)self _copyPassesOfType:type withRetries:retries - 1];
      v8 = v29[5];
      v29[5] = v10;
    }

    else if (v9)
    {
      localizedDescription2 = [v19[5] localizedDescription];
      *buf = 138543362;
      retriesCopy = localizedDescription2;
      _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Error retrieving passes (giving up): %{public}@", buf, 0xCu);
    }
  }

  v11 = v29[5];
  if (!v11)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

uint64_t __47__PKPassLibrary__copyPassesOfType_withRetries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 _applyDataAccessorToObjects:v7];
}

- (id)_copyPassesOfCardType:(int64_t)type
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__PKPassLibrary__copyPassesOfCardType___block_invoke;
  v13[3] = &unk_1E79CA7B0;
  v13[4] = &v14;
  v5 = [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PKPassLibrary__copyPassesOfCardType___block_invoke_2;
  v12[3] = &unk_1E79CA7D8;
  v12[4] = self;
  v12[5] = &v20;
  [v5 getPassesOfCardType:type handler:v12];
  if (v15[5])
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = PKPaymentCardTypeToString(type);
      localizedDescription = [v15[5] localizedDescription];
      *buf = 138412546;
      v27 = v10;
      v28 = 2114;
      v29 = localizedDescription;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Error retrieving passes of card type %@ (giving up): %{public}@", buf, 0x16u);
    }
  }

  v7 = v21[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

uint64_t __39__PKPassLibrary__copyPassesOfCardType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 _applyDataAccessorToObjects:v7];
}

- (id)_copyPassesOfStyles:(unint64_t)styles withRetries:(unint64_t)retries
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PKPassLibrary__copyPassesOfStyles_withRetries___block_invoke;
  v17[3] = &unk_1E79CAC58;
  v17[4] = &v24;
  v17[5] = &v18;
  v7 = [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__PKPassLibrary__copyPassesOfStyles_withRetries___block_invoke_2;
  v16[3] = &unk_1E79CA7D8;
  v16[4] = self;
  v16[5] = &v28;
  [v7 usingSynchronousProxy:1 getPassesOfStyles:styles handler:v16];
  if (*(v25 + 24) == 1)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (retries)
    {
      if (v9)
      {
        localizedDescription = [v19[5] localizedDescription];
        *buf = 134218242;
        retriesCopy = retries;
        v36 = 2114;
        v37 = localizedDescription;
        _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Error retrieving passes (%lu retries remaining): %{public}@", buf, 0x16u);
      }

      v10 = [(PKPassLibrary *)self _copyPassesOfStyles:styles withRetries:retries - 1];
      v8 = v29[5];
      v29[5] = v10;
    }

    else if (v9)
    {
      localizedDescription2 = [v19[5] localizedDescription];
      *buf = 138543362;
      retriesCopy = localizedDescription2;
      _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Error retrieving passes (giving up): %{public}@", buf, 0xCu);
    }
  }

  v11 = v29[5];
  if (!v11)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

uint64_t __49__PKPassLibrary__copyPassesOfStyles_withRetries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 _applyDataAccessorToObjects:v7];
}

- (void)_getPassesAndCatalogOfPassTypes:(unint64_t)types synchronously:(BOOL)synchronously limitResults:(BOOL)results withRetries:(unint64_t)retries handler:(id)handler
{
  resultsCopy = results;
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PKPassLibrary__getPassesAndCatalogOfPassTypes_synchronously_limitResults_withRetries_handler___block_invoke;
    aBlock[3] = &unk_1E79CB268;
    retriesCopy = retries;
    typesCopy = types;
    aBlock[4] = self;
    v24 = synchronouslyCopy;
    v25 = resultsCopy;
    v14 = handlerCopy;
    v21 = v14;
    v15 = _Block_copy(aBlock);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__PKPassLibrary__getPassesAndCatalogOfPassTypes_synchronously_limitResults_withRetries_handler___block_invoke_315;
    v18[3] = &unk_1E79CB290;
    v18[4] = self;
    v19 = v14;
    v16 = _Block_copy(v18);
    if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
    {
      if (synchronouslyCopy)
      {
        [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v15];
      }

      else
      {
        [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v15];
      }
      v17 = ;
      [v17 usingSynchronousProxy:synchronouslyCopy getPassesAndCatalogOfPassTypes:types limitResults:resultsCopy withHandler:v16];
    }

    else
    {
      if (synchronouslyCopy)
      {
        [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
      }

      else
      {
        [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v15];
      }
      v17 = ;
      [v17 getPassesAndCatalogOfPassTypes:types limitResults:resultsCopy withHandler:v16];
    }
  }
}

void __96__PKPassLibrary__getPassesAndCatalogOfPassTypes_synchronously_limitResults_withRetries_handler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = PKLogFacilityTypeGetObject(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v14 = [v3 localizedDescription];
      *block = 134218242;
      *&block[4] = v4;
      *&block[12] = 2114;
      *&block[14] = v14;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Error retrieving passes and catalog (%lu retries remaining): %{public}@", block, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PKPassLibrary__getPassesAndCatalogOfPassTypes_synchronously_limitResults_withRetries_handler___block_invoke_314;
    aBlock[3] = &unk_1E79CB240;
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    v20 = *(a1 + 64);
    v17 = v9;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (*(a1 + 64) == 1)
    {
      (*(v10 + 2))(v10);
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v13 = v11;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __dispatch_async_ar_block_invoke_3;
      v22 = &unk_1E79C4428;
      v23 = v13;
      dispatch_async(v12, block);
    }
  }

  else
  {
    if (v6)
    {
      v15 = [v3 localizedDescription];
      *block = 138543362;
      *&block[4] = v15;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Error retrieving passes and catalog (giving up): %{public}@", block, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __96__PKPassLibrary__getPassesAndCatalogOfPassTypes_synchronously_limitResults_withRetries_handler___block_invoke_315(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _applyDataAccessorToObjects:v7];
  (*(*(a1 + 40) + 16))();
}

- (void)_getGroupsControllerSnapshotWithOptions:(id)options synchronously:(BOOL)synchronously retries:(unint64_t)retries handler:(id)handler
{
  synchronouslyCopy = synchronously;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PKPassLibrary__getGroupsControllerSnapshotWithOptions_synchronously_retries_handler___block_invoke;
    aBlock[3] = &unk_1E79CB2E0;
    retriesCopy = retries;
    aBlock[4] = self;
    v12 = optionsCopy;
    v20 = v12;
    v23 = synchronouslyCopy;
    v13 = handlerCopy;
    v21 = v13;
    v14 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__PKPassLibrary__getGroupsControllerSnapshotWithOptions_synchronously_retries_handler___block_invoke_318;
    v17[3] = &unk_1E79CB308;
    v17[4] = self;
    v18 = v13;
    v15 = _Block_copy(v17);
    if ([(PKPassLibrary *)self _hasInterfaceOfType:2])
    {
      if (synchronouslyCopy)
      {
        [(PKPassLibrary *)self _synchronousExtendedRemoteObjectProxyWithErrorHandler:v14];
      }

      else
      {
        [(PKPassLibrary *)self _extendedRemoteObjectProxyWithErrorHandler:v14];
      }
      v16 = ;
      [v16 usingSynchronousProxy:synchronouslyCopy getGroupsControllerSnapshotWithOptions:v12 handler:v15];
    }

    else
    {
      if (synchronouslyCopy)
      {
        [(PKPassLibrary *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
      }

      else
      {
        [(PKPassLibrary *)self _remoteObjectProxyWithErrorHandler:v14];
      }
      v16 = ;
      [v16 getGroupsControllerSnapshotWithOptions:v12 handler:v15];
    }
  }
}

void __87__PKPassLibrary__getGroupsControllerSnapshotWithOptions_synchronously_retries_handler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = PKLogFacilityTypeGetObject(0);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v15 = [v3 localizedDescription];
      *block = 134218242;
      *&block[4] = v4;
      *&block[12] = 2114;
      *&block[14] = v15;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Error retrieving passes with annotations and catalog (%lu retries remaining): %{public}@", block, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PKPassLibrary__getGroupsControllerSnapshotWithOptions_synchronously_retries_handler___block_invoke_317;
    aBlock[3] = &unk_1E79CB2B8;
    v7 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v8 = v7;
    v21 = *(a1 + 64);
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v18 = v8;
    v20 = v9;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (*(a1 + 64) == 1)
    {
      (*(v11 + 2))(v11);
    }

    else
    {
      v13 = dispatch_get_global_queue(0, 0);
      v14 = v12;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __dispatch_async_ar_block_invoke_3;
      v23 = &unk_1E79C4428;
      v24 = v14;
      dispatch_async(v13, block);
    }
  }

  else
  {
    if (v6)
    {
      v16 = [v3 localizedDescription];
      *block = 138543362;
      *&block[4] = v16;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Error retrieving passes with annotations and catalog (giving up): %{public}@", block, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __87__PKPassLibrary__getGroupsControllerSnapshotWithOptions_synchronously_retries_handler___block_invoke_318(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 passes];
  [v3 _applyDataAccessorToObjects:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)_applyDataAccessorToObjects:(id)objects
{
  v14 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        [(PKPassLibrary *)self _applyDataAccessorToObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode
{
  _extendedRemoteObjectProxy = [(PKPassLibrary *)self _extendedRemoteObjectProxy];
  [_extendedRemoteObjectProxy recomputeRelevantPassesWithSearchMode:mode];
}

- (void)fetchHasCandidatePasses:(id)passes
{
  passesCopy = passes;
  v5 = passesCopy;
  if (passesCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PKPassLibrary_fetchHasCandidatePasses___block_invoke;
    v8[3] = &unk_1E79C4428;
    v6 = passesCopy;
    v9 = v6;
    v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v8];
    [v7 fetchHasCandidatePasses:v6];
  }
}

- (void)fetchCurrentRelevantPassInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__PKPassLibrary_fetchCurrentRelevantPassInfo___block_invoke;
    v8[3] = &unk_1E79C4428;
    v6 = infoCopy;
    v9 = v6;
    v7 = [(PKPassLibrary *)self _extendedRemoteObjectProxyWithFailureHandler:v8];
    [v7 fetchCurrentRelevantPassInfo:v6];
  }
}

uint64_t __46__PKPassLibrary_fetchCurrentRelevantPassInfo___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_applyDataAccessorToObject:(id)object
{
  objectCopy = object;
  uniqueID = [objectCopy uniqueID];
  v5 = [[PKRemoteDataAccessor alloc] initWithLibrary:self objectUniqueID:uniqueID];
  [objectCopy setDataAccessor:v5];
}

+ (BOOL)contactlessInterfaceCanBePresentedFromSource:(int64_t)source
{
  v18 = *MEMORY[0x1E69E9840];
  if (PKNearFieldRadioIsAvailable())
  {
    BoolForKey = PKSharedCacheGetBoolForKey(@"ContactlessPassesAvailable");
    v5 = BoolForKey;
    if (!source && BoolForKey)
    {
      v6 = 1;
      v5 = PKDoubleClickAllowed();
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  if (source == 2)
  {
    v7 = _os_feature_enabled_impl();
    v8 = PKDeviceUILocked();
    if (v7)
    {
      v6 = v8 != 0;
    }

    else if (v8)
    {
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      v6 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE08]] == 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_13:
  v10 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPassLibrary contactlessInterfaceCanBePresentedFromSource: canBePresented: %@ shouldBePresented: %@", &v14, 0x16u);
  }

  return v5 && v6;
}

+ (BOOL)contactlessInterfaceCanBePresentedFromSource:(int64_t)source deviceUILocked:(BOOL)locked
{
  lockedCopy = locked;
  v19 = *MEMORY[0x1E69E9840];
  if (PKNearFieldRadioIsAvailable())
  {
    BoolForKey = PKSharedCacheGetBoolForKey(@"ContactlessPassesAvailable");
    v7 = BoolForKey;
    if (!source && BoolForKey)
    {
      v8 = 1;
      v7 = PKDoubleClickAllowed();
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
  }

  if (source == 2)
  {
    v9 = _os_feature_enabled_impl();
    v8 = v9 & lockedCopy;
    if ((v9 & 1) == 0 && lockedCopy)
    {
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      v8 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE08]] == 1;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  v11 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPassLibrary contactlessInterfaceCanBePresentedFromSource: canBePresented: %@ shouldBeShouldBePresented: %@", &v15, 0x16u);
  }

  return v7 & v8;
}

- (BOOL)_hasInterfaceOfType:(unint64_t)type
{
  interfaceType = self->_interfaceType;
  v4 = interfaceType - 1 < 2;
  v5 = interfaceType < 3;
  v6 = interfaceType == 2;
  if (type != 2)
  {
    v6 = v5;
  }

  if (type == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (PKPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end