@interface PKPaymentService
+ (id)paymentService;
- (BOOL)_hasInterfaceOfType:(unint64_t)type;
- (BOOL)hasPaymentDeviceFieldProperties;
- (BOOL)hasPendingProvisioningsOfTypes:(id)types;
- (BOOL)isCheckingAutoFillEligibility;
- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier;
- (BOOL)isExpressModeEnabledForRemotePassUniqueIdentifier:(id)identifier;
- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default;
- (NSString)defaultPaymentPassUniqueIdentifier;
- (PKExpressTransactionState)outstandingExpressTransactionState;
- (PKFieldProperties)paymentDeviceFieldProperties;
- (PKPaymentService)initWithDelegate:(id)delegate;
- (PKPaymentWebServiceContext)sharedPaymentWebServiceContext;
- (id)_extendedRemoteObjectProxy;
- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)handler;
- (id)_extendedSynchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)allPaymentApplicationUsageSummaries;
- (id)allSelectedPaymentOffersForPassUniqueID:(id)d;
- (id)approvedTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit;
- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type;
- (id)categoryVisualizationMagnitudesForPassUniqueID:(id)d;
- (id)defaultExpressFelicaTransitPassIdentifier;
- (id)defaultExpressTransitPassIdentifier;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)identifiers calendar:(id)calendar type:(unint64_t)type limit:(int64_t)limit;
- (id)entitlementsForPassIdentifier:(id)identifier;
- (id)expressPassConfigurationWithPassUniqueIdentifier:(id)identifier;
- (id)expressPassConfigurations;
- (id)expressPassConfigurationsWithCardType:(int64_t)type;
- (id)expressPassInformationForMode:(id)mode;
- (id)expressPassesInformation;
- (id)expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)type;
- (id)messagesAppLaunchTokenForPassWithUniqueIdentifier:(id)identifier;
- (id)paymentOffersCatalog;
- (id)paymentRewardsBalanceWithIdentifier:(id)identifier;
- (id)paymentRewardsBalancesWithPassUniqueIdentifier:(id)identifier;
- (id)paymentRewardsRedemptionForPaymentHash:(id)hash;
- (id)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier limit:(int64_t)limit;
- (id)spendingCategoryTransactionGroupsForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit;
- (id)transactionCountForRequest:(id)request;
- (id)transactionsAppLaunchTokenForPassWithUniqueIdentifier:(id)identifier;
- (id)transactionsForRequest:(id)request;
- (id)updateSelectedPaymentOffer:(id)offer forPassUniqueID:(id)d;
- (int64_t)virtualCardCountWithActiveVPAN;
- (unint64_t)activeAutoFillCardCount;
- (unint64_t)rangingSuspensionReasonForAppletSubcredential:(id)subcredential forPaymentApplicationID:(id)d;
- (unint64_t)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier;
- (void)_accessDelegate:(id)delegate;
- (void)_submitVerificationCode:(id)code verificationData:(id)data forDPANIdentifier:(id)identifier usingSynchronousProxy:(BOOL)proxy completion:(id)completion;
- (void)_updateForceConnectionOnResume;
- (void)acceptCarKeyShareForMessage:(id)message activationCode:(id)code completion:(id)completion;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion;
- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)addPendingProvisioning:(id)provisioning;
- (void)addPendingProvisionings:(id)provisionings completion:(id)completion;
- (void)addPlaceholderPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)addRemoteDevicePendingProvisioningReceipt:(id)receipt;
- (void)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier completion:(id)completion;
- (void)ambiguousTransactionWithServiceIdentifier:(id)identifier completion:(id)completion;
- (void)applicationMessagesWithCompletion:(id)completion;
- (void)approvedTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion;
- (void)archiveMessageWithIdentifier:(id)identifier;
- (void)augmentedProductForInstallmentConfiguration:(id)configuration experimentDetails:(id)details withCompletion:(id)completion;
- (void)balanceReminderThresholdForBalance:(id)balance pass:(id)pass withCompletion:(id)completion;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)cacheSharingMessageFromMailboxAddress:(id)address message:(id)message;
- (void)cachedFPANCredentialsWithCompletion:(id)completion;
- (void)canAcceptInvitation:(id)invitation withCompletion:(id)completion;
- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)identifier balanceIdentifiers:(id)identifiers completion:(id)completion;
- (void)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type completion:(id)completion;
- (void)categoryVisualizationMagnitudesForPassUniqueID:(id)d completion:(id)completion;
- (void)changePasscodeFrom:(id)from toPasscode:(id)passcode completion:(id)completion;
- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)completion;
- (void)checkAllAuxiliaryRegistrationRequirements;
- (void)checkInvitationStatusForMailboxAddress:(id)address completion:(id)completion;
- (void)clearFPANCardImportNotificationHistoryWithCompletion:(id)completion;
- (void)clearFPANCardImportNotificationsWithCompletion:(id)completion;
- (void)clearProvisioningSupportDataOfType:(unint64_t)type forPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)commutePlanReminderForCommputePlan:(id)plan pass:(id)pass withCompletion:(id)completion;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withCompletion:(id)completion;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withReferenceExpressState:(id)state completion:(id)completion;
- (void)conflictingExpressPassIdentifiersForPassInformation:(id)information withCompletion:(id)completion;
- (void)conflictingExpressPassIdentifiersForPassInformation:(id)information withReferenceExpressState:(id)state completion:(id)completion;
- (void)consistencyCheck;
- (void)createShareForPartialShareInvitation:(id)invitation authorization:(id)authorization completion:(id)completion;
- (void)createShareInvitationForPartialShareInvitation:(id)invitation existingTransportIdentifier:(id)identifier authorization:(id)authorization completion:(id)completion;
- (void)createSingleUseShareURLWithMessage:(id)message timeToLive:(unint64_t)live completion:(id)completion;
- (void)credential:(id)credential forPaymentApplication:(id)application didUpdateRangingSuspensionReasons:(unint64_t)reasons;
- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion;
- (void)credentialWithIdentifier:(id)identifier completion:(id)completion;
- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy;
- (void)currentSecureElementSnapshot:(id)snapshot;
- (void)dealloc;
- (void)defaultPaymentPassIngestionSpecificIdentifier:(id)identifier;
- (void)deleteAllTransactionsForTransactionSourceIdentifiers:(id)identifiers;
- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion;
- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)d completion:(id)completion;
- (void)deleteMessagesForPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)deletePaymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier;
- (void)deletePaymentTransactionWithIdentifier:(id)identifier;
- (void)deletePaymentTransactionsWithIdentifiers:(id)identifiers;
- (void)deleteReservation:(id)reservation completion:(id)completion;
- (void)deleteSharingMessage:(id)message;
- (void)deleteTransactionReceiptWithUniqueID:(id)d completion:(id)completion;
- (void)didInteractWithConfirmationRecordFollowupMessage:(id)message;
- (void)didReceiveActivationCodeFailureForCredentialIdentifier:(id)identifier attemptsRemaining:(unint64_t)remaining completion:(id)completion;
- (void)didReceiveDeviceSharingCapabilities:(id)capabilities forHandle:(id)handle;
- (void)didReceivePendingProvisioningUpdate:(id)update;
- (void)didRecieveCredentialInvitation:(id)invitation;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping;
- (void)didUpdateApplicationMessages:(id)messages;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)didUpdateFamilyMembers:(id)members;
- (void)displayTapToRadarAlertForRequest:(id)request completion:(id)completion;
- (void)displayableEntitlementsForPassIdentifier:(id)identifier completion:(id)completion;
- (void)displayableSharesForPassIdentifier:(id)identifier completion:(id)completion;
- (void)downloadAllPaymentPasses;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion;
- (void)familyMembersIgnoringCache:(BOOL)cache completion:(id)completion;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)featureApplicationWithIdentifier:(id)identifier completion:(id)completion;
- (void)featureApplicationWithReferenceIdentifier:(id)identifier completion:(id)completion;
- (void)featureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)featureApplicationsForAccountUserInvitationWithCompletion:(id)completion;
- (void)featureApplicationsForProvisioningWithCompletion:(id)completion;
- (void)featureApplicationsWithCompletion:(id)completion;
- (void)fetchBarcodesForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion;
- (void)forceTransmissionOfUserActivitySignals;
- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d authorization:(id)authorization completion:(id)completion;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error;
- (void)fpanDescriptorAndCredentialForFPAN:(id)n descriptor:(id *)descriptor credential:(id *)credential error:(id *)error;
- (void)generateUnderlyingKeyReportWithCompletion:(id)completion;
- (void)handleStandaloneTransaction:(id)transaction;
- (void)hasActiveExternallySharedPasses:(id)passes;
- (void)hasEligibleCriteriaForPassUniqueID:(id)d completion:(id)completion;
- (void)hasEligibleCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type completion:(id)completion;
- (void)hasTransactionsForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)hasTransactionsRelatedToTransaction:(id)transaction transactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)initializeSecureElement:(id)element;
- (void)initializeSecureElementIfNecessaryWithCompletion:(id)completion;
- (void)insertFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)insertOrUpdatePaymentOfferConfirmationRecord:(id)record completion:(id)completion;
- (void)insertOrUpdatePaymentRewardsRedemption:(id)redemption withPassUniqueIdentifier:(id)identifier;
- (void)insertOrUpdatePaymentTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)insertOrUpdatePaymentTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)insertOrUpdateValueAddedServiceTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentTransaction:(id)paymentTransaction completion:(id)completion;
- (void)insertUserLegalAgreement:(id)agreement;
- (void)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)identifiers accountIdentifier:(id)identifier redeemed:(BOOL)redeemed withRedemptionType:(unint64_t)type startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)installmentPlansWithTransactionReferennceIdentifier:(id)identifier completion:(id)completion;
- (void)installmentTransactionsForInstallmentPlanIdentifier:(id)identifier completion:(id)completion;
- (void)invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)isPassExpressWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)issuerInstallmentTransactionsForPassUniqueID:(id)d completion:(id)completion;
- (void)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)identifiers paymentHashes:(id)hashes completion:(id)completion;
- (void)logoImageDataForURL:(id)l completion:(id)completion;
- (void)mapsMerchantWithIdentifier:(unint64_t)identifier resultProviderIdentifier:(int)providerIdentifier completion:(id)completion;
- (void)mapsMerchantsWithCompletion:(id)completion;
- (void)markAuthenticationCompleteForTransactionIdentifier:(id)identifier completion:(id)completion;
- (void)matchingInvitationOnDevice:(id)device withTimeout:(unint64_t)timeout completion:(id)completion;
- (void)memberTypeForCurrentUserWithCompletion:(id)completion;
- (void)merchantForPassUniqueIdentifier:(id)identifier withAuxiliaryPassInformationItem:(id)item completion:(id)completion;
- (void)messagesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)notifyForFPANCardImportConsentWithCompletion:(id)completion;
- (void)notifyForFPANCardImportWithCredentials:(id)credentials withCompletion:(id)completion;
- (void)passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion;
- (void)passSharesForCredentialIdentifier:(id)identifier completion:(id)completion;
- (void)passUniqueIdentifierForTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier completion:(id)completion;
- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)passWithUniqueIdentifier:(id)identifier didReceiveValueAddedServiceTransaction:(id)transaction;
- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context;
- (void)passbookUIServiceDidLaunch;
- (void)paymentDeviceDidEnterFieldWithProperties:(id)properties;
- (void)paymentDeviceDidExitField;
- (void)paymentOfferCatalogChangedFromPush:(id)push;
- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash;
- (void)paymentOfferConfirmationRecordForTransactionWithPaymentHash:(id)hash completion:(id)completion;
- (void)paymentOfferCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type completion:(id)completion;
- (void)paymentOffersForCriteriaIdentifier:(id)identifier selectedPassDetails:(id)details sessionIdentifier:(id)sessionIdentifier sessionDetails:(id)sessionDetails updateReason:(unint64_t)reason fraudAssessment:(id)assessment completion:(id)completion;
- (void)paymentOffersMerchandisingForSessionDetails:(id)details merchandisingIdentifiers:(id)identifiers needsProvisioningMerchandisingIdentifiers:(id)merchandisingIdentifiers completion:(id)completion;
- (void)paymentPassForVirtualCard:(id)card completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateCategoryVisualizationWithStyle:(int64_t)style;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier paymentHashes:(id)hashes completion:(id)completion;
- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)pendingFamilyMembersIgnoringCache:(BOOL)cache completion:(id)completion;
- (void)pendingShareActivationForShareIdentifier:(id)identifier completion:(id)completion;
- (void)pendingTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion;
- (void)performAfterEligibilityFinishes:(id)finishes;
- (void)performDeviceCheckInWithCompletion:(id)completion;
- (void)performProductActionRequest:(id)request completion:(id)completion;
- (void)photosForFamilyMembersWithDSIDs:(id)ds completion:(id)completion;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)prepareIdentityProvisioningForTargetDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion;
- (void)prewarmCreateShareForPassIdentifier:(id)identifier completion:(id)completion;
- (void)processSharingCLICommands:(id)commands completion:(id)completion;
- (void)processTransitTransactionEventWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier expressTransactionState:(id)state;
- (void)processedAuthenticationMechanism:(unint64_t)mechanism forTransactionIdentifier:(id)identifier completion:(id)completion;
- (void)productsWithCompletion:(id)completion;
- (void)productsWithRequest:(id)request completion:(id)completion;
- (void)provideEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier completion:(id)completion;
- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations completion:(id)completion;
- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion;
- (void)pushProvisioningSharingIdentifiers:(id)identifiers;
- (void)queueIdentityPassProvisioningWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier supplementalData:(id)data completion:(id)completion;
- (void)rangingSuspensionReasonForAppletSubcredential:(id)subcredential forPaymentApplicationID:(id)d completion:(id)completion;
- (void)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier completion:(id)completion;
- (void)recomputeCategoryVisualizationMangitudesForPassUniqueID:(id)d style:(int64_t)style;
- (void)recordPassTransactionActivitySummaryForPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier presentmentType:(unint64_t)type;
- (void)recordPaymentApplicationUsageForPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier;
- (void)redeemEncryptedProvisioningTarget:(id)target completion:(id)completion;
- (void)redeemPaymentShareableCredential:(id)credential completion:(id)completion;
- (void)redeemProvisioningSharingIdentifier:(id)identifier completion:(id)completion;
- (void)refreshMerchantTokenMetadataWithCompletion:(id)completion;
- (void)regenerateVPANCardCredentialsForVirtualCard:(id)card authorization:(id)authorization completion:(id)completion;
- (void)regionsMatchingName:(id)name types:(id)types completion:(id)completion;
- (void)regionsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)registerAuxiliaryCapabilityForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion;
- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)rejectShareForMailboxAddress:(id)address;
- (void)relinquishInvitation:(id)invitation completion:(id)completion;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)removeApplicationMessageWithKey:(id)key;
- (void)removeApplicationMessagesWithKeys:(id)keys completion:(id)completion;
- (void)removeExpressPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)removeExpressPassWithUniqueIdentifierV2:(id)v2 completion:(id)completion;
- (void)removeExpressPassesWithCardType:(int64_t)type completion:(id)completion;
- (void)removeMapsDataForTransactionWithIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier issueReportIdentifier:(id)reportIdentifier completion:(id)completion;
- (void)removePaymentOffersCatalog;
- (void)removePendingProvisioningOfType:(id)type withUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)removeProductsCache;
- (void)removeSelectedPaymentOffer:(id)offer associatedWithPassUniqueID:(id)d;
- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)identifier completion:(id)completion;
- (void)requestNotificationAuthorizationIfNecessaryWithCompletion:(id)completion;
- (void)requestNotificationAuthorizationWithCompletion:(id)completion;
- (void)requiresUpgradedPasscodeWithCompletion:(id)completion;
- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion;
- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)identifier authorization:(id)authorization sessionExchangeToken:(id)token withCompletion:(id)completion;
- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)identifier authorization:(id)authorization withCompletion:(id)completion;
- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion;
- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier withCompletion:(id)completion;
- (void)retrievePendingProvisioningOfType:(id)type withUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrievePendingProvisioningsWithType:(id)type completion:(id)completion;
- (void)retrieveShareInvitationForMailboxAddress:(id)address completion:(id)completion;
- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)revokeCredentialsWithReaderIdentifiers:(id)identifiers completion:(id)completion;
- (void)revokeMerchantTokenWithIdentifier:(id)identifier completion:(id)completion;
- (void)revokeShareForPassIdentifier:(id)identifier share:(id)share shouldCascade:(BOOL)cascade completion:(id)completion;
- (void)revokeSharesForPassIdentifier:(id)identifier shares:(id)shares shouldCascade:(BOOL)cascade completion:(id)completion;
- (void)sanitizeExpressPasses;
- (void)saveProvisioningSupportData:(id)data forPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)scheduleApplePayDemoActivitySignal;
- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)offset;
- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)date;
- (void)scheduleSetupReminders;
- (void)selectedPaymentOfferRemoved:(id)removed passUniqueID:(id)d;
- (void)selectedPaymentOfferUpdated:(id)updated passUniqueID:(id)d;
- (void)sendAllPassTransactions;
- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)handle completion:(id)completion;
- (void)sendSharingMessageTo:(id)to message:(id)message completion:(id)completion;
- (void)setAccountAttestationAnonymizationSalt:(id)salt withCompletion:(id)completion;
- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion;
- (void)setDefaultExpressFelicaTransitPassIdentifier:(id)identifier withCredential:(id)credential completion:(id)completion;
- (void)setDefaultExpressTransitPassIdentifier:(id)identifier withCredential:(id)credential completion:(id)completion;
- (void)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)setDefaultPaymentPassUniqueIdentifier:(id)identifier;
- (void)setDeviceCheckInContextBuildVersion:(id)version outstandingAction:(int64_t)action forRegion:(id)region;
- (void)setDeviceUpgradeTasksContextBuildVersion:(id)version upgradeTaskVersion:(int64_t)taskVersion retryCount:(int64_t)count;
- (void)setDoubleClickAllowed:(BOOL)allowed;
- (void)setExpressWithPassConfiguration:(id)configuration credential:(id)credential handler:(id)handler;
- (void)setExpressWithPassInformation:(id)information credential:(id)credential completion:(id)completion;
- (void)setExpressWithPassInformation:(id)information credential:(id)credential handler:(id)handler;
- (void)setNFCPayloadState:(unint64_t)state forPass:(id)pass;
- (void)setPaymentApplicationRangingSuspensionReason:(unint64_t)reason forPassUniqueIdentifier:(id)identifier;
- (void)setSharedPaymentWebServiceContext:(id)context;
- (void)sharedPaymentWebServiceContextWithCompletion:(id)completion;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)sharingCapabilitiesForPassIdentifier:(id)identifier outHasShares:(BOOL *)shares outHasShareableEntitlements:(BOOL *)entitlements;
- (void)sharingInvitationWasInvalidated:(id)invalidated withCredentialIdentifier:(id)identifier error:(id)error completion:(id)completion;
- (void)simulateDefaultExpressTransitPassIdentifier:(id)identifier forExpressMode:(id)mode;
- (void)simulateDeviceAccessory;
- (void)simulateEnableBiometricsForPass:(id)pass;
- (void)simulateExpressTransactionForPassUniqueIdentifier:(id)identifier;
- (void)simulateNotificationOfType:(unint64_t)type userInfo:(id)info;
- (void)simulatePaymentPushTopic:(id)topic payload:(id)payload;
- (void)simulateSecureEvent:(id)event;
- (void)simulateVehicleInitiatedPairingWithTCIs:(id)is brandCode:(int64_t)code;
- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method;
- (void)statusForShareableCredentials:(id)credentials completion:(id)completion;
- (void)storePassOwnershipToken:(id)token withIdentifier:(id)identifier;
- (void)storeTransactionReceiptData:(id)data completion:(id)completion;
- (void)subcredentialInvitationsWithCompletion:(id)completion;
- (void)submitApplyRequest:(id)request completion:(id)completion;
- (void)submitBarcodePaymentEvent:(id)event forPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion;
- (void)submitBarcodePaymentEvent:(id)event forPassUniqueIdentifier:(id)identifier withCompletion:(id)completion;
- (void)submitDeleteRequest:(id)request completion:(id)completion;
- (void)submitDocumentRequest:(id)request completion:(id)completion;
- (void)submitEncryptedPIN:(id)n forTransactionIdentifier:(id)identifier completion:(id)completion;
- (void)submitEncryptedPIN:(id)n forTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion;
- (void)submitTermsRequest:(id)request completion:(id)completion;
- (void)submitTransactionAnswerForTransaction:(id)transaction questionType:(unint64_t)type answer:(id)answer completion:(id)completion;
- (void)submitTransactionSignatureForTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion;
- (void)submitUserConfirmation:(BOOL)confirmation forTransactionIdentifier:(id)identifier completion:(id)completion;
- (void)submitUserConfirmation:(BOOL)confirmation forTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion;
- (void)submitVerificationRequest:(id)request completion:(id)completion;
- (void)suggestPaymentFPANCredentialImport:(id)import withCompletion:(id)completion;
- (void)tappedApplicationMessageWithKey:(id)key;
- (void)tilesForPassWithUniqueIdentifier:(id)identifier context:(int64_t)context completion:(id)completion;
- (void)transactionBatch:(id)batch moreComing:(BOOL)coming readyForNextBatch:(id)nextBatch;
- (void)transactionCountByPeriodForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit includePurchaseTotal:(BOOL)total completion:(id)completion;
- (void)transactionCountForRequest:(id)request completion:(id)completion;
- (void)transactionReceiptForTransactionWithIdentifier:(id)identifier updateIfNecessary:(BOOL)necessary completion:(id)completion;
- (void)transactionReceiptWithUniqueID:(id)d completion:(id)completion;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)transactionSourceIdentifiersForPassUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)transactionSourceTypeForTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)transactionTagsForTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt;
- (void)transactionWithReferenceIdentifier:(id)identifier completion:(id)completion;
- (void)transactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier completion:(id)completion;
- (void)transactionWithTransactionIdentifier:(id)identifier completion:(id)completion;
- (void)transactionsForPredicate:(id)predicate limit:(int64_t)limit completion:(id)completion;
- (void)transactionsForRequest:(id)request completion:(id)completion;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers matchingMerchant:(id)merchant withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withMerchantCategory:(int64_t)category withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)self0;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withPeerPaymentCounterpartHandles:(id)handles withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionType:(int64_t)type withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)self0;
- (void)transactionsRelatedToTransaction:(id)transaction transactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)transactionsRequiringReviewForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)transactionsTotalAmountForRequest:(id)request completion:(id)completion;
- (void)transactionsWithFullPaymentHashes:(id)hashes transactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)transactionsWithTransactionIdentifiers:(id)identifiers completion:(id)completion;
- (void)transactionsWithTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion;
- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)unscheduleDeviceCheckIn;
- (void)unscheduleDeviceUpgradeTaskActivity;
- (void)updateAllMapsBrandAndMerchantDataWithCompletion:(id)completion;
- (void)updateCardholderNameFromSafari:(id)safari forVirtualCard:(id)card completion:(id)completion;
- (void)updateDateLastUsedBySafari:(id)safari forVirtualCard:(id)card completion:(id)completion;
- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion;
- (void)updateFeatureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateFinanceKitApplicationMessages;
- (void)updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion;
- (void)updateNotificationForProductIdentifier:(id)identifier configuration:(id)configuration localizedNotificationTitle:(id)title localizedNotificationMessage:(id)message completion:(id)completion;
- (void)updatePaymentOfferCatalogVersion:(int64_t)version shouldRemove:(BOOL)remove;
- (void)updatePaymentOfferConfirmationRecordProcessEvents:(unint64_t)events forPaymentHash:(id)hash successfully:(BOOL)successfully completion:(id)completion;
- (void)updatePaymentOffersCatalogWithReason:(unint64_t)reason completion:(id)completion;
- (void)updatePaymentRewardsBalancesWithPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion;
- (void)updatePreferredCategory:(int64_t)category forTransactionsWithIdentifiers:(id)identifiers paymentPass:(id)pass completion:(id)completion;
- (void)updateShareForPassIdentifier:(id)identifier share:(id)share authorization:(id)authorization completion:(id)completion;
- (void)updateWalletBadgeCount;
- (void)userNotificationActionPerformed:(unint64_t)performed applicationMessageContentIdentifier:(id)identifier completion:(id)completion;
- (void)userNotificationActionPerformed:(unint64_t)performed notificationIdentifier:(id)identifier completion:(id)completion;
- (void)userRejectedSavingFPANCardWithDescriptor:(id)descriptor credential:(id)credential options:(unint64_t)options permanent:(BOOL)permanent;
- (void)valueAddedServiceTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)valueAddedServiceTransactionsForPassWithUniqueIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion;
- (void)valueAddedServiceTransactionsForPaymentTransaction:(id)transaction limit:(int64_t)limit completion:(id)completion;
- (void)virtualCardsWithActiveVPAN:(id)n;
- (void)vpanCardCredentialsForVirtualCard:(id)card authorization:(id)authorization merchantHost:(id)host completion:(id)completion;
@end

@implementation PKPaymentService

- (void)_updateForceConnectionOnResume
{
  os_unfair_lock_lock(&self->_lockObservers);
  v3 = [(NSHashTable *)self->_observers count];
  if (v3)
  {
    forceConnectionOnResume = 0;
  }

  else
  {
    forceConnectionOnResume = self->_forceConnectionOnResume;
  }

  if (forceConnectionOnResume)
  {
    v5 = 0;
LABEL_9:
    self->_forceConnectionOnResume = v5;
    [(PKXPCService *)self->_remoteService setForceConnectionOnResume:!forceConnectionOnResume];
    goto LABEL_10;
  }

  if (!self->_forceConnectionOnResume && v3)
  {
    v5 = 1;
    goto LABEL_9;
  }

LABEL_10:

  os_unfair_lock_unlock(&self->_lockObservers);
}

- (PKPaymentWebServiceContext)sharedPaymentWebServiceContext
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__26;
  v11 = __Block_byref_object_dispose__26;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKPaymentService_sharedPaymentWebServiceContext__block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a2;
  v2 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PKPaymentService_sharedPaymentWebServiceContext__block_invoke_282;
  v5[3] = &unk_1E79D1618;
  v5[4] = &v7;
  [v2 usingSynchronousProxy:1 fetchSharedPaymentWebServiceContextWithCompletion:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)dealloc
{
  if (self->_forceConnectionOnResume)
  {
    [(PKXPCService *)self->_remoteService setForceConnectionOnResume:0];
  }

  v3.receiver = self;
  v3.super_class = PKPaymentService;
  [(PKPaymentService *)&v3 dealloc];
}

- (void)checkInvitationStatusForMailboxAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  addressCopy = address;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke_14;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 checkInvitationStatusForMailboxAddress:addressCopy completion:v13];
}

void __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrieveShareInvitationForMailboxAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  addressCopy = address;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke_16;
  v13[3] = &unk_1E79C97A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 retrieveShareInvitationForMailboxAddress:addressCopy completion:v13];
}

void __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)relinquishInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  invitationCopy = invitation;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke_18;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 relinquishInvitation:invitationCopy completion:v13];
}

void __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke_18(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prewarmCreateShareForPassIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke_20;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 prewarmCreateShareForPassIdentifier:identifierCopy completion:v13];
}

void __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)createShareForPartialShareInvitation:(id)invitation authorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  authorizationCopy = authorization;
  invitationCopy = invitation;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke_21;
  v16[3] = &unk_1E79C97C8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 createShareForPartialShareInvitation:invitationCopy authorization:authorizationCopy completion:v16];
}

void __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke_21(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)createShareInvitationForPartialShareInvitation:(id)invitation existingTransportIdentifier:(id)identifier authorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  authorizationCopy = authorization;
  identifierCopy = identifier;
  invitationCopy = invitation;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke_23;
  v19[3] = &unk_1E79C97F0;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 createShareInvitationForPartialShareInvitation:invitationCopy existingTransportIdentifier:identifierCopy authorization:authorizationCopy completion:v19];
}

void __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v3);
  }
}

uint64_t __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke_23(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)acceptCarKeyShareForMessage:(id)message activationCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  codeCopy = code;
  messageCopy = message;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke_25;
  v16[3] = &unk_1E79C9818;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 acceptCarKeyShareForMessage:messageCopy activationCode:codeCopy completion:v16];
}

void __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cacheSharingMessageFromMailboxAddress:(id)address message:(id)message
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __75__PKPaymentService_Sharing__cacheSharingMessageFromMailboxAddress_message___block_invoke;
  v13 = &unk_1E79C9840;
  selfCopy = self;
  v15 = a2;
  messageCopy = message;
  addressCopy = address;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v8, v10, v11, v12, v13, selfCopy, v15];
  [v9 cacheSharingMessageFromMailboxAddress:addressCopy message:messageCopy];
}

void __75__PKPaymentService_Sharing__cacheSharingMessageFromMailboxAddress_message___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)deleteSharingMessage:(id)message
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__PKPaymentService_Sharing__deleteSharingMessage___block_invoke;
  v10 = &unk_1E79C9840;
  selfCopy = self;
  v12 = a2;
  messageCopy = message;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, selfCopy, v12];
  [v6 deleteSharingMessage:messageCopy];
}

void __50__PKPaymentService_Sharing__deleteSharingMessage___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)createSingleUseShareURLWithMessage:(id)message timeToLive:(unint64_t)live completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  messageCopy = message;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke_27;
  v15[3] = &unk_1E79C9868;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 createSingleUseShareURLWithMessage:messageCopy timeToLive:live completion:v15];
}

void __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke_27(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateShareForPassIdentifier:(id)identifier share:(id)share authorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  authorizationCopy = authorization;
  shareCopy = share;
  identifierCopy = identifier;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke_29;
  v19[3] = &unk_1E79C4A68;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 updateShareForPassIdentifier:identifierCopy share:shareCopy authorization:authorizationCopy completion:v19];
}

void __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke_29(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)revokeShareForPassIdentifier:(id)identifier share:(id)share shouldCascade:(BOOL)cascade completion:(id)completion
{
  cascadeCopy = cascade;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v22 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v21 = v12;
  shareCopy = share;
  identifierCopy = identifier;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke_30;
  v18[3] = &unk_1E79C4A68;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 revokeShareForPassIdentifier:identifierCopy share:shareCopy shouldCascade:cascadeCopy completion:v18];
}

void __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke_30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)revokeSharesForPassIdentifier:(id)identifier shares:(id)shares shouldCascade:(BOOL)cascade completion:(id)completion
{
  cascadeCopy = cascade;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v22 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v21 = v12;
  sharesCopy = shares;
  identifierCopy = identifier;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke_31;
  v18[3] = &unk_1E79C4A68;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 revokeSharesForPassIdentifier:identifierCopy shares:sharesCopy shouldCascade:cascadeCopy completion:v18];
}

void __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke_31(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rejectShareForMailboxAddress:(id)address
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKPaymentService_Sharing__rejectShareForMailboxAddress___block_invoke;
  v10 = &unk_1E79C9840;
  selfCopy = self;
  v12 = a2;
  addressCopy = address;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, selfCopy, v12];
  [v6 rejectShareForMailboxAddress:addressCopy];
}

void __58__PKPaymentService_Sharing__rejectShareForMailboxAddress___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (id)entitlementsForPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_Sharing__entitlementsForPassIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = a2;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKPaymentService_Sharing__entitlementsForPassIdentifier___block_invoke_32;
  v10[3] = &unk_1E79C47C0;
  v10[4] = &v11;
  [v7 usingSynchronousProxy:1 entitlementsForPassIdentifier:identifierCopy completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __59__PKPaymentService_Sharing__entitlementsForPassIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)hasActiveExternallySharedPasses:(id)passes
{
  passesCopy = passes;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_Sharing__hasActiveExternallySharedPasses___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = passesCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPaymentService_Sharing__hasActiveExternallySharedPasses___block_invoke_34;
  v10[3] = &unk_1E79C4888;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 hasActiveExternallySharedPasses:v10];
}

void __61__PKPaymentService_Sharing__hasActiveExternallySharedPasses___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __61__PKPaymentService_Sharing__hasActiveExternallySharedPasses___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)displayableSharesForPassIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke_35;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 displayableSharesForPassIdentifier:identifierCopy completion:v13];
}

void __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke_35(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sharingCapabilitiesForPassIdentifier:(id)identifier outHasShares:(BOOL *)shares outHasShareableEntitlements:(BOOL *)entitlements
{
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PKPaymentService_Sharing__sharingCapabilitiesForPassIdentifier_outHasShares_outHasShareableEntitlements___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v10 = _Block_copy(aBlock);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v10];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__PKPaymentService_Sharing__sharingCapabilitiesForPassIdentifier_outHasShares_outHasShareableEntitlements___block_invoke_36;
  v12[3] = &unk_1E79C98B0;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[4] = self;
  [v11 sharingCapabilitiesForPassIdentifier:identifierCopy completion:v12];
  if (shares)
  {
    *shares = *(v18 + 24);
  }

  if (entitlements)
  {
    *entitlements = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __107__PKPaymentService_Sharing__sharingCapabilitiesForPassIdentifier_outHasShares_outHasShareableEntitlements___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __107__PKPaymentService_Sharing__sharingCapabilitiesForPassIdentifier_outHasShares_outHasShareableEntitlements___block_invoke_36(uint64_t result, char a2, char a3)
{
  *(*(*(result + 40) + 8) + 24) = a2;
  *(*(*(result + 48) + 8) + 24) = a3;
  return result;
}

- (void)displayableEntitlementsForPassIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke_38;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 displayableEntitlementsForPassIdentifier:identifierCopy completion:v13];
}

void __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendSharingMessageTo:(id)to message:(id)message completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  messageCopy = message;
  toCopy = to;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke_39;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 sendSharingMessageTo:toCopy message:messageCopy completion:v16];
}

void __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke_39(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didReceiveActivationCodeFailureForCredentialIdentifier:(id)identifier attemptsRemaining:(unint64_t)remaining completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)pendingShareActivationForShareIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke_40;
  v13[3] = &unk_1E79C98D8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 pendingShareActivationForShareIdentifier:identifierCopy completion:v13];
}

void __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processSharingCLICommands:(id)commands completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  commandsCopy = commands;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke_45;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 processSharingCLICommands:commandsCopy completion:v13];
}

void __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, @"XPC Failure");
  }
}

uint64_t __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke_45(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)paymentOffersCatalog
{
  v3 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPaymentService_PaymentOffers__paymentOffersCatalog__block_invoke;
  v6[3] = &unk_1E79C9B50;
  v6[4] = self;
  v6[5] = &v7;
  [v3 paymentOffersCatalogWithCompletion:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updatePaymentOffersCatalogWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_PaymentOffers__updatePaymentOffersCatalogWithReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKPaymentService_PaymentOffers__updatePaymentOffersCatalogWithReason_completion___block_invoke_15;
  v12[3] = &unk_1E79C9B78;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 updatePaymentOffersCatalogWithReason:reason completion:v12];
}

void __83__PKPaymentService_PaymentOffers__updatePaymentOffersCatalogWithReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0);
  }
}

uint64_t __83__PKPaymentService_PaymentOffers__updatePaymentOffersCatalogWithReason_completion___block_invoke_15(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removePaymentOffersCatalog
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKPaymentService_PaymentOffers__removePaymentOffersCatalog__block_invoke;
  v5[3] = &unk_1E79C9840;
  v5[4] = self;
  v5[5] = a2;
  v3 = _Block_copy(v5);
  v4 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v3];
  [v4 removePaymentOffersCatalog];
}

void __61__PKPaymentService_PaymentOffers__removePaymentOffersCatalog__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)updatePaymentOfferCatalogVersion:(int64_t)version shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKPaymentService_PaymentOffers__updatePaymentOfferCatalogVersion_shouldRemove___block_invoke;
  v9[3] = &unk_1E79C9840;
  v9[4] = self;
  v9[5] = a2;
  v7 = _Block_copy(v9);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v7];
  [v8 updatePaymentOfferCatalogVersion:version shouldRemove:removeCopy];
}

void __81__PKPaymentService_PaymentOffers__updatePaymentOfferCatalogVersion_shouldRemove___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)paymentOffersForCriteriaIdentifier:(id)identifier selectedPassDetails:(id)details sessionIdentifier:(id)sessionIdentifier sessionDetails:(id)sessionDetails updateReason:(unint64_t)reason fraudAssessment:(id)assessment completion:(id)completion
{
  completionCopy = completion;
  v18 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke;
    aBlock[3] = &unk_1E79C9778;
    v32 = a2;
    v19 = completionCopy;
    aBlock[4] = self;
    v31 = v19;
    assessmentCopy = assessment;
    sessionDetailsCopy = sessionDetails;
    sessionIdentifierCopy = sessionIdentifier;
    detailsCopy = details;
    reasonCopy = reason;
    identifierCopy = identifier;
    v27 = _Block_copy(aBlock);
    v25 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v27];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke_17;
    v28[3] = &unk_1E79C9BA0;
    v28[4] = self;
    v29 = v19;
    [v25 paymentOffersForCriteriaIdentifier:identifierCopy selectedPassDetails:detailsCopy sessionIdentifier:sessionIdentifierCopy sessionDetails:sessionDetailsCopy updateReason:reasonCopy fraudAssessment:assessmentCopy completion:v28];
  }
}

void __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke_17(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)issuerInstallmentTransactionsForPassUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  dCopy = d;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_19;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 issuerInstallmentTransactionsForPassUniqueID:dCopy completion:v13];
}

void __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0);
  }
}

uint64_t __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_19(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)identifiers paymentHashes:(id)hashes completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  hashesCopy = hashes;
  identifiersCopy = identifiers;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke_21;
  v16[3] = &unk_1E79C9BC8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 issuerInstallmentTransactionsForTransactionSourceIdentifiers:identifiersCopy paymentHashes:hashesCopy completion:v16];
}

void __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke_21(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  dCopy = d;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_22;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteIssuerInstallmentTransactionsForPassUniqueID:dCopy completion:v13];
}

void __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_22(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertOrUpdatePaymentOfferConfirmationRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  recordCopy = record;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke_23;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertOrUpdatePaymentOfferConfirmationRecord:recordCopy completion:v13];
}

void __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke_23(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updatePaymentOfferConfirmationRecordProcessEvents:(unint64_t)events forPaymentHash:(id)hash successfully:(BOOL)successfully completion:(id)completion
{
  successfullyCopy = successfully;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v21 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v20 = v12;
  hashCopy = hash;
  v14 = _Block_copy(aBlock);
  v15 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke_24;
  v17[3] = &unk_1E79C9BF0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 updatePaymentOfferConfirmationRecordProcessEvents:events forPaymentHash:hashCopy successfully:successfullyCopy completion:v17];
}

void __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke_24(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentOfferConfirmationRecordForTransactionWithPaymentHash:(id)hash completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  hashCopy = hash;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke_26;
  v13[3] = &unk_1E79C9C18;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 paymentOfferConfirmationRecordForTransactionWithPaymentHash:hashCopy completion:v13];
}

void __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke_26(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)allSelectedPaymentOffersForPassUniqueID:(id)d
{
  dCopy = d;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKPaymentService_PaymentOffers__allSelectedPaymentOffersForPassUniqueID___block_invoke;
  v8[3] = &unk_1E79C9C40;
  v8[4] = self;
  v8[5] = &v9;
  [v5 allSelectedPaymentOffersForPassUniqueID:dCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)updateSelectedPaymentOffer:(id)offer forPassUniqueID:(id)d
{
  offerCopy = offer;
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v8 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentService_PaymentOffers__updateSelectedPaymentOffer_forPassUniqueID___block_invoke;
  v11[3] = &unk_1E79C9C68;
  v11[4] = self;
  v11[5] = &v12;
  [v8 updateSelectedPaymentOffer:offerCopy forPassUniqueID:dCopy completion:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)removeSelectedPaymentOffer:(id)offer associatedWithPassUniqueID:(id)d
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __89__PKPaymentService_PaymentOffers__removeSelectedPaymentOffer_associatedWithPassUniqueID___block_invoke;
  v13 = &unk_1E79C9840;
  selfCopy = self;
  v15 = a2;
  dCopy = d;
  offerCopy = offer;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v8, v10, v11, v12, v13, selfCopy, v15];
  [v9 removeSelectedPaymentOffer:offerCopy associatedWithPassUniqueID:dCopy];
}

void __89__PKPaymentService_PaymentOffers__removeSelectedPaymentOffer_associatedWithPassUniqueID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)hasEligibleCriteriaForPassUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  dCopy = d;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke_30;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 hasEligibleCriteriaForPassUniqueID:dCopy completion:v13];
}

void __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke_30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasEligibleCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  dCopy = d;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke_32;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 hasEligibleCriteriaForPassUniqueID:dCopy criteriaType:type completion:v15];
}

void __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke_32(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentOfferCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  dCopy = d;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke_33;
  v15[3] = &unk_1E79C9C90;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 paymentOfferCriteriaForPassUniqueID:dCopy criteriaType:type completion:v15];
}

void __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke_33(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didInteractWithConfirmationRecordFollowupMessage:(id)message
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_PaymentOffers__didInteractWithConfirmationRecordFollowupMessage___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  messageCopy = message;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentService_PaymentOffers__didInteractWithConfirmationRecordFollowupMessage___block_invoke_35;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 didInteractWithConfirmationRecordFollowupMessage:messageCopy completion:v7];
}

void __84__PKPaymentService_PaymentOffers__didInteractWithConfirmationRecordFollowupMessage___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier paymentHashes:(id)hashes completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  hashesCopy = hashes;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke_37;
  v16[3] = &unk_1E79C9BC8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 paymentRewardsRedemptionsForPassUniqueIdentifier:identifierCopy paymentHashes:hashesCopy completion:v16];
}

void __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, MEMORY[0x1E695E0F0], v3);
  }
}

uint64_t __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke_37(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updatePaymentRewardsBalancesWithPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke_38;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updatePaymentRewardsBalancesWithPassUniqueIdentifier:identifierCopy completion:v13];
}

void __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, MEMORY[0x1E695E0F0], 0);
  }
}

uint64_t __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke_39;
  v15[3] = &unk_1E79C9BC8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:identifierCopy limit:limit completion:v15];
}

void __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke_39(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)paymentRewardsBalanceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKPaymentService_PaymentOffers__paymentRewardsBalanceWithIdentifier___block_invoke;
  v8[3] = &unk_1E79C9CB8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 paymentRewardsBalanceWithIdentifier:identifierCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)paymentRewardsBalancesWithPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PKPaymentService_PaymentOffers__paymentRewardsBalancesWithPassUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E79C9C40;
  v8[4] = self;
  v8[5] = &v9;
  [v5 paymentRewardsBalancesWithPassUniqueIdentifier:identifierCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier limit:(int64_t)limit
{
  identifierCopy = identifier;
  v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_limit___block_invoke;
  v10[3] = &unk_1E79C9C40;
  v10[4] = self;
  v10[5] = &v11;
  [v7 paymentRewardsRedemptionsForPassUniqueIdentifier:identifierCopy limit:limit completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)paymentRewardsRedemptionForPaymentHash:(id)hash
{
  hashCopy = hash;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKPaymentService_PaymentOffers__paymentRewardsRedemptionForPaymentHash___block_invoke;
  v8[3] = &unk_1E79C9CE0;
  v8[4] = self;
  v8[5] = &v9;
  [v5 paymentRewardsRedemptionForPaymentHash:hashCopy completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)insertOrUpdatePaymentRewardsRedemption:(id)redemption withPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  redemptionCopy = redemption;
  v8 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__PKPaymentService_PaymentOffers__insertOrUpdatePaymentRewardsRedemption_withPassUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E79C4E28;
  v9[4] = self;
  [v8 insertOrUpdatePaymentRewardsRedemption:redemptionCopy withPassUniqueIdentifier:identifierCopy completion:v9];
}

- (void)deletePaymentRewardsRedemptionsForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__PKPaymentService_PaymentOffers__deletePaymentRewardsRedemptionsForPassUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  [v5 deletePaymentRewardsRedemptionsForPassUniqueIdentifier:identifierCopy completion:v6];
}

- (void)paymentOffersMerchandisingForSessionDetails:(id)details merchandisingIdentifiers:(id)identifiers needsProvisioningMerchandisingIdentifiers:(id)merchandisingIdentifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  merchandisingIdentifiersCopy = merchandisingIdentifiers;
  identifiersCopy = identifiers;
  detailsCopy = details;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke_42;
  v19[3] = &unk_1E79C9D08;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 paymentOffersMerchandisingForSessionDetails:detailsCopy merchandisingIdentifiers:identifiersCopy needsProvisioningMerchandisingIdentifiers:merchandisingIdentifiersCopy completion:v19];
}

void __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v25 = v14;
  attestationsCopy = attestations;
  credentialIdentifierCopy = credentialIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke_14;
  v22[3] = &unk_1E79CED90;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 provisionIdentityPassWithPassMetadata:metadataCopy targetDeviceIdentifier:identifierCopy credentialIdentifier:credentialIdentifierCopy attestations:attestationsCopy completion:v22];
}

void __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v29 = a2;
  v16 = completionCopy;
  aBlock[4] = self;
  v28 = v16;
  dataCopy = data;
  attestationsCopy = attestations;
  credentialIdentifierCopy = credentialIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v22 = _Block_copy(aBlock);
  v23 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v22];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke_16;
  v25[3] = &unk_1E79CED90;
  v25[4] = self;
  v26 = v16;
  v24 = v16;
  [v23 provisionIdentityPassWithPassMetadata:metadataCopy targetDeviceIdentifier:identifierCopy credentialIdentifier:credentialIdentifierCopy attestations:attestationsCopy supplementalData:dataCopy completion:v25];
}

void __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)queueIdentityPassProvisioningWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier supplementalData:(id)data completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v25 = v14;
  dataCopy = data;
  credentialIdentifierCopy = credentialIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke_17;
  v22[3] = &unk_1E79C4860;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 queueIdentityPassProvisioningWithPassMetadata:metadataCopy targetDeviceIdentifier:identifierCopy credentialIdentifier:credentialIdentifierCopy supplementalData:dataCopy completion:v22];
}

void __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke_17(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prepareIdentityProvisioningForTargetDeviceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke_18;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 prepareIdentityProvisioningForTargetDeviceIdentifier:identifierCopy completion:v13];
}

void __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke_18(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateNotificationForProductIdentifier:(id)identifier configuration:(id)configuration localizedNotificationTitle:(id)title localizedNotificationMessage:(id)message completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v25 = v14;
  messageCopy = message;
  titleCopy = title;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke_19;
  v22[3] = &unk_1E79C4860;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 updateNotificationForProductIdentifier:identifierCopy configuration:configurationCopy localizedNotificationTitle:titleCopy localizedNotificationMessage:messageCopy completion:v22];
}

void __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke_19(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)paymentService
{
  os_unfair_lock_lock(&_MergedGlobals_217);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D1A38);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(PKPaymentService);
    objc_storeWeak(&qword_1ED6D1A38, WeakRetained);
  }

  os_unfair_lock_unlock(&_MergedGlobals_217);

  return WeakRetained;
}

- (PKPaymentService)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKPaymentService;
  v5 = [(PKPaymentService *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_lockObservers._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v6->_observers;
    v6->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    [(PKPaymentService *)v6 registerObserver:delegateCopy];
    v6->_forceConnectionOnResume = delegateCopy != 0;
    v6->_pendingInvitationRequestsLock._os_unfair_lock_opaque = 0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingInvitationRequests = v6->_pendingInvitationRequests;
    v6->_pendingInvitationRequests = v9;

    v11 = PDPaymentServiceExtendedInterface();
    v6->_interfaceType = 1;
    v12 = [PKXPCService alloc];
    v13 = PKPaymentServiceInterface();
    v14 = [(PKXPCService *)v12 initWithMachServiceName:@"com.apple.passd.payment" remoteObjectInterface:v11 exportedObjectInterface:v13 exportedObject:v6];
    remoteService = v6->_remoteService;
    v6->_remoteService = v14;

    [(PKXPCService *)v6->_remoteService setDelegate:v6];
    [(PKXPCService *)v6->_remoteService setForceConnectionOnResume:v6->_forceConnectionOnResume];
  }

  return v6;
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  atomic_store(0, &self->_cachedFieldPropertiesValid);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentService_remoteService_didEstablishConnection___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKPaymentService_remoteService_didEstablishConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 paymentServiceEstablishedConnection];
  }
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  atomic_store(0, &self->_cachedFieldPropertiesValid);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentService_remoteService_didInterruptConnection___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKPaymentService_remoteService_didInterruptConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 paymentServiceReceivedInterruption];
  }
}

- (id)_extendedRemoteObjectProxy
{
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    remoteObjectProxy = [(PKXPCService *)self->_remoteService remoteObjectProxy];
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E696A790];
    v6 = [(PKPaymentService *)self description];
    [v4 raise:v5 format:{@"%@ is not backed by an extended interface", v6}];

    remoteObjectProxy = 0;
  }

  return remoteObjectProxy;
}

- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithFailureHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPaymentService *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPaymentService *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (id)_extendedSynchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E696A790];
    v8 = [(PKPaymentService *)self description];
    [v6 raise:v7 format:{@"%@ is not backed by an extended interface", v8}];

    v5 = 0;
  }

  return v5;
}

- (void)paymentDeviceDidEnterFieldWithProperties:(id)properties
{
  propertiesCopy = properties;
  self->_hasPaymentDeviceFieldProperties = propertiesCopy != 0;
  atomic_store(1u, &self->_cachedFieldPropertiesValid);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKPaymentService_paymentDeviceDidEnterFieldWithProperties___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = propertiesCopy;
  v5 = propertiesCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __61__PKPaymentService_paymentDeviceDidEnterFieldWithProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentDeviceDidEnterFieldWithProperties:*(a1 + 32)];
  }
}

- (void)paymentDeviceDidExitField
{
  self->_hasPaymentDeviceFieldProperties = 0;
  atomic_store(1u, &self->_cachedFieldPropertiesValid);
  [(PKPaymentService *)self _accessDelegate:&__block_literal_global_65];
}

void __45__PKPaymentService_paymentDeviceDidExitField__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 paymentDeviceDidExitField];
  }
}

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PKPaymentService_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __68__PKPaymentService_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateDefaultPaymentPassWithUniqueIdentifier:*(a1 + 32)];
  }
}

- (void)didUpdateApplicationMessages:(id)messages
{
  messagesCopy = messages;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPaymentService_didUpdateApplicationMessages___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = messagesCopy;
  v5 = messagesCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __49__PKPaymentService_didUpdateApplicationMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateApplicationMessages:*(a1 + 32)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message
{
  identifierCopy = identifier;
  messageCopy = message;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __70__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceiveMessage:*(a1 + 40)];
  }
}

- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context
{
  identifierCopy = identifier;
  tilesCopy = tiles;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKPaymentService_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
  v12[3] = &unk_1E79D1198;
  v13 = identifierCopy;
  v14 = tilesCopy;
  contextCopy = context;
  v10 = tilesCopy;
  v11 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v12];
}

void __71__PKPaymentService_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 passWithUniqueIdentifier:a1[4] didUpdateTiles:a1[5] forContext:a1[6]];
  }
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentService_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = transactionCopy;
  v8 = transactionCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __70__PKPaymentService_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didReceiveTransaction:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __76__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceiveBalanceUpdate:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPaymentService_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __73__PKPaymentService_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceivePlanUpdate:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  reminderCopy = reminder;
  withIdentifierCopy = withIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E79D11C0;
  v15 = identifierCopy;
  v16 = reminderCopy;
  v17 = withIdentifierCopy;
  v11 = withIdentifierCopy;
  v12 = reminderCopy;
  v13 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v14];
}

void __102__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:a1[4] didUpdateBalanceReminder:a1[5] forBalanceWithIdentifier:a1[6]];
  }
}

- (void)didReceivePendingProvisioningUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKPaymentService_didReceivePendingProvisioningUpdate___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = updateCopy;
  v5 = updateCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __56__PKPaymentService_didReceivePendingProvisioningUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didReceivePendingProvisioningUpdate:*(a1 + 32)];
  }
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPaymentService_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = withIdentifierCopy;
  v8 = withIdentifierCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __83__PKPaymentService_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didRemoveTransactionWithIdentifier:*(a1 + 40)];
  }
}

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping
{
  mappingCopy = mapping;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPaymentService_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = mappingCopy;
  v5 = mappingCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __69__PKPaymentService_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemoveTransactionsWithSourceIdentifierMapping:*(a1 + 32)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v8[3] = &unk_1E79D11E8;
  v9 = identifierCopy;
  serviceCopy = service;
  v7 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v8];
}

void __76__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didEnableMessageService:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  v8[3] = &unk_1E79D11E8;
  v9 = identifierCopy;
  serviceCopy = service;
  v7 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v8];
}

void __80__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didEnableTransactionService:*(a1 + 40)];
  }
}

- (void)passWithUniqueIdentifier:(id)identifier didReceiveValueAddedServiceTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKPaymentService_passWithUniqueIdentifier_didReceiveValueAddedServiceTransaction___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = transactionCopy;
  v8 = transactionCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __84__PKPaymentService_passWithUniqueIdentifier_didReceiveValueAddedServiceTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 passWithUniqueIdentifier:*(a1 + 32) didReceiveValueAddedServiceTransaction:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __87__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didUpdateWithTransitPassProperties:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateCategoryVisualizationWithStyle:(int64_t)style
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateCategoryVisualizationWithStyle___block_invoke;
  v8[3] = &unk_1E79D1210;
  v9 = identifierCopy;
  styleCopy = style;
  v7 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v8];
}

void __92__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateCategoryVisualizationWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didUpdateCategoryVisualizationWithStyle:*(a1 + 40)];
  }
}

- (void)featureApplicationAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKPaymentService_featureApplicationAdded___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = addedCopy;
  v5 = addedCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __44__PKPaymentService_featureApplicationAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationAdded:*(a1 + 32)];
  }
}

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPaymentService_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = removedCopy;
  v5 = removedCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __46__PKPaymentService_featureApplicationRemoved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationRemoved:*(a1 + 32)];
  }
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPaymentService_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = changedCopy;
  v5 = changedCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __46__PKPaymentService_featureApplicationChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationChanged:*(a1 + 32)];
  }
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PKPaymentService_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = membersCopy;
  v5 = membersCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __43__PKPaymentService_didUpdateFamilyMembers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateFamilyMembers:*(a1 + 32)];
  }
}

- (void)transactionBatch:(id)batch moreComing:(BOOL)coming readyForNextBatch:(id)nextBatch
{
  batchCopy = batch;
  nextBatchCopy = nextBatch;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentService_transactionBatch_moreComing_readyForNextBatch___block_invoke;
  v12[3] = &unk_1E79D1238;
  comingCopy = coming;
  v13 = batchCopy;
  v14 = nextBatchCopy;
  v10 = nextBatchCopy;
  v11 = batchCopy;
  [(PKPaymentService *)self _accessDelegate:v12];
}

void __66__PKPaymentService_transactionBatch_moreComing_readyForNextBatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionBatch:*(a1 + 32) moreComing:*(a1 + 48) readyForNextBatch:*(a1 + 40)];
  }
}

- (void)didRecieveCredentialInvitation:(id)invitation
{
  v22 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  os_unfair_lock_lock(&self->_pendingInvitationRequestsLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_pendingInvitationRequests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      invitation = [v10 invitation];
      v12 = [invitation isSameInvitationAsInvitation:invitationCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_12;
    }

    [(NSMutableArray *)self->_pendingInvitationRequests removeObject:v13];
    os_unfair_lock_unlock(&self->_pendingInvitationRequestsLock);
    [v13 invokeCompletionWithInvitation:invitationCopy error:0];
  }

  else
  {
LABEL_9:

LABEL_12:
    os_unfair_lock_unlock(&self->_pendingInvitationRequestsLock);
    v13 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PKPaymentService_didRecieveCredentialInvitation___block_invoke;
  v15[3] = &unk_1E79D1148;
  v16 = invitationCopy;
  v14 = invitationCopy;
  [(PKPaymentService *)self _accessDelegate:v15];
}

void __51__PKPaymentService_didRecieveCredentialInvitation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRecieveCredentialInvitation:*(a1 + 32)];
  }
}

- (void)credential:(id)credential forPaymentApplication:(id)application didUpdateRangingSuspensionReasons:(unint64_t)reasons
{
  credentialCopy = credential;
  applicationCopy = application;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__PKPaymentService_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke;
  v12[3] = &unk_1E79D1198;
  v13 = credentialCopy;
  v14 = applicationCopy;
  reasonsCopy = reasons;
  v10 = applicationCopy;
  v11 = credentialCopy;
  [(PKPaymentService *)self _accessDelegate:v12];
}

void __87__PKPaymentService_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [*(a1 + 40) applicationIdentifier];
    v5 = [*(a1 + 40) secureElementIdentifier];
    [v6 credentialIdentifier:v3 paymentApplicationIdentifier:v4 secureElementIdentifier:v5 didUpdateRangingSuspensionReasons:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 credential:*(a1 + 32) forPaymentApplication:*(a1 + 40) didUpdateRangingSuspensionReasons:*(a1 + 48)];
  }
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentService_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __71__PKPaymentService_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sharesDidUpdateWithPaymentPassWithUniqueIdentifier:*(a1 + 32)];
  }
}

- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt
{
  identifierCopy = identifier;
  receiptCopy = receipt;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentService_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = identifierCopy;
  v12 = receiptCopy;
  v8 = receiptCopy;
  v9 = identifierCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __76__PKPaymentService_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionWithIdentifier:*(a1 + 32) didDownloadTransactionReceipt:*(a1 + 40)];
  }
}

- (void)didReceiveDeviceSharingCapabilities:(id)capabilities forHandle:(id)handle
{
  capabilitiesCopy = capabilities;
  handleCopy = handle;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKPaymentService_didReceiveDeviceSharingCapabilities_forHandle___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = capabilitiesCopy;
  v12 = handleCopy;
  v8 = handleCopy;
  v9 = capabilitiesCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __66__PKPaymentService_didReceiveDeviceSharingCapabilities_forHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didReceiveDeviceSharingCapabilities:*(a1 + 32) forHandle:*(a1 + 40)];
  }
}

- (void)displayTapToRadarAlertForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke;
  v14[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  requestCopy = request;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 displayTapToRadarAlertForRequest:requestCopy completion:v12];
}

void __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_122;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_122(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)selectedPaymentOfferUpdated:(id)updated passUniqueID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPaymentService_selectedPaymentOfferUpdated_passUniqueID___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = updatedCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = updatedCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __61__PKPaymentService_selectedPaymentOfferUpdated_passUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 selectedPaymentOfferUpdated:*(a1 + 32) passUniqueID:*(a1 + 40)];
  }
}

- (void)selectedPaymentOfferRemoved:(id)removed passUniqueID:(id)d
{
  removedCopy = removed;
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPaymentService_selectedPaymentOfferRemoved_passUniqueID___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = removedCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = removedCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __61__PKPaymentService_selectedPaymentOfferRemoved_passUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 selectedPaymentOfferRemoved:*(a1 + 32) passUniqueID:*(a1 + 40)];
  }
}

- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash
{
  changedCopy = changed;
  hashCopy = hash;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentService_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = changedCopy;
  v12 = hashCopy;
  v8 = hashCopy;
  v9 = changedCopy;
  [(PKPaymentService *)self _accessDelegate:v10];
}

void __88__PKPaymentService_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferConfirmationRecordChanged:*(a1 + 32) forTransactionWithPaymentHash:*(a1 + 40)];
  }
}

- (void)paymentOfferCatalogChangedFromPush:(id)push
{
  pushCopy = push;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPaymentService_paymentOfferCatalogChangedFromPush___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = pushCopy;
  v5 = pushCopy;
  [(PKPaymentService *)self _accessDelegate:v6];
}

void __55__PKPaymentService_paymentOfferCatalogChangedFromPush___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferCatalogChangedFromPush:*(a1 + 32)];
  }
}

- (void)setDoubleClickAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 setDoubleClickAllowed:allowedCopy completion:&__block_literal_global_133];
}

- (id)transactionsAppLaunchTokenForPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKPaymentService_transactionsAppLaunchTokenForPassWithUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E79CA878;
  v8[4] = &v9;
  [v5 transactionsAppLaunchTokenForPassWithUniqueIdentifier:identifierCopy handler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)messagesAppLaunchTokenForPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKPaymentService_messagesAppLaunchTokenForPassWithUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E79CA878;
  v8[4] = &v9;
  [v5 messagesAppLaunchTokenForPassWithUniqueIdentifier:identifierCopy handler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_submitVerificationCode:(id)code verificationData:(id)data forDPANIdentifier:(id)identifier usingSynchronousProxy:(BOOL)proxy completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke;
  aBlock[3] = &unk_1E79D1260;
  v26 = a2;
  v14 = completionCopy;
  v25 = v14;
  proxyCopy = proxy;
  identifierCopy = identifier;
  dataCopy = data;
  codeCopy = code;
  v18 = _Block_copy(aBlock);
  if (proxy)
  {
    [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:v18];
  }

  else
  {
    [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v18];
  }
  v19 = ;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke_2;
  v21[3] = &unk_1E79D1288;
  proxyCopy2 = proxy;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 submitVerificationCode:codeCopy verificationData:dataCopy forDPANIdentifier:identifierCopy handler:v21];
}

void __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (*(a1 + 48) == 1)
    {
      v6[2](*(a1 + 32), 0, 0);
    }

    else
    {
      v7 = dispatch_get_global_queue(0, 0);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke_135;
      v9[3] = &unk_1E79C4428;
      v10 = v6;
      v8 = v9;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v12 = __dispatch_async_ar_block_invoke_8;
      v13 = &unk_1E79C4428;
      v14 = v8;
      dispatch_async(v7, &buf);
    }
  }
}

void __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*(a1 + 48) == 1)
    {
      v5[2](*(a1 + 40), 0, 0);
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke_3;
      v8[3] = &unk_1E79C4428;
      v9 = v5;
      v7 = v8;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __dispatch_async_ar_block_invoke_8;
      block[3] = &unk_1E79C4428;
      v11 = v7;
      dispatch_async(v6, block);
    }
  }
}

- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  v20[4] = self;
  v21 = v12;
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_2;
  v18[3] = &unk_1E79C4B08;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 peerPaymentCounterpartHandlesForTransactionSourceIdentifier:identifierCopy startDate:dateCopy endDate:endDateCopy completion:v18];
}

void __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_138;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_138(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)hasTransactionsForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke;
  v14[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  identifiersCopy = identifiers;
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 hasTransactionsForTransactionSourceIdentifiers:identifiersCopy completion:v12];
}

void __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_140;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_140(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)insertOrUpdatePaymentTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  v20[4] = self;
  v21 = v12;
  applicationCopy = application;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_2;
  v18[3] = &unk_1E79D1938;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 insertOrUpdatePaymentTransaction:transactionCopy forPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy completion:v18];
}

void __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_141;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_141(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)insertOrUpdatePaymentTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke;
  v17[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  v17[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E79D1938;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 insertOrUpdatePaymentTransaction:transactionCopy forTransactionSourceIdentifier:identifierCopy completion:v15];
}

void __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_143;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_143(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removeMapsDataForTransactionWithIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier issueReportIdentifier:(id)reportIdentifier completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  v20[4] = self;
  v21 = v12;
  reportIdentifierCopy = reportIdentifier;
  sourceIdentifierCopy = sourceIdentifier;
  identifierCopy = identifier;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E79D1938;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 removeMapsDataForTransactionWithIdentifier:identifierCopy forTransactionSourceIdentifier:sourceIdentifierCopy issueReportIdentifier:reportIdentifierCopy completion:v18];
}

void __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_144;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_144(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v28 = v17;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D12B0;
  v25[4] = self;
  v26 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v25];
}

void __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_145;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_145(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v29 = v17;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy orderedByDate:byDate limit:limit completion:v26];
}

void __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_147;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_147(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v22 = v14;
  identifiersCopy = identifiers;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v19[3] = &unk_1E79D12B0;
  v19[4] = self;
  v20 = v14;
  v18 = v14;
  [v17 transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data limit:limit completion:v19];
}

void __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_148;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_148(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)identifiers calendar:(id)calendar type:(unint64_t)type limit:(int64_t)limit
{
  identifiersCopy = identifiers;
  calendarCopy = calendar;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__26;
  v20 = __Block_byref_object_dispose__26;
  v21 = 0;
  v12 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PKPaymentService_earliestDailyBucketForTransactionSourceIdentifiers_calendar_type_limit___block_invoke;
  v15[3] = &unk_1E79D12D8;
  v15[4] = self;
  v15[5] = &v16;
  [v12 earliestDailyBucketForTransactionSourceIdentifiers:identifiersCopy calendar:calendarCopy type:type limit:limit completion:v15];
  v13 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)transactionCountByPeriodForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit includePurchaseTotal:(BOOL)total completion:(id)completion
{
  totalCopy = total;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v21 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v20 = v12;
  requestCopy = request;
  v14 = _Block_copy(aBlock);
  v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_2;
  v17[3] = &unk_1E79C4B08;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 transactionCountByPeriodForRequest:requestCopy gregorianCalendarUnit:unit includePurchaseTotal:totalCopy completion:v17];
}

void __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_150;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_150(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)spendingCategoryTransactionGroupsForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26;
  v15 = __Block_byref_object_dispose__26;
  v16 = 0;
  v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentService_spendingCategoryTransactionGroupsForRequest_gregorianCalendarUnit___block_invoke;
  v10[3] = &unk_1E79C9C40;
  v10[4] = self;
  v10[5] = &v11;
  [v7 spendingCategoryTransactionGroupsForRequest:requestCopy gregorianCalendarUnit:unit completion:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v31 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v30 = v17;
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v22 = _Block_copy(aBlock);
  v23 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v22];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke_2;
  v27[3] = &unk_1E79C4B08;
  v27[4] = self;
  v28 = v17;
  v24 = v17;
  LOBYTE(v25) = 0;
  [v23 cashbackByPeriodForTransactionSourceIdentifiers:identifiersCopy withStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy calendarUnit:unit type:type usingSynchronousProxy:v25 completion:v27];
}

void __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke_151;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke_151(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withPeerPaymentCounterpartHandles:(id)handles withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v16 = completionCopy;
  aBlock[4] = self;
  v25 = v16;
  handlesCopy = handles;
  identifiersCopy = identifiers;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v22[3] = &unk_1E79D12B0;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  [v20 transactionsForTransactionSourceIdentifiers:identifiersCopy withPeerPaymentCounterpartHandles:handlesCopy withTransactionSource:source withBackingData:data limit:limit completion:v22];
}

void __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_152;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_152(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers matchingMerchant:(id)merchant withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v16 = completionCopy;
  aBlock[4] = self;
  v25 = v16;
  merchantCopy = merchant;
  identifiersCopy = identifiers;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v22[3] = &unk_1E79D12B0;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  [v20 transactionsForTransactionSourceIdentifiers:identifiersCopy matchingMerchant:merchantCopy withTransactionSource:source withBackingData:data limit:limit completion:v22];
}

void __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke_153;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke_153(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withMerchantCategory:(int64_t)category withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)self0
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v29 = v17;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:identifiersCopy withMerchantCategory:category withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v26];
}

void __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_154;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_154(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionType:(int64_t)type withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)self0
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v29 = v17;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionType:type withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v26];
}

void __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_155;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_155(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)approvedTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v17 = completionCopy;
  aBlock[4] = self;
  v28 = v17;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D12B0;
  v25[4] = self;
  v26 = v17;
  v23 = v17;
  [v22 approvedTransactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v25];
}

void __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_156;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_156(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)approvedTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit
{
  identifiersCopy = identifiers;
  dateCopy = date;
  endDateCopy = endDate;
  v17 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__26;
  v25 = __Block_byref_object_dispose__26;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __134__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit___block_invoke;
  v20[3] = &unk_1E79CA7D8;
  v20[4] = self;
  v20[5] = &v21;
  [v17 approvedTransactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v20];
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

- (void)pendingTransactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v18 = completionCopy;
  aBlock[4] = self;
  v28 = v18;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v22 = _Block_copy(aBlock);
  v23 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v22];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D1300;
  v26 = v18;
  v24 = v18;
  [v23 pendingTransactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy limit:limit completion:v25];
}

void __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_157;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_157(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsWithTransactionSource:(unint64_t)source withBackingData:(unint64_t)data limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v19 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v16[3] = &unk_1E79D12B0;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 transactionsWithTransactionSource:source withBackingData:data limit:limit completion:v16];
}

void __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_158;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_158(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionWithTransactionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionWithTransactionIdentifier:identifierCopy completion:v13];
}

void __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_159;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_159(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionsWithTransactionIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_transactionsWithTransactionIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v13 = completionCopy;
  v14 = a2;
  aBlock[4] = self;
  v8 = completionCopy;
  identifiersCopy = identifiers;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  [v11 transactionsWithTransactionIdentifiers:identifiersCopy completion:v8];
}

void __70__PKPaymentService_transactionsWithTransactionIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentService_transactionsWithTransactionIdentifiers_completion___block_invoke_160;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKPaymentService_transactionsWithTransactionIdentifiers_completion___block_invoke_160(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)transactionsWithFullPaymentHashes:(id)hashes transactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_transactionsWithFullPaymentHashes_transactionSourceIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = completionCopy;
  v17 = a2;
  aBlock[4] = self;
  v10 = completionCopy;
  identifiersCopy = identifiers;
  hashesCopy = hashes;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 transactionsWithFullPaymentHashes:hashesCopy transactionSourceIdentifiers:identifiersCopy completion:v10];
}

void __94__PKPaymentService_transactionsWithFullPaymentHashes_transactionSourceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentService_transactionsWithFullPaymentHashes_transactionSourceIdentifiers_completion___block_invoke_161;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __94__PKPaymentService_transactionsWithFullPaymentHashes_transactionSourceIdentifiers_completion___block_invoke_161(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)transactionSourceTypeForTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79CA990;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionSourceTypeForTransactionSourceIdentifier:identifierCopy completion:v13];
}

void __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_162;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_162(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_3;
  v6[3] = &unk_1E79C4658;
  v7 = *(a1 + 40);
  v8 = a2;
  v6[4] = *(a1 + 32);
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, block);
}

uint64_t __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)transactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  sourceIdentifierCopy = sourceIdentifier;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79D1938;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 transactionWithServiceIdentifier:identifierCopy transactionSourceIdentifier:sourceIdentifierCopy completion:v16];
}

void __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_164;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_164(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)transactionWithReferenceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionWithReferenceIdentifier:identifierCopy completion:v13];
}

void __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_165;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_165(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)installmentTransactionsForInstallmentPlanIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 installmentTransactionsForInstallmentPlanIdentifier:identifierCopy completion:v13];
}

void __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_166;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_166(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)installmentPlansWithTransactionReferennceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    identifierCopy = identifier;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 installmentPlansWithTransactionReferenceIdentifier:identifierCopy completion:v13];
  }
}

void __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke_167;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)identifiers accountIdentifier:(id)identifier redeemed:(BOOL)redeemed withRedemptionType:(unint64_t)type startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  redeemedCopy = redeemed;
  completionCopy = completion;
  v18 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v31 = a2;
    typeCopy = type;
    v19 = completionCopy;
    aBlock[4] = self;
    v30 = v19;
    endDateCopy = endDate;
    dateCopy = date;
    identifierCopy = identifier;
    identifiersCopy = identifiers;
    v26 = _Block_copy(aBlock);
    v24 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v26];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke_2;
    v27[3] = &unk_1E79D12B0;
    v27[4] = self;
    v28 = v19;
    [v24 installmentPlanTransactionsForTransactionSourceIdentifiers:identifiersCopy accountIdentifier:identifierCopy redeemed:redeemedCopy withRedemptionType:typeCopy startDate:dateCopy endDate:endDateCopy completion:v27];
  }
}

void __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke_168;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)transactionsForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PKPaymentService_transactionsForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    requestCopy = request;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__PKPaymentService_transactionsForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79C4B08;
    v13[4] = self;
    v14 = v9;
    [v12 transactionsForRequest:requestCopy usingSynchronousProxy:0 completion:v13];
  }
}

void __54__PKPaymentService_transactionsForRequest_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PKPaymentService_transactionsForRequest_completion___block_invoke_169;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (id)transactionsForRequest:(id)request
{
  requestCopy = request;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PKPaymentService_transactionsForRequest___block_invoke;
  v8[3] = &unk_1E79C9C40;
  v8[4] = self;
  v8[5] = &v9;
  [v5 transactionsForRequest:requestCopy usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)transactionCountForRequest:(id)request
{
  requestCopy = request;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKPaymentService_transactionCountForRequest___block_invoke;
  v8[3] = &unk_1E79D1328;
  v8[4] = self;
  v8[5] = &v9;
  [v5 transactionCountForRequest:requestCopy usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)transactionCountForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPaymentService_transactionCountForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    requestCopy = request;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKPaymentService_transactionCountForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79D1350;
    v13[4] = self;
    v14 = v9;
    [v12 transactionCountForRequest:requestCopy usingSynchronousProxy:0 completion:v13];
  }
}

void __58__PKPaymentService_transactionCountForRequest_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKPaymentService_transactionCountForRequest_completion___block_invoke_171;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)transactionSourceIdentifiersForPassUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    identifiersCopy = identifiers;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 transactionSourceIdentifiersForPassUniqueIdentifiers:identifiersCopy completion:v13];
  }
}

void __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke_172;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)transactionsTotalAmountForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    requestCopy = request;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79D1378;
    v13[4] = self;
    v14 = v9;
    [v12 transactionsTotalAmountForRequest:requestCopy completion:v13];
  }
}

void __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke_173;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type
{
  identifiersCopy = identifiers;
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  v18 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__26;
  v27 = __Block_byref_object_dispose__26;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __117__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type___block_invoke;
  v22[3] = &unk_1E79C9C40;
  v22[4] = self;
  v22[5] = &v23;
  LOBYTE(v21) = 1;
  [v18 cashbackByPeriodForTransactionSourceIdentifiers:identifiersCopy withStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy calendarUnit:unit type:type usingSynchronousProxy:v21 completion:v22];
  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v19;
}

- (void)logoImageDataForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPaymentService_logoImageDataForURL_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    lCopy = l;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PKPaymentService_logoImageDataForURL_completion___block_invoke_2;
    v13[3] = &unk_1E79CB0B0;
    v13[4] = self;
    v14 = v9;
    [v12 logoImageDataForURL:lCopy completion:v13];
  }
}

void __51__PKPaymentService_logoImageDataForURL_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKPaymentService_logoImageDataForURL_completion___block_invoke_175;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)transactionsForPredicate:(id)predicate limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v11 = completionCopy;
    aBlock[4] = self;
    v18 = v11;
    predicateCopy = predicate;
    v13 = _Block_copy(aBlock);
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke_2;
    v15[3] = &unk_1E79C4B08;
    v15[4] = self;
    v16 = v11;
    [v14 transactionsForPredicate:predicateCopy limit:limit completion:v15];
  }
}

void __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke_177;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

void __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Received transactions: %@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)passUniqueIdentifierForTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 passUniqueIdentifierForTransactionWithIdentifier:identifierCopy completion:v13];
}

void __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_178;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_178(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  sourceIdentifierCopy = sourceIdentifier;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4AE0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 passUniqueIdentifierForTransactionWithServiceIdentifier:identifierCopy transactionSourceIdentifier:sourceIdentifierCopy completion:v16];
}

void __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_179;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_179(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = completionCopy;
    aBlock[4] = self;
    v16 = v9;
    identifiersCopy = identifiers;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke_2;
    v13[3] = &unk_1E79D13A0;
    v13[4] = self;
    v14 = v9;
    [v12 passUniqueIdentifiersForTransactionSourceIdentifiers:identifiersCopy completion:v13];
  }
}

void __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke_180;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

void __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:identifierCopy completion:v13];
}

void __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_182;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_182(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)mapsMerchantsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79D12B0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 mapsMerchantsWithCompletion:v10];
}

void __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_183;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_183(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)applicationMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PKPaymentService_applicationMessagesWithCompletion___block_invoke;
    v10[3] = &unk_1E79C4450;
    v6 = completionCopy;
    v11 = v6;
    v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PKPaymentService_applicationMessagesWithCompletion___block_invoke_2;
    v8[3] = &unk_1E79C4B08;
    v8[4] = self;
    v9 = v6;
    [v7 usingSynchronousProxy:0 applicationMessagesWithCompletion:v8];
  }
}

- (void)tappedApplicationMessageWithKey:(id)key
{
  keyCopy = key;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 usingSynchronousProxy:1 tappedApplicationMessageWithKey:keyCopy completion:&__block_literal_global_185];
}

- (void)updateFinanceKitApplicationMessages
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 usingSynchronousProxy:1 updateFinanceKitApplicationMessagesWithCompletion:&__block_literal_global_187_2];
}

- (void)removeApplicationMessageWithKey:(id)key
{
  keyCopy = key;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 usingSynchronousProxy:1 removeApplicationMessageWithKey:keyCopy completion:&__block_literal_global_189];
}

- (void)removeApplicationMessagesWithKeys:(id)keys completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = completionCopy;
  v14 = v7;
  keysCopy = keys;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke_2;
  v11[3] = &unk_1E79C4428;
  v12 = v7;
  v10 = v7;
  [v9 usingSynchronousProxy:0 removeApplicationMessagesWithKeys:keysCopy completion:v11];
}

uint64_t __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)messagesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 messagesForPaymentPassWithUniqueIdentifier:identifierCopy handler:v13];
}

void __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_190;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_190(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)tilesForPassWithUniqueIdentifier:(id)identifier context:(int64_t)context completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    if (identifierCopy)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PKPaymentService_tilesForPassWithUniqueIdentifier_context_completion___block_invoke;
      v15[3] = &unk_1E79C4450;
      v11 = completionCopy;
      v16 = v11;
      v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72__PKPaymentService_tilesForPassWithUniqueIdentifier_context_completion___block_invoke_2;
      v13[3] = &unk_1E79C4B08;
      v13[4] = self;
      v14 = v11;
      [v12 usingSynchronousProxy:0 tilesForPassWithUniqueIdentifer:identifierCopy context:context completion:v13];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 balancesForPaymentPassWithUniqueIdentifier:identifierCopy handler:v13];
}

void __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_191;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_191(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 plansForPaymentPassWithUniqueIdentifier:identifierCopy handler:v13];
}

void __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_192;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_192(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)balanceReminderThresholdForBalance:(id)balance pass:(id)pass withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v22 = v10;
  passCopy = pass;
  balanceCopy = balance;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  identifiers = [balanceCopy identifiers];

  anyObject = [identifiers anyObject];
  uniqueID = [passCopy uniqueID];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_2;
  v19[3] = &unk_1E79D13C8;
  v19[4] = self;
  v20 = v10;
  v18 = v10;
  [v14 balanceReminderThresholdForBalanceIdentifier:anyObject withPassUniqueIdentifier:uniqueID handler:v19];
}

void __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_193;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_193(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v25 = v12;
  passCopy = pass;
  balanceCopy = balance;
  reminderCopy = reminder;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  identifiers = [balanceCopy identifiers];

  anyObject = [identifiers anyObject];
  uniqueID = [passCopy uniqueID];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_2;
  v22[3] = &unk_1E79C4888;
  v22[4] = self;
  v23 = v12;
  v21 = v12;
  [v17 setBalanceReminder:reminderCopy forBalanceIdentifier:anyObject withPassUniqueIdentifier:uniqueID handler:v22];
}

void __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_195;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_195(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)identifier balanceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_2;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 cancelAutoTopUpForPassWithUniqueIdentifier:identifierCopy balanceIdentifiers:identifiersCopy handler:v16];
}

void __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_196;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_196(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)commutePlanReminderForCommputePlan:(id)plan pass:(id)pass withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v22 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v21 = v10;
  passCopy = pass;
  planCopy = plan;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  identifier = [planCopy identifier];

  uniqueID = [passCopy uniqueID];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_2;
  v18[3] = &unk_1E79D13F0;
  v18[4] = self;
  v19 = v10;
  v17 = v10;
  [v14 commutePlanReminderForCommutePlanIdentifier:identifier withPassUniqueIdentifier:uniqueID handler:v18];
}

void __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_197;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_197(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v25 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v24 = v12;
  passCopy = pass;
  planCopy = plan;
  reminderCopy = reminder;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  identifier = [planCopy identifier];

  uniqueID = [passCopy uniqueID];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_2;
  v21[3] = &unk_1E79C4888;
  v21[4] = self;
  v22 = v12;
  v20 = v12;
  [v17 setCommutePlanReminder:reminderCopy forCommutePlanIdentifier:identifier withPassUniqueIdentifier:uniqueID handler:v21];
}

void __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_199;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_199(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)deletePaymentTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deletePaymentTransactionWithIdentifier:identifierCopy handler:&__block_literal_global_201];
}

- (void)deletePaymentTransactionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deletePaymentTransactionsWithIdentifiers:identifiersCopy handler:&__block_literal_global_203];
}

- (void)deleteAllTransactionsForTransactionSourceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deleteAllTransactionsForTransactionSourceIdentifiers:identifiersCopy handler:&__block_literal_global_205];
}

- (void)deleteMessagesForPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deleteAllMessagesForPaymentPassWithUniqueIdentifier:identifierCopy handler:&__block_literal_global_207];
}

- (void)hasTransactionsRelatedToTransaction:(id)transaction transactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __96__PKPaymentService_hasTransactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke;
  v18 = &unk_1E79C8958;
  v19 = completionCopy;
  v20 = a2;
  v10 = completionCopy;
  identifiersCopy = identifiers;
  transactionCopy = transaction;
  v13 = _Block_copy(&v15);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13, v15, v16, v17, v18];
  [v14 hasTransactionsRelatedToTransaction:transactionCopy transactionSourceIdentifiers:identifiersCopy completion:v10];
}

uint64_t __96__PKPaymentService_hasTransactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)transactionsRelatedToTransaction:(id)transaction transactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v11 = completionCopy;
    aBlock[4] = self;
    v19 = v11;
    identifiersCopy = identifiers;
    transactionCopy = transaction;
    v14 = _Block_copy(aBlock);
    v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke_2;
    v16[3] = &unk_1E79C4B08;
    v16[4] = self;
    v17 = v11;
    [v15 transactionsRelatedToTransaction:transactionCopy transactionSourceIdentifiers:identifiersCopy completion:v16];
  }
}

void __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke_208;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

- (void)updatePreferredCategory:(int64_t)category forTransactionsWithIdentifiers:(id)identifiers paymentPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  v12 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PKPaymentService_updatePreferredCategory_forTransactionsWithIdentifiers_paymentPass_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v22 = a2;
    v13 = completionCopy;
    aBlock[4] = self;
    v21 = v13;
    passCopy = pass;
    identifiersCopy = identifiers;
    v16 = _Block_copy(aBlock);
    v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__PKPaymentService_updatePreferredCategory_forTransactionsWithIdentifiers_paymentPass_completion___block_invoke_209;
    v18[3] = &unk_1E79C4860;
    v18[4] = self;
    v19 = v13;
    [v17 updatePreferredCategory:category forTransactionsWithIdentifiers:identifiersCopy paymentPass:passCopy completion:v18];
  }
}

uint64_t __98__PKPaymentService_updatePreferredCategory_forTransactionsWithIdentifiers_paymentPass_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)archiveMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 archiveMessageWithIdentifier:identifierCopy handler:&__block_literal_global_211];
}

- (void)insertOrUpdateValueAddedServiceTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentTransaction:(id)paymentTransaction completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  v20[4] = self;
  v21 = v12;
  paymentTransactionCopy = paymentTransaction;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_2;
  v18[3] = &unk_1E79C44A0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 insertOrUpdateValueAddedServiceTransaction:transactionCopy forPassUniqueIdentifier:identifierCopy paymentTransaction:paymentTransactionCopy handler:v18];
}

void __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_212;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_212(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)valueAddedServiceTransactionsForPassWithUniqueIdentifier:(id)identifier limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_2;
  v15[3] = &unk_1E79D12B0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 valueAddedServiceTransactionsForPassWithUniqueIdentifier:identifierCopy limit:limit handler:v15];
}

void __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_213;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_213(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)valueAddedServiceTransactionsForPaymentTransaction:(id)transaction limit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v9 = completionCopy;
  aBlock[4] = self;
  v17 = v9;
  transactionCopy = transaction;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_2;
  v14[3] = &unk_1E79D12B0;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 valueAddedServiceTransactionsForPaymentTransaction:transactionCopy handler:v14];
}

void __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_214;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_214(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)valueAddedServiceTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1418;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 valueAddedServiceTransactionWithIdentifier:identifierCopy handler:v13];
}

void __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_215;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_215(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifierCopy = identifier;
  applicationCopy = application;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79D1440;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultPaymentApplication:applicationCopy forPassUniqueIdentifier:identifierCopy handler:v16];
}

void __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_217;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_217(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PKPaymentService_defaultPaymentApplicationForPassUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E79D1468;
  v8[4] = &v9;
  [v5 defaultPaymentApplicationForPassUniqueIdentifier:identifierCopy handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)initializeSecureElementIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (PKSecureElementIsAvailable())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v14 = a2;
    v6 = completionCopy;
    aBlock[4] = self;
    v13 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79D14B8;
    v10[4] = self;
    v11 = v6;
    [v8 initializeSecureElementIfNecessaryWithHandler:v10];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "This device does not have a secure element", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }
}

void __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_220;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_220(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_3;
  v14[3] = &unk_1E79D1490;
  v10 = *(a1 + 40);
  v19 = a2;
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 32);
  v18 = v10;
  v11 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v21 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, block);
}

uint64_t __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)initializeSecureElement:(id)element
{
  elementCopy = element;
  if (PKSecureElementIsAvailable())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKPaymentService_initializeSecureElement___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v14 = a2;
    v6 = elementCopy;
    aBlock[4] = self;
    v13 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PKPaymentService_initializeSecureElement___block_invoke_2;
    v10[3] = &unk_1E79C4888;
    v10[4] = self;
    v11 = v6;
    [v8 initializeSecureElement:v10];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "This device does not have a secure element", buf, 2u);
    }

    if (elementCopy)
    {
      (*(elementCopy + 2))(elementCopy, 0);
    }
  }
}

void __44__PKPaymentService_initializeSecureElement___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKPaymentService_initializeSecureElement___block_invoke_222;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __44__PKPaymentService_initializeSecureElement___block_invoke_222(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __44__PKPaymentService_initializeSecureElement___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKPaymentService_initializeSecureElement___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __44__PKPaymentService_initializeSecureElement___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)sanitizeExpressPasses
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 sanitizeExpressPasses];
}

- (id)defaultExpressFelicaTransitPassIdentifier
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentService: DEPRECATED METHOD defaultExpressFelicaTransitPassIdentifier NO LONGER IMPLEMENTED.", v4, 2u);
  }

  return 0;
}

- (void)setDefaultExpressFelicaTransitPassIdentifier:(id)identifier withCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  credentialCopy = credential;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke_2;
  v16[3] = &unk_1E79D14E0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultExpressTransitPassIdentifier:identifierCopy withCredential:credentialCopy completion:v16];
}

void __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke_223;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

void __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke_223(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) defaultExpressTransitPassIdentifier];
    (*(v1 + 16))(v1, 0, v2);
  }
}

uint64_t __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)defaultExpressTransitPassIdentifier
{
  v2 = [(PKPaymentService *)self expressPassConfigurationsWithCardType:2];
  anyObject = [v2 anyObject];
  passUniqueIdentifier = [anyObject passUniqueIdentifier];

  return passUniqueIdentifier;
}

- (void)setDefaultExpressTransitPassIdentifier:(id)identifier withCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  credentialCopy = credential;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke_2;
  v16[3] = &unk_1E79D14E0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultExpressTransitPassIdentifier:identifierCopy withCredential:credentialCopy completion:v16];
}

void __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke_225;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

void __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke_225(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) defaultExpressTransitPassIdentifier];
    (*(v1 + 16))(v1, 0, v2);
  }
}

uint64_t __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isExpressModeEnabledForRemotePassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
  _remoteLibrary = [v5 _remoteLibrary];
  v7 = [_remoteLibrary passWithUniqueID:identifierCopy];
  secureElementPass = [v7 secureElementPass];

  if ([secureElementPass isRemotePass])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PKPaymentService_isExpressModeEnabledForRemotePassUniqueIdentifier___block_invoke;
    v12[3] = &unk_1E79C8E40;
    v12[4] = self;
    v12[5] = &v13;
    [v9 isExpressModeEnabledForRemotePassUniqueIdentifier:identifierCopy handler:v12];
    v10 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier
{
  v3 = [(PKPaymentService *)self expressPassConfigurationWithPassUniqueIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)expressPassConfigurationWithPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PKPaymentService_expressPassConfigurationWithPassUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E79D1508;
  v8[4] = self;
  v8[5] = &v9;
  [v5 expressPassConfigurationWithPassUniqueIdentifier:identifierCopy handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)expressPassConfigurationsWithCardType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PKPaymentService_expressPassConfigurationsWithCardType___block_invoke;
  v8[3] = &unk_1E79CA7D8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 expressPassConfigurationsWithCardType:type handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKPaymentService_expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke;
  v8[3] = &unk_1E79CA7D8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 expressPassesInformationWithAutomaticSelectionTechnologyType:type handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)expressPassConfigurations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__26;
  v11 = __Block_byref_object_dispose__26;
  v12 = 0;
  v3 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PKPaymentService_expressPassConfigurations__block_invoke;
  v6[3] = &unk_1E79CA7D8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 usingSynchronousProxy:1 expressPassConfigurationsWithHandler:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)expressPassesInformation
{
  expressPassConfigurations = [(PKPaymentService *)self expressPassConfigurations];
  v3 = [expressPassConfigurations pk_setByApplyingBlock:&__block_literal_global_230_1];

  return v3;
}

- (id)expressPassInformationForMode:(id)mode
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentService: DEPRECATED METHOD expressPassInformationForMode: NO LONGER IMPLEMENTED.", v5, 2u);
  }

  return 0;
}

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withCompletion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v9 = completionCopy;
  if (configurationCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = completionCopy;
    aBlock[4] = self;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v10;
    [v12 conflictingExpressPassIdentifiersForPassConfiguration:configurationCopy withCompletion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke_231;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke_231(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)conflictingExpressPassIdentifiersForPassInformation:(id)information withCompletion:(id)completion
{
  informationCopy = information;
  completionCopy = completion;
  v9 = completionCopy;
  if (informationCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = completionCopy;
    aBlock[4] = self;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v10;
    [v12 conflictingExpressPassIdentifiersForPassInformation:informationCopy withCompletion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke_232;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke_232(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withReferenceExpressState:(id)state completion:(id)completion
{
  configurationCopy = configuration;
  stateCopy = state;
  completionCopy = completion;
  if (configurationCopy && [stateCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v12 = completionCopy;
    aBlock[4] = self;
    v18 = v12;
    v13 = _Block_copy(aBlock);
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke_2;
    v15[3] = &unk_1E79D12B0;
    v15[4] = self;
    v16 = v12;
    [v14 conflictingExpressPassIdentifiersForPassConfiguration:configurationCopy withReferenceExpressState:stateCopy completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke_233;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke_233(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)conflictingExpressPassIdentifiersForPassInformation:(id)information withReferenceExpressState:(id)state completion:(id)completion
{
  informationCopy = information;
  stateCopy = state;
  completionCopy = completion;
  if (informationCopy && [stateCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v12 = completionCopy;
    aBlock[4] = self;
    v18 = v12;
    v13 = _Block_copy(aBlock);
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke_2;
    v15[3] = &unk_1E79D12B0;
    v15[4] = self;
    v16 = v12;
    [v14 conflictingExpressPassIdentifiersForPassInformation:informationCopy withReferenceExpressState:stateCopy completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke_234;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke_234(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setExpressWithPassConfiguration:(id)configuration credential:(id)credential handler:(id)handler
{
  configurationCopy = configuration;
  credentialCopy = credential;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (configurationCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v13 = handlerCopy;
    aBlock[4] = self;
    v19 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke_2;
    v16[3] = &unk_1E79D1550;
    v16[4] = self;
    v17 = v13;
    [v15 setExpressWithPassConfiguration:configurationCopy credential:credentialCopy completion:v16];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke_235;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke_235(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setExpressWithPassInformation:(id)information credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKPaymentService_setExpressWithPassInformation_credential_completion___block_invoke;
  v10[3] = &unk_1E79D1578;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKPaymentService *)self setExpressWithPassInformation:information credential:credential handler:v10];
}

void __72__PKPaymentService_setExpressWithPassInformation_credential_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [a3 anyObject];
    (*(v3 + 16))(v3, a2, v5);
  }
}

- (void)setExpressWithPassInformation:(id)information credential:(id)credential handler:(id)handler
{
  informationCopy = information;
  credentialCopy = credential;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (informationCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v13 = handlerCopy;
    aBlock[4] = self;
    v19 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke_2;
    v16[3] = &unk_1E79D1550;
    v16[4] = self;
    v17 = v13;
    [v15 setExpressWithPassInformation:informationCopy credential:credentialCopy completion:v16];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke_237;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke_237(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeExpressPassesWithCardType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke_2;
  v12[3] = &unk_1E79D1550;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 removeExpressPassesWithCardType:type completion:v12];
}

void __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke_238;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke_238(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeExpressPassWithUniqueIdentifierV2:(id)v2 completion:(id)completion
{
  v2Copy = v2;
  completionCopy = completion;
  v9 = completionCopy;
  if (v2Copy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = completionCopy;
    aBlock[4] = self;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke_2;
    v13[3] = &unk_1E79D1550;
    v13[4] = self;
    v14 = v10;
    [v12 removeExpressPassWithUniqueIdentifier:v2Copy completion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke_239;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke_239(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeExpressPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (identifierCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = completionCopy;
    aBlock[4] = self;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79D1550;
    v13[4] = self;
    v14 = v10;
    [v12 removeExpressPassWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke_240;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke_240(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = [a3 pk_setByApplyingBlock:&__block_literal_global_242];
    (*(v3 + 16))(v3, a2, v5);
  }
}

- (void)isPassExpressWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v9 = completionCopy;
  aBlock[4] = self;
  v15 = v9;
  v10 = _Block_copy(aBlock);
  if (v9)
  {
    if (identifierCopy)
    {
      v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke_2;
      v12[3] = &unk_1E79C4888;
      v12[4] = self;
      v13 = v9;
      [v11 isPassExpressWithUniqueIdentifier:identifierCopy completion:v12];
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke_243;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke_243(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)processTransitTransactionEventWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier expressTransactionState:(id)state
{
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __149__PKPaymentService_processTransitTransactionEventWithHistory_transactionDate_forPaymentApplication_withPassUniqueIdentifier_expressTransactionState___block_invoke;
  v22 = &unk_1E79CAED8;
  selfCopy = self;
  v24 = a2;
  stateCopy = state;
  identifierCopy = identifier;
  applicationCopy = application;
  dateCopy = date;
  historyCopy = history;
  v17 = _Block_copy(&v19);
  v18 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17, v19, v20, v21, v22, selfCopy, v24];
  [v18 processTransitTransactionEventWithHistory:historyCopy transactionDate:dateCopy forPaymentApplication:applicationCopy withPassUniqueIdentifier:identifierCopy expressTransactionState:stateCopy];
}

void __149__PKPaymentService_processTransitTransactionEventWithHistory_transactionDate_forPaymentApplication_withPassUniqueIdentifier_expressTransactionState___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __149__PKPaymentService_processTransitTransactionEventWithHistory_transactionDate_forPaymentApplication_withPassUniqueIdentifier_expressTransactionState___block_invoke_244;
  v6[3] = &unk_1E79C4E28;
  v6[4] = *(a1 + 32);
  v5 = v6;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v8 = __dispatch_async_ar_block_invoke_8;
  v9 = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, &buf);
}

- (void)recordPassTransactionActivitySummaryForPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier presentmentType:(unint64_t)type
{
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __125__PKPaymentService_recordPassTransactionActivitySummaryForPassUniqueIdentifier_paymentApplicationIdentifier_presentmentType___block_invoke;
  v15 = &unk_1E79CAED8;
  selfCopy = self;
  v17 = a2;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v10 = _Block_copy(&v12);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10, v12, v13, v14, v15, selfCopy, v17];
  [v11 recordPassTransactionActivitySummaryForPassUniqueIdentifier:identifierCopy paymentApplicationIdentifier:applicationIdentifierCopy presentmentType:type];
}

void __125__PKPaymentService_recordPassTransactionActivitySummaryForPassUniqueIdentifier_paymentApplicationIdentifier_presentmentType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __125__PKPaymentService_recordPassTransactionActivitySummaryForPassUniqueIdentifier_paymentApplicationIdentifier_presentmentType___block_invoke_245;
  v6[3] = &unk_1E79C4E28;
  v6[4] = *(a1 + 32);
  v5 = v6;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v8 = __dispatch_async_ar_block_invoke_8;
  v9 = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, &buf);
}

- (void)recordPaymentApplicationUsageForPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __102__PKPaymentService_recordPaymentApplicationUsageForPassUniqueIdentifier_paymentApplicationIdentifier___block_invoke;
  v13 = &unk_1E79CAED8;
  selfCopy = self;
  v15 = a2;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v8, v10, v11, v12, v13, selfCopy, v15];
  [v9 recordPaymentApplicationUsageForPassUniqueIdentifier:identifierCopy paymentApplicationIdentifier:applicationIdentifierCopy];
}

void __102__PKPaymentService_recordPaymentApplicationUsageForPassUniqueIdentifier_paymentApplicationIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__PKPaymentService_recordPaymentApplicationUsageForPassUniqueIdentifier_paymentApplicationIdentifier___block_invoke_246;
  v6[3] = &unk_1E79C4E28;
  v6[4] = *(a1 + 32);
  v5 = v6;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v8 = __dispatch_async_ar_block_invoke_8;
  v9 = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, &buf);
}

- (id)allPaymentApplicationUsageSummaries
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKPaymentService_allPaymentApplicationUsageSummaries__block_invoke;
  v5[3] = &unk_1E79C47C0;
  v5[4] = &v6;
  [v2 allPaymentApplicationUsageSummariesWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)simulateDefaultExpressTransitPassIdentifier:(id)identifier forExpressMode:(id)mode
{
  modeCopy = mode;
  identifierCopy = identifier;
  v8 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v8 simulateDefaultExpressTransitPassIdentifier:identifierCopy forExpressMode:modeCopy handler:&__block_literal_global_248_0];
}

- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  applicationCopy = application;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_2;
  v16[3] = &unk_1E79D15A0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 transitStateWithPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy handler:v16];
}

void __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_249;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_249(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)simulateNotificationOfType:(unint64_t)type userInfo:(id)info
{
  infoCopy = info;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:0];
  [v7 simulateNotificationOfType:type userInfo:infoCopy handler:&__block_literal_global_255];
}

- (void)simulatePaymentPushTopic:(id)topic payload:(id)payload
{
  payloadCopy = payload;
  topicCopy = topic;
  v8 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v8 simulatePaymentPushTopic:topicCopy payload:payloadCopy handler:&__block_literal_global_257];
}

- (void)simulateVehicleInitiatedPairingWithTCIs:(id)is brandCode:(int64_t)code
{
  isCopy = is;
  v7 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v7 simulateVehicleInitiatedPairingWithTCIs:isCopy brandCode:code handler:&__block_literal_global_259];
}

- (void)downloadAllPaymentPasses
{
  v2 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 downloadAllPaymentPassesWithHandler:&__block_literal_global_261];
}

- (void)consistencyCheck
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKPaymentService_consistencyCheck__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a2;
  v3 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PKPaymentService_consistencyCheck__block_invoke_263;
  v4[3] = &unk_1E79C4E28;
  v4[4] = self;
  [v3 consistencyCheckWithHandler:v4];
}

void __36__PKPaymentService_consistencyCheck__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)scheduleSetupReminders
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 scheduleSetupReminders:&__block_literal_global_265];
}

- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)offset
{
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 scheduleDeviceCheckInWithStartTimeOffset:offset];
}

- (void)unscheduleDeviceCheckIn
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 unscheduleDeviceCheckIn];
}

- (void)unscheduleDeviceUpgradeTaskActivity
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 unscheduleDeviceUpgradeTaskActivity];
}

- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)date
{
  dateCopy = date;
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:dateCopy];
}

- (void)setDeviceUpgradeTasksContextBuildVersion:(id)version upgradeTaskVersion:(int64_t)taskVersion retryCount:(int64_t)count
{
  versionCopy = version;
  v9 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v9 setDeviceUpgradeTasksContextBuildVersion:versionCopy upgradeTaskVersion:taskVersion retryCount:count];
}

- (void)forceTransmissionOfUserActivitySignals
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 forceTransmissionUserActivitySignals];
}

- (void)scheduleApplePayDemoActivitySignal
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 scheduleApplePayDemoActivitySignal];
}

- (void)removeProductsCache
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 removeProductsCache];
}

- (void)requestNotificationAuthorizationIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentService_requestNotificationAuthorizationIfNecessaryWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4658;
  v13 = a2;
  v6 = completionCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKPaymentService_requestNotificationAuthorizationIfNecessaryWithCompletion___block_invoke_266;
  v9[3] = &unk_1E79C4A68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 requestNotificationAuthorizationIfNecessaryWithCompletion:v9];
}

uint64_t __78__PKPaymentService_requestNotificationAuthorizationIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __78__PKPaymentService_requestNotificationAuthorizationIfNecessaryWithCompletion___block_invoke_266(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestNotificationAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PKPaymentService_requestNotificationAuthorizationWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4658;
  v13 = a2;
  v6 = completionCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PKPaymentService_requestNotificationAuthorizationWithCompletion___block_invoke_267;
  v9[3] = &unk_1E79C4A68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 requestNotificationAuthorizationWithCompletion:v9];
}

uint64_t __67__PKPaymentService_requestNotificationAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __67__PKPaymentService_requestNotificationAuthorizationWithCompletion___block_invoke_267(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)userNotificationActionPerformed:(unint64_t)performed applicationMessageContentIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CAED8;
  v15[4] = self;
  v15[5] = a2;
  identifierCopy = identifier;
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke_268;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 userNotificationActionPerformed:performed applicationMessageContentIdentifier:identifierCopy completion:v13];
}

void __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke_268(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)userNotificationActionPerformed:(unint64_t)performed notificationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CAED8;
  v15[4] = self;
  v15[5] = a2;
  identifierCopy = identifier;
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke_269;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 userNotificationActionPerformed:performed notificationIdentifier:identifierCopy completion:v13];
}

void __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke_269(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)passbookUIServiceDidLaunch
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 passbookUIServiceDidLaunch:&__block_literal_global_271_0];
}

- (void)simulateExpressTransactionForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 simulateExpressTransactionForPassUniqueIdentifier:identifierCopy withCompletion:&__block_literal_global_273];
}

- (void)handleStandaloneTransaction:(id)transaction
{
  if (transaction)
  {
    transactionCopy = transaction;
    v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
    [v5 usingSynchronousProxy:1 handleStandaloneTransaction:transactionCopy withCompletion:&__block_literal_global_275];
  }
}

- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKPaymentService_startBackgroundVerificationObserverForPass_verificationMethod___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a2;
  methodCopy = method;
  passCopy = pass;
  v8 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v9];
  [v8 startBackgroundVerificationObserverForPass:passCopy verificationMethod:methodCopy];
}

void __82__PKPaymentService_startBackgroundVerificationObserverForPass_verificationMethod___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (BOOL)hasPaymentDeviceFieldProperties
{
  v3 = atomic_load(&self->_cachedFieldPropertiesValid);
  if ((v3 & 1) == 0)
  {
    paymentDeviceFieldProperties = [(PKPaymentService *)self paymentDeviceFieldProperties];
  }

  return self->_hasPaymentDeviceFieldProperties;
}

- (PKFieldProperties)paymentDeviceFieldProperties
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
  v13 = 0;
  v3 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PKPaymentService_paymentDeviceFieldProperties__block_invoke;
  v7[3] = &unk_1E79D15C8;
  v7[4] = &v8;
  [v3 paymentDeviceFieldPropertiesWithHandler:v7];
  v4 = v9;
  self->_hasPaymentDeviceFieldProperties = v9[5] != 0;
  atomic_store(1u, &self->_cachedFieldPropertiesValid);
  v5 = v4[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (PKExpressTransactionState)outstandingExpressTransactionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKPaymentService_outstandingExpressTransactionState__block_invoke;
  v5[3] = &unk_1E79D15F0;
  v5[4] = &v6;
  [v2 outstandingExpressTransactionState:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDefaultPaymentPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentService_setDefaultPaymentPassUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  [v5 setDefaultPaymentPassUniqueIdentifier:identifierCopy handler:v6];
}

- (NSString)defaultPaymentPassUniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v2 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKPaymentService_defaultPaymentPassUniqueIdentifier__block_invoke;
  v5[3] = &unk_1E79CA878;
  v5[4] = &v6;
  [v2 defaultPaymentPassUniqueIdentifier:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setSharedPaymentWebServiceContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    deviceID = [contextCopy deviceID];

    if (!deviceID)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = 136315394;
        v11 = "[PKPaymentService setSharedPaymentWebServiceContext:]";
        v12 = 2112;
        v13 = callStackSymbols;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%s archiving context without deviceID: %@", &v10, 0x16u);
      }
    }

    v9 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
    [v9 usingSynchronousProxy:1 setSharedPaymentWebServiceContext:v5 withCompletion:&__block_literal_global_280];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Attempt to set the shared payment web service context to nil. Ignoring.", &v10, 2u);
    }
  }
}

void __50__PKPaymentService_sharedPaymentWebServiceContext__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)sharedPaymentWebServiceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKPaymentService_sharedPaymentWebServiceContextWithCompletion___block_invoke;
    v11[3] = &unk_1E79CABB8;
    v13 = a2;
    v7 = completionCopy;
    v12 = v7;
    v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PKPaymentService_sharedPaymentWebServiceContextWithCompletion___block_invoke_2;
    v9[3] = &unk_1E79D1640;
    v9[4] = self;
    v10 = v7;
    [v8 usingSynchronousProxy:0 fetchSharedPaymentWebServiceContextWithCompletion:v9];
  }
}

void __65__PKPaymentService_sharedPaymentWebServiceContextWithCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentService_sharedPaymentWebServiceContextWithCompletion___block_invoke_284;
  v6[3] = &unk_1E79C4428;
  v7 = *(a1 + 32);
  v5 = v6;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v9 = __dispatch_async_ar_block_invoke_8;
  v10 = &unk_1E79C4428;
  v11 = v5;
  dispatch_async(v4, &buf);
}

- (void)updateAllMapsBrandAndMerchantDataWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateAllMapsBrandAndMerchantDataWithCompletion:v10];
}

void __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke_285;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke_285(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)mapsMerchantWithIdentifier:(unint64_t)identifier resultProviderIdentifier:(int)providerIdentifier completion:(id)completion
{
  v5 = *&providerIdentifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke_2;
  v14[3] = &unk_1E79D1668;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 mapsMerchantWithIdentifier:identifier resultProviderIdentifier:v5 completion:v14];
}

void __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke_286;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke_286(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  elementIdentifierCopy = elementIdentifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __129__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier___block_invoke;
  v14[3] = &unk_1E79CB1A0;
  v14[4] = self;
  v14[5] = &v15;
  [v11 rangingSuspensionReasonForAppletSubcredentialIdentifier:identifierCopy paymentApplicationIdentifier:applicationIdentifierCopy secureElementIdentifier:elementIdentifierCopy completion:v14];
  v12 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v12;
}

- (unint64_t)rangingSuspensionReasonForAppletSubcredential:(id)subcredential forPaymentApplicationID:(id)d
{
  dCopy = d;
  identifier = [subcredential identifier];
  v8 = +[PKSecureElement primarySecureElementIdentifier];
  v9 = [(PKPaymentService *)self rangingSuspensionReasonForAppletSubcredentialIdentifier:identifier paymentApplicationIdentifier:dCopy secureElementIdentifier:v8];

  return v9;
}

- (void)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  elementIdentifierCopy = elementIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke_2;
  v19[3] = &unk_1E79CA990;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 rangingSuspensionReasonForAppletSubcredentialIdentifier:identifierCopy paymentApplicationIdentifier:applicationIdentifierCopy secureElementIdentifier:elementIdentifierCopy completion:v19];
}

void __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke_289;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke_289(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rangingSuspensionReasonForAppletSubcredential:(id)subcredential forPaymentApplicationID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  identifier = [subcredential identifier];
  v10 = +[PKSecureElement primarySecureElementIdentifier];
  [(PKPaymentService *)self rangingSuspensionReasonForAppletSubcredentialIdentifier:identifier paymentApplicationIdentifier:dCopy secureElementIdentifier:v10 completion:completionCopy];
}

- (void)setPaymentApplicationRangingSuspensionReason:(unint64_t)reason forPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  [v7 setPaymentApplicationRangingSuspensionReason:reason forPassUniqueIdentifier:identifierCopy completion:&__block_literal_global_291];
}

- (void)regionsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke;
    v14[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = completionCopy;
    v14[4] = self;
    v15 = v9;
    identifiersCopy = identifiers;
    v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke_2;
    v12[3] = &unk_1E79C4B08;
    v12[4] = self;
    v13 = v9;
    [v11 regionsWithIdentifiers:identifiersCopy completion:v12];
  }
}

void __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke_292;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke_292(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, MEMORY[0x1E695E0F0]);
  }

  return result;
}

- (void)regionsMatchingName:(id)name types:(id)types completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke;
    v17[3] = &unk_1E79C4658;
    v19 = a2;
    v11 = completionCopy;
    v17[4] = self;
    v18 = v11;
    typesCopy = types;
    nameCopy = name;
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke_2;
    v15[3] = &unk_1E79C4B08;
    v15[4] = self;
    v16 = v11;
    [v14 regionsMatchingName:nameCopy types:typesCopy completion:v15];
  }
}

void __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke_293;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke_293(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, MEMORY[0x1E695E0F0]);
  }

  return result;
}

- (void)merchantForPassUniqueIdentifier:(id)identifier withAuxiliaryPassInformationItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  itemCopy = item;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke_2;
  v16[3] = &unk_1E79D1668;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 merchantForPassUniqueIdentifier:identifierCopy withAuxiliaryPassInformationItem:itemCopy completion:v16];
}

void __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke_294;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke_294(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshMerchantTokenMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentService_refreshMerchantTokenMetadataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPaymentService_refreshMerchantTokenMetadataWithCompletion___block_invoke_295;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 refreshMerchantTokenMetadataWithCompletion:v10];
}

void __63__PKPaymentService_refreshMerchantTokenMetadataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t __63__PKPaymentService_refreshMerchantTokenMetadataWithCompletion___block_invoke_295(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)revokeMerchantTokenWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke_296;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeMerchantTokenWithIdentifier:identifierCopy completion:v13];
}

void __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0);
  }
}

uint64_t __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke_296(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addRemoteDevicePendingProvisioningReceipt:(id)receipt
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62__PKPaymentService_addRemoteDevicePendingProvisioningReceipt___block_invoke;
  v10 = &unk_1E79CAED8;
  selfCopy = self;
  v12 = a2;
  receiptCopy = receipt;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5, v7, v8, v9, v10, selfCopy, v12];
  [v6 addRemoteDevicePendingProvisioningReceipt:receiptCopy];
}

void __62__PKPaymentService_addRemoteDevicePendingProvisioningReceipt___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PKPaymentService_addRemoteDevicePendingProvisioningReceipt___block_invoke_297;
  v6[3] = &unk_1E79C4E28;
  v6[4] = *(a1 + 32);
  v5 = v6;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v8 = __dispatch_async_ar_block_invoke_8;
  v9 = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, &buf);
}

- (void)suggestPaymentFPANCredentialImport:(id)import withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  importCopy = import;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 suggestPaymentFPANCredentialImport:importCopy withCompletion:v13];
}

void __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke_298;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke_298(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)notifyForFPANCardImportConsentWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 notifyForFPANCardImportConsentWithCompletion:v10];
}

void __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke_299;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke_299(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)notifyForFPANCardImportWithCredentials:(id)credentials withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  credentialsCopy = credentials;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 notifyForFPANCardImportWithCredentials:credentialsCopy withCompletion:v13];
}

void __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke_300;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke_300(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearFPANCardImportNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 clearFPANCardImportNotificationsWithCompletion:v10];
}

void __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke_301;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke_301(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearFPANCardImportNotificationHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 clearFPANCardImportNotificationHistoryWithCompletion:v10];
}

void __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke_302;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke_302(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateUnderlyingKeyReportWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPaymentService_generateUnderlyingKeyReportWithCompletion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PKPaymentService_generateUnderlyingKeyReportWithCompletion___block_invoke_303;
  v9[3] = &unk_1E79D13A0;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 generateUnderlyingKeyReportWithCompletion:v9];
}

void __62__PKPaymentService_generateUnderlyingKeyReportWithCompletion___block_invoke(uint64_t a1)
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

uint64_t __62__PKPaymentService_generateUnderlyingKeyReportWithCompletion___block_invoke_303(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)simulateEnableBiometricsForPass:(id)pass
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPaymentService_simulateEnableBiometricsForPass___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  passCopy = pass;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
  [v6 simulateEnableBiometricsForPass:passCopy];
}

void __52__PKPaymentService_simulateEnableBiometricsForPass___block_invoke(uint64_t a1)
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

- (void)simulateDeviceAccessory
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PKPaymentService_simulateDeviceAccessory__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v3];
  [v4 simulateDeviceAccessory];
}

void __43__PKPaymentService_simulateDeviceAccessory__block_invoke(uint64_t a1)
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

- (void)setNFCPayloadState:(unint64_t)state forPass:(id)pass
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PKPaymentService_setNFCPayloadState_forPass___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  passCopy = pass;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  [v8 setNFCPayloadState:state forPass:passCopy];
}

void __47__PKPaymentService_setNFCPayloadState_forPass___block_invoke(uint64_t a1)
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

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PKPaymentService_enforceUpgradedPasscodePolicyWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaymentService_enforceUpgradedPasscodePolicyWithCompletion___block_invoke_305;
  v9[3] = &unk_1E79C4A68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enforceUpgradedPasscodePolicyWithCompletion:v9];
}

void __64__PKPaymentService_enforceUpgradedPasscodePolicyWithCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 1, v5);
  }
}

uint64_t __64__PKPaymentService_enforceUpgradedPasscodePolicyWithCompletion___block_invoke_305(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)policy
{
  policyCopy = policy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKPaymentService_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = policyCopy;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPaymentService_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke_306;
  v9[3] = &unk_1E79C4A68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 currentPasscodeMeetsUpgradedPasscodePolicy:v9];
}

void __63__PKPaymentService_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 1, v5);
  }
}

uint64_t __63__PKPaymentService_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke_306(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requiresUpgradedPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKPaymentService_requiresUpgradedPasscodeWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPaymentService_requiresUpgradedPasscodeWithCompletion___block_invoke_307;
  v9[3] = &unk_1E79C4A68;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 requiresUpgradedPasscodeWithCompletion:v9];
}

void __59__PKPaymentService_requiresUpgradedPasscodeWithCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __59__PKPaymentService_requiresUpgradedPasscodeWithCompletion___block_invoke_307(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)changePasscodeFrom:(id)from toPasscode:(id)passcode completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  passcodeCopy = passcode;
  fromCopy = from;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke_308;
  v15[3] = &unk_1E79C4A68;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 changePasscodeFrom:fromCopy toPasscode:passcodeCopy completion:v15];
}

void __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke_308(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerAuxiliaryCapabilityForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_309;
  v15[3] = &unk_1E79C4860;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 registerAuxiliaryCapabilityForPassUniqueIdentifier:identifierCopy sessionExchangeToken:tokenCopy withCompletion:v15];
}

void __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_309(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)checkAllAuxiliaryRegistrationRequirements
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PKPaymentService_checkAllAuxiliaryRegistrationRequirements__block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a2;
  v2 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v3];
  [v2 checkAllAuxiliaryRegistrationRequirements];
}

void __61__PKPaymentService_checkAllAuxiliaryRegistrationRequirements__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = completionCopy;
  v15 = v8;
  identifierCopy = identifier;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke_310;
  v12[3] = &unk_1E79C44A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:identifierCopy completion:v12];
}

uint64_t __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke_310(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBarcodesForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_311;
  v15[3] = &unk_1E79D1690;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 fetchBarcodesForPassUniqueIdentifier:identifierCopy sessionExchangeToken:tokenCopy withCompletion:v15];
}

void __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_311(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)identifier authorization:(id)authorization withCompletion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __107__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_withCompletion___block_invoke;
    v17[3] = &unk_1E79C8958;
    v19 = a2;
    v11 = completionCopy;
    v18 = v11;
    authorizationCopy = authorization;
    identifierCopy = identifier;
    v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_withCompletion___block_invoke_313;
    v15[3] = &unk_1E79D16B8;
    v15[4] = self;
    v16 = v11;
    [v14 retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:identifierCopy authorization:authorizationCopy withCompletion:v15];
  }
}

void __107__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v4 + 16))(v4, 0, 0, v5);
}

- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)identifier authorization:(id)authorization sessionExchangeToken:(id)token withCompletion:(id)completion
{
  completionCopy = completion;
  v12 = completionCopy;
  if (completionCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __128__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_sessionExchangeToken_withCompletion___block_invoke;
    v20[3] = &unk_1E79C8958;
    v22 = a2;
    v13 = completionCopy;
    v21 = v13;
    tokenCopy = token;
    authorizationCopy = authorization;
    identifierCopy = identifier;
    v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __128__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_sessionExchangeToken_withCompletion___block_invoke_315;
    v18[3] = &unk_1E79D16B8;
    v18[4] = self;
    v19 = v13;
    [v17 retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:identifierCopy authorization:authorizationCopy sessionExchangeToken:tokenCopy withCompletion:v18];
  }
}

void __128__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_sessionExchangeToken_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  (*(v4 + 16))(v4, 0, 0, v5);
}

- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = completionCopy;
  v15 = v8;
  identifierCopy = identifier;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke_316;
  v12[3] = &unk_1E79C4B08;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 retrievePINEncryptionCertificateForPassUniqueIdentifier:identifierCopy withCompletion:v12];
}

uint64_t __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke_316(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_317;
  v15[3] = &unk_1E79C4B08;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 retrievePINEncryptionCertificateForPassUniqueIdentifier:identifierCopy sessionExchangeToken:tokenCopy withCompletion:v15];
}

uint64_t __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_317(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processedAuthenticationMechanism:(unint64_t)mechanism forTransactionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke;
  v16[3] = &unk_1E79C8958;
  v18 = a2;
  v10 = completionCopy;
  v17 = v10;
  identifierCopy = identifier;
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke_318;
  v14[3] = &unk_1E79C44A0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 processedAuthenticationMechanism:mechanism forTransactionIdentifier:identifierCopy completion:v14];
}

uint64_t __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke_318(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markAuthenticationCompleteForTransactionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = completionCopy;
  v15 = v8;
  identifierCopy = identifier;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke_319;
  v12[3] = &unk_1E79C44A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 markAuthenticationCompleteForTransactionIdentifier:identifierCopy completion:v12];
}

uint64_t __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke_319(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitUserConfirmation:(BOOL)confirmation forTransactionIdentifier:(id)identifier completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke;
  v16[3] = &unk_1E79C8958;
  v18 = a2;
  v10 = completionCopy;
  v17 = v10;
  identifierCopy = identifier;
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_320;
  v14[3] = &unk_1E79D16E0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 submitUserConfirmation:confirmationCopy forTransactionIdentifier:identifierCopy completion:v14];
}

void __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_320(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitUserConfirmation:(BOOL)confirmation forTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion
{
  confirmationCopy = confirmation;
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v19[3] = &unk_1E79C8958;
  v21 = a2;
  v12 = completionCopy;
  v20 = v12;
  tokenCopy = token;
  identifierCopy = identifier;
  v15 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_322;
  v17[3] = &unk_1E79D16E0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 submitUserConfirmation:confirmationCopy forTransactionIdentifier:identifierCopy sessionExchangeToken:tokenCopy completion:v17];
}

void __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_322(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitEncryptedPIN:(id)n forTransactionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  nCopy = n;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_323;
  v15[3] = &unk_1E79D16E0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitEncryptedPIN:nCopy forTransactionIdentifier:identifierCopy completion:v15];
}

void __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_323(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitEncryptedPIN:(id)n forTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v20[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = completionCopy;
  v21 = v12;
  tokenCopy = token;
  identifierCopy = identifier;
  nCopy = n;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_324;
  v18[3] = &unk_1E79D16E0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitEncryptedPIN:nCopy forTransactionIdentifier:identifierCopy sessionExchangeToken:tokenCopy completion:v18];
}

void __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_324(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitTransactionSignatureForTransactionIdentifier:(id)identifier sessionExchangeToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke_325;
  v15[3] = &unk_1E79D16E0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitTransactionSignatureForTransactionIdentifier:identifierCopy sessionExchangeToken:tokenCopy completion:v15];
}

void __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke_325(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitBarcodePaymentEvent:(id)event forPassUniqueIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  eventCopy = event;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke_326;
  v15[3] = &unk_1E79C44A0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitBarcodePaymentEvent:eventCopy forPassUniqueIdentifier:identifierCopy withCompletion:v15];
}

uint64_t __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke_326(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitBarcodePaymentEvent:(id)event forPassUniqueIdentifier:(id)identifier sessionExchangeToken:(id)token withCompletion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v20[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = completionCopy;
  v21 = v12;
  tokenCopy = token;
  identifierCopy = identifier;
  eventCopy = event;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_327;
  v18[3] = &unk_1E79C44A0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitBarcodePaymentEvent:eventCopy forPassUniqueIdentifier:identifierCopy sessionExchangeToken:tokenCopy withCompletion:v18];
}

uint64_t __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_327(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)familyMembersIgnoringCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke;
  v13[3] = &unk_1E79C8958;
  v15 = a2;
  v8 = completionCopy;
  v14 = v8;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke_328;
  v11[3] = &unk_1E79C4B08;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 familyMembersIgnoringCache:cacheCopy completion:v11];
}

uint64_t __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke_328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke_2;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)memberTypeForCurrentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke_329;
  v9[3] = &unk_1E79CA9B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 memberTypeForCurrentUserWithCompletion:v9];
}

uint64_t __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, -1);
  }

  return result;
}

void __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke_329(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke_2;
  v6[3] = &unk_1E79C4658;
  v7 = *(a1 + 40);
  v8 = a2;
  v6[4] = *(a1 + 32);
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, block);
}

uint64_t __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)pendingFamilyMembersIgnoringCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke;
  v13[3] = &unk_1E79C8958;
  v15 = a2;
  v8 = completionCopy;
  v14 = v8;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke_331;
  v11[3] = &unk_1E79C4B08;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 pendingFamilyMembersIgnoringCache:cacheCopy completion:v11];
}

uint64_t __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke_331(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke_2;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)photosForFamilyMembersWithDSIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = completionCopy;
  v15 = v8;
  dsCopy = ds;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke_332;
  v12[3] = &unk_1E79D13A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 photosForFamilyMembersWithDSIDs:dsCopy completion:v12];
}

uint64_t __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke_332(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke_2;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)defaultPaymentPassIngestionSpecificIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PKPaymentService_defaultPaymentPassIngestionSpecificIdentifier___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v14 = a2;
    v7 = identifierCopy;
    v13 = v7;
    v8 = _Block_copy(aBlock);
    v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PKPaymentService_defaultPaymentPassIngestionSpecificIdentifier___block_invoke_333;
    v10[3] = &unk_1E79C4AE0;
    v10[4] = self;
    v11 = v7;
    [v9 defaultPaymentPassIngestionSpecificIdentifier:v10];
  }
}

uint64_t __66__PKPaymentService_defaultPaymentPassIngestionSpecificIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)featureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke_334;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 featureApplicationsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke_334(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateFeatureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke_335;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateFeatureApplicationsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke_335(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureApplicationsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_featureApplicationsForProvisioningWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PKPaymentService_featureApplicationsForProvisioningWithCompletion___block_invoke_337;
  v10[3] = &unk_1E79C9BC8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 featureApplicationsForProvisioningWithCompletion:v10];
}

uint64_t __69__PKPaymentService_featureApplicationsForProvisioningWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __69__PKPaymentService_featureApplicationsForProvisioningWithCompletion___block_invoke_337(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureApplicationsForAccountUserInvitationWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentService_featureApplicationsForAccountUserInvitationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PKPaymentService_featureApplicationsForAccountUserInvitationWithCompletion___block_invoke_338;
  v10[3] = &unk_1E79C9BC8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 featureApplicationsForAccountUserInvitationWithCompletion:v10];
}

uint64_t __78__PKPaymentService_featureApplicationsForAccountUserInvitationWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __78__PKPaymentService_featureApplicationsForAccountUserInvitationWithCompletion___block_invoke_338(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureApplicationWithReferenceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKPaymentService_featureApplicationWithReferenceIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    identifierCopy = identifier;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__PKPaymentService_featureApplicationWithReferenceIdentifier_completion___block_invoke_339;
    v13[3] = &unk_1E79D1708;
    v13[4] = self;
    v14 = v9;
    [v12 featureApplicationWithReferenceIdentifier:identifierCopy completion:v13];
  }
}

uint64_t __73__PKPaymentService_featureApplicationWithReferenceIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)augmentedProductForInstallmentConfiguration:(id)configuration experimentDetails:(id)details withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = completionCopy;
  v19 = v10;
  detailsCopy = details;
  configurationCopy = configuration;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke_341;
  v16[3] = &unk_1E79D1730;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 augmentedProductForInstallmentConfiguration:configurationCopy experimentDetails:detailsCopy withCompletion:v16];
}

uint64_t __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke_341(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKPaymentService_featureApplicationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PKPaymentService_featureApplicationsWithCompletion___block_invoke_343;
  v10[3] = &unk_1E79C4B08;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 featureApplicationsWithCompletion:v10];
}

uint64_t __54__PKPaymentService_featureApplicationsWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __54__PKPaymentService_featureApplicationsWithCompletion___block_invoke_343(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)featureApplicationWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke_344;
  v13[3] = &unk_1E79D1708;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 featureApplicationWithIdentifier:identifierCopy completion:v13];
}

uint64_t __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke_344(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitApplyRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPaymentService_submitApplyRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKPaymentService_submitApplyRequest_completion___block_invoke_345;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitApplyRequest:requestCopy completion:v13];
}

uint64_t __50__PKPaymentService_submitApplyRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __50__PKPaymentService_submitApplyRequest_completion___block_invoke_345(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitDocumentRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKPaymentService_submitDocumentRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__PKPaymentService_submitDocumentRequest_completion___block_invoke_347;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitDocumentRequest:requestCopy completion:v13];
}

uint64_t __53__PKPaymentService_submitDocumentRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __53__PKPaymentService_submitDocumentRequest_completion___block_invoke_347(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitVerificationRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PKPaymentService_submitVerificationRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PKPaymentService_submitVerificationRequest_completion___block_invoke_348;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitVerificationRequest:requestCopy completion:v13];
}

uint64_t __57__PKPaymentService_submitVerificationRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __57__PKPaymentService_submitVerificationRequest_completion___block_invoke_348(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitTermsRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPaymentService_submitTermsRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKPaymentService_submitTermsRequest_completion___block_invoke_349;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitTermsRequest:requestCopy completion:v13];
}

uint64_t __50__PKPaymentService_submitTermsRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __50__PKPaymentService_submitTermsRequest_completion___block_invoke_349(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitDeleteRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentService_submitDeleteRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKPaymentService_submitDeleteRequest_completion___block_invoke_350;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitDeleteRequest:requestCopy completion:v13];
}

uint64_t __51__PKPaymentService_submitDeleteRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __51__PKPaymentService_submitDeleteRequest_completion___block_invoke_350(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitTransactionAnswerForTransaction:(id)transaction questionType:(unint64_t)type answer:(id)answer completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = completionCopy;
  v21 = v12;
  answerCopy = answer;
  transactionCopy = transaction;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke_351;
  v18[3] = &unk_1E79C4860;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitTransactionAnswerForTransaction:transactionCopy questionType:type answer:answerCopy completion:v18];
}

uint64_t __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke_351(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsRequiringReviewForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke_352;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionsRequiringReviewForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke_352(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)categoryVisualizationMagnitudesForPassUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__26;
  v13 = __Block_byref_object_dispose__26;
  v14 = 0;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID___block_invoke;
  v8[3] = &unk_1E79C47E8;
  v8[4] = &v9;
  [v5 categoryVisualizationMagnitudesForPassUniqueID:dCopy completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)categoryVisualizationMagnitudesForPassUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID_completion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v17 = a2;
    v9 = completionCopy;
    v16 = v9;
    dCopy = d;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID_completion___block_invoke_353;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 categoryVisualizationMagnitudesForPassUniqueID:dCopy completion:v13];
  }
}

uint64_t __78__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)recomputeCategoryVisualizationMangitudesForPassUniqueID:(id)d style:(int64_t)style
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPaymentService_recomputeCategoryVisualizationMangitudesForPassUniqueID_style___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  dCopy = d;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  [v8 recomputeCategoryVisualizationMangitudesForPassUniqueID:dCopy style:style];
}

void __82__PKPaymentService_recomputeCategoryVisualizationMangitudesForPassUniqueID_style___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)performDeviceCheckInWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPaymentService_performDeviceCheckInWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKPaymentService_performDeviceCheckInWithCompletion___block_invoke_354;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 performDeviceCheckInWithCompletion:v10];
}

uint64_t __55__PKPaymentService_performDeviceCheckInWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __55__PKPaymentService_performDeviceCheckInWithCompletion___block_invoke_354(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setDeviceCheckInContextBuildVersion:(id)version outstandingAction:(int64_t)action forRegion:(id)region
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_setDeviceCheckInContextBuildVersion_outstandingAction_forRegion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  regionCopy = region;
  versionCopy = version;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  [v11 setDeviceCheckInContextBuildVersion:versionCopy outstandingAction:action forRegion:regionCopy];
}

void __84__PKPaymentService_setDeviceCheckInContextBuildVersion_outstandingAction_forRegion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)productsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentService_productsWithRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKPaymentService_productsWithRequest_completion___block_invoke_355;
  v13[3] = &unk_1E79D1780;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 productsWithRequest:requestCopy completion:v13];
}

uint64_t __51__PKPaymentService_productsWithRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __51__PKPaymentService_productsWithRequest_completion___block_invoke_355(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)productsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PKPaymentService_productsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PKPaymentService_productsWithCompletion___block_invoke_357;
  v10[3] = &unk_1E79D1780;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 productsWithCompletion:v10];
}

uint64_t __43__PKPaymentService_productsWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __43__PKPaymentService_productsWithCompletion___block_invoke_357(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performProductActionRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_performProductActionRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  requestCopy = request;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKPaymentService_performProductActionRequest_completion___block_invoke_358;
  v13[3] = &unk_1E79D1780;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 performProductActionRequest:requestCopy completion:v13];
}

uint64_t __59__PKPaymentService_performProductActionRequest_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __59__PKPaymentService_performProductActionRequest_completion___block_invoke_358(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)storePassOwnershipToken:(id)token withIdentifier:(id)identifier
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_storePassOwnershipToken_withIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  identifierCopy = identifier;
  tokenCopy = token;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v8];
  [v9 storePassOwnershipToken:tokenCopy withIdentifier:identifierCopy];
}

void __59__PKPaymentService_storePassOwnershipToken_withIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)passOwnershipTokenWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PKPaymentService_passOwnershipTokenWithIdentifier_completion___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = a2;
    identifierCopy = identifier;
    v9 = _Block_copy(aBlock);
    v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKPaymentService_passOwnershipTokenWithIdentifier_completion___block_invoke_359;
    v11[3] = &unk_1E79C4AE0;
    v11[4] = self;
    v12 = completionCopy;
    [v10 passOwnershipTokenWithIdentifier:identifierCopy completion:v11];
  }
}

void __64__PKPaymentService_passOwnershipTokenWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_accountAttestationAnonymizationSaltWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentService_accountAttestationAnonymizationSaltWithCompletion___block_invoke_360;
  v10[3] = &unk_1E79D17A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 accountAttestationAnonymizationSaltWithCompletion:v10];
}

uint64_t __70__PKPaymentService_accountAttestationAnonymizationSaltWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __70__PKPaymentService_accountAttestationAnonymizationSaltWithCompletion___block_invoke_360(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setAccountAttestationAnonymizationSalt:(id)salt withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  saltCopy = salt;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke_362;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 setAccountAttestationAnonymizationSalt:saltCopy withCompletion:v13];
}

void __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke_362(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addPlaceholderPassWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  configurationCopy = configuration;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke_363;
  v13[3] = &unk_1E79D17D0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 addPlaceholderPassWithConfiguration:configurationCopy completion:v13];
}

uint64_t __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke_363(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)subcredentialInvitationsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_subcredentialInvitationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKPaymentService_subcredentialInvitationsWithCompletion___block_invoke_365;
  v10[3] = &unk_1E79C4810;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 subcredentialInvitationsWithCompletion:v10];
}

uint64_t __59__PKPaymentService_subcredentialInvitationsWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __59__PKPaymentService_subcredentialInvitationsWithCompletion___block_invoke_365(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = completionCopy;
  v19 = v10;
  credentialCopy = credential;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke_366;
  v16[3] = &unk_1E79C4770;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateMetadataOnPassWithIdentifier:identifierCopy credential:credentialCopy completion:v16];
}

uint64_t __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke_366(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  identifiersCopy = identifiers;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke_367;
  v12[3] = &unk_1E79D17F8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 registerCredentialsWithIdentifiers:identifiersCopy completion:v12];
}

void __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke_367(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifiersCopy = identifiers;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke_369;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeCredentialsWithIdentifiers:identifiersCopy completion:v13];
}

uint64_t __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke_369(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)revokeCredentialsWithReaderIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifiersCopy = identifiers;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke_370;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeCredentialsWithReaderIdentifiers:identifiersCopy completion:v13];
}

uint64_t __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke_370(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __88__PKPaymentService_requestBackgroundRegistrationForCredentialWithIdentifier_completion___block_invoke;
  v15 = &unk_1E79C8958;
  v16 = completionCopy;
  v17 = a2;
  v8 = completionCopy;
  identifierCopy = identifier;
  v10 = _Block_copy(&v12);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10, v12, v13, v14, v15];
  [v11 requestBackgroundRegistrationForCredentialWithIdentifier:identifierCopy completion:v8];
}

uint64_t __88__PKPaymentService_requestBackgroundRegistrationForCredentialWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)matchingInvitationOnDevice:(id)device withTimeout:(unint64_t)timeout completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)canAcceptInvitation:(id)invitation withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)credentialWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke_371;
  v13[3] = &unk_1E79D1820;
  v14 = v8;
  v12 = v8;
  [v11 credentialWithIdentifier:identifierCopy completion:v13];
}

uint64_t __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke_371(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)passSharesForCredentialIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke_373;
  v13[3] = &unk_1E79C5468;
  v14 = v8;
  v12 = v8;
  [v11 passSharesForCredentialIdentifier:identifierCopy completion:v13];
}

uint64_t __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke_373(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sharingInvitationWasInvalidated:(id)invalidated withCredentialIdentifier:(id)identifier error:(id)error completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v23 = a2;
  v12 = completionCopy;
  v22 = v12;
  errorCopy = error;
  identifierCopy = identifier;
  invalidatedCopy = invalidated;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke_374;
  v19[3] = &unk_1E79C4770;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 sharingInvitationWasInvalidated:invalidatedCopy withCredentialIdentifier:identifierCopy error:errorCopy completion:v19];
}

uint64_t __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke_374(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pushProvisioningSharingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPaymentService_pushProvisioningSharingIdentifiers___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = identifiersCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKPaymentService_pushProvisioningSharingIdentifiers___block_invoke_375;
  v10[3] = &unk_1E79C4BD0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 pushProvisioningSharingIdentifiers:v10];
}

uint64_t __55__PKPaymentService_pushProvisioningSharingIdentifiers___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __55__PKPaymentService_pushProvisioningSharingIdentifiers___block_invoke_375(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveProvisioningSupportData:(id)data forPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke_376;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 saveProvisioningSupportData:dataCopy forPassUniqueIdentifier:identifierCopy completion:v16];
}

void __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke_376(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearProvisioningSupportDataOfType:(unint64_t)type forPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke_377;
  v15[3] = &unk_1E79C44A0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 clearProvisioningSupportDataOfType:type forPassUniqueIdentifier:identifierCopy completion:v15];
}

uint64_t __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke_377(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)statusForShareableCredentials:(id)credentials completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_statusForShareableCredentials_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v9 = completionCopy;
  v17 = credentialsCopy;
  v18 = v9;
  v10 = credentialsCopy;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PKPaymentService_statusForShareableCredentials_completion___block_invoke_378;
  v14[3] = &unk_1E79C4B80;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 statusForShareableCredentials:v10 completion:v14];
}

uint64_t __61__PKPaymentService_statusForShareableCredentials_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32), 0);
  }

  return result;
}

uint64_t __61__PKPaymentService_statusForShareableCredentials_completion___block_invoke_378(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  targetCopy = target;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke_380;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 provideEncryptedPushProvisioningTarget:targetCopy sharingInstanceIdentifier:identifierCopy completion:v16];
}

void __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke_380(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle completion:(id)completion
{
  circleCopy = circle;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  targetCopy = target;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_381;
  v15[3] = &unk_1E79D1848;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 prepareProvisioningTarget:targetCopy checkFamilyCircle:circleCopy completion:v15];
}

void __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

uint64_t __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_381(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)redeemEncryptedProvisioningTarget:(id)target completion:(id)completion
{
  completionCopy = completion;
  targetCopy = target;
  v8 = [[PKPaymentShareableCredential alloc] initWithEncryptedProvisioningTarget:targetCopy provisioningSharingIdentifier:0 passThumbnailImageData:0];

  [(PKPaymentService *)self redeemPaymentShareableCredential:v8 completion:completionCopy];
}

- (void)redeemPaymentShareableCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  credentialCopy = credential;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke_384;
  v13[3] = &unk_1E79D1870;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 redeemPaymentShareableCredential:credentialCopy completion:v13];
}

void __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, 0, 0, v5);
  }
}

uint64_t __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke_384(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)redeemProvisioningSharingIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke_386;
  v13[3] = &unk_1E79D1898;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 redeemProvisioningSharingIdentifier:identifierCopy completion:v13];
}

void __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

uint64_t __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke_386(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)currentSecureElementSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKPaymentService_currentSecureElementSnapshot___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = snapshotCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PKPaymentService_currentSecureElementSnapshot___block_invoke_388;
  v10[3] = &unk_1E79D18C0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 currentSecureElementSnapshot:v10];
}

void __49__PKPaymentService_currentSecureElementSnapshot___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

uint64_t __49__PKPaymentService_currentSecureElementSnapshot___block_invoke_388(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reserveStorageForAppletTypes:(id)types metadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = completionCopy;
  v19 = v10;
  metadataCopy = metadata;
  typesCopy = types;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke_390;
  v16[3] = &unk_1E79D18E8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 reserveStorageForAppletTypes:typesCopy metadata:metadataCopy completion:v16];
}

void __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

uint64_t __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke_390(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteReservation:(id)reservation completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKPaymentService_deleteReservation_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  reservationCopy = reservation;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PKPaymentService_deleteReservation_completion___block_invoke_392;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteReservation:reservationCopy completion:v13];
}

uint64_t __49__PKPaymentService_deleteReservation_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__PKPaymentService_deleteReservation_completion___block_invoke_392(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionReceiptWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  dCopy = d;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke_393;
  v13[3] = &unk_1E79D1910;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionReceiptWithUniqueID:dCopy completion:v13];
}

uint64_t __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke_393(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionReceiptForTransactionWithIdentifier:(id)identifier updateIfNecessary:(BOOL)necessary completion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke_395;
  v15[3] = &unk_1E79D1910;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 transactionReceiptForTransactionWithIdentifier:identifierCopy updateIfNecessary:necessaryCopy completion:v15];
}

uint64_t __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke_395(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)storeTransactionReceiptData:(id)data completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  dataCopy = data;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke_396;
  v13[3] = &unk_1E79D1910;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 storeTransactionReceiptData:dataCopy completion:v13];
}

uint64_t __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke_396(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteTransactionReceiptWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  dCopy = d;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke_397;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteTransactionReceiptWithUniqueID:dCopy completion:v13];
}

uint64_t __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke_397(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionTagsForTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke_398;
  v13[3] = &unk_1E79C4810;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionTagsForTransactionWithIdentifier:identifierCopy completion:v13];
}

uint64_t __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke_398(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default
{
  defaultCopy = default;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPaymentService_willPassWithUniqueIdentifierAutomaticallyBecomeDefault___block_invoke;
  v7[3] = &unk_1E79C8E40;
  v7[4] = self;
  v7[5] = &v8;
  [v5 willPassWithUniqueIdentifierAutomaticallyBecomeDefault:defaultCopy completion:v7];
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)sendAllPassTransactions
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PKPaymentService_sendAllPassTransactions__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v3];
  [v4 sendAllPassTransactions];
}

void __43__PKPaymentService_sendAllPassTransactions__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)ambiguousTransactionWithServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke_399;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 ambiguousTransactionWithServiceIdentifier:identifierCopy completion:v13];
}

uint64_t __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke_399(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertUserLegalAgreement:(id)agreement
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PKPaymentService_insertUserLegalAgreement___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  agreementCopy = agreement;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PKPaymentService_insertUserLegalAgreement___block_invoke_400;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 insertUserLegalAgreement:agreementCopy completion:v7];
}

void __45__PKPaymentService_insertUserLegalAgreement___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  handleCopy = handle;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_2;
  v13[3] = &unk_1E79D1960;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 sendDeviceSharingCapabilitiesRequestForHandle:handleCopy completion:v13];
}

void __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_401;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_8;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_401(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_3;
  v10[3] = &unk_1E79C4A90;
  v13 = *(a1 + 40);
  v14 = a2;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_8;
  block[3] = &unk_1E79C4428;
  v16 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

uint64_t __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_3(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[7], a1[4]);
  }

  return result;
}

- (void)simulateSecureEvent:(id)event
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PKPaymentService_simulateSecureEvent___block_invoke;
  v9 = &unk_1E79CAED8;
  selfCopy = self;
  v11 = a2;
  eventCopy = event;
  v5 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:&v6];
  [v5 simulateSecureEvent:{eventCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __40__PKPaymentService_simulateSecureEvent___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)updateWalletBadgeCount
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PKPaymentService_updateWalletBadgeCount__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v3];
  [v4 updateWalletBadgeCount];
}

void __42__PKPaymentService_updateWalletBadgeCount__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (BOOL)_hasInterfaceOfType:(unint64_t)type
{
  interfaceType = self->_interfaceType;
  v4 = interfaceType == 1;
  v5 = interfaceType < 2;
  if (type == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    [(PKPaymentService *)self _updateForceConnectionOnResume];
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    [(PKPaymentService *)self _updateForceConnectionOnResume];
    observerCopy = v5;
  }
}

- (void)_accessDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects count];
    if (self->_forceConnectionOnResume && v6 == 0)
    {
      self->_forceConnectionOnResume = 0;
      [(PKXPCService *)self->_remoteService setForceConnectionOnResume:0];
    }

    os_unfair_lock_unlock(&self->_lockObservers);
    v8 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          delegateCopy[2](delegateCopy, *(*(&v14 + 1) + 8 * v13++));
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)paymentPassForVirtualCard:(id)card completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([cardCopy type] == 2)
    {
      identifier = [cardCopy identifier];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__PKPaymentService_VPAN__paymentPassForVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v18 = a2;
      v10 = completionCopy;
      aBlock[4] = self;
      v17 = v10;
      v11 = _Block_copy(aBlock);
      v12 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v11];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__PKPaymentService_VPAN__paymentPassForVirtualCard_completion___block_invoke_14;
      v14[3] = &unk_1E79C4E78;
      v15 = v10;
      [v12 paymentPassForVPANID:identifier andLoadImages:1 completion:v14];
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Only VPAN virtual cards are supported via Payment Service", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __63__PKPaymentService_VPAN__paymentPassForVirtualCard_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

- (int64_t)virtualCardCountWithActiveVPAN
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPaymentService_VPAN__virtualCardCountWithActiveVPAN__block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v3];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKPaymentService_VPAN__virtualCardCountWithActiveVPAN__block_invoke_16;
  v7[3] = &unk_1E79E0F60;
  v7[4] = self;
  v7[5] = &v8;
  [v4 vpanVirtualCards:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__PKPaymentService_VPAN__virtualCardCountWithActiveVPAN__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __56__PKPaymentService_VPAN__virtualCardCountWithActiveVPAN__block_invoke_16(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)virtualCardsWithActiveVPAN:(id)n
{
  nCopy = n;
  v6 = nCopy;
  if (nCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PKPaymentService_VPAN__virtualCardsWithActiveVPAN___block_invoke;
    aBlock[3] = &unk_1E79C9778;
    v14 = a2;
    v7 = nCopy;
    aBlock[4] = self;
    v13 = v7;
    v8 = _Block_copy(aBlock);
    v9 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PKPaymentService_VPAN__virtualCardsWithActiveVPAN___block_invoke_18;
    v10[3] = &unk_1E79E0F88;
    v10[4] = self;
    v11 = v7;
    [v9 vpanVirtualCards:v10];
  }
}

void __53__PKPaymentService_VPAN__virtualCardsWithActiveVPAN___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __53__PKPaymentService_VPAN__virtualCardsWithActiveVPAN___block_invoke_18(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)vpanCardCredentialsForVirtualCard:(id)card authorization:(id)authorization merchantHost:(id)host completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  authorizationCopy = authorization;
  hostCopy = host;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([cardCopy type] == 2)
    {
      identifier = [cardCopy identifier];
      if (identifier)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__PKPaymentService_VPAN__vpanCardCredentialsForVirtualCard_authorization_merchantHost_completion___block_invoke;
        aBlock[3] = &unk_1E79C9778;
        v24 = a2;
        v16 = completionCopy;
        aBlock[4] = self;
        v23 = v16;
        v17 = _Block_copy(aBlock);
        v18 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v17];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __98__PKPaymentService_VPAN__vpanCardCredentialsForVirtualCard_authorization_merchantHost_completion___block_invoke_19;
        v20[3] = &unk_1E79D02C8;
        v20[4] = self;
        v21 = v16;
        [v18 vpanCardCredentialsForVPANID:identifier authorization:authorizationCopy merchantHost:hostCopy completion:v20];

        v19 = v23;
      }

      else
      {
        v19 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "[PKPaymentService(VPAN) vpanCardCredentialsForVirtualCard:authorization:merchantHost:completion:]";
          v27 = 2112;
          v28 = cardCopy;
        }
      }
    }

    else
    {
      identifier = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[PKPaymentService(VPAN) vpanCardCredentialsForVirtualCard:authorization:merchantHost:completion:]";
        v27 = 2112;
        v28 = cardCopy;
      }
    }
  }
}

void __98__PKPaymentService_VPAN__vpanCardCredentialsForVirtualCard_authorization_merchantHost_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __98__PKPaymentService_VPAN__vpanCardCredentialsForVirtualCard_authorization_merchantHost_completion___block_invoke_19(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)regenerateVPANCardCredentialsForVirtualCard:(id)card authorization:(id)authorization completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  authorizationCopy = authorization;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([cardCopy type] == 2)
    {
      identifier = [cardCopy identifier];
      if (identifier)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __95__PKPaymentService_VPAN__regenerateVPANCardCredentialsForVirtualCard_authorization_completion___block_invoke;
        aBlock[3] = &unk_1E79C9778;
        v21 = a2;
        v13 = completionCopy;
        aBlock[4] = self;
        v20 = v13;
        v14 = _Block_copy(aBlock);
        v15 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v14];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __95__PKPaymentService_VPAN__regenerateVPANCardCredentialsForVirtualCard_authorization_completion___block_invoke_21;
        v17[3] = &unk_1E79D02C8;
        v17[4] = self;
        v18 = v13;
        [v15 regenerateVPANCardCredentialsForVPANID:identifier authorization:authorizationCopy completion:v17];

        v16 = v20;
      }

      else
      {
        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "[PKPaymentService(VPAN) regenerateVPANCardCredentialsForVirtualCard:authorization:completion:]";
          v24 = 2112;
          v25 = cardCopy;
        }
      }
    }

    else
    {
      identifier = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[PKPaymentService(VPAN) regenerateVPANCardCredentialsForVirtualCard:authorization:completion:]";
        v24 = 2112;
        v25 = cardCopy;
      }
    }
  }
}

void __95__PKPaymentService_VPAN__regenerateVPANCardCredentialsForVirtualCard_authorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __95__PKPaymentService_VPAN__regenerateVPANCardCredentialsForVirtualCard_authorization_completion___block_invoke_21(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateDateLastUsedBySafari:(id)safari forVirtualCard:(id)card completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  safariCopy = safari;
  cardCopy = card;
  completionCopy = completion;
  if ([cardCopy type] == 2)
  {
    identifier = [cardCopy identifier];
    if (identifier)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__PKPaymentService_VPAN__updateDateLastUsedBySafari_forVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v21 = a2;
      v13 = completionCopy;
      aBlock[4] = self;
      v20 = v13;
      v14 = _Block_copy(aBlock);
      v15 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v14];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__PKPaymentService_VPAN__updateDateLastUsedBySafari_forVirtualCard_completion___block_invoke_22;
      v17[3] = &unk_1E79C4860;
      v17[4] = self;
      v18 = v13;
      [v15 updateDateLastUsedBySafari:safariCopy forVirtualCardWithIdentifier:identifier completion:v17];

      v16 = v20;
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[PKPaymentService(VPAN) updateDateLastUsedBySafari:forVirtualCard:completion:]";
        v24 = 2112;
        v25 = cardCopy;
      }
    }
  }

  else
  {
    identifier = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[PKPaymentService(VPAN) updateDateLastUsedBySafari:forVirtualCard:completion:]";
      v24 = 2112;
      v25 = cardCopy;
    }
  }
}

void __79__PKPaymentService_VPAN__updateDateLastUsedBySafari_forVirtualCard_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __79__PKPaymentService_VPAN__updateDateLastUsedBySafari_forVirtualCard_completion___block_invoke_22(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCardholderNameFromSafari:(id)safari forVirtualCard:(id)card completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  safariCopy = safari;
  cardCopy = card;
  completionCopy = completion;
  if ([cardCopy type] == 2)
  {
    identifier = [cardCopy identifier];
    if (identifier)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__PKPaymentService_VPAN__updateCardholderNameFromSafari_forVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v21 = a2;
      v13 = completionCopy;
      aBlock[4] = self;
      v20 = v13;
      v14 = _Block_copy(aBlock);
      v15 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v14];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __83__PKPaymentService_VPAN__updateCardholderNameFromSafari_forVirtualCard_completion___block_invoke_23;
      v17[3] = &unk_1E79C4860;
      v17[4] = self;
      v18 = v13;
      [v15 updateCardholderNameFromSafari:safariCopy forVirtualCardWithIdentifier:identifier completion:v17];

      v16 = v20;
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[PKPaymentService(VPAN) updateCardholderNameFromSafari:forVirtualCard:completion:]";
        v24 = 2112;
        v25 = cardCopy;
      }
    }
  }

  else
  {
    identifier = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[PKPaymentService(VPAN) updateCardholderNameFromSafari:forVirtualCard:completion:]";
      v24 = 2112;
      v25 = cardCopy;
    }
  }
}

void __83__PKPaymentService_VPAN__updateCardholderNameFromSafari_forVirtualCard_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __83__PKPaymentService_VPAN__updateCardholderNameFromSafari_forVirtualCard_completion___block_invoke_23(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)activeAutoFillCardCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPaymentService_FPAN__activeAutoFillCardCount__block_invoke;
  v6[3] = &unk_1E79CB1A0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 activeAutoFillCardCountWithCompletion:v6];
  v4 = v8[3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isCheckingAutoFillEligibility
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKPaymentService_FPAN__isCheckingAutoFillEligibility__block_invoke;
  v5[3] = &unk_1E79C8E40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 isCheckingAutoFillEligibility:v5];
  LOBYTE(selfCopy) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)performAfterEligibilityFinishes:(id)finishes
{
  finishesCopy = finishes;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKPaymentService_FPAN__performAfterEligibilityFinishes___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = finishesCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PKPaymentService_FPAN__performAfterEligibilityFinishes___block_invoke_36;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 performAfterEligibilityFinishes:v10];
}

void __58__PKPaymentService_FPAN__performAfterEligibilityFinishes___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t __58__PKPaymentService_FPAN__performAfterEligibilityFinishes___block_invoke_36(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)activeFPANCardsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_FPAN__activeFPANCardsWithOptions_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentService_FPAN__activeFPANCardsWithOptions_completion___block_invoke_38;
  v12[3] = &unk_1E79C4B08;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 activeFPANCardsWithOptions:options completion:v12];
}

void __64__PKPaymentService_FPAN__activeFPANCardsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __64__PKPaymentService_FPAN__activeFPANCardsWithOptions_completion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)credentialForFPANCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v25 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v24 = v14;
  hostCopy = host;
  authorizationCopy = authorization;
  cardCopy = card;
  v18 = _Block_copy(aBlock);
  v19 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v18];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_40;
  v21[3] = &unk_1E79E0FB0;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 credentialForFPANCard:cardCopy authorization:authorizationCopy options:options merchantHost:hostCopy completion:v21];
}

void __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

uint64_t __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke_42;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:v16];
}

void __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke_43;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:v16];
}

void __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteFPANCardWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  descriptorCopy = descriptor;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke_44;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteFPANCardWithDescriptor:descriptorCopy completion:v13];
}

void __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke_44(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)canSaveFPANCardWithDescriptor:(id)descriptor credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke_45;
  v16[3] = &unk_1E79E0FD8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 canSaveFPANCardWithDescriptor:descriptorCopy credential:credentialCopy completion:v16];
}

void __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke_45(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)userRejectedSavingFPANCardWithDescriptor:(id)descriptor credential:(id)credential options:(unint64_t)options permanent:(BOOL)permanent
{
  permanentCopy = permanent;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_FPAN__userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  credentialCopy = credential;
  descriptorCopy = descriptor;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKPaymentService_FPAN__userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke_47;
  v14[3] = &unk_1E79C4E28;
  v14[4] = self;
  [v13 userRejectedSavingFPANCardWithDescriptor:descriptorCopy credential:credentialCopy options:options permanent:permanentCopy completion:v14];
}

void __96__PKPaymentService_FPAN__userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d authorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  authorizationCopy = authorization;
  dCopy = d;
  identifierCopy = identifier;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke_48;
  v18[3] = &unk_1E79E1000;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v16 fpanCardAndCredentialForPrimaryAccountIdentifier:identifierCopy passUniqueID:dCopy authorization:authorizationCopy completion:v18];
}

void __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke_48(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)identifier passUniqueID:(id)d credential:(id *)credential error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PKPaymentService_FPAN__fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__75;
  v26 = __Block_byref_object_dispose__75;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__75;
  v20 = __Block_byref_object_dispose__75;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PKPaymentService_FPAN__fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke_50;
  v15[3] = &unk_1E79C4D10;
  v15[5] = &v22;
  v15[6] = &v16;
  v15[4] = self;
  [v14 fpanCredentialUsingPrimaryAccountIdentifier:identifierCopy passUniqueID:dCopy completion:v15];
  if (error)
  {
    objc_storeStrong(error, v17[5]);
  }

  if (credential)
  {
    objc_storeStrong(credential, v23[5]);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __98__PKPaymentService_FPAN__fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

void __98__PKPaymentService_FPAN__fpanCredentialForPrimaryAccountIdentifier_passUniqueID_credential_error___block_invoke_50(uint64_t a1, void *a2, void *a3)
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
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_FPAN__fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v12];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__75;
  v31 = __Block_byref_object_dispose__75;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__75;
  v25 = __Block_byref_object_dispose__75;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__75;
  v19 = __Block_byref_object_dispose__75;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PKPaymentService_FPAN__fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke_51;
  v14[3] = &unk_1E79C4D38;
  v14[6] = &v21;
  v14[7] = &v15;
  v14[4] = self;
  v14[5] = &v27;
  [v13 fpanDescriptorAndCredentialUsingFPAN:nCopy completion:v14];
  if (error)
  {
    objc_storeStrong(error, v16[5]);
  }

  if (descriptor)
  {
    objc_storeStrong(descriptor, v28[5]);
  }

  if (credential)
  {
    objc_storeStrong(credential, v22[5]);
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __89__PKPaymentService_FPAN__fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

void __89__PKPaymentService_FPAN__fpanDescriptorAndCredentialForFPAN_descriptor_credential_error___block_invoke_51(void *a1, void *a2, void *a3, void *a4)
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

- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_FPAN__checkActiveFPANCardsForEligibilityWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PKPaymentService_FPAN__checkActiveFPANCardsForEligibilityWithCompletion___block_invoke_53;
  v9[3] = &unk_1E79E1028;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 checkActiveFPANCardsForEligibilityWithCompletion:v9];
}

void __75__PKPaymentService_FPAN__checkActiveFPANCardsForEligibilityWithCompletion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __75__PKPaymentService_FPAN__checkActiveFPANCardsForEligibilityWithCompletion___block_invoke_53(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cachedFPANCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPaymentService_FPAN__cachedFPANCredentialsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PKPaymentService_FPAN__cachedFPANCredentialsWithCompletion___block_invoke_55;
  v9[3] = &unk_1E79E1050;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 cachedFPANCredentialsWithCompletion:v9];
}

void __62__PKPaymentService_FPAN__cachedFPANCredentialsWithCompletion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

uint64_t __62__PKPaymentService_FPAN__cachedFPANCredentialsWithCompletion___block_invoke_55(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addPendingProvisioning:(id)provisioning
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__PKPaymentService_PendingProvisioning__addPendingProvisioning___block_invoke;
  v10 = &unk_1E79C9840;
  selfCopy = self;
  v12 = a2;
  provisioningCopy = provisioning;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, selfCopy, v12];
  [v6 addPendingProvisioning:provisioningCopy];
}

void __64__PKPaymentService_PendingProvisioning__addPendingProvisioning___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = a2;
    v7 = NSStringFromSelector(v5);

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@]: %@", &v8, 0x16u);
  }
}

- (void)addPendingProvisionings:(id)provisionings completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  provisioningsCopy = provisionings;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke_14;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 addPendingProvisionings:provisioningsCopy completion:v13];
}

void __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@]: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrievePendingProvisioningsWithType:(id)type completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_PendingProvisioning__retrievePendingProvisioningsWithType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  typeCopy = type;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PKPaymentService_PendingProvisioning__retrievePendingProvisioningsWithType_completion___block_invoke_16;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 retrievePendingProvisioningsWithType:typeCopy completion:v13];
}

uint64_t __89__PKPaymentService_PendingProvisioning__retrievePendingProvisioningsWithType_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)hasPendingProvisioningsOfTypes:(id)types
{
  typesCopy = types;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPaymentService_PendingProvisioning__hasPendingProvisioningsOfTypes___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v6 = _Block_copy(aBlock);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (typesCopy && [typesCopy count])
  {
    v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKPaymentService_PendingProvisioning__hasPendingProvisioningsOfTypes___block_invoke_18;
    v10[3] = &unk_1E79C4798;
    v10[4] = &v11;
    [v7 usingSynchronousProxy:1 hasPendingProvisioningsOfTypes:typesCopy completion:v10];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __72__PKPaymentService_PendingProvisioning__hasPendingProvisioningsOfTypes___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v4, 0xCu);
  }
}

- (void)retrievePendingProvisioningOfType:(id)type withUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PKPaymentService_PendingProvisioning__retrievePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifierCopy = identifier;
  typeCopy = type;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __107__PKPaymentService_PendingProvisioning__retrievePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke_20;
  v16[3] = &unk_1E79E2520;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 retrievePendingProvisioningOfType:typeCopy withUniqueIdentifier:identifierCopy completion:v16];
}

uint64_t __107__PKPaymentService_PendingProvisioning__retrievePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)removePendingProvisioningOfType:(id)type withUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKPaymentService_PendingProvisioning__removePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifierCopy = identifier;
  typeCopy = type;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__PKPaymentService_PendingProvisioning__removePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke_22;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 removePendingProvisioningOfType:typeCopy withUniqueIdentifier:identifierCopy completion:v16];
}

uint64_t __105__PKPaymentService_PendingProvisioning__removePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPaymentService %@];", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

@end