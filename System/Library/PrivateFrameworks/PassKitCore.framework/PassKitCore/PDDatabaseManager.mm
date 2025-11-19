@interface PDDatabaseManager
+ (BOOL)databaseExistsAtURL:(id)a3;
- (BOOL)accountEventExistsWithIdentifier:(id)a3;
- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)a3 forTransactionIdentifier:(id)a4;
- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)a3 forTransactionIdentifier:(id)a4;
- (BOOL)canPerformAction:(id)a3 forPassWithUniqueIdentifier:(id)a4;
- (BOOL)containerDatabaseExistsForContainerDatabase:(id)a3;
- (BOOL)didFinishInitialSyncForCloudStore:(id)a3 containerDatabase:(id)a4;
- (BOOL)flightExistsForPassWithUniqueID:(id)a3;
- (BOOL)getLastPushDate:(id *)a3 lastUpdateDate:(id *)a4 frequencyScore:(double *)a5 forPassTypeID:(id)a6;
- (BOOL)getPassTypeID:(id *)a3 teamID:(id *)a4 associatedPassTypeIdentifiers:(id *)a5 associatedApplicationIdentifiers:(id *)a6 forUniqueID:(id)a7;
- (BOOL)getRegistrationStatus:(unint64_t *)a3 date:(id *)a4 forSerialNumber:(id)a5 webService:(id)a6;
- (BOOL)getWebService:(id *)a3 updateContext:(id *)a4 forPassWithUniqueID:(id)a5;
- (BOOL)hasActiveBarcodePasses;
- (BOOL)hasActiveContactlessSecureElementPasses;
- (BOOL)hasActiveFlightSubscriptions;
- (BOOL)hasActiveFlights;
- (BOOL)hasActiveOrScheduledFlights;
- (BOOL)hasActiveSecureElementPasses;
- (BOOL)hasAnyAccountWithType:(unint64_t)a3;
- (BOOL)hasAnyMessagesForPassWithUniqueIdentifier:(id)a3;
- (BOOL)hasAnySharesForFlightWithIdentifier:(id)a3;
- (BOOL)hasAnyTransactionsForTransactionSourceIdentifiers:(id)a3;
- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4;
- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4;
- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4;
- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (BOOL)hasBarcodeBackgroundFetchRecordForPassUniqueIdentifier:(id)a3 nextBackgroundFetchDate:(id *)a4;
- (BOOL)hasCandidatePasses;
- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)a3;
- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4;
- (BOOL)hasMatchingCloudStoreRecord:(id)a3 inCloudStoreZone:(id)a4;
- (BOOL)hasPassesInExpiredSection;
- (BOOL)hasPassesWithPayloadState:(unint64_t)a3;
- (BOOL)hasPeerPaymentAccount;
- (BOOL)hasPushEnabledPassesForWebService:(id)a3;
- (BOOL)hasSecureElementPassesOfType:(int64_t)a3;
- (BOOL)hasSecureElementPassesWithFeatureIdentifier:(unint64_t)a3;
- (BOOL)hasTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4;
- (BOOL)hasTransactionWithTransactionIdentifier:(id)a3;
- (BOOL)insertBarcodeCredentials:(id)a3 forDPANIdentifier:(id)a4;
- (BOOL)insertOrUpdateEvaluatedPolicyDomainState:(id)a3 forDPANIdentifier:(id)a4;
- (BOOL)insertPass:(id)a3 withDaemonData:(id)a4 source:(int64_t)a5;
- (BOOL)markAuthenticationCompleteforTransactionIdentifier:(id)a3;
- (BOOL)notificationServiceIsEnabledForAnyPasses:(id)a3;
- (BOOL)passExistsForNonWebInAppPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 paymentApplicationStates:(id)a5;
- (BOOL)passExistsWithPassType:(unint64_t)a3;
- (BOOL)passExistsWithPassTypeID:(id)a3 serialNumber:(id)a4;
- (BOOL)passExistsWithPassTypeIdentifierHash:(id)a3;
- (BOOL)passExistsWithPaymentType:(unint64_t)a3;
- (BOOL)passExistsWithUniqueID:(id)a3;
- (BOOL)passesExistForFlightWithIdentifier:(id)a3;
- (BOOL)removeAllBarcodeCredentialValuesForDPANIdentifier:(id)a3;
- (BOOL)removeAllBarcodeCredentialsForDPANIdentifier:(id)a3;
- (BOOL)removeSelectedPaymentOffer:(id)a3 associatedWithPassUniqueID:(id)a4;
- (BOOL)resetTransactionAuthenticationForTransactionIdentifier:(id)a3;
- (BOOL)setBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 withPassUniqueIdentifier:(id)a5;
- (BOOL)setCommutePlanReminder:(id)a3 forCommutePlanIdentifier:(id)a4 withPassUniqueIdentifier:(id)a5;
- (BOOL)settingEnabled:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4;
- (BOOL)shouldIgnoreFieldWithProperties:(id)a3;
- (BOOL)transactionSourceExistsWithIdentifier:(id)a3;
- (BOOL)uniqueIDIsRevoked:(id)a3;
- (BOOL)updateAppletSubcredentials:(id)a3;
- (BOOL)updateAuxiliaryRegistrationRequirement:(id)a3 pass:(id)a4 isRegistered:(BOOL)a5;
- (BOOL)updateAuxiliaryRegistrationRequirementsForPass:(id)a3 isRegistered:(BOOL)a4;
- (BOOL)updateDisplayTimestamp:(id)a3 forBarcodeIdentifier:(id)a4;
- (BOOL)updateNextBarcodeBackgroundFetchDate:(id)a3 withRetryLevel:(int64_t)a4 forPassUniqueIdentifier:(id)a5;
- (BOOL)updatePass:(id)a3 withDaemonData:(id)a4 oldPass:(id *)a5 fromSource:(int64_t)a6;
- (BOOL)updatePaymentPINData:(id)a3 forTransactionIdentifier:(id)a4;
- (BOOL)updateTransactionSignatureData:(id)a3 forTransactionIdentifier:(id)a4;
- (BOOL)updateUserConfirmationData:(id)a3 forTransactionIdentifier:(id)a4;
- (BOOL)verifyIntegrity;
- (PDCloudStoreNotificationCoordinator)cloudStoreCoordinator;
- (PDDatabaseManager)initWithURL:(id)a3 delegate:(id)a4 report:(id *)a5;
- (PDDatabaseManagerDelegate)delegate;
- (PDDatabaseManagerNotificationServicesDelegate)notificationServicesDelegate;
- (PDDatabaseManagerPaymentServicesDelegate)paymentServicesDelegate;
- (PDDatabaseManagerWebServicesDelegate)webServicesDelegate;
- (id)_activeSecureElementPassPredicate;
- (id)_candidatePassesOfStyle:(int64_t)a3 matchingFurtherPredicate:(id)a4;
- (id)_databaseNotificationService:(id)a3;
- (id)_databaseWebService:(id)a3;
- (id)_datedPassPredicate;
- (id)_dbPaymentApplicationWithDPANIdentifier:(id)a3;
- (id)_deviceIdentifierForExistingServiceURL:(id)a3 registrationURL:(id)a4;
- (id)_insertContainerDatabaseForContainerDatabase:(id)a3;
- (id)_insertOrUpdatePaymentTransaction:(id)a3 transactionSourceIdentifier:(id)a4 transactionArchive:(id)a5 originDeviceID:(id)a6 insertionMode:(unint64_t)a7 performTruncation:(BOOL)a8 insertedTransaction:(BOOL *)a9;
- (id)_locatedCandidatePassesOfStyle:(int64_t)a3 matchingFurtherPredicate:(id)a4;
- (id)_locatedPredicate;
- (id)_messageServiceForPass:(id)a3;
- (id)_notificationServiceForPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6;
- (id)_passPredicateForRequest:(id)a3;
- (id)_passTypeForPass:(id)a3;
- (id)_passWithPaymentApplication:(id)a3;
- (id)_passesFilteredByAutomaticallyPresentPassEnabled:(id)a3;
- (id)_paymentNetworkIdentifiersForPaymentNetworks:(id)a3;
- (id)_predicateForActiveVPAN;
- (id)_predicateForCardType:(int64_t)a3;
- (id)_predicateForPassTypes:(unint64_t)a3;
- (id)_predicateForStyle:(int64_t)a3;
- (id)_predicateForStyles:(unint64_t)a3;
- (id)_predicateForType:(unint64_t)a3;
- (id)_predicateMatchingPassesForWebService:(id)a3;
- (id)_primaryPaymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)_readerIDPriorityForPasses:(id)a3 readerID:(id)a4;
- (id)_recomputedPaymentBalanceForIdentifier:(id)a3 value:(id)a4 currency:(id)a5 exponent:(int64_t)a6 unitDictionary:(id)a7;
- (id)_registeredPass:(id)a3;
- (id)_registeredPasses:(id)a3;
- (id)_secureElementPredicateForRequest:(id)a3;
- (id)_startOfTimeBlockForUnit:(unint64_t)a3 inCalendar:(id)a4 fromDate:(id)a5 forward:(BOOL)a6;
- (id)_transactionServiceForPass:(id)a3;
- (id)_transitPredicate;
- (id)_unlocatedPredicate;
- (id)_validPassPredicate;
- (id)_webServiceForPass:(id)a3 passType:(id)a4;
- (id)accessUserActivitySignalsForCollectionInterval:(id)a3;
- (id)accountBalancesForAccountIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 type:(unint64_t)a6 limit:(unint64_t)a7;
- (id)accountEndpointMetadataForAccountIdentifier:(id)a3 endpoint:(unint64_t)a4;
- (id)accountEnhancedMerchantBehaviorForAccountIdentifier:(id)a3;
- (id)accountEnhancedMerchantForPrivateIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)accountEnhancedMerchantsForAccountIdentifier:(id)a3;
- (id)accountEntityOrderingsForAccountIdentifier:(id)a3 entityType:(unint64_t)a4;
- (id)accountEventWithIdentifier:(id)a3;
- (id)accountIdentifierWithPreviousAccountIdentifier:(id)a3;
- (id)accountPromotionBehaviorForAccountIdentifier:(id)a3;
- (id)accountPromotionCompletionStepsForProgramIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)accountPromotionForProgramIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)accountPromotionsForAccountIdentifier:(id)a3;
- (id)accountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)accountUserForAccountWithIdentifier:(id)a3 handle:(id)a4;
- (id)accountUserWithAltDSID:(id)a3 accountIdentifier:(id)a4;
- (id)accountUserWithTransactionSourceIdentifier:(id)a3;
- (id)accountUsersForAccountWithIdentifier:(id)a3;
- (id)accountUsersForAccountWithIdentifier:(id)a3 accessLevel:(unint64_t)a4;
- (id)accountWithIdentifier:(id)a3;
- (id)accountWithTransactionSourceIdentifier:(id)a3;
- (id)accountsWithIdentifiers:(id)a3;
- (id)activeFlights;
- (id)activeOrScheduledFlights;
- (id)activeOrStaleFlights;
- (id)allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:(id)a3;
- (id)allSelectedPaymentOfferAssociatedWithPassUniqueID:(id)a3;
- (id)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3;
- (id)ambiguousTransactionWithServiceIdentifier:(id)a3;
- (id)anyEligiblePaymentOfferRewardsCriteriaForPass:(id)a3;
- (id)appleBalancePromotionForAccountIdentifier:(id)a3;
- (id)appletSubcredentialForSharedCredentialWithIdentifier:(id)a3;
- (id)appletSubcredentialWithIdentifier:(id)a3;
- (id)associatedAccountIdentifierForPassWithUniqueIdentifier:(id)a3;
- (id)auxiliaryItemIdentifiersForPassUniqueIdentifier:(id)a3;
- (id)balanceReminderThresholdForBalanceIdentifier:(id)a3 withPassUniqueIdentifier:(id)a4;
- (id)broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:(id)a3 transactionAccountIdentifier:(id *)a4 transactionAccountType:(int64_t *)a5 transactionAltDSID:(id *)a6;
- (id)candidatePassWithUniqueIdentifier:(id)a3;
- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8;
- (id)cloudStoreContainerChangeEventWithIdentifier:(id)a3;
- (id)cloudStoreRecordWithRecordName:(id)a3 recordType:(id)a4 inCloudStoreZone:(id)a5;
- (id)cloudStoreZonesForContainerDatabase:(id)a3;
- (id)cloudStoreZonesForContainerDatabaseWithName:(id)a3 scope:(int64_t)a4;
- (id)commutePlanReminderForCommutePlanIdentifier:(id)a3 withPassUniqueIdentifier:(id)a4;
- (id)contactlessAccessPaymentPassesWithTCI:(id)a3 readerId:(id)a4;
- (id)creditStatementWithIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)creditStatementWithIdentifier:(id)a3 accountIdentifiers:(id)a4;
- (id)databaseSubscriptionForContainerDatabase:(id)a3;
- (id)dbPeerPaymentPreferences;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)deleteAppleBalancePromotionForAccountWithIdentifier:(id)a3;
- (id)deletePaymentOfferEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4;
- (id)deviceSecureElementPassUniqueIDs;
- (id)deviceSpecificPaymentApplications;
- (id)discoveryItemWithIdentifier:(id)a3;
- (id)discoveryNotificationWithIdentifier:(id)a3;
- (id)displayProfileForPassWithUniqueIdentifier:(id)a3;
- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)a3 calendar:(id)a4 type:(unint64_t)a5 limit:(int64_t)a6;
- (id)engagementMessageWithIdentifier:(id)a3;
- (id)evaluatedPolicyDomainStateForDPANIdentifier:(id)a3;
- (id)featureApplicationWithIdentifier:(id)a3;
- (id)fetchDeviceEnviromentForClient:(int64_t)a3 andCompareToCurrentEnvironment:(id)a4 didChange:(BOOL *)a5;
- (id)fetchTimestampForCloudStore:(id)a3 containerDatabase:(id)a4;
- (id)firstValidBarcodeCredentialForDPANIdentifier:(id)a3;
- (id)flightForPassWithUniqueID:(id)a3;
- (id)flightWithIdentifier:(id)a3;
- (id)flightsWithOperatorAirlineCode:(id)a3 operatorFlightNumber:(unint64_t)a4 originalDepartureDate:(id)a5;
- (id)identityPassCredentialPropertiesForIdentityPasses;
- (id)identityPassCredentialPropertiesForPassUniqueIdentifier:(id)a3;
- (id)identityPassUniqueIDsOfTypes:(id)a3;
- (id)identityPassesOfTypes:(id)a3;
- (id)identityPassesWithIssuingCountryCode:(id)a3;
- (id)inStoreTopUpTokenForAccountIdentifier:(id)a3;
- (id)insertOrUpdateAccount:(id)a3;
- (id)insertOrUpdateAccountEndpointMetadata:(id)a3;
- (id)insertOrUpdateAccountStatementMetadata:(id)a3;
- (id)insertOrUpdateAccountUser:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdateAccountUsers:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdateAppleBalancePromotion:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:(id)a3;
- (id)insertOrUpdateDiscoveryNotification:(id)a3;
- (id)insertOrUpdateFeatureApplication:(id)a3;
- (id)insertOrUpdateFlight:(id)a3 forPassUniqueID:(id)a4;
- (id)insertOrUpdateFlight:(id)a3 forPassUniqueIDs:(id)a4 senderAddresses:(id)a5;
- (id)insertOrUpdateFlight:(id)a3 senderAddress:(id)a4;
- (id)insertOrUpdateFlightSubscription:(id)a3;
- (id)insertOrUpdateInStoreTopUpToken:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdateLiveRenderEnabled:(BOOL)a3 forPassWithUniqueIdentifier:(id)a4;
- (id)insertOrUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4;
- (id)insertOrUpdatePaymentMessage:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6;
- (id)insertOrUpdatePaymentOfferConfirmationRecord:(id)a3;
- (id)insertOrUpdatePaymentOfferEndpointMetadata:(id)a3;
- (id)insertOrUpdatePaymentSetupFeature:(id)a3;
- (id)insertOrUpdatePaymentTransaction:(id)a3 withPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 originDeviceID:(id)a6 insertionMode:(unint64_t)a7 performTruncation:(BOOL)a8 insertedTransaction:(BOOL *)a9;
- (id)insertOrUpdatePeerPaymentAccount:(id)a3;
- (id)insertOrUpdatePeerPaymentPreferences:(id)a3;
- (id)insertOrUpdatePhysicalCard:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdatePhysicalCards:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)insertOrUpdatePushProvisioningSharingMetadata:(id)a3;
- (id)insertOrUpdateRateLimitTokens:(id)a3;
- (id)insertOrUpdateRule:(id)a3;
- (id)insertOrUpdateSelectedPaymentOfferAssociatedWithPass:(id)a3 selectedOffer:(id)a4;
- (id)insertOrUpdateSharedAccountCloudStore:(id)a3 accountIdentifier:(id)a4;
- (id)insertOrUpdateTransactionReceipt:(id)a3;
- (id)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)a3 accountIdentifier:(id)a4 redeemed:(BOOL)a5 withRedemptionType:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8;
- (id)issuerInstallmentTransactionsForPassUniqueIdentifier:(id)a3;
- (id)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)a3 paymentHashes:(id)a4;
- (id)lastDeletionDateForWebService:(id)a3;
- (id)lastRegionErrorForTransaction:(id)a3;
- (id)lastUpdatedDateForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4;
- (id)lastUpdatedTagForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4;
- (id)lastUpdatedTagForWebService:(id)a3;
- (id)lastUsedBarcodeIdentifierForDPANIdentifier:(id)a3;
- (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)a3 accountType:(unint64_t)a4 maxProcessedAttemptCount:(int64_t)a5;
- (id)locatedCandidatePassesOfStyle:(int64_t)a3;
- (id)locatedDatelessCandidatePassesOfStyle:(int64_t)a3;
- (id)locationsByUniqueIDInBoundingBoxOfRegion:(id)a3;
- (id)mapsBrandWithIdentifier:(unint64_t)a3;
- (id)mapsMerchantWithIdentifier:(unint64_t)a3;
- (id)markStatementMetadataItems:(id)a3 asProcessed:(BOOL)a4 error:(unint64_t)a5 statementIdentifier:(id)a6 accountIdentifier:(id)a7;
- (id)maxIngestedDateForRequest:(id)a3;
- (id)merchantForPassUniqueIdentifier:(id)a3 auxiliaryPassInformationItemIdentifier:(id)a4;
- (id)messageServiceForPaymentApplication:(id)a3;
- (id)messagesForPassWithUniqueIdentifier:(id)a3;
- (id)minIngestedDateForRequest:(id)a3;
- (id)nextFlightStaleDate;
- (id)nextPossibleCloudStoreShareOperationForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5;
- (id)nextPossibleFetchDateForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5;
- (id)nextStartOfYearFromDate:(id)a3;
- (id)notificationServiceOfType:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4;
- (id)passAnnotationsForPassUniqueIdentifier:(id)a3;
- (id)passLiveRenderForPassUniqueIdentifier:(id)a3;
- (id)passUniqueIDsForFlightIdentifiers:(id)a3;
- (id)passUniqueIDsOfType:(unint64_t)a3;
- (id)passUniqueIdentifierForMostRecentVisibleTransaction;
- (id)passUniqueIdentifierForTransactionSourceIdentifier:(id)a3 includingAccountUsers:(BOOL)a4;
- (id)passUniqueIdentifierForTransactionWithIdentifier:(id)a3;
- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5;
- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4;
- (id)passUniqueIdentifierWithAssociatedAccountIdentifier:(id)a3;
- (id)passUniqueIdentifierWithCredentialIdentifier:(id)a3;
- (id)passUniqueIdentifierWithPaymentApplication:(id)a3;
- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)a3;
- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)a3 subcredentialIdentifier:(id)a4;
- (id)passUniqueIdentifierWithPrimaryAccountIdentifier:(id)a3;
- (id)passUpdateContextForSerialNumber:(id)a3 webService:(id)a4;
- (id)passWithPassTypeID:(id)a3 serialNumber:(id)a4;
- (id)passWithPaymentApplication:(id)a3;
- (id)passWithPaymentApplicationIdentifier:(id)a3;
- (id)passWithPaymentApplicationIdentifier:(id)a3 secureElementIdentifiers:(id)a4;
- (id)passWithPrimaryAccountIdentifier:(id)a3;
- (id)passWithProvisioningCredentialHash:(id)a3;
- (id)passWithUniqueIdentifier:(id)a3;
- (id)passWithVPANIdentifier:(id)a3;
- (id)passes;
- (id)passesEnabledForValuedAddedServicesWithAutomaticSelection:(BOOL)a3;
- (id)passesForInAppPaymentOnNetworks:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 webService:(id)a8;
- (id)passesForNonWebInAppPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentApplicationStates:(id)a6 paymentRequestType:(id)a7 isMultiTokensRequest:(BOOL)a8 webService:(id)a9;
- (id)passesForNotificationService:(id)a3;
- (id)passesForPaymentType:(unint64_t)a3;
- (id)passesForPaymentTypes:(id)a3;
- (id)passesForRequest:(id)a3;
- (id)passesForWebPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 webService:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 isMultiTokensRequest:(BOOL)a8;
- (id)passesForWebService:(id)a3;
- (id)passesOfCardType:(int64_t)a3;
- (id)passesOfStyles:(unint64_t)a3;
- (id)passesOfType:(unint64_t)a3;
- (id)passesSupportingIssuerBinding;
- (id)passesSupportingIssuerBindingWithPayloadState:(unint64_t)a3;
- (id)passesWithActiveVPAN;
- (id)passesWithISO18013Credentials;
- (id)passesWithNextBackgroundFetchDateBeforeDate:(id)a3;
- (id)passesWithPairedReaderIdentifier:(id)a3;
- (id)passesWithPassTypeID:(id)a3;
- (id)passesWithPassTypeIdentifierHash:(id)a3;
- (id)passesWithPassTypeIdentifierHash:(id)a3 andAssociatedPassTypeIdentifierHash:(id)a4;
- (id)passesWithPassTypeIdentifierHashes:(id)a3 automaticSelectionOnly:(BOOL)a4;
- (id)paymentApplicationForTransactionSourceIdentifier:(id)a3;
- (id)paymentApplicationIdentifierForTransactionSourceIdentifier:(id)a3;
- (id)paymentApplicationWithDPANIdentifier:(id)a3;
- (id)paymentApplicationWithPassUniqueIdentifier:(id)a3 secureElementIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5;
- (id)paymentApplicationWithVPANIdentifier:(id)a3;
- (id)paymentApplicationsForNotificationService:(id)a3;
- (id)paymentApplicationsForPassUniqueIdentifier:(id)a3;
- (id)paymentBalanceWithIdentifier:(id)a3 forPassUniqueIdentifier:(id)a4;
- (id)paymentFundingSourceForIdentifier:(id)a3 accountIdentifier:(id)a4;
- (id)paymentFundingSourcesForAccountIdentifier:(id)a3;
- (id)paymentPassesEligibleForDefaultCardSelection;
- (id)paymentPassesPendingActivation;
- (id)paymentPassesWithAssociatedPassTypeIdentifierHashes:(id)a3 automaticSelectionOnly:(BOOL)a4;
- (id)paymentPassesWithIssuerCountryCodes:(id)a3;
- (id)paymentSetupFeatureWithIdentifier:(id)a3;
- (id)paymentTransactionForIdentifier:(id)a3;
- (id)paymentTransactionWithIdentifier:(id)a3;
- (id)paymentTransactionsWithFullPaymentHashes:(id)a3 transactionSourceIdentifiers:(id)a4;
- (id)peerPaymentAccount;
- (id)peerPaymentAccountForTransactionSourceIdentifier:(id)a3;
- (id)peerPaymentAccountsWithIdentifiers:(id)a3;
- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 excludingPaymentMode:(unint64_t)a4 excludingAccountState:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7;
- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)peerPaymentCounterpartImageData;
- (id)peerPaymentCounterpartImageDataForTransactionWithIdentifier:(id)a3;
- (id)peerPaymentCounterpartImageDataWithIdentifier:(id)a3;
- (id)peerPaymentEncryptionCertificateForDestination:(unint64_t)a3;
- (id)peerPaymentPendingRequestsForPeerPaymentAccount;
- (id)peerPaymentPendingRequestsForRequestTokens:(id)a3;
- (id)peerPaymentPreferences;
- (id)peerPaymentRecurringPaymentWithIdentifier:(id)a3;
- (id)peerPaymentRecurringPayments;
- (id)peerPaymentRecurringPaymentsWithType:(unint64_t)a3;
- (id)peerPaymentUserInfo;
- (id)physicalCardsForAccountWithIdentifier:(id)a3;
- (id)placedHoldsWithAccountIdentifier:(id)a3;
- (id)previousAccountIdentifierForAccountIdentifier:(id)a3;
- (id)primaryAccountIdentifierForAssociatedAccountIdentifier:(id)a3;
- (id)primaryAccountIdentifierForTransactionSourceIdentifier:(id)a3;
- (id)primaryPaymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)primarySubcredentialIdentifiersForPassUniqueIdentifier:(id)a3;
- (id)primaryTransactionSourceIdentifierForAccountUserAltDSID:(id)a3 accountIdentifier:(id)a4;
- (id)pushEnabledPassTypeIDs;
- (id)rateLimitTokensForBundleIdentifier:(id)a3 operation:(int64_t)a4;
- (id)regionsForTransaction:(id)a3 localeIdentifier:(id)a4;
- (id)removeMapsDataForTransactionWithIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4 issueReportIdentifier:(id)a5;
- (id)removePeerPaymentAccount;
- (id)removePeerPaymentPreferences;
- (id)replacePhysicalCards:(id)a3 forAccountWithIdentifier:(id)a4;
- (id)retrieveDirtyAppletStates;
- (id)scheduledPaymentsWithAccountIdentifier:(id)a3 includeFailedRecurringPayments:(BOOL)a4;
- (id)secureElementPassPrimaryAccountIdentifiers;
- (id)secureElementPassSerialNumbers;
- (id)secureElementPassesForRequest:(id)a3;
- (id)selectedPaymentOfferAssociatedWithPassUniqueID:(id)a3 selectedPaymentOfferType:(unint64_t)a4 storageType:(unint64_t)a5;
- (id)selectedPaymentOfferForPassUniqueID:(id)a3 offerIdentifier:(id)a4 type:(unint64_t)a5;
- (id)selectedPaymentOfferForPassUniqueID:(id)a3 sessionIdentifier:(id)a4 type:(unint64_t)a5;
- (id)serviceIdentifierForTransactionIdentifier:(id)a3 accountIdentifier:(id *)a4 accountType:(int64_t *)a5;
- (id)setAccounts:(id)a3;
- (id)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4;
- (id)setDiscoveryItems:(id)a3;
- (id)setFeatureApplications:(id)a3;
- (id)setFeatureApplications:(id)a3 forAccountIdentifier:(id)a4;
- (id)setPaymentSetupFeatures:(id)a3;
- (id)setScheduledPayments:(id)a3 forAccount:(id)a4;
- (id)setTransfers:(id)a3 forAccount:(id)a4;
- (id)sharedAccountCloudStoreForAccountIdentifier:(id)a3;
- (id)subcredentialIdentifiersByAIDForSecureElementIdentifiers:(id)a3;
- (id)subscriptionForFlightWithIdentifier:(id)a3;
- (id)syncablePassUniqueIDs;
- (id)tagLastUpdateDateForWebService:(id)a3;
- (id)tagsForTransactionWithIdentifier:(id)a3;
- (id)tapToRadarPromptWithReason:(id)a3;
- (id)tokenDataForCloudStore:(id)a3 containerDatabase:(id)a4;
- (id)transactionArchiveForCounterpartImageData:(id)a3;
- (id)transactionArchiveForPendingRequest:(id)a3;
- (id)transactionArchiveForRecurringPayment:(id)a3;
- (id)transactionArchiveForTransactionIdentifier:(id)a3;
- (id)transactionArchiveForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4;
- (id)transactionAuthenticationResultForTransactionIdentifier:(id)a3;
- (id)transactionCountByPeriodForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4 includePurchaseTotal:(BOOL)a5;
- (id)transactionReceiptWithUniqueID:(id)a3;
- (id)transactionServiceForPaymentApplication:(id)a3;
- (id)transactionSourceIdentifierForAccountIdentifier:(id)a3;
- (id)transactionSourceIdentifierForAccountUserAltDSID:(id)a3 accountIdentifier:(id)a4;
- (id)transactionSourceIdentifierForPeerPaymentAccountIdentifier:(id)a3;
- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5;
- (id)transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:(id)a3;
- (id)transactionSourceIdentifiersForPassUniqueIdentifier:(id)a3;
- (id)transactionWithReferenceIdentifier:(id)a3;
- (id)transactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5;
- (id)transactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4;
- (id)transactionWithTransactionIdentifier:(id)a3;
- (id)transactionsWithoutRegionMatchingMapsMerchant:(id)a3 limit:(unint64_t)a4;
- (id)transitPasses;
- (id)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4;
- (id)unexpiredPassesOrderedByGroup;
- (id)unlocatedCandidatePassesOfStyle:(int64_t)a3;
- (id)unregisteredAuxiliaryCapabilityRequirementsForPass:(id)a3;
- (id)unsyncedPassesInContainer:(id)a3;
- (id)updateDiscoveryItem:(id)a3;
- (id)updateDiscoveryItemsWithDialogRequestSourcedItems:(id)a3;
- (id)updateDiscoveryItemsWithRemoteItems:(id)a3;
- (id)updateDiscoveryItemsWithRuleResults:(id)a3;
- (id)updateDiscoveryNotifications:(id)a3;
- (id)updateDiscoveryNotificationsForRuleResults:(id)a3;
- (id)updateDiscoveryNotificationsWithRemoteNotifications:(id)a3;
- (id)updateEngagementMessage:(id)a3;
- (id)updateEngagementMessages:(id)a3;
- (id)updateEngagementMessagesForRuleResults:(id)a3;
- (id)updateEngagementMessagesWithRemoteMessages:(id)a3;
- (id)updateFlightWithIdentifier:(id)a3 usingUpdateContent:(id)a4;
- (id)updateMerchant:(id)a3 forTransaction:(id)a4 passUniqueIdentifier:(id)a5;
- (id)updateRedemptionType:(unint64_t)a3 forPaymentTransaction:(id)a4 sourceIdentifier:(id)a5;
- (id)updateRules:(id)a3;
- (id)updateStatementMetadataWithReport:(id)a3 reportDate:(id)a4;
- (id)updateSuppressBehavior:(unint64_t)a3 forPaymentTransaction:(id)a4 sourceIdentifier:(id)a5;
- (id)updatedPassAnnotationsForPasses:(id)a3;
- (id)userActivitySignalsForCollectionInterval:(id)a3;
- (id)validNFCBarcodePassUniqueIDs;
- (id)valueAddedMerchantWithIdentifier:(id)a3;
- (id)valueAddedServiceTransactionWithIdentifier:(id)a3;
- (id)webServiceForPass:(id)a3;
- (id)webServicesForPassTypeID:(id)a3;
- (int64_t)_accountPIDForEndpointBackoffType:(unint64_t)a3 accountIdentifier:(id)a4;
- (int64_t)barcodeBackgroundFetchRetryLevelForPassUniqueIdentifier:(id)a3;
- (int64_t)cloudStoreContainerChangeEventCount;
- (int64_t)indexingMetadataVersionForType:(unint64_t)a3;
- (int64_t)primaryPaymentApplicationStateForPassUniqueIdentifier:(id)a3;
- (int64_t)spotlightIndexingVersion;
- (unint64_t)countActiveSecureElementPasses;
- (unint64_t)countOfPassesForRequest:(id)a3;
- (unint64_t)countPassesOfType:(unint64_t)a3;
- (unint64_t)countPassesPreventingWalletDeletion;
- (unint64_t)indexingMetadataStatusForType:(unint64_t)a3;
- (unint64_t)isAuxiliaryRegistrationRequirementRegistered:(id)a3 pass:(id)a4;
- (unint64_t)numberOfBarcodeCredentialsDisplayedAfterDate:(id)a3 forDPANIdentifier:(id)a4;
- (unint64_t)numberOfPassesOfType:(id)a3;
- (unint64_t)numberOfRealPasses;
- (unint64_t)numberOfTransactionReceipts;
- (unint64_t)numberOfValidBarcodeCredentialsForDPANIdentifier:(id)a3;
- (unint64_t)passTypeForPassUniqueIdentifier:(id)a3;
- (unint64_t)paymentOfferCriteriaTypeForCriteriaIdentifier:(id)a3;
- (unint64_t)registrationStatusForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4;
- (unint64_t)transactionSourceTypeForTransactionSourceIdentifier:(id)a3;
- (void)_applyDemoFelicaAppletStateToPass:(id)a3;
- (void)_applyDemoPaymentApplicationToPass:(id)a3;
- (void)_applyDemoPaymentTransactionsToPass:(id)a3;
- (void)_createDatabaseAtURL:(id)a3 report:(id *)a4;
- (void)_deleteNotificationServiceIfOrphaned:(id)a3;
- (void)_deletePassTypeIfOrphaned:(id)a3;
- (void)_deleteWebServiceIfOrphaned:(id)a3;
- (void)_migrateObjectSettingsWithSafeHavenArchiveURL:(id)a3;
- (void)_registerPasses:(id)a3;
- (void)_setObjectSettingsManager:(id)a3;
- (void)_trimCatalog:(id)a3 andBuildPassPredicate:(id *)a4;
- (void)_updateCloudStoreWithTransactions:(id)a3 transactionSourceIdentifier:(id)a4;
- (void)_updatePaymentBalancesAndPlansForTransitAppletState:(id)a3 passUniqueIdentifier:(id)a4 paymentApplicationPID:(int64_t)a5 unitDictionary:(id)a6;
- (void)_validateDefaultPaymentPassOrdering;
- (void)accessDatabaseUsingBlock:(id)a3;
- (void)addCloudStoreContainerChangeEvent:(id)a3;
- (void)addPeerPaymentAccountIdentifierToDatabaseTransactions;
- (void)archiveMessageWithIdentifier:(id)a3;
- (void)associateTransaction:(id)a3 toRegion:(id)a4;
- (void)computeExtraneousUniqueIDs:(id *)a3 missingUniqueIDs:(id *)a4;
- (void)computeTransactionReceiptExtraneousUniqueIDs:(id *)a3 missingUniqueIDs:(id *)a4 removedUniqueIDs:(id *)a5;
- (void)deleteAccountEndpointMetadataForAccountIdentifier:(id)a3 endpoint:(unint64_t)a4;
- (void)deleteAccountEnhancedMerchant:(id)a3 accountIdentifier:(id)a4;
- (void)deleteAccountEnhancedMerchantBehaviorForAccountIdentifier:(id)a3;
- (void)deleteAccountEntityOrderingsForAccountIdentifier:(id)a3 entityType:(unint64_t)a4;
- (void)deleteAccountPromotion:(id)a3 accountIdentifier:(id)a4;
- (void)deleteAccountPromotionBehaviorForAccountIdentifier:(id)a3;
- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4;
- (void)deleteAccountUserWithAltDSID:(id)a3 forAccountWithIdentifier:(id)a4;
- (void)deleteAllMessagesFromPaymentPassWithUniqueIdentifier:(id)a3;
- (void)deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:(id)a3;
- (void)deleteAllPaymentBalancesForPassUniqueIdentifier:(id)a3;
- (void)deleteAllPeerPaymentCounterpartImageData;
- (void)deleteAllPeerPaymentEncryptionCertificates;
- (void)deleteAllPeerPaymentRecurringPayments;
- (void)deleteAllTransactionsFromTransactionSourceIdentifiers:(id)a3;
- (void)deleteAndRecreateDatabase;
- (void)deleteAssociatedFlightForPassUniqueID:(id)a3;
- (void)deleteDatabase;
- (void)deleteDirtyAppletStatesForTransitAppletStateDirty:(id)a3;
- (void)deleteFlightSubscriptionWithChannelIdentifier:(id)a3;
- (void)deleteFlightWithIdentifier:(id)a3;
- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)a3;
- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)a3;
- (void)deleteMerchantForPassUniqueIdentifier:(id)a3 auxiliaryPassInformationItemIdentifier:(id)a4;
- (void)deletePassWithUniqueIdentifier:(id)a3;
- (void)deletePaymentTransactionWithIdentifier:(id)a3;
- (void)deletePaymentTransactionsWithIdentifiers:(id)a3;
- (void)deletePeerPaymentCounterpartImageDataForIdentifier:(id)a3;
- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount;
- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)a3;
- (void)deletePeerPaymentRecurringPaymentsForIdentifiers:(id)a3;
- (void)deletePeerPaymentUserInfo;
- (void)deleteRetryBackoffForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5;
- (void)deleteRetryCloudStoreShareOperationBackoffForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5;
- (void)deleteSharesForFlightWithIdentifier:(id)a3 senderAddress:(id)a4;
- (void)deleteSubscriptionForFlightWithIdentifier:(id)a3;
- (void)deleteTransactionReceiptWithUniqueID:(id)a3;
- (void)dispatchDelegateCallback:(id)a3;
- (void)enumerateOrganizationNamesForPassTypeID:(id)a3 withHandler:(id)a4;
- (void)enumeratePassUpdateContextsForWebService:(id)a3 withHandler:(id)a4;
- (void)failedToAssociateTransactionToRegion:(id)a3 error:(id)a4;
- (void)fieldMetadataForFieldWithProperties:(id)a3 withExpressPassManager:(id)a4 completion:(id)a5;
- (void)generateDemoTransactionsForAllPaymentPasses;
- (void)getCatalog:(id *)a3 passes:(id *)a4 dbStates:(id *)a5 ofPassTypes:(unint64_t)a6 limitResults:(BOOL)a7;
- (void)increaseRetryBackoffLevelForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5;
- (void)increaseRetryCloudStoreShareOperationBackoffLevelForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5;
- (void)insertAccountBalance:(id)a3 forAccountIdentifier:(id)a4;
- (void)insertDynamicAssociatedDomains:(id)a3;
- (void)insertMerchant:(id)a3 forPassUniqueIdentifier:(id)a4 auxiliaryPassInformationItemIdentifier:(id)a5;
- (void)insertOrUpdateAccountEnhancedMerchant:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountEnhancedMerchantBehavior:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountEnhancedMerchants:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountEntityOrderings:(id)a3 accountIdentifier:(id)a4 entityType:(unint64_t)a5;
- (void)insertOrUpdateAccountPromotion:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountPromotionBehavior:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountPromotions:(id)a3 accountIdentifier:(id)a4;
- (void)insertOrUpdateAccountTaxForms:(id)a3 forAccountIdentifier:(id)a4;
- (void)insertOrUpdateCloudStoreRecords:(id)a3 inCloudStoreZone:(id)a4;
- (void)insertOrUpdateCloudStoreZone:(id)a3 containerDatabase:(id)a4;
- (void)insertOrUpdateCreditStatements:(id)a3 forAccountIdentifier:(id)a4;
- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentMemo:(id)a3 counterpartImageDataIdentifier:(id)a4 forTransactionWithServiceIdentifier:(id)a5 completion:(id)a6;
- (void)insertOrUpdatePeerPaymentCounterpartImageData:(id)a3;
- (void)insertOrUpdatePeerPaymentEncryptionCertificate:(id)a3;
- (void)insertOrUpdatePeerPaymentPendingRequests:(id)a3;
- (void)insertOrUpdatePeerPaymentRecurringPayments:(id)a3;
- (void)insertOrUpdatePeerPaymentUserInfo:(id)a3;
- (void)insertOrUpdateSavingsAccountStatements:(id)a3 forAccountIdentifier:(id)a4;
- (void)insertOrUpdateTransactionsForInstallmentPayments:(id)a3 installmentPlan:(id)a4 accountIdentifier:(id)a5 transactionSourceIdentifier:(id)a6 transactionProcessingBlock:(id)a7;
- (void)insertOrUpdateValueAddedMerchant:(id)a3;
- (void)insertOrUpdateValueAddedServiceTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentTransaction:(id)a5;
- (void)introduceDuplicateUniqueID;
- (void)introduceExtraneousUniqueID;
- (void)introduceMissingUniqueID;
- (void)markAllIndexedContentForReindexingOfType:(unint64_t)a3;
- (void)markAllIndexedContentForVerifyingOfType:(unint64_t)a3;
- (void)markAllPassesAsUnsyncedInContainer:(id)a3;
- (void)markAllVerifyingContentForReindexingOfType:(unint64_t)a3;
- (void)markPassAsSynced:(id)a3;
- (void)migrateObjectSettings;
- (void)noteObjectSharedWithUniqueID:(id)a3;
- (void)prepareToDeletePassWithUniqueIdentifier:(id)a3;
- (void)recomputeBalancesForPaymentPass:(id)a3;
- (void)recomputeCategoryVisualizationMagnitudesForPassUniqueID:(id)a3 withStyle:(int64_t)a4;
- (void)removeCloudStoreZone:(id)a3 containerDatabase:(id)a4;
- (void)removeContainerDatabaseForContainerDatabase:(id)a3;
- (void)removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:(id)a3;
- (void)removeRecordFetchTasks:(id)a3;
- (void)resetAccountBalancesForAccountIdentifier:(id)a3;
- (void)resetIndexedContent;
- (void)resolvePendingTransitTransactionAmountsWithPaymentPass:(id)a3;
- (void)setTags:(id)a3 toTransactionWithIdentifier:(id)a4;
- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)a3;
- (void)truncatePaymentBalancesForPassUniqueIdentifier:(id)a3 toMaximumEntityCount:(int64_t)a4;
- (void)updateAllPeerPaymentRecurringPayments:(id)a3;
- (void)updateAppLaunchToken:(id)a3 forNotificationService:(id)a4;
- (void)updateAppletCommutePlans:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplicationPID:(int64_t)a5;
- (void)updateAuthenticationToken:(id)a3 forNotificationService:(id)a4;
- (void)updateCardholderNameFromSafari:(id)a3 forVirtualCardWithIdentifier:(id)a4;
- (void)updateChangeToken:(id)a3 fetchTimestamp:(id)a4 forCloudStoreZone:(id)a5 inContainerDatabase:(id)a6;
- (void)updateDatabaseSubscription:(id)a3 containerDatabase:(id)a4;
- (void)updateDateLastUsedBySafari:(id)a3 forVirtualCardWithIdentifier:(id)a4;
- (void)updateDidFinishInitialSync:(BOOL)a3 forCloudStoreZone:(id)a4 inContainerDatabase:(id)a5;
- (void)updateImpressionCount:(int64_t)a3 promotionProgramIdentifier:(id)a4 accountIdentifier:(id)a5;
- (void)updateImpressionCountsForPromotions:(id)a3 accountIdentifier:(id)a4;
- (void)updateIndexingMetadataStatus:(unint64_t)a3 version:(int64_t)a4 forType:(unint64_t)a5;
- (void)updateIngestedDate:(id)a3 forUniqueID:(id)a4;
- (void)updateLastDeletionDate:(id)a3 forWebService:(id)a4;
- (void)updateLastModifiedTag:(id)a3 forSerialNumber:(id)a4 webService:(id)a5;
- (void)updateLastPushDate:(id)a3 frequencyScore:(double)a4 forPassTypeID:(id)a5;
- (void)updateLastUpdateDate:(id)a3 forPassTypeID:(id)a4;
- (void)updateLastUpdatedDate:(id)a3 forNotificationService:(id)a4;
- (void)updateLastUpdatedDate:(id)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5;
- (void)updateLastUpdatedTag:(id)a3 forNotificationService:(id)a4;
- (void)updateLastUpdatedTag:(id)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5;
- (void)updateLastUpdatedTag:(id)a3 forWebService:(id)a4;
- (void)updateMapsBrand:(id)a3;
- (void)updateMapsMerchant:(id)a3;
- (void)updateModifiedSource:(int64_t)a3 forUniqueID:(id)a4;
- (void)updateNFCPayloadState:(unint64_t)a3 forPassUniqueIdentifier:(id)a4 didChange:(BOOL *)a5;
- (void)updateNotificationService:(id)a3;
- (void)updatePassAnnotationsForPassWithUniqueIdentifier:(id)a3 withSortingState:(int64_t)a4;
- (void)updatePassesWithSyncInformation:(id)a3;
- (void)updatePaymentBalances:(id)a3 forPassUniqueIdentifier:(id)a4 transactionSequenceNumber:(id)a5;
- (void)updatePaymentPlans:(id)a3 forPassUniqueIdentifier:(id)a4;
- (void)updatePeerPaymentMemo:(id)a3 forTransactionWithServiceIdentifier:(id)a4;
- (void)updatePeerPaymentMessageReceivedDate:(id)a3 forTransactionWithServiceIdentifier:(id)a4;
- (void)updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:(id)a3 usingUpdater:(id)a4 withHandler:(id)a5;
- (void)updateRecordFetchTask:(id)a3;
- (void)updateRegistrationStatus:(unint64_t)a3 date:(id)a4 forSerialNumber:(id)a5 webService:(id)a6;
- (void)updateRegistrationStatus:(unint64_t)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5;
- (void)updateRequiresMerchantReprocessing:(BOOL)a3 forTransactionWithIdentifier:(id)a4;
- (void)updateRevocationStatus:(BOOL)a3 forUniqueID:(id)a4;
- (void)updateSettings:(unint64_t)a3 forObjectWithUniqueIdentifier:(id)a4;
- (void)updateSettings:(unint64_t)a3 forPass:(id)a4;
- (void)updateSettings:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4;
- (void)updateSpotlightIndexingVersion:(int64_t)a3;
- (void)updateSuppressBehavior:(unint64_t)a3 forPaymentTransactions:(id)a4 sourceIdentifier:(id)a5;
- (void)updateSuppressBehavior:(unint64_t)a3 forTransactionSourceIdentifier:(id)a4 serviceIdentifier:(id)a5;
- (void)updateTransactionArchive:(id)a3 forCounterpartImageData:(id)a4;
- (void)updateTransactionArchive:(id)a3 forPendingRequest:(id)a4;
- (void)updateTransactionArchive:(id)a3 forRecurringPayment:(id)a4;
- (void)updateTransitAppletStateWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 forceTransactionGeneration:(BOOL)a7 recoverMissingTransactions:(BOOL)a8 balanceLabelDictionary:(id)a9 unitDictionary:(id)a10 planLabelDictionary:(id)a11 completion:(id)a12;
- (void)updateTransitAppletStateWithStationNames:(id)a3 forPaymentApplication:(id)a4 withPassUniqueIdentifier:(id)a5;
- (void)updateWebService:(id)a3;
- (void)valueAddedMerchantWasPresented:(id)a3;
@end

@implementation PDDatabaseManager

- (void)_validateDefaultPaymentPassOrdering
{
  v3 = PDDefaultPaymentPassUniqueIdentifier();
  v4 = v3;
  if (v3)
  {
    database = self->_database;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100426CB4;
    v6[3] = &unk_10083C2B8;
    v7 = v3;
    v8 = self;
    sub_1005D4424(database, v6);
  }
}

- (id)paymentPassesPendingActivation
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v15[0] = v4;
  v5 = [Pass predicateForPrimaryPaymentApplication:1];
  v15[1] = v5;
  v6 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v3];
  v15[2] = v6;
  v7 = [NSSet setWithObjects:&off_1008A2E10, &off_1008A2E28, 0];
  v8 = [Pass predicateForPaymentApplicationStates:v7];
  v15[3] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:4];

  database = self->_database;
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v12 = [Pass passesInDatabase:database matchingPredicate:v11];

  v13 = [(PDDatabaseManager *)self _registeredPasses:v12];

  return v13;
}

- (id)unexpiredPassesOrderedByGroup
{
  v3 = +[Pass predicateForPassAnnotationStatesInExpiredSection];
  v4 = [SQLiteCompoundPredicate negatedPredicate:v3];

  v35 = v4;
  v5 = [(PDDatabaseManager *)self effectiveCatalogWithPredicate:v4];
  v37 = objc_alloc_init(NSMutableArray);
  v36 = objc_alloc_init(NSMutableArray);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = v5;
  obj = [v5 groups];
  v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      v9 = 0;
      v38 = v7;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = [v10 uniqueIDs];
        v12 = [v11 count];

        if (v12)
        {
          v13 = +[NSMutableArray array];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v14 = [v10 uniqueIDs];
          v15 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v45;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v45 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [(PDDatabaseManager *)self passWithUniqueIdentifier:*(*(&v44 + 1) + 8 * i)];
                if (v19)
                {
                  [v13 addObject:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v16);
          }

          if ([v13 count])
          {
            v20 = v8;
            v21 = [v13 firstObject];
            v22 = [v21 secureElementPass];

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v23 = v13;
            v24 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v41;
              if (v22)
              {
                v27 = v37;
              }

              else
              {
                v27 = v36;
              }

              do
              {
                for (j = 0; j != v25; j = j + 1)
                {
                  if (*v41 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [v27 addObject:*(*(&v40 + 1) + 8 * j)];
                }

                v25 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v25);
            }

            v8 = v20;
            v7 = v38;
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v7);
  }

  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v37 count] + objc_msgSend(v36, "count"));
  v30 = [v37 reverseObjectEnumerator];
  v31 = [v30 allObjects];
  [v29 addObjectsFromArray:v31];

  [v29 addObjectsFromArray:v36];
  v32 = [v29 copy];

  return v32;
}

- (id)_locatedPredicate
{
  v2 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v3 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];

  return v5;
}

- (id)_validPassPredicate
{
  v2 = [SQLiteNullPredicate isNullPredicateWithProperty:@"revoked"];
  v19[0] = v2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"revoked" notEqualToValue:&__kCFBooleanTrue];
  v19[1] = v3;
  v4 = [NSArray arrayWithObjects:v19 count:2];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];

  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"voided" notEqualToValue:&__kCFBooleanTrue];
  v7 = [SQLiteNullPredicate isNullPredicateWithProperty:@"expiration_date"];
  v18[0] = v7;
  v8 = +[NSDate date];
  v9 = _SQLValueForDate();
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"expiration_date" greaterThanValue:v9];
  v18[1] = v10;
  v11 = [NSArray arrayWithObjects:v18 count:2];
  v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];

  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v12;
  v13 = +[Pass predicateForUnexpiredInStack];
  v17[3] = v13;
  v14 = [NSArray arrayWithObjects:v17 count:4];
  v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

  return v15;
}

+ (BOOL)databaseExistsAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];

  LOBYTE(v3) = [v4 fileExistsAtPath:v5];
  return v3;
}

- (PDDatabaseManager)initWithURL:(id)a3 delegate:(id)a4 report:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = PDDatabaseManager;
  result = [(PDDatabaseManager *)&v23 init];
  if (result)
  {
    v11 = result;
    v12 = +[PKSecureElement sharedSecureElement];
    secureElement = v11->_secureElement;
    v11->_secureElement = v12;

    v14 = sub_100471528();
    objectSettingsManager = v11->_objectSettingsManager;
    v11->_objectSettingsManager = v14;

    databaseURL = v11->_databaseURL;
    v11->_databaseURL = v8;
    v17 = v8;

    objc_storeWeak(&v11->_delegate, v9);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.passd.databasemanager.delegate", v18);
    delegateQueue = v11->_delegateQueue;
    v11->_delegateQueue = v19;

    v21 = +[FKBankConnectPassUpdateProcessor makeProcessor];
    bankConnectPassUpdateProcessor = v11->_bankConnectPassUpdateProcessor;
    v11->_bankConnectPassUpdateProcessor = v21;

    [(PDDatabaseManager *)v11 _createDatabaseAtURL:v17 report:a5];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_createDatabaseAtURL:(id)a3 report:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  v26 = 0;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: loading database...", buf, 2u);
    }

    v11 = sub_1005D3F2C([SQLiteDatabase alloc], v6, &v26);
    database = self->_database;
    self->_database = v11;

    if (self->_database)
    {
      if ((v26 & 1) == 0)
      {
        v16 = [(PDDatabaseManager *)self createSchemaInDatabase:?];
        v14 = 1;
        if (!v16)
        {
          LOBYTE(v9) = 0;
          goto LABEL_21;
        }

        if (v16 == 2)
        {
          v14 = 2;
        }

        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1005C1FE8();
        }

        [(PDDatabaseManager *)self deleteDatabase];
        LOBYTE(v9) = v14;
        goto LABEL_20;
      }

      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1005C201C();
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1005C2050();
      }

      [(PDDatabaseManager *)self deleteDatabase];
    }

    LOBYTE(v9) = 1;
LABEL_20:
    v14 = 1;
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  if (self->_database && v26 != 1)
  {
    v22 = 0;
    v23 = 0;
    if (!a4)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: creating database...", v24, 2u);
  }

  if (self->_database || (v19 = sub_1005D3F1C([SQLiteDatabase alloc], v6), v20 = self->_database, self->_database = v19, v20, self->_database))
  {
    if (![(PDDatabaseManager *)self createSchemaInDatabase:?])
    {
      v22 = 0;
      goto LABEL_36;
    }

    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1005C2084();
    }
  }

  else
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1005C20B8();
    }
  }

  [(PDDatabaseManager *)self deleteDatabase];
  v22 = 1;
LABEL_36:
  v23 = 1;
  if (a4)
  {
LABEL_37:
    a4->var0.var0 = v14;
    a4->var0.var1.var1.var0 = v9;
    a4->var1.var0 = v23;
    a4->var1.var1.var1.var0 = v22;
  }

LABEL_38:
  PKExcludeFileURLFromBackup();
}

- (void)dispatchDelegateCallback:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100143C30;
  v7[3] = &unk_10083C820;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, v7);
}

- (PDDatabaseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessDatabaseUsingBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100143D50;
  v7[3] = &unk_100848450;
  v8 = v4;
  v6 = v4;
  sub_1005D43A4(database, v7);
}

- (id)secureElementPassSerialNumbers
{
  v3 = [(PDDatabaseManager *)self _predicateForType:1];
  v4 = [Pass passSerialNumbersInDatabase:self->_database matchingPredicate:v3];

  return v4;
}

- (id)secureElementPassPrimaryAccountIdentifiers
{
  v3 = [(PDDatabaseManager *)self _predicateForType:1];
  v4 = [Pass passPrimaryAccountIdentifiersInDatabase:self->_database matchingPredicate:v3];

  return v4;
}

- (BOOL)passExistsWithUniqueID:(id)a3
{
  database = self->_database;
  v4 = [Pass predicateForUniqueID:a3];
  v5 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v4];

  return v5;
}

- (BOOL)passExistsWithPassTypeID:(id)a3 serialNumber:(id)a4
{
  database = self->_database;
  v6 = a4;
  v7 = [Pass predicateForPassTypeIdentifier:a3];
  v13[0] = v7;
  v8 = [Pass predicateForSerialNumber:v6];

  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v11 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v10];

  return v11;
}

- (BOOL)passExistsWithPassType:(unint64_t)a3
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForType:a3];
  v5 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v4];

  return v5;
}

- (BOOL)passExistsWithPaymentType:(unint64_t)a3
{
  v5 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [(PDDatabaseManager *)self _predicateForType:1];
  v15[0] = v6;
  v7 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v8 = [Pass predicateForPaymentApplicationStates:v7];
  v15[1] = v8;
  v9 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v5];
  v15[2] = v9;
  v10 = [Pass predicateForPaymentType:a3];
  v15[3] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:4];

  database = self->_database;
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  LOBYTE(database) = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v13];

  return database;
}

- (unint64_t)countPassesOfType:(unint64_t)a3
{
  database = self->_database;
  v6 = [(PDDatabaseManager *)self _predicateForType:?];
  if ([(SQLiteEntity *)Pass countInDatabase:database predicate:v6]< 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = self->_database;
    v8 = [(PDDatabaseManager *)self _predicateForType:a3];
    v9 = [(SQLiteEntity *)Pass countInDatabase:v7 predicate:v8];
  }

  return v9;
}

- (unint64_t)countActiveSecureElementPasses
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v17[0] = v4;
  v5 = [NSSet setWithObjects:&off_1008A2DE0, &off_1008A2DF8, 0];
  v6 = [Pass predicateForPaymentApplicationStates:v5];
  v7 = [SQLiteCompoundPredicate negatedPredicate:v6];
  v17[1] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v3];
  v17[2] = v8;
  v9 = +[Pass predicateForValidStyle];
  v17[3] = v9;
  v10 = [NSArray arrayWithObjects:v17 count:4];

  database = self->_database;
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  if ([(SQLiteEntity *)Pass countDistinctInDatabase:database predicate:v12]< 1)
  {
    v15 = 0;
  }

  else
  {
    v13 = self->_database;
    v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
    v15 = [(SQLiteEntity *)Pass countDistinctInDatabase:v13 predicate:v14];
  }

  return v15;
}

- (unint64_t)numberOfPassesOfType:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [Pass predicateForPassTypeIdentifier:v4];
  if ([(SQLiteEntity *)Pass countInDatabase:database predicate:v6]< 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = self->_database;
    v8 = [Pass predicateForPassTypeIdentifier:v4];
    v9 = [(SQLiteEntity *)Pass countInDatabase:v7 predicate:v8];
  }

  return v9;
}

- (unint64_t)numberOfRealPasses
{
  database = self->_database;
  v4 = +[Pass predicateForValidStyle];
  if ([(SQLiteEntity *)Pass countInDatabase:database predicate:v4]< 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = self->_database;
    v6 = +[Pass predicateForValidStyle];
    v7 = [(SQLiteEntity *)Pass countInDatabase:v5 predicate:v6];
  }

  return v7;
}

- (id)passesWithPassTypeID:(id)a3
{
  database = self->_database;
  v5 = [Pass predicateForPassTypeIdentifier:a3];
  v6 = [Pass passesInDatabase:database matchingPredicate:v5];

  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (BOOL)passExistsWithPassTypeIdentifierHash:(id)a3
{
  v3 = self;
  database = self->_database;
  v5 = [Pass predicateForPassTypeIdentifierHash:a3];
  v10[0] = v5;
  v6 = [(PDDatabaseManager *)v3 _validPassPredicate];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  LOBYTE(v3) = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v8];

  return v3;
}

- (id)passesWithPassTypeIdentifierHash:(id)a3
{
  v4 = [Pass predicateForPassTypeIdentifierHash:a3];
  v11[0] = v4;
  v5 = [(PDDatabaseManager *)self _validPassPredicate];
  v11[1] = v5;
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [Pass passesInDatabase:self->_database matchingPredicate:v7];
  v9 = [(PDDatabaseManager *)self _registeredPasses:v8];

  return v9;
}

- (id)passesWithPassTypeIdentifierHashes:(id)a3 automaticSelectionOnly:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = [a3 pk_arrayByApplyingBlock:&stru_100848490];
    v7 = [SQLiteCompoundPredicate predicateWithProperty:@"pass_type.identifier_hash" equalToValues:v6];
    v20[0] = v7;
    v8 = [(PDDatabaseManager *)self _validPassPredicate];
    v20[1] = v8;
    v9 = [NSArray arrayWithObjects:v20 count:2];

    database = self->_database;
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
    v12 = [Pass passesInDatabase:database matchingPredicate:v11];

    if (v4)
    {
      v13 = [(PDDatabaseManager *)self _passesFilteredByAutomaticallyPresentPassEnabled:v12];

      v12 = v13;
    }

    v14 = [(PDDatabaseManager *)self _registeredPasses:v12];

    v15 = [NSSortDescriptor sortDescriptorWithKey:@"ingestedDate" ascending:1];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    v17 = [v14 sortedArrayUsingDescriptors:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)passesWithPassTypeIdentifierHash:(id)a3 andAssociatedPassTypeIdentifierHash:(id)a4
{
  v6 = a4;
  v7 = [Pass predicateForPassTypeIdentifierHash:a3];
  v8 = [Pass predicateForAssociatedPassTypeIdentifierHash:v6, v7];

  v16[1] = v8;
  v9 = [(PDDatabaseManager *)self _validPassPredicate];
  v16[2] = v9;
  v10 = [NSArray arrayWithObjects:v16 count:3];

  database = self->_database;
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v13 = [Pass passesInDatabase:database matchingPredicate:v12];

  v14 = [(PDDatabaseManager *)self _registeredPasses:v13];

  return v14;
}

- (id)passesEnabledForValuedAddedServicesWithAutomaticSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"pass_type.identifier_hash"];
  v17[0] = v5;
  v6 = [(PDDatabaseManager *)self _validPassPredicate];
  v17[1] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [Pass passesInDatabase:self->_database matchingPredicate:v8];
  if (v3)
  {
    v10 = [(PDDatabaseManager *)self _passesFilteredByAutomaticallyPresentPassEnabled:v9];

    v9 = v10;
  }

  v11 = [(PDDatabaseManager *)self _registeredPasses:v9];

  v12 = [NSSortDescriptor sortDescriptorWithKey:@"ingestedDate" ascending:1];
  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [v11 sortedArrayUsingDescriptors:v13];

  return v14;
}

- (id)_passesFilteredByAutomaticallyPresentPassEnabled:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100144DD0;
  v5[3] = &unk_100840170;
  v5[4] = self;
  v3 = [a3 objectsPassingTest:v5];

  return v3;
}

- (BOOL)hasCandidatePasses
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [(PDDatabaseManager *)self passExistsWithPassType:1];
  *(v12 + 24) = v4;
  if ((v4 & 1) == 0)
  {
    database = self->_database;
    v6 = [(PDDatabaseManager *)self _predicateForType:0];
    v7 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v6];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100144F28;
    v10[3] = &unk_1008484B8;
    v10[4] = self;
    v10[5] = &v11;
    [v7 enumerateObjectsUsingBlock:v10];
  }

  objc_autoreleasePoolPop(v3);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)locatedCandidatePassesOfStyle:(int64_t)a3
{
  v5 = [(PDDatabaseManager *)self _locatedPredicate];
  v6 = [(PDDatabaseManager *)self _candidatePassesOfStyle:a3 matchingFurtherPredicate:v5];

  return v6;
}

- (id)unlocatedCandidatePassesOfStyle:(int64_t)a3
{
  v5 = [(PDDatabaseManager *)self _unlocatedPredicate];
  v6 = [(PDDatabaseManager *)self _candidatePassesOfStyle:a3 matchingFurtherPredicate:v5];

  return v6;
}

- (id)locatedDatelessCandidatePassesOfStyle:(int64_t)a3
{
  v5 = [(PDDatabaseManager *)self _datedPassPredicate];
  v6 = [SQLiteCompoundPredicate negatedPredicate:v5];
  v7 = [(PDDatabaseManager *)self _locatedCandidatePassesOfStyle:a3 matchingFurtherPredicate:v6];

  return v7;
}

- (id)candidatePassWithUniqueIdentifier:(id)a3
{
  database = self->_database;
  v4 = [Pass predicateForUniqueID:a3];
  v5 = [Pass candidatePassesInDatabase:database matchingPredicate:v4];
  v6 = [v5 anyObject];

  return v6;
}

- (id)validNFCBarcodePassUniqueIDs
{
  v3 = [(PDDatabaseManager *)self _predicateForType:0];
  v22[0] = v3;
  v4 = +[Pass predicateForValidStyle];
  v22[1] = v4;
  v5 = +[Pass predicateForHasValidNFCPayload];
  v22[2] = v5;
  v6 = [(PDDatabaseManager *)self _validPassPredicate];
  v22[3] = v6;
  v7 = +[Pass predicateForUnexpiredInStack];
  v22[4] = v7;
  v8 = [NSArray arrayWithObjects:v22 count:5];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = objc_alloc_init(NSMutableSet);
  v11 = [(SQLiteEntity *)Pass queryWithDatabase:self->_database predicate:v9];
  v21 = @"unique_id";
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100145388;
  v19 = &unk_100840B08;
  v13 = v10;
  v20 = v13;
  [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:&v16];

  if ([v13 count])
  {
    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasActiveBarcodePasses
{
  v2 = self;
  v3 = [(PDDatabaseManager *)self _predicateForType:0];
  v11[0] = v3;
  v4 = +[Pass predicateForValidStyle];
  v11[1] = v4;
  v5 = [(PDDatabaseManager *)v2 _validPassPredicate];
  v11[2] = v5;
  v6 = +[Pass predicateForUnexpiredInStack];
  v11[3] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:4];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [(SQLiteEntity *)Pass queryWithDatabase:v2->_database predicate:v8];
  LOBYTE(v2) = [v9 countOfEntities] > 0;

  return v2;
}

- (BOOL)hasActiveSecureElementPasses
{
  database = self->_database;
  v3 = [(PDDatabaseManager *)self _activeSecureElementPassPredicate];
  v4 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v3];

  LOBYTE(database) = [v4 countOfEntities] > 0;
  return database;
}

- (BOOL)hasActiveContactlessSecureElementPasses
{
  v2 = self;
  v3 = [(PDDatabaseManager *)self _activeSecureElementPassPredicate];
  v9[0] = v3;
  v4 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  v7 = [(SQLiteEntity *)Pass queryWithDatabase:v2->_database predicate:v6];
  LOBYTE(v2) = [v7 countOfEntities] > 0;

  return v2;
}

- (id)locationsByUniqueIDInBoundingBoxOfRegion:(id)a3
{
  v4 = a3;
  PDBoundingBoxForRegion();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = *&v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Searching for pass locations in region: %@", &v16, 0xCu);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = v6;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bounding box: {%f, %f, %f, %f}", &v16, 0x2Au);
  }

  v14 = [LocationIndex locationsByPassUniqueIDWithBoundingBox:self->_database inDatabase:v6, v8, v10, v12];

  return v14;
}

- (id)passes
{
  v3 = [Pass passesInDatabase:self->_database matchingPredicate:0];
  v4 = [(PDDatabaseManager *)self _registeredPasses:v3];

  return v4;
}

- (id)passesForWebService:(id)a3
{
  v4 = [(PDDatabaseManager *)self _databaseWebService:a3];
  v5 = [Pass predicateForWebService:v4];
  v6 = [Pass passesInDatabase:self->_database matchingPredicate:v5];
  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (id)passWithUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v5 = [v4 pass];

    v6 = [(PDDatabaseManager *)self _registeredPass:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)passTypeForPassUniqueIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v4 = [v3 passFlavor];

  return v4;
}

- (id)passWithPassTypeID:(id)a3 serialNumber:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = [PassType anyInDatabase:database withPassTypeID:a3];
  v9 = [Pass anyInDatabase:self->_database withPassType:v8 serialNumber:v7];

  v10 = [v9 pass];

  v11 = [(PDDatabaseManager *)self _registeredPass:v10];

  return v11;
}

- (id)passesOfType:(unint64_t)a3
{
  v4 = [(PDDatabaseManager *)self _predicateForType:a3];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
  v6 = [(PDDatabaseManager *)self _registeredPasses:v5];

  return v6;
}

- (id)passesOfCardType:(int64_t)a3
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForCardType:a3];
  v5 = [Pass passesInDatabase:database matchingPredicate:v4];

  return v5;
}

- (id)passesOfStyles:(unint64_t)a3
{
  v4 = [(PDDatabaseManager *)self _predicateForStyles:a3];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
  v6 = [(PDDatabaseManager *)self _registeredPasses:v5];

  return v6;
}

- (id)passesForPaymentType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(PDDatabaseManager *)self passesForPaymentTypes:v5];

  return v6;
}

- (id)passesForPaymentTypes:(id)a3
{
  secureElement = self->_secureElement;
  v5 = a3;
  v18 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v6 = [v5 pk_arrayByApplyingBlock:&stru_1008484F8];

  v7 = [(PDDatabaseManager *)self _predicateForType:1];
  v19[0] = v7;
  v8 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v9 = [Pass predicateForPaymentApplicationStates:v8];
  v19[1] = v9;
  v10 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v18];
  v19[2] = v10;
  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  v19[3] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:4];

  database = self->_database;
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];
  v15 = [Pass passesInDatabase:database matchingPredicate:v14];

  v16 = [(PDDatabaseManager *)self _registeredPasses:v15];

  return v16;
}

- (id)passUniqueIDsOfType:(unint64_t)a3
{
  v4 = [(PDDatabaseManager *)self _predicateForType:a3];
  v5 = [Pass passUniqueIDsInDatabase:self->_database matchingPredicate:v4];

  return v5;
}

- (id)syncablePassUniqueIDs
{
  database = self->_database;
  v3 = +[SQLiteBooleanPredicate truePredicate];
  v4 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v3];

  v5 = objc_alloc_init(NSMutableSet);
  v15[0] = @"unique_id";
  v15[1] = @"pass_flavor";
  v15[2] = @"template";
  v15[3] = @"pass_type.identifier";
  v6 = [NSArray arrayWithObjects:v15 count:4];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100146118;
  v13 = &unk_100840B08;
  v14 = v5;
  v7 = v5;
  [v4 enumeratePersistentIDsAndProperties:v6 usingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

- (id)deviceSecureElementPassUniqueIDs
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v11[0] = v4;
  v5 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v3];
  v11[1] = v5;
  v6 = [NSArray arrayWithObjects:v11 count:2];

  database = self->_database;
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];
  v9 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v8];

  return v9;
}

- (id)passWithProvisioningCredentialHash:(id)a3
{
  v4 = [Pass anyInDatabase:self->_database withProvisioningCredentialHash:a3];
  v5 = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:v5];

  return v6;
}

- (id)contactlessAccessPaymentPassesWithTCI:(id)a3 readerId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v24 = [(PDDatabaseManager *)self _predicateForType:1];
    v28[0] = v24;
    v23 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
    v28[1] = v23;
    v22 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
    v21 = [Pass predicateForPaymentApplicationStates:?];
    v28[2] = v21;
    v25 = v8;
    v9 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v8];
    v28[3] = v9;
    v10 = [Pass predicateForPaymentCardType:3];
    v28[4] = v10;
    v27 = v6;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
    v12 = [Pass predicateForTCIs:v11];
    v28[5] = v12;
    if (v7)
    {
      v26 = v7;
      v13 = [NSArray arrayWithObjects:&v26 count:1];
    }

    else
    {
      v13 = 0;
    }

    v15 = [Pass predicateForASCReaderIds:v13];
    v28[6] = v15;
    v16 = [NSArray arrayWithObjects:v28 count:7];

    if (v7)
    {
    }

    database = self->_database;
    v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
    v19 = [Pass passesInDatabase:database matchingPredicate:v18];

    v14 = [(PDDatabaseManager *)self _registeredPasses:v19];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)paymentPassesEligibleForDefaultCardSelection
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, &off_1008A2E40, 0];
  v5 = [(PDDatabaseManager *)self _predicateForType:1];
  v16[0] = v5;
  v6 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
  v16[1] = v6;
  v7 = [Pass predicateForPaymentApplicationStates:v4];
  v16[2] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v3];
  v16[3] = v8;
  v9 = [Pass predicateForSupportsDefaultCardSelection:1];
  v16[4] = v9;
  v10 = [NSArray arrayWithObjects:v16 count:5];

  database = self->_database;
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v13 = [Pass passesInDatabase:database matchingPredicate:v12];

  v14 = [(PDDatabaseManager *)self _registeredPasses:v13];

  return v14;
}

- (id)passesForInAppPaymentOnNetworks:(id)a3 issuerCountryCodes:(id)a4 paymentApplicationStates:(id)a5 paymentRequestType:(id)a6 isMultiTokensRequest:(BOOL)a7 webService:(id)a8
{
  v67 = a7;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [(PDDatabaseManager *)self _paymentNetworkIdentifiersForPaymentNetworks:a3];
  v61 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  if (![v14 count])
  {
    v18 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];

    v14 = v18;
  }

  v58 = v14;
  v19 = [Pass predicateForPaymentApplicationStates:v14];
  v20 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v61];
  v21 = [Pass predicateForPaymentApplicationSupportsInAppPayment:1];
  v55 = v17;
  v22 = [Pass predicateForPaymentApplicationNetworks:v17];
  v54 = v19;
  v23 = [NSMutableArray arrayWithObjects:v19, v20, v21, v22, 0];

  if ([v13 count])
  {
    v24 = [Pass predicateForIssuerCountryCodes:v13];
    [v23 addObject:v24];
  }

  database = self->_database;
  v26 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v23];
  v27 = [Pass passesInDatabase:database matchingPredicate:v26];

  v28 = [(PDDatabaseManager *)self _registeredPasses:v27];

  v29 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v65 = [v29 associatedPassUniqueID];
  v60 = v29;
  v30 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:v29];
  v31 = [v16 targetDevice];
  v32 = [v31 paymentWebService:v16 supportedRegionFeatureOfType:4];

  v52 = v32;
  v68 = [v32 supportedNetworks];
  v59 = v13;
  v56 = v16;
  v57 = v15;
  v53 = v23;
  if (v15)
  {
    v33 = [v15 intValue];
    v34 = objc_opt_new();
    v35 = v34;
    if (v33 == 10)
    {
      v36 = [PKWebServiceDisbursementFeature disbursementFeatureWithWebService:v16];
      v37 = [v36 supportedNetworks];

      v64 = 1;
      v62 = v37;
      goto LABEL_11;
    }

    v62 = v34;
  }

  else
  {
    v62 = objc_opt_new();
  }

  v64 = 0;
LABEL_11:
  v63 = objc_alloc_init(NSMutableSet);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v28;
  v38 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v74;
    if (v60)
    {
      v41 = v30;
    }

    else
    {
      v41 = 0;
    }

    if (v65)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v74 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v73 + 1) + 8 * i);
        if (v42)
        {
          v45 = [*(*(&v73 + 1) + 8 * i) uniqueID];
          v46 = [v45 isEqualToString:v65];

          if (v46)
          {
            continue;
          }
        }

        v47 = [v44 paymentApplications];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100146DB0;
        v71[3] = &unk_10083DBE0;
        v72 = v68;
        v48 = [v47 pk_anyObjectPassingTest:v71];

        if (!v67 || v48)
        {
          if (!v64 || ([v44 paymentApplications], v49 = objc_claimAutoreleasedReturnValue(), v69[0] = _NSConcreteStackBlock, v69[1] = 3221225472, v69[2] = sub_100146DBC, v69[3] = &unk_10083DBE0, v70 = v62, objc_msgSend(v49, "pk_anyObjectPassingTest:", v69), v50 = objc_claimAutoreleasedReturnValue(), v49, v50, v70, v50))
          {
            [v63 addObject:v44];
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v39);
  }

  return v63;
}

- (id)paymentPassesWithIssuerCountryCodes:(id)a3
{
  v4 = a3;
  v5 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v7 = [Pass predicateForPaymentApplicationStates:v6];
  v32 = v5;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v5];
  v9 = [Pass predicateForPaymentApplicationSupportsInAppPayment:1];
  v33 = v4;
  v10 = [Pass predicateForIssuerCountryCodes:v4];
  v11 = [NSArray arrayWithObjects:v7, v8, v9, v10, 0];

  database = self->_database;
  v31 = v11;
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v14 = [Pass passesInDatabase:database matchingPredicate:v13];

  v15 = [(PDDatabaseManager *)self _registeredPasses:v14];

  v16 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v17 = [v16 associatedPassUniqueID];
  v34 = v16;
  v18 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:v16];
  v19 = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    if (v16)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    if (v17)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        if (v25)
        {
          v28 = [*(*(&v35 + 1) + 8 * i) uniqueID];
          v29 = [v28 isEqualToString:v17];

          if (v29)
          {
            continue;
          }
        }

        [v19 addObject:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  return v19;
}

- (id)passesForNonWebInAppPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 issuerCountryCodes:(id)a5 paymentApplicationStates:(id)a6 paymentRequestType:(id)a7 isMultiTokensRequest:(BOOL)a8 webService:(id)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v47 = objc_alloc_init(NSMutableSet);
  v20 = [[NSMutableSet alloc] initWithSet:v15];
  [v20 removeObject:PKPaymentNetworkPrivateLabel];
  v41 = v20;
  v45 = v16;
  v21 = [(PDDatabaseManager *)self passesForInAppPaymentOnNetworks:v20 issuerCountryCodes:v16 paymentApplicationStates:v17 paymentRequestType:v18 isMultiTokensRequest:v9 webService:v19];
  v46 = v15;
  v22 = [v15 allObjects];
  v23 = PKPaymentCredentialTypesForPaymentNetworkNames();
  v42 = v19;
  v43 = v18;
  LOBYTE(v40) = v9;
  v44 = v17;
  v24 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v23 merchantCapabilities:a4 merchantCountryCode:0 paymentMode:1 paymentApplicationStates:v17 paymentRequestType:v18 isMultiTokensRequest:v40 webService:v19];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v53;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v31 = [v30 deviceInAppPaymentApplications];
        v32 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v49;
          while (2)
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v49 != v34)
              {
                objc_enumerationMutation(v31);
              }

              if ([*(*(&v48 + 1) + 8 * j) canProcessPayment:v24])
              {
                [v47 addObject:v30];
                goto LABEL_16;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v27 = [v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v27);
  }

  v36 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v25 count];
    v38 = [v47 count];
    *buf = 134218240;
    v57 = v37;
    v58 = 2048;
    v59 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "passesForNonWebInAppPaymentOnNetworks passes: %ld, filtered: %ld", buf, 0x16u);
  }

  return v47;
}

- (id)transitPasses
{
  v3 = [(PDDatabaseManager *)self _transitPredicate];
  v4 = [Pass passesInDatabase:self->_database matchingPredicate:v3];
  v5 = [(PDDatabaseManager *)self _registeredPasses:v4];

  return v5;
}

- (id)passesSupportingIssuerBinding
{
  database = self->_database;
  v4 = [Pass predicateForSupportsIssuerBinding:1];
  v5 = [Pass passesInDatabase:database matchingPredicate:v4];

  v6 = [(PDDatabaseManager *)self _registeredPasses:v5];

  return v6;
}

- (BOOL)hasPassesWithPayloadState:(unint64_t)a3
{
  database = self->_database;
  v4 = [Pass predicateForNFCPayloadState:a3];
  v5 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v4];

  LOBYTE(database) = [v5 countOfEntities] > 0;
  return database;
}

- (id)passesSupportingIssuerBindingWithPayloadState:(unint64_t)a3
{
  database = self->_database;
  v5 = [Pass predicateForNFCPayloadState:a3];
  v6 = [Pass passesInDatabase:database matchingPredicate:v5];

  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (BOOL)hasSecureElementPassesOfType:(int64_t)a3
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForCardType:a3];
  v5 = [(SQLiteEntity *)Pass countInDatabase:database predicate:v4]> 0;

  return v5;
}

- (BOOL)hasSecureElementPassesWithFeatureIdentifier:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PDDatabaseManager *)self passesOfType:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001477BC;
  v6[3] = &unk_100848520;
  v6[4] = &v7;
  v6[5] = a3;
  [v4 enumerateObjectsUsingBlock:v6];
  LOBYTE(a3) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return a3;
}

- (unint64_t)countPassesPreventingWalletDeletion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(PDDatabaseManager *)self passesOfType:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100147918;
  v5[3] = &unk_100848548;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)passExistsForNonWebInAppPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 paymentApplicationStates:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(PDDatabaseManager *)self _paymentNetworkIdentifiersForPaymentNetworks:a3];
  v10 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  if (![v8 count])
  {
    v11 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];

    v8 = v11;
  }

  v12 = [PaymentApplication predicateForStates:v8];
  v29 = v10;
  v13 = [PaymentApplication predicateForSecureElementIdentifiers:v10];
  v14 = [PaymentApplication predicateForSupportsInAppPayment:1];
  v30 = v9;
  v15 = [PaymentApplication predicateForNetworks:v9];
  v16 = [NSMutableArray arrayWithObjects:v12, v13, v14, v15, 0];

  v17 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v18 = [v17 associatedPassUniqueID];
  v19 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:v17];
  if (v17 && v19 && v18)
  {
    v20 = [PaymentApplication predicateForPassWithUniqueIdentifier:v18];
    v21 = [SQLiteCompoundPredicate negatedPredicate:v20];
    [v16 addObject:v21];
  }

  v22 = objc_alloc_init(NSMutableArray);
  if (v5 < 0)
  {
    v23 = [PaymentApplication predicateForSupportsInstantFundsIn:1];
    [v16 addObject:v23];
  }

  if ((v5 & 0x1C) != 0 && (v5 & 0x1C) != 0x1CLL)
  {
    if ((v5 & 4) != 0)
    {
      [v22 addObject:&off_1008A2E58];
      if ((v5 & 8) == 0)
      {
LABEL_13:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    [v22 addObject:&off_1008A2E70];
    if ((v5 & 0x10) != 0)
    {
LABEL_14:
      [v22 addObject:&off_1008A2E88];
    }
  }

LABEL_15:
  if ([v22 count])
  {
    v24 = [PaymentApplication predicateForPaymentMethodTypes:v22];
    [v16 addObject:v24];
  }

  v25 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];
  v26 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v25];
  v27 = v26 != 0;

  return v27;
}

- (id)passesForWebPaymentOnNetworks:(id)a3 withCapabilities:(unint64_t)a4 webService:(id)a5 issuerCountryCodes:(id)a6 paymentApplicationStates:(id)a7 isMultiTokensRequest:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v43 = objc_alloc_init(NSMutableSet);
  v18 = [[NSMutableSet alloc] initWithSet:v14];
  [v18 removeObject:PKPaymentNetworkPrivateLabel];
  v38 = v18;
  v40 = v16;
  v19 = [(PDDatabaseManager *)self passesForInAppPaymentOnNetworks:v18 issuerCountryCodes:v16 paymentApplicationStates:v17 paymentRequestType:0 isMultiTokensRequest:v8 webService:v15];
  v42 = v14;
  v20 = [v14 allObjects];
  v21 = PKPaymentCredentialTypesForPaymentNetworkNames();
  v41 = v15;
  v39 = v17;
  v22 = [PKPaymentRequestSupportedQuery webQueryWithSupportedNetworkIDs:v21 merchantCapabilities:a4 merchantCountryCode:0 paymentMode:1 paymentApplicationStates:v17 isMultiTokensRequest:v8 webService:v15];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v29 = [v28 deviceInAppPaymentApplications];
        v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v45;
          while (2)
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(v29);
              }

              if ([*(*(&v44 + 1) + 8 * j) canProcessPayment:v22])
              {
                [v43 addObject:v28];
                goto LABEL_16;
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v25);
  }

  v34 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v23 count];
    v36 = [v43 count];
    *buf = 134218240;
    v53 = v35;
    v54 = 2048;
    v55 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "passesForWebPaymentOnNetworks passes: %ld, filtered: %ld", buf, 0x16u);
  }

  return v43;
}

- (id)paymentPassesWithAssociatedPassTypeIdentifierHashes:(id)a3 automaticSelectionOnly:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 pk_arrayByApplyingBlock:&stru_100848568];
  v7 = [SQLiteCompoundPredicate predicateWithProperty:@"associated_pass_type_identifier.identifier_hash" equalToValues:v6];
  v20[0] = v7;
  v8 = [(PDDatabaseManager *)self _predicateForType:1];
  v20[1] = v8;
  v9 = [NSArray arrayWithObjects:v20 count:2];

  database = self->_database;
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v12 = [Pass passesInDatabase:database matchingPredicate:v11];

  if (v4)
  {
    v13 = [(PDDatabaseManager *)self _passesFilteredByAutomaticallyPresentPassEnabled:v12];

    v12 = v13;
  }

  v14 = [(PDDatabaseManager *)self _registeredPasses:v12];

  v15 = [NSSortDescriptor sortDescriptorWithKey:@"ingestedDate" ascending:1];
  v19 = v15;
  v16 = [NSArray arrayWithObjects:&v19 count:1];
  v17 = [v14 sortedArrayUsingDescriptors:v16];

  return v17;
}

- (id)_passWithPaymentApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  v6 = [v4 secureElementIdentifier];

  v7 = [(PDDatabaseManager *)self _passWithApplicationIdentifier:v5 secureElementIdentifier:v6];

  return v7;
}

- (id)passWithPaymentApplication:(id)a3
{
  v4 = [(PDDatabaseManager *)self _passWithPaymentApplication:a3];
  v5 = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:v5];

  return v6;
}

- (id)passWithPaymentApplicationIdentifier:(id)a3
{
  database = self->_database;
  secureElement = self->_secureElement;
  v6 = a3;
  v7 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v8 = [Pass anyInDatabase:database withApplicationIdentifier:v6 secureElementIdentifiers:v7];

  v9 = [v8 pass];

  v10 = [(PDDatabaseManager *)self _registeredPass:v9];

  return v10;
}

- (id)passWithPaymentApplicationIdentifier:(id)a3 secureElementIdentifiers:(id)a4
{
  v5 = [Pass anyInDatabase:self->_database withApplicationIdentifier:a3 secureElementIdentifiers:a4];
  v6 = [v5 pass];

  v7 = [(PDDatabaseManager *)self _registeredPass:v6];

  return v7;
}

- (id)passUniqueIdentifierWithPaymentApplication:(id)a3
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:a3];
  v4 = [v3 uniqueID];

  return v4;
}

- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)a3
{
  database = self->_database;
  secureElement = self->_secureElement;
  v5 = a3;
  v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [Pass anyInDatabase:database withApplicationIdentifier:v5 secureElementIdentifiers:v6];

  v8 = [v7 uniqueID];

  return v8;
}

- (id)passWithPrimaryAccountIdentifier:(id)a3
{
  v4 = [Pass anyInDatabase:self->_database withPrimaryAccountIdentifier:a3];
  v5 = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:v5];

  return v6;
}

- (id)passUniqueIdentifierWithPrimaryAccountIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withPrimaryAccountIdentifier:a3];
  v4 = [v3 uniqueID];

  return v4;
}

- (id)passUniqueIdentifierWithCredentialIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100005B40;
    v16 = sub_10000B1AC;
    v17 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100148750;
    v8[3] = &unk_100848590;
    v9 = v4;
    v10 = self;
    v11 = &v12;
    [(PDDatabaseManager *)self performTransactionWithBlock:v8];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)passUniqueIdentifierWithAssociatedAccountIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withAssociatedAccountIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uniqueID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)associatedAccountIdentifierForPassWithUniqueIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 associatedAccountIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)previousAccountIdentifierForAccountIdentifier:(id)a3
{
  v3 = [Account anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 previousAccountIdentifiers];

  return v4;
}

- (id)accountIdentifierWithPreviousAccountIdentifier:(id)a3
{
  v3 = [Account anyInDatabase:self->_database withPreviousAccountIdentifier:a3];
  v4 = [v3 accountIdentifier];

  return v4;
}

- (id)primaryAccountIdentifierForAssociatedAccountIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withAssociatedAccountIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 primaryAccountIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)a3
{
  [(PDDatabaseManager *)self passesOfType:1];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 134218498;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 uniqueID];
        v11 = [v9 deviceTransactionSourceIdentifiers];
        v12 = objc_alloc_init(NSMutableSet);
        if (a3 <= 1)
        {
          v13 = [PaymentTransaction paymentTransactionsInDatabase:self->_database originatedOnDevice:1 forTransactionSourceIdentifiers:v11];
          v14 = [v13 allObjects];
          [v12 addObjectsFromArray:v14];
        }

        if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v15 = [PaymentTransaction paymentTransactionsInDatabase:self->_database originatedOnDevice:0 forTransactionSourceIdentifiers:v11];
          v16 = [v15 allObjects];
          [v12 addObjectsFromArray:v16];
        }

        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 count];
          *buf = v21;
          v29 = v18;
          v30 = 2114;
          v31 = v10;
          v32 = 2112;
          v33 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Syncing %ld transactions for pass uniqueID: %{public}@. Transactions: %@", buf, 0x20u);
        }

        if ([v12 count])
        {
          v19 = [v12 allObjects];
          v20 = [v11 anyObject];
          [(PDDatabaseManager *)self _updateCloudStoreWithTransactions:v19 transactionSourceIdentifier:v20];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }
}

- (unint64_t)countOfPassesForRequest:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
  v5 = [(SQLiteEntity *)Pass countInDatabase:self->_database predicate:v4];

  return v5;
}

- (id)maxIngestedDateForRequest:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
    v5 = [(SQLiteEntity *)Pass maxValueForProperty:@"ingested_date" predicate:v4 database:self->_database];
    v6 = _DateForSQLValue();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)minIngestedDateForRequest:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
    v5 = [(SQLiteEntity *)Pass minValueForProperty:@"ingested_date" predicate:v4 database:self->_database];
    v6 = _DateForSQLValue();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)passesForRequest:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
    v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
    v6 = [(PDDatabaseManager *)self _registeredPasses:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)secureElementPassesForRequest:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
    v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
    v6 = [(PDDatabaseManager *)self _registeredPasses:v5];
    v7 = [v6 pk_setBySafelyApplyingBlock:&stru_1008485D0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getCatalog:(id *)a3 passes:(id *)a4 dbStates:(id *)a5 ofPassTypes:(unint64_t)a6 limitResults:(BOOL)a7
{
  v7 = a7;
  v13 = [(PDDatabaseManager *)self effectiveCatalog];
  v20 = 0;
  if (v7)
  {
    [(PDDatabaseManager *)self _trimCatalog:v13 andBuildPassPredicate:&v20];
    v14 = v20;
  }

  else if (a6)
  {
    v14 = [(PDDatabaseManager *)self _predicateForPassTypes:a6];
    v20 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = [Pass passesInDatabase:self->_database states:a5 matchingPredicate:v14];
  v16 = [(PDDatabaseManager *)self _registeredPasses:v15];
  v17 = *a4;
  *a4 = v16;

  v18 = *a3;
  *a3 = v13;
  v19 = v13;
}

- (void)_trimCatalog:(id)a3 andBuildPassPredicate:(id *)a4
{
  v5 = [a3 groups];
  v6 = [v5 count] - 1;
  if (v6 > 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_10068E560[v6];
  }

  if ([v5 count] >= 9)
  {
    do
    {
      [v5 removeLastObject];
    }

    while ([v5 count] > 8);
  }

  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        while (1)
        {
          v15 = [v14 uniqueIDs];
          v16 = [v15 count];

          if (v16 <= v7)
          {
            break;
          }

          v17 = [v14 uniqueIDs];
          [v17 removeLastObject];
        }

        v18 = [v14 uniqueIDs];
        [v8 addObjectsFromArray:v18];

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = [SQLiteCompoundPredicate predicateWithProperty:@"unique_id" equalToValues:v8];
  v20 = *a4;
  *a4 = v19;
}

- (BOOL)insertPass:(id)a3 withDaemonData:(id)a4 source:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v40 = v8;
  v9 = [v7 passType];
  if (v9 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v7 uniqueID];
  v36 = v37 = v11;
  if ((PKStoreDemoModeEnabled() & 1) == 0)
  {
    v13 = PKUIOnlyDemoModeEnabled();
    if (v9 != 1)
    {
      v35 = v13;
      goto LABEL_15;
    }

    if (!v13)
    {
      v35 = 0;
      goto LABEL_14;
    }

LABEL_11:
    [(PDDatabaseManager *)self _applyDemoPaymentApplicationToPass:v7];
    v35 = 1;
LABEL_14:
    v14 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    [v7 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v14];

    goto LABEL_15;
  }

  if (v9 == 1)
  {
    goto LABEL_11;
  }

  v35 = 1;
LABEL_15:
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_100005B40;
  v81 = sub_10000B1AC;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_100005B40;
  v75 = sub_10000B1AC;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_100005B40;
  v69 = sub_10000B1AC;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_100005B40;
  v59 = sub_10000B1AC;
  v60 = 0;
  database = self->_database;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1001498D4;
  v43[3] = &unk_1008485F8;
  v43[4] = self;
  v16 = self;
  v17 = v36;
  v44 = v17;
  v18 = v7;
  v45 = v18;
  v48 = &v61;
  v38 = v37;
  v46 = v38;
  v47 = v40;
  v49 = &v55;
  v50 = &v71;
  v51 = &v65;
  v52 = &v77;
  v53 = &v83;
  v54 = a5;
  sub_1005D4424(database, v43);
  v19 = v17;
  v20 = *(v84 + 24);
  v21 = PKLogFacilityTypeGetObject();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      *buf = 138412290;
      v88 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: inserted pass %@.", buf, 0xCu);
    }

    if (v72[5])
    {
      WeakRetained = objc_loadWeakRetained(&v16->_notificationServicesDelegate);
      [WeakRetained handleInsertionOfPass:v18 withNotificationService:v72[5]];
    }

    if (v66[5])
    {
      v24 = objc_loadWeakRetained(&v16->_notificationServicesDelegate);
      [v24 handleInsertionOfPass:v18 withNotificationService:v66[5]];
    }

    if (v78[5])
    {
      v25 = objc_loadWeakRetained(&v16->_webServicesDelegate);
      v26 = [v18 serialNumber];
      v27 = [v18 authenticationToken];
      [v25 handleInsertion:v26 authToken:v27 webService:v78[5] pushEnabled:*(v62 + 24) source:a5];
    }

    if (v9 == 1)
    {
      if (v35)
      {
        [(PDDatabaseManager *)v16 _applyDemoPaymentTransactionsToPass:v18];
        [(PDDatabaseManager *)v16 _applyDemoFelicaAppletStateToPass:v18];
      }

      v28 = objc_loadWeakRetained(&v16->_paymentServicesDelegate);
      [v28 handleInsertionForPaymentPass:v18];

      v29 = objc_loadWeakRetained(&v16->_delegate);
      v30 = objc_alloc_init(NSSet);
      [v29 paymentPass:v18 didUpdatePaymentApplications:v30 toPaymentApplications:v56[5]];

      v31 = [v18 primaryAccountIdentifier];
      v32 = v31;
      if (v31)
      {
        bankConnectPassUpdateProcessor = v16->_bankConnectPassUpdateProcessor;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100149C20;
        v41[3] = &unk_10083C470;
        v42 = v31;
        [(FKBankConnectPassUpdateProcessor *)bankConnectPassUpdateProcessor didProvisionPassWithPrimaryAccountIdentifier:v42 completion:v41];
      }
    }

    v12 = *(v84 + 24);
  }

  else
  {
    if (v22)
    {
      *buf = 138412290;
      v88 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: failed to insert pass %@.", buf, 0xCu);
    }

    v12 = 0;
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  v8 = v40;
LABEL_35:

  return v12 & 1;
}

- (BOOL)updatePass:(id)a3 withDaemonData:(id)a4 oldPass:(id *)a5 fromSource:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    location = a5;
    v12 = [v10 passType];
    if (v12 == 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v10 uniqueID];
    if (PKStoreDemoModeEnabled())
    {
      v31 = 1;
    }

    else
    {
      v31 = PKUIOnlyDemoModeEnabled();
    }

    v17 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v34 = a6;
    if (v12 == 1)
    {
      if (v31)
      {
        [(PDDatabaseManager *)self _applyDemoPaymentApplicationToPass:v10];
      }

      [v10 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v17];
    }

    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = sub_100005B40;
    v109 = sub_10000B1AC;
    v110 = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x3032000000;
    v98 = sub_100005B40;
    v99 = sub_10000B1AC;
    v100 = 0;
    v88 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = sub_100005B40;
    v93 = sub_10000B1AC;
    v94 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = sub_100005B40;
    v87 = sub_10000B1AC;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = sub_100005B40;
    v81 = sub_10000B1AC;
    v82 = 0;
    v35 = v12;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = sub_100005B40;
    v75 = sub_10000B1AC;
    v76 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_100005B40;
    v65 = sub_10000B1AC;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_100005B40;
    v59 = sub_10000B1AC;
    v60 = 0;
    database = self->_database;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10014A4B4;
    v37[3] = &unk_100848620;
    v37[4] = self;
    v19 = v15;
    v38 = v19;
    v43 = &v105;
    v32 = v17;
    v39 = v32;
    v36 = v10;
    v40 = v36;
    v44 = &v67;
    v33 = v14;
    v41 = v33;
    v45 = &v61;
    v42 = v11;
    v46 = &v55;
    v47 = &v89;
    v48 = &v83;
    v49 = &v71;
    v50 = &v77;
    v51 = &v95;
    v52 = &v101;
    v53 = &v111;
    v54 = a6;
    sub_1005D4424(database, v37);
    LOBYTE(database) = *(v112 + 24);
    v20 = PKLogFacilityTypeGetObject();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (database)
    {
      if (v21)
      {
        *buf = 138412290;
        v116 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: updated pass %@.", buf, 0xCu);
      }

      if (v90[5] || v84[5])
      {
        WeakRetained = objc_loadWeakRetained(&self->_notificationServicesDelegate);
        [WeakRetained handleUpdateOfPass:v106[5] toPass:v36 oldNotificationService:v90[5] newNotificationService:v84[5]];
      }

      if (v72[5] || v78[5])
      {
        v23 = objc_loadWeakRetained(&self->_notificationServicesDelegate);
        [v23 handleUpdateOfPass:v106[5] toPass:v36 oldNotificationService:v72[5] newNotificationService:v78[5]];
      }

      if (v96[5])
      {
        v24 = *(v102 + 24);
        v25 = objc_loadWeakRetained(&self->_webServicesDelegate);
        v26 = [v36 serialNumber];
        if (v24)
        {
          v27 = [v36 authenticationToken];
          [v25 handleInsertion:v26 authToken:v27 webService:v96[5] pushEnabled:*(v68 + 24) source:v34];
        }

        else
        {
          [v25 handleModification:v26 webService:v96[5] pushEnabled:*(v68 + 24) source:v34];
        }
      }

      if (v35 == 1)
      {
        if (v31)
        {
          [(PDDatabaseManager *)self _applyDemoPaymentTransactionsToPass:v36];
          [(PDDatabaseManager *)self _applyDemoFelicaAppletStateToPass:v36];
        }

        v28 = objc_loadWeakRetained(&self->_delegate);
        [v28 paymentPass:v36 didUpdatePaymentApplications:v62[5] toPaymentApplications:v56[5]];
      }

      if (location)
      {
        objc_storeStrong(location, v106[5]);
      }

      v16 = *(v112 + 24);
    }

    else
    {
      if (v21)
      {
        *buf = 138412290;
        v116 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: failed to update pass %@.", buf, 0xCu);
      }

      v16 = 0;
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v83, 8);

    _Block_object_dispose(&v89, 8);
    _Block_object_dispose(&v95, 8);

    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(&v105, 8);

    _Block_object_dispose(&v111, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (void)prepareToDeletePassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100005B40;
  v45 = sub_10000B1AC;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100005B40;
  v39 = sub_10000B1AC;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100005B40;
  v33 = sub_10000B1AC;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100005B40;
  v27 = sub_10000B1AC;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014ACE4;
  v12[3] = &unk_100848648;
  v12[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = &v41;
  v15 = &v19;
  v16 = &v35;
  v17 = &v29;
  v18 = &v23;
  sub_1005D4424(database, v12);
  if (v30[5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_notificationServicesDelegate);
    [WeakRetained handleDeletionOfPass:v42[5] withNotificationService:v30[5]];
  }

  if (v24[5])
  {
    v8 = objc_loadWeakRetained(&self->_notificationServicesDelegate);
    [v8 handleDeletionOfPass:v42[5] withNotificationService:v24[5]];
  }

  if (v36[5])
  {
    v9 = objc_loadWeakRetained(&self->_webServicesDelegate);
    v10 = [v42[5] serialNumber];
    v11 = [v42[5] authenticationToken];
    [v9 handleDeletion:v10 authToken:v11 webService:v36[5] pushEnabled:*(v20 + 24)];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

- (void)deletePassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100005B40;
  v32 = sub_10000B1AC;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100005B40;
  v26 = sub_10000B1AC;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005B40;
  v20 = sub_10000B1AC;
  v21 = 0;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014B0C0;
  v11[3] = &unk_100848670;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v13 = &v28;
  v14 = &v22;
  v15 = &v16;
  sub_1005D4424(database, v11);
  v7 = v17[5];
  if (v7)
  {
    bankConnectPassUpdateProcessor = self->_bankConnectPassUpdateProcessor;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10014B28C;
    v10[3] = &unk_100848698;
    v10[4] = &v16;
    [(FKBankConnectPassUpdateProcessor *)bankConnectPassUpdateProcessor didDeletePassWithPrimaryAccountIdentifier:v7 completion:v10];
  }

  if (v29[5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_paymentServicesDelegate);
    [WeakRetained handleDeletionForPassTypeIdentifier:v29[5] serialNumber:v23[5]];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

- (void)deleteDatabase
{
  database = self->_database;
  if (database)
  {
    sub_1005D4348(&database->super.isa);
    v4 = self->_database;
    self->_database = 0;
  }

  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtURL:self->_databaseURL error:0];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleted database", v7, 2u);
  }
}

- (void)deleteAndRecreateDatabase
{
  [(PDDatabaseManager *)self deleteDatabase];
  [(PDDatabaseManager *)self _createDatabaseAtURL:self->_databaseURL report:0];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recreated database", v4, 2u);
  }
}

- (void)updateModifiedSource:(int64_t)a3 forUniqueID:(id)a4
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a4];
  [v5 updateWithLastModifiedSource:a3];
}

- (id)updatedPassAnnotationsForPasses:(id)a3
{
  v4 = a3;
  v46 = PKExpiredPassesDisabledByUser();
  if (v46)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  database = self->_database;
  v7 = +[Pass predicateForUnexpiredInStack];
  v8 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v7];
  v9 = [v8 mutableCopy];

  v49 = v5;
  v10 = v5;
  p_superclass = AccountRewardsIdentifier.superclass;
  [PassAnnotations updateAnnotationsOfExpiredIrrelevantOrVoidedPassesWithState:v10 inDatabase:self->_database];
  v12 = self->_database;
  v13 = +[Pass predicateForUnexpiredInStack];
  v14 = [Pass passUniqueIDsInDatabase:v12 matchingPredicate:v13];

  v47 = v14;
  [v9 minusSet:v14];
  if ([v9 count])
  {
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10014BAF8;
    v62[3] = &unk_1008486C0;
    v63 = v9;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v62];
  }

  v48 = v9;
  v52 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v53 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v53)
  {
    v51 = *v59;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 uniqueID];
        v19 = [(PDDatabaseManager *)self passAnnotationsForPassUniqueIdentifier:v18];
        v20 = [v16 secureElementPass];
        v21 = [v20 passActivationState];
        v22 = v21;
        if (!v19)
        {
          if (v20)
          {
            v31 = v21 == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            v32 = [v16 relevantDates];
            v33 = [PKPassRelevantDate findDateFromDates:v32 option:3];

            v34 = [v16 expirationDate];

            if (([v16 isVoided] & 1) != 0 || objc_msgSend(v16, "isPastRelevancy"))
            {
            }

            else
            {
              v36 = [v16 isExpired];
              if ((v36 & 1) != 0 || v34 || v33)
              {

                if ((v36 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              else if (([v16 isExpiredBasedOnSigningDate] & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v35 = v49;
          }

          else
          {
LABEL_39:
            v35 = 0;
          }

          v40 = self->_database;
          v41 = [p_superclass + 464 predicateForUniqueID:v18];
          v19 = [p_superclass + 464 queryWithDatabase:v40 predicate:v41];

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_10014BB58;
          v54[3] = &unk_1008486E8;
          v57 = v35;
          v54[4] = self;
          v55 = v52;
          v56 = v18;
          [v19 enumeratePersistentIDsUsingBlock:v54];

          goto LABEL_45;
        }

        if (v20)
        {
          if ([v19 isIntendedForExpiredSection] && v22 != 4)
          {
            v24 = [PassAnnotations anyInDatabase:self->_database withPassID:v18];
            [v24 updateSortingState:0];
            v25 = [v24 passAnnotations];

            v19 = v25;
          }
        }

        if ([v19 sortingState] == 1)
        {
          v26 = [v19 archivedTimestamp];

          if (!v26)
          {
            v27 = [PassAnnotations anyInDatabase:self->_database withPassID:v18];
            v28 = [v16 expirationDate];
            v29 = v28;
            if (v28)
            {
              v30 = v28;
            }

            else
            {
              v37 = [v16 relevantDates];
              v38 = [PKPassRelevantDate findDateFromDates:v37 option:3];

              if (v38)
              {
                v39 = v38;
              }

              else
              {
                v39 = +[NSDate now];
              }

              v30 = v39;
            }

            [v27 updateArchivedTimestamp:v30];
            v42 = [v27 passAnnotations];

            v19 = v42;
            p_superclass = (AccountRewardsIdentifier + 8);
          }
        }

        [v52 setObject:v19 forKeyedSubscript:v18];
LABEL_45:

        objc_autoreleasePoolPop(v17);
      }

      v53 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v53);
  }

  v43 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v65 = v46 ^ 1u;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Finished updating Pass Annotations:\nExpired Passes section enabled by user:%ld", buf, 0xCu);
  }

  v44 = [v52 copy];

  return v44;
}

- (void)updatePassAnnotationsForPassWithUniqueIdentifier:(id)a3 withSortingState:(int64_t)a4
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  if (v5)
  {
    v6 = v5;
    [v5 updateWithSortingState:a4 forSortingReason:0];
    v5 = v6;
  }
}

- (id)passAnnotationsForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PassAnnotations anyInDatabase:self->_database withPassID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 passAnnotations];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: Failed to find pass annotations in database for pass with unique identifier: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)hasPassesInExpiredSection
{
  database = self->_database;
  v3 = +[Pass predicateForPassAnnotationStatesInExpiredSection];
  v4 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v3];

  return v4;
}

- (id)displayProfileForPassWithUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v4 = [v3 displayProfile];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)passLiveRenderForPassUniqueIdentifier:(id)a3
{
  v3 = [PassLiveRender passLiveRenderInDatabase:self->_database forPassUniqueID:a3];
  v4 = [v3 passLiveRender];

  return v4;
}

- (id)insertOrUpdateLiveRenderEnabled:(BOOL)a3 forPassWithUniqueIdentifier:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005B40;
  v19 = sub_10000B1AC;
  v20 = 0;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014BFA8;
  v11[3] = &unk_100848710;
  v11[4] = self;
  v8 = v6;
  v14 = a3;
  v12 = v8;
  v13 = &v15;
  sub_1005D4424(database, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)deletePaymentTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:v4];
  v6 = [v5 transactionSourceIdentifier];
  if (v5)
  {
    v7 = [v5 paymentTransaction];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014C3A4;
    v22[3] = &unk_100848738;
    v8 = v6;
    v23 = v8;
    v9 = v7;
    v24 = v9;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v22];
    v10 = [v5 serviceIdentifier];
    if ([v5 deleteFromDatabase])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10014C3B0;
      v19[3] = &unk_100848738;
      v11 = v8;
      v20 = v11;
      v21 = v4;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v19];
      if (v10)
      {
        WeakRetained = objc_loadWeakRetained(&self->_cloudStoreCoordinator);
        v13 = [WeakRetained applePayContainer];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10014C3BC;
        v15[3] = &unk_10083DE10;
        v15[4] = self;
        v16 = v9;
        v17 = v10;
        v18 = v11;
        [v13 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v18 completion:v15];
      }

      v14 = v20;
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error: Could not delete transaction with identifier: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: No transaction found with identifier: %{public}@", buf, 0xCu);
    }
  }
}

- (void)deletePaymentTransactionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:*(*(&v46 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v8);
  }

  v33 = v6;

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10014C958;
  v44[3] = &unk_1008486C0;
  v12 = v5;
  v45 = v12;
  v32 = self;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v44];
  v35 = objc_alloc_init(NSMutableDictionary);
  v36 = objc_alloc_init(NSMutableDictionary);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * j);
        v18 = [v17 paymentTransaction];
        v19 = [v18 identifier];

        v20 = [v17 serviceIdentifier];
        v21 = [v17 paymentTransaction];
        v22 = [v17 transactionSourceIdentifier];
        if ([v17 deleteFromDatabase])
        {
          v23 = [v36 objectForKey:v22];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = objc_alloc_init(NSMutableSet);
          }

          v26 = v25;

          [v26 addObject:v19];
          [v36 setValue:v26 forKey:v22];
          if (v20)
          {
            v27 = [v35 objectForKey:v22];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = objc_alloc_init(NSMutableArray);
            }

            v30 = v29;

            [v30 addObject:v21];
            [v35 setValue:v30 forKey:v22];
          }
        }

        else
        {
          v26 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v51 = v19;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error: Could not delete transaction with identifier: %{public}@", buf, 0xCu);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v14);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10014CB14;
  v38[3] = &unk_1008486C0;
  v39 = v36;
  v31 = v36;
  [(PDDatabaseManager *)v32 dispatchDelegateCallback:v38];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10014CB20;
  v37[3] = &unk_100848760;
  v37[4] = v32;
  [v35 enumerateKeysAndObjectsUsingBlock:v37];
}

- (void)deleteAllTransactionsFromTransactionSourceIdentifiers:(id)a3
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

        v9 = [TransactionSource anyInDatabase:self->_database withIdentifier:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [PaymentTransaction deleteEntitiesForTransactionSource:v9 inDatabase:self->_database];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)deleteAllMessagesFromPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [PaymentMessage deleteEntitiesForPass:v4 inDatabase:self->_database];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (void)archiveMessageWithIdentifier:(id)a3
{
  v3 = [PaymentMessage messagesInDatabase:self->_database withIdentifier:a3];
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

        [*(*(&v8 + 1) + 8 * v7) archive];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)settingEnabled:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = [Pass anyInDatabase:self->_database withUniqueID:v6];
  if (v7)
  {
    v8 = sub_1005DA658(self->_objectSettingsManager, a3, v7);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: Failed to find a pass in database with unique identifier '%@'.", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateSettings:(unint64_t)a3 forPass:(id)a4
{
  v6 = [a4 uniqueID];
  [(PDDatabaseManager *)self updateSettings:a3 forPassWithUniqueIdentifier:v6];
}

- (void)migrateObjectSettings
{
  v3 = PKObjectSettingsManagerSafeHavenArchivePath();
  v4 = [NSURL fileURLWithPath:v3];

  [(PDDatabaseManager *)self _migrateObjectSettingsWithSafeHavenArchiveURL:v4];
}

- (void)_setObjectSettingsManager:(id)a3
{
  v5 = a3;
  objectSettingsManager = self->_objectSettingsManager;
  p_objectSettingsManager = &self->_objectSettingsManager;
  if (objectSettingsManager != v5)
  {
    v8 = v5;
    objc_storeStrong(p_objectSettingsManager, a3);
    v5 = v8;
  }
}

- (void)_migrateObjectSettingsWithSafeHavenArchiveURL:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing migration for object settings with safehaven url %@", buf, 0xCu);
  }

  v16 = v4;
  v6 = sub_1005DA510(PDObjectSettingsManager, v4);
  v7 = sub_1005DA1B8(v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrating safe haven object settings for passes %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(PDDatabaseManager *)self passWithUniqueIdentifier:v13];
        if (v14)
        {
          v15 = sub_1005DA218(v6, v14);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = v13;
            v23 = 2048;
            v24 = v15;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating object settings for safe haven pass %@, to value %ld", buf, 0x16u);
          }

          [(PDDatabaseManager *)self updateSettings:v15 forPassWithUniqueIdentifier:v13];
        }

        else
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v13;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cannot migrate object settings for pass %@ because it doesnt exist in the database.", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  sub_1004719CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed migration for object settings", buf, 2u);
  }
}

- (void)updateSettings:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4
{
  v6 = a4;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100005B40;
  v80 = sub_10000B1AC;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100005B40;
  v66 = sub_10000B1AC;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100005B40;
  v60 = sub_10000B1AC;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100005B40;
  v54 = sub_10000B1AC;
  v55 = 0;
  database = self->_database;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10014DC38;
  v41[3] = &unk_100848788;
  v41[4] = self;
  v8 = v6;
  v42 = v8;
  v43 = &v76;
  v44 = &v62;
  v45 = &v56;
  v46 = &v50;
  v47 = &v72;
  v48 = &v68;
  v49 = a3;
  sub_1005D4424(database, v41);
  v9 = v77[5];
  if (!v9)
  {
    goto LABEL_34;
  }

  if ([v9 passType] == 1)
  {
    v10 = v77[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v73[3];
  v13 = *(v69 + 6);
  v34 = v11;
  v32 = [v11 shouldIgnoreTransactionUpdatesSwitch];
  v14 = __rbit32(v13);
  v15 = (v13 >> 4) & 4;
  v16 = v13 & 8;
  v33 = (v13 >> 4) & 0x40;
  v17 = (v13 >> 1) & 0x10 | (v14 >> 30) & 0xFFFFFFDF | (32 * ((v13 >> 4) & 1)) | v16 | v15 | v33;
  v18 = v17 ^ ((v12 >> 4) & 0x40 | v12 & 8 | (32 * ((v12 >> 4) & 1)) | (__rbit32(v12) >> 30) | (v12 >> 1) & 0x10 | (v12 >> 4) & 4);
  if ((v18 & 1) != 0 && v63[5])
  {
    v19 = v14 >> 30;
    WeakRetained = objc_loadWeakRetained(&self->_webServicesDelegate);
    [v77[5] serialNumber];
    if (v19)
      v21 = {;
      v22 = [v77[5] authenticationToken];
      [WeakRetained handlePushEnabled:v21 authToken:v22 webService:v63[5]];
    }

    else
      v21 = {;
      v22 = [v77[5] authenticationToken];
      [WeakRetained handlePushDisabled:v21 authToken:v22 webService:v63[5]];
    }
  }

  if ((v18 & 2) != 0)
  {
    v23 = objc_loadWeakRetained(&self->_delegate);
    [v23 noteLockScreenSettingsChangedForPassWithUniqueIdentifier:v8];
  }

  if (((v12 >> 3) & 1) != v16 >> 3 && v57[5])
  {
    if (v16)
    {
      v24 = objc_loadWeakRetained(&self->_notificationServicesDelegate);
      [v24 handlePushEnabledForPass:v77[5] withNotificationService:v57[5]];
    }

    else
    {
      if (v32)
      {
LABEL_20:
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10014DE38;
        v38[3] = &unk_1008487B0;
        v39 = v8;
        v40 = v17;
        [(PDDatabaseManager *)self dispatchDelegateCallback:v38];

        goto LABEL_21;
      }

      v24 = objc_loadWeakRetained(&self->_notificationServicesDelegate);
      [v24 handlePushDisabledForPass:v77[5] withNotificationService:v57[5]];
    }

    goto LABEL_20;
  }

LABEL_21:
  if (((v12 >> 6) & 1) != v15 >> 2 && v51[5])
  {
    v25 = objc_loadWeakRetained(&self->_notificationServicesDelegate);
    v26 = v25;
    v27 = v77[5];
    v28 = v51[5];
    if (v15)
    {
      [v25 handlePushEnabledForPass:v27 withNotificationService:v28];
    }

    else
    {
      [v25 handlePushDisabledForPass:v27 withNotificationService:v28];
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10014DE4C;
    v35[3] = &unk_1008487B0;
    v36 = v8;
    v37 = v17;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v35];
  }

  if ((v18 & 0x30) != 0)
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 noteAutomaticallyPresentSettingsChangedForPassWithUniqueIdentifier:v8];
  }

  if (v18 >= 0x40u)
  {
    v30 = objc_loadWeakRetained(&self->_delegate);
    [v30 paymentPassWithUniqueIdentifier:v8 didEnableDailyCashNotifications:v33 != 0];
  }

  if (v73[3] != v69[3])
  {
    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 noteSettingsChangedForPassWithUniqueIdentifier:v8 newSettings:v69[3]];
  }

LABEL_34:
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
}

- (void)updateSettings:(unint64_t)a3 forObjectWithUniqueIdentifier:(id)a4
{
  v7 = a4;
  v6 = [Pass anyInDatabase:self->_database withUniqueID:?];
  if (v6)
  {
    [(PDDatabaseManager *)self updateSettings:a3 forPassWithUniqueIdentifier:v7];
  }
}

- (void)noteObjectSharedWithUniqueID:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 valueForProperty:@"share_count"];
    v5 = [v4 integerValue];

    v6 = [NSNumber numberWithInteger:v5 + 1];
    [v7 setValue:v6 forProperty:@"share_count"];

    v3 = v7;
  }
}

- (BOOL)getRegistrationStatus:(unint64_t *)a3 date:(id *)a4 forSerialNumber:(id)a5 webService:(id)a6
{
  v10 = a5;
  v11 = [(PDDatabaseManager *)self _databaseWebService:a6];
  v12 = [Pass anyInDatabase:self->_database withWebService:v11 serialNumber:v10];

  if (v12)
  {
    [v12 getPushRegistrationStatus:a3 date:a4];
  }

  return v12 != 0;
}

- (void)updateRegistrationStatus:(unint64_t)a3 date:(id)a4 forSerialNumber:(id)a5 webService:(id)a6
{
  v13 = a4;
  v10 = a5;
  v11 = [(PDDatabaseManager *)self _databaseWebService:a6];
  if (v11)
  {
    v12 = [Pass anyInDatabase:self->_database withWebService:v11 serialNumber:v10];
    [v12 updateWithPushRegistrationStatus:a3 date:v13];
  }
}

- (void)updateLastModifiedTag:(id)a3 forSerialNumber:(id)a4 webService:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(PDDatabaseManager *)self _databaseWebService:a5];
  if (v9)
  {
    v10 = [Pass anyInDatabase:self->_database withWebService:v9 serialNumber:v8];
    [v10 updateWithLastModifiedTag:v11];
  }
}

- (void)updateWebService:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self _databaseWebService:v4];
  [v5 updateWithWebService:v4];
}

- (id)lastDeletionDateForWebService:(id)a3
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:a3];
  v4 = [v3 lastDeletionDate];

  return v4;
}

- (id)lastUpdatedTagForWebService:(id)a3
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:a3];
  v4 = [v3 lastUpdatedTag];

  return v4;
}

- (id)tagLastUpdateDateForWebService:(id)a3
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:a3];
  v4 = [v3 tagLastUpdateDate];

  return v4;
}

- (void)updateLastDeletionDate:(id)a3 forWebService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseWebService:a4];
  [v7 updateWithLastDeletionDate:v6];
}

- (void)updateLastUpdatedTag:(id)a3 forWebService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseWebService:a4];
  [v7 updateWithLastUpdatedTag:v6];
}

- (id)webServicesForPassTypeID:(id)a3
{
  v4 = [PassType anyInDatabase:self->_database withPassTypeID:a3];
  v5 = [WebService webServicesInDatabase:self->_database withPassType:v4];

  return v5;
}

- (id)pushEnabledPassTypeIDs
{
  v3 = [(SQLiteEntity *)PassType queryWithDatabase:self->_database predicate:0];
  v4 = +[NSMutableSet set];
  v15 = @"identifier";
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10014E590;
  v12 = &unk_10083CBC0;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v3 enumeratePersistentIDsAndProperties:v5 usingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

- (BOOL)hasPushEnabledPassesForWebService:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [(PDDatabaseManager *)self _predicateMatchingPassesForWebService:v4];
  v7 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v6];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014E924;
  v9[3] = &unk_100848800;
  v9[4] = self;
  v9[5] = &v10;
  [Pass enumeratePassUniqueIDsAndTypesForQuery:v7 withHandler:v9];
  LOBYTE(self) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return self;
}

- (BOOL)getWebService:(id *)a3 updateContext:(id *)a4 forPassWithUniqueID:(id)a5
{
  v7 = [Pass anyInDatabase:self->_database withUniqueID:a5];
  v8 = [v7 webService];
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      *a3 = [v8 webService];
    }

    if (a4)
    {
      *a4 = [v7 updateContext];
    }
  }

  return v9 != 0;
}

- (BOOL)getPassTypeID:(id *)a3 teamID:(id *)a4 associatedPassTypeIdentifiers:(id *)a5 associatedApplicationIdentifiers:(id *)a6 forUniqueID:(id)a7
{
  v11 = [Pass anyInDatabase:self->_database withUniqueID:a7];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 passType];
    *a3 = [v13 passTypeID];
    *a4 = [v13 teamID];
    *a5 = [v12 associatedPassTypeIdentifiers];
    *a6 = [v12 associatedApplicationIdentifiers];
  }

  return v12 != 0;
}

- (id)passUpdateContextForSerialNumber:(id)a3 webService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseWebService:a4];
  v8 = [Pass anyInDatabase:self->_database withWebService:v7 serialNumber:v6];

  v9 = [v8 updateContext];

  return v9;
}

- (id)webServiceForPass:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self _passTypeForPass:v4];
  v6 = [(PDDatabaseManager *)self _webServiceForPass:v4 passType:v5];

  v7 = [v6 webService];

  return v7;
}

- (BOOL)getLastPushDate:(id *)a3 lastUpdateDate:(id *)a4 frequencyScore:(double *)a5 forPassTypeID:(id)a6
{
  v9 = [PassType anyInDatabase:self->_database withPassTypeID:a6];
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      *a3 = [v9 lastPushDate];
    }

    if (a4)
    {
      *a4 = [v10 lastUpdateDate];
    }

    if (a5)
    {
      [v10 frequencyScore];
      *a5 = v11;
    }
  }

  return v10 != 0;
}

- (BOOL)uniqueIDIsRevoked:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v4 = [v3 revoked];

  return v4;
}

- (void)updateLastPushDate:(id)a3 frequencyScore:(double)a4 forPassTypeID:(id)a5
{
  v10 = a3;
  v8 = [PassType anyInDatabase:self->_database withPassTypeID:a5];
  v9 = v8;
  if (v8)
  {
    [v8 updateLastPushDate:v10];
    [v9 updateFrequencyScore:a4];
  }
}

- (void)updateLastUpdateDate:(id)a3 forPassTypeID:(id)a4
{
  v8 = a3;
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:a4];
  v7 = v6;
  if (v6)
  {
    [v6 updateLastUpdateDate:v8];
  }
}

- (void)updateRevocationStatus:(BOOL)a3 forUniqueID:(id)a4
{
  v4 = a3;
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a4];
  [v5 updateWithRevocationStatus:v4];
}

- (void)updateIngestedDate:(id)a3 forUniqueID:(id)a4
{
  database = self->_database;
  v6 = a3;
  v7 = [Pass anyInDatabase:database withUniqueID:a4];
  [v7 updateWithIngestedDate:v6];
}

- (void)enumeratePassUpdateContextsForWebService:(id)a3 withHandler:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = [(PDDatabaseManager *)self _predicateMatchingPassesForWebService:a3];
  v9 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v8];

  [Pass enumerateUpdateContextsForQuery:v9 withHandler:v7];
}

- (void)enumerateOrganizationNamesForPassTypeID:(id)a3 withHandler:(id)a4
{
  v10 = a4;
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:a3];
  if (v6)
  {
    database = self->_database;
    v8 = [Pass predicateForPassType:v6];
    v9 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v8];

    [Pass enumerateOrganizationNamesForQuery:v9 withHandler:v10];
  }
}

- (id)passesForNotificationService:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _databaseNotificationService:?];
    if (v4)
    {
      database = self->_database;
      v6 = [Pass predicateForNotificationService:v4];
      v7 = [Pass passesInDatabase:database matchingPredicate:v6];
    }

    else
    {
      v7 = objc_alloc_init(NSSet);
    }
  }

  else
  {
    v7 = objc_alloc_init(NSSet);
  }

  return v7;
}

- (id)paymentApplicationsForNotificationService:(id)a3
{
  if (a3)
  {
    v4 = [(PDDatabaseManager *)self _databaseNotificationService:?];
    if (v4)
    {
      v5 = [PaymentApplication paymentApplicationsInDatabase:self->_database forNotificationService:v4];
    }

    else
    {
      v5 = objc_alloc_init(NSSet);
    }

    v6 = v5;
  }

  else
  {
    v6 = objc_alloc_init(NSSet);
  }

  return v6;
}

- (id)paymentApplicationWithDPANIdentifier:(id)a3
{
  v3 = [(PDDatabaseManager *)self _dbPaymentApplicationWithDPANIdentifier:a3];
  v4 = [v3 paymentApplication];

  return v4;
}

- (id)_dbPaymentApplicationWithDPANIdentifier:(id)a3
{
  secureElement = self->_secureElement;
  v5 = a3;
  v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication predicateForDPANIdentifier:v5];

  v13[0] = v7;
  v8 = [PaymentApplication predicateForSecureElementIdentifiers:v6];
  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];

  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v11 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v10];

  return v11;
}

- (id)paymentApplicationWithPassUniqueIdentifier:(id)a3 secureElementIdentifier:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v5 = [PaymentApplication anyInDatabase:self->_database withPassUniqueIdentifier:a3 secureElementIdentifier:a4 paymentApplicationIdentifier:a5];
  v6 = [v5 paymentApplication];

  return v6;
}

- (id)paymentApplicationsForPassUniqueIdentifier:(id)a3
{
  database = self->_database;
  secureElement = self->_secureElement;
  v5 = a3;
  v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication paymentApplicationsInDatabase:database forPassUniqueIdentifier:v5 secureElementIdentifiers:v6];

  return v7;
}

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v4 = [v3 defaultPaymentApplication];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 paymentApplication];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_primaryPaymentApplicationForPassUniqueIdentifier:(id)a3
{
  secureElement = self->_secureElement;
  v5 = a3;
  v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication predicateForSecureElementIdentifiers:v6];
  v8 = [PaymentApplication predicateForPassWithUniqueIdentifier:v5, v7];

  v14[1] = v8;
  v9 = [PaymentApplication predicateForPrimaryPaymentApplication:1];
  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];

  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v12 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v11];

  return v12;
}

- (id)primaryPaymentApplicationForPassUniqueIdentifier:(id)a3
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:a3];
  v4 = [v3 paymentApplication];

  return v4;
}

- (int64_t)primaryPaymentApplicationStateForPassUniqueIdentifier:(id)a3
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:a3];
  v4 = [v3 state];

  return v4;
}

- (id)primarySubcredentialIdentifiersForPassUniqueIdentifier:(id)a3
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appletSubcredentials];
    v6 = [v5 pk_setByApplyingBlock:&stru_100848840];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)paymentApplicationWithVPANIdentifier:(id)a3
{
  v4 = [PaymentApplication predicateForVPANID:a3 primaryOnly:0];
  v5 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v4];
  v6 = [v5 paymentApplication];

  return v6;
}

- (id)passWithVPANIdentifier:(id)a3
{
  v4 = [(PDDatabaseManager *)self paymentApplicationWithVPANIdentifier:a3];
  if (v4)
  {
    v5 = [(PDDatabaseManager *)self passWithPaymentApplication:v4];
    v6 = [v5 secureElementPass];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)passesWithActiveVPAN
{
  database = self->_database;
  v3 = [(PDDatabaseManager *)self _predicateForActiveVPAN];
  v4 = [Pass passesInDatabase:database matchingPredicate:v3];

  return v4;
}

- (id)_predicateForActiveVPAN
{
  v2 = [(PDDatabaseManager *)self _predicateForType:1];
  v3 = +[Pass predicateForHasVPANID];
  v9[1] = v3;
  v4 = [NSSet setWithArray:&off_1008A47E8];
  v5 = [Pass predicateForPaymentApplicationStates:v4];
  v9[2] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  return v7;
}

- (void)updateDateLastUsedBySafari:(id)a3 forVirtualCardWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [VPANVirtualCard anyInDatabase:self->_database withVirtualCardIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    [v7 updateDateLastUsedBySafari:v10];
  }

  else
  {
    v9 = [VPANVirtualCard insertVPANVirtualCardMetadataWithIdentifier:v6 dateLastUsedBySafari:v10 inDatabase:self->_database];
  }
}

- (void)updateCardholderNameFromSafari:(id)a3 forVirtualCardWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [VPANVirtualCard anyInDatabase:self->_database withVirtualCardIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    [v7 updateCardholderNameFromSafari:v10];
  }

  else
  {
    v9 = [VPANVirtualCard insertVPANVirtualCardMetadataWithIdentifier:v6 cardholderNameFromSafari:v10 inDatabase:self->_database];
  }
}

- (id)transactionServiceForPaymentApplication:(id)a3
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:a3];
  v4 = [v3 transactionService];
  v5 = [v4 notificationService];

  return v5;
}

- (id)messageServiceForPaymentApplication:(id)a3
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:a3];
  v4 = [v3 transactionService];
  v5 = [v4 notificationService];

  return v5;
}

- (id)notificationServiceOfType:(unint64_t)a3 forPassWithUniqueIdentifier:(id)a4
{
  if (!a4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v5 = [Pass anyInDatabase:self->_database withUniqueID:?];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 messageService];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [v5 transactionService];
  }

  v8 = v7;
LABEL_9:

LABEL_10:
  v9 = [v8 notificationService];

  return v9;
}

- (id)deviceSpecificPaymentApplications
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [PaymentApplication paymentApplicationsInDatabase:self->_database forSecureElementIdentifiers:v3];

  return v4;
}

- (BOOL)notificationServiceIsEnabledForAnyPasses:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self passesForNotificationService:v4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014FE7C;
  v8[3] = &unk_100848868;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

- (unint64_t)registrationStatusForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a4];
  v6 = [v5 passNotificationServiceForType:a3];
  v7 = [v6 registrationStatus];

  return v7;
}

- (id)lastUpdatedDateForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a4];
  v6 = [v5 passNotificationServiceForType:a3];
  v7 = [v6 lastUpdatedDate];

  return v7;
}

- (id)lastUpdatedTagForNotificationServiceType:(unint64_t)a3 passUniqueIdentifier:(id)a4
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:a4];
  v6 = [v5 passNotificationServiceForType:a3];
  v7 = [v6 lastUpdatedTag];

  return v7;
}

- (void)updateRegistrationStatus:(unint64_t)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5
{
  v8 = [Pass anyInDatabase:self->_database withUniqueID:a5];
  v7 = [v8 passNotificationServiceForType:a4];
  [v7 updateWithRegistrationStatus:a3];
}

- (void)updateLastUpdatedDate:(id)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5
{
  database = self->_database;
  v8 = a3;
  v10 = [Pass anyInDatabase:database withUniqueID:a5];
  v9 = [v10 passNotificationServiceForType:a4];
  [v9 updateWithLastUpdatedDate:v8];
}

- (void)updateLastUpdatedTag:(id)a3 forNotificationServiceType:(unint64_t)a4 passUniqueIdentifier:(id)a5
{
  database = self->_database;
  v8 = a3;
  v10 = [Pass anyInDatabase:database withUniqueID:a5];
  v9 = [v10 passNotificationServiceForType:a4];
  [v9 updateWithLastUpdatedTag:v8];
}

- (void)updateLastUpdatedDate:(id)a3 forNotificationService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:a4];
  [v7 updateWithLastUpdatedDate:v6];
}

- (void)updateLastUpdatedTag:(id)a3 forNotificationService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:a4];
  [v7 updateWithLastUpdatedTag:v6];
}

- (void)updateAuthenticationToken:(id)a3 forNotificationService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:a4];
  [v7 updateWithAuthenticationToken:v6];
}

- (void)updateAppLaunchToken:(id)a3 forNotificationService:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:a4];
  [v7 updateWithAppLaunchToken:v6];
}

- (void)updateNotificationService:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self _databaseNotificationService:v4];
  [v5 updateWithNotificationService:v4];
}

- (void)updateTransitAppletStateWithStationNames:(id)a3 forPaymentApplication:(id)a4 withPassUniqueIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100005B40;
  v35 = sub_10000B1AC;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100005B40;
  v29 = sub_10000B1AC;
  v30 = 0;
  database = self->_database;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100150690;
  v19[3] = &unk_1008488B8;
  v19[4] = self;
  v12 = v10;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v23 = &v25;
  v24 = &v31;
  sub_1005D4424(database, v19);
  if (v32[5] && v26[5])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100150A3C;
    v15[3] = &unk_1008488E0;
    v16 = v12;
    v17 = &v25;
    v18 = &v31;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v15];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

- (void)updateTransitAppletStateWithHistory:(id)a3 transactionDate:(id)a4 forPaymentApplication:(id)a5 withPassUniqueIdentifier:(id)a6 forceTransactionGeneration:(BOOL)a7 recoverMissingTransactions:(BOOL)a8 balanceLabelDictionary:(id)a9 unitDictionary:(id)a10 planLabelDictionary:(id)a11 completion:(id)a12
{
  v12 = a8;
  v44 = a3;
  v46 = a4;
  v37 = a5;
  v51 = a6;
  v38 = a9;
  v40 = a10;
  v42 = a11;
  v48 = a12;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = sub_100005B40;
  v111 = sub_10000B1AC;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_100005B40;
  v105 = sub_10000B1AC;
  v106 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_100005B40;
  v99 = sub_10000B1AC;
  v100 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_100005B40;
  v93 = sub_10000B1AC;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_100005B40;
  v87 = sub_10000B1AC;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_100005B40;
  v81 = sub_10000B1AC;
  v82 = 0;
  database = self->_database;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10015116C;
  v61[3] = &unk_100848908;
  v18 = self;
  v61[4] = self;
  v52 = v51;
  v62 = v52;
  v19 = v37;
  v63 = v19;
  v20 = v44;
  v64 = v20;
  v69 = &v89;
  v39 = v38;
  v65 = v39;
  v41 = v40;
  v66 = v41;
  v45 = v42;
  v67 = v45;
  v70 = &v77;
  v71 = &v83;
  v75 = a7;
  v47 = v46;
  v68 = v47;
  v72 = &v95;
  v73 = &v101;
  v76 = v12;
  v74 = &v107;
  sub_1005D4424(database, v61);
  v43 = v20;
  v21 = v19;
  if ([v19 supportsSuica])
  {
    v22 = 1024;
  }

  else
  {
    v22 = 2048;
  }

  v23 = v102[5];
  if (v23)
  {
    [v23 addUpdateReasons:v22];
    v24 = [(PDDatabaseManager *)v18 insertOrUpdatePaymentTransaction:v102[5] withPassUniqueIdentifier:v52 paymentApplication:v21 insertionMode:2 performTruncation:1 insertedTransaction:0];
  }

  v50 = v21;
  v25 = [v108[5] count];
  if (!v25)
  {
LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  v26 = [[NSMutableArray alloc] initWithCapacity:v25];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = v108[5];
  v28 = [v27 countByEnumeratingWithState:&v57 objects:v113 count:16];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = *v58;
  do
  {
    v30 = 0;
    do
    {
      if (*v58 != v29)
      {
        objc_enumerationMutation(v27);
      }

      v31 = *(*(&v57 + 1) + 8 * v30);
      v32 = v96[5];
      if (v31 == v32 || !v12)
      {
        if (v31 != v32)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v34 = [v108[5] lastObject];
        v35 = v31 == v34;

        if (v35)
        {
LABEL_20:
          [v31 addUpdateReasons:v22];
        }
      }

      v36 = [(PDDatabaseManager *)v18 insertOrUpdatePaymentTransaction:v31 withPassUniqueIdentifier:v52 paymentApplication:v50 insertionMode:0 performTruncation:1 insertedTransaction:0];
      if (v36)
      {
        [v26 addObject:v36];
      }

      v30 = v30 + 1;
    }

    while (v28 != v30);
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v113 count:16];
  }

  while (v28);
LABEL_25:

  if (![v26 count])
  {

    goto LABEL_27;
  }

LABEL_28:
  if (v84[5] && v78[5])
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100151D78;
    v53[3] = &unk_1008488E0;
    v54 = v52;
    v55 = &v77;
    v56 = &v83;
    [(PDDatabaseManager *)v18 dispatchDelegateCallback:v53];
  }

  if (v48)
  {
    v48[2](v48, v26, v90[5]);
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);
}

- (id)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = a3;
  v9 = [v7 secureElementIdentifier];
  v10 = [v7 applicationIdentifier];

  v11 = [PaymentApplication anyInDatabase:database withPassUniqueIdentifier:v8 secureElementIdentifier:v9 paymentApplicationIdentifier:v10];

  if (v11)
  {
    v12 = +[FelicaTransitAppletState anyInDatabase:withPaymentApplicationPID:](FelicaTransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v11 persistentID]);
    if (!v12)
    {
      v12 = +[TransitAppletState anyInDatabase:withPaymentApplicationPID:](TransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v11 persistentID]);
    }

    v13 = [v12 transitAppletState];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canPerformAction:(id)a3 forPassWithUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDDatabaseManager *)self passWithUniqueIdentifier:v7];
  v9 = [v8 paymentPass];

  if (v9)
  {
    [v9 effectiveContactlessPaymentApplicationState];
    v10 = PKPaymentApplicationStateIsPersonalized() != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 serviceProviderSupportedCountries];
  v12 = [v6 serviceProviderAcceptedNetworks];
  v13 = [NSSet setWithArray:v12];

  v14 = +[NSDate date];
  if ([v6 type] == 2)
  {
    v15 = [v6 associatedPlanIdentifier];
    if (v15)
    {
      v16 = [v6 associatedPlan];

      if (!v16)
      {
        v17 = PKTransitCommutePlanInPassForIdentifier();
        [v6 setAssociatedPlan:v17];
      }
    }
  }

  v18 = [v6 availableFrom];
  v19 = [v6 availableUntil];
  if (v10)
  {
    v20 = -[PDDatabaseManager passesForNonWebInAppPaymentOnNetworks:withCapabilities:issuerCountryCodes:paymentRequestType:isMultiTokensRequest:webService:](self, "passesForNonWebInAppPaymentOnNetworks:withCapabilities:issuerCountryCodes:paymentRequestType:isMultiTokensRequest:webService:", v13, [v6 serviceProviderCapabilities], v11, 0, 0, 0);

    if (v20)
    {
      if (v18)
      {
        LODWORD(v20) = [v14 compare:v18] != -1;
        if (!v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      if (v19)
      {
        LOBYTE(v20) = [v14 compare:v19] != 1;
      }
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

LABEL_18:

  return v20;
}

- (void)updatePeerPaymentMemo:(id)a3 forTransactionWithServiceIdentifier:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001521B0;
  v9[3] = &unk_100841740;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(PDDatabaseManager *)self performTransactionWithBlock:v9];
}

- (void)updatePeerPaymentMessageReceivedDate:(id)a3 forTransactionWithServiceIdentifier:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001523D8;
  v9[3] = &unk_100841740;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(PDDatabaseManager *)self performTransactionWithBlock:v9];
}

- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentMemo:(id)a3 counterpartImageDataIdentifier:(id)a4 forTransactionWithServiceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100005B40;
  v26 = sub_10000B1AC;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100152648;
  v17[3] = &unk_100848930;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  v21 = &v22;
  [(PDDatabaseManager *)self performTransactionWithBlock:v17];
  v13[2](v13, 1, v23[5]);

  _Block_object_dispose(&v22, 8);
}

- (id)updateMerchant:(id)a3 forTransaction:(id)a4 passUniqueIdentifier:(id)a5
{
  v7 = a3;
  database = self->_database;
  v9 = [a4 identifier];
  v10 = [PaymentTransaction anyInDatabase:database withIdentifier:v9];

  [v10 updateWithMerchant:v7];

  return v7;
}

- (id)insertOrUpdatePaymentMessage:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 performTruncation:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = 0;
  if (v10 && v11)
  {
    database = self->_database;
    v15 = [v10 serviceIdentifier];
    v16 = [PaymentMessage anyInDatabase:database withServiceIdentifier:v15 forPassWithUniqueIdentifier:v11];

    if (v16)
    {
      [v16 updateWithPaymentMessage:v10];
    }

    else
    {
      v17 = self->_database;
      v18 = [v10 messageDate];
      v19 = [PaymentMessage numberOfPaymentMessagesInDatabase:v17 forPassUniqueIdentifier:v11 newerThanDate:v18];

      v20 = PKMaxPerPassPaymentMessageHistory;
      if (v19 < PKMaxPerPassPaymentMessageHistory && [v10 isValid])
      {
        v26 = [Pass anyInDatabase:self->_database withUniqueID:v11];
        v21 = [v12 applicationIdentifier];
        v22 = self->_database;
        v23 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
        v27 = v21;
        v24 = [PaymentApplication anyInDatabase:v22 withApplicationIdentifier:v21 secureElementIdentifiers:v23];

        v16 = [PaymentMessage insertPaymentMessage:v10 withPaymentPass:v26 paymentApplication:v24 inDatabase:self->_database];
        if (v6)
        {
          [PaymentMessage truncateEntitiesForPass:v26 inDatabase:self->_database toCount:v20];
          if (([v16 existsInDatabase] & 1) == 0)
          {

            v16 = 0;
          }
        }
      }

      else
      {
        v16 = 0;
      }
    }

    v13 = [v16 paymentMessage];
    if (v13)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100152AD4;
      v28[3] = &unk_100848738;
      v29 = v11;
      v30 = v13;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v28];
    }
  }

  return v13;
}

- (id)insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:(id)a3
{
  v3 = [AppletStateDirty insertOrUpdateAppletStateDirtyForPassUniqueIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 dirtyAppletState];

  return v4;
}

- (void)deleteDirtyAppletStatesForTransitAppletStateDirty:(id)a3
{
  database = self->_database;
  v5 = a3;
  [AppletStateDirty deleteEntitiesForAppletState:v5 inDatabase:database];
  v12 = [v5 passUniqueIdentifier];
  v6 = [v5 applicationIdentifier];
  v7 = [v5 secureElementIdentifier];

  v8 = [PaymentApplication anyInDatabase:self->_database withPassUniqueIdentifier:v12 secureElementIdentifier:v7 paymentApplicationIdentifier:v6];
  v9 = +[TransitAppletState anyInDatabase:withPaymentApplicationPID:](TransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v8 persistentID]);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 transitAppletState];
    [v11 setAppletStateDirty:0];
    [v10 updateWithAppletState:v11];
  }
}

- (id)retrieveDirtyAppletStates
{
  v2 = [AppletStateDirty dirtyAppletStatesInDatabase:self->_database];
  v3 = objc_alloc_init(NSMutableSet);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) dirtyAppletState];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_recomputedPaymentBalanceForIdentifier:(id)a3 value:(id)a4 currency:(id)a5 exponent:(int64_t)a6 unitDictionary:(id)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a7 objectForKeyedSubscript:v13];
  [v14 integerValue];
  v15 = PKLocalizedPaymentUnitKeyForType();
  v16 = v15;
  if (v14 && v15)
  {
    v17 = PKLocalizedPaymentString(v15, @"%lu", [v12 unsignedIntegerValue]);
    v18 = [[PKCurrencyAmount alloc] initWithAmount:v12 exponent:a6 preformattedString:v17];

    v19 = [[PKPaymentBalance alloc] initWithIdentifier:v13 forCurrencyAmount:v18];
    v13 = v18;
  }

  else
  {
    v17 = [[PKCurrencyAmount alloc] initWithAmount:v12 currency:v11 exponent:a6];

    v19 = [[PKPaymentBalance alloc] initWithIdentifier:v13 forCurrencyAmount:v17];
  }

  v20 = +[NSDate date];
  [v19 setLastUpdateDate:v20];

  return v19;
}

- (void)resolvePendingTransitTransactionAmountsWithPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v60 = PKPaymentPassUnitDictionary(v4);
  v51 = v4;
  v59 = PKPaymentPassBalanceLabelDictionary(v4);
  v55 = self;
  v70 = [PaymentTransactionAmount pendingTransactionAmountsInDatabase:self->_database forPassWithUniqueIdentifier:v5];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolving pending transit transaction amounts for pass with unique identifier: %@", buf, 0xCu);
  }

  oslog = v6;

  v56 = v5;
  v7 = [PaymentBalance paymentBalancesInDatabase:self->_database forPassWithUniqueIdentifier:v5];
  v8 = objc_alloc_init(NSMutableDictionary);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v50 = v7;
  v9 = [v7 allObjects];
  v10 = [v9 countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v86;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v86 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v85 + 1) + 8 * i);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v15 = [v14 identifiers];
        v16 = [v15 allObjects];

        v17 = [v16 countByEnumeratingWithState:&v81 objects:v90 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v82;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v82 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [v8 setObject:v14 forKeyedSubscript:*(*(&v81 + 1) + 8 * j)];
            }

            v18 = [v16 countByEnumeratingWithState:&v81 objects:v90 count:16];
          }

          while (v18);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v11);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v70;
  v61 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (v61)
  {
    v58 = *v78;
    v21 = PKNoCurrencyCode;
    v54 = PKNoCurrencyCode;
    do
    {
      for (k = 0; k != v61; k = k + 1)
      {
        if (*v78 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v77 + 1) + 8 * k);
        v24 = [v23 transactionAmount];
        v25 = [v24 unitIdentifier];
        v26 = [v60 objectForKeyedSubscript:v25];
        v67 = [v59 objectForKeyedSubscript:v25];
        v27 = [v8 objectForKeyedSubscript:v25];
        v69 = v26;
        [v26 integerValue];
        v66 = PKLocalizedPaymentUnitKeyForType();
        v28 = [v24 amount];
        v71 = [v28 amount];
        v29 = [v28 currency];
        v65 = v28;
        v30 = [v28 exponent];
        v31 = v29;
        v32 = v31;
        if (v31 == v21)
        {
        }

        else
        {
          if (v31)
          {
            v33 = v21 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {

LABEL_34:
            v62 = v27;
            v64 = v24;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v93 = v25;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Encountered a pending amount for unitIdentifier %@ a currency which shouldnt be possible", buf, 0xCu);
            }

            v63 = v25;

            v39 = [PKCurrencyAmount alloc];
            v40 = v71;
            v41 = v32;
            v42 = v30;
LABEL_38:
            v38 = [v39 initWithAmount:v40 currency:v41 exponent:v42];
            goto LABEL_39;
          }

          v34 = [v31 isEqualToString:v21];

          if (!v34)
          {
            goto LABEL_34;
          }
        }

        v57 = v30;
        v35 = v67;
        if (!v69)
        {
          goto LABEL_40;
        }

        v62 = v27;
        v63 = v25;
        v64 = v24;
        if (!v66)
        {
          v39 = [PKCurrencyAmount alloc];
          v40 = v71;
          v41 = v32;
          v42 = v57;
          goto LABEL_38;
        }

        v36 = [v71 pk_absoluteValue];
        v37 = PKLocalizedPaymentString(v66, @"%lu", [v36 unsignedLongValue]);

        v38 = [[PKCurrencyAmount alloc] initWithAmount:v71 exponent:v57 preformattedString:v37];
LABEL_39:
        v35 = v67;
        v68 = v38;
        v43 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v38 label:v35];
        [v23 updateWithPaymentAmount:v43];
        v44 = [v23 paymentTransaction];
        v45 = [v44 paymentApplication];
        v46 = [v44 paymentTransaction];
        v47 = [v45 paymentApplication];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100153654;
        v72[3] = &unk_100848958;
        v73 = v56;
        v74 = v46;
        v75 = v47;
        v27 = v62;
        v76 = v62;
        v48 = v47;
        v49 = v46;
        [(PDDatabaseManager *)v55 dispatchDelegateCallback:v72];

        v21 = v54;
        v25 = v63;
        v24 = v64;
LABEL_40:
      }

      v61 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    }

    while (v61);
  }
}

- (void)recomputeBalancesForPaymentPass:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v25 = self;
  v6 = [PaymentBalance paymentBalancesInDatabase:self->_database forPassWithUniqueIdentifier:v5];
  if ([v6 count])
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recomputing balances for pass with unique identifier: %@", buf, 0xCu);
    }

    v21 = v5;

    v22 = v4;
    v24 = PKPaymentPassUnitDictionary(v4);
    v8 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v6;
    obj = [v6 allObjects];
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 identifiers];
          v15 = [v14 anyObject];
          v16 = [v13 value];
          v17 = [v13 currencyCode];
          v18 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](v25, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", v15, v16, v17, [v13 exponent], v24);

          v19 = [v13 localizedTitle];
          [v18 setLocalizedTitle:v19];

          [v8 addObject:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v5 = v21;
    if ([v8 count])
    {
      [(PDDatabaseManager *)v25 updatePaymentBalances:v8 forPassUniqueIdentifier:v21];
    }

    v4 = v22;
    v6 = v20;
  }
}

- (void)_updatePaymentBalancesAndPlansForTransitAppletState:(id)a3 passUniqueIdentifier:(id)a4 paymentApplicationPID:(int64_t)a5 unitDictionary:(id)a6
{
  v9 = a3;
  v10 = a4;
  v59 = a6;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = self;
  v58 = [Pass anyInDatabase:self->_database withUniqueID:v10];
  v13 = [v9 balances];
  v60 = v11;
  if (v13)
  {
    v14 = v13;
    v15 = [v9 balances];
    v16 = [v15 count];

    if (v16)
    {
      v55 = v10;
      v56 = v9;
      v17 = [v58 persistentID];
      v54 = [TransitAppletState anyInDatabase:self->_database withPaymentApplicationPID:a5];
      v18 = +[TransitAppletStateBalance transitAppletBalancesInDatabase:forPaymentPassPID:andTransitAppletStatePID:](TransitAppletStateBalance, "transitAppletBalancesInDatabase:forPaymentPassPID:andTransitAppletStatePID:", self->_database, v17, [v54 persistentID]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v62;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v62 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v61 + 1) + 8 * i);
            v24 = [v23 identifier];
            v25 = [v23 balance];
            v26 = [v23 currency];
            v27 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](v12, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", v24, v25, v26, [v23 exponent], v59);

            v28 = [v23 expirationDate];
            [v27 setExpirationDate:v28];

            v11 = v60;
            [v60 addObject:v27];
          }

          v20 = [v18 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v20);
      }

      v29 = PKLogFacilityTypeGetObject();
      v10 = v55;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v55;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating balances for multiple balance pass with unique identifier: %@", &buf, 0xCu);
      }

      v9 = v56;
    }
  }

  v30 = [v9 balance];
  if (v30)
  {
    v31 = [PKCurrencyAmount alloc];
    v32 = [v9 balance];
    v33 = [v9 currency];
    v34 = [v31 initWithAmount:v32 currency:v33 exponent:0];

    v11 = v60;
    v35 = [PKPaymentBalance alloc];
    v36 = [v35 initWithIdentifier:PKPaymentBalanceStoredValueDefaultIdentifier forCurrencyAmount:v34];
    v37 = +[NSDate date];
    [v36 setLastUpdateDate:v37];

    [v60 addObject:v36];
    v38 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updating balance for single balance pass with unique identifier: %@", &buf, 0xCu);
    }
  }

  v39 = [v9 loyaltyBalance];

  if (v39)
  {
    v40 = [PKCurrencyAmount alloc];
    v41 = [v9 loyaltyBalance];
    v42 = v41;
    if (v41)
    {
      [v41 decimalValue];
    }

    else
    {
      buf = 0uLL;
      v66 = 0;
    }

    v43 = [NSDecimalNumber decimalNumberWithDecimal:&buf];
    v44 = [v40 initWithAmount:v43 currency:PKNoCurrencyCode exponent:0];

    v45 = [PKPaymentBalance alloc];
    v46 = [v45 initWithIdentifier:PKPaymentBalanceLoyaltyBalanceDefaultIdentifier forCurrencyAmount:v44];
    v47 = +[NSDate date];
    [v46 setLastUpdateDate:v47];

    [v11 addObject:v46];
    v48 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Updating loyalty balance for single balance pass with unique identifier: %@", &buf, 0xCu);
    }
  }

  if ([v11 count])
  {
    v49 = v11;
    v50 = [v9 historySequenceNumber];
    v51 = [v50 stringValue];
    [(PDDatabaseManager *)v12 updatePaymentBalances:v49 forPassUniqueIdentifier:v10 transactionSequenceNumber:v51];
  }

  v52 = [v9 commutePlans];
  v53 = v52;
  if (v52 && [v52 count])
  {
    [(PDDatabaseManager *)v12 updateAppletCommutePlans:v53 forPassUniqueIdentifier:v10 paymentApplicationPID:a5];
  }
}

- (void)updateAppletCommutePlans:(id)a3 forPassUniqueIdentifier:(id)a4 paymentApplicationPID:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [Pass anyInDatabase:self->_database withUniqueID:v9];
  if (v10)
  {
    v42 = v9;
    v11 = [TransitAppletState anyInDatabase:self->_database withPaymentApplicationPID:a5];
    v12 = [v10 persistentID];
    v39 = v11;
    v13 = [v11 persistentID];
    [TransitAppletStateCommutePlan deleteEntitiesForPaymentPassPID:v12 andTransitAppletStatePID:v13 inDatabase:self->_database];
    v14 = [TransitAppletStateCommutePlan insertTransitAppletCommutePlans:v8 withPaymentPassPID:v12 withTransitAppletStatePID:v13 inDatabase:self->_database];
    v45 = objc_alloc_init(NSMutableArray);
    v41 = v10;
    v15 = [v10 pass];
    v16 = [(PDDatabaseManager *)self _registeredPass:v15];
    v17 = [v16 paymentPass];

    v38 = v17;
    v18 = [v17 transitCommutePlans];
    v19 = objc_alloc_init(NSMutableDictionary);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          v26 = [v25 identifier];
          [v19 setObject:v25 forKey:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v22);
    }

    v40 = self;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = v8;
    obj = v8;
    v27 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v46 + 1) + 8 * j);
          v32 = [v31 identifier];
          v33 = [v19 objectForKeyedSubscript:v32];
          v34 = [v33 titleText];
          v35 = [v33 descriptionText];
          v36 = [[PKPaymentCommutePlanDetail alloc] initWithAppletCommutePlan:v31 label:v34 value:v35];
          [v45 safelyAddObject:v36];
        }

        v28 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v28);
    }

    v37 = [v45 copy];
    v9 = v42;
    [(PDDatabaseManager *)v40 updatePaymentPlans:v37 forPassUniqueIdentifier:v42];

    v8 = v43;
    v10 = v41;
  }

  else
  {
    v37 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v9;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Unable to set applet commute plans for a pass that doesn't exist: %@", buf, 0xCu);
    }
  }
}

- (void)updatePaymentPlans:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [Pass anyInDatabase:self->_database withUniqueID:v7];
  v9 = v8;
  if (v8)
  {
    database = self->_database;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100154458;
    v12[3] = &unk_100841768;
    v13 = v8;
    v14 = self;
    v15 = v6;
    v16 = v7;
    sub_1005D4424(database, v12);

    v11 = v13;
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Payment plans updated for pass that doesn't exist: %@", buf, 0xCu);
    }
  }
}

- (void)updatePaymentBalances:(id)a3 forPassUniqueIdentifier:(id)a4 transactionSequenceNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v78 = a5;
  v10 = objc_alloc_init(NSMutableDictionary);
  v86 = self;
  v79 = v9;
  [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:v9];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v77 = v106 = 0u;
  v11 = [v77 allObjects];
  v12 = [v11 countByEnumeratingWithState:&v103 objects:v111 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v104;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v104 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v103 + 1) + 8 * i);
        v17 = [v16 identifiers];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v13);
  }

  v18 = v86;
  v19 = v79;
  v20 = [Pass anyInDatabase:v86->_database withUniqueID:v79];
  if (v20)
  {
    v76 = v20;
    v21 = [v20 pass];
    v22 = [(PDDatabaseManager *)v86 _registeredPass:v21];
    v23 = [v22 paymentPass];

    v85 = PKPaymentPassUnitDictionary(v23);
    v84 = objc_alloc_init(NSMutableArray);
    v80 = v23;
    v83 = [v23 isAutoTopEnabled];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v8;
    v24 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (!v24)
    {
      v81 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v25 = v24;
    v75 = v8;
    v81 = 0;
    v26 = *v100;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        v28 = v10;
        if (*v100 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v99 + 1) + 8 * j);
        v30 = [v29 identifiers];
        v31 = [v30 anyObject];
        v32 = [v29 value];
        v33 = [v29 currencyCode];
        v34 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](v86, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", v31, v32, v33, [v29 exponent], v85);

        v35 = [v29 localizedTitle];
        [v34 setLocalizedTitle:v35];

        v36 = [v29 localizedDescription];
        [v34 setLocalizedDescription:v36];

        [v84 addObject:v34];
        if (v83 && [v80 isAutoTopUpBalance:v34])
        {
          v37 = v34;

          v81 = v37;
        }

        v10 = v28;
      }

      v25 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
    }

    while (v25);

    if (!v81)
    {
      v81 = 0;
      v8 = v75;
      v19 = v79;
      v18 = v86;
LABEL_43:
      v60 = [v84 copy];
      database = v18->_database;
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_100154E2C;
      v91[3] = &unk_100841740;
      v52 = v76;
      v92 = v76;
      v93 = v18;
      v62 = v60;
      v94 = v62;
      sub_1005D4424(database, v91);
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_100154F50;
      v87[3] = &unk_100848980;
      v88 = v19;
      v89 = v10;
      v90 = v62;
      v63 = v62;
      [(PDDatabaseManager *)v18 dispatchDelegateCallback:v87];

      v54 = v77;
      v55 = v78;
      v53 = v80;
      goto LABEL_44;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v38 = [v80 autoTopUpFields];
    v39 = [v38 countByEnumeratingWithState:&v95 objects:v107 count:16];
    if (v39)
    {
      v40 = v39;
      obj = 0;
      v41 = *v96;
      v42 = PKPassFieldKeyAutoTopUp;
      v43 = 0.0;
      v44 = 0.0;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v96 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v46 = *(*(&v95 + 1) + 8 * k);
          v47 = [v46 key];
          if ([v47 isEqualToString:v42])
          {
            [v46 amount];
            v44 = v48;
            [v46 threshold];
            v43 = v49;
            v50 = [v46 foreignReferenceIdentifiers];

            obj = v50;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v95 objects:v107 count:16];
      }

      while (v40);
      v51 = v44 > 0.0;
    }

    else
    {
      obj = 0;
      v51 = 0;
      v43 = 0.0;
    }

    v56 = [v81 currencyValue];
    v57 = [v56 amount];

    v8 = v75;
    v19 = v79;
    if (v51 && v43 > 0.0)
    {
      v58 = [NSNumber numberWithDouble:v43];
      if ([v57 compare:v58] == -1)
      {
        v59 = [v80 activationState];

        if (v59)
        {
          goto LABEL_41;
        }

        v64 = v78;
        if (!v78)
        {
          v65 = [(PDDatabaseManager *)v86 primaryPaymentApplicationForPassUniqueIdentifier:v79];
          v66 = [(PDDatabaseManager *)v86 transitStateWithPassUniqueIdentifier:v79 paymentApplication:v65];
          v67 = [v66 historySequenceNumber];
          v68 = [v67 stringValue];
          v69 = v68;
          v70 = @"0";
          if (v68)
          {
            v70 = v68;
          }

          v64 = v70;
        }

        v71 = [(PDDatabaseManager *)v86 _transactionServiceForPass:v80];
        v58 = [v71 notificationService];

        WeakRetained = objc_loadWeakRetained(&v86->_notificationServicesDelegate);
        v73 = [v80 uniqueID];
        v74 = [v80 partnerAccountIdentifier];
        v78 = v64;
        [WeakRetained handlePostBalanceTaskWithNotificationService:v58 passUniqueIdenitifer:v73 accountIdentifier:v74 transactionSequenceNumber:v64 balance:v81];

        v8 = v75;
      }
    }

LABEL_41:

    v18 = v86;
    goto LABEL_42;
  }

  v52 = 0;
  v53 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v110 = v79;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Payment balances updated for pass that doesn't exist: %@", buf, 0xCu);
  }

  v54 = v77;
  v55 = v78;
LABEL_44:
}

- (id)paymentBalanceWithIdentifier:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v4 = [PaymentBalance anyInDatabase:self->_database withIdentifier:a3 forPassWithUniqueIdentifier:a4];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 paymentBalance];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)truncatePaymentBalancesForPassUniqueIdentifier:(id)a3 toMaximumEntityCount:(int64_t)a4
{
  v6 = a3;
  v7 = [Pass anyInDatabase:self->_database withUniqueID:v6];
  if (v7)
  {
    v8 = [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:v6];
    [PaymentBalance truncateEntitiesForPass:v7 inDatabase:self->_database toCount:a4];
    v9 = [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:v6];
    v10 = [v9 count];
    if (v10 != [v8 count])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001551B8;
      v11[3] = &unk_100848738;
      v12 = v6;
      v13 = v9;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v11];
    }
  }
}

- (void)deleteAllPaymentBalancesForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [Pass anyInDatabase:self->_database withUniqueID:v4];
  if (v5)
  {
    [PaymentBalance deleteEntitiesForPass:v5 inDatabase:self->_database];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100155300;
    v6[3] = &unk_1008486C0;
    v7 = v4;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v6];
  }
}

- (id)balanceReminderThresholdForBalanceIdentifier:(id)a3 withPassUniqueIdentifier:(id)a4
{
  if (a4)
  {
    v5 = [BalanceReminder balanceReminderInDatabase:self->_database forBalanceIdentifier:a3 passIdentifier:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setBalanceReminder:(id)a3 forBalanceIdentifier:(id)a4 withPassUniqueIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [Pass anyInDatabase:self->_database withUniqueID:v10];
  if (v11)
  {
    v12 = [BalanceReminder insertOrUpdateBalanceReminder:v8 forBalanceIdentifier:v9 pass:v11 database:self->_database];
    v13 = [v12 balanceReminder];
    if (v13)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100155550;
      v16[3] = &unk_100848980;
      v17 = v10;
      v18 = v13;
      v19 = v9;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v16];
    }

    v14 = v12 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)commutePlanReminderForCommutePlanIdentifier:(id)a3 withPassUniqueIdentifier:(id)a4
{
  if (a4)
  {
    v5 = [CommutePlanReminder commutePlanReminderInDatabase:self->_database forCommutePlanIdentifier:a3 passIdentifier:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setCommutePlanReminder:(id)a3 forCommutePlanIdentifier:(id)a4 withPassUniqueIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [Pass anyInDatabase:self->_database withUniqueID:v10];
  if (v11 && ([CommutePlanReminder insertOrUpdateCommutePlanReminder:v8 forCommutePlanIdentifier:v9 pass:v11 database:self->_database], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001556E0;
    v15[3] = &unk_1008486C0;
    v16 = v10;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v15];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)transactionArchiveForRecurringPayment:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [v4 identifier];
  v7 = [PaymentTransactionArchive anyInDatabase:database forRecurringPaymentIdentifier:v6];

  if (!v7)
  {
    v8 = [v4 identifier];
    v9 = [PeerPaymentRecurringPayment recurringPaymentWithIdentifier:v8 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForRecurringPayment:v9 inDatabase:self->_database];
  }

  v10 = [v7 transactionArchive];

  return v10;
}

- (void)updateTransactionArchive:(id)a3 forRecurringPayment:(id)a4
{
  database = self->_database;
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [PaymentTransactionArchive anyInDatabase:database forRecurringPaymentIdentifier:v7];

  [v8 updateWithTransactionArchive:v6];
}

- (id)transactionArchiveForCounterpartImageData:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [v4 identifier];
  v7 = [PaymentTransactionArchive anyInDatabase:database forCounterpartImageDataIdentifier:v6];

  if (!v7)
  {
    v8 = [v4 identifier];
    v9 = [PeerPaymentCounterpartImageData counterpartImageDataWithIdentifier:v8 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForCounterpartImageData:v9 inDatabase:self->_database];
  }

  v10 = [v7 transactionArchive];

  return v10;
}

- (void)updateTransactionArchive:(id)a3 forCounterpartImageData:(id)a4
{
  database = self->_database;
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [PaymentTransactionArchive anyInDatabase:database forCounterpartImageDataIdentifier:v7];

  [v8 updateWithTransactionArchive:v6];
}

- (id)transactionArchiveForPendingRequest:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [v4 requestToken];
  v7 = [PaymentTransactionArchive anyInDatabase:database forPendingRequestToken:v6];

  if (!v7)
  {
    v8 = [v4 requestToken];
    v9 = [PeerPaymentPendingRequest pendingRequestWithRequestToken:v8 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForPendingRequest:v9 inDatabase:self->_database];
  }

  v10 = [v7 transactionArchive];

  return v10;
}

- (void)updateTransactionArchive:(id)a3 forPendingRequest:(id)a4
{
  database = self->_database;
  v6 = a3;
  v7 = [a4 requestToken];
  v8 = [PaymentTransactionArchive anyInDatabase:database forPendingRequestToken:v7];

  [v8 updateWithTransactionArchive:v6];
}

- (id)transactionArchiveForTransactionIdentifier:(id)a3
{
  v3 = [PaymentTransactionArchive anyInDatabase:self->_database forTransactionIdentifier:a3];
  v4 = [v3 transactionArchive];

  return v4;
}

- (id)transactionArchiveForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 forTransactionSourceIdentifier:a4];
  if (v5)
  {
    v6 = [PaymentTransactionArchive anyInDatabase:self->_database forTransaction:v5];
    if ([v6 existsInDatabase])
    {
      v7 = [v6 transactionArchive];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_insertOrUpdatePaymentTransaction:(id)a3 transactionSourceIdentifier:(id)a4 transactionArchive:(id)a5 originDeviceID:(id)a6 insertionMode:(unint64_t)a7 performTruncation:(BOOL)a8 insertedTransaction:(BOOL *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100005B40;
  v37 = sub_10000B1AC;
  v38 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100155E54;
  v24[3] = &unk_100848A48;
  v19 = v16;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  v27 = self;
  v30 = a7;
  v21 = v17;
  v31 = a9;
  v32 = a8;
  v28 = v21;
  v29 = &v33;
  [(PDDatabaseManager *)self performTransactionWithBlock:v24];
  v22 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v22;
}

- (id)insertOrUpdatePaymentTransaction:(id)a3 withPassUniqueIdentifier:(id)a4 paymentApplication:(id)a5 originDeviceID:(id)a6 insertionMode:(unint64_t)a7 performTruncation:(BOOL)a8 insertedTransaction:(BOOL *)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100005B40;
  v34 = sub_10000B1AC;
  v35 = [v17 transactionSourceIdentifier];
  v19 = v31[5];
  if (v16 && !v19)
  {
    database = self->_database;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100158318;
    v26 = &unk_100848590;
    v27 = self;
    v28 = v16;
    v29 = &v30;
    sub_1005D4424(database, &v23);

    v19 = v31[5];
  }

  v21 = [(PDDatabaseManager *)self _insertOrUpdatePaymentTransaction:v15 transactionSourceIdentifier:v19 transactionArchive:0 originDeviceID:v18 insertionMode:a7 performTruncation:v9 insertedTransaction:a9, v23, v24, v25, v26, v27];
  _Block_object_dispose(&v30, 8);

  return v21;
}

- (id)updateSuppressBehavior:(unint64_t)a3 forPaymentTransaction:(id)a4 sourceIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  [v8 setSuppressBehavior:a3];
  database = self->_database;
  v11 = [v8 identifier];
  v12 = [PaymentTransaction anyInDatabase:database withIdentifier:v11];

  v13 = [v12 paymentTransaction];
  [v13 addUpdateReasons:{objc_msgSend(v8, "updateReasons")}];
  [v12 updateSuppressBehavior:a3];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100158760;
  v20[3] = &unk_100848980;
  v21 = v9;
  v14 = v8;
  v22 = v14;
  v23 = v13;
  v15 = v13;
  v16 = v9;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (void)updateSuppressBehavior:(unint64_t)a3 forTransactionSourceIdentifier:(id)a4 serviceIdentifier:(id)a5
{
  v8 = a4;
  v9 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a5 forTransactionSourceIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 paymentTransaction];
    [v10 updateSuppressBehavior:a3];
    v12 = [v10 paymentTransaction];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10015889C;
    v15[3] = &unk_100848980;
    v16 = v8;
    v17 = v12;
    v18 = v11;
    v13 = v11;
    v14 = v12;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v15];
  }
}

- (void)updateSuppressBehavior:(unint64_t)a3 forPaymentTransactions:(id)a4 sourceIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 count])
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001589C8;
    v10[3] = &unk_100848A70;
    objc_copyWeak(v13, &location);
    v11 = v8;
    v13[1] = a3;
    v12 = v9;
    [(PDDatabaseManager *)self performTransactionWithBlock:v10];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

- (void)updateRequiresMerchantReprocessing:(BOOL)a3 forTransactionWithIdentifier:(id)a4
{
  v4 = a3;
  v5 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a4];
  if (v5)
  {
    v6 = v5;
    [v5 updateRequiresMerchantReprocessing:v4];
    v5 = v6;
  }
}

- (id)updateRedemptionType:(unint64_t)a3 forPaymentTransaction:(id)a4 sourceIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  [v8 setRedemptionType:a3];
  database = self->_database;
  v11 = [v8 identifier];
  v12 = [PaymentTransaction anyInDatabase:database withIdentifier:v11];

  v13 = [v12 paymentTransaction];
  [v13 addUpdateReasons:{objc_msgSend(v8, "updateReasons")}];
  [v12 updateRedemptionType:a3];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100158CF0;
  v20[3] = &unk_100848980;
  v21 = v9;
  v14 = v8;
  v22 = v14;
  v23 = v13;
  v15 = v13;
  v16 = v9;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (id)removeMapsDataForTransactionWithIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4 issueReportIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v11 = [v10 paymentTransaction];
  if (v10)
  {
    [v10 removeMapsDataForIssueReportIdentifier:v9];
  }

  [v10 paymentTransaction];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100158E3C;
  v18[3] = &unk_100848980;
  v12 = v19 = v8;
  v20 = v12;
  v21 = v11;
  v13 = v11;
  v14 = v8;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)unsyncedPassesInContainer:(id)a3
{
  v4 = a3;
  v5 = PKCloudStorePassesSyncContainerName;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_7;
  }

  if (!v6 || !v7)
  {

    goto LABEL_9;
  }

  v9 = [v6 isEqualToString:v7];

  if (v9)
  {
LABEL_7:
    v10 = [Pass predicateForIsCloudKitArchived:0];
    v26 = v10;
    v11 = &v26;
LABEL_16:
    v17 = [Pass predicateForIsRevoked:0];
    v11[1] = v17;
    v18 = [NSArray arrayWithObjects:v11 count:2];
    v19 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v18];

    v20 = [Pass passesInDatabase:self->_database matchingPredicate:v19];
    v21 = [(PDDatabaseManager *)self _registeredPasses:v20];

    goto LABEL_21;
  }

LABEL_9:
  v12 = PKCloudStorePassesSyncSecureContainerName;
  v13 = v6;
  v14 = v12;
  v15 = v14;
  if (v14 == v13)
  {

LABEL_15:
    v10 = [Pass predicateForIsCloudKitSecurelyArchived:0];
    v25 = v10;
    v11 = &v25;
    goto LABEL_16;
  }

  if (v6 && v14)
  {
    v16 = [v13 isEqualToString:v14];

    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_18:
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "unknown cloud store identifier: %{public}@", &v23, 0xCu);
  }

  v21 = 0;
LABEL_21:

  return v21;
}

- (void)updatePassesWithSyncInformation:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 pk_indexDictionaryByApplyingBlock:&stru_100848AB0];
    v14[0] = @"unique_id";
    v14[1] = @"is_cloud_kit_archived";
    v14[2] = @"cloud_kit_metadata";
    v14[3] = @"is_cloud_kit_securely_archived";
    v14[4] = @"cloud_kit_secure_metadata";
    v14[5] = @"ingested_date";
    v14[6] = @"modified_date";
    v14[7] = @"revoked";
    v6 = [NSArray arrayWithObjects:v14 count:8];
    v7 = [v5 allKeys];
    database = self->_database;
    v9 = [Pass predicateForUniqueIDs:v7];
    v10 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001592AC;
    v12[3] = &unk_100840B08;
    v13 = v5;
    v11 = v5;
    [v10 enumeratePersistentIDsAndProperties:v6 usingBlock:v12];
  }
}

- (void)markPassAsSynced:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [v4 uniqueID];
  v7 = [Pass predicateForUniqueID:v6];
  v8 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100159484;
  v10[3] = &unk_100848AD8;
  v11 = v4;
  v9 = v4;
  [Pass enumeratePassesForQuery:v8 withHandler:v10];
}

- (void)markAllPassesAsUnsyncedInContainer:(id)a3
{
  v4 = a3;
  v5 = PKCloudStorePassesSyncContainerName;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_7;
  }

  if (!v6 || !v7)
  {

    goto LABEL_9;
  }

  v9 = [v6 isEqualToString:v7];

  if (v9)
  {
LABEL_7:
    v10 = [Pass predicateForIsCloudKitArchived:1];
LABEL_16:
    v16 = v10;
    goto LABEL_17;
  }

LABEL_9:
  v11 = PKCloudStorePassesSyncSecureContainerName;
  v12 = v6;
  v13 = v11;
  v14 = v13;
  if (v13 == v12)
  {

LABEL_15:
    v10 = [Pass predicateForIsCloudKitSecurelyArchived:1];
    goto LABEL_16;
  }

  if (v6 && v13)
  {
    v15 = [v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_18;
  }

  v18 = [Pass predicateForIsCloudKitArchived:1];
  v23[0] = v18;
  v19 = [Pass predicateForIsCloudKitSecurelyArchived:1];
  v23[1] = v19;
  v20 = [NSArray arrayWithObjects:v23 count:2];
  v16 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v20];

LABEL_17:
  v17 = [(SQLiteEntity *)Pass queryWithDatabase:self->_database predicate:v16];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001597B0;
  v21[3] = &unk_100848AD8;
  v22 = v6;
  [Pass enumeratePassesForQuery:v17 withHandler:v21];

LABEL_18:
}

- (BOOL)hasTransactionWithTransactionIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)transactionWithTransactionIdentifier:(id)a3
{
  v3 = [(PDDatabaseManager *)self dbTransactionWithTransactionIdentifier:a3];
  v4 = [v3 paymentTransaction];

  return v4;
}

- (id)transactionWithReferenceIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withReferenceIdentifier:a3];
  v4 = [v3 paymentTransaction];

  return v4;
}

- (BOOL)hasTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4
{
  v4 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:a3 transactionSourceIdentifier:a4];
  v5 = v4 != 0;

  return v5;
}

- (id)transactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 forTransactionSourceIdentifier:a4];
  v5 = [v4 paymentTransaction];

  return v5;
}

- (id)transactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 accountIdentifier:a4 accountType:a5];
  v6 = [v5 paymentTransaction];

  return v6;
}

- (id)ambiguousTransactionWithServiceIdentifier:(id)a3
{
  [PaymentTransaction paymentTransactionsInDatabase:self->_database withServiceIdentifier:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 transactionSourceIdentifier];
        v11 = [(PDDatabaseManager *)self transactionSourceTypeForTransactionSourceIdentifier:v10];

        if (!v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)primaryAccountIdentifierForTransactionSourceIdentifier:(id)a3
{
  v4 = [(PDDatabaseManager *)self passUniqueIdentifierForTransactionSourceIdentifier:a3];
  v5 = [Pass anyInDatabase:self->_database withUniqueID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 primaryAccountIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)passUniqueIdentifierForTransactionWithIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 passUniqueIdentifier];

  return v4;
}

- (id)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3
{
  v4 = [(PDDatabaseManager *)self ambiguousTransactionWithServiceIdentifier:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 serviceIdentifier];
    v7 = [v5 transactionSourceIdentifier];
    v8 = [(PDDatabaseManager *)self passUniqueIdentifierForTransactionWithServiceIdentifier:v6 transactionSourceIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)paymentTransactionsWithFullPaymentHashes:(id)a3 transactionSourceIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [PaymentTransaction paymentTransactionsInDatabase:self->_database withFullPaymentHashes:v6 transactionSourceIdentifiers:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 transactionSourceIdentifier:(id)a4
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 forTransactionSourceIdentifier:a4];
  v5 = [v4 passUniqueIdentifier];

  return v5;
}

- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 accountIdentifier:a4 accountType:a5];
  v6 = [v5 passUniqueIdentifier];

  return v6;
}

- (void)insertOrUpdateValueAddedServiceTransaction:(id)a3 forPassUniqueIdentifier:(id)a4 paymentTransaction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = [v8 identifier];
  v11 = [ValueAddedServiceTransaction anyInDatabase:self->_database withIdentifier:?];
  v12 = [v8 merchant];
  v13 = [v12 identifier];
  v14 = [v13 hexEncoding];

  v15 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:v14];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = [v8 merchant];
    [(PDDatabaseManager *)self insertOrUpdateValueAddedMerchant:v17];

    v16 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:v14];
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  v18 = [v16 valueAddedMerchant];
  [v8 setMerchant:v18];

LABEL_5:
  if (v11)
  {
    [v11 updateWithValueAddedServiceTransaction:v8 paymentTransaction:v10];
  }

  else
  {
    if (v9)
    {
      v19 = [Pass anyInDatabase:self->_database withUniqueID:v9];
    }

    else
    {
      v19 = 0;
    }

    v25 = v10;
    if (v10)
    {
      database = self->_database;
      v21 = [v10 identifier];
      v10 = [PaymentTransaction anyInDatabase:database withIdentifier:v21];
    }

    v22 = [ValueAddedServiceTransaction insertValueAddedServiceTransaction:v8 withPass:v19 paymentTransaction:v10 valueAddedMerchant:v16 inDatabase:self->_database, v25];
    [ValueAddedServiceTransaction truncateEntitiesForPass:v19 inDatabase:self->_database toCount:PKMaxPerPassValueAddedServiceTransactionHistory];

    v10 = v26;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10015A220;
  v28[3] = &unk_100848738;
  v29 = v9;
  v30 = v8;
  v23 = v8;
  v24 = v9;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v28];
}

- (id)valueAddedServiceTransactionWithIdentifier:(id)a3
{
  v3 = [ValueAddedServiceTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 valueAddedServiceTransaction];

  return v4;
}

- (void)insertOrUpdateValueAddedMerchant:(id)a3
{
  v9 = a3;
  v4 = [v9 identifier];
  v5 = [v4 hexEncoding];

  v6 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithValueAddedMerchant:v9];
  }

  else
  {
    v8 = [ValueAddedMerchant insertValueAddedMerchant:v9 inDatabase:self->_database];
  }
}

- (id)valueAddedMerchantWithIdentifier:(id)a3
{
  v3 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 valueAddedMerchant];

  return v4;
}

- (void)valueAddedMerchantWasPresented:(id)a3
{
  database = self->_database;
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 hexEncoding];
  v7 = [ValueAddedMerchant anyInDatabase:database withIdentifier:v6];

  [v4 setTimesPresented:{objc_msgSend(v4, "timesPresented") + 1}];
  [v7 updateWithValueAddedMerchant:v4];
}

- (id)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a4;
  if (v6)
  {
    database = self->_database;
    v8 = a3;
    v9 = [Pass anyInDatabase:database withUniqueID:v6];
    v10 = self->_database;
    v11 = [v8 applicationIdentifier];

    v12 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v13 = [PaymentApplication anyInDatabase:v10 withApplicationIdentifier:v11 secureElementIdentifiers:v12];

    [v9 updateWithDefaultPaymentApplication:v13];
    v14 = [v9 pass];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10015A640;
    v21 = &unk_100848738;
    v22 = v6;
    v23 = v13;
    v15 = v13;
    [(PDDatabaseManager *)self dispatchDelegateCallback:&v18];
  }

  else
  {
    v14 = 0;
  }

  v16 = [(PDDatabaseManager *)self _registeredPass:v14, v18, v19, v20, v21];

  return v16;
}

- (BOOL)hasAnyMessagesForPassWithUniqueIdentifier:(id)a3
{
  v3 = [PaymentMessage anyInDatabase:self->_database forPassWithUniqueIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasAnyTransactionsForTransactionSourceIdentifiers:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PaymentTransaction anyInDatabase:self->_database withTransactionSourceIdentifier:*(*(&v12 + 1) + 8 * i), v12];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMerchantIdentifiers:v6 forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMerchantIdentifiers:v12 forTransactionSourceIdentifiers:v13 startDate:v11 endDate:v10];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsIdentifiers:v6 forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsIdentifiers:v12 forTransactionSourceIdentifiers:v13 startDate:v11 endDate:v10];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsBrandIdentifiers:v6 forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)a3 forPassUniqueIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a4];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsBrandIdentifiers:v12 forTransactionSourceIdentifiers:v13 startDate:v11 endDate:v10];

  return self;
}

- (id)messagesForPassWithUniqueIdentifier:(id)a3
{
  v3 = [PaymentMessage paymentMessagesInDatabase:self->_database forPaymentPassUniqueIdentifier:a3];
  v4 = [NSPredicate predicateWithFormat:@"isValid == YES"];
  v5 = [v3 filteredSetUsingPredicate:v4];

  return v5;
}

- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  database = self->_database;
  v9 = a5;
  v10 = a4;
  v11 = [TransactionSource anyInDatabase:database withIdentifier:a3];
  v12 = [PaymentTransaction peerPaymentCounterpartHandlesforSource:v11 startDate:v10 endDate:v9 inDatabase:self->_database];

  return v12;
}

- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)a3 excludingPaymentMode:(unint64_t)a4 excludingAccountState:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7
{
  database = self->_database;
  v13 = a7;
  v14 = a6;
  v15 = [TransactionSource anyInDatabase:database withIdentifier:a3];
  v16 = [PaymentTransaction peerPaymentCounterpartHandlesforSource:v15 excludingPaymentMode:a4 excludingAccountState:a5 startDate:v14 endDate:v13 inDatabase:self->_database];

  return v16;
}

- (id)paymentTransactionForIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 paymentTransaction];

  return v4;
}

- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)a3 calendar:(id)a4 type:(unint64_t)a5 limit:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    v13 = [NSDate dateWithTimeIntervalSince1970:0.0];
    [v12 timeIntervalSinceDate:v13];
    v15 = v14;

    v16 = [NSString stringWithFormat:@"SELECT STRFTIME('%%s', DATETIME(grapes.d + %ld, 'unixepoch', 'localtime', 'start of day', 'utc')) as day FROM grapes JOIN avocados ON avocados.a = grapes.pid WHERE grapes.c = 1 AND avocados.e = ? AND avocados.f = 'success' GROUP BY day ORDER BY day DESC LIMIT ?", v15];
    v17 = [NSString stringWithFormat:@"WITH groupingByDay (day) AS (%@) SELECT day FROM groupingByDay ORDER BY day ASC LIMIT 1", v16];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100005B40;
    v25 = sub_10000B1AC;
    v26 = 0;
    database = self->_database;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10015B374;
    v20[3] = &unk_100848B00;
    v20[4] = &v21;
    v20[5] = a5;
    v20[6] = a6;
    v20[7] = v15;
    sub_1005D44A8(database, v17, v20);
    a6 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1005C20EC();
      a6 = 0;
    }
  }

  return a6;
}

- (id)transactionCountByPeriodForRequest:(id)a3 gregorianCalendarUnit:(unint64_t)a4 includePurchaseTotal:(BOOL)a5
{
  v75 = a5;
  v68 = a4;
  v74 = a3;
  v5 = [v74 transactionSourceIdentifiers];
  v71 = [v5 anyObject];
  v6 = [(PDDatabaseManager *)self transactionSourceTypeForTransactionSourceIdentifier:v71];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v112 objects:v117 count:16];
  if (v8)
  {
    v9 = *v113;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v113 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v112 + 1) + 8 * v10);
      if (v6 == 3)
      {
        break;
      }

      if (!v6)
      {
        v14 = [(PDDatabaseManager *)self passUniqueIdentifierForTransactionSourceIdentifier:v11];
        v13 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
        v15 = [v13 associatedPassUniqueID];
        v16 = v14;
        v12 = v16;
        if (v15 == v16)
        {

          goto LABEL_23;
        }

        if (v16)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
        }

        else
        {
          v18 = [v15 isEqualToString:v16];

          if (v18)
          {
LABEL_23:
            v19 = [v13 currentBalance];
            v72 = [v19 currency];
            v64 = 1;
LABEL_27:

            goto LABEL_28;
          }
        }

        v19 = [(PDDatabaseManager *)self associatedAccountIdentifierForPassWithUniqueIdentifier:v12];
        if (v19)
        {
          v20 = [(PDDatabaseManager *)self accountWithIdentifier:v19];
          v21 = [v20 creditDetails];
          v72 = [v21 currencyCode];

          v64 = 0;
        }

        else
        {
          v64 = 0;
          v72 = 0;
        }

        goto LABEL_27;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v112 objects:v117 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v12 = [(PDDatabaseManager *)self accountWithTransactionSourceIdentifier:v11];
    if ([v12 feature] != 5)
    {
      v64 = 0;
      v72 = 0;
      goto LABEL_29;
    }

    v13 = [v12 savingsDetails];
    v72 = [v13 currencyCode];
    v64 = 3;
LABEL_28:

LABEL_29:
    if (v72)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_10:

    v64 = 0;
  }

  v22 = [PaymentTransaction paymentTransactionsInDatabase:self->_database forTransactionSourceIdentifiers:v7 withTransactionSource:0 withBackingData:1 startDate:0 endDate:0 orderedByDate:1 limit:1];
  v23 = [v22 anyObject];

  v72 = [v23 currencyCode];

  if (v72 || !v75)
  {
LABEL_33:
    v25 = 2;
    if ((v68 & 8) == 0)
    {
      v25 = 3;
    }

    v63 = v25;
    v26 = @"year";
    if ((v68 & 8) != 0)
    {
      v26 = @"month";
    }

    v67 = v26;
    v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    v28 = [NSDate dateWithTimeIntervalSince1970:0.0];
    [v27 timeIntervalSinceDate:v28];
    v30 = v29;

    v70 = v30;
    v66 = [NSString stringWithFormat:@"SELECT STRFTIME('%%s', DATETIME(transaction_date + %ld, 'unixepoch', 'localtime', 'start of %@', 'utc')) as period, COUNT(*) FROM payment_transaction", v30, v67];
    v31 = [PaymentTransaction predicateForRequest:v74];
    v32 = objc_opt_self();
    v33 = [v31 SQLJoinClausesForEntityClass:v32];

    [v33 count];
    v34 = objc_alloc_init(NSMutableString);
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v35 = v33;
    v36 = [v35 countByEnumeratingWithState:&v108 objects:v116 count:16];
    if (v36)
    {
      v37 = *v109;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v109 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v108 + 1) + 8 * i);
          [v34 appendString:@" "];
          [v34 appendString:v39];
        }

        v36 = [v35 countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v36);
    }

    v40 = objc_opt_self();
    v41 = [v31 SQLForEntityClass:v40];
    v42 = [NSString stringWithFormat:@" WHERE %@ ", v41];

    if (v75)
    {
      v43 = [v42 stringByAppendingString:@" AND currency_code = ? "];

      v42 = v43;
    }

    v65 = [NSString stringWithFormat:@"%@%@%@%@", v66, v34, v42, @"GROUP BY period ORDER BY period DESC"];
    v44 = [NSDate dateWithTimeIntervalSince1970:1420070400.0];
    v45 = [NSDate dateWithTimeIntervalSinceNow:864000.0];
    v62 = v42;
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 1;
    v46 = objc_alloc_init(NSMutableDictionary);
    v47 = (v68 & 8) == 0;
    database = self->_database;
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_10015BE00;
    v92[3] = &unk_100848B28;
    v69 = v31;
    v93 = v69;
    v99 = &v104;
    v102 = v75;
    v61 = v72;
    v94 = v61;
    v100 = v30;
    v73 = v44;
    v95 = v73;
    v49 = v47;
    v103 = v47;
    v50 = v45;
    v96 = v50;
    v97 = self;
    v101 = v63;
    v51 = v46;
    v98 = v51;
    sub_1005D44A8(database, v65, v92);
    v52 = [v74 transactionTypes];
    if ([v52 count])
    {
      v53 = [v52 containsObject:&off_1008A2EA0];
    }

    else
    {
      v53 = 1;
    }

    if (v64 && v53)
    {
      v54 = [NSString stringWithFormat:@"SELECT STRFTIME('%%s', DATETIME(grapes.d + %ld, 'unixepoch', 'localtime', 'start of day', 'utc')) as day, STRFTIME('%%s', DATETIME(grapes.d + %ld, 'unixepoch', 'localtime', 'start of %@', 'utc')) as period FROM grapes JOIN avocados ON avocados.a = grapes.pid WHERE grapes.c = 1 AND avocados.e = ? AND avocados.f = 'success'GROUP BY day, period", v70, v70, v67];
      v60 = [NSString stringWithFormat:@"WITH groupingByDayAndYear (day, year) AS (%@) SELECT year, COUNT(*) FROM groupingByDayAndYear GROUP BY year", v54];

      v55 = self->_database;
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_10015BFBC;
      v83[3] = &unk_100848B50;
      v88 = v64;
      v89 = v30;
      v84 = v73;
      v85 = v50;
      v91 = v49;
      v86 = v51;
      v87 = self;
      v90 = v63;
      sub_1005D44A8(v55, v60, v83);
    }

    else
    {
      v60 = v66;
    }

    if (v75)
    {
      *(v105 + 6) = 1;
      v56 = [NSString stringWithFormat:@"SELECT STRFTIME('%%s', DATETIME(transaction_date + %ld, 'unixepoch', 'localtime', 'start of %@', 'utc')) as period, SUM(amount) FROM payment_transaction %@ %@ AND transaction_type = ? AND transaction_status IN (?, ?, ?) AND amount != ? AND amount != ? GROUP BY period ORDER BY period DESC", v70, v67, v34, v62];
      v57 = self->_database;
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_10015C164;
      v77[3] = &unk_100848B78;
      v78 = v69;
      v81 = &v104;
      v79 = v61;
      v82 = v30;
      v80 = v51;
      sub_1005D44A8(v57, v56, v77);
    }

    v58 = [v51 allValues];
    v24 = [v58 sortedArrayUsingComparator:&stru_100848BB8];

    _Block_object_dispose(&v104, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)nextStartOfYearFromDate:(id)a3
{
  v3 = a3;
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = [v4 nextDateAfterDate:v3 matchingUnit:8 value:1 options:256];

  return v5;
}

- (id)transactionsWithoutRegionMatchingMapsMerchant:(id)a3 limit:(unint64_t)a4
{
  database = self->_database;
  v6 = [a3 identifier];

  return [PaymentTransaction paymentTransactionsInDatabase:database matchingMapsMerchantIdentifierWithoutRegion:v6 limit:a4];
}

- (void)associateTransaction:(id)a3 toRegion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      v7 = [WorldRegion insertOrUpdateRegion:v6 inDatabase:self->_database];
    }

    else
    {
      v7 = 0;
    }

    database = self->_database;
    v9 = [v11 identifier];
    v10 = [PaymentTransaction anyInDatabase:database withIdentifier:v9];
    [WorldRegion associateTransaction:v10 withWorldRegion:v7 inDatabase:self->_database];
  }
}

- (void)failedToAssociateTransactionToRegion:(id)a3 error:(id)a4
{
  if (a3)
  {
    database = self->_database;
    v7 = a4;
    v9 = [a3 identifier];
    v8 = [PaymentTransaction anyInDatabase:database withIdentifier:v9];
    [WorldRegion failedToAssociateTransaction:v8 error:v7 inDatabase:self->_database];
  }
}

- (id)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)a3 accountIdentifier:(id)a4 redeemed:(BOOL)a5 withRedemptionType:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8
{
  v63 = a5;
  v13 = a3;
  v14 = a4;
  v65 = a7;
  v64 = a8;
  v62 = self;
  v55 = v14;
  v15 = [Account accountWithIdentifier:v14 inDatabase:self->_database];
  v16 = [v15 account];

  v54 = v16;
  v17 = [v16 creditDetails];
  v18 = [v17 installmentPlans];

  if ([v18 count])
  {
    v60 = objc_alloc_init(NSMutableSet);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v18;
    v66 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (!v66)
    {
      goto LABEL_46;
    }

    v61 = *v82;
    v58 = v18;
    v59 = a6;
    v56 = v13;
    while (1)
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v82 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v81 + 1) + 8 * i);
        v21 = [PaymentTransaction installmentTransactionsInDatabase:v62->_database forTransactionSourceIdentifiers:v13 installmentPlan:v20 redeemed:v63 withRedemptionType:a6 startDate:v65 endDate:v64];
        if (![v21 count])
        {
          goto LABEL_44;
        }

        v69 = i;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v67 = v20;
        v22 = [v20 lineItems];
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v86 count:16];
        if (!v23)
        {
LABEL_16:
          v28 = 0;
          goto LABEL_18;
        }

        v24 = v23;
        v25 = *v78;
LABEL_10:
        v26 = 0;
        while (1)
        {
          if (*v78 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v77 + 1) + 8 * v26);
          if ([v27 type] == 1)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v77 objects:v86 count:16];
            if (!v24)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }
        }

        v28 = [v27 identifier];
LABEL_18:

        v29 = +[NSDecimalNumber zero];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v68 = v21;
        v30 = v21;
        v31 = [v30 countByEnumeratingWithState:&v73 objects:v85 count:16];
        v70 = v28;
        if (!v31)
        {

          goto LABEL_42;
        }

        v32 = v31;
        v71 = 0;
        v33 = *v74;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v74 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v73 + 1) + 8 * j);
            v36 = [v35 rewardsTotalAmount];
            if (v36)
            {
              v37 = +[NSDecimalNumber notANumber];
              v38 = [v36 compare:v37];

              if (v38)
              {
                v39 = [v35 lifecycleIdentifier];
                v40 = v28;
                v41 = v40;
                if (v39 != v40)
                {
                  if (v28 && v39)
                  {
                    v42 = [v39 isEqualToString:v40];

                    if (!v42)
                    {
                      v28 = v70;
LABEL_36:
                      [v29 decimalNumberByAdding:v36];
                      v29 = v43 = v29;
                      goto LABEL_37;
                    }

LABEL_33:
                    v28 = v70;
                    v39 = v71;
                    v71 = v35;
                  }

                  else
                  {
                  }

                  goto LABEL_36;
                }

                goto LABEL_33;
              }
            }

            v43 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Installment transaction does not have a valid rewardsTotalAmount", buf, 2u);
            }

LABEL_37:
          }

          v32 = [v30 countByEnumeratingWithState:&v73 objects:v85 count:16];
        }

        while (v32);

        v13 = v56;
        v44 = v71;
        if (!v71)
        {
LABEL_42:
          v44 = [v30 anyObject];
        }

        v45 = objc_alloc_init(PKPaymentTransaction);
        [v45 setTransactionType:14];
        [v45 setTransactionSource:4];
        a6 = v59;
        [v45 setRedemptionType:v59];
        v46 = [v44 transactionDate];
        [v45 setTransactionDate:v46];

        [v45 setInstallmentPlan:v67];
        v47 = [v67 totalAmount];
        [v45 setAmount:v47];

        v48 = [v67 currencyCode];
        [v45 setCurrencyCode:v48];

        [v45 setTransactionStatus:1];
        v49 = [v67 identifier];
        [v45 setIdentifier:v49];

        [v45 setRewardsTotalAmount:v29];
        v50 = [v45 currencyCode];
        [v45 setRewardsTotalCurrencyCode:v50];

        v51 = [v67 rewards];
        [v45 setRewards:v51];

        [v45 setAccountType:2];
        [v60 addObject:v45];

        v18 = v58;
        v21 = v68;
        i = v69;
LABEL_44:
      }

      v66 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      if (!v66)
      {
LABEL_46:

        v52 = [v60 copy];
        goto LABEL_48;
      }
    }
  }

  v52 = 0;
LABEL_48:

  return v52;
}

- (void)insertOrUpdateTransactionsForInstallmentPayments:(id)a3 installmentPlan:(id)a4 accountIdentifier:(id)a5 transactionSourceIdentifier:(id)a6 transactionProcessingBlock:(id)a7
{
  v12 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015CEF8;
  v18[3] = &unk_100848BE0;
  v19 = a4;
  v20 = v12;
  v21 = self;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v13 = v24;
  v14 = v23;
  v15 = v22;
  v16 = v12;
  v17 = v19;
  [(PDDatabaseManager *)self performTransactionWithBlock:v18];
}

- (void)setTags:(id)a3 toTransactionWithIdentifier:(id)a4
{
  database = self->_database;
  v7 = a3;
  v8 = [PaymentTransaction anyInDatabase:database withIdentifier:a4];
  +[PaymentTransactionTag insertPaymentTransactionTags:forPaymentTransactionPID:inDatabase:](PaymentTransactionTag, "insertPaymentTransactionTags:forPaymentTransactionPID:inDatabase:", v7, [v8 persistentID], self->_database);
}

- (id)tagsForTransactionWithIdentifier:(id)a3
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[PDDatabaseManager tagsForTransactionPID:](self, "tagsForTransactionPID:", [v4 persistentID]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mapsBrandWithIdentifier:(unint64_t)a3
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v5 = [MapsBrand anyInDatabase:database withIdentifier:v4];
  v6 = [v5 mapsBrand];

  return v6;
}

- (id)mapsMerchantWithIdentifier:(unint64_t)a3
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v5 = [MapsMerchant anyInDatabase:database withIdentifier:v4];
  v6 = [v5 mapsMerchant];

  return v6;
}

- (void)updateMapsMerchant:(id)a3
{
  v4 = a3;
  if (v4)
  {
    database = self->_database;
    v8 = v4;
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    v7 = [MapsMerchant anyInDatabase:database withIdentifier:v6];

    if ([v7 existsInDatabase])
    {
      [v7 updateWithMapsMerchant:v8];
    }

    v4 = v8;
  }
}

- (void)updateMapsBrand:(id)a3
{
  v4 = a3;
  if (v4)
  {
    database = self->_database;
    v8 = v4;
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    v7 = [MapsBrand anyInDatabase:database withIdentifier:v6];

    if ([v7 existsInDatabase])
    {
      [v7 updateWithMapsBrand:v8];
    }

    v4 = v8;
  }
}

- (id)passUniqueIdentifierForMostRecentVisibleTransaction
{
  v2 = [PaymentTransaction mostRecentActiveTransactionInDatabase:self->_database];
  v3 = [v2 passUniqueIdentifier];

  return v3;
}

- (id)tapToRadarPromptWithReason:(id)a3
{
  v3 = [TapToRadarPrompt tapToRadarPromptWithReason:a3 inDatabase:self->_database];
  v4 = [v3 tapToRadarPrompt];

  return v4;
}

- (id)peerPaymentAccount
{
  v2 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v3 = [v2 peerPaymentAccount];

  return v3;
}

- (id)peerPaymentAccountsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [PeerPaymentAccount anyInDatabase:self->_database withIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        v12 = [v11 peerPaymentAccount];
        [v5 safelyAddObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)hasPeerPaymentAccount
{
  v2 = [PeerPaymentAccount anyInDatabase:self->_database];
  v3 = v2 != 0;

  return v3;
}

- (id)insertOrUpdatePeerPaymentAccount:(id)a3
{
  v3 = [PeerPaymentAccount insertOrUpdatePeerPaymentAccount:a3 inDatabase:self->_database];
  v4 = [v3 peerPaymentAccount];

  return v4;
}

- (id)removePeerPaymentAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100005B40;
  v10 = sub_10000B1AC;
  v11 = 0;
  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015DCD0;
  v5[3] = &unk_1008405C0;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005D4424(database, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)dbPeerPaymentPreferences
{
  database = self->_database;
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v4 = [PeerPaymentPreferences anyInDatabase:database forPeerPaymentAccount:v3];

  return v4;
}

- (id)peerPaymentPreferences
{
  v2 = [(PDDatabaseManager *)self dbPeerPaymentPreferences];
  v3 = [v2 peerPaymentPreferences];

  return v3;
}

- (id)insertOrUpdatePeerPaymentPreferences:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self dbPeerPaymentPreferences];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Matched Peer Payment Preferences", buf, 2u);
    }

    v8 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    [v5 updatePeerPaymentPreferences:v4 forPeerPaymentAccount:v8];
  }

  else
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could Not Match Peer Payment Preferences", v12, 2u);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inserting New Peer Payment Preferences", v11, 2u);
    }

    v8 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    v5 = [PeerPaymentPreferences insertPeerPaymentPeferences:v4 forPeerPaymentAccount:v8 inDatabase:self->_database];
  }

  v9 = [v5 peerPaymentPreferences];

  return v9;
}

- (id)removePeerPaymentPreferences
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100005B40;
  v10 = sub_10000B1AC;
  v11 = 0;
  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015E0E8;
  v5[3] = &unk_1008405C0;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005D4424(database, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addPeerPaymentAccountIdentifierToDatabaseTransactions
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  database = self->_database;
  v5 = [v3 associatedPassUniqueID];
  v6 = [Pass anyInDatabase:database withUniqueID:v5];

  v7 = [v6 persistentID];
  v8 = [v3 identifier];
  v9 = v8;
  if (v8)
  {
    v10 = self->_database;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10015E2E4;
    v11[3] = &unk_100848C30;
    v13 = v7;
    v11[4] = self;
    v12 = v8;
    sub_1005D44A8(v10, @"SELECT pid, account_identifier, pass_pid from payment_transaction;", v11);
  }
}

- (id)peerPaymentPendingRequestsForRequestTokens:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v6 = [PeerPaymentPendingRequest peerPaymentPendingRequestsForRequestTokens:v4 inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)peerPaymentPendingRequestsForPeerPaymentAccount
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    v4 = +[PeerPaymentPendingRequest peerPaymentPendingRequestsForPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "peerPaymentPendingRequestsForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertOrUpdatePeerPaymentPendingRequests:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    +[PeerPaymentPendingRequest insertOrUpdatePeerPaymentPendingRequests:forPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "insertOrUpdatePeerPaymentPendingRequests:forPeerPaymentAccountPID:inDatabase:", v5, [v4 persistentID], self->_database);
  }
}

- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    [PeerPaymentPendingRequest deleteEntitiesForRequestTokens:v5 inDatabase:self->_database];
  }
}

- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    +[PeerPaymentPendingRequest deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }
}

- (id)peerPaymentRecurringPayments
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    v4 = +[PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "peerPaymentRecurringPaymentsForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)peerPaymentRecurringPaymentWithIdentifier:(id)a3
{
  v9 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForIdentifiers:v5 inDatabase:self->_database, v9];

  v7 = [v6 firstObject];

  return v7;
}

- (id)peerPaymentRecurringPaymentsWithType:(unint64_t)a3
{
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v6 = +[PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForPeerPaymentType:withAccountPID:inDatabase:](PeerPaymentRecurringPayment, "peerPaymentRecurringPaymentsForPeerPaymentType:withAccountPID:inDatabase:", a3, [v5 persistentID], self->_database);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertOrUpdatePeerPaymentRecurringPayments:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", v5, [v4 persistentID], self->_database);
  }
}

- (void)updateAllPeerPaymentRecurringPayments:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v31 = v5;
    +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", v4, [v5 persistentID], self->_database);
    v6 = objc_alloc_init(NSMutableSet);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v38 + 1) + 8 * i) identifier];
          [v6 pk_safelyAddObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v9);
    }

    [PeerPaymentRecurringPayment recurringPaymentIdentifiersWithMemoInDatabase:self->_database];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      v33 = self;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * j);
          if (([v6 containsObject:v17] & 1) == 0)
          {
            v45 = v17;
            v18 = [NSArray arrayWithObjects:&v45 count:1];
            v19 = [PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForIdentifiers:v18 inDatabase:self->_database];
            v20 = [v19 firstObject];

            v21 = [v20 memo];
            v22 = [v21 text];
            if ([v22 length])
            {
              v23 = [v20 type];

              if (!v23)
              {
                goto LABEL_24;
              }

LABEL_20:
              v22 = objc_alloc_init(PKPeerPaymentRecurringPayment);
              [v22 setIdentifier:v17];
              v26 = [v20 senderAddress];
              [v22 setSenderAddress:v26];

              v27 = [v20 recipientAddress];
              [v22 setRecipientAddress:v27];

              [v22 setMemo:v21];
              v28 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v17;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Downgrading recurring payment to memo only for identifier %@", buf, 0xCu);
              }

              v42 = v22;
              v24 = [NSArray arrayWithObjects:&v42 count:1];
              +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", v24, [v31 persistentID], v33->_database);
LABEL_23:

              self = v33;
            }

            else
            {
              v24 = [v21 emoji];
              if (![v24 length])
              {
                goto LABEL_23;
              }

              v25 = [v20 type];

              self = v33;
              if (v25)
              {
                goto LABEL_20;
              }
            }

LABEL_24:
          }

          [v6 pk_safelyAddObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v14);
    }

    v29 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Cleaning up recurring payments not in identifiers: %@", buf, 0xCu);
    }

    [PeerPaymentRecurringPayment deleteEntitiesForPeerPaymentRecurringPaymentNotIncludingIdentifiers:v6 inDatabase:self->_database];
    v4 = v30;
    v5 = v31;
  }
}

- (void)deletePeerPaymentRecurringPaymentsForIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    [PeerPaymentRecurringPayment deleteEntitiesForPeerPaymentRecurringPaymentIdentifiers:v5 inDatabase:self->_database];
  }
}

- (void)deleteAllPeerPaymentRecurringPayments
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    +[PeerPaymentRecurringPayment deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }
}

- (id)peerPaymentEncryptionCertificateForDestination:(unint64_t)a3
{
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v6 = [PeerPaymentEncryptionCertificate peerPaymentEncryptionCertificateForDestination:a3 inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertOrUpdatePeerPaymentEncryptionCertificate:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    +[PeerPaymentEncryptionCertificate insertOrUpdatePeerPaymentEncryptionCertificate:forPeerPaymentAccountPID:inDatabase:](PeerPaymentEncryptionCertificate, "insertOrUpdatePeerPaymentEncryptionCertificate:forPeerPaymentAccountPID:inDatabase:", v5, [v4 persistentID], self->_database);
  }
}

- (void)deleteAllPeerPaymentEncryptionCertificates
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    +[PeerPaymentEncryptionCertificate deleteEncryptionCertificatesForPeerPaymentAccountPID:inDatabase:](PeerPaymentEncryptionCertificate, "deleteEncryptionCertificatesForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }
}

- (id)peerPaymentCounterpartImageData
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    v4 = +[PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataForPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "peerPaymentCounterpartImageDataForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)peerPaymentCounterpartImageDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v6 = [PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataWithIdentifier:v4 inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)peerPaymentCounterpartImageDataForTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v5 existsInDatabase])
  {
    v6 = [(PDDatabaseManager *)self transactionWithTransactionIdentifier:v4];
    v7 = [v6 peerPaymentCounterpartImageRecordIdentifier];
    v8 = [PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataWithIdentifier:v7 inDatabase:self->_database];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdatePeerPaymentCounterpartImageData:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    +[PeerPaymentCounterpartImageData insertOrUpdatePeerPaymentCounterpartImageData:forPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "insertOrUpdatePeerPaymentCounterpartImageData:forPeerPaymentAccountPID:inDatabase:", v5, [v4 persistentID], self->_database);
  }
}

- (void)deletePeerPaymentCounterpartImageDataForIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    [PeerPaymentCounterpartImageData deleteEntityForCounterpartImageDataIdentifier:v5 inDatabase:self->_database];
  }
}

- (void)deleteAllPeerPaymentCounterpartImageData
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    +[PeerPaymentCounterpartImageData deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }
}

- (id)peerPaymentUserInfo
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    v4 = +[PeerPaymentUserInfo peerPaymentUserInfoForAccountPID:inDatabase:](PeerPaymentUserInfo, "peerPaymentUserInfoForAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertOrUpdatePeerPaymentUserInfo:(id)a3
{
  v5 = a3;
  v4 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v4 existsInDatabase])
  {
    +[PeerPaymentUserInfo insertOrUpdatePeerPaymentUserInfo:forAccountPID:inDatabase:](PeerPaymentUserInfo, "insertOrUpdatePeerPaymentUserInfo:forAccountPID:inDatabase:", v5, [v4 persistentID], self->_database);
  }
}

- (void)deletePeerPaymentUserInfo
{
  v3 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([v3 existsInDatabase])
  {
    +[PeerPaymentUserInfo deletePeerPaymentUserInfoForAccountPID:inDatabase:](PeerPaymentUserInfo, "deletePeerPaymentUserInfoForAccountPID:inDatabase:", [v3 persistentID], self->_database);
  }
}

- (BOOL)verifyIntegrity
{
  [(PDDatabaseManager *)self createGroupsIfNecessary];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10015F6F0;
  v15[3] = &unk_100848C58;
  v15[4] = &v16;
  [WeakRetained readTrueUniqueIDs:v15];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = objc_loadWeakRetained(&self->_delegate);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015F724;
  v10[3] = &unk_100848C58;
  v10[4] = &v11;
  [v4 readTrueTransactionReceiptUniqueiDs:v10];

  v5 = [(PDDatabaseManager *)self numberOfRealPasses];
  v8 = 0;
  if (v5 == v17[3])
  {
    v6 = [(PDDatabaseManager *)self numberOfTransactionReceipts];
    if (v6 == v12[3])
    {
      v7 = [(PDDatabaseManager *)self countOfTransactionsWithAssociatedReceipts];
      if (v7 == v12[3])
      {
        v8 = 1;
      }
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)computeExtraneousUniqueIDs:(id *)a3 missingUniqueIDs:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005B40;
  v24 = sub_10000B1AC;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10015F9D0;
  v19[3] = &unk_100848C58;
  v19[4] = &v20;
  [WeakRetained readTrueUniqueIDs:v19];

  v8 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v10 = +[Pass predicateForValidStyle];
  v11 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v10];

  v26 = @"unique_id";
  v12 = [NSArray arrayWithObjects:&v26 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015FA18;
  v16[3] = &unk_100846A08;
  v18 = &v20;
  v13 = v8;
  v17 = v13;
  [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v16];

  if (a3)
  {
    objc_storeStrong(a3, v8);
  }

  if (a4)
  {
    v14 = [v21[5] allObjects];
    v15 = *a4;
    *a4 = v14;
  }

  _Block_object_dispose(&v20, 8);
}

- (void)computeTransactionReceiptExtraneousUniqueIDs:(id *)a3 missingUniqueIDs:(id *)a4 removedUniqueIDs:(id *)a5
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100005B40;
  v41 = sub_10000B1AC;
  v42 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10015FE3C;
  v36[3] = &unk_100848C58;
  v36[4] = &v37;
  [WeakRetained readTrueTransactionReceiptUniqueiDs:v36];

  v9 = objc_alloc_init(NSMutableSet);
  v10 = [PaymentTransaction transactionReceiptUniqueIDsInDatabase:self->_database];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v38[5];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (([v10 containsObject:v15] & 1) == 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v12);
  }

  [v38[5] minusSet:v9];
  v16 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v18 = +[SQLiteBooleanPredicate truePredicate];
  v19 = [(SQLiteEntity *)TransactionReceipt queryWithDatabase:database predicate:v18];

  v43 = @"unique_id";
  v20 = [NSArray arrayWithObjects:&v43 count:1];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10015FE84;
  v29[3] = &unk_100846A08;
  v31 = &v37;
  v21 = v16;
  v30 = v21;
  [v19 enumeratePersistentIDsAndProperties:v20 usingBlock:v29];

  if (a3)
  {
    v22 = [v21 copy];
    v23 = *a3;
    *a3 = v22;
  }

  if (a4)
  {
    v24 = [v38[5] copy];
    v25 = *a4;
    *a4 = v24;
  }

  if (a5)
  {
    v26 = [v9 copy];
    v27 = *a5;
    *a5 = v26;
  }

  _Block_object_dispose(&v37, 8);
}

- (void)introduceDuplicateUniqueID
{
  database = self->_database;
  v4 = +[Pass predicateForValidStyle];
  v5 = [(SQLiteEntity *)Pass anyInDatabase:database predicate:v4];
  v6 = [v5 pass];

  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uniqueID];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Introducing duplicate uniqueID: %@", buf, 0xCu);
    }

    v9 = [(PDDatabaseManager *)self _passTypeForPass:v6];
    v10 = [(PDDatabaseManager *)self _webServiceForPass:v6 passType:v9];
    v11 = [Pass insertPass:v6 withPassType:v9 webService:v10 transactionService:0 messageService:0 daemonPassData:0 inDatabase:self->_database];
  }
}

- (void)introduceExtraneousUniqueID
{
  database = self->_database;
  v4 = +[Pass predicateForValidStyle];
  v5 = [(SQLiteEntity *)Pass anyInDatabase:database predicate:v4];
  v6 = [v5 pass];

  if (v6)
  {
    v7 = PDGenerateRandomDeviceIdentifier();
    [v6 setUniqueID:v7];

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 uniqueID];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Introducing extraneous uniqueID: %@", buf, 0xCu);
    }

    v10 = [(PDDatabaseManager *)self _passTypeForPass:v6];
    v11 = [(PDDatabaseManager *)self _webServiceForPass:v6 passType:v10];
    v12 = [Pass insertPass:v6 withPassType:v10 webService:v11 transactionService:0 messageService:0 daemonPassData:0 inDatabase:self->_database];
  }
}

- (void)introduceMissingUniqueID
{
  database = self->_database;
  v3 = +[Pass predicateForValidStyle];
  v4 = [(SQLiteEntity *)Pass anyInDatabase:database predicate:v3];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 valueForProperty:@"unique_id"];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Introducing missing uniqueID: %@", &v7, 0xCu);
    }

    [v4 deleteFromDatabase];
  }
}

- (void)_registerPasses:(id)a3
{
  v4 = a3;
  v5 = PKDeviceName();
  v14 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = PKPassLibraryMachServiceName;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 setPassLibraryMachServiceName:v10];
          [v12 setDeviceName:v5];
          [v12 setRemotePass:0];
          sub_1005DA4AC(self->_objectSettingsManager, v12);
          if ([v12 passType] == 1)
          {
            [v12 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v14];
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained registerDatabaseObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)_registeredPass:(id)a3
{
  if (a3)
  {
    v4 = [NSSet setWithObject:?];
    v5 = [(PDDatabaseManager *)self _registeredPasses:v4];
    v6 = [v5 anyObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_registeredPasses:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005B40;
  v19 = sub_10000B1AC;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100160748;
  v12[3] = &unk_100848C80;
  v14 = &v15;
  v6 = v4;
  v13 = v6;
  [WeakRetained readTrueUniqueIDs:v12];

  [(PDDatabaseManager *)self _registerPasses:v16[5]];
  v7 = [v16[5] count];
  if (v7 < [v6 count])
  {
    v8 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100160848;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(v8, block);
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_passTypeForPass:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:v5];
  if (!v6)
  {
    v7 = [v4 teamID];
    v6 = [PassType insertPassTypeWithPassTypeID:v5 teamID:v7 inDatabase:self->_database];
  }

  return v6;
}

- (id)_webServiceForPass:(id)a3 passType:(id)a4
{
  v6 = a4;
  v7 = [a3 webServiceURL];
  if (v7)
  {
    v8 = [WebService anyInDatabase:self->_database withPassType:v6 serviceURL:v7];
    if (!v8)
    {
      v8 = [WebService insertWebServiceWithPassType:v6 serviceURL:v7 inDatabase:self->_database];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_transactionServiceForPass:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionServiceURL];
  v6 = [v4 transactionServiceRegistrationURL];
  v7 = [v4 transactionPushTopic];

  v8 = [(PDDatabaseManager *)self _notificationServiceForPushTopic:v7 serviceType:0 serviceURL:v5 registrationURL:v6];

  return v8;
}

- (id)_messageServiceForPass:(id)a3
{
  v4 = a3;
  v5 = [v4 messageServiceURL];
  v6 = [v4 messageServiceRegistrationURL];
  v7 = [v4 messagePushTopic];

  v8 = [(PDDatabaseManager *)self _notificationServiceForPushTopic:v7 serviceType:1 serviceURL:v5 registrationURL:v6];

  return v8;
}

- (id)_notificationServiceForPushTopic:(id)a3 serviceType:(unint64_t)a4 serviceURL:(id)a5 registrationURL:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (v10)
  {
    if (v11)
    {
      v13 = [NotificationService anyInDatabase:self->_database withPushTopic:v10 serviceType:a4 serviceURL:v11 registrationURL:v12];
      if (!v13)
      {
        v14 = [(PDDatabaseManager *)self _deviceIdentifierForExistingServiceURL:v11 registrationURL:v12];
        if (!v14)
        {
          v14 = PDGenerateRandomDeviceIdentifier();
        }

        v13 = [NotificationService insertNotificationServiceWithPushTopic:v10 serviceType:a4 serviceURL:v11 registrationURL:v12 deviceIdentifier:v14 inDatabase:self->_database];
      }
    }
  }

  return v13;
}

- (id)_deviceIdentifierForExistingServiceURL:(id)a3 registrationURL:(id)a4
{
  v4 = [NotificationService anyInDatabase:self->_database withServiceURL:a3 registrationURL:a4];
  v5 = [v4 notificationService];
  v6 = [v5 deviceIdentifier];

  return v6;
}

- (void)_deleteNotificationServiceIfOrphaned:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [Pass anyInDatabase:self->_database withNotificationService:v4];

    v5 = v7;
    if (!v6)
    {
      v4 = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)_deletePassTypeIfOrphaned:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [Pass anyInDatabase:self->_database withPassType:v4];

    v5 = v7;
    if (!v6)
    {
      v4 = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)_deleteWebServiceIfOrphaned:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [Pass anyInDatabase:self->_database withWebService:v4];

    v5 = v7;
    if (!v6)
    {
      v4 = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (id)_predicateForStyle:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"template" equalToValue:v3];

  return v4;
}

- (id)_predicateForStyles:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = vcnt_s8(a3);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = [[NSMutableArray alloc] initWithCapacity:v4.u32[0]];
    for (i = 0; i != 13; ++i)
    {
      if ((v3 >> i))
      {
        v7 = [NSNumber numberWithInteger:i];
        [v5 addObject:v7];
      }
    }

    v3 = [SQLiteCompoundPredicate predicateWithProperty:@"template" equalToValues:v5];
  }

  return v3;
}

- (id)_predicateForType:(unint64_t)a3
{
  if (a3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedInteger:?];
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"pass_flavor" equalToValue:v3];
  }

  return v4;
}

- (id)_predicateForPassTypes:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = vcnt_s8(a3);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = [[NSMutableArray alloc] initWithCapacity:v4.u32[0]];
    for (i = 0; i != 64; ++i)
    {
      if ((v3 >> i))
      {
        v7 = [NSNumber numberWithUnsignedInteger:i];
        [v5 addObject:v7];
      }
    }

    v3 = [SQLiteCompoundPredicate predicateWithProperty:@"pass_flavor" equalToValues:v5];
  }

  return v3;
}

- (id)_predicateForCardType:(int64_t)a3
{
  if (a3 > 4)
  {
    v5 = 0;
  }

  else
  {
    if (a3 == 2)
    {
      [(PDDatabaseManager *)self _transitPredicate];
    }

    else
    {
      [Pass predicateForPaymentCardType:v3];
    }
    v5 = ;
  }

  return v5;
}

- (id)_passPredicateForRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 passType];
    v7 = [v5 hasPassStyleMask];
    v8 = [v5 passStyleMask];
    v9 = [v5 passUniqueIdentifiers];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100005B40;
    v28 = sub_10000B1AC;
    v29 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100161428;
    v23[3] = &unk_100848C58;
    v23[4] = &v24;
    [WeakRetained readTrueUniqueIDs:v23];

    v11 = [NSMutableArray alloc];
    v12 = [Pass predicateForUniqueIDs:v25[5]];
    v13 = +[Pass predicateForValidStyle];
    v14 = [v11 initWithObjects:{v12, v13, 0}];

    v15 = [(PDDatabaseManager *)self _predicateForType:v6];
    [v14 safelyAddObject:v15];

    if ([v9 count])
    {
      v16 = [Pass predicateForUniqueIDs:v9];
      [v14 addObject:v16];
    }

    if (v7)
    {
      v17 = [(PDDatabaseManager *)self _predicateForStyles:v8];
      [v14 addObject:v17];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v5;
      v19 = [(PDDatabaseManager *)self _secureElementPredicateForRequest:v18];
      [v14 safelyAddObject:v19];
    }

    v20 = [v14 copy];
    v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v20];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_secureElementPredicateForRequest:(id)a3
{
  if (a3)
  {
    secureElement = self->_secureElement;
    v5 = a3;
    v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
    v7 = [v5 cardType];
    v8 = [v5 paymentMethodTypes];
    v9 = [v5 primaryPaymentApplicationStates];
    v34 = [v5 readerIdentifier];
    v10 = [v5 excludeFirstPartyCards];

    v11 = objc_alloc_init(NSMutableArray);
    if (v7)
    {
      v12 = [(PDDatabaseManager *)self _predicateForCardType:v7];
      [v11 addObject:v12];
    }

    if ([v8 count])
    {
      v13 = [v8 pk_arrayByApplyingBlock:&stru_100848CA0];
      v14 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v13];
      [v11 addObject:v14];
    }

    v35 = v8;
    if ([v9 count])
    {
      v15 = [Pass predicateForPaymentApplicationStates:v9];
      v39[0] = v15;
      v16 = [Pass predicateForPrimaryPaymentApplication:1];
      v39[1] = v16;
      [Pass predicateForPaymentApplicationSecureElementIdentifiers:v6];
      v18 = v17 = v9;
      v39[2] = v18;
      v19 = [NSArray arrayWithObjects:v39 count:3];
      v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

      v9 = v17;
      [v11 addObject:v20];
    }

    if (v10)
    {
      v21 = [SQLiteNullPredicate isNullPredicateWithProperty:@"a"];
      v38[0] = v21;
      v22 = [SQLiteComparisonPredicate predicateWithProperty:@"has_associated_peer_payment_account" notEqualToValue:&__kCFBooleanTrue];
      v38[1] = v22;
      v23 = [NSArray arrayWithObjects:v38 count:2];
      v24 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v23];
    }

    else
    {
      v33 = v6;
      v21 = [SQLiteComparisonPredicate predicateWithProperty:@"has_associated_peer_payment_account" notEqualToValue:&__kCFBooleanTrue];
      v37[0] = v21;
      v26 = v9;
      v22 = [SQLiteComparisonPredicate predicateWithProperty:@"has_associated_peer_payment_account" equalToValue:&__kCFBooleanTrue];
      v36[0] = v22;
      v23 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
      v27 = [Pass predicateForPaymentApplicationStates:v23];
      v36[1] = v27;
      v28 = [NSArray arrayWithObjects:v36 count:2];
      v29 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v28];
      v37[1] = v29;
      v30 = [NSArray arrayWithObjects:v37 count:2];
      v24 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v30];

      v9 = v26;
      v6 = v33;
    }

    [v11 addObject:v24];
    if (v34)
    {
      v31 = [Pass predicateForPairedReaderIdentifier:v34];
      [v11 addObject:v31];
    }

    v25 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_unlocatedPredicate
{
  v2 = [(PDDatabaseManager *)self _locatedPredicate];
  v3 = [SQLiteCompoundPredicate negatedPredicate:v2];

  return v3;
}

- (id)_datedPassPredicate
{
  v2 = objc_opt_class();

  return [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:v2];
}

- (id)_activeSecureElementPassPredicate
{
  v3 = [[NSSet alloc] initWithObjects:{&off_1008A2DB0, &off_1008A2DC8, &off_1008A2EB8, &off_1008A2ED0, &off_1008A2EE8, &off_1008A2EA0, 0}];
  v4 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v5 = [(PDDatabaseManager *)self _predicateForType:1];
  v12[0] = v5;
  v6 = +[Pass predicateForValidStyle];
  v12[1] = v6;
  v7 = [Pass predicateForPaymentApplicationStates:v3];
  v12[2] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v4];
  v12[3] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:4];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

- (id)_transitPredicate
{
  v2 = [NSSet setWithObject:&off_1008A2F00];
  v3 = [Pass predicateForPaymentApplicationNetworks:v2];
  v17[0] = v3;
  v4 = [Pass predicateForPaymentApplicationAppletDataFormatPrefix:PKTransitAppletDataFormatPrefix];
  v17[1] = v4;
  v5 = [NSArray arrayWithObjects:v17 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v5];

  v7 = [Pass predicateForPaymentCardType:0];
  v16[0] = v7;
  v8 = [Pass predicateForPaymentType:1000];
  v16[1] = v8;
  v16[2] = v6;
  v9 = [NSArray arrayWithObjects:v16 count:3];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v11 = [Pass predicateForPaymentCardType:2];
  v15[0] = v11;
  v15[1] = v10;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v12];

  return v13;
}

- (id)_predicateMatchingPassesForWebService:(id)a3
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:a3];
  v4 = [Pass predicateForWebService:v3];

  return v4;
}

- (id)_paymentNetworkIdentifiersForPaymentNetworks:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSNumber numberWithInteger:PKPaymentCredentialTypeForPaymentNetworkName(), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_locatedCandidatePassesOfStyle:(int64_t)a3 matchingFurtherPredicate:(id)a4
{
  v6 = a4;
  v7 = [(PDDatabaseManager *)self _locatedPredicate];
  if (v6)
  {
    v8 = [[NSArray alloc] initWithObjects:{v7, v6, 0}];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v7 = v9;
  }

  v10 = [(PDDatabaseManager *)self _candidatePassesOfStyle:a3 matchingFurtherPredicate:v7];

  return v10;
}

- (id)_candidatePassesOfStyle:(int64_t)a3 matchingFurtherPredicate:(id)a4
{
  v6 = a4;
  v7 = [NSArray alloc];
  v8 = [(PDDatabaseManager *)self _validPassPredicate];
  v9 = [(PDDatabaseManager *)self _predicateForStyle:a3];
  v28 = v6;
  v10 = [v7 initWithObjects:{v8, v9, v6, 0}];

  v27 = v10;
  v26 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v11 = [Pass candidatePassesInDatabase:self->_database matchingPredicate:?];
  v12 = objc_alloc_init(NSMutableSet);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 passTypeIdentifier];
        v20 = PKPassTypeForPassTypeIdentifier();

        if (v20 != 1)
        {
          objectSettingsManager = self->_objectSettingsManager;
          v22 = [v18 uniqueIdentifier];
          v23 = sub_1005DA17C(objectSettingsManager, 1, v22, [+[PKPass classForPassType:](PKPass classForPassType:{v20), "defaultSettings"}]);

          if (!v23)
          {
            continue;
          }
        }

        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    v24 = [v12 copy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_databaseWebService:(id)a3
{
  database = self->_database;
  v5 = a3;
  v6 = [v5 passTypeIdentifier];
  v7 = [PassType anyInDatabase:database withPassTypeID:v6];

  v8 = self->_database;
  v9 = [v5 serviceURL];

  v10 = [WebService anyInDatabase:v8 withPassType:v7 serviceURL:v9];

  return v10;
}

- (id)_databaseNotificationService:(id)a3
{
  database = self->_database;
  v4 = a3;
  v5 = [v4 pushTopic];
  v6 = [v4 serviceType];
  v7 = [v4 serviceURL];
  v8 = [v4 registrationURL];

  v9 = [NotificationService anyInDatabase:database withPushTopic:v5 serviceType:v6 serviceURL:v7 registrationURL:v8];

  return v9;
}

- (void)generateDemoTransactionsForAllPaymentPasses
{
  if ((PKStoreDemoModeEnabled() & 1) == 0 && !PKUIOnlyDemoModeEnabled())
  {
    return;
  }

  v3 = [(PDDatabaseManager *)self passesOfType:1];
  v4 = objc_alloc_init(NSMutableSet);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v37;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v36 + 1) + 8 * i);
      if ([v11 hasAssociatedPeerPaymentAccount])
      {
        [v11 serialNumber];
        v8 = v12 = v8;
      }

      else
      {
        v13 = [v11 associatedAccountServiceAccountIdentifier];

        if (!v13)
        {
          continue;
        }

        v12 = [v11 associatedAccountServiceAccountIdentifier];
        [v4 addObject:v12];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v7);
LABEL_17:

  v14 = objc_alloc_init(NSMutableSet);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:*(*(&v32 + 1) + 8 * j)];
        [v14 unionSet:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v21 = [v5 allObjects];
  [PKDemoTransactionGenerator generateDemoFilesForPasses:v21 accountUsers:v14 peerPaymentPassSerialNumber:v8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v5;
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * k);
        [(PDDatabaseManager *)self _applyDemoPaymentApplicationToPass:v27, v28];
        [(PDDatabaseManager *)self _applyDemoPaymentTransactionsToPass:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v24);
  }
}

- (void)_applyDemoPaymentApplicationToPass:(id)a3
{
  v4 = [a3 paymentPass];
  v5 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [v4 paymentApplicationsForSecureElementIdentifiers:v5];
  if (![v6 count])
  {
    v7 = objc_alloc_init(PKPaymentApplication);
    v8 = [v4 paymentApplications];
    v9 = [v8 count];

    if (v9)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [v4 paymentApplications];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if (([v15 isAuxiliary] & 1) == 0)
            {
              v16 = v15;

              v7 = v16;
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    v17 = [NSString stringWithFormat:@"%u", arc4random_uniform(0x2706u) + 1];
    [v7 setDPANSuffix:v17];
    [v7 setSupportsInAppPayment:1];
    [v7 setSupportsContactlessPayment:1];
    [v7 setState:1];
    v18 = PDGenerateRandomDeviceIdentifier();
    [v7 setDPANIdentifier:v18];

    v19 = PDGenerateRandomDeviceIdentifier();
    [v7 setApplicationIdentifier:v19];

    v20 = [v5 firstObject];
    [v7 setSecureElementIdentifier:v20];

    v21 = [NSSet setWithObject:v7];
    [v4 setPaymentApplications:v21];
  }
}

- (void)_applyDemoPaymentTransactionsToPass:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:v5];
  v7 = [(PDDatabaseManager *)self primaryPaymentApplicationForPassUniqueIdentifier:v5];
  v94 = v4;
  v8 = [v4 paymentPass];
  v93 = [v8 associatedAccountServiceAccountIdentifier];

  v9 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v88 = [v9 identifier];
  v92 = v9;
  v89 = [v9 associatedPassUniqueID];
  v100 = v6;
  v10 = [(PDDatabaseManager *)self transactionsForTransactionSourceIdentifiers:v6 withTransactionSource:0 withBackingData:0 limit:0];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v134 objects:v153 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v135;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v135 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v134 + 1) + 8 * i);
        if ([v15 transactionType] != 13)
        {
          v16 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v15 withPassUniqueIdentifier:v5 paymentApplication:v7 insertionMode:2 performTruncation:0 insertedTransaction:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v134 objects:v153 count:16];
    }

    while (v12);
  }

  v90 = v7;
  v95 = v5;
  v87 = v10;
  [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:v93];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v133 = 0u;
  v101 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v101)
  {
    v99 = *v131;
    do
    {
      v17 = 0;
      do
      {
        if (*v131 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v17;
        v18 = *(*(&v130 + 1) + 8 * v17);
        v19 = [(PDDatabaseManager *)self transactionsForTransactionSourceIdentifiers:v100 withTransactionSource:0 withBackingData:0 limit:0];
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v126 objects:v151 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v127;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v127 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v126 + 1) + 8 * j);
              v25 = [v24 transactionSourceIdentifier];
              if (v25)
              {
                v26 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v24 withTransactionSourceIdentifier:v25 insertionMode:2 performTruncation:0 insertedTransaction:0];
              }

              else
              {
                v27 = [v18 transactionSourceIdentifiers];
                v28 = [v27 anyObject];
                v29 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v24 withTransactionSourceIdentifier:v28 insertionMode:2 performTruncation:0 insertedTransaction:0];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v126 objects:v151 count:16];
          }

          while (v21);
        }

        v17 = v103 + 1;
      }

      while ((v103 + 1) != v101);
      v101 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
    }

    while (v101);
  }

  v30 = v95;
  if (v93)
  {
    v31 = [NSSet setWithObject:&off_1008A2E10];
    v32 = [(PDDatabaseManager *)self accountEventsForAccountIdentifier:v93 excludingTypes:v31];

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v122 objects:v150 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v123;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v123 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v122 + 1) + 8 * k) identifier];
          [(PDDatabaseManager *)self deleteAccountEventWithIdentifier:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v122 objects:v150 count:16];
      }

      while (v35);
    }
  }

  v149 = v94;
  v39 = [NSArray arrayWithObjects:&v149 count:1];
  v40 = [v92 associatedPassSerialNumber];
  [PKDemoTransactionGenerator generateDemoFilesForPasses:v39 accountUsers:obj peerPaymentPassSerialNumber:v40];

  v41 = objc_alloc_init(PKDemoTransactionGeneratorConfiguration);
  v42 = [v94 paymentPass];
  if ([v42 hasAssociatedPeerPaymentAccount])
  {
    v43 = [v94 uniqueID];
    v44 = v89;
    v45 = v43;
    v46 = v45;
    if (v44 == v45)
    {

      goto LABEL_43;
    }

    if (v44 && v45)
    {
      v47 = [v44 isEqualToString:v45];

      if ((v47 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v48 = 1;
      v49 = v88;
      v50 = PKAccountWebServicePaymentsRequest_ptr;
      goto LABEL_48;
    }
  }

LABEL_46:
  v51 = [v94 paymentPass];
  v52 = [v51 associatedAccountServiceAccountIdentifier];

  v50 = PKAccountWebServicePaymentsRequest_ptr;
  if (!v52)
  {
    goto LABEL_49;
  }

  v48 = 2;
  v49 = v93;
LABEL_48:
  [v41 setAccountIdentifier:v49];
  [v41 setAccountType:v48];
LABEL_49:
  v53 = PKCurrentUserAltDSID();
  [v41 setAltDSID:v53];

  v54 = [v90 transactionSourceIdentifier];
  [v41 setTransactionSourceIdentifier:v54];

  v55 = [v50[129] itemIdentifierForPass:v94];
  v56 = v50[129];
  v120 = 0;
  v121 = 0;
  v86 = v55;
  [v56 demoTransactionsAndEventsForItemIdentifier:? configuration:? transactions:? events:?];
  v57 = 0;
  v58 = 0;
  v59 = PKLogFacilityTypeGetObject();
  log = v59;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v57 count];
    v61 = [v58 count];
    v62 = [v94 organizationName];
    *buf = 134219010;
    v140 = v60;
    v141 = 2048;
    v142 = v61;
    v59 = log;
    v143 = 2112;
    v144 = v62;
    v145 = 2112;
    v146 = v95;
    v147 = 2112;
    v148 = v93;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Generating %ld demo transactions and %ld events for pass: %@, unqiueID: %@, accountIdentifier: %@", buf, 0x34u);

    v30 = v95;
  }

  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_1001634D0;
  v115[3] = &unk_100848CC8;
  v63 = v57;
  v116 = v63;
  v117 = self;
  v85 = v30;
  v118 = v85;
  v83 = v63;
  v84 = v90;
  v119 = v84;
  [v63 enumerateObjectsUsingBlock:v115];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_10016354C;
  v114[3] = &unk_100848CF0;
  v114[4] = self;
  v91 = v58;
  [v58 enumerateObjectsUsingBlock:v114];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v64 = obj;
  v65 = [v64 countByEnumeratingWithState:&v110 objects:v138 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v111;
    v96 = v41;
    v102 = *v111;
    do
    {
      v68 = 0;
      v104 = v66;
      do
      {
        if (*v111 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v110 + 1) + 8 * v68);
        if (([v69 isCurrentUser] & 1) == 0)
        {
          v70 = [v69 accountIdentifier];
          [v41 setAccountIdentifier:v70];

          [v41 setAccountType:2];
          v71 = [v69 altDSID];
          [v41 setAltDSID:v71];

          v72 = [v69 transactionSourceIdentifiers];
          v73 = [v72 anyObject];
          [v41 setTransactionSourceIdentifier:v73];

          v74 = [v50[129] itemIdentifierForAccountUser:v69];
          v75 = v50[129];
          v108 = 0;
          v109 = 0;
          [v75 demoTransactionsAndEventsForItemIdentifier:v74 configuration:v41 transactions:&v109 events:&v108];
          v76 = v109;
          v77 = v108;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v78 = [v76 count];
            v79 = [v77 count];
            [v69 appleID];
            v81 = v80 = v64;
            v82 = [v69 accountIdentifier];
            *buf = 134218754;
            v140 = v78;
            v141 = 2048;
            v142 = v79;
            v59 = log;
            v143 = 2112;
            v144 = v81;
            v145 = 2112;
            v146 = v82;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Generating %ld demo transactions and %ld events for account user: %@, accountIdentifier: %@", buf, 0x2Au);

            v64 = v80;
            v41 = v96;
            v50 = PKAccountWebServicePaymentsRequest_ptr;
          }

          v106[0] = _NSConcreteStackBlock;
          v106[1] = 3221225472;
          v106[2] = sub_100163558;
          v106[3] = &unk_100848D18;
          v106[4] = self;
          v107 = v41;
          [v76 enumerateObjectsUsingBlock:v106];
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_1001635D4;
          v105[3] = &unk_100848CF0;
          v105[4] = self;
          [v77 enumerateObjectsUsingBlock:v105];

          v67 = v102;
          v66 = v104;
        }

        v68 = v68 + 1;
      }

      while (v66 != v68);
      v66 = [v64 countByEnumeratingWithState:&v110 objects:v138 count:16];
    }

    while (v66);
  }
}

- (void)_applyDemoFelicaAppletStateToPass:(id)a3
{
  v15 = a3;
  v4 = [v15 uniqueID];
  v5 = [v15 paymentPass];
  v6 = [(PDDatabaseManager *)self primaryPaymentApplicationForPassUniqueIdentifier:v4];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = PKHomeDirectoryPath();
    v9 = [v8 stringByAppendingPathComponent:@"FelicaAppletHistory.plist"];

    v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
    v11 = [v15 serialNumber];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = [[PKFelicaAppletHistory alloc] initWithDictionary:v12 source:1];
      v14 = +[NSDate date];
      [(PDDatabaseManager *)self updateTransitAppletStateWithHistory:v13 transactionDate:v14 forPaymentApplication:v7 withPassUniqueIdentifier:v4 forceTransactionGeneration:0 balanceLabelDictionary:0 unitDictionary:0 planLabelDictionary:0 completion:0];
    }
  }
}

- (void)_updateCloudStoreWithTransactions:(id)a3 transactionSourceIdentifier:(id)a4
{
  v6 = a3;
  v21 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_cloudStoreCoordinator);

  if (WeakRetained)
  {
    if ([v6 count])
    {
      v8 = objc_alloc_init(NSMutableArray);
      v9 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = v6;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            v16 = [v15 serviceIdentifier];

            if (v16)
            {
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_100163A5C;
              v26[3] = &unk_10083EB78;
              v26[4] = self;
              v26[5] = v15;
              v27 = v21;
              v28 = v8;
              [v9 addOperation:v26];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v12);
      }

      v17 = +[NSNull null];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100163BC0;
      v22[3] = &unk_100848D88;
      v23 = v8;
      v24 = self;
      v25 = v21;
      v18 = v8;
      v19 = [v9 evaluateWithInput:v17 completion:v22];

      v6 = v20;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v21;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot update the cloud store with a nil transaction for transactionSourceIdentifier %@", buf, 0xCu);
      }
    }
  }
}

- (id)featureApplicationWithIdentifier:(id)a3
{
  v3 = [FeatureApplication featureApplicationWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 featureApplication];

  return v4;
}

- (id)setFeatureApplications:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 applicationIdentifier];
        if (v13)
        {
          v14 = [FeatureApplication insertOrUpdateFeatureApplication:v12 inDatabase:self->_database];
          [v5 addObject:v13];
          v15 = [v14 featureApplication];
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v5 allObjects];
  [FeatureApplication deleteFeatureApplicationsNotIncludingIdentifiers:v16 inDatabase:self->_database];

  return v6;
}

- (id)setFeatureApplications:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v20 = a4;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 applicationIdentifier];
        if (v15)
        {
          v16 = [FeatureApplication insertOrUpdateFeatureApplication:v14 inDatabase:self->_database];
          [v7 addObject:v15];
          v17 = [v16 featureApplication];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [v7 allObjects];
  [FeatureApplication deleteFeatureApplicationsNotIncludingIdentifiers:v18 forAccountIdentifier:v20 inDatabase:self->_database];

  return v8;
}

- (id)insertOrUpdateFeatureApplication:(id)a3
{
  v3 = [FeatureApplication insertOrUpdateFeatureApplication:a3 inDatabase:self->_database];
  v4 = [v3 featureApplication];

  return v4;
}

- (id)nextPossibleFetchDateForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5
{
  v8 = a5;
  v9 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:a3 accountIdentifier:v8];
  if (v9)
  {
    v10 = [AccountEndpointBackOff anyInDatabase:self->_database forAccountType:a3 endpointType:a4 accountPID:v9];
    v11 = [v10 nextPossibleFetchDate];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error: could not find an account pid for account identifier %@", &v14, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)increaseRetryBackoffLevelForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5
{
  v8 = a5;
  v9 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:a3 accountIdentifier:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [AccountEndpointBackOff anyInDatabase:self->_database forAccountType:a3 endpointType:a4 accountPID:v9];
    v12 = v11;
    if (v11)
    {
      [v11 increaseBackoffLevel];
    }

    else
    {
      v14 = [AccountEndpointBackOff insertIfNotExistsForAccountType:a3 endpointType:a4 accountPID:v10 inDatabase:self->_database];
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error: could not find an account pid for account identifier %@", &v15, 0xCu);
    }
  }
}

- (void)deleteRetryBackoffForAccountType:(unint64_t)a3 endpointType:(unint64_t)a4 accountIdentifier:(id)a5
{
  v8 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:a3 accountIdentifier:a5];
  if (v8)
  {
    database = self->_database;

    [AccountEndpointBackOff deleteBackOffForAccountType:a3 endpointType:a4 accountPID:v8 inDatabase:database];
  }
}

- (int64_t)_accountPIDForEndpointBackoffType:(unint64_t)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  if (a3 - 4 < 2 || a3 == 2)
  {
    v7 = [Account anyInDatabase:self->_database withIdentifier:v6];
    v8 = v7;
    if (!v7)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (a3 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    v8 = v7;
  }

  v9 = [v7 persistentID];
LABEL_8:

LABEL_9:
  return v9;
}

- (id)accountWithIdentifier:(id)a3
{
  v3 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 account];

  return v4;
}

- (id)accountsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PDDatabaseManager *)self accountWithIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        [v5 safelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)setAccounts:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [Account insertOrUpdateAccount:v12 inDatabase:self->_database, v18];
        v14 = [v12 accountIdentifier];
        [v5 addObject:v14];

        v15 = [v13 account];
        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v5 allObjects];
  [Account deleteAccountsNotIncludingIdentifiers:v16 inDatabase:self->_database];

  return v6;
}

- (id)insertOrUpdateAccount:(id)a3
{
  v3 = [Account insertOrUpdateAccount:a3 inDatabase:self->_database];
  v4 = [v3 account];

  return v4;
}

- (id)insertOrUpdateAccountUsers:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser insertOrUpdateAccountUsers:v6 forAccountPID:v9 inDatabase:self->_database];
    v11 = [v10 pk_setByApplyingBlock:&stru_100848DC8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)insertOrUpdateAccountUser:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser insertOrUpdateAccountUser:v6 forAccountPID:v9 inDatabase:self->_database];
    v11 = [v10 accountUser];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasAnyAccountWithType:(unint64_t)a3
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [Account anyInDatabase:database withType:v4];
  v6 = v5 != 0;

  return v6;
}

- (void)deleteAccountUserWithAltDSID:(id)a3 forAccountWithIdentifier:(id)a4
{
  v9 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
    [AccountUser deleteAccountUserWithAltDSID:v9 forAccountPID:v8 inDatabase:self->_database];
  }
}

- (id)accountUsersForAccountWithIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  v5 = v4;
  if (v4)
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 persistentID]);
    v7 = [AccountUser accountUsersForAccountPID:v6 inDatabase:self->_database];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accountUsersForAccountWithIdentifier:(id)a3 accessLevel:(unint64_t)a4
{
  v6 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
    v9 = [AccountUser accountUsersForAccountPID:v8 accessLevel:a4 inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountUserForAccountWithIdentifier:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser accountUserForAccountPID:v9 handle:v6 inDatabase:self->_database];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)setScheduledPayments:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v19 = v7;
  v9 = [v7 accountIdentifier];
  [AccountPayment deleteScheduledPaymentsWithAccountIdentifier:v9 inDatabase:self->_database];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [AccountPayment insertScheduledPayment:*(*(&v20 + 1) + 8 * i) accountIdentifier:v9 inDatabase:self->_database];
        v16 = [v15 payment];

        [v8 safelyAddObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [v8 copy];

  return v17;
}

- (id)scheduledPaymentsWithAccountIdentifier:(id)a3 includeFailedRecurringPayments:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [AccountPayment scheduledPaymentsWithAccountIdentifier:v6 inDatabase:self->_database];
  v8 = [v7 allObjects];

  if (v4)
  {
    v9 = [AccountPayment failedRecurringPaymentsWithAccountIdentifier:v6 inDatabase:self->_database];
    v10 = [v9 allObjects];

    v11 = [v8 arrayByAddingObjectsFromArray:v10];

    v8 = v11;
  }

  return v8;
}

- (id)setTransfers:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v22 = v7;
  v9 = [v7 accountIdentifier];
  [AccountTransfer deleteTransfersWithAccountIdentifier:v9 inDatabase:self->_database];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [AccountTransfer insertTransfer:*(*(&v23 + 1) + 8 * i) accountIdentifier:v9 inDatabase:self->_database];
        v16 = [v15 transfer];

        [v8 safelyAddObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = [NSSortDescriptor sortDescriptorWithKey:@"transferDate" ascending:0];
  v27 = v17;
  v18 = [NSArray arrayWithObjects:&v27 count:1];
  v19 = [v8 sortedArrayUsingDescriptors:v18];

  v20 = [v19 copy];

  return v20;
}

- (id)placedHoldsWithAccountIdentifier:(id)a3
{
  v3 = [AccountHold placedHoldsWithAccountIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 allObjects];

  return v4;
}

- (BOOL)accountEventExistsWithIdentifier:(id)a3
{
  v3 = [AccountEvent accountEventWithIdentifier:a3 inDatabase:self->_database];
  v4 = v3 != 0;

  return v4;
}

- (id)accountEventWithIdentifier:(id)a3
{
  v3 = [AccountEvent accountEventWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 event];

  return v4;
}

- (id)creditStatementWithIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v4 = [CreditAccountStatement creditAccountStatementsWithIdentifier:a3 withAccountIdentifier:a4 inDatabase:self->_database];
  v5 = [v4 anyObject];
  v6 = [v5 creditAccountStatement];

  return v6;
}

- (id)creditStatementWithIdentifier:(id)a3 accountIdentifiers:(id)a4
{
  v4 = [CreditAccountStatement creditAccountStatementsWithIdentifier:a3 withAccountIdentifiers:a4 inDatabase:self->_database];
  v5 = [v4 anyObject];
  v6 = [v5 creditAccountStatement];

  return v6;
}

- (id)accountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v4 = [AccountStatementMetadata anyInDatabase:self->_database forStatementIdentifier:a3 accountIdentifier:a4];
  v5 = [v4 accountStatementMetadata];

  return v5;
}

- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v4 = [AccountStatementMetadata anyInDatabase:self->_database forStatementIdentifier:a3 accountIdentifier:a4];
  [v4 deleteFromDatabase];
}

- (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)a3 accountType:(unint64_t)a4 maxProcessedAttemptCount:(int64_t)a5
{
  v8 = a3;
  if (a4 == 1)
  {
    v9 = @"pineapples.c";
    v10 = @"pineapples.t";
    v11 = @"pineapples.b";
    v12 = @"pineapples";
    goto LABEL_5;
  }

  if (a4 == 4)
  {
    v9 = @"eggplant.d";
    v10 = @"eggplant.n";
    v11 = @"eggplant.b";
    v12 = @"eggplant";
LABEL_5:
    v13 = [AccountStatementMetadata latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:v8 tableName:v12 statementIdentifierColumn:v11 accountIdentifierColumn:v10 openingDateColumn:v9 maxProcessedAttemptCount:a5 inDatabase:self->_database];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)markStatementMetadataItems:(id)a3 asProcessed:(BOOL)a4 error:(unint64_t)a5 statementIdentifier:(id)a6 accountIdentifier:(id)a7
{
  v10 = a4;
  database = self->_database;
  v12 = a3;
  v13 = [AccountStatementMetadata anyInDatabase:database forStatementIdentifier:a6 accountIdentifier:a7];
  [v13 markStatementMetadataItems:v12 processed:v10 error:a5];

  v14 = [v13 accountStatementMetadata];

  return v14;
}

- (id)updateStatementMetadataWithReport:(id)a3 reportDate:(id)a4
{
  database = self->_database;
  v6 = a4;
  v7 = a3;
  v8 = [v7 statementIdentifier];
  v9 = [v7 accountIdentifier];
  v10 = [AccountStatementMetadata anyInDatabase:database forStatementIdentifier:v8 accountIdentifier:v9];

  [v10 updateWithReport:v7 reportDate:v6];
  v11 = [v10 accountStatementMetadata];

  return v11;
}

- (id)insertOrUpdateAccountStatementMetadata:(id)a3
{
  v3 = [AccountStatementMetadata insertOrUpdateAccountStatementMetadata:a3 inDatabase:self->_database];
  v4 = [v3 accountStatementMetadata];

  return v4;
}

- (void)insertOrUpdateCreditStatements:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v20 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [CreditAccountStatement creditAccountStatementsWithIdentifier:v10 withAccountIdentifier:v7 inDatabase:self->_database];

        if ([v11 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v22;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v22 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v21 + 1) + 8 * j) updateWithCreditAccountStatement:v9];
              }

              v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v14);
          }
        }

        else
        {
          v17 = [CreditAccountStatement insertCreditAccountStatement:v9 withAccountIdentifier:v7 inDatabase:self->_database];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }
}

- (void)insertOrUpdateSavingsAccountStatements:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [SavingsAccountStatement insertOrUpdateSavingsAccountStatement:*(*(&v13 + 1) + 8 * v11) forAccount:v7 inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)insertOrUpdateAccountTaxForms:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [AccountTaxForm insertOrUpdateAccountTaxForm:*(*(&v13 + 1) + 8 * v11) forAccount:v7 inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)recomputeCategoryVisualizationMagnitudesForPassUniqueID:(id)a3 withStyle:(int64_t)a4
{
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = [Pass anyInDatabase:self->_database withUniqueID:v5];
  v45 = [v6 associatedAccountIdentifier];
  v7 = [v6 valueForProperty:@"a"];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 valueForProperty:@"b"];
    v8 = [v9 BOOLValue];
  }

  v10 = v45;
  if (v8 && v45)
  {
    v44 = [(PDDatabaseManager *)self accountWithIdentifier:v45];
    v11 = [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:v45];
    v38 = [v11 pk_anyObjectPassingTest:&stru_100848E08];

    v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x9A7B9230uLL);
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v13 = [v44 accessLevel];
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = [v44 creditDetails];
        v15 = [v14 cardBalance];
        v42 = [v15 amount];
LABEL_11:

        if (v42)
        {
          v18 = PKCurrencyDecimalToStorageInteger();
          if (v18 >= 1)
          {
            v19 = [(PDDatabaseManager *)self allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:v5];
            v20 = objc_alloc_init(PKPaymentTransactionRequest);
            [v20 setTransactionSourceIdentifiers:v19];
            v21 = [v44 creditDetails];
            v22 = [v21 currencyCode];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = @"USD";
            }

            [v20 setCurrencyCode:{v24, v38}];

            [v20 setTransactionTypes:&off_1008A4800];
            [v20 setTransactionStatuses:&off_1008A4818];
            [v20 setDateOrder:1];
            [v20 setLimit:100];
            database = self->_database;
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3221225472;
            v54[2] = sub_100166624;
            v54[3] = &unk_100848E30;
            v54[4] = &v55;
            v54[5] = v18;
            v54[6] = v12;
            [PaymentTransaction enumerateTransactionAmountAndCategory:database request:v20 block:v54];
          }

LABEL_18:
          v40 = [(PDDatabaseManager *)self categoryVisualizationMagnitudesForPassUniqueID:v5, v38];
          v26 = objc_alloc_init(NSMutableSet);
          for (i = 0; i != 8; ++i)
          {
            v28 = v12[i];
            v29 = v56[3];
            v30 = objc_alloc_init(PKCategoryVisualizationMagnitude);
            [v30 setPassUniqueIdentifier:v5];
            [v30 setBucket:i];
            [v30 setMagnitude:(v28 / v29)];
            [v26 addObject:v30];
          }

          free(v12);
          v31 = [v26 copy];
          if (PKEqualObjects())
          {
            v32 = a4;
            if (!a4)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v33 = v31;
            v34 = [v33 countByEnumeratingWithState:&v50 objects:v59 count:16];
            if (v34)
            {
              v35 = *v51;
              do
              {
                for (j = 0; j != v34; j = j + 1)
                {
                  if (*v51 != v35)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v37 = [CategoryVisualizationMagnitude insertOrUpdateMagnitude:*(*(&v50 + 1) + 8 * j) inDatabase:self->_database];
                }

                v34 = [v33 countByEnumeratingWithState:&v50 objects:v59 count:16];
              }

              while (v34);
            }

            v32 = a4;
          }

          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_10016666C;
          v46[3] = &unk_100848E58;
          v47 = v5;
          v48 = v31;
          v49 = v32;
          [(PDDatabaseManager *)self dispatchDelegateCallback:v46];

LABEL_32:
          _Block_object_dispose(&v55, 8);

          v10 = v45;
          goto LABEL_33;
        }

LABEL_17:
        v42 = 0;
        goto LABEL_18;
      }

      if (v13 != 2)
      {
        goto LABEL_17;
      }
    }

    v14 = [v44 creditDetails];
    v15 = [v14 accountSummary];
    v16 = [v38 altDSID];
    v17 = [v15 accountUserActivityForAccountUserAltDSID:v16];
    v42 = [v17 totalSpending];

    goto LABEL_11;
  }

LABEL_33:

  objc_autoreleasePoolPop(context);
}

- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)a3 withStartDate:(id)a4 endDate:(id)a5 calendar:(id)a6 calendarUnit:(unint64_t)a7 type:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v194 = a6;
  v198 = objc_alloc_init(NSMutableDictionary);
  v195 = self;
  v182 = v14;
  v183 = v13;
  v217 = a8;
  v181 = v15;
  v16 = [PaymentTransaction paymentTransactionsInDatabase:self->_database forTransactionSourceIdentifiers:v13 withRedemptionType:a8 startDate:v14 endDate:v15];
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v269 objects:v282 count:16];
  v188 = v16;
  if (v17)
  {
    v18 = v17;
    v203 = 0;
    obj = 0;
    v185 = 0;
    v186 = 0;
    v184 = 0;
    v187 = 0;
    v19 = *v270;
    v214 = *v270;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v270 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v269 + 1) + 8 * v20);
        v22 = [v21 rewardsTotalAmount];
        if (v22)
        {
          v23 = +[NSDecimalNumber notANumber];
          v24 = [v22 compare:v23];

          if (v24)
          {
            v25 = [v21 redemptionEvent];
            v26 = [v25 items];
            v27 = [v26 anyObject];

            if (v27)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v27 type] == v217)
              {
                if ([v21 transactionType] == 14)
                {
                  v222 = v27;
                  if (v187)
                  {
                    v28 = obj;
                  }

                  else
                  {
                    v44 = [v183 anyObject];
                    v45 = [(PDDatabaseManager *)v195 passUniqueIdentifierForTransactionSourceIdentifier:v44];

                    v187 = v45;
                    v46 = [Pass anyInDatabase:v195->_database withUniqueID:v45];

                    v47 = [v46 associatedAccountIdentifier];

                    v48 = [Account accountWithIdentifier:v47 inDatabase:v195->_database];
                    v49 = [v48 account];

                    v50 = [v49 creditDetails];
                    v28 = [v50 installmentPlans];

                    v51 = objc_alloc_init(NSMutableDictionary);
                    v203 = v51;
                    v16 = v188;
                    v185 = v49;
                    v186 = v47;
                    v19 = v214;
                    v27 = v222;
                    v184 = v46;
                  }

                  v266 = 0u;
                  v267 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v29 = v28;
                  v204 = [v29 countByEnumeratingWithState:&v264 objects:v281 count:16];
                  if (v204)
                  {
                    v52 = *v265;
                    v210 = v18;
                    v228 = v29;
                    v201 = *v265;
                    do
                    {
                      v53 = 0;
                      do
                      {
                        if (*v265 != v52)
                        {
                          v54 = v53;
                          objc_enumerationMutation(v29);
                          v53 = v54;
                        }

                        v206 = v53;
                        v55 = *(*(&v264 + 1) + 8 * v53);
                        v219 = [v55 identifier];
                        v260 = 0u;
                        v261 = 0u;
                        v262 = 0u;
                        v263 = 0u;
                        obja = [v55 lineItems];
                        v56 = [obja countByEnumeratingWithState:&v260 objects:v280 count:16];
                        if (v56)
                        {
                          v57 = v56;
                          v58 = *v261;
                          while (2)
                          {
                            for (i = 0; i != v57; i = i + 1)
                            {
                              if (*v261 != v58)
                              {
                                objc_enumerationMutation(obja);
                              }

                              v60 = *(*(&v260 + 1) + 8 * i);
                              v61 = [v21 lifecycleIdentifier];
                              v62 = [v60 identifier];
                              v63 = v61;
                              v64 = v62;
                              v65 = v64;
                              if (v63 == v64)
                              {

LABEL_51:
                                v67 = [v203 objectForKey:v219];
                                if (!v67)
                                {
                                  v67 = objc_alloc_init(NSMutableSet);
                                  [v203 setObject:v67 forKey:v219];
                                }

                                [v67 addObject:v21];

                                v27 = v222;
                                v29 = v228;
                                obj = v228;
                                v16 = v188;
                                v18 = v210;
                                v19 = v214;
                                goto LABEL_18;
                              }

                              if (v63 && v64)
                              {
                                v66 = [v63 isEqualToString:v64];

                                if (v66)
                                {
                                  goto LABEL_51;
                                }
                              }

                              else
                              {
                              }
                            }

                            v57 = [obja countByEnumeratingWithState:&v260 objects:v280 count:16];
                            if (v57)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v53 = v206 + 1;
                        v16 = v188;
                        v18 = v210;
                        v19 = v214;
                        v27 = v222;
                        v29 = v228;
                        v52 = v201;
                      }

                      while (v206 + 1 != v204);
                      v204 = [v228 countByEnumeratingWithState:&v264 objects:v281 count:16];
                    }

                    while (v204);
                  }

                  obj = v29;
LABEL_18:
                }

                else if ([v21 suppressBehavior] != 1)
                {
                  v30 = [v25 date];
                  v223 = [(PDDatabaseManager *)v195 _startOfTimeBlockForUnit:a7 inCalendar:v194 fromDate:v30 forward:0];
                  v31 = [v198 objectForKey:?];
                  if (!v31)
                  {
                    v32 = objc_alloc_init(PKPaymentTransactionGroup);
                    [v32 setStartDate:v223];
                    [v32 setEndDate:v30];
                    [v32 setType:5];
                    v226 = +[NSDecimalNumber zero];
                    v33 = [v21 currencyCode];
                    v34 = PKCurrencyAmountCreate(v226, v33, 0);
                    [v32 setTotalAmount:v34];

                    v31 = v32;
                    [v32 setTransactionCount:0];
                    [v32 setTransactions:&__NSArray0__struct];
                    [v198 setObject:v32 forKey:v223];
                  }

                  v35 = [v31 transactions];
                  v36 = [v35 arrayByAddingObject:v21];
                  [v31 setTransactions:v36];

                  v37 = [v31 endDate];
                  v38 = [v30 compare:v37];

                  if (v38 == 1)
                  {
                    [v31 setEndDate:v30];
                  }

                  v39 = [v31 totalAmount];
                  v40 = [v39 amount];
                  v41 = [v40 decimalNumberByAdding:v22];
                  [v39 currency];
                  v42 = v218 = v31;
                  PKCurrencyAmountCreate(v41, v42, 0);
                  v43 = v227 = v30;

                  [v218 setTotalAmount:v43];
                  v29 = v227;

                  v16 = v188;
                  v19 = v214;
                  goto LABEL_18;
                }

                goto LABEL_20;
              }
            }

            v29 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Transaction does not have a valid rewards event", buf, 2u);
            }

            goto LABEL_18;
          }
        }

        v25 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Transaction does not have a valid rewardsTotalAmount", buf, 2u);
        }

LABEL_20:

        v20 = v20 + 1;
      }

      while (v20 != v18);
      v68 = [v16 countByEnumeratingWithState:&v269 objects:v282 count:16];
      v18 = v68;
      if (!v68)
      {
        goto LABEL_57;
      }
    }
  }

  v203 = 0;
  obj = 0;
  v185 = 0;
  v186 = 0;
  v184 = 0;
  v187 = 0;
LABEL_57:
  v205 = objc_alloc_init(NSMutableSet);
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v202 = obj;
  v69 = v203;
  v215 = [v202 countByEnumeratingWithState:&v256 objects:v279 count:16];
  if (!v215)
  {
    goto LABEL_114;
  }

  v70 = *v257;
  v199 = *v257;
  do
  {
    v71 = 0;
    do
    {
      if (*v257 != v70)
      {
        objc_enumerationMutation(v202);
      }

      v72 = *(*(&v256 + 1) + 8 * v71);
      v73 = [v72 identifier];
      v74 = [v69 objectForKey:v73];

      if ([v74 count])
      {
        v75 = [v74 pk_setByApplyingBlock:&stru_100848E98];
        [v205 unionSet:v75];

        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v207 = v72;
        v76 = [v72 lineItems];
        v77 = [v76 countByEnumeratingWithState:&v252 objects:v278 count:16];
        if (!v77)
        {
          goto LABEL_71;
        }

        v78 = v77;
        v79 = *v253;
        do
        {
          for (j = 0; j != v78; j = j + 1)
          {
            if (*v253 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v252 + 1) + 8 * j);
            if ([v81 type] == 1)
            {
              v82 = [v81 identifier];
              goto LABEL_73;
            }
          }

          v78 = [v76 countByEnumeratingWithState:&v252 objects:v278 count:16];
        }

        while (v78);
LABEL_71:
        v82 = 0;
LABEL_73:

        v229 = +[NSDecimalNumber zero];
        v248 = 0u;
        v249 = 0u;
        v250 = 0u;
        v251 = 0u;
        v220 = v74;
        v83 = v74;
        v84 = [v83 countByEnumeratingWithState:&v248 objects:v277 count:16];
        if (!v84)
        {

          v86 = 0;
          goto LABEL_111;
        }

        v85 = v84;
        v211 = v71;
        v86 = 0;
        objb = 0;
        v87 = *v249;
        while (2)
        {
          v88 = 0;
LABEL_76:
          if (*v249 != v87)
          {
            objc_enumerationMutation(v83);
          }

          v89 = *(*(&v248 + 1) + 8 * v88);
          v90 = [v89 lifecycleIdentifier];
          v91 = v82;
          v92 = v91;
          if (v90 != v91)
          {
            if (v82 && v90)
            {
              v93 = [v90 isEqualToString:v91];

              if (!v93)
              {
                goto LABEL_87;
              }

LABEL_84:
              v94 = [v89 redemptionEvent];

              v90 = objb;
              v86 = v94;
              objb = v89;
            }

            else
            {
            }

LABEL_87:
            v95 = [v89 rewardsTotalAmount];
            if (v95 && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v96 = objc_claimAutoreleasedReturnValue(), v97 = [v95 compare:v96], v96, v97))
            {
              v98 = v229;
              v229 = [v229 decimalNumberByAdding:v95];
            }

            else
            {
              v98 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Installment transaction does not have a valid rewardsTotalAmount", buf, 2u);
              }
            }

            if (v85 == ++v88)
            {
              v85 = [v83 countByEnumeratingWithState:&v248 objects:v277 count:16];
              if (!v85)
              {

                v69 = v203;
                v70 = v199;
                v71 = v211;
                if (objb)
                {
                  if (v86)
                  {
LABEL_96:
                    v224 = v86;
                    v99 = [v86 items];
                    v100 = [v99 anyObject];

                    if (v100 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v100 type] == v217)
                    {
                      v101 = [v86 date];
                      v196 = [(PDDatabaseManager *)v195 _startOfTimeBlockForUnit:a7 inCalendar:v194 fromDate:v101 forward:0];
                      [v198 objectForKey:?];
                      v103 = v102 = v229;
                      if (!v103)
                      {
                        v103 = objc_alloc_init(PKPaymentTransactionGroup);
                        [v103 setStartDate:v196];
                        [v103 setEndDate:v101];
                        [v103 setType:5];
                        v104 = +[NSDecimalNumber zero];
                        v105 = [v207 currencyCode];
                        PKCurrencyAmountCreate(v104, v105, 0);
                        v107 = v106 = v71;
                        [v103 setTotalAmount:v107];

                        v71 = v106;
                        [v103 setTransactionCount:0];
                        [v103 setTransactions:&__NSArray0__struct];
                        [v198 setObject:v103 forKey:v196];
                      }

                      v212 = v71;
                      v108 = [v103 endDate];
                      v109 = [v101 compare:v108];

                      if (v109 == 1)
                      {
                        [v103 setEndDate:v101];
                      }

                      v110 = objc_alloc_init(PKPaymentTransaction);
                      [v110 setTransactionType:14];
                      [v110 setTransactionSource:4];
                      [v110 setRedemptionType:v217];
                      v111 = [objb transactionDate];
                      [v110 setTransactionDate:v111];

                      [v110 setInstallmentPlan:v207];
                      v112 = [v207 totalAmount];
                      [v110 setAmount:v112];

                      v113 = [v207 currencyCode];
                      [v110 setCurrencyCode:v113];

                      [v110 setTransactionStatus:1];
                      v114 = [v207 identifier];
                      [v110 setIdentifier:v114];

                      [v110 setRewardsTotalAmount:v229];
                      v115 = [v110 currencyCode];
                      [v110 setRewardsTotalCurrencyCode:v115];

                      v116 = [v207 rewards];
                      [v110 setRewards:v116];

                      [v110 setAccountType:2];
                      v117 = [v103 transactions];
                      v118 = [v117 arrayByAddingObject:v110];
                      [v103 setTransactions:v118];

                      v119 = [v103 totalAmount];
                      v208 = [v119 amount];
                      [v208 decimalNumberByAdding:v229];
                      v121 = v120 = v103;
                      v122 = [v119 currency];
                      v123 = PKCurrencyAmountCreate(v121, v122, 0);

                      [v120 setTotalAmount:v123];
                      v71 = v212;
                      v124 = v224;
                      v69 = v203;
                      v70 = v199;
                    }

                    else
                    {
                      v101 = PKLogFacilityTypeGetObject();
                      v102 = v229;
                      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Transaction does not have a valid rewards event", buf, 2u);
                      }

                      v124 = v224;
                    }

                    v74 = v220;
                    goto LABEL_108;
                  }

LABEL_112:
                  v86 = [objb redemptionEvent];
                  goto LABEL_96;
                }

LABEL_111:
                objb = [v83 anyObject];
                if (v86)
                {
                  goto LABEL_96;
                }

                goto LABEL_112;
              }

              continue;
            }

            goto LABEL_76;
          }

          break;
        }

        goto LABEL_84;
      }

LABEL_108:

      v71 = v71 + 1;
    }

    while (v71 != v215);
    v125 = [v202 countByEnumeratingWithState:&v256 objects:v279 count:16];
    v215 = v125;
  }

  while (v125);
LABEL_114:

  v126 = [AccountEvent accountEventsForAccountIdentifier:v186 altDSID:0 types:&off_1008A4830 startDate:v182 endDate:v181 orderedByDate:1 limit:0 inDatabase:v195->_database];
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  v127 = [v126 countByEnumeratingWithState:&v244 objects:v276 count:16];
  v128 = v205;
  v190 = v126;
  if (v127)
  {
    v129 = v127;
    v130 = *v245;
    v189 = *v245;
    do
    {
      v131 = 0;
      v191 = v129;
      do
      {
        if (*v245 != v130)
        {
          objc_enumerationMutation(v126);
        }

        v132 = *(*(&v244 + 1) + 8 * v131);
        v133 = [v132 items];
        v134 = [v133 anyObject];

        v221 = v132;
        v135 = [v132 identifier];
        LOBYTE(v132) = [v128 containsObject:v135];

        if ((v132 & 1) == 0)
        {
          v136 = [v134 rewards];
          v137 = [v136 rewardsItems];

          v138 = v134;
          if (v134 && [v137 count] && objc_msgSend(v134, "type") == v217)
          {
            v139 = [v221 date];
            v200 = [(PDDatabaseManager *)v195 _startOfTimeBlockForUnit:a7 inCalendar:v194 fromDate:v139 forward:0];
            v140 = [v198 objectForKey:?];
            if (!v140)
            {
              v140 = objc_alloc_init(PKPaymentTransactionGroup);
              [v140 setStartDate:v200];
              [v140 setEndDate:v139];
              [v140 setType:5];
              objc = +[NSDecimalNumber zero];
              v141 = [v134 currencyAmount];
              v142 = [v141 currency];
              v143 = PKCurrencyAmountCreate(objc, v142, 0);
              [v140 setTotalAmount:v143];

              [v140 setTransactionCount:0];
              [v140 setTransactions:&__NSArray0__struct];
              [v198 setObject:v140 forKey:v200];
            }

            v216 = v140;
            v192 = v138;
            v197 = v131;
            v144 = [v140 endDate];
            v145 = [v139 compare:v144];

            v146 = v145 == 1;
            v147 = v216;
            if (v146)
            {
              [v216 setEndDate:v139];
            }

            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v209 = v137;
            v230 = [v209 countByEnumeratingWithState:&v240 objects:v275 count:16];
            if (v230)
            {
              v225 = *v241;
              v213 = v137;
              do
              {
                for (k = 0; k != v230; k = k + 1)
                {
                  if (*v241 != v225)
                  {
                    objc_enumerationMutation(v209);
                  }

                  v149 = *(*(&v240 + 1) + 8 * k);
                  v150 = [v149 currencyAmount];
                  if (v150)
                  {
                    v151 = objc_alloc_init(PKPaymentTransaction);
                    [v151 setTransactionType:12];
                    [v151 setTransactionSource:4];
                    [v151 setRedemptionType:v217];
                    [v151 setTransactionDate:v139];
                    v152 = [v150 amount];
                    [v151 setAmount:v152];

                    v153 = [v150 currency];
                    [v151 setCurrencyCode:v153];

                    [v151 setTransactionStatus:1];
                    v154 = [v221 identifier];
                    [v151 setIdentifier:v154];

                    v155 = [v151 amount];
                    [v151 setRewardsTotalAmount:v155];

                    v156 = [v151 currencyCode];
                    [v151 setRewardsTotalCurrencyCode:v156];

                    v157 = [PKPaymentTransactionRewards alloc];
                    v274 = v149;
                    v158 = [NSArray arrayWithObjects:&v274 count:1];
                    objd = [v157 initWithRewardsItems:v158];

                    [v151 setRewards:objd];
                    v159 = [v147 transactions];
                    v160 = [v159 arrayByAddingObject:v151];
                    [v147 setTransactions:v160];

                    v161 = [v147 totalAmount];
                    v162 = [v161 amount];
                    v163 = [v151 amount];
                    [v162 decimalNumberByAdding:v163];
                    v165 = v164 = v139;
                    v166 = [v161 currency];
                    PKCurrencyAmountCreate(v165, v166, 0);
                    v168 = v167 = v150;

                    v147 = v216;
                    v139 = v164;

                    [v216 setTotalAmount:v168];
                    v150 = v167;

                    v137 = v213;
                  }

                  else
                  {
                    v151 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Rewards added doesn't have a valid amount", buf, 2u);
                    }
                  }
                }

                v230 = [v209 countByEnumeratingWithState:&v240 objects:v275 count:16];
              }

              while (v230);
            }

            v128 = v205;
            v130 = v189;
            v126 = v190;
            v129 = v191;
            v138 = v192;
            v131 = v197;
          }

          v134 = v138;
        }

        v131 = v131 + 1;
      }

      while (v131 != v129);
      v129 = [v126 countByEnumeratingWithState:&v244 objects:v276 count:16];
    }

    while (v129);
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v169 = v198;
  v170 = [v169 countByEnumeratingWithState:&v236 objects:v273 count:16];
  if (v170)
  {
    v171 = v170;
    v172 = *v237;
    do
    {
      for (m = 0; m != v171; m = m + 1)
      {
        if (*v237 != v172)
        {
          objc_enumerationMutation(v169);
        }

        v174 = [v169 objectForKey:*(*(&v236 + 1) + 8 * m)];
        v175 = [v174 transactions];
        v176 = [v175 sortedArrayUsingComparator:&stru_100848ED8];

        [v174 setTransactions:v176];
        v177 = [v174 transactions];
        [v174 setTransactionCount:{objc_msgSend(v177, "count")}];
      }

      v171 = [v169 countByEnumeratingWithState:&v236 objects:v273 count:16];
    }

    while (v171);
  }

  v178 = [v169 allValues];
  v179 = [v178 sortedArrayUsingComparator:&stru_100848EF8];

  return v179;
}

- (id)_startOfTimeBlockForUnit:(unint64_t)a3 inCalendar:(id)a4 fromDate:(id)a5 forward:(BOOL)a6
{
  v8 = 1;
  v9 = 4096;
  v10 = 16;
  if ((a3 & 4) == 0)
  {
    v10 = 32;
  }

  if ((a3 & 8) == 0)
  {
    v9 = v10;
    v8 = (a3 & 4) >> 2;
  }

  if ((a3 & 0x1000) != 0)
  {
    v11 = 512;
  }

  else
  {
    v11 = v9;
  }

  if ((a3 & 0x1000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (a6)
  {
    v13 = 256;
  }

  else
  {
    v13 = 260;
  }

  return [a4 nextDateAfterDate:a5 matchingUnit:v11 value:v12 options:v13];
}

- (id)insertOrUpdateSharedAccountCloudStore:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = [SharedAccountCloudStore insertOrUpdateSharedAccountCloudStore:v6 forAccount:v7 inDatabase:self->_database];
    v9 = [v8 sharedAccountCloudStore];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sharedAccountCloudStoreForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = [SharedAccountCloudStore sharedAccountCloudStoreForAccount:v4 inDatabase:self->_database];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountUserWithAltDSID:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, v6, [v7 persistentID]);
    v9 = [v8 accountUser];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)primaryTransactionSourceIdentifierForAccountUserAltDSID:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, v6, [v7 persistentID]);
    v10 = [v9 transactionSourceIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)physicalCardsForAccountWithIdentifier:(id)a3
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:a3];
  v5 = v4;
  if (v4)
  {
    v6 = +[PhysicalCard physicalCardsForAccountPID:inDatabase:](PhysicalCard, "physicalCardsForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)replacePhysicalCards:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard replacePhysicalCards:forAccountPID:inDatabase:](PhysicalCard, "replacePhysicalCards:forAccountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePhysicalCards:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard insertOrUpdatePhysicalCards:forAccountPID:inDatabase:](PhysicalCard, "insertOrUpdatePhysicalCards:forAccountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePhysicalCard:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard insertOrUpdatePhysicalCard:forAccountPID:inDatabase:](PhysicalCard, "insertOrUpdatePhysicalCard:forAccountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)paymentFundingSourcesForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 persistentID]);
    v6 = [AccountPaymentFundingSource paymentFundingSourcesForAccountPID:v5 inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)paymentFundingSourceForIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v9 = [AccountPaymentFundingSource paymentFundingSourceForAccountPID:v8 identifier:v6 inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v9 = [AccountPaymentFundingSource insertOrUpdatePaymentFundingSources:v6 forAccountPID:v8 inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountPromotionsForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = +[AccountPromotion accountPromotionsForAccountPID:inDatabase:](AccountPromotion, "accountPromotionsForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountPromotionForProgramIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountPromotion accountPromotionForProgramIdentifier:accountPID:inDatabase:](AccountPromotion, "accountPromotionForProgramIdentifier:accountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdateAccountPromotions:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion insertOrUpdateAccountPromotions:accountPID:inDatabase:](AccountPromotion, "insertOrUpdateAccountPromotions:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)insertOrUpdateAccountPromotion:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion insertOrUpdateAccountPromotion:accountPID:inDatabase:](AccountPromotion, "insertOrUpdateAccountPromotion:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountPromotion:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion deleteAccountPromotion:accountPID:inDatabase:](AccountPromotion, "deleteAccountPromotion:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)updateImpressionCountsForPromotions:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion updateImpressionCountsForPromotions:accountPID:inDatabase:](AccountPromotion, "updateImpressionCountsForPromotions:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)updateImpressionCount:(int64_t)a3 promotionProgramIdentifier:(id)a4 accountIdentifier:(id)a5
{
  v9 = a4;
  v8 = [Account accountWithIdentifier:a5 inDatabase:self->_database];
  if ([v8 existsInDatabase])
  {
    +[AccountPromotion updateImpressionCount:promotionProgramIdentifier:accountPID:inDatabase:](AccountPromotion, "updateImpressionCount:promotionProgramIdentifier:accountPID:inDatabase:", a3, v9, [v8 persistentID], self->_database);
  }
}

- (id)accountPromotionCompletionStepsForProgramIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountPromotionCompletionStep accountPromotionCompletionStepsForProgramIdentifier:accountPID:inDatabase:](AccountPromotionCompletionStep, "accountPromotionCompletionStepsForProgramIdentifier:accountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountPromotionBehaviorForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = +[AccountPromotionBehavior accountPromotionBehaviorForAccountPID:inDatabase:](AccountPromotionBehavior, "accountPromotionBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)insertOrUpdateAccountPromotionBehavior:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotionBehavior insertOrUpdateAccountPromotionBehavior:accountPID:inDatabase:](AccountPromotionBehavior, "insertOrUpdateAccountPromotionBehavior:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountPromotionBehaviorForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountPromotionBehavior deleteAccountPromotionBehaviorForAccountPID:inDatabase:](AccountPromotionBehavior, "deleteAccountPromotionBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)accountEnhancedMerchantsForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = +[AccountEnhancedMerchant accountEnhancedMerchantsForAccountPID:inDatabase:](AccountEnhancedMerchant, "accountEnhancedMerchantsForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountEnhancedMerchantForPrivateIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountEnhancedMerchant accountEnhancedMerchantForPrivateIdentifier:accountPID:inDatabase:](AccountEnhancedMerchant, "accountEnhancedMerchantForPrivateIdentifier:accountPID:inDatabase:", v6, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdateAccountEnhancedMerchants:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant insertOrUpdateAccountEnhancedMerchants:accountPID:inDatabase:](AccountEnhancedMerchant, "insertOrUpdateAccountEnhancedMerchants:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)insertOrUpdateAccountEnhancedMerchant:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant insertOrUpdateAccountEnhancedMerchant:accountPID:inDatabase:](AccountEnhancedMerchant, "insertOrUpdateAccountEnhancedMerchant:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountEnhancedMerchant:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant deleteAccountEnhancedMerchant:accountPID:inDatabase:](AccountEnhancedMerchant, "deleteAccountEnhancedMerchant:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (id)accountEnhancedMerchantBehaviorForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    v5 = +[AccountEnhancedMerchantBehavior accountEnhancedMerchantBehaviorForAccountPID:inDatabase:](AccountEnhancedMerchantBehavior, "accountEnhancedMerchantBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)insertOrUpdateAccountEnhancedMerchantBehavior:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchantBehavior insertOrUpdateAccountEnhancedMerchantBehavior:accountPID:inDatabase:](AccountEnhancedMerchantBehavior, "insertOrUpdateAccountEnhancedMerchantBehavior:accountPID:inDatabase:", v7, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountEnhancedMerchantBehaviorForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountEnhancedMerchantBehavior deleteAccountEnhancedMerchantBehaviorForAccountPID:inDatabase:](AccountEnhancedMerchantBehavior, "deleteAccountEnhancedMerchantBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)accountEntityOrderingsForAccountIdentifier:(id)a3 entityType:(unint64_t)a4
{
  v6 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    v7 = +[AccountEntityOrdering accountEntityOrderingsForAccountPID:entityType:inDatabase:](AccountEntityOrdering, "accountEntityOrderingsForAccountPID:entityType:inDatabase:", [v6 persistentID], a4, self->_database);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)insertOrUpdateAccountEntityOrderings:(id)a3 accountIdentifier:(id)a4 entityType:(unint64_t)a5
{
  v9 = a3;
  v8 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v8 existsInDatabase])
  {
    +[AccountEntityOrdering insertOrUpdateAccountEntityOrderings:accountPID:entityType:inDatabase:](AccountEntityOrdering, "insertOrUpdateAccountEntityOrderings:accountPID:entityType:inDatabase:", v9, [v8 persistentID], a5, self->_database);
  }
}

- (void)deleteAccountEntityOrderingsForAccountIdentifier:(id)a3 entityType:(unint64_t)a4
{
  v6 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEntityOrdering deleteAccountEntityOrderingsForAccountPID:entityType:inDatabase:](AccountEntityOrdering, "deleteAccountEntityOrderingsForAccountPID:entityType:inDatabase:", [v6 persistentID], a4, self->_database);
  }
}

- (id)accountBalancesForAccountIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 type:(unint64_t)a6 limit:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v14 existsInDatabase])
  {
    v15 = +[AccountHistoricalBalance balancesForAccountPID:startDate:endDate:type:limit:inDatabase:](AccountHistoricalBalance, "balancesForAccountPID:startDate:endDate:type:limit:inDatabase:", [v14 persistentID], v12, v13, a6, a7, self->_database);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)insertAccountBalance:(id)a3 forAccountIdentifier:(id)a4
{
  v8 = a3;
  v6 = [Account accountWithIdentifier:a4 inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    v7 = +[AccountHistoricalBalance insertBalance:forAccountPID:inDatabase:](AccountHistoricalBalance, "insertBalance:forAccountPID:inDatabase:", v8, [v6 persistentID], self->_database);
  }
}

- (void)resetAccountBalancesForAccountIdentifier:(id)a3
{
  v4 = [Account accountWithIdentifier:a3 inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountHistoricalBalance deleteBalancesForAccountPID:inDatabase:](AccountHistoricalBalance, "deleteBalancesForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (void)deleteAccountEndpointMetadataForAccountIdentifier:(id)a3 endpoint:(unint64_t)a4
{
  v4 = [AccountWebServiceEndpointMetadata anyInDatabase:self->_database accountIdentifier:a3 endpoint:a4];
  [v4 deleteFromDatabase];
}

- (id)accountEndpointMetadataForAccountIdentifier:(id)a3 endpoint:(unint64_t)a4
{
  v4 = [AccountWebServiceEndpointMetadata anyInDatabase:self->_database accountIdentifier:a3 endpoint:a4];
  v5 = [v4 endpointMetadata];

  return v5;
}

- (id)insertOrUpdateAccountEndpointMetadata:(id)a3
{
  v3 = [AccountWebServiceEndpointMetadata insertOrUpdateinitWithAccountEndpointMetadata:a3 inDatabase:self->_database];
  v4 = [v3 endpointMetadata];

  return v4;
}

- (id)appleBalancePromotionForAccountIdentifier:(id)a3
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:a3];
  if ([v4 existsInDatabase])
  {
    v5 = +[AppleBalancePromotionConfiguration appleBalancePromotionConfigurationForAccountPID:inDatabase:](AppleBalancePromotionConfiguration, "appleBalancePromotionConfigurationForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)insertOrUpdateAppleBalancePromotion:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  if ([v7 existsInDatabase])
  {
    v8 = +[AppleBalancePromotionConfiguration insertOrUpdateAppleBalancePromotionConfiguration:forAccountPID:inDatabase:](AppleBalancePromotionConfiguration, "insertOrUpdateAppleBalancePromotionConfiguration:forAccountPID:inDatabase:", v6, [v7 persistentID], self->_database);
    v9 = [v8 appleBalancePromotionConfiguration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)deleteAppleBalancePromotionForAccountWithIdentifier:(id)a3
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:a3];
  if ([v4 existsInDatabase])
  {
    v5 = +[AppleBalancePromotionConfiguration deleteAppleBalancePromotionConfigurationForAccountPID:inDatabase:](AppleBalancePromotionConfiguration, "deleteAppleBalancePromotionConfigurationForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inStoreTopUpTokenForAccountIdentifier:(id)a3
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:a3];
  if ([v4 existsInDatabase])
  {
    v5 = +[AppleBalanceInStoreTopUpToken inStoreTopUpTokenForAccountPID:inDatabase:](AppleBalanceInStoreTopUpToken, "inStoreTopUpTokenForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)insertOrUpdateInStoreTopUpToken:(id)a3 forAccountWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  if ([v7 existsInDatabase])
  {
    v8 = +[AppleBalanceInStoreTopUpToken insertOrUpdateInStoreTopUpToken:forAccountPID:inDatabase:](AppleBalanceInStoreTopUpToken, "insertOrUpdateInStoreTopUpToken:forAccountPID:inDatabase:", v6, [v7 persistentID], self->_database);
    v9 = [v8 topUpToken];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)a3
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:a3];
  if ([v4 existsInDatabase])
  {
    +[AppleBalanceInStoreTopUpToken deleteInStoreTopUpTokenForAccountPID:inDatabase:](AppleBalanceInStoreTopUpToken, "deleteInStoreTopUpTokenForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)discoveryItemWithIdentifier:(id)a3
{
  v3 = [DiscoveryItem itemWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 item];

  return v4;
}

- (id)setDiscoveryItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100169E04;
  v12[3] = &unk_100841740;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  sub_1005D4424(database, v12);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)updateDiscoveryItemsWithDialogRequestSourcedItems:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016A0E0;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryItemsWithRemoteItems:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016A38C;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryItemsWithRuleResults:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016A668;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)updateDiscoveryItem:(id)a3
{
  v3 = [DiscoveryItem updateItem:a3 inDatabse:self->_database];
  v4 = [v3 item];

  return v4;
}

- (id)insertOrUpdateRule:(id)a3
{
  v3 = [Rule insertOrUpdateRule:a3 inDatabase:self->_database];
  v4 = [v3 rule];

  return v4;
}

- (id)updateRules:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016ABC0;
  v12[3] = &unk_100841740;
  v13 = v4;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v8 = v4;
  sub_1005D4424(database, v12);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)engagementMessageWithIdentifier:(id)a3
{
  v3 = [DiscoveryEngagementMessage engagementMessageWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 engagementMessage];

  return v4;
}

- (id)updateEngagementMessages:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016AF78;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateEngagementMessagesWithRemoteMessages:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = objc_alloc_init(NSArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016B260;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateEngagementMessagesForRuleResults:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = objc_alloc_init(NSArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016B538;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)updateEngagementMessage:(id)a3
{
  v3 = [DiscoveryEngagementMessage updateEngagementMessage:a3 inDatabase:self->_database];
  v4 = [v3 engagementMessage];

  return v4;
}

- (id)discoveryNotificationWithIdentifier:(id)a3
{
  v3 = [DiscoveryNotification notificationWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 notification];

  return v4;
}

- (id)insertOrUpdateDiscoveryNotification:(id)a3
{
  v3 = [DiscoveryNotification insertOrUpdateNotification:a3 inDatabase:self->_database];
  v4 = [v3 notification];

  return v4;
}

- (id)updateDiscoveryNotifications:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016B924;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryNotificationsWithRemoteNotifications:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = objc_alloc_init(NSArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016BC00;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryNotificationsForRuleResults:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = objc_alloc_init(NSArray);
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016BED4;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)paymentSetupFeatureWithIdentifier:(id)a3
{
  v3 = [PaymentSetupFeature paymentSetupFeatureWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 paymentSetupFeature];

  return v4;
}

- (id)setPaymentSetupFeatures:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v17 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 productIdentifier];
        if (v12)
        {
          v13 = [PaymentSetupFeature insertOrUpdatePaymentSetupFeature:v11 inDatabase:self->_database];
          if (v13)
          {
            [v5 addObject:v12];
            v14 = [v13 paymentSetupFeature];
            [v17 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 allObjects];
  [PaymentSetupFeature deletePaymentSetupFeaturesNotIncludingIdentifiers:v15 inDatabase:self->_database];

  return v17;
}

- (id)insertOrUpdatePaymentSetupFeature:(id)a3
{
  v3 = [PaymentSetupFeature insertOrUpdatePaymentSetupFeature:a3 inDatabase:self->_database];
  v4 = [v3 paymentSetupFeature];

  return v4;
}

- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)a3 subcredentialIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005B40;
  v21 = sub_10000B1AC;
  v22 = 0;
  database = self->_database;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016C4EC;
  v13[3] = &unk_100847CD8;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  sub_1005D4424(database, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)passesWithPairedReaderIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016C6A8;
  v11[3] = &unk_100841740;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  sub_1005D4424(database, v11);
  v9 = [v7 copy];

  return v9;
}

- (id)appletSubcredentialWithIdentifier:(id)a3
{
  v3 = [AppletSubcredential appletSubcredentialWithIdentifier:a3 inDatabase:self->_database];
  v4 = [v3 appletSubcredential];

  return v4;
}

- (id)appletSubcredentialForSharedCredentialWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100005B40;
  v17 = sub_10000B1AC;
  v18 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016C9FC;
  v9[3] = &unk_100848590;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (BOOL)updateAppletSubcredentials:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016CB8C;
  v8[3] = &unk_100848590;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  sub_1005D4424(database, v8);
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (void)updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:(id)a3 usingUpdater:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016CFC4;
  v29[3] = &unk_100848F98;
  v24 = v8;
  v30 = v24;
  v31 = self;
  v13 = v9;
  v32 = v11;
  v33 = v13;
  sub_1005D4424(database, v29);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 unsignedIntegerValue];

        v22 = [v19 objectAtIndexedSubscript:1];
        v23 = [v19 objectAtIndexedSubscript:2];
        v10[2](v10, v21, v22, v23);
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v16);
  }
}

- (id)subcredentialIdentifiersByAIDForSecureElementIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 count];
  v7 = v6;
  if (v6 >= 2)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:v6];
    v9 = v7;
    do
    {
      [v8 addObject:@"payment_application.seid = ?"];
      --v9;
    }

    while (v9);
    v10 = [v8 componentsJoinedByString:@" OR "];

    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v10 = @"payment_application.seid = ?";
LABEL_7:
    v11 = [NSString stringWithFormat:@"select payment_application.aid, whitney.b from whitney join payment_application on payment_application.pid == whitney.a where (%@)", v10];
    database = self->_database;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10016D5A4;
    v16[3] = &unk_100848C30;
    v19 = v7;
    v17 = v4;
    v13 = v5;
    v18 = v13;
    sub_1005D44BC(database, v11, 1, v16);
    v14 = [[NSDictionary alloc] initWithDictionary:v13 copyItems:1];

    goto LABEL_9;
  }

  v14 = objc_alloc_init(NSDictionary);
LABEL_9:

  return v14;
}

- (id)identityPassUniqueIDsOfTypes:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [Pass predicateForIdentityTypes:v4];

  v6 = [Pass passUniqueIDsInDatabase:self->_database matchingPredicate:v5];

  return v6;
}

- (id)identityPassesOfTypes:(id)a3
{
  v4 = [Pass predicateForIdentityTypes:a3];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];

  return v5;
}

- (id)passesWithISO18013Credentials
{
  v3 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [Pass predicateForPaymentType:1003];
  v19[0] = v4;
  v5 = [Pass predicateForPaymentType:1004];
  v19[1] = v5;
  v6 = [Pass predicateForPaymentType:1002];
  v19[2] = v6;
  v7 = [Pass predicateForPaymentType:1005];
  v19[3] = v7;
  v8 = [NSArray arrayWithObjects:v19 count:4];
  v9 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v8];

  v10 = [(PDDatabaseManager *)self _predicateForType:1];
  v18[0] = v10;
  v11 = [Pass predicateForPrimaryPaymentApplication:1];
  v18[1] = v11;
  v12 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v3];
  v18[2] = v12;
  v18[3] = v9;
  v13 = [NSArray arrayWithObjects:v18 count:4];
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = [Pass passesInDatabase:self->_database matchingPredicate:v14];
  v16 = [(PDDatabaseManager *)self _registeredPasses:v15];

  return v16;
}

- (id)identityPassesWithIssuingCountryCode:(id)a3
{
  secureElement = self->_secureElement;
  v5 = a3;
  v6 = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [Pass predicateForPaymentType:1005];
  v21[0] = v7;
  v8 = [NSSet setWithObject:v5];

  v9 = [Pass predicateForIssuerCountryCodes:v8];
  v21[1] = v9;
  v10 = [NSArray arrayWithObjects:v21 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v10];

  v12 = [(PDDatabaseManager *)self _predicateForType:1];
  v20[0] = v12;
  v13 = [Pass predicateForPrimaryPaymentApplication:1];
  v20[1] = v13;
  v14 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:v6];
  v20[2] = v14;
  v20[3] = v11;
  v15 = [NSArray arrayWithObjects:v20 count:4];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [Pass passesInDatabase:self->_database matchingPredicate:v16];
  v18 = [(PDDatabaseManager *)self _registeredPasses:v17];

  return v18;
}

- (id)transactionReceiptWithUniqueID:(id)a3
{
  v3 = [TransactionReceipt anyInDatabase:self->_database withUniqueID:a3];
  v4 = [v3 transactionReceipt];

  return v4;
}

- (id)insertOrUpdateTransactionReceipt:(id)a3
{
  v3 = [TransactionReceipt insertOrUpdateTransactionReceipt:a3 inDatabase:self->_database];
  v4 = [v3 transactionReceipt];

  return v4;
}

- (void)deleteTransactionReceiptWithUniqueID:(id)a3
{
  v3 = [TransactionReceipt anyInDatabase:self->_database withUniqueID:a3];
  [v3 deleteFromDatabase];
}

- (unint64_t)numberOfTransactionReceipts
{
  database = self->_database;
  v3 = +[SQLiteBooleanPredicate truePredicate];
  v4 = [(SQLiteEntity *)TransactionReceipt queryWithDatabase:database predicate:v3];
  v5 = [v4 countOfEntities];

  return v5;
}

- (void)removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016DE90;
  v7[3] = &unk_10083C2B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_1005D4424(database, v7);
}

- (id)issuerInstallmentTransactionsForPassUniqueIdentifier:(id)a3
{
  v4 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a3];
  if ([v4 count])
  {
    v5 = [PaymentTransaction issuerInstallmentTransactionsInDatabase:self->_database transactionSourceIdentifiers:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)a3 paymentHashes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [PaymentTransaction issuerInstallmentTransactionsInDatabase:self->_database transactionSourceIdentifiers:v6 transactionPaymentHashes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)a3
{
  v4 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:a3];
  if ([v4 count])
  {
    [PaymentTransaction deleteIssuerInstallmentTransactionsInDatabase:self->_database transactionSourceIdentifiers:v4];
  }
}

- (id)selectedPaymentOfferAssociatedWithPassUniqueID:(id)a3 selectedPaymentOfferType:(unint64_t)a4 storageType:(unint64_t)a5
{
  if (a3)
  {
    v8 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v9 = v8;
    if (v8)
    {
      v10 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:selectedPaymentOfferType:storageType:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:selectedPaymentOfferType:storageType:inDatabase:", [v8 persistentID], a4, a5, self->_database);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allSelectedPaymentOfferAssociatedWithPassUniqueID:(id)a3
{
  if (a3)
  {
    v4 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v5 = v4;
    if (v4)
    {
      v6 = +[SelectedPaymentOffer allSelectedPaymentOfferAssociatedWithPassPID:inDatabase:](SelectedPaymentOffer, "allSelectedPaymentOfferAssociatedWithPassPID:inDatabase:", [v4 persistentID], self->_database);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)selectedPaymentOfferForPassUniqueID:(id)a3 offerIdentifier:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v10 = v9;
    if (v9)
    {
      v11 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:offerIdentifier:type:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:offerIdentifier:type:inDatabase:", [v9 persistentID], v8, a5, self->_database);
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

  return v11;
}

- (id)selectedPaymentOfferForPassUniqueID:(id)a3 sessionIdentifier:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [Pass anyInDatabase:self->_database withUniqueID:a3];
    v10 = v9;
    if (v9)
    {
      v11 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:sessionIdentifier:type:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:sessionIdentifier:type:inDatabase:", [v9 persistentID], v8, a5, self->_database);
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

  return v11;
}

- (BOOL)removeSelectedPaymentOffer:(id)a3 associatedWithPassUniqueID:(id)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v7 = [Pass anyInDatabase:self->_database withUniqueID:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 persistentID];
      database = self->_database;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10016E3D0;
      v12[3] = &unk_100848FC0;
      v15 = v9;
      v13 = v6;
      v14 = self;
      sub_1005D4424(database, v12);
    }
  }

  return 0;
}

- (id)insertOrUpdateSelectedPaymentOfferAssociatedWithPass:(id)a3 selectedOffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v8 = [Pass anyInDatabase:self->_database withUniqueID:v6];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot insert a nil selected payment offer associated with pass %@", &v13, 0xCu);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = +[SelectedPaymentOffer insertOrUpdateSelectedPaymentOffer:associatedWithPassPID:inDatabase:](SelectedPaymentOffer, "insertOrUpdateSelectedPaymentOffer:associatedWithPassPID:inDatabase:", v7, [v8 persistentID], self->_database);
LABEL_10:

LABEL_11:

  return v10;
}

- (id)cloudStoreZonesForContainerDatabaseWithName:(id)a3 scope:(int64_t)a4
{
  v4 = [CloudStoreContainerDatabase anyInDatabase:self->_database withContainerName:a3 scope:a4];
  v5 = [v4 cloudStoreZones];

  return v5;
}

- (void)insertOrUpdateCloudStoreZone:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = [v7 database];
  v10 = [v9 container];
  v11 = [v10 containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v11, [v7 scope]);

  if (v12)
  {
    goto LABEL_6;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 zoneName];
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot insert cloud store zone %{public}@ without a container database defined. Inserting one now. %@", &v17, 0x16u);
  }

  v14 = [(PDDatabaseManager *)self _insertContainerDatabaseForContainerDatabase:v7];
  if (v14)
  {
    v12 = v14;
LABEL_6:
    v15 = [CloudStoreZone insertOrUpdateCloudStoreZone:v6 forContainerDatabase:v12 inDatabase:self->_database];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 zoneName];
    v17 = 138543618;
    v18 = v16;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot insert cloud store zone %{public}@ without a container database defined %@", &v17, 0x16u);
  }

LABEL_7:
}

- (void)updateChangeToken:(id)a3 fetchTimestamp:(id)a4 forCloudStoreZone:(id)a5 inContainerDatabase:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  database = self->_database;
  v15 = [v13 database];
  v16 = [v15 container];
  v17 = [v16 containerIdentifier];
  v18 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v17, [v13 scope]);

  if (v18)
  {
    [CloudStoreZone updateChangeToken:v10 fetchTimestamp:v11 forCloudStoreZone:v12 inContainerDatabase:v18 inDatabase:self->_database];
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 zoneName];
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot update change token and fetch timestamp for zone %{public}@ without a container database defined %@", &v21, 0x16u);
    }
  }
}

- (void)updateDidFinishInitialSync:(BOOL)a3 forCloudStoreZone:(id)a4 inContainerDatabase:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  database = self->_database;
  v11 = [v9 database];
  v12 = [v11 container];
  v13 = [v12 containerIdentifier];
  v14 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v13, [v9 scope]);

  if (v14)
  {
    [CloudStoreZone updateDidFinishInitialSync:v6 forCloudStoreZone:v8 inContainerDatabase:v14 inDatabase:self->_database];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 zoneName];
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cannot update change token and fetch timestamp for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }
  }
}

- (id)tokenDataForCloudStore:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = [v7 database];
  v10 = [v9 container];
  v11 = [v10 containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v11, [v7 scope]);

  if (v12)
  {
    v13 = [CloudStoreZone tokenDataForCloudStoreZone:v6 forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 zoneName];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get change token for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)didFinishInitialSyncForCloudStore:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = [v7 database];
  v10 = [v9 container];
  v11 = [v10 containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v11, [v7 scope]);

  if (v12)
  {
    v13 = [CloudStoreZone didFinishInitialSyncForCloudStoreZone:v6 forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 zoneName];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get finish flag for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)fetchTimestampForCloudStore:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = [v7 database];
  v10 = [v9 container];
  v11 = [v10 containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v11, [v7 scope]);

  if (v12)
  {
    v13 = [CloudStoreZone fetchTimestampForCloudStoreZone:v6 forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 zoneName];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get change token for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)removeCloudStoreZone:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = [v7 database];
  v10 = [v9 container];
  v11 = [v10 containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v11, [v7 scope]);

  if (v12)
  {
    [CloudStoreZone removeCloudStoreZone:v6 forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 zoneName];
      v15 = 138543618;
      v16 = v14;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot remove cloud store zone %{public}@ without a container database defined %@", &v15, 0x16u);
    }
  }
}

- (id)identityPassCredentialPropertiesForIdentityPasses
{
  database = self->_database;
  v4 = [Pass predicateForPaymentCardType:4];
  v5 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v4];
  v6 = [v5 allObjects];

  v7 = self->_database;
  v8 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v9 = [PaymentApplication identityPassCredentialPropertiesInDatabase:v7 forPassIDS:v6 forSecureElementIdentifiers:v8];

  return v9;
}

- (id)identityPassCredentialPropertiesForPassUniqueIdentifier:(id)a3
{
  database = self->_database;
  v10 = a3;
  v5 = a3;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v8 = [PaymentApplication identityPassCredentialPropertiesInDatabase:database forPassIDS:v6 forSecureElementIdentifiers:v7];

  return v8;
}

- (void)removeContainerDatabaseForContainerDatabase:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [v4 database];
  v7 = [v6 container];
  v8 = [v7 containerIdentifier];
  v9 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, v8, [v4 scope]);

  if (v9)
  {
    [v9 deleteFromDatabase];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot remove cloud container database %@", &v11, 0xCu);
    }
  }
}

- (id)cloudStoreZonesForContainerDatabase:(id)a3
{
  database = self->_database;
  v4 = a3;
  v5 = [v4 database];
  v6 = [v5 container];
  v7 = [v6 containerIdentifier];
  v8 = [v4 scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:v7 scope:v8];

  if (v9)
  {
    v10 = [v9 cloudStoreZones];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)databaseSubscriptionForContainerDatabase:(id)a3
{
  database = self->_database;
  v4 = a3;
  v5 = [v4 database];
  v6 = [v5 container];
  v7 = [v6 containerIdentifier];
  v8 = [v4 scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:v7 scope:v8];

  if (v9)
  {
    v10 = [v9 databaseSubscription];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateDatabaseSubscription:(id)a3 containerDatabase:(id)a4
{
  v13 = a3;
  database = self->_database;
  v7 = a4;
  v8 = [v7 database];
  v9 = [v8 container];
  v10 = [v9 containerIdentifier];
  v11 = [v7 scope];

  v12 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:v10 scope:v11];

  if (v12)
  {
    [v12 updateWithDatabaseSubscription:v13];
  }
}

- (BOOL)containerDatabaseExistsForContainerDatabase:(id)a3
{
  database = self->_database;
  v4 = a3;
  v5 = [v4 database];
  v6 = [v5 container];
  v7 = [v6 containerIdentifier];
  v8 = [v4 scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:v7 scope:v8];

  return v9 != 0;
}

- (id)_insertContainerDatabaseForContainerDatabase:(id)a3
{
  v4 = a3;
  v5 = [v4 database];
  v6 = [v5 container];
  v7 = [v6 containerIdentifier];
  v8 = [v4 scope];

  v9 = [CloudStoreContainerDatabase insertOrUpdateCloudStoreDatabaseWithContainerName:v7 scope:v8 inDatabase:self->_database];

  return v9;
}

- (BOOL)hasMatchingCloudStoreRecord:(id)a3 inCloudStoreZone:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    database = self->_database;
    v7 = a3;
    v8 = [CloudStoreRecord anyInDatabase:database cloudStoreRecord:v7 cloudStoreZone:a4];
    v9 = [v7 pk_hash];

    v4 = v9 == [v8 hash];
  }

  return v4;
}

- (id)cloudStoreRecordWithRecordName:(id)a3 recordType:(id)a4 inCloudStoreZone:(id)a5
{
  v7 = 0;
  if (a3 && a4 && a5)
  {
    v7 = [CloudStoreRecord recordInDatabase:self->_database withRecordName:a3 recordType:a4 cloudStoreZone:?];
    v5 = vars8;
  }

  return v7;
}

- (void)insertOrUpdateCloudStoreRecords:(id)a3 inCloudStoreZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [CloudStoreRecord insertOrUpdateCloudStoreRecord:*(*(&v13 + 1) + 8 * v11) forCloudStoreZone:v7 inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)addCloudStoreContainerChangeEvent:(id)a3
{
  if (a3)
  {
    v3 = [CloudStoreContainerChangeEvent insertContainerChangeEvent:a3 inDatabase:self->_database];
  }
}

- (id)cloudStoreContainerChangeEventWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [CloudStoreContainerChangeEvent changeEventWithIdentifier:a3 inDatabase:self->_database];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)cloudStoreContainerChangeEventCount
{
  database = self->_database;
  v3 = +[SQLiteBooleanPredicate truePredicate];
  v4 = [(SQLiteEntity *)CloudStoreContainerChangeEvent countInDatabase:database predicate:v3];

  return v4;
}

- (void)updateRecordFetchTask:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating cloud store record fetch task %@", &v7, 0xCu);
  }

  v6 = [CloudStoreRecordFetchTask insertOrUpdateRecordFetchTask:v4 inDatabase:self->_database];
}

- (void)removeRecordFetchTasks:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing cloud store record fetch tasks %@", &v6, 0xCu);
  }

  [CloudStoreRecordFetchTask removeRecordFetchTasks:v4 inDatabase:self->_database];
}

- (id)insertOrUpdatePushProvisioningSharingMetadata:(id)a3
{
  v3 = [PushProvisioningSharingMetadata insertOrUpdateSharingMetadata:a3 inDatabase:self->_database];
  v4 = [v3 sharingMetaData];

  return v4;
}

- (id)nextPossibleCloudStoreShareOperationForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5
{
  database = self->_database;
  v9 = a5;
  v10 = [CloudStoreZone anyInDatabase:database forCloudStoreZone:a4];
  v11 = [CloudStoreShareBackoff anyInDatabase:self->_database forBackoffType:a3 cloudStoreZone:v10 recipientHandle:v9];

  if ([v11 existsInDatabase])
  {
    v12 = [v11 nextPossibleFetchDate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)increaseRetryCloudStoreShareOperationBackoffLevelForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5
{
  v11 = a5;
  v8 = [CloudStoreZone anyInDatabase:self->_database forCloudStoreZone:a4];
  v9 = [CloudStoreShareBackoff anyInDatabase:self->_database forBackoffType:a3 cloudStoreZone:v8 recipientHandle:v11];
  if ([v9 existsInDatabase])
  {
    [v9 increaseBackoffLevel];
  }

  else
  {
    v10 = [CloudStoreShareBackoff insertIfNotExistsForBackoffType:a3 cloudStoreZone:v8 recipientHandle:v11 inDatabase:self->_database];
  }
}

- (void)deleteRetryCloudStoreShareOperationBackoffForBackoffType:(unint64_t)a3 cloudStoreZone:(id)a4 recipientHandle:(id)a5
{
  v9 = a5;
  v8 = [CloudStoreZone anyInDatabase:self->_database forCloudStoreZone:a4];
  if ([v8 existsInDatabase])
  {
    [CloudStoreShareBackoff deleteEntriesForBackoffType:a3 cloudStoreZone:v8 recipientHandle:v9 inDatabase:self->_database];
  }
}

- (id)unregisteredAuxiliaryCapabilityRequirementsForPass:(id)a3
{
  database = self->_database;
  v5 = a3;
  v6 = [v5 uniqueID];
  v7 = [Pass anyInDatabase:database withUniqueID:v6];

  v8 = +[PassAuxiliaryRegistrationRequirement auxiliaryRegistrationRequirementStatusForPassPID:inDatabase:](PassAuxiliaryRegistrationRequirement, "auxiliaryRegistrationRequirementStatusForPassPID:inDatabase:", [v7 persistentID], self->_database);
  v9 = [v8 pk_indexDictionaryByApplyingBlock:&stru_100849000];
  v10 = [v5 auxiliaryRegistrationRequirements];

  v11 = [v10 allRequirements];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001703F8;
  v17[3] = &unk_100849028;
  v18 = v9;
  v12 = v9;
  v13 = [v11 pk_objectsPassingTest:v17];
  if ([v13 count])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (unint64_t)isAuxiliaryRegistrationRequirementRegistered:(id)a3 pass:(id)a4
{
  database = self->_database;
  v7 = a3;
  v8 = [a4 uniqueID];
  v9 = [Pass anyInDatabase:database withUniqueID:v8];

  v10 = +[PassAuxiliaryRegistrationRequirement auxiliaryRegistrationRequirementStatusForRequirement:passPID:inDatabase:](PassAuxiliaryRegistrationRequirement, "auxiliaryRegistrationRequirementStatusForRequirement:passPID:inDatabase:", v7, [v9 persistentID], self->_database);

  if (v10)
  {
    if ([v10 isRegistered])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateAuxiliaryRegistrationRequirement:(id)a3 pass:(id)a4 isRegistered:(BOOL)a5
{
  v5 = a5;
  database = self->_database;
  v9 = a3;
  v10 = [a4 uniqueID];
  v11 = [Pass anyInDatabase:database withUniqueID:v10];

  LOBYTE(v5) = +[PassAuxiliaryRegistrationRequirement updateAuxiliaryRegistrationRequirement:passPID:isRegistered:inDatabase:](PassAuxiliaryRegistrationRequirement, "updateAuxiliaryRegistrationRequirement:passPID:isRegistered:inDatabase:", v9, [v11 persistentID], v5, self->_database);
  return v5;
}

- (BOOL)updateAuxiliaryRegistrationRequirementsForPass:(id)a3 isRegistered:(BOOL)a4
{
  v4 = a4;
  database = self->_database;
  v7 = [a3 uniqueID];
  v8 = [Pass anyInDatabase:database withUniqueID:v7];

  LOBYTE(v4) = +[PassAuxiliaryRegistrationRequirement updateAuxiliaryRegistrationRequirementsForPassPID:isRegistered:inDatabase:](PassAuxiliaryRegistrationRequirement, "updateAuxiliaryRegistrationRequirementsForPassPID:isRegistered:inDatabase:", [v8 persistentID], v4, self->_database);
  return v4;
}

- (BOOL)insertBarcodeCredentials:(id)a3 forDPANIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001707C0;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (unint64_t)numberOfValidBarcodeCredentialsForDPANIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100170930;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)numberOfBarcodeCredentialsDisplayedAfterDate:(id)a3 forDPANIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  database = self->_database;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100170AB0;
  v13[3] = &unk_100849050;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v16 = &v17;
  v10 = v6;
  v15 = v10;
  sub_1005D4424(database, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (id)firstValidBarcodeCredentialForDPANIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100170C48;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)lastUsedBarcodeIdentifierForDPANIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100170E00;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)removeAllBarcodeCredentialValuesForDPANIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100170F5C;
  v8[3] = &unk_100848590;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)removeAllBarcodeCredentialsForDPANIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001710B8;
  v8[3] = &unk_100848590;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)updateDisplayTimestamp:(id)a3 forBarcodeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100171244;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)updatePaymentPINData:(id)a3 forTransactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001713CC;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)updateTransactionSignatureData:(id)a3 forTransactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10017158C;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)updateUserConfirmationData:(id)a3 forTransactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10017174C;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)a3 forTransactionIdentifier:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  database = self->_database;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001718E4;
  v10[3] = &unk_100840570;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = &v14;
  v13 = a3;
  sub_1005D4424(database, v10);
  LOBYTE(a3) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return a3;
}

- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)a3 forTransactionIdentifier:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  database = self->_database;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100171A7C;
  v10[3] = &unk_100840570;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = &v14;
  v13 = a3;
  sub_1005D4424(database, v10);
  LOBYTE(a3) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return a3;
}

- (BOOL)markAuthenticationCompleteforTransactionIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100171C0C;
  v8[3] = &unk_100848590;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)resetTransactionAuthenticationForTransactionIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100171D9C;
  v8[3] = &unk_100848590;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (id)transactionAuthenticationResultForTransactionIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 transactionAuthenticationResult];

  return v4;
}

- (int64_t)barcodeBackgroundFetchRetryLevelForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100171F88;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)updateNextBarcodeBackgroundFetchDate:(id)a3 withRetryLevel:(int64_t)a4 forPassUniqueIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  database = self->_database;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10017212C;
  v14[3] = &unk_1008415F0;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  v17 = &v19;
  v12 = v8;
  v16 = v12;
  v18 = a4;
  sub_1005D4424(database, v14);
  LOBYTE(a4) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return a4;
}

- (BOOL)hasBarcodeBackgroundFetchRecordForPassUniqueIdentifier:(id)a3 nextBackgroundFetchDate:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005B40;
  v19 = sub_10000B1AC;
  v20 = 0;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100172344;
  v11[3] = &unk_100849078;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  sub_1005D4424(database, v11);
  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)passesWithNextBackgroundFetchDateBeforeDate:(id)a3
{
  v4 = [BarcodeFetch passPIDsWithNextbackgroundFetchDateBeforeDate:a3 inDatabase:self->_database];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001724DC;
  v11 = &unk_1008490A0;
  v12 = self;
  v13 = objc_alloc_init(NSMutableArray);
  v5 = v13;
  [v4 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

- (id)evaluatedPolicyDomainStateForDPANIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005B40;
  v16 = sub_10000B1AC;
  v17 = 0;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001726EC;
  v9[3] = &unk_100848590;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)insertOrUpdateEvaluatedPolicyDomainState:(id)a3 forDPANIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100172958;
  v12[3] = &unk_100849050;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (int64_t)spotlightIndexingVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100172D08;
  v5[3] = &unk_1008490F0;
  v5[4] = &v6;
  sub_1005D44A8(database, @"SELECT version FROM index_metadata LIMIT 1", v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updateSpotlightIndexingVersion:(int64_t)a3
{
  sub_10035E1C0(self->_database, @"DELETE FROM index_metadata");
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100172E20;
  v6[3] = &unk_100849110;
  v6[4] = a3;
  sub_1005D44A8(database, @"INSERT INTO index_metadata (version) VALUES (?)", v6);
}

- (int64_t)indexingMetadataVersionForType:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100172F34;
  v6[3] = &unk_100849138;
  v6[4] = &v7;
  v6[5] = a3;
  sub_1005D44A8(database, @"SELECT version FROM index_fetched_metadata WHERE type = ? LIMIT 1", v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)indexingMetadataStatusForType:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100173090;
  v6[3] = &unk_100849138;
  v6[4] = &v7;
  v6[5] = a3;
  sub_1005D44A8(database, @"SELECT status FROM index_fetched_metadata WHERE type = ? LIMIT 1", v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateIndexingMetadataStatus:(unint64_t)a3 version:(int64_t)a4 forType:(unint64_t)a5
{
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001731A0;
  v6[3] = &unk_100849158;
  v6[4] = a5;
  v6[5] = a3;
  v6[6] = a4;
  sub_1005D44A8(database, @"INSERT OR REPLACE INTO index_fetched_metadata (type, status, version) VALUES (?, ?, ?)", v6);
}

- (void)markAllIndexedContentForVerifyingOfType:(unint64_t)a3
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001733E4;
  v4[3] = &unk_100849110;
  v4[4] = a3;
  sub_1005D44A8(database, @"UPDATE index_item set status=?, last_modified_date=date('now'), last_error_domain=NULL, last_error_code=NULL, action_try_count=0 where status=? and type=?", v4);
}

- (void)markAllVerifyingContentForReindexingOfType:(unint64_t)a3
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001734CC;
  v4[3] = &unk_100849110;
  v4[4] = a3;
  sub_1005D44A8(database, @"UPDATE index_item set status=?, last_modified_date=date('now'), last_error_domain=NULL, last_error_code=NULL, action_try_count=0 where status=? and type=?", v4);
}

- (void)markAllIndexedContentForReindexingOfType:(unint64_t)a3
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001735B4;
  v4[3] = &unk_100849110;
  v4[4] = a3;
  sub_1005D44A8(database, @"UPDATE index_item set status=?, last_modified_date=date('now'), last_error_domain=NULL, last_error_code=NULL, action_try_count=0 where status=? and type=?", v4);
}

- (void)resetIndexedContent
{
  database = self->_database;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10017370C;
  v3[3] = &unk_100846B20;
  v3[4] = self;
  sub_1005D4424(database, v3);
}

- (id)transactionSourceIdentifiersForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    database = self->_database;
    v6 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v7 = [PaymentApplication paymentApplicationsInDatabase:database forPassUniqueIdentifier:v4 secureElementIdentifiers:v6];

    v8 = objc_alloc_init(NSMutableSet);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) transactionSourceIdentifier];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [Pass anyInDatabase:self->_database withUniqueID:v4];
    v16 = [v15 transactionSourceIdentifier];
    [v8 pk_safelyAddObject:v16];
    v17 = [v8 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:v4];
  v6 = [v5 mutableCopy];

  v7 = [(PDDatabaseManager *)self associatedAccountIdentifierForPassWithUniqueIdentifier:v4];
  if (v7)
  {
    v8 = [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:v7];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) altDSID];
          v14 = [(PDDatabaseManager *)self transactionSourceIdentifierForAccountUserAltDSID:v13 accountIdentifier:v7];

          if (v14)
          {
            [v6 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = [v6 copy];

  return v15;
}

- (id)transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:(id)a3
{
  v17 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v4 = [PaymentApplication paymentApplicationsInDatabase:self->_database forPass:?];
  v5 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        database = self->_database;
        v12 = [*(*(&v18 + 1) + 8 * i) transactionSourceIdentifier];
        v13 = [TransactionSource anyInDatabase:database withIdentifier:v12];

        v14 = [v13 identifier];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)passUniqueIdentifierForTransactionSourceIdentifier:(id)a3 includingAccountUsers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [TransactionSource anyInDatabase:self->_database withIdentifier:v6];
  v8 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", self->_database, [v7 persistentID]);
  v9 = v8;
  database = self->_database;
  if (v8)
  {
    +[Pass anyInDatabase:withPersistentID:](Pass, "anyInDatabase:withPersistentID:", database, [v8 passPID]);
  }

  else
  {
    +[Pass anyInDatabase:withTransactionSourcePID:](Pass, "anyInDatabase:withTransactionSourcePID:", database, [v7 persistentID]);
  }
  v11 = ;
  v12 = [v11 uniqueID];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = !v4;
  }

  if (!v13)
  {
    v14 = [PaymentTransaction anyInDatabase:self->_database withTransactionSourceIdentifier:v6];
    if ([v14 accountType] == 2 && (v15 = self->_database, objc_msgSend(v14, "transactionSourceIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), +[TransactionSource anyInDatabase:withIdentifier:](TransactionSource, "anyInDatabase:withIdentifier:", v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "type"), v17, v16, v18 == 2))
    {
      v19 = self->_database;
      v20 = [v14 accountIdentifier];
      v21 = [Pass anyInDatabase:v19 withAssociatedAccountIdentifier:v20];

      v12 = [v21 uniqueID];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)paymentApplicationIdentifierForTransactionSourceIdentifier:(id)a3
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v5 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  v6 = [v5 applicationIdentifier];

  return v6;
}

- (id)paymentApplicationForTransactionSourceIdentifier:(id)a3
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v5 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  v6 = [v5 paymentApplication];

  return v6;
}

- (id)paymentTransactionWithIdentifier:(id)a3
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 paymentTransaction];

  return v4;
}

- (BOOL)transactionSourceExistsWithIdentifier:(id)a3
{
  v3 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 existsInDatabase];

  return v4;
}

- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)a3 accountIdentifier:(id)a4 accountType:(int64_t)a5
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:a3 accountIdentifier:a4 accountType:a5];
  v6 = [v5 transactionSourceIdentifier];

  return v6;
}

- (unint64_t)transactionSourceTypeForTransactionSourceIdentifier:(id)a3
{
  v3 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 type];

  return v4;
}

- (id)peerPaymentAccountForTransactionSourceIdentifier:(id)a3
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v5 = +[PeerPaymentAccount anyInDatabase:withTransactionSourcePID:](PeerPaymentAccount, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  v6 = [v5 peerPaymentAccount];

  return v6;
}

- (id)accountUserWithTransactionSourceIdentifier:(id)a3
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v5 = +[AccountUser anyInDatabase:withTransactionSourcePID:](AccountUser, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  v6 = [v5 accountUser];

  return v6;
}

- (id)transactionSourceIdentifierForAccountUserAltDSID:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = [Account anyInDatabase:self->_database withIdentifier:a4];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, v6, [v7 persistentID]);
    v9 = [v8 transactionSourceIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountWithTransactionSourceIdentifier:(id)a3
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:a3];
  v5 = +[Account anyInDatabase:withTransactionSourcePID:](Account, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  v6 = [v5 account];

  return v6;
}

- (id)transactionSourceIdentifierForAccountIdentifier:(id)a3
{
  v3 = [Account anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 transactionSourceIdentifier];

  return v4;
}

- (id)transactionSourceIdentifierForPeerPaymentAccountIdentifier:(id)a3
{
  v3 = [PeerPaymentAccount anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 transactionSourceIdentifier];

  return v4;
}

- (id)serviceIdentifierForTransactionIdentifier:(id)a3 accountIdentifier:(id *)a4 accountType:(int64_t *)a5
{
  v7 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      *a4 = [v7 accountIdentifier];
    }

    if (a5)
    {
      *a5 = [v8 accountType];
    }

    v9 = [v8 serviceIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:(id)a3 transactionAccountIdentifier:(id *)a4 transactionAccountType:(int64_t *)a5 transactionAltDSID:(id *)a6
{
  v9 = a3;
  v10 = [PeerPaymentAccount associatedPassUniqueIDInDatabase:self->_database];
  v11 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v29 + 1) + 8 * v16);
      v18 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:v9 transactionSourceIdentifier:v17];
      if (v18)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = v18;
    v20 = v17;

    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:

    v19 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:v9 transactionSourceIdentifier:0];
    if (!v19)
    {
LABEL_25:
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v9;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error: could not find the transactionSourceIdentifier for the card or peer payment transaction with service identifier %@", buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_28;
    }
  }

  v20 = [v19 transactionSourceIdentifier];
LABEL_13:
  if (a4)
  {
    v21 = [v19 accountIdentifier];
    if (v21)
    {
      v21 = v21;
      *a4 = v21;
    }
  }

  if (a5)
  {
    v22 = [v19 accountType];
    if (v22)
    {
      *a5 = v22;
    }
  }

  if (a6)
  {
    v23 = [v19 dbAccountUser];
    v24 = [v23 altDSID];

    if (v24)
    {
      v25 = v24;
      *a6 = v24;
    }
  }

  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_28:

  return v20;
}

- (id)regionsForTransaction:(id)a3 localeIdentifier:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = [a3 identifier];
  v9 = [PaymentTransaction anyInDatabase:database withIdentifier:v8];
  v10 = +[WorldRegion regionsForTransactionPID:localeIdentifier:inDatabase:](WorldRegion, "regionsForTransactionPID:localeIdentifier:inDatabase:", [v9 persistentID], v7, self->_database);

  return v10;
}

- (id)lastRegionErrorForTransaction:(id)a3
{
  database = self->_database;
  v5 = [a3 identifier];
  v6 = [PaymentTransaction anyInDatabase:database withIdentifier:v5];
  v7 = [WorldRegion lastRegionErrorForTransaction:v6 inDatabase:self->_database];

  return v7;
}

- (void)insertDynamicAssociatedDomains:(id)a3
{
  database = self->_database;
  v5 = a3;
  [DynamicAssociatedDomain deleteAssociatedDomainsInDatabase:database];
  [DynamicAssociatedDomain insertAssociatedDomains:v5 inDatabase:self->_database];
}

- (id)merchantForPassUniqueIdentifier:(id)a3 auxiliaryPassInformationItemIdentifier:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = [Pass anyInDatabase:database withUniqueID:a3];
  v9 = +[PassAuxiliaryItemMerchant merchantForPassAuxiliaryItemIdentifier:passPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "merchantForPassAuxiliaryItemIdentifier:passPersistentID:inDatabase:", v7, [v8 persistentID], self->_database);

  return v9;
}

- (id)auxiliaryItemIdentifiersForPassUniqueIdentifier:(id)a3
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v5 = +[PassAuxiliaryItemMerchant itemIdentifiersForPassPersisentID:inDatabase:](PassAuxiliaryItemMerchant, "itemIdentifiersForPassPersisentID:inDatabase:", [v4 persistentID], self->_database);

  return v5;
}

- (void)insertMerchant:(id)a3 forPassUniqueIdentifier:(id)a4 auxiliaryPassInformationItemIdentifier:(id)a5
{
  v16 = a5;
  database = self->_database;
  v9 = a3;
  v10 = [Pass anyInDatabase:database withUniqueID:a4];
  v11 = [v9 mapsBrand];
  v12 = [v9 mapsMerchant];

  if (v11)
  {
    v13 = [MapsBrand insertMapsBrand:v11 inDatabase:self->_database];
    if (v12)
    {
LABEL_3:
      v14 = [MapsMerchant insertMapsMerchant:v12 inDatabase:self->_database];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = +[PassAuxiliaryItemMerchant insertPassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:mapsBrandPersistentID:mapsMerchantPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "insertPassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:mapsBrandPersistentID:mapsMerchantPersistentID:inDatabase:", v16, [v10 persistentID], objc_msgSend(v13, "persistentID"), objc_msgSend(v14, "persistentID"), self->_database);
}

- (void)deleteMerchantForPassUniqueIdentifier:(id)a3 auxiliaryPassInformationItemIdentifier:(id)a4
{
  database = self->_database;
  v7 = a4;
  v8 = [Pass anyInDatabase:database withUniqueID:a3];
  +[PassAuxiliaryItemMerchant deletePassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "deletePassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:inDatabase:", v7, [v8 persistentID], self->_database);
}

- (void)deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:(id)a3
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  +[PassAuxiliaryItemMerchant deleteAllPassAuxiliaryItemMerchantsForPassPersisentID:inDatabase:](PassAuxiliaryItemMerchant, "deleteAllPassAuxiliaryItemMerchantsForPassPersisentID:inDatabase:", [v4 persistentID], self->_database);
}

- (id)fetchDeviceEnviromentForClient:(int64_t)a3 andCompareToCurrentEnvironment:(id)a4 didChange:(BOOL *)a5
{
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100005B40;
  v22 = sub_10000B1AC;
  v23 = 0;
  database = self->_database;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001750A4;
  v13[3] = &unk_100849220;
  v15 = &v18;
  v16 = a3;
  v13[4] = self;
  v17 = a5;
  v10 = v8;
  v14 = v10;
  sub_1005D4424(database, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)updateNFCPayloadState:(unint64_t)a3 forPassUniqueIdentifier:(id)a4 didChange:(BOOL *)a5
{
  v8 = a4;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100175204;
  v11[3] = &unk_10083F170;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a5;
  v10 = v8;
  sub_1005D4424(database, v11);
}

- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self hasEligiblePaymentOfferCriteriaForPassUniqueID:v4 criteriaType:1];
  LOBYTE(self) = [(PDDatabaseManager *)self hasEligiblePaymentOfferCriteriaForPassUniqueID:v4 criteriaType:2];

  return (v5 | self) & 1;
}

- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)a3 criteriaType:(unint64_t)a4
{
  v6 = [Pass anyInDatabase:self->_database withUniqueID:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 serialNumber];
    v9 = [v7 passType];
    v10 = [v9 passTypeID];

    v11 = [PaymentOfferCatalog catalogPIDInDatabase:self->_database];
    if (a4 == 1)
    {
      v12 = off_1008377B8;
    }

    else
    {
      if (a4 != 2)
      {
        v13 = 0;
        goto LABEL_9;
      }

      v12 = off_1008377C0;
    }

    v13 = [(__objc2_class *)*v12 hasCriteriaForPassSerialNumber:v8 passTypeIdentifier:v10 catalogPID:v11 inDatabase:self->_database];
LABEL_9:

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (unint64_t)paymentOfferCriteriaTypeForCriteriaIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PaymentOfferInstallmentCriteria criteriaTypeForIdentifier:v4 inDatabase:self->_database];
  if (!v5)
  {
    v5 = [PaymentOfferRewardsCriteria criteriaTypeForIdentifier:v4 inDatabase:self->_database];
  }

  return v5;
}

- (id)insertOrUpdatePaymentOfferEndpointMetadata:(id)a3
{
  if (a3)
  {
    v3 = [PaymentOfferEndpointMetadata insertOrUpdateWithEndpointMetadata:a3 inDatabase:self->_database];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating payment offer endpoint metadata to %@", &v6, 0xCu);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)deletePaymentOfferEndpointMetadataForPassUniqueID:(id)a3 type:(unint64_t)a4
{
  v4 = [PaymentOfferEndpointMetadata deleteEndpointMetadataForPassUniqueID:a3 type:a4 inDatabase:self->_database];
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removed payment offer endpoint metadata payment offer endpoint %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (id)anyEligiblePaymentOfferRewardsCriteriaForPass:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  v6 = [v4 serialNumber];

  v7 = [PaymentOfferRewardsCriteria anyEligiblePaymentOfferRewardsCriteriaInDatabase:self->_database withPassTypeIdentifier:v5 passSerialNumber:v6];

  return v7;
}

- (id)insertOrUpdatePaymentOfferConfirmationRecord:(id)a3
{
  database = self->_database;
  v5 = a3;
  [PaymentOfferConfirmationRecord insertOrUpdateRecord:v5 inDatabase:database];
  v6 = [v5 paymentHash];

  v7 = [(PDDatabaseManager *)self paymentOfferConfirmationRecordWithPaymentHash:v6];

  return v7;
}

- (id)accessUserActivitySignalsForCollectionInterval:(id)a3
{
  v4 = a3;
  if ([(PDDatabaseManager *)self hasSecureElementPassesOfType:3])
  {
    v5 = [UserActivitySignals populateAccessUserActivitySignalsWithPassTransactionActivitySummariesWithDatabase:self->_database databaseManager:self collectionInterval:v4];
    v6 = [[PDUserActivitySignals alloc] initWithAccessInformation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userActivitySignalsForCollectionInterval:(id)a3
{
  v4 = a3;
  v5 = [[PDUserActivityPaymentPresentmentInformation alloc] initWithProductType:0];
  v6 = 1;
  v7 = [[PDUserActivityPaymentPresentmentInformation alloc] initWithProductType:1];
  v8 = [[PDUserActivityPaymentPresentmentInformation alloc] initWithProductType:2];
  v9 = [[PDUserActivityPaymentPresentmentInformation alloc] initWithProductType:3];
  v10 = objc_alloc_init(PDUserActivityPaymentPresentmentInformation);
  database = self->_database;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100175FDC;
  v60[3] = &unk_100849248;
  v12 = v4;
  v61 = v12;
  v62 = self;
  v13 = v10;
  v63 = v13;
  v53 = v8;
  v64 = v53;
  v55 = v9;
  v65 = v55;
  v14 = v7;
  v66 = v14;
  v15 = v5;
  v67 = v15;
  sub_1005D44A8(database, @"SELECT source_pid, transaction_type, merchant_industry_code FROM payment_transaction JOIN transaction_source ON payment_transaction.source_pid = transaction_source.pid WHERE payment_transaction.transaction_date >= ? AND payment_transaction.transaction_date <= ?", v60);
  v54 = v15;
  if (![(PDUserActivityPaymentPresentmentInformation *)v15 presented])
  {
    v16 = [(PDDatabaseManager *)self passesForPaymentType:2];
    v17 = [v16 count];
    v18 = v17 != 0;
    v6 = v17 == 0;

    [(PDUserActivityPaymentPresentmentInformation *)v54 setPresented:2 * v18];
  }

  v19 = v14;
  if (![(PDUserActivityPaymentPresentmentInformation *)v14 presented])
  {
    v20 = [(PDDatabaseManager *)self passesForPaymentType:1];
    v21 = [v20 count];
    v22 = v21 != 0;
    v23 = v21 == 0;

    [(PDUserActivityPaymentPresentmentInformation *)v19 setPresented:2 * v22];
    v6 &= v23;
  }

  v24 = v53;
  v25 = v55;
  if (![(PDUserActivityPaymentPresentmentInformation *)v53 presented])
  {
    v26 = [(PDDatabaseManager *)self hasSecureElementPassesWithFeatureIdentifier:2];
    if (v26)
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    [(PDUserActivityPaymentPresentmentInformation *)v53 setPresented:v27];
    v6 &= v26 ^ 1;
  }

  if (![(PDUserActivityPaymentPresentmentInformation *)v55 presented])
  {
    v28 = [(PDDatabaseManager *)self hasSecureElementPassesWithFeatureIdentifier:1];
    v29 = v28 ? 2 : 0;
    [(PDUserActivityPaymentPresentmentInformation *)v55 setPresented:v29];
    if (v28)
    {
      v30 = +[PKPassLibrary sharedInstance];
      v31 = [v30 peerPaymentPassUniqueID];

      v32 = [(PDDatabaseManager *)self passWithUniqueIdentifier:v31];
      v33 = [v32 secureElementPass];
      v34 = [v33 devicePrimaryPaymentApplication];
      v35 = v34 == 0;

      v25 = v55;
      v6 &= v35;
    }
  }

  if ([(PDUserActivityPaymentPresentmentInformation *)v13 presented])
  {
    if (v6)
    {
LABEL_18:
      v36 = 0;
      v37 = v54;
      goto LABEL_31;
    }
  }

  else
  {
    v52 = v12;
    v38 = self->_database;
    v39 = [(PDDatabaseManager *)self _transitPredicate];
    v40 = [Pass passUniqueIDsInDatabase:v38 matchingPredicate:v39];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v42)
    {
      v43 = v42;
      v51 = v19;
      v44 = *v57;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v57 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v56 + 1) + 8 * i);
          v47 = objc_autoreleasePoolPush();
          v48 = [Pass anyInDatabase:self->_database withUniqueID:v46];
          v49 = [v48 defaultPaymentApplication];
          [v49 paymentNetworkIdentifier];
          if ((PKIsOpenLoopCredentialType() & 1) == 0)
          {
            [(PDUserActivityPaymentPresentmentInformation *)v13 setPresented:2];
          }

          objc_autoreleasePoolPop(v47);
        }

        v43 = [v41 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v43);

      v12 = v52;
      v24 = v53;
      v19 = v51;
      v25 = v55;
    }

    else
    {

      v25 = v55;
      if (v6)
      {
        goto LABEL_18;
      }
    }
  }

  v37 = v54;
  v36 = [[PDUserActivitySignals alloc] initWithCreditInformation:v54 debitInformation:v19 appleCardInformation:v24 appleCashInformation:v25 transitInformation:v13];
LABEL_31:

  return v36;
}

- (id)flightForPassWithUniqueID:(id)a3
{
  v4 = [PassAssociatedFlight anyInDatabase:self->_database forPassUniqueID:a3];
  v5 = +[Flight anyInDatabase:withPID:](Flight, "anyInDatabase:withPID:", self->_database, [v4 flightPID]);
  v6 = [v5 flight];

  return v6;
}

- (id)flightsWithOperatorAirlineCode:(id)a3 operatorFlightNumber:(unint64_t)a4 originalDepartureDate:(id)a5
{
  v6 = [Flight predicateForOperatorAirlineCode:a3 operatorFlightNumber:a4 originalDepartureDate:a5];
  v7 = [(SQLiteEntity *)Flight queryWithDatabase:self->_database predicate:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100176408;
  v14 = &unk_10083ED50;
  v8 = objc_alloc_init(NSMutableArray);
  v15 = v8;
  v16 = self;
  [v7 enumeratePersistentIDsUsingBlock:&v11];
  if ([v8 count])
  {
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)flightWithIdentifier:(id)a3
{
  v3 = [Flight anyInDatabase:self->_database withIdentifier:a3];
  v4 = [v3 flight];

  return v4;
}

- (id)updateFlightWithIdentifier:(id)a3 usingUpdateContent:(id)a4
{
  v6 = a4;
  v7 = [Flight anyInDatabase:self->_database withIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [v7 updateWithContent:v6];
    v9 = [v8 flight];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteFlightWithIdentifier:(id)a3
{
  database = self->_database;
  v6 = a3;
  v5 = [Flight anyInDatabase:database withIdentifier:v6];
  [v5 deleteFromDatabase];

  [(PDDatabaseManager *)self deleteSharesForFlightWithIdentifier:v6 senderAddress:0];
}

- (id)passUniqueIDsForFlightIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100176720;
  v11[3] = &unk_100841740;
  v12 = v4;
  v13 = self;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  sub_1005D4424(database, v11);
  if ([v7 count])
  {
    v9 = [v7 allObjects];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)passesExistForFlightWithIdentifier:(id)a3
{
  v4 = [PassAssociatedFlight predicateForFlightIdentifier:a3];
  v9[0] = v4;
  v5 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  LOBYTE(self) = [(SQLiteEntity *)PassAssociatedFlight existsInDatabase:self->_database predicate:v7];
  return self;
}

- (BOOL)hasAnySharesForFlightWithIdentifier:(id)a3
{
  database = self->_database;
  v4 = [ShareAssociatedFlight predicateForFlightIdentifier:a3];
  v5 = [(SQLiteEntity *)ShareAssociatedFlight existsInDatabase:database predicate:v4];

  return v5;
}

- (void)deleteSharesForFlightWithIdentifier:(id)a3 senderAddress:(id)a4
{
  v6 = a4;
  [ShareAssociatedFlight predicateForFlightIdentifier:a3];
  if (v6)
    v7 = {;
    v13[0] = v7;
    v8 = [ShareAssociatedFlight predicateForSenderAddress:v6];
    v13[1] = v8;
    v9 = [NSArray arrayWithObjects:v13 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

    v11 = [(SQLiteEntity *)ShareAssociatedFlight anyInDatabase:self->_database predicate:v10];
    [v11 deleteFromDatabase];
  }

  else
    v10 = {;
    v11 = [(SQLiteEntity *)ShareAssociatedFlight queryWithDatabase:self->_database predicate:v10];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100176B4C;
    v12[3] = &unk_10083EF38;
    v12[4] = self;
    [v11 enumeratePersistentIDsUsingBlock:v12];
  }
}

- (id)insertOrUpdateFlight:(id)a3 senderAddress:(id)a4
{
  v6 = a4;
  v7 = [Flight insertOrUpdateFlight:a3 inDatabase:self->_database];
  if (v6)
  {
    [ShareAssociatedFlight insertOrUpdateFlight:v7 senderAddress:v6 inDatabase:self->_database];
  }

  v8 = [v7 flight];

  return v8;
}

- (id)insertOrUpdateFlight:(id)a3 forPassUniqueID:(id)a4
{
  v6 = a3;
  v7 = [NSSet setWithObject:a4];
  v8 = [(PDDatabaseManager *)self insertOrUpdateFlight:v6 forPassUniqueIDs:v7 senderAddresses:0];

  return v8;
}

- (id)insertOrUpdateFlight:(id)a3 forPassUniqueIDs:(id)a4 senderAddresses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100005B40;
  v27 = sub_10000B1AC;
  v28 = 0;
  database = self->_database;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100176E60;
  v17[3] = &unk_100849270;
  v22 = &v23;
  v12 = v8;
  v18 = v12;
  v19 = self;
  v13 = v9;
  v20 = v13;
  v14 = v10;
  v21 = v14;
  sub_1005D4424(database, v17);
  v15 = [v24[5] flight];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (void)deleteAssociatedFlightForPassUniqueID:(id)a3
{
  v3 = [PassAssociatedFlight anyInDatabase:self->_database forPassUniqueID:a3];
  [v3 deleteFromDatabase];
}

- (BOOL)hasActiveOrScheduledFlights
{
  database = self->_database;
  v3 = +[Flight predicateForActiveOrScheduledFlights];
  v4 = [(SQLiteEntity *)Flight existsInDatabase:database predicate:v3];

  return v4;
}

- (BOOL)hasActiveFlights
{
  database = self->_database;
  v3 = +[Flight predicateForActiveFlights];
  v4 = [(SQLiteEntity *)Flight existsInDatabase:database predicate:v3];

  return v4;
}

- (id)activeFlights
{
  database = self->_database;
  v3 = +[Flight predicateForActiveFlights];
  v4 = [Flight flightsInDatabase:database matchingPredicate:v3];

  return v4;
}

- (id)activeOrScheduledFlights
{
  v3 = +[Flight predicateForActiveOrScheduledFlights];
  v4 = [Flight flightsInDatabase:self->_database matchingPredicate:v3];

  return v4;
}

- (id)activeOrStaleFlights
{
  v3 = +[Flight predicateForActiveFlights];
  v4 = +[NSDate now];
  v5 = [Flight predicateForStaleDateBeforeDate:v4];

  v10[0] = v3;
  v10[1] = v5;
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  v8 = [Flight flightsInDatabase:self->_database matchingPredicate:v7];

  return v8;
}

- (id)nextFlightStaleDate
{
  v3 = +[NSDate now];
  v4 = [Flight firstStaleDateAfterDate:v3 inDatabase:self->_database];

  return v4;
}

- (BOOL)flightExistsForPassWithUniqueID:(id)a3
{
  v4 = [PassAssociatedFlight predicateForPassUniqueID:a3];
  v9[0] = v4;
  v5 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  LOBYTE(self) = [(SQLiteEntity *)PassAssociatedFlight existsInDatabase:self->_database predicate:v7];
  return self;
}

- (id)subscriptionForFlightWithIdentifier:(id)a3
{
  v4 = [FlightSubscription predicateForFlightIdentifier:a3];
  v5 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v4];
  v6 = [v5 subscription];

  return v6;
}

- (id)insertOrUpdateFlightSubscription:(id)a3
{
  database = self->_database;
  v5 = a3;
  v6 = [v5 flightIdentifier];
  v7 = [Flight anyInDatabase:database withIdentifier:v6];

  v8 = [FlightSubscription insertOrUpdateSubscription:v5 forFlight:v7 inDatabase:self->_database];

  v9 = [v8 subscription];

  return v9;
}

- (BOOL)hasActiveFlightSubscriptions
{
  database = self->_database;
  v3 = [FlightSubscription predicateForIsActive:1];
  v4 = [(SQLiteEntity *)FlightSubscription existsInDatabase:database predicate:v3];

  return v4;
}

- (void)deleteSubscriptionForFlightWithIdentifier:(id)a3
{
  v5 = [FlightSubscription predicateForFlightIdentifier:a3];
  v4 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v5];
  [v4 deleteFromDatabase];
}

- (void)deleteFlightSubscriptionWithChannelIdentifier:(id)a3
{
  v5 = [FlightSubscription predicateForChannelIdentifier:a3];
  v4 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v5];
  [v4 deleteFromDatabase];
}

- (id)rateLimitTokensForBundleIdentifier:(id)a3 operation:(int64_t)a4
{
  v4 = [RateLimitTokens tokensForBundleIdentifier:a3 operation:a4 inDatabase:self->_database];
  v5 = [v4 tokens];

  return v5;
}

- (id)insertOrUpdateRateLimitTokens:(id)a3
{
  v3 = [RateLimitTokens insertOrUpdateTokens:a3 inDatabase:self->_database];
  v4 = [v3 tokens];

  return v4;
}

- (PDDatabaseManagerWebServicesDelegate)webServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webServicesDelegate);

  return WeakRetained;
}

- (PDCloudStoreNotificationCoordinator)cloudStoreCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudStoreCoordinator);

  return WeakRetained;
}

- (PDDatabaseManagerPaymentServicesDelegate)paymentServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentServicesDelegate);

  return WeakRetained;
}

- (PDDatabaseManagerNotificationServicesDelegate)notificationServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationServicesDelegate);

  return WeakRetained;
}

- (void)fieldMetadataForFieldWithProperties:(id)a3 withExpressPassManager:(id)a4 completion:(id)a5
{
  v7 = a3;
  v122 = a4;
  v8 = a5;
  v125 = v7;
  if (v8)
  {
    v121 = v8;
    v9 = [v7 terminalType];
    v201 = 0;
    v202 = &v201;
    v203 = 0x3032000000;
    v204 = sub_100005BA0;
    v205 = sub_10000B1DC;
    v206 = objc_alloc_init(NSMutableArray);
    v197 = 0;
    v198 = &v197;
    v199 = 0x2020000000;
    v200 = 0;
    v193 = 0;
    v194 = &v193;
    v195 = 0x2020000000;
    v196 = 0;
    v119 = PDDefaultPaymentPassUniqueIdentifier();
    v123 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v120 = [(PDDatabaseManager *)self shouldIgnoreFieldWithProperties:v7];
    if (v9 == 4)
    {
      [(PDDatabaseManager *)self passesForPaymentTypes:&off_1008A4860];
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      obj = v168 = 0u;
      v12 = [obj countByEnumeratingWithState:&v167 objects:v215 count:16];
      if (v12)
      {
        v13 = *v168;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v168 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v167 + 1) + 8 * i);
            if ([v15 cardType] == 4)
            {
              v16 = v202[5];
              v17 = [v15 uniqueID];
              [v16 addObject:v17];
            }
          }

          v12 = [obj countByEnumeratingWithState:&v167 objects:v215 count:16];
        }

        while (v12);
      }

      v18 = [IdentityPassCredentialProperty identityPassCredentialTypesInDatabase:self->_database forPassUniqueIdentifiers:v202[5]];
      v19 = PDPreferredDocTypeOrder();
      v20 = v202[5];
      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_1001A005C;
      v163[3] = &unk_10084B230;
      context = v18;
      v164 = context;
      v117 = v19;
      v165 = v117;
      v166 = &v201;
      [v20 sortUsingComparator:v163];

      v11 = v164;
      goto LABEL_151;
    }

    if (v9 == 3)
    {
      v10 = [v7 TCIs];
      context = [v10 firstObject];

      v117 = [v7 readerIdentifier];
      v11 = objc_alloc_init(NSMutableArray);
      if (v120)
      {
        obj = 0;
      }

      else
      {
        v49 = [v7 credentialIdentifier];
        v127 = [v7 applicationIdentifier];
        v114 = v11;
        *(v194 + 24) = v117 != 0;
        v50 = objc_autoreleasePoolPush();
        if (context)
        {
          [(PDDatabaseManager *)self contactlessAccessPaymentPassesWithTCI:context readerId:v117];
        }

        else
        {
          [(PDDatabaseManager *)self passesForPaymentType:1001];
        }

        v76 = v51 = v11;
        objc_autoreleasePoolPop(v50);
        v77 = [v125 fieldType];
        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
        obj = v76;
        v78 = [obj countByEnumeratingWithState:&v189 objects:v219 count:16];
        if (v78)
        {
          v79 = *v190;
          v113 = v77 != 1;
          v80 = v77 != 1 && v127 == 0;
          v109 = *v190;
          v108 = v80;
          do
          {
            v81 = 0;
            v110 = v78;
            do
            {
              if (*v190 != v79)
              {
                objc_enumerationMutation(obj);
              }

              v82 = *(*(&v189 + 1) + 8 * v81);
              if (v80)
              {
                goto LABEL_145;
              }

              v111 = *(*(&v189 + 1) + 8 * v81);
              v112 = v81;
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v83 = [v82 deviceContactlessPaymentApplications];
              v84 = [v83 countByEnumeratingWithState:&v185 objects:v218 count:16];
              v85 = v113;
              v86 = v127 == 0;
              if (v84)
              {
                v129 = v83;
                v131 = *v186;
                v85 = v113;
                v86 = v127 == 0;
                do
                {
                  v133 = v84;
                  for (j = 0; j != v133; j = j + 1)
                  {
                    if (*v186 != v131)
                    {
                      objc_enumerationMutation(v129);
                    }

                    v88 = *(*(&v185 + 1) + 8 * j);
                    if (v86)
                    {
                      v86 = 1;
                    }

                    else
                    {
                      v136 = *(*(&v185 + 1) + 8 * j);
                      v89 = [v88 applicationIdentifier];
                      v86 = [v89 isEqualToString:v127];

                      v88 = v136;
                      if ((v86 & (v49 != 0)) == 1)
                      {
                        v183 = 0u;
                        v184 = 0u;
                        v181 = 0u;
                        v182 = 0u;
                        v90 = [v136 subcredentials];
                        v86 = 0;
                        v91 = [v90 countByEnumeratingWithState:&v181 objects:v217 count:16];
                        if (v91)
                        {
                          v92 = *v182;
                          do
                          {
                            for (k = 0; k != v91; k = k + 1)
                            {
                              if (*v182 != v92)
                              {
                                objc_enumerationMutation(v90);
                              }

                              v94 = [*(*(&v181 + 1) + 8 * k) identifier];
                              v95 = [v94 isEqualToString:v49];

                              v86 |= v95;
                            }

                            v91 = [v90 countByEnumeratingWithState:&v181 objects:v217 count:16];
                          }

                          while (v91);
                        }

                        v88 = v136;
                      }
                    }

                    if (v85)
                    {
                      v85 = 1;
                    }

                    else
                    {
                      v179 = 0u;
                      v180 = 0u;
                      v177 = 0u;
                      v178 = 0u;
                      v96 = [v88 automaticSelectionCriteria];
                      v85 = 0;
                      v97 = [v96 countByEnumeratingWithState:&v177 objects:v216 count:16];
                      if (v97)
                      {
                        v98 = *v178;
                        do
                        {
                          for (m = 0; m != v97; m = m + 1)
                          {
                            if (*v178 != v98)
                            {
                              objc_enumerationMutation(v96);
                            }

                            v85 |= [*(*(&v177 + 1) + 8 * m) technologyType] == 2;
                          }

                          v97 = [v96 countByEnumeratingWithState:&v177 objects:v216 count:16];
                        }

                        while (v97);
                      }
                    }
                  }

                  v83 = v129;
                  v84 = [v129 countByEnumeratingWithState:&v185 objects:v218 count:16];
                }

                while (v84);
              }

              v100 = v86 & v85;
              v51 = v114;
              v79 = v109;
              v78 = v110;
              v80 = v108;
              v82 = v111;
              v81 = v112;
              if (v100)
              {
LABEL_145:
                [v51 addObject:v82];
                *(v198 + 24) = 1;
              }

              v81 = v81 + 1;
            }

            while (v81 != v78);
            v78 = [obj countByEnumeratingWithState:&v189 objects:v219 count:16];
          }

          while (v78);
        }

        v101 = [v114 pk_arrayByApplyingBlock:&stru_10084B1B8];
        v102 = [v101 mutableCopy];
        v103 = v202[5];
        v202[5] = v102;

        v11 = v114;
      }

      if ([v202[5] count] >= 2)
      {
        v171[0] = _NSConcreteStackBlock;
        v171[1] = 3221225472;
        v171[2] = sub_10019FB78;
        v171[3] = &unk_10083FB48;
        v172 = v122;
        v173 = self;
        v176 = &v201;
        v104 = v11;
        v174 = v104;
        v117 = v117;
        v175 = v117;
        [v123 addOperation:v171];

        v11 = v104;
      }

LABEL_151:

      v70 = context;
      goto LABEL_152;
    }

    if (([v7 technology] & 8) != 0)
    {
      v42 = [v7 terminalType];
      v43 = v42;
      v45 = v42 != 5 && v42 != 0;
      v130 = v45;
      v46 = objc_autoreleasePoolPush();
      v47 = [v125 merchantIdentifiers];
      obj = [(PDDatabaseManager *)self passesWithPassTypeIdentifierHashes:v47 automaticSelectionOnly:1];

      objc_autoreleasePoolPop(v46);
      v48 = [v125 valueAddedServiceMode];
      if (v48 >= 2)
      {
        if (v48 == 2 || v48 == 4 && [obj count])
        {
          if (!v43 || v43 == 5)
          {
            goto LABEL_153;
          }

          goto LABEL_94;
        }

        if (!v43 || v43 == 5)
        {
          goto LABEL_153;
        }

LABEL_19:
        v21 = objc_autoreleasePoolPush();
        v22 = [(PDDatabaseManager *)self passesOfType:1];
        v23 = [v22 pk_mutableArrayCopy];
        v24 = [v23 count];
        if (!v24)
        {

          v23 = 0;
        }

        v25 = [NSMutableOrderedSet alloc];
        if (v24 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v24;
        }

        v27 = [v25 initWithCapacity:v26];

        objc_autoreleasePoolPop(v21);
        if (v9 == 2)
        {
          contexta = objc_autoreleasePoolPush();
          v118 = [v125 TCIs];
          v28 = [v118 firstObject];
          v128 = v27;
          v29 = v23;
          v30 = v28;
          v31 = v30;
          if (v29 && v30 && (v32 = [v29 count]) != 0)
          {
            v135 = v32;
            v33 = 0;
            v132 = 0;
            v126 = 0;
            do
            {
              v34 = [v29 objectAtIndexedSubscript:v33];
              if ([v34 isTransitPass])
              {
                v210 = 0u;
                v209 = 0u;
                v208 = 0u;
                v207 = 0u;
                v35 = [v34 deviceContactlessPaymentApplications];
                v36 = [v35 countByEnumeratingWithState:&v207 objects:v220 count:16];
                if (v36)
                {
                  v37 = *v208;
                  while (2)
                  {
                    v38 = v23;
                    for (n = 0; n != v36; n = n + 1)
                    {
                      if (*v208 != v37)
                      {
                        objc_enumerationMutation(v35);
                      }

                      if ([*(*(&v207 + 1) + 8 * n) supportsAutomaticSelectionForTCI:v31])
                      {

                        v23 = v38;
                        v40 = [v34 uniqueID];
                        [v128 addObject:v40];

                        v41 = v132;
                        if (!v132)
                        {
                          v41 = objc_alloc_init(NSMutableIndexSet);
                        }

                        v132 = v41;
                        [v41 addIndex:v33];
                        v126 = 1;
                        goto LABEL_42;
                      }
                    }

                    v36 = [v35 countByEnumeratingWithState:&v207 objects:v220 count:16];
                    v23 = v38;
                    if (v36)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

LABEL_42:

              ++v33;
            }

            while (v33 != v135);
            if ([v132 count])
            {
              [v29 removeObjectsAtIndexes:v132];
            }

            if (v126)
            {
              *(v198 + 24) = 1;
            }
          }

          else
          {
          }

          objc_autoreleasePoolPop(contexta);
        }

        v52 = objc_autoreleasePoolPush();
        v53 = [v125 merchantIdentifiers];
        if ([v53 count])
        {
          v54 = [(PDDatabaseManager *)self paymentPassesWithAssociatedPassTypeIdentifierHashes:v53 automaticSelectionOnly:1];
          if ([v54 count])
          {
            *(v198 + 24) = 1;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v162 = 0u;
            v55 = v54;
            v56 = [v55 countByEnumeratingWithState:&v159 objects:v214 count:16];
            if (v56)
            {
              v57 = *v160;
              do
              {
                for (ii = 0; ii != v56; ii = ii + 1)
                {
                  if (*v160 != v57)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v59 = [*(*(&v159 + 1) + 8 * ii) uniqueID];
                  [v27 addObject:v59];
                }

                v56 = [v55 countByEnumeratingWithState:&v159 objects:v214 count:16];
              }

              while (v56);
            }
          }
        }

        objc_autoreleasePoolPop(v52);
        if (v119)
        {
          [v27 addObject:v119];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v60 = v23;
        v61 = [v60 countByEnumeratingWithState:&v155 objects:v213 count:16];
        if (v61)
        {
          v62 = *v156;
          do
          {
            for (jj = 0; jj != v61; jj = jj + 1)
            {
              if (*v156 != v62)
              {
                objc_enumerationMutation(v60);
              }

              v64 = *(*(&v155 + 1) + 8 * jj);
              if (([v64 isAccessPass] & 1) == 0)
              {
                v65 = [v64 uniqueID];
                [v27 addObject:v65];
              }
            }

            v61 = [v60 countByEnumeratingWithState:&v155 objects:v213 count:16];
          }

          while (v61);
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v66 = v27;
        v67 = [v66 countByEnumeratingWithState:&v151 objects:v212 count:16];
        if (v67)
        {
          v68 = *v152;
          do
          {
            for (kk = 0; kk != v67; kk = kk + 1)
            {
              if (*v152 != v68)
              {
                objc_enumerationMutation(v66);
              }

              [v202[5] addObject:*(*(&v151 + 1) + 8 * kk)];
            }

            v67 = [v66 countByEnumeratingWithState:&v151 objects:v212 count:16];
          }

          while (v67);
        }

        if (!v130)
        {
          goto LABEL_153;
        }

LABEL_94:
        if (![obj count])
        {
LABEL_153:

          v220[0] = 0;
          v220[1] = v220;
          v220[2] = 0x3032000000;
          v220[3] = sub_100005BA0;
          v220[4] = sub_10000B1DC;
          v221 = 0;
          v140[0] = _NSConcreteStackBlock;
          v140[1] = 3221225472;
          v140[2] = sub_1001A01C4;
          v140[3] = &unk_10084B258;
          v146 = v120;
          v142 = &v193;
          v143 = &v201;
          v105 = v119;
          v141 = v105;
          v144 = v220;
          v145 = &v197;
          [v123 addOperation:v140];
          v106 = +[NSNull null];
          v137[0] = _NSConcreteStackBlock;
          v137[1] = 3221225472;
          v137[2] = sub_1001A02F0;
          v137[3] = &unk_10083C8E8;
          v138 = v121;
          v139 = v220;
          v107 = [v123 evaluateWithInput:v106 completion:v137];

          _Block_object_dispose(v220, 8);
          _Block_object_dispose(&v193, 8);
          _Block_object_dispose(&v197, 8);
          _Block_object_dispose(&v201, 8);

          v8 = v121;
          goto LABEL_154;
        }

        *(v198 + 24) = 1;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v70 = obj;
        v71 = [v70 countByEnumeratingWithState:&v147 objects:v211 count:16];
        if (v71)
        {
          v72 = *v148;
          do
          {
            for (mm = 0; mm != v71; mm = mm + 1)
            {
              if (*v148 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v74 = v202[5];
              v75 = [*(*(&v147 + 1) + 8 * mm) uniqueID];
              [v74 addObject:v75];
            }

            v71 = [v70 countByEnumeratingWithState:&v147 objects:v211 count:16];
          }

          while (v71);
        }

        obj = v70;
LABEL_152:

        goto LABEL_153;
      }

      if (!v43 || v43 == 5)
      {
        goto LABEL_153;
      }
    }

    else
    {
      obj = 0;
    }

    v130 = 0;
    goto LABEL_19;
  }

LABEL_154:
}

- (BOOL)shouldIgnoreFieldWithProperties:(id)a3
{
  v3 = a3;
  if ([v3 backgroundTransaction])
  {
    goto LABEL_2;
  }

  if (([v3 technology] & 8) == 0 || (v5 = objc_msgSend(v3, "terminalType"), v5 > 5) || ((1 << v5) & 0x16) != 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  if (((1 << v5) & 0x21) == 0)
  {
    if ([v3 accessTerminalSubtype] == 2)
    {
      v7 = [v3 credentialIdentifier];
      v4 = v7 == 0;

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_2:
  v4 = 1;
LABEL_7:

  return v4;
}

- (id)_readerIDPriorityForPasses:(id)a3 readerID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v28 = objc_alloc_init(NSMutableDictionary);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (!v33)
    {
      goto LABEL_39;
    }

    v30 = *v55;
    v31 = v5;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v7;
        v8 = *(*(&v54 + 1) + 8 * v7);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v9 = [v8 deviceContactlessPaymentApplications];
        v37 = [v9 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (!v37)
        {
          goto LABEL_36;
        }

        v32 = v8;
        v35 = v9;
        v36 = *v51;
        v10 = -1;
        do
        {
          v11 = 0;
          do
          {
            if (*v51 != v36)
            {
              objc_enumerationMutation(v35);
            }

            v38 = v11;
            v12 = *(*(&v50 + 1) + 8 * v11);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v39 = [v12 automaticSelectionCriteria];
            v41 = [v39 countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v41)
            {
              v40 = *v47;
              while (2)
              {
                for (i = 0; i != v41; i = i + 1)
                {
                  if (*v47 != v40)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v14 = *(*(&v46 + 1) + 8 * i);
                  v15 = [v14 readerIDs];
                  v16 = [v15 containsObject:v6];

                  if (v16)
                  {
                    v10 = 0;
                    goto LABEL_32;
                  }

                  v44 = 0u;
                  v45 = 0u;
                  v42 = 0u;
                  v43 = 0u;
                  v17 = [v14 associatedReaderIDs];
                  v18 = [v17 countByEnumeratingWithState:&v42 objects:v58 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v43;
                    do
                    {
                      for (j = 0; j != v19; j = j + 1)
                      {
                        if (*v43 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v42 + 1) + 8 * j);
                        v23 = [v22 readerID];
                        v24 = PKEqualObjects();

                        if (v24 && [v22 priority] < v10)
                        {
                          v10 = [v22 priority];
                        }
                      }

                      v19 = [v17 countByEnumeratingWithState:&v42 objects:v58 count:16];
                    }

                    while (v19);
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v46 objects:v59 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

LABEL_32:

            v11 = v38 + 1;
          }

          while ((v38 + 1) != v37);
          v37 = [v35 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v37);

        if (v10 != -1)
        {
          v9 = [NSNumber numberWithUnsignedInteger:v10];
          v25 = [v32 uniqueID];
          [v28 setObject:v9 forKeyedSubscript:v25];

LABEL_36:
        }

        v7 = v34 + 1;
        v5 = v31;
      }

      while ((v34 + 1) != v33);
      v33 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (!v33)
      {
LABEL_39:

        v26 = [v28 copy];
        goto LABEL_41;
      }
    }
  }

  v26 = 0;
LABEL_41:

  return v26;
}

@end