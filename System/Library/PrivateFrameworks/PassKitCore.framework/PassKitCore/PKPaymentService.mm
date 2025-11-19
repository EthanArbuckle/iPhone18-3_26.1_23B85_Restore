@interface PKPaymentService
+ (id)paymentService;
- (BOOL)_hasInterfaceOfType:(unint64_t)a3;
- (BOOL)hasPaymentDeviceFieldProperties;
- (BOOL)hasPendingProvisioningsOfTypes:(id)a3;
- (BOOL)isCheckingAutoFillEligibility;
- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)a3;
- (BOOL)isExpressModeEnabledForRemotePassUniqueIdentifier:(id)a3;
- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3;
- (NSString)defaultPaymentPassUniqueIdentifier;
- (PKExpressTransactionState)outstandingExpressTransactionState;
- (PKFieldProperties)paymentDeviceFieldProperties;
- (PKPaymentService)initWithDelegate:(id)a3;
- (PKPaymentWebServiceContext)sharedPaymentWebServiceContext;
- (id)_extendedRemoteObjectProxy;
- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)a3;
- (id)_extendedSynchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)allPaymentApplicationUsageSummaries;
- (id)allSelectedPaymentOffersForPassUniqueID:(id)a3;
- (id)approvedTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8;
- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8;
- (id)categoryVisualizationMagnitudesForPassUniqueID:(id)a3;
- (id)defaultExpressFelicaTransitPassIdentifier;
- (id)defaultExpressTransitPassIdentifier;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)a3 calendar:(id)a4 type:(unint64_t)a5 limit:(int64_t)a6;
- (id)entitlementsForPassIdentifier:(id)a3;
- (id)expressPassConfigurationWithPassUniqueIdentifier:(id)a3;
- (id)expressPassConfigurations;
- (id)expressPassConfigurationsWithCardType:(int64_t)a3;
- (id)expressPassInformationForMode:(id)a3;
- (id)expressPassesInformation;
- (id)expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)a3;
- (id)messagesAppLaunchTokenForPassWithUniqueIdentifier:(id)a3;
- (id)paymentOffersCatalog;
- (id)paymentRewardsBalanceWithIdentifier:(id)a3;
- (id)paymentRewardsBalancesWithPassUniqueIdentifier:(id)a3;
- (id)paymentRewardsRedemptionForPaymentHash:(id)a3;
- (id)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3 limit:(int64_t)a4;
- (id)spendingCategoryTransactionGroupsForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4;
- (id)transactionCountForRequest:(id)a3;
- (id)transactionsAppLaunchTokenForPassWithUniqueIdentifier:(id)a3;
- (id)transactionsForRequest:(id)a3;
- (id)updateSelectedPaymentOffer:(id)a3 forPassUniqueID:(id)a4;
- (int64_t)virtualCardCountWithActiveVPAN;
- (unint64_t)activeAutoFillCardCount;
- (unint64_t)rangingSuspensionReasonForAppletSubcredential:(id)a3 forPaymentApplicationID:(id)a4;
- (unint64_t)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5;
- (void)_accessDelegate:(id)a3;
- (void)_submitVerificationCode:(id)a3 verificationData:(id)a4 forDPANIdentifier:(id)a5 usingSynchronousProxy:(BOOL)a6 completion:(id)a7;
- (void)_updateForceConnectionOnResume;
- (void)acceptCarKeyShareForMessage:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3;
- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)addPendingProvisioning:(id)a3;
- (void)addPendingProvisionings:(id)a3 completion:(id)a4;
- (void)addPlaceholderPassWithConfiguration:(id)a3 completion:(id)a4;
- (void)addRemoteDevicePendingProvisioningReceipt:(id)a3;
- (void)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 completion:(id)a4;
- (void)ambiguousTransactionWithServiceIdentifier:(id)a3 completion:(id)a4;
- (void)applicationMessagesWithCompletion:(id)a3;
- (void)approvedTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9;
- (void)archiveMessageWithIdentifier:(id)a3;
- (void)augmentedProductForInstallmentConfiguration:(id)a3 experimentDetails:(id)a4 withCompletion:(id)a5;
- (void)balanceReminderThresholdForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)cacheSharingMessageFromMailboxAddress:(id)a3 message:(id)a4;
- (void)cachedFPANCredentialsWithCompletion:(id)a3;
- (void)canAcceptInvitation:(id)a3 withCompletion:(id)a4;
- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)a3 balanceIdentifiers:(id)a4 completion:(id)a5;
- (void)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8 completion:(id)a9;
- (void)categoryVisualizationMagnitudesForPassUniqueID:(id)a3 completion:(id)a4;
- (void)changePasscodeFrom:(id)a3 toPasscode:(id)a4 completion:(id)a5;
- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)a3;
- (void)checkAllAuxiliaryRegistrationRequirements;
- (void)checkInvitationStatusForMailboxAddress:(id)a3 completion:(id)a4;
- (void)clearFPANCardImportNotificationHistoryWithCompletion:(id)a3;
- (void)clearFPANCardImportNotificationsWithCompletion:(id)a3;
- (void)clearProvisioningSupportDataOfType:(unint64_t)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)commutePlanReminderForCommputePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withCompletion:(id)a4;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withReferenceExpressState:(id)a4 completion:(id)a5;
- (void)conflictingExpressPassIdentifiersForPassInformation:(id)a3 withCompletion:(id)a4;
- (void)conflictingExpressPassIdentifiersForPassInformation:(id)a3 withReferenceExpressState:(id)a4 completion:(id)a5;
- (void)consistencyCheck;
- (void)createShareForPartialShareInvitation:(id)a3 authorization:(id)a4 completion:(id)a5;
- (void)createShareInvitationForPartialShareInvitation:(id)a3 existingTransportIdentifier:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)createSingleUseShareURLWithMessage:(id)a3 timeToLive:(unint64_t)a4 completion:(id)a5;
- (void)credential:(id)a3 forPaymentApplication:(id)a4 didUpdateRangingSuspensionReasons:(unint64_t)a5;
- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7;
- (void)credentialWithIdentifier:(id)a3 completion:(id)a4;
- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)a3;
- (void)currentSecureElementSnapshot:(id)a3;
- (void)dealloc;
- (void)defaultPaymentPassIngestionSpecificIdentifier:(id)a3;
- (void)deleteAllTransactionsForTransactionSourceIdentifiers:(id)a3;
- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4;
- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)a3 completion:(id)a4;
- (void)deleteMessagesForPaymentPassWithUniqueIdentifier:(id)a3;
- (void)deletePaymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3;
- (void)deletePaymentTransactionWithIdentifier:(id)a3;
- (void)deletePaymentTransactionsWithIdentifiers:(id)a3;
- (void)deleteReservation:(id)a3 completion:(id)a4;
- (void)deleteSharingMessage:(id)a3;
- (void)deleteTransactionReceiptWithUniqueID:(id)a3 completion:(id)a4;
- (void)didInteractWithConfirmationRecordFollowupMessage:(id)a3;
- (void)didReceiveActivationCodeFailureForCredentialIdentifier:(id)a3 attemptsRemaining:(unint64_t)a4 completion:(id)a5;
- (void)didReceiveDeviceSharingCapabilities:(id)a3 forHandle:(id)a4;
- (void)didReceivePendingProvisioningUpdate:(id)a3;
- (void)didRecieveCredentialInvitation:(id)a3;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3;
- (void)didUpdateApplicationMessages:(id)a3;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)displayTapToRadarAlertForRequest:(id)a3 completion:(id)a4;
- (void)displayableEntitlementsForPassIdentifier:(id)a3 completion:(id)a4;
- (void)displayableSharesForPassIdentifier:(id)a3 completion:(id)a4;
- (void)downloadAllPaymentPasses;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3;
- (void)familyMembersIgnoringCache:(BOOL)a3 completion:(id)a4;
- (void)featureApplicationAdded:(id)a3;
- (void)featureApplicationChanged:(id)a3;
- (void)featureApplicationRemoved:(id)a3;
- (void)featureApplicationWithIdentifier:(id)a3 completion:(id)a4;
- (void)featureApplicationWithReferenceIdentifier:(id)a3 completion:(id)a4;
- (void)featureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)featureApplicationsForAccountUserInvitationWithCompletion:(id)a3;
- (void)featureApplicationsForProvisioningWithCompletion:(id)a3;
- (void)featureApplicationsWithCompletion:(id)a3;
- (void)fetchBarcodesForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5;
- (void)forceTransmissionOfUserActivitySignals;
- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6;
- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6;
- (void)generateUnderlyingKeyReportWithCompletion:(id)a3;
- (void)handleStandaloneTransaction:(id)a3;
- (void)hasActiveExternallySharedPasses:(id)a3;
- (void)hasEligibleCriteriaForPassUniqueID:(id)a3 completion:(id)a4;
- (void)hasEligibleCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4 completion:(id)a5;
- (void)hasTransactionsForTransactionSourceIdentifiers:(id)a3 completion:(id)a4;
- (void)hasTransactionsRelatedToTransaction:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5;
- (void)initializeSecureElement:(id)a3;
- (void)initializeSecureElementIfNecessaryWithCompletion:(id)a3;
- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)insertOrUpdatePaymentOfferConfirmationRecord:(id)a3 completion:(id)a4;
- (void)insertOrUpdatePaymentRewardsRedemption:(id)a3 withPassUniqueIdentifier:(id)a4;
- (void)insertOrUpdatePaymentTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 completion:(id)a6;
- (void)insertOrUpdatePaymentTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 completion:(id)a5;
- (void)insertOrUpdateValueAddedServiceTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentTransaction:(id)a5 completion:(id)a6;
- (void)insertUserLegalAgreement:(id)a3;
- (void)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)a3 accountIdentifier:(id)a4 redeemed:(BOOL)a5 withRedemptionType:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 completion:(id)a9;
- (void)installmentPlansWithTransactionReferennceIdentifier:(id)a3 completion:(id)a4;
- (void)installmentTransactionsForInstallmentPlanIdentifier:(id)a3 completion:(id)a4;
- (void)invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)isPassExpressWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)issuerInstallmentTransactionsForPassUniqueID:(id)a3 completion:(id)a4;
- (void)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)a3 paymentHashes:(id)a4 completion:(id)a5;
- (void)logoImageDataForURL:(id)a3 completion:(id)a4;
- (void)mapsMerchantWithIdentifier:(unint64_t)a3 resultProviderIdentifier:(int)a4 completion:(id)a5;
- (void)mapsMerchantsWithCompletion:(id)a3;
- (void)markAuthenticationCompleteForTransactionIdentifier:(id)a3 completion:(id)a4;
- (void)matchingInvitationOnDevice:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5;
- (void)memberTypeForCurrentUserWithCompletion:(id)a3;
- (void)merchantForPassUniqueIdentifier:(id)a3 withAuxiliaryPassInformationItem:(id)a4 completion:(id)a5;
- (void)messagesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)notifyForFPANCardImportConsentWithCompletion:(id)a3;
- (void)notifyForFPANCardImportWithCredentials:(id)a3 withCompletion:(id)a4;
- (void)passOwnershipTokenWithIdentifier:(id)a3 completion:(id)a4;
- (void)passSharesForCredentialIdentifier:(id)a3 completion:(id)a4;
- (void)passUniqueIdentifierForTransactionWithIdentifier:(id)a3 completion:(id)a4;
- (void)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 completion:(id)a5;
- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)a3 completion:(id)a4;
- (void)passWithUniqueIdentifier:(id)a3 didReceiveValueAddedServiceTransaction:(id)a4;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)passbookUIServiceDidLaunch;
- (void)paymentDeviceDidEnterFieldWithProperties:(id)a3;
- (void)paymentDeviceDidExitField;
- (void)paymentOfferCatalogChangedFromPush:(id)a3;
- (void)paymentOfferConfirmationRecordChanged:(id)a3 forTransactionWithPaymentHash:(id)a4;
- (void)paymentOfferConfirmationRecordForTransactionWithPaymentHash:(id)a3 completion:(id)a4;
- (void)paymentOfferCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4 completion:(id)a5;
- (void)paymentOffersForCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 sessionIdentifier:(id)a5 sessionDetails:(id)a6 updateReason:(unint64_t)a7 fraudAssessment:(id)a8 completion:(id)a9;
- (void)paymentOffersMerchandisingForSessionDetails:(id)a3 merchandisingIdentifiers:(id)a4 needsProvisioningMerchandisingIdentifiers:(id)a5 completion:(id)a6;
- (void)paymentPassForVirtualCard:(id)a3 completion:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveMessage:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateCategoryVisualizationWithStyle:(int64_t)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3 paymentHashes:(id)a4 completion:(id)a5;
- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6;
- (void)pendingFamilyMembersIgnoringCache:(BOOL)a3 completion:(id)a4;
- (void)pendingShareActivationForShareIdentifier:(id)a3 completion:(id)a4;
- (void)pendingTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9;
- (void)performAfterEligibilityFinishes:(id)a3;
- (void)performDeviceCheckInWithCompletion:(id)a3;
- (void)performProductActionRequest:(id)a3 completion:(id)a4;
- (void)photosForFamilyMembersWithDSIDs:(id)a3 completion:(id)a4;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)prepareIdentityProvisioningForTargetDeviceIdentifier:(id)a3 completion:(id)a4;
- (void)prepareProvisioningTarget:(id)a3 checkFamilyCircle:(BOOL)a4 completion:(id)a5;
- (void)prewarmCreateShareForPassIdentifier:(id)a3 completion:(id)a4;
- (void)processSharingCLICommands:(id)a3 completion:(id)a4;
- (void)processTransitTransactionEventWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 expressTransactionState:(id)a7;
- (void)processedAuthenticationMechanism:(unint64_t)a3 forTransactionIdentifier:(id)a4 completion:(id)a5;
- (void)productsWithCompletion:(id)a3;
- (void)productsWithRequest:(id)a3 completion:(id)a4;
- (void)provideEncryptedPushProvisioningTarget:(id)a3 sharingInstanceIdentifier:(id)a4 completion:(id)a5;
- (void)provisionIdentityPassWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 completion:(id)a7;
- (void)provisionIdentityPassWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8;
- (void)pushProvisioningSharingIdentifiers:(id)a3;
- (void)queueIdentityPassProvisioningWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 supplementalData:(id)a6 completion:(id)a7;
- (void)rangingSuspensionReasonForAppletSubcredential:(id)a3 forPaymentApplicationID:(id)a4 completion:(id)a5;
- (void)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 completion:(id)a6;
- (void)recomputeCategoryVisualizationMangitudesForPassUniqueID:(id)a3 style:(int64_t)a4;
- (void)recordPassTransactionActivitySummaryForPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 presentmentType:(unint64_t)a5;
- (void)recordPaymentApplicationUsageForPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4;
- (void)redeemEncryptedProvisioningTarget:(id)a3 completion:(id)a4;
- (void)redeemPaymentShareableCredential:(id)a3 completion:(id)a4;
- (void)redeemProvisioningSharingIdentifier:(id)a3 completion:(id)a4;
- (void)refreshMerchantTokenMetadataWithCompletion:(id)a3;
- (void)regenerateVPANCardCredentialsForVirtualCard:(id)a3 authorization:(id)a4 completion:(id)a5;
- (void)regionsMatchingName:(id)a3 types:(id)a4 completion:(id)a5;
- (void)regionsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)registerAuxiliaryCapabilityForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5;
- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)registerObserver:(id)a3;
- (void)rejectShareForMailboxAddress:(id)a3;
- (void)relinquishInvitation:(id)a3 completion:(id)a4;
- (void)remoteService:(id)a3 didEstablishConnection:(id)a4;
- (void)remoteService:(id)a3 didInterruptConnection:(id)a4;
- (void)removeApplicationMessageWithKey:(id)a3;
- (void)removeApplicationMessagesWithKeys:(id)a3 completion:(id)a4;
- (void)removeExpressPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)removeExpressPassWithUniqueIdentifierV2:(id)a3 completion:(id)a4;
- (void)removeExpressPassesWithCardType:(int64_t)a3 completion:(id)a4;
- (void)removeMapsDataForTransactionWithIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4 issueReportIdentifier:(id)a5 completion:(id)a6;
- (void)removePaymentOffersCatalog;
- (void)removePendingProvisioningOfType:(id)a3 withUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)removeProductsCache;
- (void)removeSelectedPaymentOffer:(id)a3 associatedWithPassUniqueID:(id)a4;
- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)a3 completion:(id)a4;
- (void)requestNotificationAuthorizationIfNecessaryWithCompletion:(id)a3;
- (void)requestNotificationAuthorizationWithCompletion:(id)a3;
- (void)requiresUpgradedPasscodeWithCompletion:(id)a3;
- (void)reserveStorageForAppletTypes:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)a3 authorization:(id)a4 sessionExchangeToken:(id)a5 withCompletion:(id)a6;
- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)a3 authorization:(id)a4 withCompletion:(id)a5;
- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5;
- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 withCompletion:(id)a4;
- (void)retrievePendingProvisioningOfType:(id)a3 withUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)retrievePendingProvisioningsWithType:(id)a3 completion:(id)a4;
- (void)retrieveShareInvitationForMailboxAddress:(id)a3 completion:(id)a4;
- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)revokeCredentialsWithReaderIdentifiers:(id)a3 completion:(id)a4;
- (void)revokeMerchantTokenWithIdentifier:(id)a3 completion:(id)a4;
- (void)revokeShareForPassIdentifier:(id)a3 share:(id)a4 shouldCascade:(BOOL)a5 completion:(id)a6;
- (void)revokeSharesForPassIdentifier:(id)a3 shares:(id)a4 shouldCascade:(BOOL)a5 completion:(id)a6;
- (void)sanitizeExpressPasses;
- (void)saveProvisioningSupportData:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)scheduleApplePayDemoActivitySignal;
- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)a3;
- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)a3;
- (void)scheduleSetupReminders;
- (void)selectedPaymentOfferRemoved:(id)a3 passUniqueID:(id)a4;
- (void)selectedPaymentOfferUpdated:(id)a3 passUniqueID:(id)a4;
- (void)sendAllPassTransactions;
- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)a3 completion:(id)a4;
- (void)sendSharingMessageTo:(id)a3 message:(id)a4 completion:(id)a5;
- (void)setAccountAttestationAnonymizationSalt:(id)a3 withCompletion:(id)a4;
- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setDefaultExpressFelicaTransitPassIdentifier:(id)a3 withCredential:(id)a4 completion:(id)a5;
- (void)setDefaultExpressTransitPassIdentifier:(id)a3 withCredential:(id)a4 completion:(id)a5;
- (void)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)setDefaultPaymentPassUniqueIdentifier:(id)a3;
- (void)setDeviceCheckInContextBuildVersion:(id)a3 outstandingAction:(int64_t)a4 forRegion:(id)a5;
- (void)setDeviceUpgradeTasksContextBuildVersion:(id)a3 upgradeTaskVersion:(int64_t)a4 retryCount:(int64_t)a5;
- (void)setDoubleClickAllowed:(BOOL)a3;
- (void)setExpressWithPassConfiguration:(id)a3 credential:(id)a4 handler:(id)a5;
- (void)setExpressWithPassInformation:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)setExpressWithPassInformation:(id)a3 credential:(id)a4 handler:(id)a5;
- (void)setNFCPayloadState:(unint64_t)a3 forPass:(id)a4;
- (void)setPaymentApplicationRangingSuspensionReason:(unint64_t)a3 forPassUniqueIdentifier:(id)a4;
- (void)setSharedPaymentWebServiceContext:(id)a3;
- (void)sharedPaymentWebServiceContextWithCompletion:(id)a3;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3;
- (void)sharingCapabilitiesForPassIdentifier:(id)a3 outHasShares:(BOOL *)a4 outHasShareableEntitlements:(BOOL *)a5;
- (void)sharingInvitationWasInvalidated:(id)a3 withCredentialIdentifier:(id)a4 error:(id)a5 completion:(id)a6;
- (void)simulateDefaultExpressTransitPassIdentifier:(id)a3 forExpressMode:(id)a4;
- (void)simulateDeviceAccessory;
- (void)simulateEnableBiometricsForPass:(id)a3;
- (void)simulateExpressTransactionForPassUniqueIdentifier:(id)a3;
- (void)simulateNotificationOfType:(unint64_t)a3 userInfo:(id)a4;
- (void)simulatePaymentPushTopic:(id)a3 payload:(id)a4;
- (void)simulateSecureEvent:(id)a3;
- (void)simulateVehicleInitiatedPairingWithTCIs:(id)a3 brandCode:(int64_t)a4;
- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4;
- (void)statusForShareableCredentials:(id)a3 completion:(id)a4;
- (void)storePassOwnershipToken:(id)a3 withIdentifier:(id)a4;
- (void)storeTransactionReceiptData:(id)a3 completion:(id)a4;
- (void)subcredentialInvitationsWithCompletion:(id)a3;
- (void)submitApplyRequest:(id)a3 completion:(id)a4;
- (void)submitBarcodePaymentEvent:(id)a3 forPassUniqueIdentifier:(id)a4 sessionExchangeToken:(id)a5 withCompletion:(id)a6;
- (void)submitBarcodePaymentEvent:(id)a3 forPassUniqueIdentifier:(id)a4 withCompletion:(id)a5;
- (void)submitDeleteRequest:(id)a3 completion:(id)a4;
- (void)submitDocumentRequest:(id)a3 completion:(id)a4;
- (void)submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 completion:(id)a5;
- (void)submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 sessionExchangeToken:(id)a5 completion:(id)a6;
- (void)submitTermsRequest:(id)a3 completion:(id)a4;
- (void)submitTransactionAnswerForTransaction:(id)a3 questionType:(unint64_t)a4 answer:(id)a5 completion:(id)a6;
- (void)submitTransactionSignatureForTransactionIdentifier:(id)a3 sessionExchangeToken:(id)a4 completion:(id)a5;
- (void)submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 completion:(id)a5;
- (void)submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 sessionExchangeToken:(id)a5 completion:(id)a6;
- (void)submitVerificationRequest:(id)a3 completion:(id)a4;
- (void)suggestPaymentFPANCredentialImport:(id)a3 withCompletion:(id)a4;
- (void)tappedApplicationMessageWithKey:(id)a3;
- (void)tilesForPassWithUniqueIdentifier:(id)a3 context:(int64_t)a4 completion:(id)a5;
- (void)transactionBatch:(id)a3 moreComing:(BOOL)a4 readyForNextBatch:(id)a5;
- (void)transactionCountByPeriodForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4 includePurchaseTotal:(BOOL)a5 completion:(id)a6;
- (void)transactionCountForRequest:(id)a3 completion:(id)a4;
- (void)transactionReceiptForTransactionWithIdentifier:(id)a3 updateIfNecessary:(BOOL)a4 completion:(id)a5;
- (void)transactionReceiptWithUniqueID:(id)a3 completion:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)transactionSourceIdentifiersForPassUniqueIdentifiers:(id)a3 completion:(id)a4;
- (void)transactionSourceTypeForTransactionSourceIdentifier:(id)a3 completion:(id)a4;
- (void)transactionTagsForTransactionWithIdentifier:(id)a3 completion:(id)a4;
- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4;
- (void)transactionWithReferenceIdentifier:(id)a3 completion:(id)a4;
- (void)transactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 completion:(id)a5;
- (void)transactionWithTransactionIdentifier:(id)a3 completion:(id)a4;
- (void)transactionsForPredicate:(id)a3 limit:(int64_t)a4 completion:(id)a5;
- (void)transactionsForRequest:(id)a3 completion:(id)a4;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 matchingMerchant:(id)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 limit:(int64_t)a7 completion:(id)a8;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withMerchantCategory:(int64_t)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 limit:(int64_t)a9 completion:(id)a10;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withPeerPaymentCounterpartHandles:(id)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 limit:(int64_t)a7 completion:(id)a8;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 limit:(int64_t)a6 completion:(id)a7;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionType:(int64_t)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 limit:(int64_t)a9 completion:(id)a10;
- (void)transactionsRelatedToTransaction:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5;
- (void)transactionsRequiringReviewForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)transactionsTotalAmountForRequest:(id)a3 completion:(id)a4;
- (void)transactionsWithFullPaymentHashes:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5;
- (void)transactionsWithTransactionIdentifiers:(id)a3 completion:(id)a4;
- (void)transactionsWithTransactionSource:(unint64_t)a3 withBackingData:(unint64_t)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
- (void)unscheduleDeviceCheckIn;
- (void)unscheduleDeviceUpgradeTaskActivity;
- (void)updateAllMapsBrandAndMerchantDataWithCompletion:(id)a3;
- (void)updateCardholderNameFromSafari:(id)a3 forVirtualCard:(id)a4 completion:(id)a5;
- (void)updateDateLastUsedBySafari:(id)a3 forVirtualCard:(id)a4 completion:(id)a5;
- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updateFeatureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)updateFinanceKitApplicationMessages;
- (void)updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updateNotificationForProductIdentifier:(id)a3 configuration:(id)a4 localizedNotificationTitle:(id)a5 localizedNotificationMessage:(id)a6 completion:(id)a7;
- (void)updatePaymentOfferCatalogVersion:(int64_t)a3 shouldRemove:(BOOL)a4;
- (void)updatePaymentOfferConfirmationRecordProcessEvents:(unint64_t)a3 forPaymentHash:(id)a4 successfully:(BOOL)a5 completion:(id)a6;
- (void)updatePaymentOffersCatalogWithReason:(unint64_t)a3 completion:(id)a4;
- (void)updatePaymentRewardsBalancesWithPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5;
- (void)updatePreferredCategory:(int64_t)a3 forTransactionsWithIdentifiers:(id)a4 paymentPass:(id)a5 completion:(id)a6;
- (void)updateShareForPassIdentifier:(id)a3 share:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)updateWalletBadgeCount;
- (void)userNotificationActionPerformed:(unint64_t)a3 applicationMessageContentIdentifier:(id)a4 completion:(id)a5;
- (void)userNotificationActionPerformed:(unint64_t)a3 notificationIdentifier:(id)a4 completion:(id)a5;
- (void)userRejectedSavingFPANCardWithDescriptor:(id)a3 credential:(id)a4 options:(unint64_t)a5 permanent:(BOOL)a6;
- (void)valueAddedServiceTransactionWithIdentifier:(id)a3 completion:(id)a4;
- (void)valueAddedServiceTransactionsForPassWithUniqueIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5;
- (void)valueAddedServiceTransactionsForPaymentTransaction:(id)a3 limit:(int64_t)a4 completion:(id)a5;
- (void)virtualCardsWithActiveVPAN:(id)a3;
- (void)vpanCardCredentialsForVirtualCard:(id)a3 authorization:(id)a4 merchantHost:(id)a5 completion:(id)a6;
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

- (void)checkInvitationStatusForMailboxAddress:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PKPaymentService_Sharing__checkInvitationStatusForMailboxAddress_completion___block_invoke_14;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 checkInvitationStatusForMailboxAddress:v9 completion:v13];
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

- (void)retrieveShareInvitationForMailboxAddress:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__retrieveShareInvitationForMailboxAddress_completion___block_invoke_16;
  v13[3] = &unk_1E79C97A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 retrieveShareInvitationForMailboxAddress:v9 completion:v13];
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

- (void)relinquishInvitation:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentService_Sharing__relinquishInvitation_completion___block_invoke_18;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 relinquishInvitation:v9 completion:v13];
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

- (void)prewarmCreateShareForPassIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKPaymentService_Sharing__prewarmCreateShareForPassIdentifier_completion___block_invoke_20;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 prewarmCreateShareForPassIdentifier:v9 completion:v13];
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

- (void)createShareForPartialShareInvitation:(id)a3 authorization:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PKPaymentService_Sharing__createShareForPartialShareInvitation_authorization_completion___block_invoke_21;
  v16[3] = &unk_1E79C97C8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 createShareForPartialShareInvitation:v12 authorization:v11 completion:v16];
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

- (void)createShareInvitationForPartialShareInvitation:(id)a3 existingTransportIdentifier:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = v11;
  aBlock[4] = self;
  v22 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __129__PKPaymentService_Sharing__createShareInvitationForPartialShareInvitation_existingTransportIdentifier_authorization_completion___block_invoke_23;
  v19[3] = &unk_1E79C97F0;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 createShareInvitationForPartialShareInvitation:v15 existingTransportIdentifier:v14 authorization:v13 completion:v19];
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

- (void)acceptCarKeyShareForMessage:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKPaymentService_Sharing__acceptCarKeyShareForMessage_activationCode_completion___block_invoke_25;
  v16[3] = &unk_1E79C9818;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 acceptCarKeyShareForMessage:v12 activationCode:v11 completion:v16];
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

- (void)cacheSharingMessageFromMailboxAddress:(id)a3 message:(id)a4
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __75__PKPaymentService_Sharing__cacheSharingMessageFromMailboxAddress_message___block_invoke;
  v13 = &unk_1E79C9840;
  v14 = self;
  v15 = a2;
  v6 = a4;
  v7 = a3;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v8, v10, v11, v12, v13, v14, v15];
  [v9 cacheSharingMessageFromMailboxAddress:v7 message:v6];
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

- (void)deleteSharingMessage:(id)a3
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__PKPaymentService_Sharing__deleteSharingMessage___block_invoke;
  v10 = &unk_1E79C9840;
  v11 = self;
  v12 = a2;
  v4 = a3;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, v11, v12];
  [v6 deleteSharingMessage:v4];
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

- (void)createSingleUseShareURLWithMessage:(id)a3 timeToLive:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPaymentService_Sharing__createSingleUseShareURLWithMessage_timeToLive_completion___block_invoke_27;
  v15[3] = &unk_1E79C9868;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 createSingleUseShareURLWithMessage:v11 timeToLive:a4 completion:v15];
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

- (void)updateShareForPassIdentifier:(id)a3 share:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = v11;
  aBlock[4] = self;
  v22 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__PKPaymentService_Sharing__updateShareForPassIdentifier_share_authorization_completion___block_invoke_29;
  v19[3] = &unk_1E79C4A68;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 updateShareForPassIdentifier:v15 share:v14 authorization:v13 completion:v19];
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

- (void)revokeShareForPassIdentifier:(id)a3 share:(id)a4 shouldCascade:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v22 = a2;
  v12 = v11;
  aBlock[4] = self;
  v21 = v12;
  v13 = a4;
  v14 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKPaymentService_Sharing__revokeShareForPassIdentifier_share_shouldCascade_completion___block_invoke_30;
  v18[3] = &unk_1E79C4A68;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 revokeShareForPassIdentifier:v14 share:v13 shouldCascade:v6 completion:v18];
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

- (void)revokeSharesForPassIdentifier:(id)a3 shares:(id)a4 shouldCascade:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v22 = a2;
  v12 = v11;
  aBlock[4] = self;
  v21 = v12;
  v13 = a4;
  v14 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PKPaymentService_Sharing__revokeSharesForPassIdentifier_shares_shouldCascade_completion___block_invoke_31;
  v18[3] = &unk_1E79C4A68;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 revokeSharesForPassIdentifier:v14 shares:v13 shouldCascade:v6 completion:v18];
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

- (void)rejectShareForMailboxAddress:(id)a3
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __58__PKPaymentService_Sharing__rejectShareForMailboxAddress___block_invoke;
  v10 = &unk_1E79C9840;
  v11 = self;
  v12 = a2;
  v4 = a3;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, v11, v12];
  [v6 rejectShareForMailboxAddress:v4];
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

- (id)entitlementsForPassIdentifier:(id)a3
{
  v5 = a3;
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
  [v7 usingSynchronousProxy:1 entitlementsForPassIdentifier:v5 completion:v10];
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

- (void)hasActiveExternallySharedPasses:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_Sharing__hasActiveExternallySharedPasses___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = v5;
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

- (void)displayableSharesForPassIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKPaymentService_Sharing__displayableSharesForPassIdentifier_completion___block_invoke_35;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 displayableSharesForPassIdentifier:v9 completion:v13];
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

- (void)sharingCapabilitiesForPassIdentifier:(id)a3 outHasShares:(BOOL *)a4 outHasShareableEntitlements:(BOOL *)a5
{
  v9 = a3;
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
  [v11 sharingCapabilitiesForPassIdentifier:v9 completion:v12];
  if (a4)
  {
    *a4 = *(v18 + 24);
  }

  if (a5)
  {
    *a5 = *(v14 + 24);
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

- (void)displayableEntitlementsForPassIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__displayableEntitlementsForPassIdentifier_completion___block_invoke_38;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 displayableEntitlementsForPassIdentifier:v9 completion:v13];
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

- (void)sendSharingMessageTo:(id)a3 message:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentService_Sharing__sendSharingMessageTo_message_completion___block_invoke_39;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 sendSharingMessageTo:v12 message:v11 completion:v16];
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

- (void)didReceiveActivationCodeFailureForCredentialIdentifier:(id)a3 attemptsRemaining:(unint64_t)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)pendingShareActivationForShareIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_Sharing__pendingShareActivationForShareIdentifier_completion___block_invoke_40;
  v13[3] = &unk_1E79C98D8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 pendingShareActivationForShareIdentifier:v9 completion:v13];
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

- (void)processSharingCLICommands:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_Sharing__processSharingCLICommands_completion___block_invoke_45;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 processSharingCLICommands:v9 completion:v13];
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

- (void)updatePaymentOffersCatalogWithReason:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_PaymentOffers__updatePaymentOffersCatalogWithReason_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = v7;
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
  [v10 updatePaymentOffersCatalogWithReason:a3 completion:v12];
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

- (void)updatePaymentOfferCatalogVersion:(int64_t)a3 shouldRemove:(BOOL)a4
{
  v4 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKPaymentService_PaymentOffers__updatePaymentOfferCatalogVersion_shouldRemove___block_invoke;
  v9[3] = &unk_1E79C9840;
  v9[4] = self;
  v9[5] = a2;
  v7 = _Block_copy(v9);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v7];
  [v8 updatePaymentOfferCatalogVersion:a3 shouldRemove:v4];
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

- (void)paymentOffersForCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 sessionIdentifier:(id)a5 sessionDetails:(id)a6 updateReason:(unint64_t)a7 fraudAssessment:(id)a8 completion:(id)a9
{
  v17 = a9;
  v18 = v17;
  if (v17)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke;
    aBlock[3] = &unk_1E79C9778;
    v32 = a2;
    v19 = v17;
    aBlock[4] = self;
    v31 = v19;
    v20 = a8;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    v26 = a7;
    v24 = a3;
    v27 = _Block_copy(aBlock);
    v25 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v27];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __163__PKPaymentService_PaymentOffers__paymentOffersForCriteriaIdentifier_selectedPassDetails_sessionIdentifier_sessionDetails_updateReason_fraudAssessment_completion___block_invoke_17;
    v28[3] = &unk_1E79C9BA0;
    v28[4] = self;
    v29 = v19;
    [v25 paymentOffersForCriteriaIdentifier:v24 selectedPassDetails:v23 sessionIdentifier:v22 sessionDetails:v21 updateReason:v26 fraudAssessment:v20 completion:v28];
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

- (void)issuerInstallmentTransactionsForPassUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_19;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 issuerInstallmentTransactionsForPassUniqueID:v9 completion:v13];
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

- (void)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)a3 paymentHashes:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __121__PKPaymentService_PaymentOffers__issuerInstallmentTransactionsForTransactionSourceIdentifiers_paymentHashes_completion___block_invoke_21;
  v16[3] = &unk_1E79C9BC8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 issuerInstallmentTransactionsForTransactionSourceIdentifiers:v12 paymentHashes:v11 completion:v16];
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

- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKPaymentService_PaymentOffers__deleteIssuerInstallmentTransactionsForPassUniqueID_completion___block_invoke_22;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteIssuerInstallmentTransactionsForPassUniqueID:v9 completion:v13];
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

- (void)insertOrUpdatePaymentOfferConfirmationRecord:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentService_PaymentOffers__insertOrUpdatePaymentOfferConfirmationRecord_completion___block_invoke_23;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertOrUpdatePaymentOfferConfirmationRecord:v9 completion:v13];
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

- (void)updatePaymentOfferConfirmationRecordProcessEvents:(unint64_t)a3 forPaymentHash:(id)a4 successfully:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v21 = a2;
  v12 = v11;
  aBlock[4] = self;
  v20 = v12;
  v13 = a4;
  v14 = _Block_copy(aBlock);
  v15 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __124__PKPaymentService_PaymentOffers__updatePaymentOfferConfirmationRecordProcessEvents_forPaymentHash_successfully_completion___block_invoke_24;
  v17[3] = &unk_1E79C9BF0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 updatePaymentOfferConfirmationRecordProcessEvents:a3 forPaymentHash:v13 successfully:v6 completion:v17];
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

- (void)paymentOfferConfirmationRecordForTransactionWithPaymentHash:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PKPaymentService_PaymentOffers__paymentOfferConfirmationRecordForTransactionWithPaymentHash_completion___block_invoke_26;
  v13[3] = &unk_1E79C9C18;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 paymentOfferConfirmationRecordForTransactionWithPaymentHash:v9 completion:v13];
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

- (id)allSelectedPaymentOffersForPassUniqueID:(id)a3
{
  v4 = a3;
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
  [v5 allSelectedPaymentOffersForPassUniqueID:v4 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)updateSelectedPaymentOffer:(id)a3 forPassUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v8 updateSelectedPaymentOffer:v6 forPassUniqueID:v7 completion:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)removeSelectedPaymentOffer:(id)a3 associatedWithPassUniqueID:(id)a4
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __89__PKPaymentService_PaymentOffers__removeSelectedPaymentOffer_associatedWithPassUniqueID___block_invoke;
  v13 = &unk_1E79C9840;
  v14 = self;
  v15 = a2;
  v6 = a4;
  v7 = a3;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v8, v10, v11, v12, v13, v14, v15];
  [v9 removeSelectedPaymentOffer:v7 associatedWithPassUniqueID:v6];
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

- (void)hasEligibleCriteriaForPassUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_completion___block_invoke_30;
  v13[3] = &unk_1E79C4888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 hasEligibleCriteriaForPassUniqueID:v9 completion:v13];
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

- (void)hasEligibleCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPaymentService_PaymentOffers__hasEligibleCriteriaForPassUniqueID_criteriaType_completion___block_invoke_32;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 hasEligibleCriteriaForPassUniqueID:v11 criteriaType:a4 completion:v15];
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

- (void)paymentOfferCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentService_PaymentOffers__paymentOfferCriteriaForPassUniqueID_criteriaType_completion___block_invoke_33;
  v15[3] = &unk_1E79C9C90;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 paymentOfferCriteriaForPassUniqueID:v11 criteriaType:a4 completion:v15];
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

- (void)didInteractWithConfirmationRecordFollowupMessage:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_PaymentOffers__didInteractWithConfirmationRecordFollowupMessage___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPaymentService_PaymentOffers__didInteractWithConfirmationRecordFollowupMessage___block_invoke_35;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 didInteractWithConfirmationRecordFollowupMessage:v4 completion:v7];
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

- (void)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3 paymentHashes:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__PKPaymentService_PaymentOffers__paymentRewardsRedemptionsForPassUniqueIdentifier_paymentHashes_completion___block_invoke_37;
  v16[3] = &unk_1E79C9BC8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 paymentRewardsRedemptionsForPassUniqueIdentifier:v12 paymentHashes:v11 completion:v16];
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

- (void)updatePaymentRewardsBalancesWithPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentService_PaymentOffers__updatePaymentRewardsBalancesWithPassUniqueIdentifier_completion___block_invoke_38;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updatePaymentRewardsBalancesWithPassUniqueIdentifier:v9 completion:v13];
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

- (void)updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__PKPaymentService_PaymentOffers__updatePaymentRewardsRedemptionsWithPassUniqueIdentifier_limit_completion___block_invoke_39;
  v15[3] = &unk_1E79C9BC8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:v11 limit:a4 completion:v15];
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

- (id)paymentRewardsBalanceWithIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 paymentRewardsBalanceWithIdentifier:v4 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)paymentRewardsBalancesWithPassUniqueIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 paymentRewardsBalancesWithPassUniqueIdentifier:v4 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)paymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3 limit:(int64_t)a4
{
  v6 = a3;
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
  [v7 paymentRewardsRedemptionsForPassUniqueIdentifier:v6 limit:a4 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)paymentRewardsRedemptionForPaymentHash:(id)a3
{
  v4 = a3;
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
  [v5 paymentRewardsRedemptionForPaymentHash:v4 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)insertOrUpdatePaymentRewardsRedemption:(id)a3 withPassUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__PKPaymentService_PaymentOffers__insertOrUpdatePaymentRewardsRedemption_withPassUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E79C4E28;
  v9[4] = self;
  [v8 insertOrUpdatePaymentRewardsRedemption:v7 withPassUniqueIdentifier:v6 completion:v9];
}

- (void)deletePaymentRewardsRedemptionsForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__PKPaymentService_PaymentOffers__deletePaymentRewardsRedemptionsForPassUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  [v5 deletePaymentRewardsRedemptionsForPassUniqueIdentifier:v4 completion:v6];
}

- (void)paymentOffersMerchandisingForSessionDetails:(id)a3 merchandisingIdentifiers:(id)a4 needsProvisioningMerchandisingIdentifiers:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v23 = a2;
  v12 = v11;
  aBlock[4] = self;
  v22 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __157__PKPaymentService_PaymentOffers__paymentOffersMerchandisingForSessionDetails_merchandisingIdentifiers_needsProvisioningMerchandisingIdentifiers_completion___block_invoke_42;
  v19[3] = &unk_1E79C9D08;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 paymentOffersMerchandisingForSessionDetails:v15 merchandisingIdentifiers:v14 needsProvisioningMerchandisingIdentifiers:v13 completion:v19];
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

- (void)provisionIdentityPassWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = v13;
  aBlock[4] = self;
  v25 = v14;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke_14;
  v22[3] = &unk_1E79CED90;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 provisionIdentityPassWithPassMetadata:v18 targetDeviceIdentifier:v17 credentialIdentifier:v16 attestations:v15 completion:v22];
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

- (void)provisionIdentityPassWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8
{
  v15 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v29 = a2;
  v16 = v15;
  aBlock[4] = self;
  v28 = v16;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = _Block_copy(aBlock);
  v23 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v22];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __153__PKPaymentService_Identity__provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke_16;
  v25[3] = &unk_1E79CED90;
  v25[4] = self;
  v26 = v16;
  v24 = v16;
  [v23 provisionIdentityPassWithPassMetadata:v21 targetDeviceIdentifier:v20 credentialIdentifier:v19 attestations:v18 supplementalData:v17 completion:v25];
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

- (void)queueIdentityPassProvisioningWithPassMetadata:(id)a3 targetDeviceIdentifier:(id)a4 credentialIdentifier:(id)a5 supplementalData:(id)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = v13;
  aBlock[4] = self;
  v25 = v14;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __148__PKPaymentService_Identity__queueIdentityPassProvisioningWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_supplementalData_completion___block_invoke_17;
  v22[3] = &unk_1E79C4860;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 queueIdentityPassProvisioningWithPassMetadata:v18 targetDeviceIdentifier:v17 credentialIdentifier:v16 supplementalData:v15 completion:v22];
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

- (void)prepareIdentityProvisioningForTargetDeviceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPaymentService_Identity__prepareIdentityProvisioningForTargetDeviceIdentifier_completion___block_invoke_18;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 prepareIdentityProvisioningForTargetDeviceIdentifier:v9 completion:v13];
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

- (void)updateNotificationForProductIdentifier:(id)a3 configuration:(id)a4 localizedNotificationTitle:(id)a5 localizedNotificationMessage:(id)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v26 = a2;
  v14 = v13;
  aBlock[4] = self;
  v25 = v14;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __150__PKPaymentService_Identity__updateNotificationForProductIdentifier_configuration_localizedNotificationTitle_localizedNotificationMessage_completion___block_invoke_19;
  v22[3] = &unk_1E79C4860;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 updateNotificationForProductIdentifier:v18 configuration:v17 localizedNotificationTitle:v16 localizedNotificationMessage:v15 completion:v22];
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

- (PKPaymentService)initWithDelegate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentService;
  v5 = [(PKPaymentService *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_lockObservers._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v6->_observers;
    v6->_observers = v7;

    [(PKPaymentService *)v6 registerObserver:v4];
    v6->_forceConnectionOnResume = v4 != 0;
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

- (void)remoteService:(id)a3 didEstablishConnection:(id)a4
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

- (void)remoteService:(id)a3 didInterruptConnection:(id)a4
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
    v3 = [(PKXPCService *)self->_remoteService remoteObjectProxy];
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E696A790];
    v6 = [(PKPaymentService *)self description];
    [v4 raise:v5 format:{@"%@ is not backed by an extended interface", v6}];

    v3 = 0;
  }

  return v3;
}

- (id)_extendedRemoteObjectProxyWithFailureHandler:(id)a3
{
  v4 = a3;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithFailureHandler:v4];
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

- (id)_extendedRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService remoteObjectProxyWithErrorHandler:v4];
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

- (id)_extendedSynchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if ([(PKPaymentService *)self _hasInterfaceOfType:1])
  {
    v5 = [(PKXPCService *)self->_remoteService synchronousRemoteObjectProxyWithErrorHandler:v4];
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

- (void)paymentDeviceDidEnterFieldWithProperties:(id)a3
{
  v4 = a3;
  self->_hasPaymentDeviceFieldProperties = v4 != 0;
  atomic_store(1u, &self->_cachedFieldPropertiesValid);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKPaymentService_paymentDeviceDidEnterFieldWithProperties___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PKPaymentService_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)didUpdateApplicationMessages:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PKPaymentService_didUpdateApplicationMessages___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKPaymentService_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
  v12[3] = &unk_1E79D1198;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
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

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentService_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentService_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPaymentService_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E79D11C0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)didReceivePendingProvisioningUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKPaymentService_didReceivePendingProvisioningUpdate___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPaymentService_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPaymentService_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v8[3] = &unk_1E79D11E8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKPaymentService_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  v8[3] = &unk_1E79D11E8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)passWithUniqueIdentifier:(id)a3 didReceiveValueAddedServiceTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKPaymentService_passWithUniqueIdentifier_didReceiveValueAddedServiceTransaction___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateCategoryVisualizationWithStyle:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKPaymentService_paymentPassWithUniqueIdentifier_didUpdateCategoryVisualizationWithStyle___block_invoke;
  v8[3] = &unk_1E79D1210;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)featureApplicationAdded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKPaymentService_featureApplicationAdded___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)featureApplicationRemoved:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPaymentService_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)featureApplicationChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPaymentService_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PKPaymentService_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)transactionBatch:(id)a3 moreComing:(BOOL)a4 readyForNextBatch:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentService_transactionBatch_moreComing_readyForNextBatch___block_invoke;
  v12[3] = &unk_1E79D1238;
  v15 = a4;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
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

- (void)didRecieveCredentialInvitation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v11 = [v10 invitation];
      v12 = [v11 isSameInvitationAsInvitation:v4];

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
    [v13 invokeCompletionWithInvitation:v4 error:0];
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
  v16 = v4;
  v14 = v4;
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

- (void)credential:(id)a3 forPaymentApplication:(id)a4 didUpdateRangingSuspensionReasons:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__PKPaymentService_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke;
  v12[3] = &unk_1E79D1198;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
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

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentService_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentService_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)didReceiveDeviceSharingCapabilities:(id)a3 forHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKPaymentService_didReceiveDeviceSharingCapabilities_forHandle___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)displayTapToRadarAlertForRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke;
  v14[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = v7;
  v14[4] = self;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentService_displayTapToRadarAlertForRequest_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 displayTapToRadarAlertForRequest:v9 completion:v12];
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

- (void)selectedPaymentOfferUpdated:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPaymentService_selectedPaymentOfferUpdated_passUniqueID___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)selectedPaymentOfferRemoved:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPaymentService_selectedPaymentOfferRemoved_passUniqueID___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentOfferConfirmationRecordChanged:(id)a3 forTransactionWithPaymentHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentService_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke;
  v10[3] = &unk_1E79D1170;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentOfferCatalogChangedFromPush:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPaymentService_paymentOfferCatalogChangedFromPush___block_invoke;
  v6[3] = &unk_1E79D1148;
  v7 = v4;
  v5 = v4;
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

- (void)setDoubleClickAllowed:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 setDoubleClickAllowed:v3 completion:&__block_literal_global_133];
}

- (id)transactionsAppLaunchTokenForPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 transactionsAppLaunchTokenForPassWithUniqueIdentifier:v4 handler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)messagesAppLaunchTokenForPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 messagesAppLaunchTokenForPassWithUniqueIdentifier:v4 handler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_submitVerificationCode:(id)a3 verificationData:(id)a4 forDPANIdentifier:(id)a5 usingSynchronousProxy:(BOOL)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__PKPaymentService__submitVerificationCode_verificationData_forDPANIdentifier_usingSynchronousProxy_completion___block_invoke;
  aBlock[3] = &unk_1E79D1260;
  v26 = a2;
  v14 = v13;
  v25 = v14;
  v27 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = _Block_copy(aBlock);
  if (a6)
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
  v23 = a6;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 submitVerificationCode:v17 verificationData:v16 forDPANIdentifier:v15 handler:v21];
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

- (void)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 completion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = v11;
  v20[4] = self;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__PKPaymentService_peerPaymentCounterpartHandlesForTransactionSourceIdentifier_startDate_endDate_completion___block_invoke_2;
  v18[3] = &unk_1E79C4B08;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 peerPaymentCounterpartHandlesForTransactionSourceIdentifier:v15 startDate:v14 endDate:v13 completion:v18];
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

- (void)hasTransactionsForTransactionSourceIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke;
  v14[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = v7;
  v14[4] = self;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKPaymentService_hasTransactionsForTransactionSourceIdentifiers_completion___block_invoke_2;
  v12[3] = &unk_1E79C4888;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 hasTransactionsForTransactionSourceIdentifiers:v9 completion:v12];
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

- (void)insertOrUpdatePaymentTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 completion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = v11;
  v20[4] = self;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__PKPaymentService_insertOrUpdatePaymentTransaction_forPassUniqueIdentifier_paymentApplication_completion___block_invoke_2;
  v18[3] = &unk_1E79D1938;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 insertOrUpdatePaymentTransaction:v15 forPassUniqueIdentifier:v14 paymentApplication:v13 completion:v18];
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

- (void)insertOrUpdatePaymentTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke;
  v17[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = v9;
  v17[4] = self;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__PKPaymentService_insertOrUpdatePaymentTransaction_forTransactionSourceIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E79D1938;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 insertOrUpdatePaymentTransaction:v12 forTransactionSourceIdentifier:v11 completion:v15];
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

- (void)removeMapsDataForTransactionWithIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4 issueReportIdentifier:(id)a5 completion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = v11;
  v20[4] = self;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __127__PKPaymentService_removeMapsDataForTransactionWithIdentifier_forTransactionSourceIdentifier_issueReportIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E79D1938;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 removeMapsDataForTransactionWithIdentifier:v15 forTransactionSourceIdentifier:v14 issueReportIdentifier:v13 completion:v18];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9
{
  v16 = a9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v17 = v16;
  aBlock[4] = self;
  v28 = v17;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __137__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D12B0;
  v25[4] = self;
  v26 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:v20 withTransactionSource:a4 withBackingData:a5 startDate:v19 endDate:v18 limit:a8 completion:v25];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10
{
  v16 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = v16;
  aBlock[4] = self;
  v29 = v17;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __151__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:v20 withTransactionSource:a4 withBackingData:a5 startDate:v19 endDate:v18 orderedByDate:a8 limit:a9 completion:v26];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 limit:(int64_t)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v14 = v13;
  aBlock[4] = self;
  v22 = v14;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v19[3] = &unk_1E79D12B0;
  v19[4] = self;
  v20 = v14;
  v18 = v14;
  [v17 transactionsForTransactionSourceIdentifiers:v15 withTransactionSource:a4 withBackingData:a5 limit:a6 completion:v19];
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

- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)a3 calendar:(id)a4 type:(unint64_t)a5 limit:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
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
  [v12 earliestDailyBucketForTransactionSourceIdentifiers:v10 calendar:v11 type:a5 limit:a6 completion:v15];
  v13 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)transactionCountByPeriodForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4 includePurchaseTotal:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v21 = a2;
  v12 = v11;
  aBlock[4] = self;
  v20 = v12;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__PKPaymentService_transactionCountByPeriodForRequest_gregorianCalendarUnit_includePurchaseTotal_completion___block_invoke_2;
  v17[3] = &unk_1E79C4B08;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 transactionCountByPeriodForRequest:v13 gregorianCalendarUnit:a4 includePurchaseTotal:v6 completion:v17];
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

- (id)spendingCategoryTransactionGroupsForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4
{
  v6 = a3;
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
  [v7 spendingCategoryTransactionGroupsForRequest:v6 gregorianCalendarUnit:a4 completion:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8 completion:(id)a9
{
  v16 = a9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__PKPaymentService_cashbackByPeriodForTransactionSourceIdentifiers_withStartDate_endDate_calendar_calendarUnit_type_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v31 = a2;
  v17 = v16;
  aBlock[4] = self;
  v30 = v17;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
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
  [v23 cashbackByPeriodForTransactionSourceIdentifiers:v21 withStartDate:v20 endDate:v19 calendar:v18 calendarUnit:a7 type:a8 usingSynchronousProxy:v25 completion:v27];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withPeerPaymentCounterpartHandles:(id)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 limit:(int64_t)a7 completion:(id)a8
{
  v15 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v16 = v15;
  aBlock[4] = self;
  v25 = v16;
  v17 = a4;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __153__PKPaymentService_transactionsForTransactionSourceIdentifiers_withPeerPaymentCounterpartHandles_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v22[3] = &unk_1E79D12B0;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  [v20 transactionsForTransactionSourceIdentifiers:v18 withPeerPaymentCounterpartHandles:v17 withTransactionSource:a5 withBackingData:a6 limit:a7 completion:v22];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 matchingMerchant:(id)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 limit:(int64_t)a7 completion:(id)a8
{
  v15 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v16 = v15;
  aBlock[4] = self;
  v25 = v16;
  v17 = a4;
  v18 = a3;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPaymentService_transactionsForTransactionSourceIdentifiers_matchingMerchant_withTransactionSource_withBackingData_limit_completion___block_invoke_2;
  v22[3] = &unk_1E79D12B0;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  [v20 transactionsForTransactionSourceIdentifiers:v18 matchingMerchant:v17 withTransactionSource:a5 withBackingData:a6 limit:a7 completion:v22];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withMerchantCategory:(int64_t)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 limit:(int64_t)a9 completion:(id)a10
{
  v16 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = v16;
  aBlock[4] = self;
  v29 = v17;
  v18 = a8;
  v19 = a7;
  v20 = a3;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __158__PKPaymentService_transactionsForTransactionSourceIdentifiers_withMerchantCategory_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:v20 withMerchantCategory:a4 withTransactionSource:a5 withBackingData:a6 startDate:v19 endDate:v18 limit:a9 completion:v26];
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

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionType:(int64_t)a4 withTransactionSource:(unint64_t)a5 withBackingData:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 limit:(int64_t)a9 completion:(id)a10
{
  v16 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v30 = a2;
  v17 = v16;
  aBlock[4] = self;
  v29 = v17;
  v18 = a8;
  v19 = a7;
  v20 = a3;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __157__PKPaymentService_transactionsForTransactionSourceIdentifiers_withTransactionType_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79D12B0;
  v26[4] = self;
  v27 = v17;
  v23 = v17;
  [v22 transactionsForTransactionSourceIdentifiers:v20 withTransactionType:a4 withTransactionSource:a5 withBackingData:a6 startDate:v19 endDate:v18 limit:a9 completion:v26];
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

- (void)approvedTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9
{
  v16 = a9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v17 = v16;
  aBlock[4] = self;
  v28 = v17;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = _Block_copy(aBlock);
  v22 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __145__PKPaymentService_approvedTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D12B0;
  v25[4] = self;
  v26 = v17;
  v23 = v17;
  [v22 approvedTransactionsForTransactionSourceIdentifiers:v20 withTransactionSource:a4 withBackingData:a5 startDate:v19 endDate:v18 limit:a8 completion:v25];
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

- (id)approvedTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
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
  [v17 approvedTransactionsForTransactionSourceIdentifiers:v14 withTransactionSource:a4 withBackingData:a5 startDate:v15 endDate:v16 limit:a8 completion:v20];
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

- (void)pendingTransactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 limit:(int64_t)a8 completion:(id)a9
{
  v17 = a9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v29 = a2;
  v18 = v17;
  aBlock[4] = self;
  v28 = v18;
  v19 = a7;
  v20 = a6;
  v21 = a3;
  v22 = _Block_copy(aBlock);
  v23 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v22];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __144__PKPaymentService_pendingTransactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_limit_completion___block_invoke_2;
  v25[3] = &unk_1E79D1300;
  v26 = v18;
  v24 = v18;
  [v23 pendingTransactionsForTransactionSourceIdentifiers:v21 withTransactionSource:a4 withBackingData:a5 startDate:v20 endDate:v19 limit:a8 completion:v25];
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

- (void)transactionsWithTransactionSource:(unint64_t)a3 withBackingData:(unint64_t)a4 limit:(int64_t)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentService_transactionsWithTransactionSource_withBackingData_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v12 = v11;
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
  [v14 transactionsWithTransactionSource:a3 withBackingData:a4 limit:a5 completion:v16];
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

- (void)transactionWithTransactionIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKPaymentService_transactionWithTransactionIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionWithTransactionIdentifier:v9 completion:v13];
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

- (void)transactionsWithTransactionIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_transactionsWithTransactionIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v13 = v7;
  v14 = a2;
  aBlock[4] = self;
  v8 = v7;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  [v11 transactionsWithTransactionIdentifiers:v9 completion:v8];
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

- (void)transactionsWithFullPaymentHashes:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_transactionsWithFullPaymentHashes_transactionSourceIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = v9;
  v17 = a2;
  aBlock[4] = self;
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  [v14 transactionsWithFullPaymentHashes:v12 transactionSourceIdentifiers:v11 completion:v10];
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

- (void)transactionSourceTypeForTransactionSourceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_transactionSourceTypeForTransactionSourceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79CA990;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionSourceTypeForTransactionSourceIdentifier:v9 completion:v13];
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

- (void)transactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__PKPaymentService_transactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79D1938;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 transactionWithServiceIdentifier:v12 transactionSourceIdentifier:v11 completion:v16];
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

- (void)transactionWithReferenceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_transactionWithReferenceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionWithReferenceIdentifier:v9 completion:v13];
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

- (void)installmentTransactionsForInstallmentPlanIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_installmentTransactionsForInstallmentPlanIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 installmentTransactionsForInstallmentPlanIdentifier:v9 completion:v13];
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

- (void)installmentPlansWithTransactionReferennceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PKPaymentService_installmentPlansWithTransactionReferennceIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 installmentPlansWithTransactionReferenceIdentifier:v10 completion:v13];
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

- (void)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)a3 accountIdentifier:(id)a4 redeemed:(BOOL)a5 withRedemptionType:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8 completion:(id)a9
{
  v12 = a5;
  v17 = a9;
  v18 = v17;
  if (v17)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v31 = a2;
    v25 = a6;
    v19 = v17;
    aBlock[4] = self;
    v30 = v19;
    v20 = a8;
    v21 = a7;
    v22 = a4;
    v23 = a3;
    v26 = _Block_copy(aBlock);
    v24 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v26];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __154__PKPaymentService_installmentPlanTransactionsForTransactionSourceIdentifiers_accountIdentifier_redeemed_withRedemptionType_startDate_endDate_completion___block_invoke_2;
    v27[3] = &unk_1E79D12B0;
    v27[4] = self;
    v28 = v19;
    [v24 installmentPlanTransactionsForTransactionSourceIdentifiers:v23 accountIdentifier:v22 redeemed:v12 withRedemptionType:v25 startDate:v21 endDate:v20 completion:v27];
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

- (void)transactionsForRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PKPaymentService_transactionsForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__PKPaymentService_transactionsForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79C4B08;
    v13[4] = self;
    v14 = v9;
    [v12 transactionsForRequest:v10 usingSynchronousProxy:0 completion:v13];
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

- (id)transactionsForRequest:(id)a3
{
  v4 = a3;
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
  [v5 transactionsForRequest:v4 usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)transactionCountForRequest:(id)a3
{
  v4 = a3;
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
  [v5 transactionCountForRequest:v4 usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)transactionCountForRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPaymentService_transactionCountForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKPaymentService_transactionCountForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79D1350;
    v13[4] = self;
    v14 = v9;
    [v12 transactionCountForRequest:v10 usingSynchronousProxy:0 completion:v13];
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

- (void)transactionSourceIdentifiersForPassUniqueIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PKPaymentService_transactionSourceIdentifiersForPassUniqueIdentifiers_completion___block_invoke_2;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 transactionSourceIdentifiersForPassUniqueIdentifiers:v10 completion:v13];
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

- (void)transactionsTotalAmountForRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKPaymentService_transactionsTotalAmountForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79D1378;
    v13[4] = self;
    v14 = v9;
    [v12 transactionsTotalAmountForRequest:v10 completion:v13];
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

- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
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
  [v18 cashbackByPeriodForTransactionSourceIdentifiers:v14 withStartDate:v15 endDate:v16 calendar:v17 calendarUnit:a7 type:a8 usingSynchronousProxy:v21 completion:v22];
  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v19;
}

- (void)logoImageDataForURL:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPaymentService_logoImageDataForURL_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PKPaymentService_logoImageDataForURL_completion___block_invoke_2;
    v13[3] = &unk_1E79CB0B0;
    v13[4] = self;
    v14 = v9;
    [v12 logoImageDataForURL:v10 completion:v13];
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

- (void)transactionsForPredicate:(id)a3 limit:(int64_t)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v11 = v9;
    aBlock[4] = self;
    v18 = v11;
    v12 = a3;
    v13 = _Block_copy(aBlock);
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKPaymentService_transactionsForPredicate_limit_completion___block_invoke_2;
    v15[3] = &unk_1E79C4B08;
    v15[4] = self;
    v16 = v11;
    [v14 transactionsForPredicate:v12 limit:a4 completion:v15];
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

- (void)passUniqueIdentifierForTransactionWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKPaymentService_passUniqueIdentifierForTransactionWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 passUniqueIdentifierForTransactionWithIdentifier:v9 completion:v13];
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

- (void)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PKPaymentService_passUniqueIdentifierForTransactionWithServiceIdentifier_transactionSourceIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4AE0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 passUniqueIdentifierForTransactionWithServiceIdentifier:v12 transactionSourceIdentifier:v11 completion:v16];
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

- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v9 = v7;
    aBlock[4] = self;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PKPaymentService_passUniqueIdentifiersForTransactionSourceIdentifiers_completion___block_invoke_2;
    v13[3] = &unk_1E79D13A0;
    v13[4] = self;
    v14 = v9;
    [v12 passUniqueIdentifiersForTransactionSourceIdentifiers:v10 completion:v13];
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

- (void)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPaymentService_ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4AE0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:v9 completion:v13];
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

- (void)mapsMerchantsWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PKPaymentService_mapsMerchantsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
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

- (void)applicationMessagesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PKPaymentService_applicationMessagesWithCompletion___block_invoke;
    v10[3] = &unk_1E79C4450;
    v6 = v4;
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

- (void)tappedApplicationMessageWithKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 usingSynchronousProxy:1 tappedApplicationMessageWithKey:v4 completion:&__block_literal_global_185];
}

- (void)updateFinanceKitApplicationMessages
{
  v2 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v2 usingSynchronousProxy:1 updateFinanceKitApplicationMessagesWithCompletion:&__block_literal_global_187_2];
}

- (void)removeApplicationMessageWithKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 usingSynchronousProxy:1 removeApplicationMessageWithKey:v4 completion:&__block_literal_global_189];
}

- (void)removeApplicationMessagesWithKeys:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKPaymentService_removeApplicationMessagesWithKeys_completion___block_invoke_2;
  v11[3] = &unk_1E79C4428;
  v12 = v7;
  v10 = v7;
  [v9 usingSynchronousProxy:0 removeApplicationMessagesWithKeys:v8 completion:v11];
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

- (void)messagesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_messagesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 messagesForPaymentPassWithUniqueIdentifier:v9 handler:v13];
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

- (void)tilesForPassWithUniqueIdentifier:(id)a3 context:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PKPaymentService_tilesForPassWithUniqueIdentifier_context_completion___block_invoke;
      v15[3] = &unk_1E79C4450;
      v11 = v9;
      v16 = v11;
      v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithErrorHandler:v15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72__PKPaymentService_tilesForPassWithUniqueIdentifier_context_completion___block_invoke_2;
      v13[3] = &unk_1E79C4B08;
      v13[4] = self;
      v14 = v11;
      [v12 usingSynchronousProxy:0 tilesForPassWithUniqueIdentifer:v8 context:a4 completion:v13];
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 balancesForPaymentPassWithUniqueIdentifier:v9 handler:v13];
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

- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKPaymentService_plansForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 plansForPaymentPassWithUniqueIdentifier:v9 handler:v13];
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

- (void)balanceReminderThresholdForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v10 = v9;
  aBlock[4] = self;
  v22 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v15 = [v12 identifiers];

  v16 = [v15 anyObject];
  v17 = [v11 uniqueID];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PKPaymentService_balanceReminderThresholdForBalance_pass_withCompletion___block_invoke_2;
  v19[3] = &unk_1E79D13C8;
  v19[4] = self;
  v20 = v10;
  v18 = v10;
  [v14 balanceReminderThresholdForBalanceIdentifier:v16 withPassUniqueIdentifier:v17 handler:v19];
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

- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v12 = v11;
  aBlock[4] = self;
  v25 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v18 = [v14 identifiers];

  v19 = [v18 anyObject];
  v20 = [v13 uniqueID];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__PKPaymentService_setBalanceReminder_forBalance_pass_completion___block_invoke_2;
  v22[3] = &unk_1E79C4888;
  v22[4] = self;
  v23 = v12;
  v21 = v12;
  [v17 setBalanceReminder:v15 forBalanceIdentifier:v19 withPassUniqueIdentifier:v20 handler:v22];
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

- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)a3 balanceIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PKPaymentService_cancelAutoTopUpForPassWithUniqueIdentifier_balanceIdentifiers_completion___block_invoke_2;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 cancelAutoTopUpForPassWithUniqueIdentifier:v12 balanceIdentifiers:v11 handler:v16];
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

- (void)commutePlanReminderForCommputePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v22 = a2;
  v10 = v9;
  aBlock[4] = self;
  v21 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v15 = [v12 identifier];

  v16 = [v11 uniqueID];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PKPaymentService_commutePlanReminderForCommputePlan_pass_withCompletion___block_invoke_2;
  v18[3] = &unk_1E79D13F0;
  v18[4] = self;
  v19 = v10;
  v17 = v10;
  [v14 commutePlanReminderForCommutePlanIdentifier:v15 withPassUniqueIdentifier:v16 handler:v18];
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

- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v25 = a2;
  v12 = v11;
  aBlock[4] = self;
  v24 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v18 = [v14 identifier];

  v19 = [v13 uniqueID];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__PKPaymentService_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_2;
  v21[3] = &unk_1E79C4888;
  v21[4] = self;
  v22 = v12;
  v20 = v12;
  [v17 setCommutePlanReminder:v15 forCommutePlanIdentifier:v18 withPassUniqueIdentifier:v19 handler:v21];
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

- (void)deletePaymentTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deletePaymentTransactionWithIdentifier:v4 handler:&__block_literal_global_201];
}

- (void)deletePaymentTransactionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deletePaymentTransactionsWithIdentifiers:v4 handler:&__block_literal_global_203];
}

- (void)deleteAllTransactionsForTransactionSourceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deleteAllTransactionsForTransactionSourceIdentifiers:v4 handler:&__block_literal_global_205];
}

- (void)deleteMessagesForPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 deleteAllMessagesForPaymentPassWithUniqueIdentifier:v4 handler:&__block_literal_global_207];
}

- (void)hasTransactionsRelatedToTransaction:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __96__PKPaymentService_hasTransactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke;
  v18 = &unk_1E79C8958;
  v19 = v9;
  v20 = a2;
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(&v15);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13, v15, v16, v17, v18];
  [v14 hasTransactionsRelatedToTransaction:v12 transactionSourceIdentifiers:v11 completion:v10];
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

- (void)transactionsRelatedToTransaction:(id)a3 transactionSourceIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v11 = v9;
    aBlock[4] = self;
    v19 = v11;
    v12 = a4;
    v13 = a3;
    v14 = _Block_copy(aBlock);
    v15 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__PKPaymentService_transactionsRelatedToTransaction_transactionSourceIdentifiers_completion___block_invoke_2;
    v16[3] = &unk_1E79C4B08;
    v16[4] = self;
    v17 = v11;
    [v15 transactionsRelatedToTransaction:v13 transactionSourceIdentifiers:v12 completion:v16];
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

- (void)updatePreferredCategory:(int64_t)a3 forTransactionsWithIdentifiers:(id)a4 paymentPass:(id)a5 completion:(id)a6
{
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PKPaymentService_updatePreferredCategory_forTransactionsWithIdentifiers_paymentPass_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v22 = a2;
    v13 = v11;
    aBlock[4] = self;
    v21 = v13;
    v14 = a5;
    v15 = a4;
    v16 = _Block_copy(aBlock);
    v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__PKPaymentService_updatePreferredCategory_forTransactionsWithIdentifiers_paymentPass_completion___block_invoke_209;
    v18[3] = &unk_1E79C4860;
    v18[4] = self;
    v19 = v13;
    [v17 updatePreferredCategory:a3 forTransactionsWithIdentifiers:v15 paymentPass:v14 completion:v18];
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

- (void)archiveMessageWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 archiveMessageWithIdentifier:v4 handler:&__block_literal_global_211];
}

- (void)insertOrUpdateValueAddedServiceTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentTransaction:(id)a5 completion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke;
  v20[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = v11;
  v20[4] = self;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__PKPaymentService_insertOrUpdateValueAddedServiceTransaction_forPassUniqueIdentifier_paymentTransaction_completion___block_invoke_2;
  v18[3] = &unk_1E79C44A0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 insertOrUpdateValueAddedServiceTransaction:v15 forPassUniqueIdentifier:v14 paymentTransaction:v13 handler:v18];
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

- (void)valueAddedServiceTransactionsForPassWithUniqueIdentifier:(id)a3 limit:(int64_t)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = v9;
  aBlock[4] = self;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPaymentService_valueAddedServiceTransactionsForPassWithUniqueIdentifier_limit_completion___block_invoke_2;
  v15[3] = &unk_1E79D12B0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 valueAddedServiceTransactionsForPassWithUniqueIdentifier:v11 limit:a4 handler:v15];
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

- (void)valueAddedServiceTransactionsForPaymentTransaction:(id)a3 limit:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v9 = v8;
  aBlock[4] = self;
  v17 = v9;
  v10 = a3;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PKPaymentService_valueAddedServiceTransactionsForPaymentTransaction_limit_completion___block_invoke_2;
  v14[3] = &unk_1E79D12B0;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 valueAddedServiceTransactionsForPaymentTransaction:v10 handler:v14];
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

- (void)valueAddedServiceTransactionWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_valueAddedServiceTransactionWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D1418;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 valueAddedServiceTransactionWithIdentifier:v9 handler:v13];
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

- (void)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PKPaymentService_setDefaultPaymentApplication_forPassUniqueIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79D1440;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultPaymentApplication:v12 forPassUniqueIdentifier:v11 handler:v16];
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

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 defaultPaymentApplicationForPassUniqueIdentifier:v4 handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)initializeSecureElementIfNecessaryWithCompletion:(id)a3
{
  v5 = a3;
  if (PKSecureElementIsAvailable())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_initializeSecureElementIfNecessaryWithCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v14 = a2;
    v6 = v5;
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

    if (v5)
    {
      (*(v5 + 2))(v5, 0, 0, 0);
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

- (void)initializeSecureElement:(id)a3
{
  v5 = a3;
  if (PKSecureElementIsAvailable())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKPaymentService_initializeSecureElement___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v14 = a2;
    v6 = v5;
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

    if (v5)
    {
      (*(v5 + 2))(v5, 0);
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

- (void)setDefaultExpressFelicaTransitPassIdentifier:(id)a3 withCredential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PKPaymentService_setDefaultExpressFelicaTransitPassIdentifier_withCredential_completion___block_invoke_2;
  v16[3] = &unk_1E79D14E0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultExpressTransitPassIdentifier:v12 withCredential:v11 completion:v16];
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
  v3 = [v2 anyObject];
  v4 = [v3 passUniqueIdentifier];

  return v4;
}

- (void)setDefaultExpressTransitPassIdentifier:(id)a3 withCredential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PKPaymentService_setDefaultExpressTransitPassIdentifier_withCredential_completion___block_invoke_2;
  v16[3] = &unk_1E79D14E0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 setDefaultExpressTransitPassIdentifier:v12 withCredential:v11 completion:v16];
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

- (BOOL)isExpressModeEnabledForRemotePassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
  v6 = [v5 _remoteLibrary];
  v7 = [v6 passWithUniqueID:v4];
  v8 = [v7 secureElementPass];

  if ([v8 isRemotePass])
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
    [v9 isExpressModeEnabledForRemotePassUniqueIdentifier:v4 handler:v12];
    v10 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)a3
{
  v3 = [(PKPaymentService *)self expressPassConfigurationWithPassUniqueIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)expressPassConfigurationWithPassUniqueIdentifier:(id)a3
{
  v4 = a3;
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
  [v5 expressPassConfigurationWithPassUniqueIdentifier:v4 handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)expressPassConfigurationsWithCardType:(int64_t)a3
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
  [v5 expressPassConfigurationsWithCardType:a3 handler:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)a3
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
  [v5 expressPassesInformationWithAutomaticSelectionTechnologyType:a3 handler:v8];
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
  v2 = [(PKPaymentService *)self expressPassConfigurations];
  v3 = [v2 pk_setByApplyingBlock:&__block_literal_global_230_1];

  return v3;
}

- (id)expressPassInformationForMode:(id)a3
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentService: DEPRECATED METHOD expressPassInformationForMode: NO LONGER IMPLEMENTED.", v5, 2u);
  }

  return 0;
}

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = v8;
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
    [v12 conflictingExpressPassIdentifiersForPassConfiguration:v7 withCompletion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
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

- (void)conflictingExpressPassIdentifiersForPassInformation:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withCompletion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = v8;
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
    [v12 conflictingExpressPassIdentifiersForPassInformation:v7 withCompletion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
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

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withReferenceExpressState:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && [v10 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__PKPaymentService_conflictingExpressPassIdentifiersForPassConfiguration_withReferenceExpressState_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v12 = v11;
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
    [v14 conflictingExpressPassIdentifiersForPassConfiguration:v9 withReferenceExpressState:v10 completion:v15];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
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

- (void)conflictingExpressPassIdentifiersForPassInformation:(id)a3 withReferenceExpressState:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && [v10 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PKPaymentService_conflictingExpressPassIdentifiersForPassInformation_withReferenceExpressState_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v12 = v11;
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
    [v14 conflictingExpressPassIdentifiersForPassInformation:v9 withReferenceExpressState:v10 completion:v15];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
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

- (void)setExpressWithPassConfiguration:(id)a3 credential:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKPaymentService_setExpressWithPassConfiguration_credential_handler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v13 = v11;
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
    [v15 setExpressWithPassConfiguration:v9 credential:v10 completion:v16];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0);
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

- (void)setExpressWithPassInformation:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKPaymentService_setExpressWithPassInformation_credential_completion___block_invoke;
  v10[3] = &unk_1E79D1578;
  v11 = v8;
  v9 = v8;
  [(PKPaymentService *)self setExpressWithPassInformation:a3 credential:a4 handler:v10];
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

- (void)setExpressWithPassInformation:(id)a3 credential:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_setExpressWithPassInformation_credential_handler___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v20 = a2;
    v13 = v11;
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
    [v15 setExpressWithPassInformation:v9 credential:v10 completion:v16];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0);
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

- (void)removeExpressPassesWithCardType:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentService_removeExpressPassesWithCardType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = v7;
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
  [v10 removeExpressPassesWithCardType:a3 completion:v12];
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

- (void)removeExpressPassWithUniqueIdentifierV2:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKPaymentService_removeExpressPassWithUniqueIdentifierV2_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = v8;
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
    [v12 removeExpressPassWithUniqueIdentifier:v7 completion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, 0);
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

- (void)removeExpressPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PKPaymentService_removeExpressPassWithUniqueIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v17 = a2;
    v10 = v8;
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
    [v12 removeExpressPassWithUniqueIdentifier:v7 completion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, 0);
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

- (void)isPassExpressWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v9 = v8;
  aBlock[4] = self;
  v15 = v9;
  v10 = _Block_copy(aBlock);
  if (v9)
  {
    if (v7)
    {
      v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PKPaymentService_isPassExpressWithUniqueIdentifier_completion___block_invoke_2;
      v12[3] = &unk_1E79C4888;
      v12[4] = self;
      v13 = v9;
      [v11 isPassExpressWithUniqueIdentifier:v7 completion:v12];
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

- (void)processTransitTransactionEventWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 expressTransactionState:(id)a7
{
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __149__PKPaymentService_processTransitTransactionEventWithHistory_transactionDate_forPaymentApplication_withPassUniqueIdentifier_expressTransactionState___block_invoke;
  v22 = &unk_1E79CAED8;
  v23 = self;
  v24 = a2;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = _Block_copy(&v19);
  v18 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17, v19, v20, v21, v22, v23, v24];
  [v18 processTransitTransactionEventWithHistory:v16 transactionDate:v15 forPaymentApplication:v14 withPassUniqueIdentifier:v13 expressTransactionState:v12];
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

- (void)recordPassTransactionActivitySummaryForPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 presentmentType:(unint64_t)a5
{
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __125__PKPaymentService_recordPassTransactionActivitySummaryForPassUniqueIdentifier_paymentApplicationIdentifier_presentmentType___block_invoke;
  v15 = &unk_1E79CAED8;
  v16 = self;
  v17 = a2;
  v8 = a4;
  v9 = a3;
  v10 = _Block_copy(&v12);
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v10, v12, v13, v14, v15, v16, v17];
  [v11 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v9 paymentApplicationIdentifier:v8 presentmentType:a5];
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

- (void)recordPaymentApplicationUsageForPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __102__PKPaymentService_recordPaymentApplicationUsageForPassUniqueIdentifier_paymentApplicationIdentifier___block_invoke;
  v13 = &unk_1E79CAED8;
  v14 = self;
  v15 = a2;
  v6 = a4;
  v7 = a3;
  v8 = _Block_copy(&v10);
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v8, v10, v11, v12, v13, v14, v15];
  [v9 recordPaymentApplicationUsageForPassUniqueIdentifier:v7 paymentApplicationIdentifier:v6];
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

- (void)simulateDefaultExpressTransitPassIdentifier:(id)a3 forExpressMode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v8 simulateDefaultExpressTransitPassIdentifier:v7 forExpressMode:v6 handler:&__block_literal_global_248_0];
}

- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PKPaymentService_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_2;
  v16[3] = &unk_1E79D15A0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 transitStateWithPassUniqueIdentifier:v12 paymentApplication:v11 handler:v16];
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

- (void)simulateNotificationOfType:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:0];
  [v7 simulateNotificationOfType:a3 userInfo:v6 handler:&__block_literal_global_255];
}

- (void)simulatePaymentPushTopic:(id)a3 payload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v8 simulatePaymentPushTopic:v7 payload:v6 handler:&__block_literal_global_257];
}

- (void)simulateVehicleInitiatedPairingWithTCIs:(id)a3 brandCode:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v7 simulateVehicleInitiatedPairingWithTCIs:v6 brandCode:a4 handler:&__block_literal_global_259];
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

- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)a3
{
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 scheduleDeviceCheckInWithStartTimeOffset:a3];
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

- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v4 scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:v3];
}

- (void)setDeviceUpgradeTasksContextBuildVersion:(id)a3 upgradeTaskVersion:(int64_t)a4 retryCount:(int64_t)a5
{
  v8 = a3;
  v9 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v9 setDeviceUpgradeTasksContextBuildVersion:v8 upgradeTaskVersion:a4 retryCount:a5];
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

- (void)requestNotificationAuthorizationIfNecessaryWithCompletion:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentService_requestNotificationAuthorizationIfNecessaryWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4658;
  v13 = a2;
  v6 = v5;
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

- (void)requestNotificationAuthorizationWithCompletion:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PKPaymentService_requestNotificationAuthorizationWithCompletion___block_invoke;
  v11[3] = &unk_1E79C4658;
  v13 = a2;
  v6 = v5;
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

- (void)userNotificationActionPerformed:(unint64_t)a3 applicationMessageContentIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CAED8;
  v15[4] = self;
  v15[5] = a2;
  v10 = a4;
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PKPaymentService_userNotificationActionPerformed_applicationMessageContentIdentifier_completion___block_invoke_268;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 userNotificationActionPerformed:a3 applicationMessageContentIdentifier:v10 completion:v13];
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

- (void)userNotificationActionPerformed:(unint64_t)a3 notificationIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CAED8;
  v15[4] = self;
  v15[5] = a2;
  v10 = a4;
  v11 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PKPaymentService_userNotificationActionPerformed_notificationIdentifier_completion___block_invoke_269;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 userNotificationActionPerformed:a3 notificationIdentifier:v10 completion:v13];
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

- (void)simulateExpressTransactionForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 simulateExpressTransactionForPassUniqueIdentifier:v4 withCompletion:&__block_literal_global_273];
}

- (void)handleStandaloneTransaction:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PKPaymentService *)self _extendedSynchronousRemoteObjectProxyWithErrorHandler:0];
    [v5 usingSynchronousProxy:1 handleStandaloneTransaction:v4 withCompletion:&__block_literal_global_275];
  }
}

- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKPaymentService_startBackgroundVerificationObserverForPass_verificationMethod___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a2;
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v9];
  [v8 startBackgroundVerificationObserverForPass:v7 verificationMethod:v6];
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
    v4 = [(PKPaymentService *)self paymentDeviceFieldProperties];
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

- (void)setDefaultPaymentPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentService_setDefaultPaymentPassUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  [v5 setDefaultPaymentPassUniqueIdentifier:v4 handler:v6];
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

- (void)setSharedPaymentWebServiceContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 deviceID];

    if (!v6)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = 136315394;
        v11 = "[PKPaymentService setSharedPaymentWebServiceContext:]";
        v12 = 2112;
        v13 = v8;
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

- (void)sharedPaymentWebServiceContextWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKPaymentService_sharedPaymentWebServiceContextWithCompletion___block_invoke;
    v11[3] = &unk_1E79CABB8;
    v13 = a2;
    v7 = v5;
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

- (void)updateAllMapsBrandAndMerchantDataWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_updateAllMapsBrandAndMerchantDataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
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

- (void)mapsMerchantWithIdentifier:(unint64_t)a3 resultProviderIdentifier:(int)a4 completion:(id)a5
{
  v5 = *&a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_mapsMerchantWithIdentifier_resultProviderIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v10 = v9;
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
  [v12 mapsMerchantWithIdentifier:a3 resultProviderIdentifier:v5 completion:v14];
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

- (unint64_t)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  [v11 rangingSuspensionReasonForAppletSubcredentialIdentifier:v8 paymentApplicationIdentifier:v9 secureElementIdentifier:v10 completion:v14];
  v12 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v12;
}

- (unint64_t)rangingSuspensionReasonForAppletSubcredential:(id)a3 forPaymentApplicationID:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = +[PKSecureElement primarySecureElementIdentifier];
  v9 = [(PKPaymentService *)self rangingSuspensionReasonForAppletSubcredentialIdentifier:v7 paymentApplicationIdentifier:v6 secureElementIdentifier:v8];

  return v9;
}

- (void)rangingSuspensionReasonForAppletSubcredentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v12 = v11;
  aBlock[4] = self;
  v22 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __140__PKPaymentService_rangingSuspensionReasonForAppletSubcredentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_completion___block_invoke_2;
  v19[3] = &unk_1E79CA990;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 rangingSuspensionReasonForAppletSubcredentialIdentifier:v15 paymentApplicationIdentifier:v14 secureElementIdentifier:v13 completion:v19];
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

- (void)rangingSuspensionReasonForAppletSubcredential:(id)a3 forPaymentApplicationID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 identifier];
  v10 = +[PKSecureElement primarySecureElementIdentifier];
  [(PKPaymentService *)self rangingSuspensionReasonForAppletSubcredentialIdentifier:v11 paymentApplicationIdentifier:v9 secureElementIdentifier:v10 completion:v8];
}

- (void)setPaymentApplicationRangingSuspensionReason:(unint64_t)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  [v7 setPaymentApplicationRangingSuspensionReason:a3 forPassUniqueIdentifier:v6 completion:&__block_literal_global_291];
}

- (void)regionsWithIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke;
    v14[3] = &unk_1E79C4658;
    v16 = a2;
    v9 = v7;
    v14[4] = self;
    v15 = v9;
    v10 = a3;
    v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PKPaymentService_regionsWithIdentifiers_completion___block_invoke_2;
    v12[3] = &unk_1E79C4B08;
    v12[4] = self;
    v13 = v9;
    [v11 regionsWithIdentifiers:v10 completion:v12];
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

- (void)regionsMatchingName:(id)a3 types:(id)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke;
    v17[3] = &unk_1E79C4658;
    v19 = a2;
    v11 = v9;
    v17[4] = self;
    v18 = v11;
    v12 = a4;
    v13 = a3;
    v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PKPaymentService_regionsMatchingName_types_completion___block_invoke_2;
    v15[3] = &unk_1E79C4B08;
    v15[4] = self;
    v16 = v11;
    [v14 regionsMatchingName:v13 types:v12 completion:v15];
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

- (void)merchantForPassUniqueIdentifier:(id)a3 withAuxiliaryPassInformationItem:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKPaymentService_merchantForPassUniqueIdentifier_withAuxiliaryPassInformationItem_completion___block_invoke_2;
  v16[3] = &unk_1E79D1668;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 merchantForPassUniqueIdentifier:v12 withAuxiliaryPassInformationItem:v11 completion:v16];
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

- (void)refreshMerchantTokenMetadataWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentService_refreshMerchantTokenMetadataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = v5;
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

- (void)revokeMerchantTokenWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_revokeMerchantTokenWithIdentifier_completion___block_invoke_296;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeMerchantTokenWithIdentifier:v9 completion:v13];
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

- (void)addRemoteDevicePendingProvisioningReceipt:(id)a3
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62__PKPaymentService_addRemoteDevicePendingProvisioningReceipt___block_invoke;
  v10 = &unk_1E79CAED8;
  v11 = self;
  v12 = a2;
  v4 = a3;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5, v7, v8, v9, v10, v11, v12];
  [v6 addRemoteDevicePendingProvisioningReceipt:v4];
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

- (void)suggestPaymentFPANCredentialImport:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPaymentService_suggestPaymentFPANCredentialImport_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 suggestPaymentFPANCredentialImport:v9 withCompletion:v13];
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

- (void)notifyForFPANCardImportConsentWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_notifyForFPANCardImportConsentWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
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

- (void)notifyForFPANCardImportWithCredentials:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_notifyForFPANCardImportWithCredentials_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 notifyForFPANCardImportWithCredentials:v9 withCompletion:v13];
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

- (void)clearFPANCardImportNotificationsWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_clearFPANCardImportNotificationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
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

- (void)clearFPANCardImportNotificationHistoryWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentService_clearFPANCardImportNotificationHistoryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = v5;
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

- (void)generateUnderlyingKeyReportWithCompletion:(id)a3
{
  v5 = a3;
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
  v10 = v5;
  v8 = v5;
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

- (void)simulateEnableBiometricsForPass:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPaymentService_simulateEnableBiometricsForPass___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
  [v6 simulateEnableBiometricsForPass:v4];
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

- (void)setNFCPayloadState:(unint64_t)a3 forPass:(id)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PKPaymentService_setNFCPayloadState_forPass___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v6 = a4;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  [v8 setNFCPayloadState:a3 forPass:v6];
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

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PKPaymentService_enforceUpgradedPasscodePolicyWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = v5;
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

- (void)currentPasscodeMeetsUpgradedPasscodePolicy:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKPaymentService_currentPasscodeMeetsUpgradedPasscodePolicy___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = v5;
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

- (void)requiresUpgradedPasscodeWithCompletion:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKPaymentService_requiresUpgradedPasscodeWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = v5;
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

- (void)changePasscodeFrom:(id)a3 toPasscode:(id)a4 completion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PKPaymentService_changePasscodeFrom_toPasscode_completion___block_invoke_308;
  v15[3] = &unk_1E79C4A68;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 changePasscodeFrom:v12 toPasscode:v11 completion:v15];
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

- (void)registerAuxiliaryCapabilityForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PKPaymentService_registerAuxiliaryCapabilityForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_309;
  v15[3] = &unk_1E79C4860;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 registerAuxiliaryCapabilityForPassUniqueIdentifier:v12 sessionExchangeToken:v11 withCompletion:v15];
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

- (void)invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = v7;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentService_invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier_completion___block_invoke_310;
  v12[3] = &unk_1E79C44A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 invalidateAuxiliaryCapabilityCertificatesForPassUniqueIdentifier:v9 completion:v12];
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

- (void)fetchBarcodesForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentService_fetchBarcodesForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_311;
  v15[3] = &unk_1E79D1690;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 fetchBarcodesForPassUniqueIdentifier:v12 sessionExchangeToken:v11 withCompletion:v15];
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

- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)a3 authorization:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __107__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_withCompletion___block_invoke;
    v17[3] = &unk_1E79C8958;
    v19 = a2;
    v11 = v9;
    v18 = v11;
    v12 = a4;
    v13 = a3;
    v14 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_withCompletion___block_invoke_313;
    v15[3] = &unk_1E79D16B8;
    v15[4] = self;
    v16 = v11;
    [v14 retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:v13 authorization:v12 withCompletion:v15];
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

- (void)retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:(id)a3 authorization:(id)a4 sessionExchangeToken:(id)a5 withCompletion:(id)a6
{
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __128__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_sessionExchangeToken_withCompletion___block_invoke;
    v20[3] = &unk_1E79C8958;
    v22 = a2;
    v13 = v11;
    v21 = v13;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __128__PKPaymentService_retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier_authorization_sessionExchangeToken_withCompletion___block_invoke_315;
    v18[3] = &unk_1E79D16B8;
    v18[4] = self;
    v19 = v13;
    [v17 retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:v16 authorization:v15 sessionExchangeToken:v14 withCompletion:v18];
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

- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = v7;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_withCompletion___block_invoke_316;
  v12[3] = &unk_1E79C4B08;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 retrievePINEncryptionCertificateForPassUniqueIdentifier:v9 withCompletion:v12];
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

- (void)retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 sessionExchangeToken:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__PKPaymentService_retrievePINEncryptionCertificateForPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_317;
  v15[3] = &unk_1E79C4B08;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 retrievePINEncryptionCertificateForPassUniqueIdentifier:v12 sessionExchangeToken:v11 withCompletion:v15];
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

- (void)processedAuthenticationMechanism:(unint64_t)a3 forTransactionIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke;
  v16[3] = &unk_1E79C8958;
  v18 = a2;
  v10 = v9;
  v17 = v10;
  v11 = a4;
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PKPaymentService_processedAuthenticationMechanism_forTransactionIdentifier_completion___block_invoke_318;
  v14[3] = &unk_1E79C44A0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 processedAuthenticationMechanism:a3 forTransactionIdentifier:v11 completion:v14];
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

- (void)markAuthenticationCompleteForTransactionIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = v7;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPaymentService_markAuthenticationCompleteForTransactionIdentifier_completion___block_invoke_319;
  v12[3] = &unk_1E79C44A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 markAuthenticationCompleteForTransactionIdentifier:v9 completion:v12];
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

- (void)submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 completion:(id)a5
{
  v6 = a3;
  v9 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke;
  v16[3] = &unk_1E79C8958;
  v18 = a2;
  v10 = v9;
  v17 = v10;
  v11 = a4;
  v12 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_320;
  v14[3] = &unk_1E79D16E0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 submitUserConfirmation:v6 forTransactionIdentifier:v11 completion:v14];
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

- (void)submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 sessionExchangeToken:(id)a5 completion:(id)a6
{
  v8 = a3;
  v11 = a6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v19[3] = &unk_1E79C8958;
  v21 = a2;
  v12 = v11;
  v20 = v12;
  v13 = a5;
  v14 = a4;
  v15 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PKPaymentService_submitUserConfirmation_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_322;
  v17[3] = &unk_1E79D16E0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 submitUserConfirmation:v8 forTransactionIdentifier:v14 sessionExchangeToken:v13 completion:v17];
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

- (void)submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_323;
  v15[3] = &unk_1E79D16E0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitEncryptedPIN:v12 forTransactionIdentifier:v11 completion:v15];
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

- (void)submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 sessionExchangeToken:(id)a5 completion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v20[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = v11;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKPaymentService_submitEncryptedPIN_forTransactionIdentifier_sessionExchangeToken_completion___block_invoke_324;
  v18[3] = &unk_1E79D16E0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitEncryptedPIN:v15 forTransactionIdentifier:v14 sessionExchangeToken:v13 completion:v18];
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

- (void)submitTransactionSignatureForTransactionIdentifier:(id)a3 sessionExchangeToken:(id)a4 completion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__PKPaymentService_submitTransactionSignatureForTransactionIdentifier_sessionExchangeToken_completion___block_invoke_325;
  v15[3] = &unk_1E79D16E0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitTransactionSignatureForTransactionIdentifier:v12 sessionExchangeToken:v11 completion:v15];
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

- (void)submitBarcodePaymentEvent:(id)a3 forPassUniqueIdentifier:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke;
  v17[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_withCompletion___block_invoke_326;
  v15[3] = &unk_1E79C44A0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 submitBarcodePaymentEvent:v12 forPassUniqueIdentifier:v11 withCompletion:v15];
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

- (void)submitBarcodePaymentEvent:(id)a3 forPassUniqueIdentifier:(id)a4 sessionExchangeToken:(id)a5 withCompletion:(id)a6
{
  v11 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke;
  v20[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = v11;
  v21 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__PKPaymentService_submitBarcodePaymentEvent_forPassUniqueIdentifier_sessionExchangeToken_withCompletion___block_invoke_327;
  v18[3] = &unk_1E79C44A0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitBarcodePaymentEvent:v15 forPassUniqueIdentifier:v14 sessionExchangeToken:v13 withCompletion:v18];
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

- (void)familyMembersIgnoringCache:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke;
  v13[3] = &unk_1E79C8958;
  v15 = a2;
  v8 = v7;
  v14 = v8;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PKPaymentService_familyMembersIgnoringCache_completion___block_invoke_328;
  v11[3] = &unk_1E79C4B08;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 familyMembersIgnoringCache:v4 completion:v11];
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

- (void)memberTypeForCurrentUserWithCompletion:(id)a3
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKPaymentService_memberTypeForCurrentUserWithCompletion___block_invoke;
  v11[3] = &unk_1E79C8958;
  v13 = a2;
  v6 = v5;
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

- (void)pendingFamilyMembersIgnoringCache:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke;
  v13[3] = &unk_1E79C8958;
  v15 = a2;
  v8 = v7;
  v14 = v8;
  v9 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKPaymentService_pendingFamilyMembersIgnoringCache_completion___block_invoke_331;
  v11[3] = &unk_1E79C4B08;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 pendingFamilyMembersIgnoringCache:v4 completion:v11];
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

- (void)photosForFamilyMembersWithDSIDs:(id)a3 completion:(id)a4
{
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke;
  v14[3] = &unk_1E79C8958;
  v16 = a2;
  v8 = v7;
  v15 = v8;
  v9 = a3;
  v10 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKPaymentService_photosForFamilyMembersWithDSIDs_completion___block_invoke_332;
  v12[3] = &unk_1E79D13A0;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 photosForFamilyMembersWithDSIDs:v9 completion:v12];
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

- (void)defaultPaymentPassIngestionSpecificIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PKPaymentService_defaultPaymentPassIngestionSpecificIdentifier___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v14 = a2;
    v7 = v5;
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

- (void)featureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKPaymentService_featureApplicationsForAccountIdentifier_completion___block_invoke_334;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 featureApplicationsForAccountIdentifier:v9 completion:v13];
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

- (void)updateFeatureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentService_updateFeatureApplicationsForAccountIdentifier_completion___block_invoke_335;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateFeatureApplicationsForAccountIdentifier:v9 completion:v13];
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

- (void)featureApplicationsForProvisioningWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_featureApplicationsForProvisioningWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)featureApplicationsForAccountUserInvitationWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentService_featureApplicationsForAccountUserInvitationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)featureApplicationWithReferenceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKPaymentService_featureApplicationWithReferenceIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v17 = a2;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__PKPaymentService_featureApplicationWithReferenceIdentifier_completion___block_invoke_339;
    v13[3] = &unk_1E79D1708;
    v13[4] = self;
    v14 = v9;
    [v12 featureApplicationWithReferenceIdentifier:v10 completion:v13];
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

- (void)augmentedProductForInstallmentConfiguration:(id)a3 experimentDetails:(id)a4 withCompletion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PKPaymentService_augmentedProductForInstallmentConfiguration_experimentDetails_withCompletion___block_invoke_341;
  v16[3] = &unk_1E79D1730;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 augmentedProductForInstallmentConfiguration:v12 experimentDetails:v11 withCompletion:v16];
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

- (void)featureApplicationsWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKPaymentService_featureApplicationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)featureApplicationWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_featureApplicationWithIdentifier_completion___block_invoke_344;
  v13[3] = &unk_1E79D1708;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 featureApplicationWithIdentifier:v9 completion:v13];
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

- (void)submitApplyRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPaymentService_submitApplyRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKPaymentService_submitApplyRequest_completion___block_invoke_345;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitApplyRequest:v9 completion:v13];
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

- (void)submitDocumentRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKPaymentService_submitDocumentRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__PKPaymentService_submitDocumentRequest_completion___block_invoke_347;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitDocumentRequest:v9 completion:v13];
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

- (void)submitVerificationRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PKPaymentService_submitVerificationRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PKPaymentService_submitVerificationRequest_completion___block_invoke_348;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitVerificationRequest:v9 completion:v13];
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

- (void)submitTermsRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPaymentService_submitTermsRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKPaymentService_submitTermsRequest_completion___block_invoke_349;
  v13[3] = &unk_1E79D1758;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitTermsRequest:v9 completion:v13];
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

- (void)submitDeleteRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentService_submitDeleteRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKPaymentService_submitDeleteRequest_completion___block_invoke_350;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 submitDeleteRequest:v9 completion:v13];
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

- (void)submitTransactionAnswerForTransaction:(id)a3 questionType:(unint64_t)a4 answer:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v22 = a2;
  v12 = v11;
  v21 = v12;
  v13 = a5;
  v14 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKPaymentService_submitTransactionAnswerForTransaction_questionType_answer_completion___block_invoke_351;
  v18[3] = &unk_1E79C4860;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 submitTransactionAnswerForTransaction:v14 questionType:a4 answer:v13 completion:v18];
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

- (void)transactionsRequiringReviewForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKPaymentService_transactionsRequiringReviewForAccountWithIdentifier_completion___block_invoke_352;
  v13[3] = &unk_1E79D12B0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionsRequiringReviewForAccountWithIdentifier:v9 completion:v13];
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

- (id)categoryVisualizationMagnitudesForPassUniqueID:(id)a3
{
  v4 = a3;
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
  [v5 categoryVisualizationMagnitudesForPassUniqueID:v4 completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)categoryVisualizationMagnitudesForPassUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID_completion___block_invoke;
    aBlock[3] = &unk_1E79C8958;
    v17 = a2;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__PKPaymentService_categoryVisualizationMagnitudesForPassUniqueID_completion___block_invoke_353;
    v13[3] = &unk_1E79D12B0;
    v13[4] = self;
    v14 = v9;
    [v12 categoryVisualizationMagnitudesForPassUniqueID:v10 completion:v13];
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

- (void)recomputeCategoryVisualizationMangitudesForPassUniqueID:(id)a3 style:(int64_t)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPaymentService_recomputeCategoryVisualizationMangitudesForPassUniqueID_style___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v6 = a3;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  [v8 recomputeCategoryVisualizationMangitudesForPassUniqueID:v6 style:a4];
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

- (void)performDeviceCheckInWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPaymentService_performDeviceCheckInWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)setDeviceCheckInContextBuildVersion:(id)a3 outstandingAction:(int64_t)a4 forRegion:(id)a5
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPaymentService_setDeviceCheckInContextBuildVersion_outstandingAction_forRegion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v8 = a5;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  [v11 setDeviceCheckInContextBuildVersion:v9 outstandingAction:a4 forRegion:v8];
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

- (void)productsWithRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentService_productsWithRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKPaymentService_productsWithRequest_completion___block_invoke_355;
  v13[3] = &unk_1E79D1780;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 productsWithRequest:v9 completion:v13];
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

- (void)productsWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PKPaymentService_productsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)performProductActionRequest:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_performProductActionRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKPaymentService_performProductActionRequest_completion___block_invoke_358;
  v13[3] = &unk_1E79D1780;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 performProductActionRequest:v9 completion:v13];
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

- (void)storePassOwnershipToken:(id)a3 withIdentifier:(id)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_storePassOwnershipToken_withIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v6 = a4;
  v7 = a3;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v8];
  [v9 storePassOwnershipToken:v7 withIdentifier:v6];
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

- (void)passOwnershipTokenWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PKPaymentService_passOwnershipTokenWithIdentifier_completion___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = a2;
    v8 = a3;
    v9 = _Block_copy(aBlock);
    v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKPaymentService_passOwnershipTokenWithIdentifier_completion___block_invoke_359;
    v11[3] = &unk_1E79C4AE0;
    v11[4] = self;
    v12 = v7;
    [v10 passOwnershipTokenWithIdentifier:v8 completion:v11];
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

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_accountAttestationAnonymizationSaltWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)setAccountAttestationAnonymizationSalt:(id)a3 withCompletion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKPaymentService_setAccountAttestationAnonymizationSalt_withCompletion___block_invoke_362;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 setAccountAttestationAnonymizationSalt:v9 withCompletion:v13];
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

- (void)addPlaceholderPassWithConfiguration:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentService_addPlaceholderPassWithConfiguration_completion___block_invoke_363;
  v13[3] = &unk_1E79D17D0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 addPlaceholderPassWithConfiguration:v9 completion:v13];
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

- (void)subcredentialInvitationsWithCompletion:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_subcredentialInvitationsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_updateMetadataOnPassWithIdentifier_credential_completion___block_invoke_366;
  v16[3] = &unk_1E79C4770;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateMetadataOnPassWithIdentifier:v12 credential:v11 completion:v16];
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

- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentService_registerCredentialsWithIdentifiers_completion___block_invoke_367;
  v12[3] = &unk_1E79D17F8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v10 registerCredentialsWithIdentifiers:v8 completion:v12];
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

- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_revokeCredentialsWithIdentifiers_completion___block_invoke_369;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeCredentialsWithIdentifiers:v9 completion:v13];
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

- (void)revokeCredentialsWithReaderIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPaymentService_revokeCredentialsWithReaderIdentifiers_completion___block_invoke_370;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 revokeCredentialsWithReaderIdentifiers:v9 completion:v13];
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

- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __88__PKPaymentService_requestBackgroundRegistrationForCredentialWithIdentifier_completion___block_invoke;
  v15 = &unk_1E79C8958;
  v16 = v7;
  v17 = a2;
  v8 = v7;
  v9 = a3;
  v10 = _Block_copy(&v12);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10, v12, v13, v14, v15];
  [v11 requestBackgroundRegistrationForCredentialWithIdentifier:v9 completion:v8];
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

- (void)matchingInvitationOnDevice:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0);
  }
}

- (void)canAcceptInvitation:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)credentialWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKPaymentService_credentialWithIdentifier_completion___block_invoke_371;
  v13[3] = &unk_1E79D1820;
  v14 = v8;
  v12 = v8;
  [v11 credentialWithIdentifier:v9 completion:v13];
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

- (void)passSharesForCredentialIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKPaymentService_passSharesForCredentialIdentifier_completion___block_invoke_373;
  v13[3] = &unk_1E79C5468;
  v14 = v8;
  v12 = v8;
  [v11 passSharesForCredentialIdentifier:v9 completion:v13];
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

- (void)sharingInvitationWasInvalidated:(id)a3 withCredentialIdentifier:(id)a4 error:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v23 = a2;
  v12 = v11;
  v22 = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__PKPaymentService_sharingInvitationWasInvalidated_withCredentialIdentifier_error_completion___block_invoke_374;
  v19[3] = &unk_1E79C4770;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 sharingInvitationWasInvalidated:v15 withCredentialIdentifier:v14 error:v13 completion:v19];
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

- (void)pushProvisioningSharingIdentifiers:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPaymentService_pushProvisioningSharingIdentifiers___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)saveProvisioningSupportData:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKPaymentService_saveProvisioningSupportData_forPassUniqueIdentifier_completion___block_invoke_376;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 saveProvisioningSupportData:v12 forPassUniqueIdentifier:v11 completion:v16];
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

- (void)clearProvisioningSupportDataOfType:(unint64_t)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a4;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PKPaymentService_clearProvisioningSupportDataOfType_forPassUniqueIdentifier_completion___block_invoke_377;
  v15[3] = &unk_1E79C44A0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 clearProvisioningSupportDataOfType:a3 forPassUniqueIdentifier:v11 completion:v15];
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

- (void)statusForShareableCredentials:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentService_statusForShareableCredentials_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v9 = v8;
  v17 = v7;
  v18 = v9;
  v10 = v7;
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

- (void)provideEncryptedPushProvisioningTarget:(id)a3 sharingInstanceIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKPaymentService_provideEncryptedPushProvisioningTarget_sharingInstanceIdentifier_completion___block_invoke_380;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 provideEncryptedPushProvisioningTarget:v12 sharingInstanceIdentifier:v11 completion:v16];
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

- (void)prepareProvisioningTarget:(id)a3 checkFamilyCircle:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentService_prepareProvisioningTarget_checkFamilyCircle_completion___block_invoke_381;
  v15[3] = &unk_1E79D1848;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 prepareProvisioningTarget:v11 checkFamilyCircle:v5 completion:v15];
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

- (void)redeemEncryptedProvisioningTarget:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKPaymentShareableCredential alloc] initWithEncryptedProvisioningTarget:v7 provisioningSharingIdentifier:0 passThumbnailImageData:0];

  [(PKPaymentService *)self redeemPaymentShareableCredential:v8 completion:v6];
}

- (void)redeemPaymentShareableCredential:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPaymentService_redeemPaymentShareableCredential_completion___block_invoke_384;
  v13[3] = &unk_1E79D1870;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 redeemPaymentShareableCredential:v9 completion:v13];
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

- (void)redeemProvisioningSharingIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentService_redeemProvisioningSharingIdentifier_completion___block_invoke_386;
  v13[3] = &unk_1E79D1898;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 redeemProvisioningSharingIdentifier:v9 completion:v13];
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

- (void)currentSecureElementSnapshot:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKPaymentService_currentSecureElementSnapshot___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v14 = a2;
  v6 = v5;
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

- (void)reserveStorageForAppletTypes:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v20 = a2;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentService_reserveStorageForAppletTypes_metadata_completion___block_invoke_390;
  v16[3] = &unk_1E79D18E8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 reserveStorageForAppletTypes:v12 metadata:v11 completion:v16];
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

- (void)deleteReservation:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKPaymentService_deleteReservation_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PKPaymentService_deleteReservation_completion___block_invoke_392;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteReservation:v9 completion:v13];
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

- (void)transactionReceiptWithUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PKPaymentService_transactionReceiptWithUniqueID_completion___block_invoke_393;
  v13[3] = &unk_1E79D1910;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionReceiptWithUniqueID:v9 completion:v13];
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

- (void)transactionReceiptForTransactionWithIdentifier:(id)a3 updateIfNecessary:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v19 = a2;
  v10 = v9;
  v18 = v10;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PKPaymentService_transactionReceiptForTransactionWithIdentifier_updateIfNecessary_completion___block_invoke_395;
  v15[3] = &unk_1E79D1910;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 transactionReceiptForTransactionWithIdentifier:v11 updateIfNecessary:v5 completion:v15];
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

- (void)storeTransactionReceiptData:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKPaymentService_storeTransactionReceiptData_completion___block_invoke_396;
  v13[3] = &unk_1E79D1910;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 storeTransactionReceiptData:v9 completion:v13];
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

- (void)deleteTransactionReceiptWithUniqueID:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKPaymentService_deleteTransactionReceiptWithUniqueID_completion___block_invoke_397;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteTransactionReceiptWithUniqueID:v9 completion:v13];
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

- (void)transactionTagsForTransactionWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKPaymentService_transactionTagsForTransactionWithIdentifier_completion___block_invoke_398;
  v13[3] = &unk_1E79C4810;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 transactionTagsForTransactionWithIdentifier:v9 completion:v13];
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

- (BOOL)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)a3
{
  v4 = a3;
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
  [v5 willPassWithUniqueIdentifierAutomaticallyBecomeDefault:v4 completion:v7];
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

- (void)ambiguousTransactionWithServiceIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C8958;
  v17 = a2;
  v8 = v7;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKPaymentService_ambiguousTransactionWithServiceIdentifier_completion___block_invoke_399;
  v13[3] = &unk_1E79D1938;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 ambiguousTransactionWithServiceIdentifier:v9 completion:v13];
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

- (void)insertUserLegalAgreement:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PKPaymentService_insertUserLegalAgreement___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PKPaymentService_insertUserLegalAgreement___block_invoke_400;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 insertUserLegalAgreement:v4 completion:v7];
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

- (void)sendDeviceSharingCapabilitiesRequestForHandle:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentService_sendDeviceSharingCapabilitiesRequestForHandle_completion___block_invoke_2;
  v13[3] = &unk_1E79D1960;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 sendDeviceSharingCapabilitiesRequestForHandle:v9 completion:v13];
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

- (void)simulateSecureEvent:(id)a3
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PKPaymentService_simulateSecureEvent___block_invoke;
  v9 = &unk_1E79CAED8;
  v10 = self;
  v11 = a2;
  v4 = a3;
  v5 = [(PKPaymentService *)self _extendedRemoteObjectProxyWithFailureHandler:&v6];
  [v5 simulateSecureEvent:{v4, v6, v7, v8, v9, v10, v11}];
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

- (BOOL)_hasInterfaceOfType:(unint64_t)a3
{
  interfaceType = self->_interfaceType;
  v4 = interfaceType == 1;
  v5 = interfaceType < 2;
  if (a3 == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    [(PKPaymentService *)self _updateForceConnectionOnResume];
    v4 = v5;
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    [(PKPaymentService *)self _updateForceConnectionOnResume];
    v4 = v5;
  }
}

- (void)_accessDelegate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 count];
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
    v9 = v5;
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

          v4[2](v4, *(*(&v14 + 1) + 8 * v13++));
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)paymentPassForVirtualCard:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if ([v7 type] == 2)
    {
      v9 = [v7 identifier];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__PKPaymentService_VPAN__paymentPassForVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v18 = a2;
      v10 = v8;
      aBlock[4] = self;
      v17 = v10;
      v11 = _Block_copy(aBlock);
      v12 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v11];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__PKPaymentService_VPAN__paymentPassForVirtualCard_completion___block_invoke_14;
      v14[3] = &unk_1E79C4E78;
      v15 = v10;
      [v12 paymentPassForVPANID:v9 andLoadImages:1 completion:v14];
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Only VPAN virtual cards are supported via Payment Service", buf, 2u);
      }

      (*(v8 + 2))(v8, 0, 0);
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

- (void)virtualCardsWithActiveVPAN:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PKPaymentService_VPAN__virtualCardsWithActiveVPAN___block_invoke;
    aBlock[3] = &unk_1E79C9778;
    v14 = a2;
    v7 = v5;
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

- (void)vpanCardCredentialsForVirtualCard:(id)a3 authorization:(id)a4 merchantHost:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    if ([v11 type] == 2)
    {
      v15 = [v11 identifier];
      if (v15)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__PKPaymentService_VPAN__vpanCardCredentialsForVirtualCard_authorization_merchantHost_completion___block_invoke;
        aBlock[3] = &unk_1E79C9778;
        v24 = a2;
        v16 = v14;
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
        [v18 vpanCardCredentialsForVPANID:v15 authorization:v12 merchantHost:v13 completion:v20];

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
          v28 = v11;
        }
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[PKPaymentService(VPAN) vpanCardCredentialsForVirtualCard:authorization:merchantHost:completion:]";
        v27 = 2112;
        v28 = v11;
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

- (void)regenerateVPANCardCredentialsForVirtualCard:(id)a3 authorization:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if ([v9 type] == 2)
    {
      v12 = [v9 identifier];
      if (v12)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __95__PKPaymentService_VPAN__regenerateVPANCardCredentialsForVirtualCard_authorization_completion___block_invoke;
        aBlock[3] = &unk_1E79C9778;
        v21 = a2;
        v13 = v11;
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
        [v15 regenerateVPANCardCredentialsForVPANID:v12 authorization:v10 completion:v17];

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
          v25 = v9;
        }
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[PKPaymentService(VPAN) regenerateVPANCardCredentialsForVirtualCard:authorization:completion:]";
        v24 = 2112;
        v25 = v9;
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

- (void)updateDateLastUsedBySafari:(id)a3 forVirtualCard:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 type] == 2)
  {
    v12 = [v10 identifier];
    if (v12)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__PKPaymentService_VPAN__updateDateLastUsedBySafari_forVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v21 = a2;
      v13 = v11;
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
      [v15 updateDateLastUsedBySafari:v9 forVirtualCardWithIdentifier:v12 completion:v17];

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
        v25 = v10;
      }
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[PKPaymentService(VPAN) updateDateLastUsedBySafari:forVirtualCard:completion:]";
      v24 = 2112;
      v25 = v10;
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

- (void)updateCardholderNameFromSafari:(id)a3 forVirtualCard:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 type] == 2)
  {
    v12 = [v10 identifier];
    if (v12)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__PKPaymentService_VPAN__updateCardholderNameFromSafari_forVirtualCard_completion___block_invoke;
      aBlock[3] = &unk_1E79C9778;
      v21 = a2;
      v13 = v11;
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
      [v15 updateCardholderNameFromSafari:v9 forVirtualCardWithIdentifier:v12 completion:v17];

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
        v25 = v10;
      }
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[PKPaymentService(VPAN) updateCardholderNameFromSafari:forVirtualCard:completion:]";
      v24 = 2112;
      v25 = v10;
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKPaymentService_FPAN__isCheckingAutoFillEligibility__block_invoke;
  v5[3] = &unk_1E79C8E40;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 isCheckingAutoFillEligibility:v5];
  LOBYTE(v2) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)performAfterEligibilityFinishes:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKPaymentService_FPAN__performAfterEligibilityFinishes___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v14 = a2;
  v6 = v5;
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

- (void)activeFPANCardsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPaymentService_FPAN__activeFPANCardsWithOptions_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v16 = a2;
  v8 = v7;
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
  [v10 activeFPANCardsWithOptions:a3 completion:v12];
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

- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7
{
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v25 = a2;
  v14 = v13;
  aBlock[4] = self;
  v24 = v14;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = _Block_copy(aBlock);
  v19 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v18];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__PKPaymentService_FPAN__credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_40;
  v21[3] = &unk_1E79E0FB0;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 credentialForFPANCard:v17 authorization:v16 options:a5 merchantHost:v15 completion:v21];
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

- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_FPAN__insertFPANCardWithDescriptor_credential_completion___block_invoke_42;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertFPANCardWithDescriptor:v12 credential:v11 completion:v16];
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

- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKPaymentService_FPAN__updateFPANCardWithDescriptor_credential_completion___block_invoke_43;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateFPANCardWithDescriptor:v12 credential:v11 completion:v16];
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

- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKPaymentService_FPAN__deleteFPANCardWithDescriptor_completion___block_invoke_44;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteFPANCardWithDescriptor:v9 completion:v13];
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

- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKPaymentService_FPAN__canSaveFPANCardWithDescriptor_credential_completion___block_invoke_45;
  v16[3] = &unk_1E79E0FD8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 canSaveFPANCardWithDescriptor:v12 credential:v11 completion:v16];
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

- (void)userRejectedSavingFPANCardWithDescriptor:(id)a3 credential:(id)a4 options:(unint64_t)a5 permanent:(BOOL)a6
{
  v6 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPaymentService_FPAN__userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v10 = a4;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v12];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__PKPaymentService_FPAN__userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke_47;
  v14[3] = &unk_1E79C4E28;
  v14[4] = self;
  [v13 userRejectedSavingFPANCardWithDescriptor:v11 credential:v10 options:a5 permanent:v6 completion:v14];
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

- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke;
  aBlock[3] = &unk_1E79C9840;
  aBlock[4] = self;
  aBlock[5] = a2;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__PKPaymentService_FPAN__fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke_48;
  v18[3] = &unk_1E79E1000;
  v18[4] = self;
  v19 = v11;
  v17 = v11;
  [v16 fpanCardAndCredentialForPrimaryAccountIdentifier:v14 passUniqueID:v13 authorization:v12 completion:v18];
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

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
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
  [v14 fpanCredentialUsingPrimaryAccountIdentifier:v11 passUniqueID:v12 completion:v15];
  if (a6)
  {
    objc_storeStrong(a6, v17[5]);
  }

  if (a5)
  {
    objc_storeStrong(a5, v23[5]);
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

- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6
{
  v11 = a3;
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
  [v13 fpanDescriptorAndCredentialUsingFPAN:v11 completion:v14];
  if (a6)
  {
    objc_storeStrong(a6, v16[5]);
  }

  if (a4)
  {
    objc_storeStrong(a4, v28[5]);
  }

  if (a5)
  {
    objc_storeStrong(a5, v22[5]);
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

- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)a3
{
  v5 = a3;
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
  v10 = v5;
  v8 = v5;
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

- (void)cachedFPANCredentialsWithCompletion:(id)a3
{
  v5 = a3;
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
  v10 = v5;
  v8 = v5;
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

- (void)addPendingProvisioning:(id)a3
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__PKPaymentService_PendingProvisioning__addPendingProvisioning___block_invoke;
  v10 = &unk_1E79C9840;
  v11 = self;
  v12 = a2;
  v4 = a3;
  v5 = _Block_copy(&v7);
  v6 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v5, v7, v8, v9, v10, v11, v12];
  [v6 addPendingProvisioning:v4];
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

- (void)addPendingProvisionings:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PKPaymentService_PendingProvisioning__addPendingProvisionings_completion___block_invoke_14;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 addPendingProvisionings:v9 completion:v13];
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

- (void)retrievePendingProvisioningsWithType:(id)a3 completion:(id)a4
{
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentService_PendingProvisioning__retrievePendingProvisioningsWithType_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = v7;
  aBlock[4] = self;
  v16 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PKPaymentService_PendingProvisioning__retrievePendingProvisioningsWithType_completion___block_invoke_16;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 retrievePendingProvisioningsWithType:v9 completion:v13];
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

- (BOOL)hasPendingProvisioningsOfTypes:(id)a3
{
  v5 = a3;
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
  if (v5 && [v5 count])
  {
    v7 = [(PKPaymentService *)self _synchronousRemoteObjectProxyWithErrorHandler:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKPaymentService_PendingProvisioning__hasPendingProvisioningsOfTypes___block_invoke_18;
    v10[3] = &unk_1E79C4798;
    v10[4] = &v11;
    [v7 usingSynchronousProxy:1 hasPendingProvisioningsOfTypes:v5 completion:v10];
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

- (void)retrievePendingProvisioningOfType:(id)a3 withUniqueIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PKPaymentService_PendingProvisioning__retrievePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __107__PKPaymentService_PendingProvisioning__retrievePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke_20;
  v16[3] = &unk_1E79E2520;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 retrievePendingProvisioningOfType:v12 withUniqueIdentifier:v11 completion:v16];
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

- (void)removePendingProvisioningOfType:(id)a3 withUniqueIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKPaymentService_PendingProvisioning__removePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = v9;
  aBlock[4] = self;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__PKPaymentService_PendingProvisioning__removePendingProvisioningOfType_withUniqueIdentifier_completion___block_invoke_22;
  v16[3] = &unk_1E79C4888;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 removePendingProvisioningOfType:v12 withUniqueIdentifier:v11 completion:v16];
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