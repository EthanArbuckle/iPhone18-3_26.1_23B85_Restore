@interface PDDatabaseManager
+ (BOOL)databaseExistsAtURL:(id)l;
- (BOOL)accountEventExistsWithIdentifier:(id)identifier;
- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)mechanisms forTransactionIdentifier:(id)identifier;
- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)mechanisms forTransactionIdentifier:(id)identifier;
- (BOOL)canPerformAction:(id)action forPassWithUniqueIdentifier:(id)identifier;
- (BOOL)containerDatabaseExistsForContainerDatabase:(id)database;
- (BOOL)didFinishInitialSyncForCloudStore:(id)store containerDatabase:(id)database;
- (BOOL)flightExistsForPassWithUniqueID:(id)d;
- (BOOL)getLastPushDate:(id *)date lastUpdateDate:(id *)updateDate frequencyScore:(double *)score forPassTypeID:(id)d;
- (BOOL)getPassTypeID:(id *)d teamID:(id *)iD associatedPassTypeIdentifiers:(id *)identifiers associatedApplicationIdentifiers:(id *)applicationIdentifiers forUniqueID:(id)uniqueID;
- (BOOL)getRegistrationStatus:(unint64_t *)status date:(id *)date forSerialNumber:(id)number webService:(id)service;
- (BOOL)getWebService:(id *)service updateContext:(id *)context forPassWithUniqueID:(id)d;
- (BOOL)hasActiveBarcodePasses;
- (BOOL)hasActiveContactlessSecureElementPasses;
- (BOOL)hasActiveFlightSubscriptions;
- (BOOL)hasActiveFlights;
- (BOOL)hasActiveOrScheduledFlights;
- (BOOL)hasActiveSecureElementPasses;
- (BOOL)hasAnyAccountWithType:(unint64_t)type;
- (BOOL)hasAnyMessagesForPassWithUniqueIdentifier:(id)identifier;
- (BOOL)hasAnySharesForFlightWithIdentifier:(id)identifier;
- (BOOL)hasAnyTransactionsForTransactionSourceIdentifiers:(id)identifiers;
- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier;
- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier;
- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier;
- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
- (BOOL)hasBarcodeBackgroundFetchRecordForPassUniqueIdentifier:(id)identifier nextBackgroundFetchDate:(id *)date;
- (BOOL)hasCandidatePasses;
- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)d;
- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type;
- (BOOL)hasMatchingCloudStoreRecord:(id)record inCloudStoreZone:(id)zone;
- (BOOL)hasPassesInExpiredSection;
- (BOOL)hasPassesWithPayloadState:(unint64_t)state;
- (BOOL)hasPeerPaymentAccount;
- (BOOL)hasPushEnabledPassesForWebService:(id)service;
- (BOOL)hasSecureElementPassesOfType:(int64_t)type;
- (BOOL)hasSecureElementPassesWithFeatureIdentifier:(unint64_t)identifier;
- (BOOL)hasTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier;
- (BOOL)hasTransactionWithTransactionIdentifier:(id)identifier;
- (BOOL)insertBarcodeCredentials:(id)credentials forDPANIdentifier:(id)identifier;
- (BOOL)insertOrUpdateEvaluatedPolicyDomainState:(id)state forDPANIdentifier:(id)identifier;
- (BOOL)insertPass:(id)pass withDaemonData:(id)data source:(int64_t)source;
- (BOOL)markAuthenticationCompleteforTransactionIdentifier:(id)identifier;
- (BOOL)notificationServiceIsEnabledForAnyPasses:(id)passes;
- (BOOL)passExistsForNonWebInAppPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities paymentApplicationStates:(id)states;
- (BOOL)passExistsWithPassType:(unint64_t)type;
- (BOOL)passExistsWithPassTypeID:(id)d serialNumber:(id)number;
- (BOOL)passExistsWithPassTypeIdentifierHash:(id)hash;
- (BOOL)passExistsWithPaymentType:(unint64_t)type;
- (BOOL)passExistsWithUniqueID:(id)d;
- (BOOL)passesExistForFlightWithIdentifier:(id)identifier;
- (BOOL)removeAllBarcodeCredentialValuesForDPANIdentifier:(id)identifier;
- (BOOL)removeAllBarcodeCredentialsForDPANIdentifier:(id)identifier;
- (BOOL)removeSelectedPaymentOffer:(id)offer associatedWithPassUniqueID:(id)d;
- (BOOL)resetTransactionAuthenticationForTransactionIdentifier:(id)identifier;
- (BOOL)setBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier;
- (BOOL)setCommutePlanReminder:(id)reminder forCommutePlanIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier;
- (BOOL)settingEnabled:(unint64_t)enabled forPassWithUniqueIdentifier:(id)identifier;
- (BOOL)shouldIgnoreFieldWithProperties:(id)properties;
- (BOOL)transactionSourceExistsWithIdentifier:(id)identifier;
- (BOOL)uniqueIDIsRevoked:(id)revoked;
- (BOOL)updateAppletSubcredentials:(id)subcredentials;
- (BOOL)updateAuxiliaryRegistrationRequirement:(id)requirement pass:(id)pass isRegistered:(BOOL)registered;
- (BOOL)updateAuxiliaryRegistrationRequirementsForPass:(id)pass isRegistered:(BOOL)registered;
- (BOOL)updateDisplayTimestamp:(id)timestamp forBarcodeIdentifier:(id)identifier;
- (BOOL)updateNextBarcodeBackgroundFetchDate:(id)date withRetryLevel:(int64_t)level forPassUniqueIdentifier:(id)identifier;
- (BOOL)updatePass:(id)pass withDaemonData:(id)data oldPass:(id *)oldPass fromSource:(int64_t)source;
- (BOOL)updatePaymentPINData:(id)data forTransactionIdentifier:(id)identifier;
- (BOOL)updateTransactionSignatureData:(id)data forTransactionIdentifier:(id)identifier;
- (BOOL)updateUserConfirmationData:(id)data forTransactionIdentifier:(id)identifier;
- (BOOL)verifyIntegrity;
- (PDCloudStoreNotificationCoordinator)cloudStoreCoordinator;
- (PDDatabaseManager)initWithURL:(id)l delegate:(id)delegate report:(id *)report;
- (PDDatabaseManagerDelegate)delegate;
- (PDDatabaseManagerNotificationServicesDelegate)notificationServicesDelegate;
- (PDDatabaseManagerPaymentServicesDelegate)paymentServicesDelegate;
- (PDDatabaseManagerWebServicesDelegate)webServicesDelegate;
- (id)_activeSecureElementPassPredicate;
- (id)_candidatePassesOfStyle:(int64_t)style matchingFurtherPredicate:(id)predicate;
- (id)_databaseNotificationService:(id)service;
- (id)_databaseWebService:(id)service;
- (id)_datedPassPredicate;
- (id)_dbPaymentApplicationWithDPANIdentifier:(id)identifier;
- (id)_deviceIdentifierForExistingServiceURL:(id)l registrationURL:(id)rL;
- (id)_insertContainerDatabaseForContainerDatabase:(id)database;
- (id)_insertOrUpdatePaymentTransaction:(id)transaction transactionSourceIdentifier:(id)identifier transactionArchive:(id)archive originDeviceID:(id)d insertionMode:(unint64_t)mode performTruncation:(BOOL)truncation insertedTransaction:(BOOL *)insertedTransaction;
- (id)_locatedCandidatePassesOfStyle:(int64_t)style matchingFurtherPredicate:(id)predicate;
- (id)_locatedPredicate;
- (id)_messageServiceForPass:(id)pass;
- (id)_notificationServiceForPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL;
- (id)_passPredicateForRequest:(id)request;
- (id)_passTypeForPass:(id)pass;
- (id)_passWithPaymentApplication:(id)application;
- (id)_passesFilteredByAutomaticallyPresentPassEnabled:(id)enabled;
- (id)_paymentNetworkIdentifiersForPaymentNetworks:(id)networks;
- (id)_predicateForActiveVPAN;
- (id)_predicateForCardType:(int64_t)type;
- (id)_predicateForPassTypes:(unint64_t)types;
- (id)_predicateForStyle:(int64_t)style;
- (id)_predicateForStyles:(unint64_t)styles;
- (id)_predicateForType:(unint64_t)type;
- (id)_predicateMatchingPassesForWebService:(id)service;
- (id)_primaryPaymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)_readerIDPriorityForPasses:(id)passes readerID:(id)d;
- (id)_recomputedPaymentBalanceForIdentifier:(id)identifier value:(id)value currency:(id)currency exponent:(int64_t)exponent unitDictionary:(id)dictionary;
- (id)_registeredPass:(id)pass;
- (id)_registeredPasses:(id)passes;
- (id)_secureElementPredicateForRequest:(id)request;
- (id)_startOfTimeBlockForUnit:(unint64_t)unit inCalendar:(id)calendar fromDate:(id)date forward:(BOOL)forward;
- (id)_transactionServiceForPass:(id)pass;
- (id)_transitPredicate;
- (id)_unlocatedPredicate;
- (id)_validPassPredicate;
- (id)_webServiceForPass:(id)pass passType:(id)type;
- (id)accessUserActivitySignalsForCollectionInterval:(id)interval;
- (id)accountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type limit:(unint64_t)limit;
- (id)accountEndpointMetadataForAccountIdentifier:(id)identifier endpoint:(unint64_t)endpoint;
- (id)accountEnhancedMerchantBehaviorForAccountIdentifier:(id)identifier;
- (id)accountEnhancedMerchantForPrivateIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)accountEnhancedMerchantsForAccountIdentifier:(id)identifier;
- (id)accountEntityOrderingsForAccountIdentifier:(id)identifier entityType:(unint64_t)type;
- (id)accountEventWithIdentifier:(id)identifier;
- (id)accountIdentifierWithPreviousAccountIdentifier:(id)identifier;
- (id)accountPromotionBehaviorForAccountIdentifier:(id)identifier;
- (id)accountPromotionCompletionStepsForProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)accountPromotionForProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)accountPromotionsForAccountIdentifier:(id)identifier;
- (id)accountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)accountUserForAccountWithIdentifier:(id)identifier handle:(id)handle;
- (id)accountUserWithAltDSID:(id)d accountIdentifier:(id)identifier;
- (id)accountUserWithTransactionSourceIdentifier:(id)identifier;
- (id)accountUsersForAccountWithIdentifier:(id)identifier;
- (id)accountUsersForAccountWithIdentifier:(id)identifier accessLevel:(unint64_t)level;
- (id)accountWithIdentifier:(id)identifier;
- (id)accountWithTransactionSourceIdentifier:(id)identifier;
- (id)accountsWithIdentifiers:(id)identifiers;
- (id)activeFlights;
- (id)activeOrScheduledFlights;
- (id)activeOrStaleFlights;
- (id)allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:(id)identifier;
- (id)allSelectedPaymentOfferAssociatedWithPassUniqueID:(id)d;
- (id)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier;
- (id)ambiguousTransactionWithServiceIdentifier:(id)identifier;
- (id)anyEligiblePaymentOfferRewardsCriteriaForPass:(id)pass;
- (id)appleBalancePromotionForAccountIdentifier:(id)identifier;
- (id)appletSubcredentialForSharedCredentialWithIdentifier:(id)identifier;
- (id)appletSubcredentialWithIdentifier:(id)identifier;
- (id)associatedAccountIdentifierForPassWithUniqueIdentifier:(id)identifier;
- (id)auxiliaryItemIdentifiersForPassUniqueIdentifier:(id)identifier;
- (id)balanceReminderThresholdForBalanceIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier;
- (id)broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:(id)identifier transactionAccountIdentifier:(id *)accountIdentifier transactionAccountType:(int64_t *)type transactionAltDSID:(id *)d;
- (id)candidatePassWithUniqueIdentifier:(id)identifier;
- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type;
- (id)cloudStoreContainerChangeEventWithIdentifier:(id)identifier;
- (id)cloudStoreRecordWithRecordName:(id)name recordType:(id)type inCloudStoreZone:(id)zone;
- (id)cloudStoreZonesForContainerDatabase:(id)database;
- (id)cloudStoreZonesForContainerDatabaseWithName:(id)name scope:(int64_t)scope;
- (id)commutePlanReminderForCommutePlanIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier;
- (id)contactlessAccessPaymentPassesWithTCI:(id)i readerId:(id)id;
- (id)creditStatementWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)creditStatementWithIdentifier:(id)identifier accountIdentifiers:(id)identifiers;
- (id)databaseSubscriptionForContainerDatabase:(id)database;
- (id)dbPeerPaymentPreferences;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)deleteAppleBalancePromotionForAccountWithIdentifier:(id)identifier;
- (id)deletePaymentOfferEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type;
- (id)deviceSecureElementPassUniqueIDs;
- (id)deviceSpecificPaymentApplications;
- (id)discoveryItemWithIdentifier:(id)identifier;
- (id)discoveryNotificationWithIdentifier:(id)identifier;
- (id)displayProfileForPassWithUniqueIdentifier:(id)identifier;
- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)identifiers calendar:(id)calendar type:(unint64_t)type limit:(int64_t)limit;
- (id)engagementMessageWithIdentifier:(id)identifier;
- (id)evaluatedPolicyDomainStateForDPANIdentifier:(id)identifier;
- (id)featureApplicationWithIdentifier:(id)identifier;
- (id)fetchDeviceEnviromentForClient:(int64_t)client andCompareToCurrentEnvironment:(id)environment didChange:(BOOL *)change;
- (id)fetchTimestampForCloudStore:(id)store containerDatabase:(id)database;
- (id)firstValidBarcodeCredentialForDPANIdentifier:(id)identifier;
- (id)flightForPassWithUniqueID:(id)d;
- (id)flightWithIdentifier:(id)identifier;
- (id)flightsWithOperatorAirlineCode:(id)code operatorFlightNumber:(unint64_t)number originalDepartureDate:(id)date;
- (id)identityPassCredentialPropertiesForIdentityPasses;
- (id)identityPassCredentialPropertiesForPassUniqueIdentifier:(id)identifier;
- (id)identityPassUniqueIDsOfTypes:(id)types;
- (id)identityPassesOfTypes:(id)types;
- (id)identityPassesWithIssuingCountryCode:(id)code;
- (id)inStoreTopUpTokenForAccountIdentifier:(id)identifier;
- (id)insertOrUpdateAccount:(id)account;
- (id)insertOrUpdateAccountEndpointMetadata:(id)metadata;
- (id)insertOrUpdateAccountStatementMetadata:(id)metadata;
- (id)insertOrUpdateAccountUser:(id)user forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdateAccountUsers:(id)users forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdateAppleBalancePromotion:(id)promotion forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:(id)dirty;
- (id)insertOrUpdateDiscoveryNotification:(id)notification;
- (id)insertOrUpdateFeatureApplication:(id)application;
- (id)insertOrUpdateFlight:(id)flight forPassUniqueID:(id)d;
- (id)insertOrUpdateFlight:(id)flight forPassUniqueIDs:(id)ds senderAddresses:(id)addresses;
- (id)insertOrUpdateFlight:(id)flight senderAddress:(id)address;
- (id)insertOrUpdateFlightSubscription:(id)subscription;
- (id)insertOrUpdateInStoreTopUpToken:(id)token forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdateLiveRenderEnabled:(BOOL)enabled forPassWithUniqueIdentifier:(id)identifier;
- (id)insertOrUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier;
- (id)insertOrUpdatePaymentMessage:(id)message forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation;
- (id)insertOrUpdatePaymentOfferConfirmationRecord:(id)record;
- (id)insertOrUpdatePaymentOfferEndpointMetadata:(id)metadata;
- (id)insertOrUpdatePaymentSetupFeature:(id)feature;
- (id)insertOrUpdatePaymentTransaction:(id)transaction withPassUniqueIdentifier:(id)identifier paymentApplication:(id)application originDeviceID:(id)d insertionMode:(unint64_t)mode performTruncation:(BOOL)truncation insertedTransaction:(BOOL *)insertedTransaction;
- (id)insertOrUpdatePeerPaymentAccount:(id)account;
- (id)insertOrUpdatePeerPaymentPreferences:(id)preferences;
- (id)insertOrUpdatePhysicalCard:(id)card forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdatePhysicalCards:(id)cards forAccountWithIdentifier:(id)identifier;
- (id)insertOrUpdatePushProvisioningSharingMetadata:(id)metadata;
- (id)insertOrUpdateRateLimitTokens:(id)tokens;
- (id)insertOrUpdateRule:(id)rule;
- (id)insertOrUpdateSelectedPaymentOfferAssociatedWithPass:(id)pass selectedOffer:(id)offer;
- (id)insertOrUpdateSharedAccountCloudStore:(id)store accountIdentifier:(id)identifier;
- (id)insertOrUpdateTransactionReceipt:(id)receipt;
- (id)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)identifiers accountIdentifier:(id)identifier redeemed:(BOOL)redeemed withRedemptionType:(unint64_t)type startDate:(id)date endDate:(id)endDate;
- (id)issuerInstallmentTransactionsForPassUniqueIdentifier:(id)identifier;
- (id)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)identifiers paymentHashes:(id)hashes;
- (id)lastDeletionDateForWebService:(id)service;
- (id)lastRegionErrorForTransaction:(id)transaction;
- (id)lastUpdatedDateForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (id)lastUpdatedTagForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (id)lastUpdatedTagForWebService:(id)service;
- (id)lastUsedBarcodeIdentifierForDPANIdentifier:(id)identifier;
- (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)identifier accountType:(unint64_t)type maxProcessedAttemptCount:(int64_t)count;
- (id)locatedCandidatePassesOfStyle:(int64_t)style;
- (id)locatedDatelessCandidatePassesOfStyle:(int64_t)style;
- (id)locationsByUniqueIDInBoundingBoxOfRegion:(id)region;
- (id)mapsBrandWithIdentifier:(unint64_t)identifier;
- (id)mapsMerchantWithIdentifier:(unint64_t)identifier;
- (id)markStatementMetadataItems:(id)items asProcessed:(BOOL)processed error:(unint64_t)error statementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)maxIngestedDateForRequest:(id)request;
- (id)merchantForPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier;
- (id)messageServiceForPaymentApplication:(id)application;
- (id)messagesForPassWithUniqueIdentifier:(id)identifier;
- (id)minIngestedDateForRequest:(id)request;
- (id)nextFlightStaleDate;
- (id)nextPossibleCloudStoreShareOperationForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle;
- (id)nextPossibleFetchDateForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier;
- (id)nextStartOfYearFromDate:(id)date;
- (id)notificationServiceOfType:(unint64_t)type forPassWithUniqueIdentifier:(id)identifier;
- (id)passAnnotationsForPassUniqueIdentifier:(id)identifier;
- (id)passLiveRenderForPassUniqueIdentifier:(id)identifier;
- (id)passUniqueIDsForFlightIdentifiers:(id)identifiers;
- (id)passUniqueIDsOfType:(unint64_t)type;
- (id)passUniqueIdentifierForMostRecentVisibleTransaction;
- (id)passUniqueIdentifierForTransactionSourceIdentifier:(id)identifier includingAccountUsers:(BOOL)users;
- (id)passUniqueIdentifierForTransactionWithIdentifier:(id)identifier;
- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type;
- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier;
- (id)passUniqueIdentifierWithAssociatedAccountIdentifier:(id)identifier;
- (id)passUniqueIdentifierWithCredentialIdentifier:(id)identifier;
- (id)passUniqueIdentifierWithPaymentApplication:(id)application;
- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)identifier;
- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)identifier subcredentialIdentifier:(id)subcredentialIdentifier;
- (id)passUniqueIdentifierWithPrimaryAccountIdentifier:(id)identifier;
- (id)passUpdateContextForSerialNumber:(id)number webService:(id)service;
- (id)passWithPassTypeID:(id)d serialNumber:(id)number;
- (id)passWithPaymentApplication:(id)application;
- (id)passWithPaymentApplicationIdentifier:(id)identifier;
- (id)passWithPaymentApplicationIdentifier:(id)identifier secureElementIdentifiers:(id)identifiers;
- (id)passWithPrimaryAccountIdentifier:(id)identifier;
- (id)passWithProvisioningCredentialHash:(id)hash;
- (id)passWithUniqueIdentifier:(id)identifier;
- (id)passWithVPANIdentifier:(id)identifier;
- (id)passes;
- (id)passesEnabledForValuedAddedServicesWithAutomaticSelection:(BOOL)selection;
- (id)passesForInAppPaymentOnNetworks:(id)networks issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service;
- (id)passesForNonWebInAppPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service;
- (id)passesForNotificationService:(id)service;
- (id)passesForPaymentType:(unint64_t)type;
- (id)passesForPaymentTypes:(id)types;
- (id)passesForRequest:(id)request;
- (id)passesForWebPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities webService:(id)service issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request;
- (id)passesForWebService:(id)service;
- (id)passesOfCardType:(int64_t)type;
- (id)passesOfStyles:(unint64_t)styles;
- (id)passesOfType:(unint64_t)type;
- (id)passesSupportingIssuerBinding;
- (id)passesSupportingIssuerBindingWithPayloadState:(unint64_t)state;
- (id)passesWithActiveVPAN;
- (id)passesWithISO18013Credentials;
- (id)passesWithNextBackgroundFetchDateBeforeDate:(id)date;
- (id)passesWithPairedReaderIdentifier:(id)identifier;
- (id)passesWithPassTypeID:(id)d;
- (id)passesWithPassTypeIdentifierHash:(id)hash;
- (id)passesWithPassTypeIdentifierHash:(id)hash andAssociatedPassTypeIdentifierHash:(id)identifierHash;
- (id)passesWithPassTypeIdentifierHashes:(id)hashes automaticSelectionOnly:(BOOL)only;
- (id)paymentApplicationForTransactionSourceIdentifier:(id)identifier;
- (id)paymentApplicationIdentifierForTransactionSourceIdentifier:(id)identifier;
- (id)paymentApplicationWithDPANIdentifier:(id)identifier;
- (id)paymentApplicationWithPassUniqueIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier paymentApplicationIdentifier:(id)applicationIdentifier;
- (id)paymentApplicationWithVPANIdentifier:(id)identifier;
- (id)paymentApplicationsForNotificationService:(id)service;
- (id)paymentApplicationsForPassUniqueIdentifier:(id)identifier;
- (id)paymentBalanceWithIdentifier:(id)identifier forPassUniqueIdentifier:(id)uniqueIdentifier;
- (id)paymentFundingSourceForIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (id)paymentFundingSourcesForAccountIdentifier:(id)identifier;
- (id)paymentPassesEligibleForDefaultCardSelection;
- (id)paymentPassesPendingActivation;
- (id)paymentPassesWithAssociatedPassTypeIdentifierHashes:(id)hashes automaticSelectionOnly:(BOOL)only;
- (id)paymentPassesWithIssuerCountryCodes:(id)codes;
- (id)paymentSetupFeatureWithIdentifier:(id)identifier;
- (id)paymentTransactionForIdentifier:(id)identifier;
- (id)paymentTransactionWithIdentifier:(id)identifier;
- (id)paymentTransactionsWithFullPaymentHashes:(id)hashes transactionSourceIdentifiers:(id)identifiers;
- (id)peerPaymentAccount;
- (id)peerPaymentAccountForTransactionSourceIdentifier:(id)identifier;
- (id)peerPaymentAccountsWithIdentifiers:(id)identifiers;
- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier excludingPaymentMode:(unint64_t)mode excludingAccountState:(unint64_t)state startDate:(id)date endDate:(id)endDate;
- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
- (id)peerPaymentCounterpartImageData;
- (id)peerPaymentCounterpartImageDataForTransactionWithIdentifier:(id)identifier;
- (id)peerPaymentCounterpartImageDataWithIdentifier:(id)identifier;
- (id)peerPaymentEncryptionCertificateForDestination:(unint64_t)destination;
- (id)peerPaymentPendingRequestsForPeerPaymentAccount;
- (id)peerPaymentPendingRequestsForRequestTokens:(id)tokens;
- (id)peerPaymentPreferences;
- (id)peerPaymentRecurringPaymentWithIdentifier:(id)identifier;
- (id)peerPaymentRecurringPayments;
- (id)peerPaymentRecurringPaymentsWithType:(unint64_t)type;
- (id)peerPaymentUserInfo;
- (id)physicalCardsForAccountWithIdentifier:(id)identifier;
- (id)placedHoldsWithAccountIdentifier:(id)identifier;
- (id)previousAccountIdentifierForAccountIdentifier:(id)identifier;
- (id)primaryAccountIdentifierForAssociatedAccountIdentifier:(id)identifier;
- (id)primaryAccountIdentifierForTransactionSourceIdentifier:(id)identifier;
- (id)primaryPaymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)primarySubcredentialIdentifiersForPassUniqueIdentifier:(id)identifier;
- (id)primaryTransactionSourceIdentifierForAccountUserAltDSID:(id)d accountIdentifier:(id)identifier;
- (id)pushEnabledPassTypeIDs;
- (id)rateLimitTokensForBundleIdentifier:(id)identifier operation:(int64_t)operation;
- (id)regionsForTransaction:(id)transaction localeIdentifier:(id)identifier;
- (id)removeMapsDataForTransactionWithIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier issueReportIdentifier:(id)reportIdentifier;
- (id)removePeerPaymentAccount;
- (id)removePeerPaymentPreferences;
- (id)replacePhysicalCards:(id)cards forAccountWithIdentifier:(id)identifier;
- (id)retrieveDirtyAppletStates;
- (id)scheduledPaymentsWithAccountIdentifier:(id)identifier includeFailedRecurringPayments:(BOOL)payments;
- (id)secureElementPassPrimaryAccountIdentifiers;
- (id)secureElementPassSerialNumbers;
- (id)secureElementPassesForRequest:(id)request;
- (id)selectedPaymentOfferAssociatedWithPassUniqueID:(id)d selectedPaymentOfferType:(unint64_t)type storageType:(unint64_t)storageType;
- (id)selectedPaymentOfferForPassUniqueID:(id)d offerIdentifier:(id)identifier type:(unint64_t)type;
- (id)selectedPaymentOfferForPassUniqueID:(id)d sessionIdentifier:(id)identifier type:(unint64_t)type;
- (id)serviceIdentifierForTransactionIdentifier:(id)identifier accountIdentifier:(id *)accountIdentifier accountType:(int64_t *)type;
- (id)setAccounts:(id)accounts;
- (id)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier;
- (id)setDiscoveryItems:(id)items;
- (id)setFeatureApplications:(id)applications;
- (id)setFeatureApplications:(id)applications forAccountIdentifier:(id)identifier;
- (id)setPaymentSetupFeatures:(id)features;
- (id)setScheduledPayments:(id)payments forAccount:(id)account;
- (id)setTransfers:(id)transfers forAccount:(id)account;
- (id)sharedAccountCloudStoreForAccountIdentifier:(id)identifier;
- (id)subcredentialIdentifiersByAIDForSecureElementIdentifiers:(id)identifiers;
- (id)subscriptionForFlightWithIdentifier:(id)identifier;
- (id)syncablePassUniqueIDs;
- (id)tagLastUpdateDateForWebService:(id)service;
- (id)tagsForTransactionWithIdentifier:(id)identifier;
- (id)tapToRadarPromptWithReason:(id)reason;
- (id)tokenDataForCloudStore:(id)store containerDatabase:(id)database;
- (id)transactionArchiveForCounterpartImageData:(id)data;
- (id)transactionArchiveForPendingRequest:(id)request;
- (id)transactionArchiveForRecurringPayment:(id)payment;
- (id)transactionArchiveForTransactionIdentifier:(id)identifier;
- (id)transactionArchiveForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier;
- (id)transactionAuthenticationResultForTransactionIdentifier:(id)identifier;
- (id)transactionCountByPeriodForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit includePurchaseTotal:(BOOL)total;
- (id)transactionReceiptWithUniqueID:(id)d;
- (id)transactionServiceForPaymentApplication:(id)application;
- (id)transactionSourceIdentifierForAccountIdentifier:(id)identifier;
- (id)transactionSourceIdentifierForAccountUserAltDSID:(id)d accountIdentifier:(id)identifier;
- (id)transactionSourceIdentifierForPeerPaymentAccountIdentifier:(id)identifier;
- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type;
- (id)transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:(id)identifier;
- (id)transactionSourceIdentifiersForPassUniqueIdentifier:(id)identifier;
- (id)transactionWithReferenceIdentifier:(id)identifier;
- (id)transactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type;
- (id)transactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier;
- (id)transactionWithTransactionIdentifier:(id)identifier;
- (id)transactionsWithoutRegionMatchingMapsMerchant:(id)merchant limit:(unint64_t)limit;
- (id)transitPasses;
- (id)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application;
- (id)unexpiredPassesOrderedByGroup;
- (id)unlocatedCandidatePassesOfStyle:(int64_t)style;
- (id)unregisteredAuxiliaryCapabilityRequirementsForPass:(id)pass;
- (id)unsyncedPassesInContainer:(id)container;
- (id)updateDiscoveryItem:(id)item;
- (id)updateDiscoveryItemsWithDialogRequestSourcedItems:(id)items;
- (id)updateDiscoveryItemsWithRemoteItems:(id)items;
- (id)updateDiscoveryItemsWithRuleResults:(id)results;
- (id)updateDiscoveryNotifications:(id)notifications;
- (id)updateDiscoveryNotificationsForRuleResults:(id)results;
- (id)updateDiscoveryNotificationsWithRemoteNotifications:(id)notifications;
- (id)updateEngagementMessage:(id)message;
- (id)updateEngagementMessages:(id)messages;
- (id)updateEngagementMessagesForRuleResults:(id)results;
- (id)updateEngagementMessagesWithRemoteMessages:(id)messages;
- (id)updateFlightWithIdentifier:(id)identifier usingUpdateContent:(id)content;
- (id)updateMerchant:(id)merchant forTransaction:(id)transaction passUniqueIdentifier:(id)identifier;
- (id)updateRedemptionType:(unint64_t)type forPaymentTransaction:(id)transaction sourceIdentifier:(id)identifier;
- (id)updateRules:(id)rules;
- (id)updateStatementMetadataWithReport:(id)report reportDate:(id)date;
- (id)updateSuppressBehavior:(unint64_t)behavior forPaymentTransaction:(id)transaction sourceIdentifier:(id)identifier;
- (id)updatedPassAnnotationsForPasses:(id)passes;
- (id)userActivitySignalsForCollectionInterval:(id)interval;
- (id)validNFCBarcodePassUniqueIDs;
- (id)valueAddedMerchantWithIdentifier:(id)identifier;
- (id)valueAddedServiceTransactionWithIdentifier:(id)identifier;
- (id)webServiceForPass:(id)pass;
- (id)webServicesForPassTypeID:(id)d;
- (int64_t)_accountPIDForEndpointBackoffType:(unint64_t)type accountIdentifier:(id)identifier;
- (int64_t)barcodeBackgroundFetchRetryLevelForPassUniqueIdentifier:(id)identifier;
- (int64_t)cloudStoreContainerChangeEventCount;
- (int64_t)indexingMetadataVersionForType:(unint64_t)type;
- (int64_t)primaryPaymentApplicationStateForPassUniqueIdentifier:(id)identifier;
- (int64_t)spotlightIndexingVersion;
- (unint64_t)countActiveSecureElementPasses;
- (unint64_t)countOfPassesForRequest:(id)request;
- (unint64_t)countPassesOfType:(unint64_t)type;
- (unint64_t)countPassesPreventingWalletDeletion;
- (unint64_t)indexingMetadataStatusForType:(unint64_t)type;
- (unint64_t)isAuxiliaryRegistrationRequirementRegistered:(id)registered pass:(id)pass;
- (unint64_t)numberOfBarcodeCredentialsDisplayedAfterDate:(id)date forDPANIdentifier:(id)identifier;
- (unint64_t)numberOfPassesOfType:(id)type;
- (unint64_t)numberOfRealPasses;
- (unint64_t)numberOfTransactionReceipts;
- (unint64_t)numberOfValidBarcodeCredentialsForDPANIdentifier:(id)identifier;
- (unint64_t)passTypeForPassUniqueIdentifier:(id)identifier;
- (unint64_t)paymentOfferCriteriaTypeForCriteriaIdentifier:(id)identifier;
- (unint64_t)registrationStatusForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (unint64_t)transactionSourceTypeForTransactionSourceIdentifier:(id)identifier;
- (void)_applyDemoFelicaAppletStateToPass:(id)pass;
- (void)_applyDemoPaymentApplicationToPass:(id)pass;
- (void)_applyDemoPaymentTransactionsToPass:(id)pass;
- (void)_createDatabaseAtURL:(id)l report:(id *)report;
- (void)_deleteNotificationServiceIfOrphaned:(id)orphaned;
- (void)_deletePassTypeIfOrphaned:(id)orphaned;
- (void)_deleteWebServiceIfOrphaned:(id)orphaned;
- (void)_migrateObjectSettingsWithSafeHavenArchiveURL:(id)l;
- (void)_registerPasses:(id)passes;
- (void)_setObjectSettingsManager:(id)manager;
- (void)_trimCatalog:(id)catalog andBuildPassPredicate:(id *)predicate;
- (void)_updateCloudStoreWithTransactions:(id)transactions transactionSourceIdentifier:(id)identifier;
- (void)_updatePaymentBalancesAndPlansForTransitAppletState:(id)state passUniqueIdentifier:(id)identifier paymentApplicationPID:(int64_t)d unitDictionary:(id)dictionary;
- (void)_validateDefaultPaymentPassOrdering;
- (void)accessDatabaseUsingBlock:(id)block;
- (void)addCloudStoreContainerChangeEvent:(id)event;
- (void)addPeerPaymentAccountIdentifierToDatabaseTransactions;
- (void)archiveMessageWithIdentifier:(id)identifier;
- (void)associateTransaction:(id)transaction toRegion:(id)region;
- (void)computeExtraneousUniqueIDs:(id *)ds missingUniqueIDs:(id *)iDs;
- (void)computeTransactionReceiptExtraneousUniqueIDs:(id *)ds missingUniqueIDs:(id *)iDs removedUniqueIDs:(id *)uniqueIDs;
- (void)deleteAccountEndpointMetadataForAccountIdentifier:(id)identifier endpoint:(unint64_t)endpoint;
- (void)deleteAccountEnhancedMerchant:(id)merchant accountIdentifier:(id)identifier;
- (void)deleteAccountEnhancedMerchantBehaviorForAccountIdentifier:(id)identifier;
- (void)deleteAccountEntityOrderingsForAccountIdentifier:(id)identifier entityType:(unint64_t)type;
- (void)deleteAccountPromotion:(id)promotion accountIdentifier:(id)identifier;
- (void)deleteAccountPromotionBehaviorForAccountIdentifier:(id)identifier;
- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (void)deleteAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier;
- (void)deleteAllMessagesFromPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:(id)identifier;
- (void)deleteAllPaymentBalancesForPassUniqueIdentifier:(id)identifier;
- (void)deleteAllPeerPaymentCounterpartImageData;
- (void)deleteAllPeerPaymentEncryptionCertificates;
- (void)deleteAllPeerPaymentRecurringPayments;
- (void)deleteAllTransactionsFromTransactionSourceIdentifiers:(id)identifiers;
- (void)deleteAndRecreateDatabase;
- (void)deleteAssociatedFlightForPassUniqueID:(id)d;
- (void)deleteDatabase;
- (void)deleteDirtyAppletStatesForTransitAppletStateDirty:(id)dirty;
- (void)deleteFlightSubscriptionWithChannelIdentifier:(id)identifier;
- (void)deleteFlightWithIdentifier:(id)identifier;
- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)identifier;
- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)d;
- (void)deleteMerchantForPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier;
- (void)deletePassWithUniqueIdentifier:(id)identifier;
- (void)deletePaymentTransactionWithIdentifier:(id)identifier;
- (void)deletePaymentTransactionsWithIdentifiers:(id)identifiers;
- (void)deletePeerPaymentCounterpartImageDataForIdentifier:(id)identifier;
- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount;
- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens;
- (void)deletePeerPaymentRecurringPaymentsForIdentifiers:(id)identifiers;
- (void)deletePeerPaymentUserInfo;
- (void)deleteRetryBackoffForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier;
- (void)deleteRetryCloudStoreShareOperationBackoffForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle;
- (void)deleteSharesForFlightWithIdentifier:(id)identifier senderAddress:(id)address;
- (void)deleteSubscriptionForFlightWithIdentifier:(id)identifier;
- (void)deleteTransactionReceiptWithUniqueID:(id)d;
- (void)dispatchDelegateCallback:(id)callback;
- (void)enumerateOrganizationNamesForPassTypeID:(id)d withHandler:(id)handler;
- (void)enumeratePassUpdateContextsForWebService:(id)service withHandler:(id)handler;
- (void)failedToAssociateTransactionToRegion:(id)region error:(id)error;
- (void)fieldMetadataForFieldWithProperties:(id)properties withExpressPassManager:(id)manager completion:(id)completion;
- (void)generateDemoTransactionsForAllPaymentPasses;
- (void)getCatalog:(id *)catalog passes:(id *)passes dbStates:(id *)states ofPassTypes:(unint64_t)types limitResults:(BOOL)results;
- (void)increaseRetryBackoffLevelForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier;
- (void)increaseRetryCloudStoreShareOperationBackoffLevelForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle;
- (void)insertAccountBalance:(id)balance forAccountIdentifier:(id)identifier;
- (void)insertDynamicAssociatedDomains:(id)domains;
- (void)insertMerchant:(id)merchant forPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier;
- (void)insertOrUpdateAccountEnhancedMerchant:(id)merchant accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountEnhancedMerchantBehavior:(id)behavior accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountEntityOrderings:(id)orderings accountIdentifier:(id)identifier entityType:(unint64_t)type;
- (void)insertOrUpdateAccountPromotion:(id)promotion accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountPromotionBehavior:(id)behavior accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier;
- (void)insertOrUpdateAccountTaxForms:(id)forms forAccountIdentifier:(id)identifier;
- (void)insertOrUpdateCloudStoreRecords:(id)records inCloudStoreZone:(id)zone;
- (void)insertOrUpdateCloudStoreZone:(id)zone containerDatabase:(id)database;
- (void)insertOrUpdateCreditStatements:(id)statements forAccountIdentifier:(id)identifier;
- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentMemo:(id)memo counterpartImageDataIdentifier:(id)identifier forTransactionWithServiceIdentifier:(id)serviceIdentifier completion:(id)completion;
- (void)insertOrUpdatePeerPaymentCounterpartImageData:(id)data;
- (void)insertOrUpdatePeerPaymentEncryptionCertificate:(id)certificate;
- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests;
- (void)insertOrUpdatePeerPaymentRecurringPayments:(id)payments;
- (void)insertOrUpdatePeerPaymentUserInfo:(id)info;
- (void)insertOrUpdateSavingsAccountStatements:(id)statements forAccountIdentifier:(id)identifier;
- (void)insertOrUpdateTransactionsForInstallmentPayments:(id)payments installmentPlan:(id)plan accountIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier transactionProcessingBlock:(id)block;
- (void)insertOrUpdateValueAddedMerchant:(id)merchant;
- (void)insertOrUpdateValueAddedServiceTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentTransaction:(id)paymentTransaction;
- (void)introduceDuplicateUniqueID;
- (void)introduceExtraneousUniqueID;
- (void)introduceMissingUniqueID;
- (void)markAllIndexedContentForReindexingOfType:(unint64_t)type;
- (void)markAllIndexedContentForVerifyingOfType:(unint64_t)type;
- (void)markAllPassesAsUnsyncedInContainer:(id)container;
- (void)markAllVerifyingContentForReindexingOfType:(unint64_t)type;
- (void)markPassAsSynced:(id)synced;
- (void)migrateObjectSettings;
- (void)noteObjectSharedWithUniqueID:(id)d;
- (void)prepareToDeletePassWithUniqueIdentifier:(id)identifier;
- (void)recomputeBalancesForPaymentPass:(id)pass;
- (void)recomputeCategoryVisualizationMagnitudesForPassUniqueID:(id)d withStyle:(int64_t)style;
- (void)removeCloudStoreZone:(id)zone containerDatabase:(id)database;
- (void)removeContainerDatabaseForContainerDatabase:(id)database;
- (void)removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:(id)d;
- (void)removeRecordFetchTasks:(id)tasks;
- (void)resetAccountBalancesForAccountIdentifier:(id)identifier;
- (void)resetIndexedContent;
- (void)resolvePendingTransitTransactionAmountsWithPaymentPass:(id)pass;
- (void)setTags:(id)tags toTransactionWithIdentifier:(id)identifier;
- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)device;
- (void)truncatePaymentBalancesForPassUniqueIdentifier:(id)identifier toMaximumEntityCount:(int64_t)count;
- (void)updateAllPeerPaymentRecurringPayments:(id)payments;
- (void)updateAppLaunchToken:(id)token forNotificationService:(id)service;
- (void)updateAppletCommutePlans:(id)plans forPassUniqueIdentifier:(id)identifier paymentApplicationPID:(int64_t)d;
- (void)updateAuthenticationToken:(id)token forNotificationService:(id)service;
- (void)updateCardholderNameFromSafari:(id)safari forVirtualCardWithIdentifier:(id)identifier;
- (void)updateChangeToken:(id)token fetchTimestamp:(id)timestamp forCloudStoreZone:(id)zone inContainerDatabase:(id)database;
- (void)updateDatabaseSubscription:(id)subscription containerDatabase:(id)database;
- (void)updateDateLastUsedBySafari:(id)safari forVirtualCardWithIdentifier:(id)identifier;
- (void)updateDidFinishInitialSync:(BOOL)sync forCloudStoreZone:(id)zone inContainerDatabase:(id)database;
- (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (void)updateImpressionCountsForPromotions:(id)promotions accountIdentifier:(id)identifier;
- (void)updateIndexingMetadataStatus:(unint64_t)status version:(int64_t)version forType:(unint64_t)type;
- (void)updateIngestedDate:(id)date forUniqueID:(id)d;
- (void)updateLastDeletionDate:(id)date forWebService:(id)service;
- (void)updateLastModifiedTag:(id)tag forSerialNumber:(id)number webService:(id)service;
- (void)updateLastPushDate:(id)date frequencyScore:(double)score forPassTypeID:(id)d;
- (void)updateLastUpdateDate:(id)date forPassTypeID:(id)d;
- (void)updateLastUpdatedDate:(id)date forNotificationService:(id)service;
- (void)updateLastUpdatedDate:(id)date forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (void)updateLastUpdatedTag:(id)tag forNotificationService:(id)service;
- (void)updateLastUpdatedTag:(id)tag forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (void)updateLastUpdatedTag:(id)tag forWebService:(id)service;
- (void)updateMapsBrand:(id)brand;
- (void)updateMapsMerchant:(id)merchant;
- (void)updateModifiedSource:(int64_t)source forUniqueID:(id)d;
- (void)updateNFCPayloadState:(unint64_t)state forPassUniqueIdentifier:(id)identifier didChange:(BOOL *)change;
- (void)updateNotificationService:(id)service;
- (void)updatePassAnnotationsForPassWithUniqueIdentifier:(id)identifier withSortingState:(int64_t)state;
- (void)updatePassesWithSyncInformation:(id)information;
- (void)updatePaymentBalances:(id)balances forPassUniqueIdentifier:(id)identifier transactionSequenceNumber:(id)number;
- (void)updatePaymentPlans:(id)plans forPassUniqueIdentifier:(id)identifier;
- (void)updatePeerPaymentMemo:(id)memo forTransactionWithServiceIdentifier:(id)identifier;
- (void)updatePeerPaymentMessageReceivedDate:(id)date forTransactionWithServiceIdentifier:(id)identifier;
- (void)updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:(id)identifiers usingUpdater:(id)updater withHandler:(id)handler;
- (void)updateRecordFetchTask:(id)task;
- (void)updateRegistrationStatus:(unint64_t)status date:(id)date forSerialNumber:(id)number webService:(id)service;
- (void)updateRegistrationStatus:(unint64_t)status forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier;
- (void)updateRequiresMerchantReprocessing:(BOOL)reprocessing forTransactionWithIdentifier:(id)identifier;
- (void)updateRevocationStatus:(BOOL)status forUniqueID:(id)d;
- (void)updateSettings:(unint64_t)settings forObjectWithUniqueIdentifier:(id)identifier;
- (void)updateSettings:(unint64_t)settings forPass:(id)pass;
- (void)updateSettings:(unint64_t)settings forPassWithUniqueIdentifier:(id)identifier;
- (void)updateSpotlightIndexingVersion:(int64_t)version;
- (void)updateSuppressBehavior:(unint64_t)behavior forPaymentTransactions:(id)transactions sourceIdentifier:(id)identifier;
- (void)updateSuppressBehavior:(unint64_t)behavior forTransactionSourceIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier;
- (void)updateTransactionArchive:(id)archive forCounterpartImageData:(id)data;
- (void)updateTransactionArchive:(id)archive forPendingRequest:(id)request;
- (void)updateTransactionArchive:(id)archive forRecurringPayment:(id)payment;
- (void)updateTransitAppletStateWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier forceTransactionGeneration:(BOOL)generation recoverMissingTransactions:(BOOL)transactions balanceLabelDictionary:(id)dictionary unitDictionary:(id)self0 planLabelDictionary:(id)self1 completion:(id)self2;
- (void)updateTransitAppletStateWithStationNames:(id)names forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier;
- (void)updateWebService:(id)service;
- (void)valueAddedMerchantWasPresented:(id)presented;
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
    selfCopy = self;
    sub_1005D4424(database, v6);
  }
}

- (id)paymentPassesPendingActivation
{
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v15[0] = v4;
  v5 = [Pass predicateForPrimaryPaymentApplication:1];
  v15[1] = v5;
  v6 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
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
        uniqueIDs = [v10 uniqueIDs];
        v12 = [uniqueIDs count];

        if (v12)
        {
          v13 = +[NSMutableArray array];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          uniqueIDs2 = [v10 uniqueIDs];
          v15 = [uniqueIDs2 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
                  objc_enumerationMutation(uniqueIDs2);
                }

                v19 = [(PDDatabaseManager *)self passWithUniqueIdentifier:*(*(&v44 + 1) + 8 * i)];
                if (v19)
                {
                  [v13 addObject:v19];
                }
              }

              v16 = [uniqueIDs2 countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v16);
          }

          if ([v13 count])
          {
            v20 = v8;
            firstObject = [v13 firstObject];
            secureElementPass = [firstObject secureElementPass];

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
              if (secureElementPass)
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
  reverseObjectEnumerator = [v37 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  [v29 addObjectsFromArray:allObjects];

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

+ (BOOL)databaseExistsAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  path = [lCopy path];

  LOBYTE(lCopy) = [v4 fileExistsAtPath:path];
  return lCopy;
}

- (PDDatabaseManager)initWithURL:(id)l delegate:(id)delegate report:(id *)report
{
  lCopy = l;
  delegateCopy = delegate;
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
    v11->_databaseURL = lCopy;
    v17 = lCopy;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.passd.databasemanager.delegate", v18);
    delegateQueue = v11->_delegateQueue;
    v11->_delegateQueue = v19;

    v21 = +[FKBankConnectPassUpdateProcessor makeProcessor];
    bankConnectPassUpdateProcessor = v11->_bankConnectPassUpdateProcessor;
    v11->_bankConnectPassUpdateProcessor = v21;

    [(PDDatabaseManager *)v11 _createDatabaseAtURL:v17 report:report];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_createDatabaseAtURL:(id)l report:(id *)report
{
  lCopy = l;
  v7 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v9 = [v7 fileExistsAtPath:path];

  v26 = 0;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDDatabaseManager: loading database...", buf, 2u);
    }

    v11 = sub_1005D3F2C([SQLiteDatabase alloc], lCopy, &v26);
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
    if (!report)
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

  if (self->_database || (v19 = sub_1005D3F1C([SQLiteDatabase alloc], lCopy), v20 = self->_database, self->_database = v19, v20, self->_database))
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
  if (report)
  {
LABEL_37:
    report->var0.var0 = v14;
    report->var0.var1.var1.var0 = v9;
    report->var1.var0 = v23;
    report->var1.var1.var1.var0 = v22;
  }

LABEL_38:
  PKExcludeFileURLFromBackup();
}

- (void)dispatchDelegateCallback:(id)callback
{
  callbackCopy = callback;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100143C30;
  v7[3] = &unk_10083C820;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(delegateQueue, v7);
}

- (PDDatabaseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessDatabaseUsingBlock:(id)block
{
  blockCopy = block;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100143D50;
  v7[3] = &unk_100848450;
  v8 = blockCopy;
  v6 = blockCopy;
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

- (BOOL)passExistsWithUniqueID:(id)d
{
  database = self->_database;
  v4 = [Pass predicateForUniqueID:d];
  v5 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v4];

  return v5;
}

- (BOOL)passExistsWithPassTypeID:(id)d serialNumber:(id)number
{
  database = self->_database;
  numberCopy = number;
  v7 = [Pass predicateForPassTypeIdentifier:d];
  v13[0] = v7;
  v8 = [Pass predicateForSerialNumber:numberCopy];

  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v11 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v10];

  return v11;
}

- (BOOL)passExistsWithPassType:(unint64_t)type
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForType:type];
  v5 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v4];

  return v5;
}

- (BOOL)passExistsWithPaymentType:(unint64_t)type
{
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [(PDDatabaseManager *)self _predicateForType:1];
  v15[0] = v6;
  v7 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v8 = [Pass predicateForPaymentApplicationStates:v7];
  v15[1] = v8;
  v9 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v15[2] = v9;
  v10 = [Pass predicateForPaymentType:type];
  v15[3] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:4];

  database = self->_database;
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  LOBYTE(database) = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v13];

  return database;
}

- (unint64_t)countPassesOfType:(unint64_t)type
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
    v8 = [(PDDatabaseManager *)self _predicateForType:type];
    v9 = [(SQLiteEntity *)Pass countInDatabase:v7 predicate:v8];
  }

  return v9;
}

- (unint64_t)countActiveSecureElementPasses
{
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v17[0] = v4;
  v5 = [NSSet setWithObjects:&off_1008A2DE0, &off_1008A2DF8, 0];
  v6 = [Pass predicateForPaymentApplicationStates:v5];
  v7 = [SQLiteCompoundPredicate negatedPredicate:v6];
  v17[1] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
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

- (unint64_t)numberOfPassesOfType:(id)type
{
  typeCopy = type;
  database = self->_database;
  v6 = [Pass predicateForPassTypeIdentifier:typeCopy];
  if ([(SQLiteEntity *)Pass countInDatabase:database predicate:v6]< 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = self->_database;
    v8 = [Pass predicateForPassTypeIdentifier:typeCopy];
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

- (id)passesWithPassTypeID:(id)d
{
  database = self->_database;
  v5 = [Pass predicateForPassTypeIdentifier:d];
  v6 = [Pass passesInDatabase:database matchingPredicate:v5];

  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (BOOL)passExistsWithPassTypeIdentifierHash:(id)hash
{
  selfCopy = self;
  database = self->_database;
  v5 = [Pass predicateForPassTypeIdentifierHash:hash];
  v10[0] = v5;
  _validPassPredicate = [(PDDatabaseManager *)selfCopy _validPassPredicate];
  v10[1] = _validPassPredicate;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  LOBYTE(selfCopy) = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v8];

  return selfCopy;
}

- (id)passesWithPassTypeIdentifierHash:(id)hash
{
  v4 = [Pass predicateForPassTypeIdentifierHash:hash];
  v11[0] = v4;
  _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
  v11[1] = _validPassPredicate;
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [Pass passesInDatabase:self->_database matchingPredicate:v7];
  v9 = [(PDDatabaseManager *)self _registeredPasses:v8];

  return v9;
}

- (id)passesWithPassTypeIdentifierHashes:(id)hashes automaticSelectionOnly:(BOOL)only
{
  if (hashes)
  {
    onlyCopy = only;
    v6 = [hashes pk_arrayByApplyingBlock:&stru_100848490];
    v7 = [SQLiteCompoundPredicate predicateWithProperty:@"pass_type.identifier_hash" equalToValues:v6];
    v20[0] = v7;
    _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
    v20[1] = _validPassPredicate;
    v9 = [NSArray arrayWithObjects:v20 count:2];

    database = self->_database;
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
    v12 = [Pass passesInDatabase:database matchingPredicate:v11];

    if (onlyCopy)
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

- (id)passesWithPassTypeIdentifierHash:(id)hash andAssociatedPassTypeIdentifierHash:(id)identifierHash
{
  identifierHashCopy = identifierHash;
  v7 = [Pass predicateForPassTypeIdentifierHash:hash];
  v8 = [Pass predicateForAssociatedPassTypeIdentifierHash:identifierHashCopy, v7];

  v16[1] = v8;
  _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
  v16[2] = _validPassPredicate;
  v10 = [NSArray arrayWithObjects:v16 count:3];

  database = self->_database;
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v13 = [Pass passesInDatabase:database matchingPredicate:v12];

  v14 = [(PDDatabaseManager *)self _registeredPasses:v13];

  return v14;
}

- (id)passesEnabledForValuedAddedServicesWithAutomaticSelection:(BOOL)selection
{
  selectionCopy = selection;
  v5 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"pass_type.identifier_hash"];
  v17[0] = v5;
  _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
  v17[1] = _validPassPredicate;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [Pass passesInDatabase:self->_database matchingPredicate:v8];
  if (selectionCopy)
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

- (id)_passesFilteredByAutomaticallyPresentPassEnabled:(id)enabled
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100144DD0;
  v5[3] = &unk_100840170;
  v5[4] = self;
  v3 = [enabled objectsPassingTest:v5];

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

- (id)locatedCandidatePassesOfStyle:(int64_t)style
{
  _locatedPredicate = [(PDDatabaseManager *)self _locatedPredicate];
  v6 = [(PDDatabaseManager *)self _candidatePassesOfStyle:style matchingFurtherPredicate:_locatedPredicate];

  return v6;
}

- (id)unlocatedCandidatePassesOfStyle:(int64_t)style
{
  _unlocatedPredicate = [(PDDatabaseManager *)self _unlocatedPredicate];
  v6 = [(PDDatabaseManager *)self _candidatePassesOfStyle:style matchingFurtherPredicate:_unlocatedPredicate];

  return v6;
}

- (id)locatedDatelessCandidatePassesOfStyle:(int64_t)style
{
  _datedPassPredicate = [(PDDatabaseManager *)self _datedPassPredicate];
  v6 = [SQLiteCompoundPredicate negatedPredicate:_datedPassPredicate];
  v7 = [(PDDatabaseManager *)self _locatedCandidatePassesOfStyle:style matchingFurtherPredicate:v6];

  return v7;
}

- (id)candidatePassWithUniqueIdentifier:(id)identifier
{
  database = self->_database;
  v4 = [Pass predicateForUniqueID:identifier];
  v5 = [Pass candidatePassesInDatabase:database matchingPredicate:v4];
  anyObject = [v5 anyObject];

  return anyObject;
}

- (id)validNFCBarcodePassUniqueIDs
{
  v3 = [(PDDatabaseManager *)self _predicateForType:0];
  v22[0] = v3;
  v4 = +[Pass predicateForValidStyle];
  v22[1] = v4;
  v5 = +[Pass predicateForHasValidNFCPayload];
  v22[2] = v5;
  _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
  v22[3] = _validPassPredicate;
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
  selfCopy = self;
  v3 = [(PDDatabaseManager *)self _predicateForType:0];
  v11[0] = v3;
  v4 = +[Pass predicateForValidStyle];
  v11[1] = v4;
  _validPassPredicate = [(PDDatabaseManager *)selfCopy _validPassPredicate];
  v11[2] = _validPassPredicate;
  v6 = +[Pass predicateForUnexpiredInStack];
  v11[3] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:4];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [(SQLiteEntity *)Pass queryWithDatabase:selfCopy->_database predicate:v8];
  LOBYTE(selfCopy) = [v9 countOfEntities] > 0;

  return selfCopy;
}

- (BOOL)hasActiveSecureElementPasses
{
  database = self->_database;
  _activeSecureElementPassPredicate = [(PDDatabaseManager *)self _activeSecureElementPassPredicate];
  v4 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:_activeSecureElementPassPredicate];

  LOBYTE(database) = [v4 countOfEntities] > 0;
  return database;
}

- (BOOL)hasActiveContactlessSecureElementPasses
{
  selfCopy = self;
  _activeSecureElementPassPredicate = [(PDDatabaseManager *)self _activeSecureElementPassPredicate];
  v9[0] = _activeSecureElementPassPredicate;
  v4 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  v7 = [(SQLiteEntity *)Pass queryWithDatabase:selfCopy->_database predicate:v6];
  LOBYTE(selfCopy) = [v7 countOfEntities] > 0;

  return selfCopy;
}

- (id)locationsByUniqueIDInBoundingBoxOfRegion:(id)region
{
  regionCopy = region;
  PDBoundingBoxForRegion();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = *&regionCopy;
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

- (id)passesForWebService:(id)service
{
  v4 = [(PDDatabaseManager *)self _databaseWebService:service];
  v5 = [Pass predicateForWebService:v4];
  v6 = [Pass passesInDatabase:self->_database matchingPredicate:v5];
  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (id)passWithUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
    pass = [v4 pass];

    v6 = [(PDDatabaseManager *)self _registeredPass:pass];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)passTypeForPassUniqueIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  passFlavor = [v3 passFlavor];

  return passFlavor;
}

- (id)passWithPassTypeID:(id)d serialNumber:(id)number
{
  database = self->_database;
  numberCopy = number;
  v8 = [PassType anyInDatabase:database withPassTypeID:d];
  v9 = [Pass anyInDatabase:self->_database withPassType:v8 serialNumber:numberCopy];

  pass = [v9 pass];

  v11 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v11;
}

- (id)passesOfType:(unint64_t)type
{
  v4 = [(PDDatabaseManager *)self _predicateForType:type];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
  v6 = [(PDDatabaseManager *)self _registeredPasses:v5];

  return v6;
}

- (id)passesOfCardType:(int64_t)type
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForCardType:type];
  v5 = [Pass passesInDatabase:database matchingPredicate:v4];

  return v5;
}

- (id)passesOfStyles:(unint64_t)styles
{
  v4 = [(PDDatabaseManager *)self _predicateForStyles:styles];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];
  v6 = [(PDDatabaseManager *)self _registeredPasses:v5];

  return v6;
}

- (id)passesForPaymentType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(PDDatabaseManager *)self passesForPaymentTypes:v5];

  return v6;
}

- (id)passesForPaymentTypes:(id)types
{
  secureElement = self->_secureElement;
  typesCopy = types;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v6 = [typesCopy pk_arrayByApplyingBlock:&stru_1008484F8];

  v7 = [(PDDatabaseManager *)self _predicateForType:1];
  v19[0] = v7;
  v8 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v9 = [Pass predicateForPaymentApplicationStates:v8];
  v19[1] = v9;
  v10 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
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

- (id)passUniqueIDsOfType:(unint64_t)type
{
  v4 = [(PDDatabaseManager *)self _predicateForType:type];
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
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [(PDDatabaseManager *)self _predicateForType:1];
  v11[0] = v4;
  v5 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v11[1] = v5;
  v6 = [NSArray arrayWithObjects:v11 count:2];

  database = self->_database;
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];
  v9 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v8];

  return v9;
}

- (id)passWithProvisioningCredentialHash:(id)hash
{
  v4 = [Pass anyInDatabase:self->_database withProvisioningCredentialHash:hash];
  pass = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v6;
}

- (id)contactlessAccessPaymentPassesWithTCI:(id)i readerId:(id)id
{
  iCopy = i;
  idCopy = id;
  if (iCopy)
  {
    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v24 = [(PDDatabaseManager *)self _predicateForType:1];
    v28[0] = v24;
    v23 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
    v28[1] = v23;
    v22 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
    v21 = [Pass predicateForPaymentApplicationStates:?];
    v28[2] = v21;
    v25 = secureElementIdentifiers;
    v9 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
    v28[3] = v9;
    v10 = [Pass predicateForPaymentCardType:3];
    v28[4] = v10;
    v27 = iCopy;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
    v12 = [Pass predicateForTCIs:v11];
    v28[5] = v12;
    if (idCopy)
    {
      v26 = idCopy;
      v13 = [NSArray arrayWithObjects:&v26 count:1];
    }

    else
    {
      v13 = 0;
    }

    v15 = [Pass predicateForASCReaderIds:v13];
    v28[6] = v15;
    v16 = [NSArray arrayWithObjects:v28 count:7];

    if (idCopy)
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
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, &off_1008A2E40, 0];
  v5 = [(PDDatabaseManager *)self _predicateForType:1];
  v16[0] = v5;
  v6 = [Pass predicateForPaymentApplicationSupportsContactlessPayment:1];
  v16[1] = v6;
  v7 = [Pass predicateForPaymentApplicationStates:v4];
  v16[2] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
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

- (id)passesForInAppPaymentOnNetworks:(id)networks issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service
{
  requestCopy = request;
  codesCopy = codes;
  statesCopy = states;
  typeCopy = type;
  serviceCopy = service;
  v17 = [(PDDatabaseManager *)self _paymentNetworkIdentifiersForPaymentNetworks:networks];
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  if (![statesCopy count])
  {
    v18 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];

    statesCopy = v18;
  }

  v58 = statesCopy;
  v19 = [Pass predicateForPaymentApplicationStates:statesCopy];
  v20 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v21 = [Pass predicateForPaymentApplicationSupportsInAppPayment:1];
  v55 = v17;
  v22 = [Pass predicateForPaymentApplicationNetworks:v17];
  v54 = v19;
  v23 = [NSMutableArray arrayWithObjects:v19, v20, v21, v22, 0];

  if ([codesCopy count])
  {
    v24 = [Pass predicateForIssuerCountryCodes:codesCopy];
    [v23 addObject:v24];
  }

  database = self->_database;
  v26 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v23];
  v27 = [Pass passesInDatabase:database matchingPredicate:v26];

  v28 = [(PDDatabaseManager *)self _registeredPasses:v27];

  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
  v60 = dbPeerPaymentAccount;
  v30 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:dbPeerPaymentAccount];
  targetDevice = [serviceCopy targetDevice];
  v32 = [targetDevice paymentWebService:serviceCopy supportedRegionFeatureOfType:4];

  v52 = v32;
  supportedNetworks = [v32 supportedNetworks];
  v59 = codesCopy;
  v56 = serviceCopy;
  v57 = typeCopy;
  v53 = v23;
  if (typeCopy)
  {
    intValue = [typeCopy intValue];
    v34 = objc_opt_new();
    v35 = v34;
    if (intValue == 10)
    {
      v36 = [PKWebServiceDisbursementFeature disbursementFeatureWithWebService:serviceCopy];
      supportedNetworks2 = [v36 supportedNetworks];

      v64 = 1;
      v62 = supportedNetworks2;
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

    if (associatedPassUniqueID)
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
          uniqueID = [*(*(&v73 + 1) + 8 * i) uniqueID];
          v46 = [uniqueID isEqualToString:associatedPassUniqueID];

          if (v46)
          {
            continue;
          }
        }

        paymentApplications = [v44 paymentApplications];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_100146DB0;
        v71[3] = &unk_10083DBE0;
        v72 = supportedNetworks;
        v48 = [paymentApplications pk_anyObjectPassingTest:v71];

        if (!requestCopy || v48)
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

- (id)paymentPassesWithIssuerCountryCodes:(id)codes
{
  codesCopy = codes;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];
  v7 = [Pass predicateForPaymentApplicationStates:v6];
  v32 = secureElementIdentifiers;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v9 = [Pass predicateForPaymentApplicationSupportsInAppPayment:1];
  v33 = codesCopy;
  v10 = [Pass predicateForIssuerCountryCodes:codesCopy];
  v11 = [NSArray arrayWithObjects:v7, v8, v9, v10, 0];

  database = self->_database;
  v31 = v11;
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v14 = [Pass passesInDatabase:database matchingPredicate:v13];

  v15 = [(PDDatabaseManager *)self _registeredPasses:v14];

  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
  v34 = dbPeerPaymentAccount;
  v18 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:dbPeerPaymentAccount];
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
    if (dbPeerPaymentAccount)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    if (associatedPassUniqueID)
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
          uniqueID = [*(*(&v35 + 1) + 8 * i) uniqueID];
          v29 = [uniqueID isEqualToString:associatedPassUniqueID];

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

- (id)passesForNonWebInAppPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities issuerCountryCodes:(id)codes paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service
{
  requestCopy = request;
  networksCopy = networks;
  codesCopy = codes;
  statesCopy = states;
  typeCopy = type;
  serviceCopy = service;
  v47 = objc_alloc_init(NSMutableSet);
  v20 = [[NSMutableSet alloc] initWithSet:networksCopy];
  [v20 removeObject:PKPaymentNetworkPrivateLabel];
  v41 = v20;
  v45 = codesCopy;
  v21 = [(PDDatabaseManager *)self passesForInAppPaymentOnNetworks:v20 issuerCountryCodes:codesCopy paymentApplicationStates:statesCopy paymentRequestType:typeCopy isMultiTokensRequest:requestCopy webService:serviceCopy];
  v46 = networksCopy;
  allObjects = [networksCopy allObjects];
  v23 = PKPaymentCredentialTypesForPaymentNetworkNames();
  v42 = serviceCopy;
  v43 = typeCopy;
  LOBYTE(v40) = requestCopy;
  v44 = statesCopy;
  v24 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v23 merchantCapabilities:capabilities merchantCountryCode:0 paymentMode:1 paymentApplicationStates:statesCopy paymentRequestType:typeCopy isMultiTokensRequest:v40 webService:serviceCopy];

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
        deviceInAppPaymentApplications = [v30 deviceInAppPaymentApplications];
        v32 = [deviceInAppPaymentApplications countByEnumeratingWithState:&v48 objects:v60 count:16];
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
                objc_enumerationMutation(deviceInAppPaymentApplications);
              }

              if ([*(*(&v48 + 1) + 8 * j) canProcessPayment:v24])
              {
                [v47 addObject:v30];
                goto LABEL_16;
              }
            }

            v33 = [deviceInAppPaymentApplications countByEnumeratingWithState:&v48 objects:v60 count:16];
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
  _transitPredicate = [(PDDatabaseManager *)self _transitPredicate];
  v4 = [Pass passesInDatabase:self->_database matchingPredicate:_transitPredicate];
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

- (BOOL)hasPassesWithPayloadState:(unint64_t)state
{
  database = self->_database;
  v4 = [Pass predicateForNFCPayloadState:state];
  v5 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v4];

  LOBYTE(database) = [v5 countOfEntities] > 0;
  return database;
}

- (id)passesSupportingIssuerBindingWithPayloadState:(unint64_t)state
{
  database = self->_database;
  v5 = [Pass predicateForNFCPayloadState:state];
  v6 = [Pass passesInDatabase:database matchingPredicate:v5];

  v7 = [(PDDatabaseManager *)self _registeredPasses:v6];

  return v7;
}

- (BOOL)hasSecureElementPassesOfType:(int64_t)type
{
  database = self->_database;
  v4 = [(PDDatabaseManager *)self _predicateForCardType:type];
  v5 = [(SQLiteEntity *)Pass countInDatabase:database predicate:v4]> 0;

  return v5;
}

- (BOOL)hasSecureElementPassesWithFeatureIdentifier:(unint64_t)identifier
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
  v6[5] = identifier;
  [v4 enumerateObjectsUsingBlock:v6];
  LOBYTE(identifier) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return identifier;
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

- (BOOL)passExistsForNonWebInAppPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities paymentApplicationStates:(id)states
{
  capabilitiesCopy = capabilities;
  statesCopy = states;
  v9 = [(PDDatabaseManager *)self _paymentNetworkIdentifiersForPaymentNetworks:networks];
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  if (![statesCopy count])
  {
    v11 = [NSSet setWithObjects:&off_1008A2DB0, &off_1008A2DC8, 0];

    statesCopy = v11;
  }

  v12 = [PaymentApplication predicateForStates:statesCopy];
  v29 = secureElementIdentifiers;
  v13 = [PaymentApplication predicateForSecureElementIdentifiers:secureElementIdentifiers];
  v14 = [PaymentApplication predicateForSupportsInAppPayment:1];
  v30 = v9;
  v15 = [PaymentApplication predicateForNetworks:v9];
  v16 = [NSMutableArray arrayWithObjects:v12, v13, v14, v15, 0];

  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
  v19 = [(PDDatabaseManager *)self peerPaymentPassShouldNotBeAcceptedForAccount:dbPeerPaymentAccount];
  if (dbPeerPaymentAccount && v19 && associatedPassUniqueID)
  {
    v20 = [PaymentApplication predicateForPassWithUniqueIdentifier:associatedPassUniqueID];
    v21 = [SQLiteCompoundPredicate negatedPredicate:v20];
    [v16 addObject:v21];
  }

  v22 = objc_alloc_init(NSMutableArray);
  if (capabilitiesCopy < 0)
  {
    v23 = [PaymentApplication predicateForSupportsInstantFundsIn:1];
    [v16 addObject:v23];
  }

  if ((capabilitiesCopy & 0x1C) != 0 && (capabilitiesCopy & 0x1C) != 0x1CLL)
  {
    if ((capabilitiesCopy & 4) != 0)
    {
      [v22 addObject:&off_1008A2E58];
      if ((capabilitiesCopy & 8) == 0)
      {
LABEL_13:
        if ((capabilitiesCopy & 0x10) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((capabilitiesCopy & 8) == 0)
    {
      goto LABEL_13;
    }

    [v22 addObject:&off_1008A2E70];
    if ((capabilitiesCopy & 0x10) != 0)
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

- (id)passesForWebPaymentOnNetworks:(id)networks withCapabilities:(unint64_t)capabilities webService:(id)service issuerCountryCodes:(id)codes paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request
{
  requestCopy = request;
  networksCopy = networks;
  serviceCopy = service;
  codesCopy = codes;
  statesCopy = states;
  v43 = objc_alloc_init(NSMutableSet);
  v18 = [[NSMutableSet alloc] initWithSet:networksCopy];
  [v18 removeObject:PKPaymentNetworkPrivateLabel];
  v38 = v18;
  v40 = codesCopy;
  v19 = [(PDDatabaseManager *)self passesForInAppPaymentOnNetworks:v18 issuerCountryCodes:codesCopy paymentApplicationStates:statesCopy paymentRequestType:0 isMultiTokensRequest:requestCopy webService:serviceCopy];
  v42 = networksCopy;
  allObjects = [networksCopy allObjects];
  v21 = PKPaymentCredentialTypesForPaymentNetworkNames();
  v41 = serviceCopy;
  v39 = statesCopy;
  v22 = [PKPaymentRequestSupportedQuery webQueryWithSupportedNetworkIDs:v21 merchantCapabilities:capabilities merchantCountryCode:0 paymentMode:1 paymentApplicationStates:statesCopy isMultiTokensRequest:requestCopy webService:serviceCopy];

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
        deviceInAppPaymentApplications = [v28 deviceInAppPaymentApplications];
        v30 = [deviceInAppPaymentApplications countByEnumeratingWithState:&v44 objects:v56 count:16];
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
                objc_enumerationMutation(deviceInAppPaymentApplications);
              }

              if ([*(*(&v44 + 1) + 8 * j) canProcessPayment:v22])
              {
                [v43 addObject:v28];
                goto LABEL_16;
              }
            }

            v31 = [deviceInAppPaymentApplications countByEnumeratingWithState:&v44 objects:v56 count:16];
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

- (id)paymentPassesWithAssociatedPassTypeIdentifierHashes:(id)hashes automaticSelectionOnly:(BOOL)only
{
  onlyCopy = only;
  v6 = [hashes pk_arrayByApplyingBlock:&stru_100848568];
  v7 = [SQLiteCompoundPredicate predicateWithProperty:@"associated_pass_type_identifier.identifier_hash" equalToValues:v6];
  v20[0] = v7;
  v8 = [(PDDatabaseManager *)self _predicateForType:1];
  v20[1] = v8;
  v9 = [NSArray arrayWithObjects:v20 count:2];

  database = self->_database;
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v12 = [Pass passesInDatabase:database matchingPredicate:v11];

  if (onlyCopy)
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

- (id)_passWithPaymentApplication:(id)application
{
  applicationCopy = application;
  applicationIdentifier = [applicationCopy applicationIdentifier];
  secureElementIdentifier = [applicationCopy secureElementIdentifier];

  v7 = [(PDDatabaseManager *)self _passWithApplicationIdentifier:applicationIdentifier secureElementIdentifier:secureElementIdentifier];

  return v7;
}

- (id)passWithPaymentApplication:(id)application
{
  v4 = [(PDDatabaseManager *)self _passWithPaymentApplication:application];
  pass = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v6;
}

- (id)passWithPaymentApplicationIdentifier:(id)identifier
{
  database = self->_database;
  secureElement = self->_secureElement;
  identifierCopy = identifier;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v8 = [Pass anyInDatabase:database withApplicationIdentifier:identifierCopy secureElementIdentifiers:secureElementIdentifiers];

  pass = [v8 pass];

  v10 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v10;
}

- (id)passWithPaymentApplicationIdentifier:(id)identifier secureElementIdentifiers:(id)identifiers
{
  v5 = [Pass anyInDatabase:self->_database withApplicationIdentifier:identifier secureElementIdentifiers:identifiers];
  pass = [v5 pass];

  v7 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v7;
}

- (id)passUniqueIdentifierWithPaymentApplication:(id)application
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:application];
  uniqueID = [v3 uniqueID];

  return uniqueID;
}

- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)identifier
{
  database = self->_database;
  secureElement = self->_secureElement;
  identifierCopy = identifier;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [Pass anyInDatabase:database withApplicationIdentifier:identifierCopy secureElementIdentifiers:secureElementIdentifiers];

  uniqueID = [v7 uniqueID];

  return uniqueID;
}

- (id)passWithPrimaryAccountIdentifier:(id)identifier
{
  v4 = [Pass anyInDatabase:self->_database withPrimaryAccountIdentifier:identifier];
  pass = [v4 pass];

  v6 = [(PDDatabaseManager *)self _registeredPass:pass];

  return v6;
}

- (id)passUniqueIdentifierWithPrimaryAccountIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withPrimaryAccountIdentifier:identifier];
  uniqueID = [v3 uniqueID];

  return uniqueID;
}

- (id)passUniqueIdentifierWithCredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
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
    v9 = identifierCopy;
    selfCopy = self;
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

- (id)passUniqueIdentifierWithAssociatedAccountIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withAssociatedAccountIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    uniqueID = [v3 uniqueID];
  }

  else
  {
    uniqueID = 0;
  }

  return uniqueID;
}

- (id)associatedAccountIdentifierForPassWithUniqueIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v4 = v3;
  if (v3)
  {
    associatedAccountIdentifier = [v3 associatedAccountIdentifier];
  }

  else
  {
    associatedAccountIdentifier = 0;
  }

  return associatedAccountIdentifier;
}

- (id)previousAccountIdentifierForAccountIdentifier:(id)identifier
{
  v3 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  previousAccountIdentifiers = [v3 previousAccountIdentifiers];

  return previousAccountIdentifiers;
}

- (id)accountIdentifierWithPreviousAccountIdentifier:(id)identifier
{
  v3 = [Account anyInDatabase:self->_database withPreviousAccountIdentifier:identifier];
  accountIdentifier = [v3 accountIdentifier];

  return accountIdentifier;
}

- (id)primaryAccountIdentifierForAssociatedAccountIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withAssociatedAccountIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    primaryAccountIdentifier = [v3 primaryAccountIdentifier];
  }

  else
  {
    primaryAccountIdentifier = 0;
  }

  return primaryAccountIdentifier;
}

- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)device
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
        uniqueID = [v9 uniqueID];
        deviceTransactionSourceIdentifiers = [v9 deviceTransactionSourceIdentifiers];
        v12 = objc_alloc_init(NSMutableSet);
        if (device <= 1)
        {
          v13 = [PaymentTransaction paymentTransactionsInDatabase:self->_database originatedOnDevice:1 forTransactionSourceIdentifiers:deviceTransactionSourceIdentifiers];
          allObjects = [v13 allObjects];
          [v12 addObjectsFromArray:allObjects];
        }

        if ((device & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v15 = [PaymentTransaction paymentTransactionsInDatabase:self->_database originatedOnDevice:0 forTransactionSourceIdentifiers:deviceTransactionSourceIdentifiers];
          allObjects2 = [v15 allObjects];
          [v12 addObjectsFromArray:allObjects2];
        }

        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 count];
          *buf = v21;
          v29 = v18;
          v30 = 2114;
          v31 = uniqueID;
          v32 = 2112;
          v33 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Syncing %ld transactions for pass uniqueID: %{public}@. Transactions: %@", buf, 0x20u);
        }

        if ([v12 count])
        {
          allObjects3 = [v12 allObjects];
          anyObject = [deviceTransactionSourceIdentifiers anyObject];
          [(PDDatabaseManager *)self _updateCloudStoreWithTransactions:allObjects3 transactionSourceIdentifier:anyObject];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }
}

- (unint64_t)countOfPassesForRequest:(id)request
{
  if (!request)
  {
    return 0;
  }

  v4 = [(PDDatabaseManager *)self _passPredicateForRequest:?];
  v5 = [(SQLiteEntity *)Pass countInDatabase:self->_database predicate:v4];

  return v5;
}

- (id)maxIngestedDateForRequest:(id)request
{
  if (request)
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

- (id)minIngestedDateForRequest:(id)request
{
  if (request)
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

- (id)passesForRequest:(id)request
{
  if (request)
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

- (id)secureElementPassesForRequest:(id)request
{
  if (request)
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

- (void)getCatalog:(id *)catalog passes:(id *)passes dbStates:(id *)states ofPassTypes:(unint64_t)types limitResults:(BOOL)results
{
  resultsCopy = results;
  effectiveCatalog = [(PDDatabaseManager *)self effectiveCatalog];
  v20 = 0;
  if (resultsCopy)
  {
    [(PDDatabaseManager *)self _trimCatalog:effectiveCatalog andBuildPassPredicate:&v20];
    v14 = v20;
  }

  else if (types)
  {
    v14 = [(PDDatabaseManager *)self _predicateForPassTypes:types];
    v20 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = [Pass passesInDatabase:self->_database states:states matchingPredicate:v14];
  v16 = [(PDDatabaseManager *)self _registeredPasses:v15];
  v17 = *passes;
  *passes = v16;

  v18 = *catalog;
  *catalog = effectiveCatalog;
  v19 = effectiveCatalog;
}

- (void)_trimCatalog:(id)catalog andBuildPassPredicate:(id *)predicate
{
  groups = [catalog groups];
  v6 = [groups count] - 1;
  if (v6 > 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_10068E560[v6];
  }

  if ([groups count] >= 9)
  {
    do
    {
      [groups removeLastObject];
    }

    while ([groups count] > 8);
  }

  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = groups;
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
          uniqueIDs = [v14 uniqueIDs];
          v16 = [uniqueIDs count];

          if (v16 <= v7)
          {
            break;
          }

          uniqueIDs2 = [v14 uniqueIDs];
          [uniqueIDs2 removeLastObject];
        }

        uniqueIDs3 = [v14 uniqueIDs];
        [v8 addObjectsFromArray:uniqueIDs3];

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = [SQLiteCompoundPredicate predicateWithProperty:@"unique_id" equalToValues:v8];
  v20 = *predicate;
  *predicate = v19;
}

- (BOOL)insertPass:(id)pass withDaemonData:(id)data source:(int64_t)source
{
  passCopy = pass;
  dataCopy = data;
  if (!passCopy)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v40 = dataCopy;
  passType = [passCopy passType];
  if (passType == 1)
  {
    v10 = passCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [passCopy uniqueID];
  v36 = v37 = v11;
  if ((PKStoreDemoModeEnabled() & 1) == 0)
  {
    v13 = PKUIOnlyDemoModeEnabled();
    if (passType != 1)
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
    [(PDDatabaseManager *)self _applyDemoPaymentApplicationToPass:passCopy];
    v35 = 1;
LABEL_14:
    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    [passCopy updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];

    goto LABEL_15;
  }

  if (passType == 1)
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
  selfCopy = self;
  v17 = v36;
  v44 = v17;
  v18 = passCopy;
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
  sourceCopy = source;
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
      WeakRetained = objc_loadWeakRetained(&selfCopy->_notificationServicesDelegate);
      [WeakRetained handleInsertionOfPass:v18 withNotificationService:v72[5]];
    }

    if (v66[5])
    {
      v24 = objc_loadWeakRetained(&selfCopy->_notificationServicesDelegate);
      [v24 handleInsertionOfPass:v18 withNotificationService:v66[5]];
    }

    if (v78[5])
    {
      v25 = objc_loadWeakRetained(&selfCopy->_webServicesDelegate);
      serialNumber = [v18 serialNumber];
      authenticationToken = [v18 authenticationToken];
      [v25 handleInsertion:serialNumber authToken:authenticationToken webService:v78[5] pushEnabled:*(v62 + 24) source:source];
    }

    if (passType == 1)
    {
      if (v35)
      {
        [(PDDatabaseManager *)selfCopy _applyDemoPaymentTransactionsToPass:v18];
        [(PDDatabaseManager *)selfCopy _applyDemoFelicaAppletStateToPass:v18];
      }

      v28 = objc_loadWeakRetained(&selfCopy->_paymentServicesDelegate);
      [v28 handleInsertionForPaymentPass:v18];

      v29 = objc_loadWeakRetained(&selfCopy->_delegate);
      v30 = objc_alloc_init(NSSet);
      [v29 paymentPass:v18 didUpdatePaymentApplications:v30 toPaymentApplications:v56[5]];

      primaryAccountIdentifier = [v18 primaryAccountIdentifier];
      v32 = primaryAccountIdentifier;
      if (primaryAccountIdentifier)
      {
        bankConnectPassUpdateProcessor = selfCopy->_bankConnectPassUpdateProcessor;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100149C20;
        v41[3] = &unk_10083C470;
        v42 = primaryAccountIdentifier;
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
  dataCopy = v40;
LABEL_35:

  return v12 & 1;
}

- (BOOL)updatePass:(id)pass withDaemonData:(id)data oldPass:(id *)oldPass fromSource:(int64_t)source
{
  passCopy = pass;
  dataCopy = data;
  if (passCopy)
  {
    location = oldPass;
    passType = [passCopy passType];
    if (passType == 1)
    {
      v13 = passCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    uniqueID = [passCopy uniqueID];
    if (PKStoreDemoModeEnabled())
    {
      v31 = 1;
    }

    else
    {
      v31 = PKUIOnlyDemoModeEnabled();
    }

    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    sourceCopy = source;
    if (passType == 1)
    {
      if (v31)
      {
        [(PDDatabaseManager *)self _applyDemoPaymentApplicationToPass:passCopy];
      }

      [passCopy updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];
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
    v35 = passType;
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
    v19 = uniqueID;
    v38 = v19;
    v43 = &v105;
    v32 = secureElementIdentifiers;
    v39 = v32;
    v36 = passCopy;
    v40 = v36;
    v44 = &v67;
    v33 = v14;
    v41 = v33;
    v45 = &v61;
    v42 = dataCopy;
    v46 = &v55;
    v47 = &v89;
    v48 = &v83;
    v49 = &v71;
    v50 = &v77;
    v51 = &v95;
    v52 = &v101;
    v53 = &v111;
    sourceCopy2 = source;
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
        serialNumber = [v36 serialNumber];
        if (v24)
        {
          authenticationToken = [v36 authenticationToken];
          [v25 handleInsertion:serialNumber authToken:authenticationToken webService:v96[5] pushEnabled:*(v68 + 24) source:sourceCopy];
        }

        else
        {
          [v25 handleModification:serialNumber webService:v96[5] pushEnabled:*(v68 + 24) source:sourceCopy];
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

- (void)prepareToDeletePassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
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
    serialNumber = [v42[5] serialNumber];
    authenticationToken = [v42[5] authenticationToken];
    [v9 handleDeletion:serialNumber authToken:authenticationToken webService:v36[5] pushEnabled:*(v20 + 24)];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

- (void)deletePassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
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

- (void)updateModifiedSource:(int64_t)source forUniqueID:(id)d
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:d];
  [v5 updateWithLastModifiedSource:source];
}

- (id)updatedPassAnnotationsForPasses:(id)passes
{
  passesCopy = passes;
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
  v52 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(passesCopy, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = passesCopy;
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
        uniqueID = [v16 uniqueID];
        v19 = [(PDDatabaseManager *)self passAnnotationsForPassUniqueIdentifier:uniqueID];
        secureElementPass = [v16 secureElementPass];
        passActivationState = [secureElementPass passActivationState];
        v22 = passActivationState;
        if (!v19)
        {
          if (secureElementPass)
          {
            v31 = passActivationState == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            relevantDates = [v16 relevantDates];
            v33 = [PKPassRelevantDate findDateFromDates:relevantDates option:3];

            expirationDate = [v16 expirationDate];

            if (([v16 isVoided] & 1) != 0 || objc_msgSend(v16, "isPastRelevancy"))
            {
            }

            else
            {
              isExpired = [v16 isExpired];
              if ((isExpired & 1) != 0 || expirationDate || v33)
              {

                if ((isExpired & 1) == 0)
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
          v41 = [p_superclass + 464 predicateForUniqueID:uniqueID];
          v19 = [p_superclass + 464 queryWithDatabase:v40 predicate:v41];

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_10014BB58;
          v54[3] = &unk_1008486E8;
          v57 = v35;
          v54[4] = self;
          v55 = v52;
          v56 = uniqueID;
          [v19 enumeratePersistentIDsUsingBlock:v54];

          goto LABEL_45;
        }

        if (secureElementPass)
        {
          if ([v19 isIntendedForExpiredSection] && v22 != 4)
          {
            v24 = [PassAnnotations anyInDatabase:self->_database withPassID:uniqueID];
            [v24 updateSortingState:0];
            passAnnotations = [v24 passAnnotations];

            v19 = passAnnotations;
          }
        }

        if ([v19 sortingState] == 1)
        {
          archivedTimestamp = [v19 archivedTimestamp];

          if (!archivedTimestamp)
          {
            v27 = [PassAnnotations anyInDatabase:self->_database withPassID:uniqueID];
            expirationDate2 = [v16 expirationDate];
            v29 = expirationDate2;
            if (expirationDate2)
            {
              v30 = expirationDate2;
            }

            else
            {
              relevantDates2 = [v16 relevantDates];
              v38 = [PKPassRelevantDate findDateFromDates:relevantDates2 option:3];

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
            passAnnotations2 = [v27 passAnnotations];

            v19 = passAnnotations2;
            p_superclass = (AccountRewardsIdentifier + 8);
          }
        }

        [v52 setObject:v19 forKeyedSubscript:uniqueID];
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

- (void)updatePassAnnotationsForPassWithUniqueIdentifier:(id)identifier withSortingState:(int64_t)state
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  if (v5)
  {
    v6 = v5;
    [v5 updateWithSortingState:state forSortingReason:0];
    v5 = v6;
  }
}

- (id)passAnnotationsForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PassAnnotations anyInDatabase:self->_database withPassID:identifierCopy];
  v6 = v5;
  if (v5)
  {
    passAnnotations = [v5 passAnnotations];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: Failed to find pass annotations in database for pass with unique identifier: %@", &v10, 0xCu);
    }

    passAnnotations = 0;
  }

  return passAnnotations;
}

- (BOOL)hasPassesInExpiredSection
{
  database = self->_database;
  v3 = +[Pass predicateForPassAnnotationStatesInExpiredSection];
  v4 = [(SQLiteEntity *)Pass existsInDatabase:database predicate:v3];

  return v4;
}

- (id)displayProfileForPassWithUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
    displayProfile = [v3 displayProfile];
  }

  else
  {
    displayProfile = 0;
  }

  return displayProfile;
}

- (id)passLiveRenderForPassUniqueIdentifier:(id)identifier
{
  v3 = [PassLiveRender passLiveRenderInDatabase:self->_database forPassUniqueID:identifier];
  passLiveRender = [v3 passLiveRender];

  return passLiveRender;
}

- (id)insertOrUpdateLiveRenderEnabled:(BOOL)enabled forPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  enabledCopy = enabled;
  v12 = v8;
  v13 = &v15;
  sub_1005D4424(database, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)deletePaymentTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifierCopy];
  transactionSourceIdentifier = [v5 transactionSourceIdentifier];
  if (v5)
  {
    paymentTransaction = [v5 paymentTransaction];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014C3A4;
    v22[3] = &unk_100848738;
    v8 = transactionSourceIdentifier;
    v23 = v8;
    v9 = paymentTransaction;
    v24 = v9;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v22];
    serviceIdentifier = [v5 serviceIdentifier];
    if ([v5 deleteFromDatabase])
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10014C3B0;
      v19[3] = &unk_100848738;
      v11 = v8;
      v20 = v11;
      v21 = identifierCopy;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v19];
      if (serviceIdentifier)
      {
        WeakRetained = objc_loadWeakRetained(&self->_cloudStoreCoordinator);
        applePayContainer = [WeakRetained applePayContainer];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10014C3BC;
        v15[3] = &unk_10083DE10;
        v15[4] = self;
        v16 = v9;
        v17 = serviceIdentifier;
        v18 = v11;
        [applePayContainer canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v18 completion:v15];
      }

      v14 = v20;
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = identifierCopy;
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
      v26 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: No transaction found with identifier: %{public}@", buf, 0xCu);
    }
  }
}

- (void)deletePaymentTransactionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = identifiersCopy;
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
  selfCopy = self;
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
        paymentTransaction = [v17 paymentTransaction];
        identifier = [paymentTransaction identifier];

        serviceIdentifier = [v17 serviceIdentifier];
        paymentTransaction2 = [v17 paymentTransaction];
        transactionSourceIdentifier = [v17 transactionSourceIdentifier];
        if ([v17 deleteFromDatabase])
        {
          v23 = [v36 objectForKey:transactionSourceIdentifier];
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

          [v26 addObject:identifier];
          [v36 setValue:v26 forKey:transactionSourceIdentifier];
          if (serviceIdentifier)
          {
            v27 = [v35 objectForKey:transactionSourceIdentifier];
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

            [v30 addObject:paymentTransaction2];
            [v35 setValue:v30 forKey:transactionSourceIdentifier];
          }
        }

        else
        {
          v26 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v51 = identifier;
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
  [(PDDatabaseManager *)selfCopy dispatchDelegateCallback:v38];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10014CB20;
  v37[3] = &unk_100848760;
  v37[4] = selfCopy;
  [v35 enumerateKeysAndObjectsUsingBlock:v37];
}

- (void)deleteAllTransactionsFromTransactionSourceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = [TransactionSource anyInDatabase:self->_database withIdentifier:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [PaymentTransaction deleteEntitiesForTransactionSource:v9 inDatabase:self->_database];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)deleteAllMessagesFromPaymentPassWithUniqueIdentifier:(id)identifier
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [PaymentMessage deleteEntitiesForPass:v4 inDatabase:self->_database];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (void)archiveMessageWithIdentifier:(id)identifier
{
  v3 = [PaymentMessage messagesInDatabase:self->_database withIdentifier:identifier];
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

- (BOOL)settingEnabled:(unint64_t)enabled forPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  if (v7)
  {
    v8 = sub_1005DA658(self->_objectSettingsManager, enabled, v7);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error: Failed to find a pass in database with unique identifier '%@'.", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateSettings:(unint64_t)settings forPass:(id)pass
{
  uniqueID = [pass uniqueID];
  [(PDDatabaseManager *)self updateSettings:settings forPassWithUniqueIdentifier:uniqueID];
}

- (void)migrateObjectSettings
{
  v3 = PKObjectSettingsManagerSafeHavenArchivePath();
  v4 = [NSURL fileURLWithPath:v3];

  [(PDDatabaseManager *)self _migrateObjectSettingsWithSafeHavenArchiveURL:v4];
}

- (void)_setObjectSettingsManager:(id)manager
{
  managerCopy = manager;
  objectSettingsManager = self->_objectSettingsManager;
  p_objectSettingsManager = &self->_objectSettingsManager;
  if (objectSettingsManager != managerCopy)
  {
    v8 = managerCopy;
    objc_storeStrong(p_objectSettingsManager, manager);
    managerCopy = v8;
  }
}

- (void)_migrateObjectSettingsWithSafeHavenArchiveURL:(id)l
{
  lCopy = l;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing migration for object settings with safehaven url %@", buf, 0xCu);
  }

  v16 = lCopy;
  v6 = sub_1005DA510(PDObjectSettingsManager, lCopy);
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

- (void)updateSettings:(unint64_t)settings forPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v42 = v8;
  v43 = &v76;
  v44 = &v62;
  v45 = &v56;
  v46 = &v50;
  v47 = &v72;
  v48 = &v68;
  settingsCopy = settings;
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
  shouldIgnoreTransactionUpdatesSwitch = [v11 shouldIgnoreTransactionUpdatesSwitch];
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
      authenticationToken = [v77[5] authenticationToken];
      [WeakRetained handlePushEnabled:v21 authToken:authenticationToken webService:v63[5]];
    }

    else
      v21 = {;
      authenticationToken = [v77[5] authenticationToken];
      [WeakRetained handlePushDisabled:v21 authToken:authenticationToken webService:v63[5]];
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
      if (shouldIgnoreTransactionUpdatesSwitch)
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

- (void)updateSettings:(unint64_t)settings forObjectWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [Pass anyInDatabase:self->_database withUniqueID:?];
  if (v6)
  {
    [(PDDatabaseManager *)self updateSettings:settings forPassWithUniqueIdentifier:identifierCopy];
  }
}

- (void)noteObjectSharedWithUniqueID:(id)d
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:d];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 valueForProperty:@"share_count"];
    integerValue = [v4 integerValue];

    v6 = [NSNumber numberWithInteger:integerValue + 1];
    [v7 setValue:v6 forProperty:@"share_count"];

    v3 = v7;
  }
}

- (BOOL)getRegistrationStatus:(unint64_t *)status date:(id *)date forSerialNumber:(id)number webService:(id)service
{
  numberCopy = number;
  v11 = [(PDDatabaseManager *)self _databaseWebService:service];
  v12 = [Pass anyInDatabase:self->_database withWebService:v11 serialNumber:numberCopy];

  if (v12)
  {
    [v12 getPushRegistrationStatus:status date:date];
  }

  return v12 != 0;
}

- (void)updateRegistrationStatus:(unint64_t)status date:(id)date forSerialNumber:(id)number webService:(id)service
{
  dateCopy = date;
  numberCopy = number;
  v11 = [(PDDatabaseManager *)self _databaseWebService:service];
  if (v11)
  {
    v12 = [Pass anyInDatabase:self->_database withWebService:v11 serialNumber:numberCopy];
    [v12 updateWithPushRegistrationStatus:status date:dateCopy];
  }
}

- (void)updateLastModifiedTag:(id)tag forSerialNumber:(id)number webService:(id)service
{
  tagCopy = tag;
  numberCopy = number;
  v9 = [(PDDatabaseManager *)self _databaseWebService:service];
  if (v9)
  {
    v10 = [Pass anyInDatabase:self->_database withWebService:v9 serialNumber:numberCopy];
    [v10 updateWithLastModifiedTag:tagCopy];
  }
}

- (void)updateWebService:(id)service
{
  serviceCopy = service;
  v5 = [(PDDatabaseManager *)self _databaseWebService:serviceCopy];
  [v5 updateWithWebService:serviceCopy];
}

- (id)lastDeletionDateForWebService:(id)service
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:service];
  lastDeletionDate = [v3 lastDeletionDate];

  return lastDeletionDate;
}

- (id)lastUpdatedTagForWebService:(id)service
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:service];
  lastUpdatedTag = [v3 lastUpdatedTag];

  return lastUpdatedTag;
}

- (id)tagLastUpdateDateForWebService:(id)service
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:service];
  tagLastUpdateDate = [v3 tagLastUpdateDate];

  return tagLastUpdateDate;
}

- (void)updateLastDeletionDate:(id)date forWebService:(id)service
{
  dateCopy = date;
  v7 = [(PDDatabaseManager *)self _databaseWebService:service];
  [v7 updateWithLastDeletionDate:dateCopy];
}

- (void)updateLastUpdatedTag:(id)tag forWebService:(id)service
{
  tagCopy = tag;
  v7 = [(PDDatabaseManager *)self _databaseWebService:service];
  [v7 updateWithLastUpdatedTag:tagCopy];
}

- (id)webServicesForPassTypeID:(id)d
{
  v4 = [PassType anyInDatabase:self->_database withPassTypeID:d];
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
  selfCopy = self;
  v14 = v4;
  v6 = v4;
  [v3 enumeratePersistentIDsAndProperties:v5 usingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

- (BOOL)hasPushEnabledPassesForWebService:(id)service
{
  serviceCopy = service;
  database = self->_database;
  v6 = [(PDDatabaseManager *)self _predicateMatchingPassesForWebService:serviceCopy];
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

- (BOOL)getWebService:(id *)service updateContext:(id *)context forPassWithUniqueID:(id)d
{
  v7 = [Pass anyInDatabase:self->_database withUniqueID:d];
  webService = [v7 webService];
  v9 = webService;
  if (webService)
  {
    if (service)
    {
      *service = [webService webService];
    }

    if (context)
    {
      *context = [v7 updateContext];
    }
  }

  return v9 != 0;
}

- (BOOL)getPassTypeID:(id *)d teamID:(id *)iD associatedPassTypeIdentifiers:(id *)identifiers associatedApplicationIdentifiers:(id *)applicationIdentifiers forUniqueID:(id)uniqueID
{
  v11 = [Pass anyInDatabase:self->_database withUniqueID:uniqueID];
  v12 = v11;
  if (v11)
  {
    passType = [v11 passType];
    *d = [passType passTypeID];
    *iD = [passType teamID];
    *identifiers = [v12 associatedPassTypeIdentifiers];
    *applicationIdentifiers = [v12 associatedApplicationIdentifiers];
  }

  return v12 != 0;
}

- (id)passUpdateContextForSerialNumber:(id)number webService:(id)service
{
  numberCopy = number;
  v7 = [(PDDatabaseManager *)self _databaseWebService:service];
  v8 = [Pass anyInDatabase:self->_database withWebService:v7 serialNumber:numberCopy];

  updateContext = [v8 updateContext];

  return updateContext;
}

- (id)webServiceForPass:(id)pass
{
  passCopy = pass;
  v5 = [(PDDatabaseManager *)self _passTypeForPass:passCopy];
  v6 = [(PDDatabaseManager *)self _webServiceForPass:passCopy passType:v5];

  webService = [v6 webService];

  return webService;
}

- (BOOL)getLastPushDate:(id *)date lastUpdateDate:(id *)updateDate frequencyScore:(double *)score forPassTypeID:(id)d
{
  v9 = [PassType anyInDatabase:self->_database withPassTypeID:d];
  v10 = v9;
  if (v9)
  {
    if (date)
    {
      *date = [v9 lastPushDate];
    }

    if (updateDate)
    {
      *updateDate = [v10 lastUpdateDate];
    }

    if (score)
    {
      [v10 frequencyScore];
      *score = v11;
    }
  }

  return v10 != 0;
}

- (BOOL)uniqueIDIsRevoked:(id)revoked
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:revoked];
  revoked = [v3 revoked];

  return revoked;
}

- (void)updateLastPushDate:(id)date frequencyScore:(double)score forPassTypeID:(id)d
{
  dateCopy = date;
  v8 = [PassType anyInDatabase:self->_database withPassTypeID:d];
  v9 = v8;
  if (v8)
  {
    [v8 updateLastPushDate:dateCopy];
    [v9 updateFrequencyScore:score];
  }
}

- (void)updateLastUpdateDate:(id)date forPassTypeID:(id)d
{
  dateCopy = date;
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:d];
  v7 = v6;
  if (v6)
  {
    [v6 updateLastUpdateDate:dateCopy];
  }
}

- (void)updateRevocationStatus:(BOOL)status forUniqueID:(id)d
{
  statusCopy = status;
  v5 = [Pass anyInDatabase:self->_database withUniqueID:d];
  [v5 updateWithRevocationStatus:statusCopy];
}

- (void)updateIngestedDate:(id)date forUniqueID:(id)d
{
  database = self->_database;
  dateCopy = date;
  v7 = [Pass anyInDatabase:database withUniqueID:d];
  [v7 updateWithIngestedDate:dateCopy];
}

- (void)enumeratePassUpdateContextsForWebService:(id)service withHandler:(id)handler
{
  database = self->_database;
  handlerCopy = handler;
  v8 = [(PDDatabaseManager *)self _predicateMatchingPassesForWebService:service];
  v9 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v8];

  [Pass enumerateUpdateContextsForQuery:v9 withHandler:handlerCopy];
}

- (void)enumerateOrganizationNamesForPassTypeID:(id)d withHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:d];
  if (v6)
  {
    database = self->_database;
    v8 = [Pass predicateForPassType:v6];
    v9 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v8];

    [Pass enumerateOrganizationNamesForQuery:v9 withHandler:handlerCopy];
  }
}

- (id)passesForNotificationService:(id)service
{
  if (service)
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

- (id)paymentApplicationsForNotificationService:(id)service
{
  if (service)
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

- (id)paymentApplicationWithDPANIdentifier:(id)identifier
{
  v3 = [(PDDatabaseManager *)self _dbPaymentApplicationWithDPANIdentifier:identifier];
  paymentApplication = [v3 paymentApplication];

  return paymentApplication;
}

- (id)_dbPaymentApplicationWithDPANIdentifier:(id)identifier
{
  secureElement = self->_secureElement;
  identifierCopy = identifier;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication predicateForDPANIdentifier:identifierCopy];

  v13[0] = v7;
  v8 = [PaymentApplication predicateForSecureElementIdentifiers:secureElementIdentifiers];
  v13[1] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:2];

  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  v11 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v10];

  return v11;
}

- (id)paymentApplicationWithPassUniqueIdentifier:(id)identifier secureElementIdentifier:(id)elementIdentifier paymentApplicationIdentifier:(id)applicationIdentifier
{
  v5 = [PaymentApplication anyInDatabase:self->_database withPassUniqueIdentifier:identifier secureElementIdentifier:elementIdentifier paymentApplicationIdentifier:applicationIdentifier];
  paymentApplication = [v5 paymentApplication];

  return paymentApplication;
}

- (id)paymentApplicationsForPassUniqueIdentifier:(id)identifier
{
  database = self->_database;
  secureElement = self->_secureElement;
  identifierCopy = identifier;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication paymentApplicationsInDatabase:database forPassUniqueIdentifier:identifierCopy secureElementIdentifiers:secureElementIdentifiers];

  return v7;
}

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier
{
  v3 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  defaultPaymentApplication = [v3 defaultPaymentApplication];
  v5 = defaultPaymentApplication;
  if (defaultPaymentApplication)
  {
    paymentApplication = [defaultPaymentApplication paymentApplication];
  }

  else
  {
    paymentApplication = 0;
  }

  return paymentApplication;
}

- (id)_primaryPaymentApplicationForPassUniqueIdentifier:(id)identifier
{
  secureElement = self->_secureElement;
  identifierCopy = identifier;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [PaymentApplication predicateForSecureElementIdentifiers:secureElementIdentifiers];
  v8 = [PaymentApplication predicateForPassWithUniqueIdentifier:identifierCopy, v7];

  v14[1] = v8;
  v9 = [PaymentApplication predicateForPrimaryPaymentApplication:1];
  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];

  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  v12 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v11];

  return v12;
}

- (id)primaryPaymentApplicationForPassUniqueIdentifier:(id)identifier
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:identifier];
  paymentApplication = [v3 paymentApplication];

  return paymentApplication;
}

- (int64_t)primaryPaymentApplicationStateForPassUniqueIdentifier:(id)identifier
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:identifier];
  state = [v3 state];

  return state;
}

- (id)primarySubcredentialIdentifiersForPassUniqueIdentifier:(id)identifier
{
  v3 = [(PDDatabaseManager *)self _primaryPaymentApplicationForPassUniqueIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    appletSubcredentials = [v3 appletSubcredentials];
    v6 = [appletSubcredentials pk_setByApplyingBlock:&stru_100848840];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)paymentApplicationWithVPANIdentifier:(id)identifier
{
  v4 = [PaymentApplication predicateForVPANID:identifier primaryOnly:0];
  v5 = [(SQLiteEntity *)PaymentApplication anyInDatabase:self->_database predicate:v4];
  paymentApplication = [v5 paymentApplication];

  return paymentApplication;
}

- (id)passWithVPANIdentifier:(id)identifier
{
  v4 = [(PDDatabaseManager *)self paymentApplicationWithVPANIdentifier:identifier];
  if (v4)
  {
    v5 = [(PDDatabaseManager *)self passWithPaymentApplication:v4];
    secureElementPass = [v5 secureElementPass];
  }

  else
  {
    secureElementPass = 0;
  }

  return secureElementPass;
}

- (id)passesWithActiveVPAN
{
  database = self->_database;
  _predicateForActiveVPAN = [(PDDatabaseManager *)self _predicateForActiveVPAN];
  v4 = [Pass passesInDatabase:database matchingPredicate:_predicateForActiveVPAN];

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

- (void)updateDateLastUsedBySafari:(id)safari forVirtualCardWithIdentifier:(id)identifier
{
  safariCopy = safari;
  identifierCopy = identifier;
  v7 = [VPANVirtualCard anyInDatabase:self->_database withVirtualCardIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [v7 updateDateLastUsedBySafari:safariCopy];
  }

  else
  {
    v9 = [VPANVirtualCard insertVPANVirtualCardMetadataWithIdentifier:identifierCopy dateLastUsedBySafari:safariCopy inDatabase:self->_database];
  }
}

- (void)updateCardholderNameFromSafari:(id)safari forVirtualCardWithIdentifier:(id)identifier
{
  safariCopy = safari;
  identifierCopy = identifier;
  v7 = [VPANVirtualCard anyInDatabase:self->_database withVirtualCardIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [v7 updateCardholderNameFromSafari:safariCopy];
  }

  else
  {
    v9 = [VPANVirtualCard insertVPANVirtualCardMetadataWithIdentifier:identifierCopy cardholderNameFromSafari:safariCopy inDatabase:self->_database];
  }
}

- (id)transactionServiceForPaymentApplication:(id)application
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:application];
  transactionService = [v3 transactionService];
  notificationService = [transactionService notificationService];

  return notificationService;
}

- (id)messageServiceForPaymentApplication:(id)application
{
  v3 = [(PDDatabaseManager *)self _passWithPaymentApplication:application];
  transactionService = [v3 transactionService];
  notificationService = [transactionService notificationService];

  return notificationService;
}

- (id)notificationServiceOfType:(unint64_t)type forPassWithUniqueIdentifier:(id)identifier
{
  if (!identifier)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v5 = [Pass anyInDatabase:self->_database withUniqueID:?];
  v6 = v5;
  if (type == 1)
  {
    messageService = [v5 messageService];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_9;
    }

    messageService = [v5 transactionService];
  }

  v8 = messageService;
LABEL_9:

LABEL_10:
  notificationService = [v8 notificationService];

  return notificationService;
}

- (id)deviceSpecificPaymentApplications
{
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v4 = [PaymentApplication paymentApplicationsInDatabase:self->_database forSecureElementIdentifiers:secureElementIdentifiers];

  return v4;
}

- (BOOL)notificationServiceIsEnabledForAnyPasses:(id)passes
{
  passesCopy = passes;
  v5 = [(PDDatabaseManager *)self passesForNotificationService:passesCopy];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014FE7C;
  v8[3] = &unk_100848868;
  v8[4] = self;
  v6 = passesCopy;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];
  LOBYTE(passesCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return passesCopy;
}

- (unint64_t)registrationStatusForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v6 = [v5 passNotificationServiceForType:type];
  registrationStatus = [v6 registrationStatus];

  return registrationStatus;
}

- (id)lastUpdatedDateForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v6 = [v5 passNotificationServiceForType:type];
  lastUpdatedDate = [v6 lastUpdatedDate];

  return lastUpdatedDate;
}

- (id)lastUpdatedTagForNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  v5 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v6 = [v5 passNotificationServiceForType:type];
  lastUpdatedTag = [v6 lastUpdatedTag];

  return lastUpdatedTag;
}

- (void)updateRegistrationStatus:(unint64_t)status forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  v8 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v7 = [v8 passNotificationServiceForType:type];
  [v7 updateWithRegistrationStatus:status];
}

- (void)updateLastUpdatedDate:(id)date forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  database = self->_database;
  dateCopy = date;
  v10 = [Pass anyInDatabase:database withUniqueID:identifier];
  v9 = [v10 passNotificationServiceForType:type];
  [v9 updateWithLastUpdatedDate:dateCopy];
}

- (void)updateLastUpdatedTag:(id)tag forNotificationServiceType:(unint64_t)type passUniqueIdentifier:(id)identifier
{
  database = self->_database;
  tagCopy = tag;
  v10 = [Pass anyInDatabase:database withUniqueID:identifier];
  v9 = [v10 passNotificationServiceForType:type];
  [v9 updateWithLastUpdatedTag:tagCopy];
}

- (void)updateLastUpdatedDate:(id)date forNotificationService:(id)service
{
  dateCopy = date;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:service];
  [v7 updateWithLastUpdatedDate:dateCopy];
}

- (void)updateLastUpdatedTag:(id)tag forNotificationService:(id)service
{
  tagCopy = tag;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:service];
  [v7 updateWithLastUpdatedTag:tagCopy];
}

- (void)updateAuthenticationToken:(id)token forNotificationService:(id)service
{
  tokenCopy = token;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:service];
  [v7 updateWithAuthenticationToken:tokenCopy];
}

- (void)updateAppLaunchToken:(id)token forNotificationService:(id)service
{
  tokenCopy = token;
  v7 = [(PDDatabaseManager *)self _databaseNotificationService:service];
  [v7 updateWithAppLaunchToken:tokenCopy];
}

- (void)updateNotificationService:(id)service
{
  serviceCopy = service;
  v5 = [(PDDatabaseManager *)self _databaseNotificationService:serviceCopy];
  [v5 updateWithNotificationService:serviceCopy];
}

- (void)updateTransitAppletStateWithStationNames:(id)names forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier
{
  namesCopy = names;
  applicationCopy = application;
  identifierCopy = identifier;
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
  v12 = identifierCopy;
  v20 = v12;
  v13 = applicationCopy;
  v21 = v13;
  v14 = namesCopy;
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

- (void)updateTransitAppletStateWithHistory:(id)history transactionDate:(id)date forPaymentApplication:(id)application withPassUniqueIdentifier:(id)identifier forceTransactionGeneration:(BOOL)generation recoverMissingTransactions:(BOOL)transactions balanceLabelDictionary:(id)dictionary unitDictionary:(id)self0 planLabelDictionary:(id)self1 completion:(id)self2
{
  transactionsCopy = transactions;
  historyCopy = history;
  dateCopy = date;
  applicationCopy = application;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  unitDictionaryCopy = unitDictionary;
  labelDictionaryCopy = labelDictionary;
  completionCopy = completion;
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
  selfCopy = self;
  v61[4] = self;
  v52 = identifierCopy;
  v62 = v52;
  v19 = applicationCopy;
  v63 = v19;
  v20 = historyCopy;
  v64 = v20;
  v69 = &v89;
  v39 = dictionaryCopy;
  v65 = v39;
  v41 = unitDictionaryCopy;
  v66 = v41;
  v45 = labelDictionaryCopy;
  v67 = v45;
  v70 = &v77;
  v71 = &v83;
  generationCopy = generation;
  v47 = dateCopy;
  v68 = v47;
  v72 = &v95;
  v73 = &v101;
  v76 = transactionsCopy;
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
    v24 = [(PDDatabaseManager *)selfCopy insertOrUpdatePaymentTransaction:v102[5] withPassUniqueIdentifier:v52 paymentApplication:v21 insertionMode:2 performTruncation:1 insertedTransaction:0];
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
      if (v31 == v32 || !transactionsCopy)
      {
        if (v31 != v32)
        {
          goto LABEL_20;
        }
      }

      else
      {
        lastObject = [v108[5] lastObject];
        v35 = v31 == lastObject;

        if (v35)
        {
LABEL_20:
          [v31 addUpdateReasons:v22];
        }
      }

      v36 = [(PDDatabaseManager *)selfCopy insertOrUpdatePaymentTransaction:v31 withPassUniqueIdentifier:v52 paymentApplication:v50 insertionMode:0 performTruncation:1 insertedTransaction:0];
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
    [(PDDatabaseManager *)selfCopy dispatchDelegateCallback:v53];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v26, v90[5]);
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);
}

- (id)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application
{
  database = self->_database;
  applicationCopy = application;
  identifierCopy = identifier;
  secureElementIdentifier = [applicationCopy secureElementIdentifier];
  applicationIdentifier = [applicationCopy applicationIdentifier];

  v11 = [PaymentApplication anyInDatabase:database withPassUniqueIdentifier:identifierCopy secureElementIdentifier:secureElementIdentifier paymentApplicationIdentifier:applicationIdentifier];

  if (v11)
  {
    v12 = +[FelicaTransitAppletState anyInDatabase:withPaymentApplicationPID:](FelicaTransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v11 persistentID]);
    if (!v12)
    {
      v12 = +[TransitAppletState anyInDatabase:withPaymentApplicationPID:](TransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v11 persistentID]);
    }

    transitAppletState = [v12 transitAppletState];
  }

  else
  {
    transitAppletState = 0;
  }

  return transitAppletState;
}

- (BOOL)canPerformAction:(id)action forPassWithUniqueIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v8 = [(PDDatabaseManager *)self passWithUniqueIdentifier:identifierCopy];
  paymentPass = [v8 paymentPass];

  if (paymentPass)
  {
    [paymentPass effectiveContactlessPaymentApplicationState];
    v10 = PKPaymentApplicationStateIsPersonalized() != 0;
  }

  else
  {
    v10 = 0;
  }

  serviceProviderSupportedCountries = [actionCopy serviceProviderSupportedCountries];
  serviceProviderAcceptedNetworks = [actionCopy serviceProviderAcceptedNetworks];
  v13 = [NSSet setWithArray:serviceProviderAcceptedNetworks];

  v14 = +[NSDate date];
  if ([actionCopy type] == 2)
  {
    associatedPlanIdentifier = [actionCopy associatedPlanIdentifier];
    if (associatedPlanIdentifier)
    {
      associatedPlan = [actionCopy associatedPlan];

      if (!associatedPlan)
      {
        v17 = PKTransitCommutePlanInPassForIdentifier();
        [actionCopy setAssociatedPlan:v17];
      }
    }
  }

  availableFrom = [actionCopy availableFrom];
  availableUntil = [actionCopy availableUntil];
  if (v10)
  {
    v20 = -[PDDatabaseManager passesForNonWebInAppPaymentOnNetworks:withCapabilities:issuerCountryCodes:paymentRequestType:isMultiTokensRequest:webService:](self, "passesForNonWebInAppPaymentOnNetworks:withCapabilities:issuerCountryCodes:paymentRequestType:isMultiTokensRequest:webService:", v13, [actionCopy serviceProviderCapabilities], serviceProviderSupportedCountries, 0, 0, 0);

    if (v20)
    {
      if (availableFrom)
      {
        LODWORD(v20) = [v14 compare:availableFrom] != -1;
        if (!v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      if (availableUntil)
      {
        LOBYTE(v20) = [v14 compare:availableUntil] != 1;
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

- (void)updatePeerPaymentMemo:(id)memo forTransactionWithServiceIdentifier:(id)identifier
{
  memoCopy = memo;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001521B0;
  v9[3] = &unk_100841740;
  v9[4] = self;
  identifierCopy = identifier;
  v11 = memoCopy;
  v7 = memoCopy;
  v8 = identifierCopy;
  [(PDDatabaseManager *)self performTransactionWithBlock:v9];
}

- (void)updatePeerPaymentMessageReceivedDate:(id)date forTransactionWithServiceIdentifier:(id)identifier
{
  dateCopy = date;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001523D8;
  v9[3] = &unk_100841740;
  v9[4] = self;
  identifierCopy = identifier;
  v11 = dateCopy;
  v7 = dateCopy;
  v8 = identifierCopy;
  [(PDDatabaseManager *)self performTransactionWithBlock:v9];
}

- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentMemo:(id)memo counterpartImageDataIdentifier:(id)identifier forTransactionWithServiceIdentifier:(id)serviceIdentifier completion:(id)completion
{
  memoCopy = memo;
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  completionCopy = completion;
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
  v14 = serviceIdentifierCopy;
  v18 = v14;
  v15 = memoCopy;
  v19 = v15;
  v16 = identifierCopy;
  v20 = v16;
  v21 = &v22;
  [(PDDatabaseManager *)self performTransactionWithBlock:v17];
  completionCopy[2](completionCopy, 1, v23[5]);

  _Block_object_dispose(&v22, 8);
}

- (id)updateMerchant:(id)merchant forTransaction:(id)transaction passUniqueIdentifier:(id)identifier
{
  merchantCopy = merchant;
  database = self->_database;
  identifier = [transaction identifier];
  v10 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];

  [v10 updateWithMerchant:merchantCopy];

  return merchantCopy;
}

- (id)insertOrUpdatePaymentMessage:(id)message forPassUniqueIdentifier:(id)identifier paymentApplication:(id)application performTruncation:(BOOL)truncation
{
  truncationCopy = truncation;
  messageCopy = message;
  identifierCopy = identifier;
  applicationCopy = application;
  paymentMessage = 0;
  if (messageCopy && identifierCopy)
  {
    database = self->_database;
    serviceIdentifier = [messageCopy serviceIdentifier];
    v16 = [PaymentMessage anyInDatabase:database withServiceIdentifier:serviceIdentifier forPassWithUniqueIdentifier:identifierCopy];

    if (v16)
    {
      [v16 updateWithPaymentMessage:messageCopy];
    }

    else
    {
      v17 = self->_database;
      messageDate = [messageCopy messageDate];
      v19 = [PaymentMessage numberOfPaymentMessagesInDatabase:v17 forPassUniqueIdentifier:identifierCopy newerThanDate:messageDate];

      v20 = PKMaxPerPassPaymentMessageHistory;
      if (v19 < PKMaxPerPassPaymentMessageHistory && [messageCopy isValid])
      {
        v26 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
        applicationIdentifier = [applicationCopy applicationIdentifier];
        v22 = self->_database;
        secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
        v27 = applicationIdentifier;
        v24 = [PaymentApplication anyInDatabase:v22 withApplicationIdentifier:applicationIdentifier secureElementIdentifiers:secureElementIdentifiers];

        v16 = [PaymentMessage insertPaymentMessage:messageCopy withPaymentPass:v26 paymentApplication:v24 inDatabase:self->_database];
        if (truncationCopy)
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

    paymentMessage = [v16 paymentMessage];
    if (paymentMessage)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100152AD4;
      v28[3] = &unk_100848738;
      v29 = identifierCopy;
      v30 = paymentMessage;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v28];
    }
  }

  return paymentMessage;
}

- (id)insertOrUpdateAppletStateDirtyForTransitAppletStateDirty:(id)dirty
{
  v3 = [AppletStateDirty insertOrUpdateAppletStateDirtyForPassUniqueIdentifier:dirty inDatabase:self->_database];
  dirtyAppletState = [v3 dirtyAppletState];

  return dirtyAppletState;
}

- (void)deleteDirtyAppletStatesForTransitAppletStateDirty:(id)dirty
{
  database = self->_database;
  dirtyCopy = dirty;
  [AppletStateDirty deleteEntitiesForAppletState:dirtyCopy inDatabase:database];
  passUniqueIdentifier = [dirtyCopy passUniqueIdentifier];
  applicationIdentifier = [dirtyCopy applicationIdentifier];
  secureElementIdentifier = [dirtyCopy secureElementIdentifier];

  v8 = [PaymentApplication anyInDatabase:self->_database withPassUniqueIdentifier:passUniqueIdentifier secureElementIdentifier:secureElementIdentifier paymentApplicationIdentifier:applicationIdentifier];
  v9 = +[TransitAppletState anyInDatabase:withPaymentApplicationPID:](TransitAppletState, "anyInDatabase:withPaymentApplicationPID:", self->_database, [v8 persistentID]);
  v10 = v9;
  if (v9)
  {
    transitAppletState = [v9 transitAppletState];
    [transitAppletState setAppletStateDirty:0];
    [v10 updateWithAppletState:transitAppletState];
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

        dirtyAppletState = [*(*(&v12 + 1) + 8 * i) dirtyAppletState];
        [v3 addObject:dirtyAppletState];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_recomputedPaymentBalanceForIdentifier:(id)identifier value:(id)value currency:(id)currency exponent:(int64_t)exponent unitDictionary:(id)dictionary
{
  currencyCopy = currency;
  valueCopy = value;
  identifierCopy = identifier;
  v14 = [dictionary objectForKeyedSubscript:identifierCopy];
  [v14 integerValue];
  v15 = PKLocalizedPaymentUnitKeyForType();
  v16 = v15;
  if (v14 && v15)
  {
    v17 = PKLocalizedPaymentString(v15, @"%lu", [valueCopy unsignedIntegerValue]);
    v18 = [[PKCurrencyAmount alloc] initWithAmount:valueCopy exponent:exponent preformattedString:v17];

    v19 = [[PKPaymentBalance alloc] initWithIdentifier:identifierCopy forCurrencyAmount:v18];
    identifierCopy = v18;
  }

  else
  {
    v17 = [[PKCurrencyAmount alloc] initWithAmount:valueCopy currency:currencyCopy exponent:exponent];

    v19 = [[PKPaymentBalance alloc] initWithIdentifier:identifierCopy forCurrencyAmount:v17];
  }

  v20 = +[NSDate date];
  [v19 setLastUpdateDate:v20];

  return v19;
}

- (void)resolvePendingTransitTransactionAmountsWithPaymentPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v60 = PKPaymentPassUnitDictionary(passCopy);
  v51 = passCopy;
  v59 = PKPaymentPassBalanceLabelDictionary(passCopy);
  selfCopy = self;
  v70 = [PaymentTransactionAmount pendingTransactionAmountsInDatabase:self->_database forPassWithUniqueIdentifier:uniqueID];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = uniqueID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolving pending transit transaction amounts for pass with unique identifier: %@", buf, 0xCu);
  }

  oslog = v6;

  v56 = uniqueID;
  v7 = [PaymentBalance paymentBalancesInDatabase:self->_database forPassWithUniqueIdentifier:uniqueID];
  v8 = objc_alloc_init(NSMutableDictionary);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v50 = v7;
  allObjects = [v7 allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v85 objects:v91 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v85 + 1) + 8 * i);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        identifiers = [v14 identifiers];
        allObjects2 = [identifiers allObjects];

        v17 = [allObjects2 countByEnumeratingWithState:&v81 objects:v90 count:16];
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
                objc_enumerationMutation(allObjects2);
              }

              [v8 setObject:v14 forKeyedSubscript:*(*(&v81 + 1) + 8 * j)];
            }

            v18 = [allObjects2 countByEnumeratingWithState:&v81 objects:v90 count:16];
          }

          while (v18);
        }
      }

      v11 = [allObjects countByEnumeratingWithState:&v85 objects:v91 count:16];
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
        transactionAmount = [v23 transactionAmount];
        unitIdentifier = [transactionAmount unitIdentifier];
        v26 = [v60 objectForKeyedSubscript:unitIdentifier];
        v67 = [v59 objectForKeyedSubscript:unitIdentifier];
        v27 = [v8 objectForKeyedSubscript:unitIdentifier];
        v69 = v26;
        [v26 integerValue];
        v66 = PKLocalizedPaymentUnitKeyForType();
        amount = [transactionAmount amount];
        v28Amount = [amount amount];
        currency = [amount currency];
        v65 = amount;
        exponent = [amount exponent];
        v31 = currency;
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
            v64 = transactionAmount;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v93 = unitIdentifier;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Encountered a pending amount for unitIdentifier %@ a currency which shouldnt be possible", buf, 0xCu);
            }

            v63 = unitIdentifier;

            v39 = [PKCurrencyAmount alloc];
            v40 = v28Amount;
            v41 = v32;
            v42 = exponent;
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

        v57 = exponent;
        v35 = v67;
        if (!v69)
        {
          goto LABEL_40;
        }

        v62 = v27;
        v63 = unitIdentifier;
        v64 = transactionAmount;
        if (!v66)
        {
          v39 = [PKCurrencyAmount alloc];
          v40 = v28Amount;
          v41 = v32;
          v42 = v57;
          goto LABEL_38;
        }

        pk_absoluteValue = [v28Amount pk_absoluteValue];
        v37 = PKLocalizedPaymentString(v66, @"%lu", [pk_absoluteValue unsignedLongValue]);

        v38 = [[PKCurrencyAmount alloc] initWithAmount:v28Amount exponent:v57 preformattedString:v37];
LABEL_39:
        v35 = v67;
        v68 = v38;
        v43 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v38 label:v35];
        [v23 updateWithPaymentAmount:v43];
        paymentTransaction = [v23 paymentTransaction];
        paymentApplication = [paymentTransaction paymentApplication];
        v44PaymentTransaction = [paymentTransaction paymentTransaction];
        v45PaymentApplication = [paymentApplication paymentApplication];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100153654;
        v72[3] = &unk_100848958;
        v73 = v56;
        v74 = v44PaymentTransaction;
        v75 = v45PaymentApplication;
        v27 = v62;
        v76 = v62;
        v48 = v45PaymentApplication;
        v49 = v44PaymentTransaction;
        [(PDDatabaseManager *)selfCopy dispatchDelegateCallback:v72];

        v21 = v54;
        unitIdentifier = v63;
        transactionAmount = v64;
LABEL_40:
      }

      v61 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    }

    while (v61);
  }
}

- (void)recomputeBalancesForPaymentPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  selfCopy = self;
  v6 = [PaymentBalance paymentBalancesInDatabase:self->_database forPassWithUniqueIdentifier:uniqueID];
  if ([v6 count])
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = uniqueID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recomputing balances for pass with unique identifier: %@", buf, 0xCu);
    }

    v21 = uniqueID;

    v22 = passCopy;
    v24 = PKPaymentPassUnitDictionary(passCopy);
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
          identifiers = [v13 identifiers];
          anyObject = [identifiers anyObject];
          value = [v13 value];
          currencyCode = [v13 currencyCode];
          v18 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](selfCopy, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", anyObject, value, currencyCode, [v13 exponent], v24);

          localizedTitle = [v13 localizedTitle];
          [v18 setLocalizedTitle:localizedTitle];

          [v8 addObject:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    uniqueID = v21;
    if ([v8 count])
    {
      [(PDDatabaseManager *)selfCopy updatePaymentBalances:v8 forPassUniqueIdentifier:v21];
    }

    passCopy = v22;
    v6 = v20;
  }
}

- (void)_updatePaymentBalancesAndPlansForTransitAppletState:(id)state passUniqueIdentifier:(id)identifier paymentApplicationPID:(int64_t)d unitDictionary:(id)dictionary
{
  stateCopy = state;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v11 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v58 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  balances = [stateCopy balances];
  v60 = v11;
  if (balances)
  {
    v14 = balances;
    balances2 = [stateCopy balances];
    v16 = [balances2 count];

    if (v16)
    {
      v55 = identifierCopy;
      v56 = stateCopy;
      persistentID = [v58 persistentID];
      v54 = [TransitAppletState anyInDatabase:self->_database withPaymentApplicationPID:d];
      v18 = +[TransitAppletStateBalance transitAppletBalancesInDatabase:forPaymentPassPID:andTransitAppletStatePID:](TransitAppletStateBalance, "transitAppletBalancesInDatabase:forPaymentPassPID:andTransitAppletStatePID:", self->_database, persistentID, [v54 persistentID]);
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
            identifier = [v23 identifier];
            balance = [v23 balance];
            currency = [v23 currency];
            v27 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](selfCopy, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", identifier, balance, currency, [v23 exponent], dictionaryCopy);

            expirationDate = [v23 expirationDate];
            [v27 setExpirationDate:expirationDate];

            v11 = v60;
            [v60 addObject:v27];
          }

          v20 = [v18 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v20);
      }

      v29 = PKLogFacilityTypeGetObject();
      identifierCopy = v55;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v55;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating balances for multiple balance pass with unique identifier: %@", &buf, 0xCu);
      }

      stateCopy = v56;
    }
  }

  balance2 = [stateCopy balance];
  if (balance2)
  {
    v31 = [PKCurrencyAmount alloc];
    balance3 = [stateCopy balance];
    currency2 = [stateCopy currency];
    v34 = [v31 initWithAmount:balance3 currency:currency2 exponent:0];

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
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updating balance for single balance pass with unique identifier: %@", &buf, 0xCu);
    }
  }

  loyaltyBalance = [stateCopy loyaltyBalance];

  if (loyaltyBalance)
  {
    v40 = [PKCurrencyAmount alloc];
    loyaltyBalance2 = [stateCopy loyaltyBalance];
    v42 = loyaltyBalance2;
    if (loyaltyBalance2)
    {
      [loyaltyBalance2 decimalValue];
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
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Updating loyalty balance for single balance pass with unique identifier: %@", &buf, 0xCu);
    }
  }

  if ([v11 count])
  {
    v49 = v11;
    historySequenceNumber = [stateCopy historySequenceNumber];
    stringValue = [historySequenceNumber stringValue];
    [(PDDatabaseManager *)selfCopy updatePaymentBalances:v49 forPassUniqueIdentifier:identifierCopy transactionSequenceNumber:stringValue];
  }

  commutePlans = [stateCopy commutePlans];
  v53 = commutePlans;
  if (commutePlans && [commutePlans count])
  {
    [(PDDatabaseManager *)selfCopy updateAppletCommutePlans:v53 forPassUniqueIdentifier:identifierCopy paymentApplicationPID:d];
  }
}

- (void)updateAppletCommutePlans:(id)plans forPassUniqueIdentifier:(id)identifier paymentApplicationPID:(int64_t)d
{
  plansCopy = plans;
  identifierCopy = identifier;
  v10 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  if (v10)
  {
    v42 = identifierCopy;
    v11 = [TransitAppletState anyInDatabase:self->_database withPaymentApplicationPID:d];
    persistentID = [v10 persistentID];
    v39 = v11;
    persistentID2 = [v11 persistentID];
    [TransitAppletStateCommutePlan deleteEntitiesForPaymentPassPID:persistentID andTransitAppletStatePID:persistentID2 inDatabase:self->_database];
    v14 = [TransitAppletStateCommutePlan insertTransitAppletCommutePlans:plansCopy withPaymentPassPID:persistentID withTransitAppletStatePID:persistentID2 inDatabase:self->_database];
    v45 = objc_alloc_init(NSMutableArray);
    v41 = v10;
    pass = [v10 pass];
    v16 = [(PDDatabaseManager *)self _registeredPass:pass];
    paymentPass = [v16 paymentPass];

    v38 = paymentPass;
    transitCommutePlans = [paymentPass transitCommutePlans];
    v19 = objc_alloc_init(NSMutableDictionary);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = transitCommutePlans;
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
          identifier = [v25 identifier];
          [v19 setObject:v25 forKey:identifier];
        }

        v22 = [v20 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v22);
    }

    selfCopy = self;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = plansCopy;
    obj = plansCopy;
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
          identifier2 = [v31 identifier];
          v33 = [v19 objectForKeyedSubscript:identifier2];
          titleText = [v33 titleText];
          descriptionText = [v33 descriptionText];
          v36 = [[PKPaymentCommutePlanDetail alloc] initWithAppletCommutePlan:v31 label:titleText value:descriptionText];
          [v45 safelyAddObject:v36];
        }

        v28 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v28);
    }

    v37 = [v45 copy];
    identifierCopy = v42;
    [(PDDatabaseManager *)selfCopy updatePaymentPlans:v37 forPassUniqueIdentifier:v42];

    plansCopy = v43;
    v10 = v41;
  }

  else
  {
    v37 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Unable to set applet commute plans for a pass that doesn't exist: %@", buf, 0xCu);
    }
  }
}

- (void)updatePaymentPlans:(id)plans forPassUniqueIdentifier:(id)identifier
{
  plansCopy = plans;
  identifierCopy = identifier;
  v8 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  v9 = v8;
  if (v8)
  {
    database = self->_database;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100154458;
    v12[3] = &unk_100841768;
    v13 = v8;
    selfCopy = self;
    v15 = plansCopy;
    v16 = identifierCopy;
    sub_1005D4424(database, v12);

    v11 = v13;
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Payment plans updated for pass that doesn't exist: %@", buf, 0xCu);
    }
  }
}

- (void)updatePaymentBalances:(id)balances forPassUniqueIdentifier:(id)identifier transactionSequenceNumber:(id)number
{
  balancesCopy = balances;
  identifierCopy = identifier;
  numberCopy = number;
  v10 = objc_alloc_init(NSMutableDictionary);
  selfCopy = self;
  v79 = identifierCopy;
  [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:identifierCopy];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v77 = v106 = 0u;
  allObjects = [v77 allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v103 objects:v111 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v103 + 1) + 8 * i);
        identifiers = [v16 identifiers];
        [v10 setObject:v16 forKeyedSubscript:identifiers];
      }

      v13 = [allObjects countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v13);
  }

  v18 = selfCopy;
  v19 = v79;
  v20 = [Pass anyInDatabase:selfCopy->_database withUniqueID:v79];
  if (v20)
  {
    v76 = v20;
    pass = [v20 pass];
    v22 = [(PDDatabaseManager *)selfCopy _registeredPass:pass];
    paymentPass = [v22 paymentPass];

    v85 = PKPaymentPassUnitDictionary(paymentPass);
    v84 = objc_alloc_init(NSMutableArray);
    v80 = paymentPass;
    isAutoTopEnabled = [paymentPass isAutoTopEnabled];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = balancesCopy;
    v24 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (!v24)
    {
      v81 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v25 = v24;
    v75 = balancesCopy;
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
        identifiers2 = [v29 identifiers];
        anyObject = [identifiers2 anyObject];
        value = [v29 value];
        currencyCode = [v29 currencyCode];
        v34 = -[PDDatabaseManager _recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:](selfCopy, "_recomputedPaymentBalanceForIdentifier:value:currency:exponent:unitDictionary:", anyObject, value, currencyCode, [v29 exponent], v85);

        localizedTitle = [v29 localizedTitle];
        [v34 setLocalizedTitle:localizedTitle];

        localizedDescription = [v29 localizedDescription];
        [v34 setLocalizedDescription:localizedDescription];

        [v84 addObject:v34];
        if (isAutoTopEnabled && [v80 isAutoTopUpBalance:v34])
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
      balancesCopy = v75;
      v19 = v79;
      v18 = selfCopy;
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
      v55 = numberCopy;
      v53 = v80;
      goto LABEL_44;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    autoTopUpFields = [v80 autoTopUpFields];
    v39 = [autoTopUpFields countByEnumeratingWithState:&v95 objects:v107 count:16];
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
            objc_enumerationMutation(autoTopUpFields);
          }

          v46 = *(*(&v95 + 1) + 8 * k);
          v47 = [v46 key];
          if ([v47 isEqualToString:v42])
          {
            [v46 amount];
            v44 = v48;
            [v46 threshold];
            v43 = v49;
            foreignReferenceIdentifiers = [v46 foreignReferenceIdentifiers];

            obj = foreignReferenceIdentifiers;
          }
        }

        v40 = [autoTopUpFields countByEnumeratingWithState:&v95 objects:v107 count:16];
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

    currencyValue = [v81 currencyValue];
    amount = [currencyValue amount];

    balancesCopy = v75;
    v19 = v79;
    if (v51 && v43 > 0.0)
    {
      notificationService = [NSNumber numberWithDouble:v43];
      if ([amount compare:notificationService] == -1)
      {
        activationState = [v80 activationState];

        if (activationState)
        {
          goto LABEL_41;
        }

        v64 = numberCopy;
        if (!numberCopy)
        {
          v65 = [(PDDatabaseManager *)selfCopy primaryPaymentApplicationForPassUniqueIdentifier:v79];
          v66 = [(PDDatabaseManager *)selfCopy transitStateWithPassUniqueIdentifier:v79 paymentApplication:v65];
          historySequenceNumber = [v66 historySequenceNumber];
          stringValue = [historySequenceNumber stringValue];
          v69 = stringValue;
          v70 = @"0";
          if (stringValue)
          {
            v70 = stringValue;
          }

          v64 = v70;
        }

        v71 = [(PDDatabaseManager *)selfCopy _transactionServiceForPass:v80];
        notificationService = [v71 notificationService];

        WeakRetained = objc_loadWeakRetained(&selfCopy->_notificationServicesDelegate);
        uniqueID = [v80 uniqueID];
        partnerAccountIdentifier = [v80 partnerAccountIdentifier];
        numberCopy = v64;
        [WeakRetained handlePostBalanceTaskWithNotificationService:notificationService passUniqueIdenitifer:uniqueID accountIdentifier:partnerAccountIdentifier transactionSequenceNumber:v64 balance:v81];

        balancesCopy = v75;
      }
    }

LABEL_41:

    v18 = selfCopy;
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
  v55 = numberCopy;
LABEL_44:
}

- (id)paymentBalanceWithIdentifier:(id)identifier forPassUniqueIdentifier:(id)uniqueIdentifier
{
  v4 = [PaymentBalance anyInDatabase:self->_database withIdentifier:identifier forPassWithUniqueIdentifier:uniqueIdentifier];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    paymentBalance = [v4 paymentBalance];
  }

  else
  {
    paymentBalance = 0;
  }

  return paymentBalance;
}

- (void)truncatePaymentBalancesForPassUniqueIdentifier:(id)identifier toMaximumEntityCount:(int64_t)count
{
  identifierCopy = identifier;
  v7 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  if (v7)
  {
    v8 = [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:identifierCopy];
    [PaymentBalance truncateEntitiesForPass:v7 inDatabase:self->_database toCount:count];
    v9 = [(PDDatabaseManager *)self paymentBalancesForPassUniqueIdentifier:identifierCopy];
    v10 = [v9 count];
    if (v10 != [v8 count])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001551B8;
      v11[3] = &unk_100848738;
      v12 = identifierCopy;
      v13 = v9;
      [(PDDatabaseManager *)self dispatchDelegateCallback:v11];
    }
  }
}

- (void)deleteAllPaymentBalancesForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
  if (v5)
  {
    [PaymentBalance deleteEntitiesForPass:v5 inDatabase:self->_database];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100155300;
    v6[3] = &unk_1008486C0;
    v7 = identifierCopy;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v6];
  }
}

- (id)balanceReminderThresholdForBalanceIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier
{
  if (uniqueIdentifier)
  {
    v5 = [BalanceReminder balanceReminderInDatabase:self->_database forBalanceIdentifier:identifier passIdentifier:uniqueIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setBalanceReminder:(id)reminder forBalanceIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v11 = [Pass anyInDatabase:self->_database withUniqueID:uniqueIdentifierCopy];
  if (v11)
  {
    v12 = [BalanceReminder insertOrUpdateBalanceReminder:reminderCopy forBalanceIdentifier:identifierCopy pass:v11 database:self->_database];
    balanceReminder = [v12 balanceReminder];
    if (balanceReminder)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100155550;
      v16[3] = &unk_100848980;
      v17 = uniqueIdentifierCopy;
      v18 = balanceReminder;
      v19 = identifierCopy;
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

- (id)commutePlanReminderForCommutePlanIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier
{
  if (uniqueIdentifier)
  {
    v5 = [CommutePlanReminder commutePlanReminderInDatabase:self->_database forCommutePlanIdentifier:identifier passIdentifier:uniqueIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setCommutePlanReminder:(id)reminder forCommutePlanIdentifier:(id)identifier withPassUniqueIdentifier:(id)uniqueIdentifier
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v11 = [Pass anyInDatabase:self->_database withUniqueID:uniqueIdentifierCopy];
  if (v11 && ([CommutePlanReminder insertOrUpdateCommutePlanReminder:reminderCopy forCommutePlanIdentifier:identifierCopy pass:v11 database:self->_database], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001556E0;
    v15[3] = &unk_1008486C0;
    v16 = uniqueIdentifierCopy;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v15];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)transactionArchiveForRecurringPayment:(id)payment
{
  paymentCopy = payment;
  database = self->_database;
  identifier = [paymentCopy identifier];
  v7 = [PaymentTransactionArchive anyInDatabase:database forRecurringPaymentIdentifier:identifier];

  if (!v7)
  {
    identifier2 = [paymentCopy identifier];
    v9 = [PeerPaymentRecurringPayment recurringPaymentWithIdentifier:identifier2 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForRecurringPayment:v9 inDatabase:self->_database];
  }

  transactionArchive = [v7 transactionArchive];

  return transactionArchive;
}

- (void)updateTransactionArchive:(id)archive forRecurringPayment:(id)payment
{
  database = self->_database;
  archiveCopy = archive;
  identifier = [payment identifier];
  v8 = [PaymentTransactionArchive anyInDatabase:database forRecurringPaymentIdentifier:identifier];

  [v8 updateWithTransactionArchive:archiveCopy];
}

- (id)transactionArchiveForCounterpartImageData:(id)data
{
  dataCopy = data;
  database = self->_database;
  identifier = [dataCopy identifier];
  v7 = [PaymentTransactionArchive anyInDatabase:database forCounterpartImageDataIdentifier:identifier];

  if (!v7)
  {
    identifier2 = [dataCopy identifier];
    v9 = [PeerPaymentCounterpartImageData counterpartImageDataWithIdentifier:identifier2 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForCounterpartImageData:v9 inDatabase:self->_database];
  }

  transactionArchive = [v7 transactionArchive];

  return transactionArchive;
}

- (void)updateTransactionArchive:(id)archive forCounterpartImageData:(id)data
{
  database = self->_database;
  archiveCopy = archive;
  identifier = [data identifier];
  v8 = [PaymentTransactionArchive anyInDatabase:database forCounterpartImageDataIdentifier:identifier];

  [v8 updateWithTransactionArchive:archiveCopy];
}

- (id)transactionArchiveForPendingRequest:(id)request
{
  requestCopy = request;
  database = self->_database;
  requestToken = [requestCopy requestToken];
  v7 = [PaymentTransactionArchive anyInDatabase:database forPendingRequestToken:requestToken];

  if (!v7)
  {
    requestToken2 = [requestCopy requestToken];
    v9 = [PeerPaymentPendingRequest pendingRequestWithRequestToken:requestToken2 inDatabase:self->_database];

    v7 = [PaymentTransactionArchive insertArchiveForPendingRequest:v9 inDatabase:self->_database];
  }

  transactionArchive = [v7 transactionArchive];

  return transactionArchive;
}

- (void)updateTransactionArchive:(id)archive forPendingRequest:(id)request
{
  database = self->_database;
  archiveCopy = archive;
  requestToken = [request requestToken];
  v8 = [PaymentTransactionArchive anyInDatabase:database forPendingRequestToken:requestToken];

  [v8 updateWithTransactionArchive:archiveCopy];
}

- (id)transactionArchiveForTransactionIdentifier:(id)identifier
{
  v3 = [PaymentTransactionArchive anyInDatabase:self->_database forTransactionIdentifier:identifier];
  transactionArchive = [v3 transactionArchive];

  return transactionArchive;
}

- (id)transactionArchiveForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier forTransactionSourceIdentifier:sourceIdentifier];
  if (v5)
  {
    v6 = [PaymentTransactionArchive anyInDatabase:self->_database forTransaction:v5];
    if ([v6 existsInDatabase])
    {
      transactionArchive = [v6 transactionArchive];
    }

    else
    {
      transactionArchive = 0;
    }
  }

  else
  {
    transactionArchive = 0;
  }

  return transactionArchive;
}

- (id)_insertOrUpdatePaymentTransaction:(id)transaction transactionSourceIdentifier:(id)identifier transactionArchive:(id)archive originDeviceID:(id)d insertionMode:(unint64_t)mode performTruncation:(BOOL)truncation insertedTransaction:(BOOL *)insertedTransaction
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  archiveCopy = archive;
  dCopy = d;
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
  v19 = identifierCopy;
  v25 = v19;
  v20 = transactionCopy;
  v26 = v20;
  selfCopy = self;
  modeCopy = mode;
  v21 = archiveCopy;
  insertedTransactionCopy = insertedTransaction;
  truncationCopy = truncation;
  v28 = v21;
  v29 = &v33;
  [(PDDatabaseManager *)self performTransactionWithBlock:v24];
  v22 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v22;
}

- (id)insertOrUpdatePaymentTransaction:(id)transaction withPassUniqueIdentifier:(id)identifier paymentApplication:(id)application originDeviceID:(id)d insertionMode:(unint64_t)mode performTruncation:(BOOL)truncation insertedTransaction:(BOOL *)insertedTransaction
{
  truncationCopy = truncation;
  transactionCopy = transaction;
  identifierCopy = identifier;
  applicationCopy = application;
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100005B40;
  v34 = sub_10000B1AC;
  transactionSourceIdentifier = [applicationCopy transactionSourceIdentifier];
  v19 = v31[5];
  if (identifierCopy && !v19)
  {
    database = self->_database;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100158318;
    v26 = &unk_100848590;
    selfCopy = self;
    v28 = identifierCopy;
    v29 = &v30;
    sub_1005D4424(database, &v23);

    v19 = v31[5];
  }

  selfCopy = [(PDDatabaseManager *)self _insertOrUpdatePaymentTransaction:transactionCopy transactionSourceIdentifier:v19 transactionArchive:0 originDeviceID:dCopy insertionMode:mode performTruncation:truncationCopy insertedTransaction:insertedTransaction, v23, v24, v25, v26, selfCopy];
  _Block_object_dispose(&v30, 8);

  return selfCopy;
}

- (id)updateSuppressBehavior:(unint64_t)behavior forPaymentTransaction:(id)transaction sourceIdentifier:(id)identifier
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  [transactionCopy setSuppressBehavior:behavior];
  database = self->_database;
  identifier = [transactionCopy identifier];
  v12 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];

  paymentTransaction = [v12 paymentTransaction];
  [paymentTransaction addUpdateReasons:{objc_msgSend(transactionCopy, "updateReasons")}];
  [v12 updateSuppressBehavior:behavior];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100158760;
  v20[3] = &unk_100848980;
  v21 = identifierCopy;
  v14 = transactionCopy;
  v22 = v14;
  v23 = paymentTransaction;
  v15 = paymentTransaction;
  v16 = identifierCopy;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (void)updateSuppressBehavior:(unint64_t)behavior forTransactionSourceIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier
{
  identifierCopy = identifier;
  v9 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:serviceIdentifier forTransactionSourceIdentifier:identifierCopy];
  v10 = v9;
  if (v9)
  {
    paymentTransaction = [v9 paymentTransaction];
    [v10 updateSuppressBehavior:behavior];
    paymentTransaction2 = [v10 paymentTransaction];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10015889C;
    v15[3] = &unk_100848980;
    v16 = identifierCopy;
    v17 = paymentTransaction2;
    v18 = paymentTransaction;
    v13 = paymentTransaction;
    v14 = paymentTransaction2;
    [(PDDatabaseManager *)self dispatchDelegateCallback:v15];
  }
}

- (void)updateSuppressBehavior:(unint64_t)behavior forPaymentTransactions:(id)transactions sourceIdentifier:(id)identifier
{
  transactionsCopy = transactions;
  identifierCopy = identifier;
  if ([transactionsCopy count])
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001589C8;
    v10[3] = &unk_100848A70;
    objc_copyWeak(v13, &location);
    v11 = transactionsCopy;
    v13[1] = behavior;
    v12 = identifierCopy;
    [(PDDatabaseManager *)self performTransactionWithBlock:v10];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

- (void)updateRequiresMerchantReprocessing:(BOOL)reprocessing forTransactionWithIdentifier:(id)identifier
{
  reprocessingCopy = reprocessing;
  v5 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  if (v5)
  {
    v6 = v5;
    [v5 updateRequiresMerchantReprocessing:reprocessingCopy];
    v5 = v6;
  }
}

- (id)updateRedemptionType:(unint64_t)type forPaymentTransaction:(id)transaction sourceIdentifier:(id)identifier
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  [transactionCopy setRedemptionType:type];
  database = self->_database;
  identifier = [transactionCopy identifier];
  v12 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];

  paymentTransaction = [v12 paymentTransaction];
  [paymentTransaction addUpdateReasons:{objc_msgSend(transactionCopy, "updateReasons")}];
  [v12 updateRedemptionType:type];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100158CF0;
  v20[3] = &unk_100848980;
  v21 = identifierCopy;
  v14 = transactionCopy;
  v22 = v14;
  v23 = paymentTransaction;
  v15 = paymentTransaction;
  v16 = identifierCopy;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (id)removeMapsDataForTransactionWithIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier issueReportIdentifier:(id)reportIdentifier
{
  sourceIdentifierCopy = sourceIdentifier;
  reportIdentifierCopy = reportIdentifier;
  v10 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  paymentTransaction = [v10 paymentTransaction];
  if (v10)
  {
    [v10 removeMapsDataForIssueReportIdentifier:reportIdentifierCopy];
  }

  [v10 paymentTransaction];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100158E3C;
  v18[3] = &unk_100848980;
  v12 = v19 = sourceIdentifierCopy;
  v20 = v12;
  v21 = paymentTransaction;
  v13 = paymentTransaction;
  v14 = sourceIdentifierCopy;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)unsyncedPassesInContainer:(id)container
{
  containerCopy = container;
  v5 = PKCloudStorePassesSyncContainerName;
  v6 = containerCopy;
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

- (void)updatePassesWithSyncInformation:(id)information
{
  informationCopy = information;
  if ([informationCopy count])
  {
    v5 = [informationCopy pk_indexDictionaryByApplyingBlock:&stru_100848AB0];
    v14[0] = @"unique_id";
    v14[1] = @"is_cloud_kit_archived";
    v14[2] = @"cloud_kit_metadata";
    v14[3] = @"is_cloud_kit_securely_archived";
    v14[4] = @"cloud_kit_secure_metadata";
    v14[5] = @"ingested_date";
    v14[6] = @"modified_date";
    v14[7] = @"revoked";
    v6 = [NSArray arrayWithObjects:v14 count:8];
    allKeys = [v5 allKeys];
    database = self->_database;
    v9 = [Pass predicateForUniqueIDs:allKeys];
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

- (void)markPassAsSynced:(id)synced
{
  syncedCopy = synced;
  database = self->_database;
  uniqueID = [syncedCopy uniqueID];
  v7 = [Pass predicateForUniqueID:uniqueID];
  v8 = [(SQLiteEntity *)Pass queryWithDatabase:database predicate:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100159484;
  v10[3] = &unk_100848AD8;
  v11 = syncedCopy;
  v9 = syncedCopy;
  [Pass enumeratePassesForQuery:v8 withHandler:v10];
}

- (void)markAllPassesAsUnsyncedInContainer:(id)container
{
  containerCopy = container;
  v5 = PKCloudStorePassesSyncContainerName;
  v6 = containerCopy;
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

- (BOOL)hasTransactionWithTransactionIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)transactionWithTransactionIdentifier:(id)identifier
{
  v3 = [(PDDatabaseManager *)self dbTransactionWithTransactionIdentifier:identifier];
  paymentTransaction = [v3 paymentTransaction];

  return paymentTransaction;
}

- (id)transactionWithReferenceIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withReferenceIdentifier:identifier];
  paymentTransaction = [v3 paymentTransaction];

  return paymentTransaction;
}

- (BOOL)hasTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier
{
  v4 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:identifier transactionSourceIdentifier:sourceIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (id)transactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier forTransactionSourceIdentifier:sourceIdentifier];
  paymentTransaction = [v4 paymentTransaction];

  return paymentTransaction;
}

- (id)transactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier accountIdentifier:accountIdentifier accountType:type];
  paymentTransaction = [v5 paymentTransaction];

  return paymentTransaction;
}

- (id)ambiguousTransactionWithServiceIdentifier:(id)identifier
{
  [PaymentTransaction paymentTransactionsInDatabase:self->_database withServiceIdentifier:identifier];
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
        transactionSourceIdentifier = [v9 transactionSourceIdentifier];
        v11 = [(PDDatabaseManager *)self transactionSourceTypeForTransactionSourceIdentifier:transactionSourceIdentifier];

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

- (id)primaryAccountIdentifierForTransactionSourceIdentifier:(id)identifier
{
  v4 = [(PDDatabaseManager *)self passUniqueIdentifierForTransactionSourceIdentifier:identifier];
  v5 = [Pass anyInDatabase:self->_database withUniqueID:v4];
  v6 = v5;
  if (v5)
  {
    primaryAccountIdentifier = [v5 primaryAccountIdentifier];
  }

  else
  {
    primaryAccountIdentifier = 0;
  }

  return primaryAccountIdentifier;
}

- (id)passUniqueIdentifierForTransactionWithIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  passUniqueIdentifier = [v3 passUniqueIdentifier];

  return passUniqueIdentifier;
}

- (id)ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier
{
  v4 = [(PDDatabaseManager *)self ambiguousTransactionWithServiceIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    serviceIdentifier = [v4 serviceIdentifier];
    transactionSourceIdentifier = [v5 transactionSourceIdentifier];
    v8 = [(PDDatabaseManager *)self passUniqueIdentifierForTransactionWithServiceIdentifier:serviceIdentifier transactionSourceIdentifier:transactionSourceIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)paymentTransactionsWithFullPaymentHashes:(id)hashes transactionSourceIdentifiers:(id)identifiers
{
  hashesCopy = hashes;
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v8 = [PaymentTransaction paymentTransactionsInDatabase:self->_database withFullPaymentHashes:hashesCopy transactionSourceIdentifiers:identifiersCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier forTransactionSourceIdentifier:sourceIdentifier];
  passUniqueIdentifier = [v4 passUniqueIdentifier];

  return passUniqueIdentifier;
}

- (id)passUniqueIdentifierForTransactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier accountIdentifier:accountIdentifier accountType:type];
  passUniqueIdentifier = [v5 passUniqueIdentifier];

  return passUniqueIdentifier;
}

- (void)insertOrUpdateValueAddedServiceTransaction:(id)transaction forPassUniqueIdentifier:(id)identifier paymentTransaction:(id)paymentTransaction
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  paymentTransactionCopy = paymentTransaction;
  identifier = [transactionCopy identifier];
  v11 = [ValueAddedServiceTransaction anyInDatabase:self->_database withIdentifier:?];
  merchant = [transactionCopy merchant];
  identifier2 = [merchant identifier];
  hexEncoding = [identifier2 hexEncoding];

  v15 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:hexEncoding];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    merchant2 = [transactionCopy merchant];
    [(PDDatabaseManager *)self insertOrUpdateValueAddedMerchant:merchant2];

    v16 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:hexEncoding];
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  valueAddedMerchant = [v16 valueAddedMerchant];
  [transactionCopy setMerchant:valueAddedMerchant];

LABEL_5:
  if (v11)
  {
    [v11 updateWithValueAddedServiceTransaction:transactionCopy paymentTransaction:paymentTransactionCopy];
  }

  else
  {
    if (identifierCopy)
    {
      v19 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
    }

    else
    {
      v19 = 0;
    }

    v25 = paymentTransactionCopy;
    if (paymentTransactionCopy)
    {
      database = self->_database;
      identifier3 = [paymentTransactionCopy identifier];
      paymentTransactionCopy = [PaymentTransaction anyInDatabase:database withIdentifier:identifier3];
    }

    v22 = [ValueAddedServiceTransaction insertValueAddedServiceTransaction:transactionCopy withPass:v19 paymentTransaction:paymentTransactionCopy valueAddedMerchant:v16 inDatabase:self->_database, v25];
    [ValueAddedServiceTransaction truncateEntitiesForPass:v19 inDatabase:self->_database toCount:PKMaxPerPassValueAddedServiceTransactionHistory];

    paymentTransactionCopy = v26;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10015A220;
  v28[3] = &unk_100848738;
  v29 = identifierCopy;
  v30 = transactionCopy;
  v23 = transactionCopy;
  v24 = identifierCopy;
  [(PDDatabaseManager *)self dispatchDelegateCallback:v28];
}

- (id)valueAddedServiceTransactionWithIdentifier:(id)identifier
{
  v3 = [ValueAddedServiceTransaction anyInDatabase:self->_database withIdentifier:identifier];
  valueAddedServiceTransaction = [v3 valueAddedServiceTransaction];

  return valueAddedServiceTransaction;
}

- (void)insertOrUpdateValueAddedMerchant:(id)merchant
{
  merchantCopy = merchant;
  identifier = [merchantCopy identifier];
  hexEncoding = [identifier hexEncoding];

  v6 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:hexEncoding];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithValueAddedMerchant:merchantCopy];
  }

  else
  {
    v8 = [ValueAddedMerchant insertValueAddedMerchant:merchantCopy inDatabase:self->_database];
  }
}

- (id)valueAddedMerchantWithIdentifier:(id)identifier
{
  v3 = [ValueAddedMerchant anyInDatabase:self->_database withIdentifier:identifier];
  valueAddedMerchant = [v3 valueAddedMerchant];

  return valueAddedMerchant;
}

- (void)valueAddedMerchantWasPresented:(id)presented
{
  database = self->_database;
  presentedCopy = presented;
  identifier = [presentedCopy identifier];
  hexEncoding = [identifier hexEncoding];
  v7 = [ValueAddedMerchant anyInDatabase:database withIdentifier:hexEncoding];

  [presentedCopy setTimesPresented:{objc_msgSend(presentedCopy, "timesPresented") + 1}];
  [v7 updateWithValueAddedMerchant:presentedCopy];
}

- (id)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    database = self->_database;
    applicationCopy = application;
    v9 = [Pass anyInDatabase:database withUniqueID:identifierCopy];
    v10 = self->_database;
    applicationIdentifier = [applicationCopy applicationIdentifier];

    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v13 = [PaymentApplication anyInDatabase:v10 withApplicationIdentifier:applicationIdentifier secureElementIdentifiers:secureElementIdentifiers];

    [v9 updateWithDefaultPaymentApplication:v13];
    pass = [v9 pass];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10015A640;
    v21 = &unk_100848738;
    v22 = identifierCopy;
    v23 = v13;
    v15 = v13;
    [(PDDatabaseManager *)self dispatchDelegateCallback:&v18];
  }

  else
  {
    pass = 0;
  }

  v16 = [(PDDatabaseManager *)self _registeredPass:pass, v18, v19, v20, v21];

  return v16;
}

- (BOOL)hasAnyMessagesForPassWithUniqueIdentifier:(id)identifier
{
  v3 = [PaymentMessage anyInDatabase:self->_database forPassWithUniqueIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasAnyTransactionsForTransactionSourceIdentifiers:(id)identifiers
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = [PaymentTransaction anyInDatabase:self->_database withTransactionSourceIdentifier:*(*(&v12 + 1) + 8 * i), v12];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMerchantIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMerchantIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMerchantIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v13 startDate:dateCopy endDate:endDateCopy];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v13 startDate:dateCopy endDate:endDateCopy];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  v7 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsBrandIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v7];

  return self;
}

- (BOOL)hasAnyTransactionsWithMapsBrandIdentifiers:(id)identifiers forPassUniqueIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  v13 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
  LOBYTE(self) = [PaymentTransaction hasAnyTransactionsInDatabase:self->_database withMapsBrandIdentifiers:identifiersCopy forTransactionSourceIdentifiers:v13 startDate:dateCopy endDate:endDateCopy];

  return self;
}

- (id)messagesForPassWithUniqueIdentifier:(id)identifier
{
  v3 = [PaymentMessage paymentMessagesInDatabase:self->_database forPaymentPassUniqueIdentifier:identifier];
  v4 = [NSPredicate predicateWithFormat:@"isValid == YES"];
  v5 = [v3 filteredSetUsingPredicate:v4];

  return v5;
}

- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  database = self->_database;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = [TransactionSource anyInDatabase:database withIdentifier:identifier];
  v12 = [PaymentTransaction peerPaymentCounterpartHandlesforSource:v11 startDate:dateCopy endDate:endDateCopy inDatabase:self->_database];

  return v12;
}

- (id)peerPaymentCounterpartHandlesForTransactionSourceIdentifier:(id)identifier excludingPaymentMode:(unint64_t)mode excludingAccountState:(unint64_t)state startDate:(id)date endDate:(id)endDate
{
  database = self->_database;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = [TransactionSource anyInDatabase:database withIdentifier:identifier];
  v16 = [PaymentTransaction peerPaymentCounterpartHandlesforSource:v15 excludingPaymentMode:mode excludingAccountState:state startDate:dateCopy endDate:endDateCopy inDatabase:self->_database];

  return v16;
}

- (id)paymentTransactionForIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  paymentTransaction = [v3 paymentTransaction];

  return paymentTransaction;
}

- (id)earliestDailyBucketForTransactionSourceIdentifiers:(id)identifiers calendar:(id)calendar type:(unint64_t)type limit:(int64_t)limit
{
  identifiersCopy = identifiers;
  calendarCopy = calendar;
  if (limit)
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
    v20[5] = type;
    v20[6] = limit;
    v20[7] = v15;
    sub_1005D44A8(database, v17, v20);
    limit = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1005C20EC();
      limit = 0;
    }
  }

  return limit;
}

- (id)transactionCountByPeriodForRequest:(id)request gregorianCalendarUnit:(unint64_t)unit includePurchaseTotal:(BOOL)total
{
  totalCopy = total;
  unitCopy = unit;
  requestCopy = request;
  transactionSourceIdentifiers = [requestCopy transactionSourceIdentifiers];
  anyObject = [transactionSourceIdentifiers anyObject];
  v6 = [(PDDatabaseManager *)self transactionSourceTypeForTransactionSourceIdentifier:anyObject];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v7 = transactionSourceIdentifiers;
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
        dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
        associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
        v16 = v14;
        v12 = v16;
        if (associatedPassUniqueID == v16)
        {

          goto LABEL_23;
        }

        if (v16)
        {
          v17 = associatedPassUniqueID == 0;
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
          v18 = [associatedPassUniqueID isEqualToString:v16];

          if (v18)
          {
LABEL_23:
            currentBalance = [dbPeerPaymentAccount currentBalance];
            currency = [currentBalance currency];
            v64 = 1;
LABEL_27:

            goto LABEL_28;
          }
        }

        currentBalance = [(PDDatabaseManager *)self associatedAccountIdentifierForPassWithUniqueIdentifier:v12];
        if (currentBalance)
        {
          v20 = [(PDDatabaseManager *)self accountWithIdentifier:currentBalance];
          creditDetails = [v20 creditDetails];
          currency = [creditDetails currencyCode];

          v64 = 0;
        }

        else
        {
          v64 = 0;
          currency = 0;
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
      currency = 0;
      goto LABEL_29;
    }

    dbPeerPaymentAccount = [v12 savingsDetails];
    currency = [dbPeerPaymentAccount currencyCode];
    v64 = 3;
LABEL_28:

LABEL_29:
    if (currency)
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
  anyObject2 = [v22 anyObject];

  currency = [anyObject2 currencyCode];

  if (currency || !totalCopy)
  {
LABEL_33:
    v25 = 2;
    if ((unitCopy & 8) == 0)
    {
      v25 = 3;
    }

    v63 = v25;
    v26 = @"year";
    if ((unitCopy & 8) != 0)
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
    v31 = [PaymentTransaction predicateForRequest:requestCopy];
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

    if (totalCopy)
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
    v47 = (unitCopy & 8) == 0;
    database = self->_database;
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_10015BE00;
    v92[3] = &unk_100848B28;
    v69 = v31;
    v93 = v69;
    v99 = &v104;
    v102 = totalCopy;
    v61 = currency;
    v94 = v61;
    v100 = v30;
    v73 = v44;
    v95 = v73;
    v49 = v47;
    v103 = v47;
    v50 = v45;
    v96 = v50;
    selfCopy = self;
    v101 = v63;
    v51 = v46;
    v98 = v51;
    sub_1005D44A8(database, v65, v92);
    transactionTypes = [requestCopy transactionTypes];
    if ([transactionTypes count])
    {
      v53 = [transactionTypes containsObject:&off_1008A2EA0];
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
      selfCopy2 = self;
      v90 = v63;
      sub_1005D44A8(v55, v60, v83);
    }

    else
    {
      v60 = v66;
    }

    if (totalCopy)
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

    allValues = [v51 allValues];
    v24 = [allValues sortedArrayUsingComparator:&stru_100848BB8];

    _Block_object_dispose(&v104, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)nextStartOfYearFromDate:(id)date
{
  dateCopy = date;
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v5 = [v4 nextDateAfterDate:dateCopy matchingUnit:8 value:1 options:256];

  return v5;
}

- (id)transactionsWithoutRegionMatchingMapsMerchant:(id)merchant limit:(unint64_t)limit
{
  database = self->_database;
  identifier = [merchant identifier];

  return [PaymentTransaction paymentTransactionsInDatabase:database matchingMapsMerchantIdentifierWithoutRegion:identifier limit:limit];
}

- (void)associateTransaction:(id)transaction toRegion:(id)region
{
  transactionCopy = transaction;
  regionCopy = region;
  if (transactionCopy)
  {
    if (regionCopy)
    {
      v7 = [WorldRegion insertOrUpdateRegion:regionCopy inDatabase:self->_database];
    }

    else
    {
      v7 = 0;
    }

    database = self->_database;
    identifier = [transactionCopy identifier];
    v10 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];
    [WorldRegion associateTransaction:v10 withWorldRegion:v7 inDatabase:self->_database];
  }
}

- (void)failedToAssociateTransactionToRegion:(id)region error:(id)error
{
  if (region)
  {
    database = self->_database;
    errorCopy = error;
    identifier = [region identifier];
    v8 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];
    [WorldRegion failedToAssociateTransaction:v8 error:errorCopy inDatabase:self->_database];
  }
}

- (id)installmentPlanTransactionsForTransactionSourceIdentifiers:(id)identifiers accountIdentifier:(id)identifier redeemed:(BOOL)redeemed withRedemptionType:(unint64_t)type startDate:(id)date endDate:(id)endDate
{
  redeemedCopy = redeemed;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  selfCopy = self;
  v55 = identifierCopy;
  v15 = [Account accountWithIdentifier:identifierCopy inDatabase:self->_database];
  account = [v15 account];

  v54 = account;
  creditDetails = [account creditDetails];
  installmentPlans = [creditDetails installmentPlans];

  if ([installmentPlans count])
  {
    v60 = objc_alloc_init(NSMutableSet);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = installmentPlans;
    v66 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (!v66)
    {
      goto LABEL_46;
    }

    v61 = *v82;
    v58 = installmentPlans;
    typeCopy = type;
    v56 = identifiersCopy;
    while (1)
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v82 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v81 + 1) + 8 * i);
        v21 = [PaymentTransaction installmentTransactionsInDatabase:selfCopy->_database forTransactionSourceIdentifiers:identifiersCopy installmentPlan:v20 redeemed:redeemedCopy withRedemptionType:type startDate:dateCopy endDate:endDateCopy];
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
        lineItems = [v20 lineItems];
        v23 = [lineItems countByEnumeratingWithState:&v77 objects:v86 count:16];
        if (!v23)
        {
LABEL_16:
          identifier = 0;
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
            objc_enumerationMutation(lineItems);
          }

          v27 = *(*(&v77 + 1) + 8 * v26);
          if ([v27 type] == 1)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [lineItems countByEnumeratingWithState:&v77 objects:v86 count:16];
            if (!v24)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }
        }

        identifier = [v27 identifier];
LABEL_18:

        v29 = +[NSDecimalNumber zero];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v68 = v21;
        v30 = v21;
        v31 = [v30 countByEnumeratingWithState:&v73 objects:v85 count:16];
        v70 = identifier;
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
            rewardsTotalAmount = [v35 rewardsTotalAmount];
            if (rewardsTotalAmount)
            {
              v37 = +[NSDecimalNumber notANumber];
              v38 = [rewardsTotalAmount compare:v37];

              if (v38)
              {
                lifecycleIdentifier = [v35 lifecycleIdentifier];
                v40 = identifier;
                v41 = v40;
                if (lifecycleIdentifier != v40)
                {
                  if (identifier && lifecycleIdentifier)
                  {
                    v42 = [lifecycleIdentifier isEqualToString:v40];

                    if (!v42)
                    {
                      identifier = v70;
LABEL_36:
                      [v29 decimalNumberByAdding:rewardsTotalAmount];
                      v29 = v43 = v29;
                      goto LABEL_37;
                    }

LABEL_33:
                    identifier = v70;
                    lifecycleIdentifier = v71;
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

        identifiersCopy = v56;
        anyObject = v71;
        if (!v71)
        {
LABEL_42:
          anyObject = [v30 anyObject];
        }

        v45 = objc_alloc_init(PKPaymentTransaction);
        [v45 setTransactionType:14];
        [v45 setTransactionSource:4];
        type = typeCopy;
        [v45 setRedemptionType:typeCopy];
        transactionDate = [anyObject transactionDate];
        [v45 setTransactionDate:transactionDate];

        [v45 setInstallmentPlan:v67];
        totalAmount = [v67 totalAmount];
        [v45 setAmount:totalAmount];

        currencyCode = [v67 currencyCode];
        [v45 setCurrencyCode:currencyCode];

        [v45 setTransactionStatus:1];
        identifier2 = [v67 identifier];
        [v45 setIdentifier:identifier2];

        [v45 setRewardsTotalAmount:v29];
        currencyCode2 = [v45 currencyCode];
        [v45 setRewardsTotalCurrencyCode:currencyCode2];

        rewards = [v67 rewards];
        [v45 setRewards:rewards];

        [v45 setAccountType:2];
        [v60 addObject:v45];

        installmentPlans = v58;
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

- (void)insertOrUpdateTransactionsForInstallmentPayments:(id)payments installmentPlan:(id)plan accountIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier transactionProcessingBlock:(id)block
{
  paymentsCopy = payments;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015CEF8;
  v18[3] = &unk_100848BE0;
  planCopy = plan;
  v20 = paymentsCopy;
  selfCopy = self;
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  blockCopy = block;
  v13 = blockCopy;
  v14 = sourceIdentifierCopy;
  v15 = identifierCopy;
  v16 = paymentsCopy;
  v17 = planCopy;
  [(PDDatabaseManager *)self performTransactionWithBlock:v18];
}

- (void)setTags:(id)tags toTransactionWithIdentifier:(id)identifier
{
  database = self->_database;
  tagsCopy = tags;
  v8 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];
  +[PaymentTransactionTag insertPaymentTransactionTags:forPaymentTransactionPID:inDatabase:](PaymentTransactionTag, "insertPaymentTransactionTags:forPaymentTransactionPID:inDatabase:", tagsCopy, [v8 persistentID], self->_database);
}

- (id)tagsForTransactionWithIdentifier:(id)identifier
{
  v4 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
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

- (id)mapsBrandWithIdentifier:(unint64_t)identifier
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedLongLong:identifier];
  v5 = [MapsBrand anyInDatabase:database withIdentifier:v4];
  mapsBrand = [v5 mapsBrand];

  return mapsBrand;
}

- (id)mapsMerchantWithIdentifier:(unint64_t)identifier
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedLongLong:identifier];
  v5 = [MapsMerchant anyInDatabase:database withIdentifier:v4];
  mapsMerchant = [v5 mapsMerchant];

  return mapsMerchant;
}

- (void)updateMapsMerchant:(id)merchant
{
  merchantCopy = merchant;
  if (merchantCopy)
  {
    database = self->_database;
    v8 = merchantCopy;
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [merchantCopy identifier]);
    v7 = [MapsMerchant anyInDatabase:database withIdentifier:v6];

    if ([v7 existsInDatabase])
    {
      [v7 updateWithMapsMerchant:v8];
    }

    merchantCopy = v8;
  }
}

- (void)updateMapsBrand:(id)brand
{
  brandCopy = brand;
  if (brandCopy)
  {
    database = self->_database;
    v8 = brandCopy;
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [brandCopy identifier]);
    v7 = [MapsBrand anyInDatabase:database withIdentifier:v6];

    if ([v7 existsInDatabase])
    {
      [v7 updateWithMapsBrand:v8];
    }

    brandCopy = v8;
  }
}

- (id)passUniqueIdentifierForMostRecentVisibleTransaction
{
  v2 = [PaymentTransaction mostRecentActiveTransactionInDatabase:self->_database];
  passUniqueIdentifier = [v2 passUniqueIdentifier];

  return passUniqueIdentifier;
}

- (id)tapToRadarPromptWithReason:(id)reason
{
  v3 = [TapToRadarPrompt tapToRadarPromptWithReason:reason inDatabase:self->_database];
  tapToRadarPrompt = [v3 tapToRadarPrompt];

  return tapToRadarPrompt;
}

- (id)peerPaymentAccount
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  peerPaymentAccount = [dbPeerPaymentAccount peerPaymentAccount];

  return peerPaymentAccount;
}

- (id)peerPaymentAccountsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = identifiersCopy;
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
        peerPaymentAccount = [v11 peerPaymentAccount];
        [v5 safelyAddObject:peerPaymentAccount];
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

- (id)insertOrUpdatePeerPaymentAccount:(id)account
{
  v3 = [PeerPaymentAccount insertOrUpdatePeerPaymentAccount:account inDatabase:self->_database];
  peerPaymentAccount = [v3 peerPaymentAccount];

  return peerPaymentAccount;
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
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  v4 = [PeerPaymentPreferences anyInDatabase:database forPeerPaymentAccount:dbPeerPaymentAccount];

  return v4;
}

- (id)peerPaymentPreferences
{
  dbPeerPaymentPreferences = [(PDDatabaseManager *)self dbPeerPaymentPreferences];
  peerPaymentPreferences = [dbPeerPaymentPreferences peerPaymentPreferences];

  return peerPaymentPreferences;
}

- (id)insertOrUpdatePeerPaymentPreferences:(id)preferences
{
  preferencesCopy = preferences;
  dbPeerPaymentPreferences = [(PDDatabaseManager *)self dbPeerPaymentPreferences];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (dbPeerPaymentPreferences)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Matched Peer Payment Preferences", buf, 2u);
    }

    dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    [dbPeerPaymentPreferences updatePeerPaymentPreferences:preferencesCopy forPeerPaymentAccount:dbPeerPaymentAccount];
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

    dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    dbPeerPaymentPreferences = [PeerPaymentPreferences insertPeerPaymentPeferences:preferencesCopy forPeerPaymentAccount:dbPeerPaymentAccount inDatabase:self->_database];
  }

  peerPaymentPreferences = [dbPeerPaymentPreferences peerPaymentPreferences];

  return peerPaymentPreferences;
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
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  database = self->_database;
  associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
  v6 = [Pass anyInDatabase:database withUniqueID:associatedPassUniqueID];

  persistentID = [v6 persistentID];
  identifier = [dbPeerPaymentAccount identifier];
  v9 = identifier;
  if (identifier)
  {
    v10 = self->_database;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10015E2E4;
    v11[3] = &unk_100848C30;
    v13 = persistentID;
    v11[4] = self;
    v12 = identifier;
    sub_1005D44A8(v10, @"SELECT pid, account_identifier, pass_pid from payment_transaction;", v11);
  }
}

- (id)peerPaymentPendingRequestsForRequestTokens:(id)tokens
{
  tokensCopy = tokens;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v6 = [PeerPaymentPendingRequest peerPaymentPendingRequestsForRequestTokens:tokensCopy inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)peerPaymentPendingRequestsForPeerPaymentAccount
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v4 = +[PeerPaymentPendingRequest peerPaymentPendingRequestsForPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "peerPaymentPendingRequestsForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests
{
  requestsCopy = requests;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentPendingRequest insertOrUpdatePeerPaymentPendingRequests:forPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "insertOrUpdatePeerPaymentPendingRequests:forPeerPaymentAccountPID:inDatabase:", requestsCopy, [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens
{
  tokensCopy = tokens;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    [PeerPaymentPendingRequest deleteEntitiesForRequestTokens:tokensCopy inDatabase:self->_database];
  }
}

- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentPendingRequest deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentPendingRequest, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (id)peerPaymentRecurringPayments
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v4 = +[PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "peerPaymentRecurringPaymentsForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)peerPaymentRecurringPaymentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  v5 = [NSArray arrayWithObjects:&identifierCopy count:1];
  identifierCopy = [PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForIdentifiers:v5 inDatabase:self->_database, identifierCopy];

  firstObject = [identifierCopy firstObject];

  return firstObject;
}

- (id)peerPaymentRecurringPaymentsWithType:(unint64_t)type
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v6 = +[PeerPaymentRecurringPayment peerPaymentRecurringPaymentsForPeerPaymentType:withAccountPID:inDatabase:](PeerPaymentRecurringPayment, "peerPaymentRecurringPaymentsForPeerPaymentType:withAccountPID:inDatabase:", type, [dbPeerPaymentAccount persistentID], self->_database);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertOrUpdatePeerPaymentRecurringPayments:(id)payments
{
  paymentsCopy = payments;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", paymentsCopy, [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (void)updateAllPeerPaymentRecurringPayments:(id)payments
{
  paymentsCopy = payments;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v31 = dbPeerPaymentAccount;
    +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", paymentsCopy, [dbPeerPaymentAccount persistentID], self->_database);
    v6 = objc_alloc_init(NSMutableSet);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = paymentsCopy;
    v7 = paymentsCopy;
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

          identifier = [*(*(&v38 + 1) + 8 * i) identifier];
          [v6 pk_safelyAddObject:identifier];
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
      selfCopy = self;
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
            firstObject = [v19 firstObject];

            memo = [firstObject memo];
            text = [memo text];
            if ([text length])
            {
              type = [firstObject type];

              if (!type)
              {
                goto LABEL_24;
              }

LABEL_20:
              text = objc_alloc_init(PKPeerPaymentRecurringPayment);
              [text setIdentifier:v17];
              senderAddress = [firstObject senderAddress];
              [text setSenderAddress:senderAddress];

              recipientAddress = [firstObject recipientAddress];
              [text setRecipientAddress:recipientAddress];

              [text setMemo:memo];
              v28 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v17;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Downgrading recurring payment to memo only for identifier %@", buf, 0xCu);
              }

              v42 = text;
              emoji = [NSArray arrayWithObjects:&v42 count:1];
              +[PeerPaymentRecurringPayment insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "insertOrUpdatePeerPaymentRecurringPayments:forPeerPaymentAccountPID:inDatabase:", emoji, [v31 persistentID], selfCopy->_database);
LABEL_23:

              self = selfCopy;
            }

            else
            {
              emoji = [memo emoji];
              if (![emoji length])
              {
                goto LABEL_23;
              }

              type2 = [firstObject type];

              self = selfCopy;
              if (type2)
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
    paymentsCopy = v30;
    dbPeerPaymentAccount = v31;
  }
}

- (void)deletePeerPaymentRecurringPaymentsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    [PeerPaymentRecurringPayment deleteEntitiesForPeerPaymentRecurringPaymentIdentifiers:identifiersCopy inDatabase:self->_database];
  }
}

- (void)deleteAllPeerPaymentRecurringPayments
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentRecurringPayment deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentRecurringPayment, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (id)peerPaymentEncryptionCertificateForDestination:(unint64_t)destination
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v6 = [PeerPaymentEncryptionCertificate peerPaymentEncryptionCertificateForDestination:destination inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertOrUpdatePeerPaymentEncryptionCertificate:(id)certificate
{
  certificateCopy = certificate;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentEncryptionCertificate insertOrUpdatePeerPaymentEncryptionCertificate:forPeerPaymentAccountPID:inDatabase:](PeerPaymentEncryptionCertificate, "insertOrUpdatePeerPaymentEncryptionCertificate:forPeerPaymentAccountPID:inDatabase:", certificateCopy, [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (void)deleteAllPeerPaymentEncryptionCertificates
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentEncryptionCertificate deleteEncryptionCertificatesForPeerPaymentAccountPID:inDatabase:](PeerPaymentEncryptionCertificate, "deleteEncryptionCertificatesForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (id)peerPaymentCounterpartImageData
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v4 = +[PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataForPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "peerPaymentCounterpartImageDataForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)peerPaymentCounterpartImageDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v6 = [PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataWithIdentifier:identifierCopy inDatabase:self->_database];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)peerPaymentCounterpartImageDataForTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v6 = [(PDDatabaseManager *)self transactionWithTransactionIdentifier:identifierCopy];
    peerPaymentCounterpartImageRecordIdentifier = [v6 peerPaymentCounterpartImageRecordIdentifier];
    v8 = [PeerPaymentCounterpartImageData peerPaymentCounterpartImageDataWithIdentifier:peerPaymentCounterpartImageRecordIdentifier inDatabase:self->_database];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdatePeerPaymentCounterpartImageData:(id)data
{
  dataCopy = data;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentCounterpartImageData insertOrUpdatePeerPaymentCounterpartImageData:forPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "insertOrUpdatePeerPaymentCounterpartImageData:forPeerPaymentAccountPID:inDatabase:", dataCopy, [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (void)deletePeerPaymentCounterpartImageDataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    [PeerPaymentCounterpartImageData deleteEntityForCounterpartImageDataIdentifier:identifierCopy inDatabase:self->_database];
  }
}

- (void)deleteAllPeerPaymentCounterpartImageData
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentCounterpartImageData deleteEntitiesForPeerPaymentAccountPID:inDatabase:](PeerPaymentCounterpartImageData, "deleteEntitiesForPeerPaymentAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (id)peerPaymentUserInfo
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    v4 = +[PeerPaymentUserInfo peerPaymentUserInfoForAccountPID:inDatabase:](PeerPaymentUserInfo, "peerPaymentUserInfoForAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)insertOrUpdatePeerPaymentUserInfo:(id)info
{
  infoCopy = info;
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentUserInfo insertOrUpdatePeerPaymentUserInfo:forAccountPID:inDatabase:](PeerPaymentUserInfo, "insertOrUpdatePeerPaymentUserInfo:forAccountPID:inDatabase:", infoCopy, [dbPeerPaymentAccount persistentID], self->_database);
  }
}

- (void)deletePeerPaymentUserInfo
{
  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  if ([dbPeerPaymentAccount existsInDatabase])
  {
    +[PeerPaymentUserInfo deletePeerPaymentUserInfoForAccountPID:inDatabase:](PeerPaymentUserInfo, "deletePeerPaymentUserInfoForAccountPID:inDatabase:", [dbPeerPaymentAccount persistentID], self->_database);
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

  numberOfRealPasses = [(PDDatabaseManager *)self numberOfRealPasses];
  v8 = 0;
  if (numberOfRealPasses == v17[3])
  {
    numberOfTransactionReceipts = [(PDDatabaseManager *)self numberOfTransactionReceipts];
    if (numberOfTransactionReceipts == v12[3])
    {
      countOfTransactionsWithAssociatedReceipts = [(PDDatabaseManager *)self countOfTransactionsWithAssociatedReceipts];
      if (countOfTransactionsWithAssociatedReceipts == v12[3])
      {
        v8 = 1;
      }
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)computeExtraneousUniqueIDs:(id *)ds missingUniqueIDs:(id *)iDs
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

  if (ds)
  {
    objc_storeStrong(ds, v8);
  }

  if (iDs)
  {
    allObjects = [v21[5] allObjects];
    v15 = *iDs;
    *iDs = allObjects;
  }

  _Block_object_dispose(&v20, 8);
}

- (void)computeTransactionReceiptExtraneousUniqueIDs:(id *)ds missingUniqueIDs:(id *)iDs removedUniqueIDs:(id *)uniqueIDs
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

  if (ds)
  {
    v22 = [v21 copy];
    v23 = *ds;
    *ds = v22;
  }

  if (iDs)
  {
    v24 = [v38[5] copy];
    v25 = *iDs;
    *iDs = v24;
  }

  if (uniqueIDs)
  {
    v26 = [v9 copy];
    v27 = *uniqueIDs;
    *uniqueIDs = v26;
  }

  _Block_object_dispose(&v37, 8);
}

- (void)introduceDuplicateUniqueID
{
  database = self->_database;
  v4 = +[Pass predicateForValidStyle];
  v5 = [(SQLiteEntity *)Pass anyInDatabase:database predicate:v4];
  pass = [v5 pass];

  if (pass)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [pass uniqueID];
      *buf = 138412290;
      v13 = uniqueID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Introducing duplicate uniqueID: %@", buf, 0xCu);
    }

    v9 = [(PDDatabaseManager *)self _passTypeForPass:pass];
    v10 = [(PDDatabaseManager *)self _webServiceForPass:pass passType:v9];
    v11 = [Pass insertPass:pass withPassType:v9 webService:v10 transactionService:0 messageService:0 daemonPassData:0 inDatabase:self->_database];
  }
}

- (void)introduceExtraneousUniqueID
{
  database = self->_database;
  v4 = +[Pass predicateForValidStyle];
  v5 = [(SQLiteEntity *)Pass anyInDatabase:database predicate:v4];
  pass = [v5 pass];

  if (pass)
  {
    v7 = PDGenerateRandomDeviceIdentifier();
    [pass setUniqueID:v7];

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [pass uniqueID];
      *buf = 138412290;
      v14 = uniqueID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Introducing extraneous uniqueID: %@", buf, 0xCu);
    }

    v10 = [(PDDatabaseManager *)self _passTypeForPass:pass];
    v11 = [(PDDatabaseManager *)self _webServiceForPass:pass passType:v10];
    v12 = [Pass insertPass:pass withPassType:v10 webService:v11 transactionService:0 messageService:0 daemonPassData:0 inDatabase:self->_database];
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

- (void)_registerPasses:(id)passes
{
  passesCopy = passes;
  v5 = PKDeviceName();
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = passesCopy;
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
            [v12 updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];
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

- (id)_registeredPass:(id)pass
{
  if (pass)
  {
    v4 = [NSSet setWithObject:?];
    v5 = [(PDDatabaseManager *)self _registeredPasses:v4];
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)_registeredPasses:(id)passes
{
  passesCopy = passes;
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
  v6 = passesCopy;
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

- (id)_passTypeForPass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  v6 = [PassType anyInDatabase:self->_database withPassTypeID:passTypeIdentifier];
  if (!v6)
  {
    teamID = [passCopy teamID];
    v6 = [PassType insertPassTypeWithPassTypeID:passTypeIdentifier teamID:teamID inDatabase:self->_database];
  }

  return v6;
}

- (id)_webServiceForPass:(id)pass passType:(id)type
{
  typeCopy = type;
  webServiceURL = [pass webServiceURL];
  if (webServiceURL)
  {
    v8 = [WebService anyInDatabase:self->_database withPassType:typeCopy serviceURL:webServiceURL];
    if (!v8)
    {
      v8 = [WebService insertWebServiceWithPassType:typeCopy serviceURL:webServiceURL inDatabase:self->_database];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_transactionServiceForPass:(id)pass
{
  passCopy = pass;
  transactionServiceURL = [passCopy transactionServiceURL];
  transactionServiceRegistrationURL = [passCopy transactionServiceRegistrationURL];
  transactionPushTopic = [passCopy transactionPushTopic];

  v8 = [(PDDatabaseManager *)self _notificationServiceForPushTopic:transactionPushTopic serviceType:0 serviceURL:transactionServiceURL registrationURL:transactionServiceRegistrationURL];

  return v8;
}

- (id)_messageServiceForPass:(id)pass
{
  passCopy = pass;
  messageServiceURL = [passCopy messageServiceURL];
  messageServiceRegistrationURL = [passCopy messageServiceRegistrationURL];
  messagePushTopic = [passCopy messagePushTopic];

  v8 = [(PDDatabaseManager *)self _notificationServiceForPushTopic:messagePushTopic serviceType:1 serviceURL:messageServiceURL registrationURL:messageServiceRegistrationURL];

  return v8;
}

- (id)_notificationServiceForPushTopic:(id)topic serviceType:(unint64_t)type serviceURL:(id)l registrationURL:(id)rL
{
  topicCopy = topic;
  lCopy = l;
  rLCopy = rL;
  v13 = 0;
  if (topicCopy)
  {
    if (lCopy)
    {
      v13 = [NotificationService anyInDatabase:self->_database withPushTopic:topicCopy serviceType:type serviceURL:lCopy registrationURL:rLCopy];
      if (!v13)
      {
        v14 = [(PDDatabaseManager *)self _deviceIdentifierForExistingServiceURL:lCopy registrationURL:rLCopy];
        if (!v14)
        {
          v14 = PDGenerateRandomDeviceIdentifier();
        }

        v13 = [NotificationService insertNotificationServiceWithPushTopic:topicCopy serviceType:type serviceURL:lCopy registrationURL:rLCopy deviceIdentifier:v14 inDatabase:self->_database];
      }
    }
  }

  return v13;
}

- (id)_deviceIdentifierForExistingServiceURL:(id)l registrationURL:(id)rL
{
  v4 = [NotificationService anyInDatabase:self->_database withServiceURL:l registrationURL:rL];
  notificationService = [v4 notificationService];
  deviceIdentifier = [notificationService deviceIdentifier];

  return deviceIdentifier;
}

- (void)_deleteNotificationServiceIfOrphaned:(id)orphaned
{
  orphanedCopy = orphaned;
  v5 = orphanedCopy;
  if (orphanedCopy)
  {
    v7 = orphanedCopy;
    v6 = [Pass anyInDatabase:self->_database withNotificationService:orphanedCopy];

    v5 = v7;
    if (!v6)
    {
      orphanedCopy = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(orphanedCopy, v5);
}

- (void)_deletePassTypeIfOrphaned:(id)orphaned
{
  orphanedCopy = orphaned;
  v5 = orphanedCopy;
  if (orphanedCopy)
  {
    v7 = orphanedCopy;
    v6 = [Pass anyInDatabase:self->_database withPassType:orphanedCopy];

    v5 = v7;
    if (!v6)
    {
      orphanedCopy = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(orphanedCopy, v5);
}

- (void)_deleteWebServiceIfOrphaned:(id)orphaned
{
  orphanedCopy = orphaned;
  v5 = orphanedCopy;
  if (orphanedCopy)
  {
    v7 = orphanedCopy;
    v6 = [Pass anyInDatabase:self->_database withWebService:orphanedCopy];

    v5 = v7;
    if (!v6)
    {
      orphanedCopy = [v7 deleteFromDatabase];
      v5 = v7;
    }
  }

  _objc_release_x1(orphanedCopy, v5);
}

- (id)_predicateForStyle:(int64_t)style
{
  v3 = [NSNumber numberWithInteger:style];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"template" equalToValue:v3];

  return v4;
}

- (id)_predicateForStyles:(unint64_t)styles
{
  stylesCopy = styles;
  if (styles)
  {
    v4 = vcnt_s8(styles);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = [[NSMutableArray alloc] initWithCapacity:v4.u32[0]];
    for (i = 0; i != 13; ++i)
    {
      if ((stylesCopy >> i))
      {
        v7 = [NSNumber numberWithInteger:i];
        [v5 addObject:v7];
      }
    }

    stylesCopy = [SQLiteCompoundPredicate predicateWithProperty:@"template" equalToValues:v5];
  }

  return stylesCopy;
}

- (id)_predicateForType:(unint64_t)type
{
  if (type == -1)
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

- (id)_predicateForPassTypes:(unint64_t)types
{
  typesCopy = types;
  if (types)
  {
    v4 = vcnt_s8(types);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = [[NSMutableArray alloc] initWithCapacity:v4.u32[0]];
    for (i = 0; i != 64; ++i)
    {
      if ((typesCopy >> i))
      {
        v7 = [NSNumber numberWithUnsignedInteger:i];
        [v5 addObject:v7];
      }
    }

    typesCopy = [SQLiteCompoundPredicate predicateWithProperty:@"pass_flavor" equalToValues:v5];
  }

  return typesCopy;
}

- (id)_predicateForCardType:(int64_t)type
{
  if (type > 4)
  {
    v5 = 0;
  }

  else
  {
    if (type == 2)
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

- (id)_passPredicateForRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    passType = [requestCopy passType];
    hasPassStyleMask = [v5 hasPassStyleMask];
    passStyleMask = [v5 passStyleMask];
    passUniqueIdentifiers = [v5 passUniqueIdentifiers];
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

    v15 = [(PDDatabaseManager *)self _predicateForType:passType];
    [v14 safelyAddObject:v15];

    if ([passUniqueIdentifiers count])
    {
      v16 = [Pass predicateForUniqueIDs:passUniqueIdentifiers];
      [v14 addObject:v16];
    }

    if (hasPassStyleMask)
    {
      v17 = [(PDDatabaseManager *)self _predicateForStyles:passStyleMask];
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

- (id)_secureElementPredicateForRequest:(id)request
{
  if (request)
  {
    secureElement = self->_secureElement;
    requestCopy = request;
    secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
    cardType = [requestCopy cardType];
    paymentMethodTypes = [requestCopy paymentMethodTypes];
    primaryPaymentApplicationStates = [requestCopy primaryPaymentApplicationStates];
    readerIdentifier = [requestCopy readerIdentifier];
    excludeFirstPartyCards = [requestCopy excludeFirstPartyCards];

    v11 = objc_alloc_init(NSMutableArray);
    if (cardType)
    {
      v12 = [(PDDatabaseManager *)self _predicateForCardType:cardType];
      [v11 addObject:v12];
    }

    if ([paymentMethodTypes count])
    {
      v13 = [paymentMethodTypes pk_arrayByApplyingBlock:&stru_100848CA0];
      v14 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v13];
      [v11 addObject:v14];
    }

    v35 = paymentMethodTypes;
    if ([primaryPaymentApplicationStates count])
    {
      v15 = [Pass predicateForPaymentApplicationStates:primaryPaymentApplicationStates];
      v39[0] = v15;
      v16 = [Pass predicateForPrimaryPaymentApplication:1];
      v39[1] = v16;
      [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
      v18 = v17 = primaryPaymentApplicationStates;
      v39[2] = v18;
      v19 = [NSArray arrayWithObjects:v39 count:3];
      v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

      primaryPaymentApplicationStates = v17;
      [v11 addObject:v20];
    }

    if (excludeFirstPartyCards)
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
      v33 = secureElementIdentifiers;
      v21 = [SQLiteComparisonPredicate predicateWithProperty:@"has_associated_peer_payment_account" notEqualToValue:&__kCFBooleanTrue];
      v37[0] = v21;
      v26 = primaryPaymentApplicationStates;
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

      primaryPaymentApplicationStates = v26;
      secureElementIdentifiers = v33;
    }

    [v11 addObject:v24];
    if (readerIdentifier)
    {
      v31 = [Pass predicateForPairedReaderIdentifier:readerIdentifier];
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
  _locatedPredicate = [(PDDatabaseManager *)self _locatedPredicate];
  v3 = [SQLiteCompoundPredicate negatedPredicate:_locatedPredicate];

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
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v5 = [(PDDatabaseManager *)self _predicateForType:1];
  v12[0] = v5;
  v6 = +[Pass predicateForValidStyle];
  v12[1] = v6;
  v7 = [Pass predicateForPaymentApplicationStates:v3];
  v12[2] = v7;
  v8 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
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

- (id)_predicateMatchingPassesForWebService:(id)service
{
  v3 = [(PDDatabaseManager *)self _databaseWebService:service];
  v4 = [Pass predicateForWebService:v3];

  return v4;
}

- (id)_paymentNetworkIdentifiersForPaymentNetworks:(id)networks
{
  networksCopy = networks;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [networksCopy count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = networksCopy;
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

- (id)_locatedCandidatePassesOfStyle:(int64_t)style matchingFurtherPredicate:(id)predicate
{
  predicateCopy = predicate;
  _locatedPredicate = [(PDDatabaseManager *)self _locatedPredicate];
  if (predicateCopy)
  {
    v8 = [[NSArray alloc] initWithObjects:{_locatedPredicate, predicateCopy, 0}];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    _locatedPredicate = v9;
  }

  v10 = [(PDDatabaseManager *)self _candidatePassesOfStyle:style matchingFurtherPredicate:_locatedPredicate];

  return v10;
}

- (id)_candidatePassesOfStyle:(int64_t)style matchingFurtherPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [NSArray alloc];
  _validPassPredicate = [(PDDatabaseManager *)self _validPassPredicate];
  v9 = [(PDDatabaseManager *)self _predicateForStyle:style];
  v28 = predicateCopy;
  v10 = [v7 initWithObjects:{_validPassPredicate, v9, predicateCopy, 0}];

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
        passTypeIdentifier = [v18 passTypeIdentifier];
        v20 = PKPassTypeForPassTypeIdentifier();

        if (v20 != 1)
        {
          objectSettingsManager = self->_objectSettingsManager;
          uniqueIdentifier = [v18 uniqueIdentifier];
          v23 = sub_1005DA17C(objectSettingsManager, 1, uniqueIdentifier, [+[PKPass classForPassType:](PKPass classForPassType:{v20), "defaultSettings"}]);

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

- (id)_databaseWebService:(id)service
{
  database = self->_database;
  serviceCopy = service;
  passTypeIdentifier = [serviceCopy passTypeIdentifier];
  v7 = [PassType anyInDatabase:database withPassTypeID:passTypeIdentifier];

  v8 = self->_database;
  serviceURL = [serviceCopy serviceURL];

  v10 = [WebService anyInDatabase:v8 withPassType:v7 serviceURL:serviceURL];

  return v10;
}

- (id)_databaseNotificationService:(id)service
{
  database = self->_database;
  serviceCopy = service;
  pushTopic = [serviceCopy pushTopic];
  serviceType = [serviceCopy serviceType];
  serviceURL = [serviceCopy serviceURL];
  registrationURL = [serviceCopy registrationURL];

  v9 = [NotificationService anyInDatabase:database withPushTopic:pushTopic serviceType:serviceType serviceURL:serviceURL registrationURL:registrationURL];

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
        v8 = associatedAccountServiceAccountIdentifier2 = v8;
      }

      else
      {
        associatedAccountServiceAccountIdentifier = [v11 associatedAccountServiceAccountIdentifier];

        if (!associatedAccountServiceAccountIdentifier)
        {
          continue;
        }

        associatedAccountServiceAccountIdentifier2 = [v11 associatedAccountServiceAccountIdentifier];
        [v4 addObject:associatedAccountServiceAccountIdentifier2];
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

  allObjects = [v5 allObjects];
  [PKDemoTransactionGenerator generateDemoFilesForPasses:allObjects accountUsers:v14 peerPaymentPassSerialNumber:v8];

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

- (void)_applyDemoPaymentApplicationToPass:(id)pass
{
  paymentPass = [pass paymentPass];
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [paymentPass paymentApplicationsForSecureElementIdentifiers:secureElementIdentifiers];
  if (![v6 count])
  {
    v7 = objc_alloc_init(PKPaymentApplication);
    paymentApplications = [paymentPass paymentApplications];
    v9 = [paymentApplications count];

    if (v9)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      paymentApplications2 = [paymentPass paymentApplications];
      v11 = [paymentApplications2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
              objc_enumerationMutation(paymentApplications2);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if (([v15 isAuxiliary] & 1) == 0)
            {
              v16 = v15;

              v7 = v16;
              goto LABEL_13;
            }
          }

          v12 = [paymentApplications2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

    firstObject = [secureElementIdentifiers firstObject];
    [v7 setSecureElementIdentifier:firstObject];

    v21 = [NSSet setWithObject:v7];
    [paymentPass setPaymentApplications:v21];
  }
}

- (void)_applyDemoPaymentTransactionsToPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v6 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:uniqueID];
  v7 = [(PDDatabaseManager *)self primaryPaymentApplicationForPassUniqueIdentifier:uniqueID];
  v94 = passCopy;
  paymentPass = [passCopy paymentPass];
  associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];

  dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
  identifier = [dbPeerPaymentAccount identifier];
  v92 = dbPeerPaymentAccount;
  associatedPassUniqueID = [dbPeerPaymentAccount associatedPassUniqueID];
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
          v16 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v15 withPassUniqueIdentifier:uniqueID paymentApplication:v7 insertionMode:2 performTruncation:0 insertedTransaction:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v134 objects:v153 count:16];
    }

    while (v12);
  }

  v90 = v7;
  v95 = uniqueID;
  v87 = v10;
  [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:associatedAccountServiceAccountIdentifier];
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
              transactionSourceIdentifier = [v24 transactionSourceIdentifier];
              if (transactionSourceIdentifier)
              {
                v26 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v24 withTransactionSourceIdentifier:transactionSourceIdentifier insertionMode:2 performTruncation:0 insertedTransaction:0];
              }

              else
              {
                transactionSourceIdentifiers = [v18 transactionSourceIdentifiers];
                anyObject = [transactionSourceIdentifiers anyObject];
                v29 = [(PDDatabaseManager *)self insertOrUpdatePaymentTransaction:v24 withTransactionSourceIdentifier:anyObject insertionMode:2 performTruncation:0 insertedTransaction:0];
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
  if (associatedAccountServiceAccountIdentifier)
  {
    v31 = [NSSet setWithObject:&off_1008A2E10];
    v32 = [(PDDatabaseManager *)self accountEventsForAccountIdentifier:associatedAccountServiceAccountIdentifier excludingTypes:v31];

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

          identifier2 = [*(*(&v122 + 1) + 8 * k) identifier];
          [(PDDatabaseManager *)self deleteAccountEventWithIdentifier:identifier2];
        }

        v35 = [v33 countByEnumeratingWithState:&v122 objects:v150 count:16];
      }

      while (v35);
    }
  }

  v149 = v94;
  v39 = [NSArray arrayWithObjects:&v149 count:1];
  associatedPassSerialNumber = [v92 associatedPassSerialNumber];
  [PKDemoTransactionGenerator generateDemoFilesForPasses:v39 accountUsers:obj peerPaymentPassSerialNumber:associatedPassSerialNumber];

  v41 = objc_alloc_init(PKDemoTransactionGeneratorConfiguration);
  paymentPass2 = [v94 paymentPass];
  if ([paymentPass2 hasAssociatedPeerPaymentAccount])
  {
    uniqueID2 = [v94 uniqueID];
    v44 = associatedPassUniqueID;
    v45 = uniqueID2;
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
      v49 = identifier;
      v50 = PKAccountWebServicePaymentsRequest_ptr;
      goto LABEL_48;
    }
  }

LABEL_46:
  paymentPass3 = [v94 paymentPass];
  associatedAccountServiceAccountIdentifier2 = [paymentPass3 associatedAccountServiceAccountIdentifier];

  v50 = PKAccountWebServicePaymentsRequest_ptr;
  if (!associatedAccountServiceAccountIdentifier2)
  {
    goto LABEL_49;
  }

  v48 = 2;
  v49 = associatedAccountServiceAccountIdentifier;
LABEL_48:
  [v41 setAccountIdentifier:v49];
  [v41 setAccountType:v48];
LABEL_49:
  v53 = PKCurrentUserAltDSID();
  [v41 setAltDSID:v53];

  transactionSourceIdentifier2 = [v90 transactionSourceIdentifier];
  [v41 setTransactionSourceIdentifier:transactionSourceIdentifier2];

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
    organizationName = [v94 organizationName];
    *buf = 134219010;
    v140 = v60;
    v141 = 2048;
    v142 = v61;
    v59 = log;
    v143 = 2112;
    v144 = organizationName;
    v145 = 2112;
    v146 = v95;
    v147 = 2112;
    v148 = associatedAccountServiceAccountIdentifier;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Generating %ld demo transactions and %ld events for pass: %@, unqiueID: %@, accountIdentifier: %@", buf, 0x34u);

    v30 = v95;
  }

  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_1001634D0;
  v115[3] = &unk_100848CC8;
  v63 = v57;
  v116 = v63;
  selfCopy = self;
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
          accountIdentifier = [v69 accountIdentifier];
          [v41 setAccountIdentifier:accountIdentifier];

          [v41 setAccountType:2];
          altDSID = [v69 altDSID];
          [v41 setAltDSID:altDSID];

          transactionSourceIdentifiers2 = [v69 transactionSourceIdentifiers];
          anyObject2 = [transactionSourceIdentifiers2 anyObject];
          [v41 setTransactionSourceIdentifier:anyObject2];

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
            accountIdentifier2 = [v69 accountIdentifier];
            *buf = 134218754;
            v140 = v78;
            v141 = 2048;
            v142 = v79;
            v59 = log;
            v143 = 2112;
            v144 = v81;
            v145 = 2112;
            v146 = accountIdentifier2;
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

- (void)_applyDemoFelicaAppletStateToPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  paymentPass = [passCopy paymentPass];
  v6 = [(PDDatabaseManager *)self primaryPaymentApplicationForPassUniqueIdentifier:uniqueID];
  v7 = v6;
  if (paymentPass && v6)
  {
    v8 = PKHomeDirectoryPath();
    v9 = [v8 stringByAppendingPathComponent:@"FelicaAppletHistory.plist"];

    v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
    serialNumber = [passCopy serialNumber];
    v12 = [v10 objectForKey:serialNumber];

    if (v12)
    {
      v13 = [[PKFelicaAppletHistory alloc] initWithDictionary:v12 source:1];
      v14 = +[NSDate date];
      [(PDDatabaseManager *)self updateTransitAppletStateWithHistory:v13 transactionDate:v14 forPaymentApplication:v7 withPassUniqueIdentifier:uniqueID forceTransactionGeneration:0 balanceLabelDictionary:0 unitDictionary:0 planLabelDictionary:0 completion:0];
    }
  }
}

- (void)_updateCloudStoreWithTransactions:(id)transactions transactionSourceIdentifier:(id)identifier
{
  transactionsCopy = transactions;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_cloudStoreCoordinator);

  if (WeakRetained)
  {
    if ([transactionsCopy count])
    {
      v8 = objc_alloc_init(NSMutableArray);
      v9 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = transactionsCopy;
      v10 = transactionsCopy;
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
            serviceIdentifier = [v15 serviceIdentifier];

            if (serviceIdentifier)
            {
              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_100163A5C;
              v26[3] = &unk_10083EB78;
              v26[4] = self;
              v26[5] = v15;
              v27 = identifierCopy;
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
      selfCopy = self;
      v25 = identifierCopy;
      v18 = v8;
      v19 = [v9 evaluateWithInput:v17 completion:v22];

      transactionsCopy = v20;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot update the cloud store with a nil transaction for transactionSourceIdentifier %@", buf, 0xCu);
      }
    }
  }
}

- (id)featureApplicationWithIdentifier:(id)identifier
{
  v3 = [FeatureApplication featureApplicationWithIdentifier:identifier inDatabase:self->_database];
  featureApplication = [v3 featureApplication];

  return featureApplication;
}

- (id)setFeatureApplications:(id)applications
{
  applicationsCopy = applications;
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = applicationsCopy;
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
        applicationIdentifier = [v12 applicationIdentifier];
        if (applicationIdentifier)
        {
          v14 = [FeatureApplication insertOrUpdateFeatureApplication:v12 inDatabase:self->_database];
          [v5 addObject:applicationIdentifier];
          featureApplication = [v14 featureApplication];
          [v6 addObject:featureApplication];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  allObjects = [v5 allObjects];
  [FeatureApplication deleteFeatureApplicationsNotIncludingIdentifiers:allObjects inDatabase:self->_database];

  return v6;
}

- (id)setFeatureApplications:(id)applications forAccountIdentifier:(id)identifier
{
  applicationsCopy = applications;
  identifierCopy = identifier;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = applicationsCopy;
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
        applicationIdentifier = [v14 applicationIdentifier];
        if (applicationIdentifier)
        {
          v16 = [FeatureApplication insertOrUpdateFeatureApplication:v14 inDatabase:self->_database];
          [v7 addObject:applicationIdentifier];
          featureApplication = [v16 featureApplication];
          [v8 addObject:featureApplication];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  allObjects = [v7 allObjects];
  [FeatureApplication deleteFeatureApplicationsNotIncludingIdentifiers:allObjects forAccountIdentifier:identifierCopy inDatabase:self->_database];

  return v8;
}

- (id)insertOrUpdateFeatureApplication:(id)application
{
  v3 = [FeatureApplication insertOrUpdateFeatureApplication:application inDatabase:self->_database];
  featureApplication = [v3 featureApplication];

  return featureApplication;
}

- (id)nextPossibleFetchDateForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:type accountIdentifier:identifierCopy];
  if (v9)
  {
    v10 = [AccountEndpointBackOff anyInDatabase:self->_database forAccountType:type endpointType:endpointType accountPID:v9];
    nextPossibleFetchDate = [v10 nextPossibleFetchDate];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error: could not find an account pid for account identifier %@", &v14, 0xCu);
    }

    nextPossibleFetchDate = 0;
  }

  return nextPossibleFetchDate;
}

- (void)increaseRetryBackoffLevelForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:type accountIdentifier:identifierCopy];
  if (v9)
  {
    v10 = v9;
    v11 = [AccountEndpointBackOff anyInDatabase:self->_database forAccountType:type endpointType:endpointType accountPID:v9];
    v12 = v11;
    if (v11)
    {
      [v11 increaseBackoffLevel];
    }

    else
    {
      v14 = [AccountEndpointBackOff insertIfNotExistsForAccountType:type endpointType:endpointType accountPID:v10 inDatabase:self->_database];
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error: could not find an account pid for account identifier %@", &v15, 0xCu);
    }
  }
}

- (void)deleteRetryBackoffForAccountType:(unint64_t)type endpointType:(unint64_t)endpointType accountIdentifier:(id)identifier
{
  v8 = [(PDDatabaseManager *)self _accountPIDForEndpointBackoffType:type accountIdentifier:identifier];
  if (v8)
  {
    database = self->_database;

    [AccountEndpointBackOff deleteBackOffForAccountType:type endpointType:endpointType accountPID:v8 inDatabase:database];
  }
}

- (int64_t)_accountPIDForEndpointBackoffType:(unint64_t)type accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (type - 4 < 2 || type == 2)
  {
    dbPeerPaymentAccount = [Account anyInDatabase:self->_database withIdentifier:identifierCopy];
    v8 = dbPeerPaymentAccount;
    if (!dbPeerPaymentAccount)
    {
      persistentID = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (type != 1)
    {
      persistentID = 0;
      goto LABEL_9;
    }

    dbPeerPaymentAccount = [(PDDatabaseManager *)self dbPeerPaymentAccount];
    v8 = dbPeerPaymentAccount;
  }

  persistentID = [dbPeerPaymentAccount persistentID];
LABEL_8:

LABEL_9:
  return persistentID;
}

- (id)accountWithIdentifier:(id)identifier
{
  v3 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  account = [v3 account];

  return account;
}

- (id)accountsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
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

- (id)setAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = accountsCopy;
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
        accountIdentifier = [v12 accountIdentifier];
        [v5 addObject:accountIdentifier];

        account = [v13 account];
        [v6 addObject:account];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  allObjects = [v5 allObjects];
  [Account deleteAccountsNotIncludingIdentifiers:allObjects inDatabase:self->_database];

  return v6;
}

- (id)insertOrUpdateAccount:(id)account
{
  v3 = [Account insertOrUpdateAccount:account inDatabase:self->_database];
  account = [v3 account];

  return account;
}

- (id)insertOrUpdateAccountUsers:(id)users forAccountWithIdentifier:(id)identifier
{
  usersCopy = users;
  v7 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser insertOrUpdateAccountUsers:usersCopy forAccountPID:v9 inDatabase:self->_database];
    v11 = [v10 pk_setByApplyingBlock:&stru_100848DC8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)insertOrUpdateAccountUser:(id)user forAccountWithIdentifier:(id)identifier
{
  userCopy = user;
  v7 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser insertOrUpdateAccountUser:userCopy forAccountPID:v9 inDatabase:self->_database];
    accountUser = [v10 accountUser];
  }

  else
  {
    accountUser = 0;
  }

  return accountUser;
}

- (BOOL)hasAnyAccountWithType:(unint64_t)type
{
  database = self->_database;
  v4 = [NSNumber numberWithUnsignedInteger:type];
  v5 = [Account anyInDatabase:database withType:v4];
  v6 = v5 != 0;

  return v6;
}

- (void)deleteAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier
{
  dCopy = d;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
    [AccountUser deleteAccountUserWithAltDSID:dCopy forAccountPID:v8 inDatabase:self->_database];
  }
}

- (id)accountUsersForAccountWithIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (id)accountUsersForAccountWithIdentifier:(id)identifier accessLevel:(unint64_t)level
{
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
    v9 = [AccountUser accountUsersForAccountPID:v8 accessLevel:level inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountUserForAccountWithIdentifier:(id)identifier handle:(id)handle
{
  handleCopy = handle;
  v7 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v10 = [AccountUser accountUserForAccountPID:v9 handle:handleCopy inDatabase:self->_database];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)setScheduledPayments:(id)payments forAccount:(id)account
{
  paymentsCopy = payments;
  accountCopy = account;
  v8 = +[NSMutableArray array];
  v19 = accountCopy;
  accountIdentifier = [accountCopy accountIdentifier];
  [AccountPayment deleteScheduledPaymentsWithAccountIdentifier:accountIdentifier inDatabase:self->_database];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = paymentsCopy;
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

        v15 = [AccountPayment insertScheduledPayment:*(*(&v20 + 1) + 8 * i) accountIdentifier:accountIdentifier inDatabase:self->_database];
        payment = [v15 payment];

        [v8 safelyAddObject:payment];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [v8 copy];

  return v17;
}

- (id)scheduledPaymentsWithAccountIdentifier:(id)identifier includeFailedRecurringPayments:(BOOL)payments
{
  paymentsCopy = payments;
  identifierCopy = identifier;
  v7 = [AccountPayment scheduledPaymentsWithAccountIdentifier:identifierCopy inDatabase:self->_database];
  allObjects = [v7 allObjects];

  if (paymentsCopy)
  {
    v9 = [AccountPayment failedRecurringPaymentsWithAccountIdentifier:identifierCopy inDatabase:self->_database];
    allObjects2 = [v9 allObjects];

    v11 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

    allObjects = v11;
  }

  return allObjects;
}

- (id)setTransfers:(id)transfers forAccount:(id)account
{
  transfersCopy = transfers;
  accountCopy = account;
  v8 = +[NSMutableArray array];
  v22 = accountCopy;
  accountIdentifier = [accountCopy accountIdentifier];
  [AccountTransfer deleteTransfersWithAccountIdentifier:accountIdentifier inDatabase:self->_database];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = transfersCopy;
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

        v15 = [AccountTransfer insertTransfer:*(*(&v23 + 1) + 8 * i) accountIdentifier:accountIdentifier inDatabase:self->_database];
        transfer = [v15 transfer];

        [v8 safelyAddObject:transfer];
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

- (id)placedHoldsWithAccountIdentifier:(id)identifier
{
  v3 = [AccountHold placedHoldsWithAccountIdentifier:identifier inDatabase:self->_database];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)accountEventExistsWithIdentifier:(id)identifier
{
  v3 = [AccountEvent accountEventWithIdentifier:identifier inDatabase:self->_database];
  v4 = v3 != 0;

  return v4;
}

- (id)accountEventWithIdentifier:(id)identifier
{
  v3 = [AccountEvent accountEventWithIdentifier:identifier inDatabase:self->_database];
  event = [v3 event];

  return event;
}

- (id)creditStatementWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  v4 = [CreditAccountStatement creditAccountStatementsWithIdentifier:identifier withAccountIdentifier:accountIdentifier inDatabase:self->_database];
  anyObject = [v4 anyObject];
  creditAccountStatement = [anyObject creditAccountStatement];

  return creditAccountStatement;
}

- (id)creditStatementWithIdentifier:(id)identifier accountIdentifiers:(id)identifiers
{
  v4 = [CreditAccountStatement creditAccountStatementsWithIdentifier:identifier withAccountIdentifiers:identifiers inDatabase:self->_database];
  anyObject = [v4 anyObject];
  creditAccountStatement = [anyObject creditAccountStatement];

  return creditAccountStatement;
}

- (id)accountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  v4 = [AccountStatementMetadata anyInDatabase:self->_database forStatementIdentifier:identifier accountIdentifier:accountIdentifier];
  accountStatementMetadata = [v4 accountStatementMetadata];

  return accountStatementMetadata;
}

- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  v4 = [AccountStatementMetadata anyInDatabase:self->_database forStatementIdentifier:identifier accountIdentifier:accountIdentifier];
  [v4 deleteFromDatabase];
}

- (id)latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:(id)identifier accountType:(unint64_t)type maxProcessedAttemptCount:(int64_t)count
{
  identifierCopy = identifier;
  if (type == 1)
  {
    v9 = @"pineapples.c";
    v10 = @"pineapples.t";
    v11 = @"pineapples.b";
    v12 = @"pineapples";
    goto LABEL_5;
  }

  if (type == 4)
  {
    v9 = @"eggplant.d";
    v10 = @"eggplant.n";
    v11 = @"eggplant.b";
    v12 = @"eggplant";
LABEL_5:
    v13 = [AccountStatementMetadata latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:identifierCopy tableName:v12 statementIdentifierColumn:v11 accountIdentifierColumn:v10 openingDateColumn:v9 maxProcessedAttemptCount:count inDatabase:self->_database];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)markStatementMetadataItems:(id)items asProcessed:(BOOL)processed error:(unint64_t)error statementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  processedCopy = processed;
  database = self->_database;
  itemsCopy = items;
  v13 = [AccountStatementMetadata anyInDatabase:database forStatementIdentifier:identifier accountIdentifier:accountIdentifier];
  [v13 markStatementMetadataItems:itemsCopy processed:processedCopy error:error];

  accountStatementMetadata = [v13 accountStatementMetadata];

  return accountStatementMetadata;
}

- (id)updateStatementMetadataWithReport:(id)report reportDate:(id)date
{
  database = self->_database;
  dateCopy = date;
  reportCopy = report;
  statementIdentifier = [reportCopy statementIdentifier];
  accountIdentifier = [reportCopy accountIdentifier];
  v10 = [AccountStatementMetadata anyInDatabase:database forStatementIdentifier:statementIdentifier accountIdentifier:accountIdentifier];

  [v10 updateWithReport:reportCopy reportDate:dateCopy];
  accountStatementMetadata = [v10 accountStatementMetadata];

  return accountStatementMetadata;
}

- (id)insertOrUpdateAccountStatementMetadata:(id)metadata
{
  v3 = [AccountStatementMetadata insertOrUpdateAccountStatementMetadata:metadata inDatabase:self->_database];
  accountStatementMetadata = [v3 accountStatementMetadata];

  return accountStatementMetadata;
}

- (void)insertOrUpdateCreditStatements:(id)statements forAccountIdentifier:(id)identifier
{
  statementsCopy = statements;
  identifierCopy = identifier;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = statementsCopy;
  v20 = [statementsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
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
        identifier = [v9 identifier];
        v11 = [CreditAccountStatement creditAccountStatementsWithIdentifier:identifier withAccountIdentifier:identifierCopy inDatabase:self->_database];

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
          v17 = [CreditAccountStatement insertCreditAccountStatement:v9 withAccountIdentifier:identifierCopy inDatabase:self->_database];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }
}

- (void)insertOrUpdateSavingsAccountStatements:(id)statements forAccountIdentifier:(id)identifier
{
  statementsCopy = statements;
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(statementsCopy);
        }

        v12 = [SavingsAccountStatement insertOrUpdateSavingsAccountStatement:*(*(&v13 + 1) + 8 * v11) forAccount:identifierCopy inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)insertOrUpdateAccountTaxForms:(id)forms forAccountIdentifier:(id)identifier
{
  formsCopy = forms;
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [formsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(formsCopy);
        }

        v12 = [AccountTaxForm insertOrUpdateAccountTaxForm:*(*(&v13 + 1) + 8 * v11) forAccount:identifierCopy inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [formsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)recomputeCategoryVisualizationMagnitudesForPassUniqueID:(id)d withStyle:(int64_t)style
{
  dCopy = d;
  context = objc_autoreleasePoolPush();
  v6 = [Pass anyInDatabase:self->_database withUniqueID:dCopy];
  associatedAccountIdentifier = [v6 associatedAccountIdentifier];
  v7 = [v6 valueForProperty:@"a"];
  if (v7)
  {
    bOOLValue = 1;
  }

  else
  {
    v9 = [v6 valueForProperty:@"b"];
    bOOLValue = [v9 BOOLValue];
  }

  v10 = associatedAccountIdentifier;
  if (bOOLValue && associatedAccountIdentifier)
  {
    v44 = [(PDDatabaseManager *)self accountWithIdentifier:associatedAccountIdentifier];
    v11 = [(PDDatabaseManager *)self accountUsersForAccountWithIdentifier:associatedAccountIdentifier];
    v38 = [v11 pk_anyObjectPassingTest:&stru_100848E08];

    v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x9A7B9230uLL);
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    accessLevel = [v44 accessLevel];
    if (accessLevel)
    {
      if (accessLevel == 1)
      {
        creditDetails = [v44 creditDetails];
        cardBalance = [creditDetails cardBalance];
        amount = [cardBalance amount];
LABEL_11:

        if (amount)
        {
          v18 = PKCurrencyDecimalToStorageInteger();
          if (v18 >= 1)
          {
            v19 = [(PDDatabaseManager *)self allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:dCopy];
            v20 = objc_alloc_init(PKPaymentTransactionRequest);
            [v20 setTransactionSourceIdentifiers:v19];
            creditDetails2 = [v44 creditDetails];
            currencyCode = [creditDetails2 currencyCode];
            v23 = currencyCode;
            if (currencyCode)
            {
              v24 = currencyCode;
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
          v40 = [(PDDatabaseManager *)self categoryVisualizationMagnitudesForPassUniqueID:dCopy, v38];
          v26 = objc_alloc_init(NSMutableSet);
          for (i = 0; i != 8; ++i)
          {
            v28 = v12[i];
            v29 = v56[3];
            v30 = objc_alloc_init(PKCategoryVisualizationMagnitude);
            [v30 setPassUniqueIdentifier:dCopy];
            [v30 setBucket:i];
            [v30 setMagnitude:(v28 / v29)];
            [v26 addObject:v30];
          }

          free(v12);
          v31 = [v26 copy];
          if (PKEqualObjects())
          {
            styleCopy2 = style;
            if (!style)
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

            styleCopy2 = style;
          }

          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_10016666C;
          v46[3] = &unk_100848E58;
          v47 = dCopy;
          v48 = v31;
          v49 = styleCopy2;
          [(PDDatabaseManager *)self dispatchDelegateCallback:v46];

LABEL_32:
          _Block_object_dispose(&v55, 8);

          v10 = associatedAccountIdentifier;
          goto LABEL_33;
        }

LABEL_17:
        amount = 0;
        goto LABEL_18;
      }

      if (accessLevel != 2)
      {
        goto LABEL_17;
      }
    }

    creditDetails = [v44 creditDetails];
    cardBalance = [creditDetails accountSummary];
    altDSID = [v38 altDSID];
    v17 = [cardBalance accountUserActivityForAccountUserAltDSID:altDSID];
    amount = [v17 totalSpending];

    goto LABEL_11;
  }

LABEL_33:

  objc_autoreleasePoolPop(context);
}

- (id)cashbackByPeriodForTransactionSourceIdentifiers:(id)identifiers withStartDate:(id)date endDate:(id)endDate calendar:(id)calendar calendarUnit:(unint64_t)unit type:(unint64_t)type
{
  identifiersCopy = identifiers;
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  v198 = objc_alloc_init(NSMutableDictionary);
  selfCopy = self;
  v182 = dateCopy;
  v183 = identifiersCopy;
  typeCopy = type;
  v181 = endDateCopy;
  v16 = [PaymentTransaction paymentTransactionsInDatabase:self->_database forTransactionSourceIdentifiers:identifiersCopy withRedemptionType:type startDate:dateCopy endDate:endDateCopy];
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
        rewardsTotalAmount = [v21 rewardsTotalAmount];
        if (rewardsTotalAmount)
        {
          v23 = +[NSDecimalNumber notANumber];
          v24 = [rewardsTotalAmount compare:v23];

          if (v24)
          {
            redemptionEvent = [v21 redemptionEvent];
            items = [redemptionEvent items];
            anyObject = [items anyObject];

            if (anyObject)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [anyObject type] == typeCopy)
              {
                if ([v21 transactionType] == 14)
                {
                  v222 = anyObject;
                  if (v187)
                  {
                    installmentPlans = obj;
                  }

                  else
                  {
                    anyObject2 = [v183 anyObject];
                    v45 = [(PDDatabaseManager *)selfCopy passUniqueIdentifierForTransactionSourceIdentifier:anyObject2];

                    v187 = v45;
                    v46 = [Pass anyInDatabase:selfCopy->_database withUniqueID:v45];

                    associatedAccountIdentifier = [v46 associatedAccountIdentifier];

                    v48 = [Account accountWithIdentifier:associatedAccountIdentifier inDatabase:selfCopy->_database];
                    account = [v48 account];

                    creditDetails = [account creditDetails];
                    installmentPlans = [creditDetails installmentPlans];

                    v51 = objc_alloc_init(NSMutableDictionary);
                    v203 = v51;
                    v16 = v188;
                    v185 = account;
                    v186 = associatedAccountIdentifier;
                    v19 = v214;
                    anyObject = v222;
                    v184 = v46;
                  }

                  v266 = 0u;
                  v267 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v29 = installmentPlans;
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
                        identifier = [v55 identifier];
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
                              lifecycleIdentifier = [v21 lifecycleIdentifier];
                              identifier2 = [v60 identifier];
                              v63 = lifecycleIdentifier;
                              v64 = identifier2;
                              v65 = v64;
                              if (v63 == v64)
                              {

LABEL_51:
                                v67 = [v203 objectForKey:identifier];
                                if (!v67)
                                {
                                  v67 = objc_alloc_init(NSMutableSet);
                                  [v203 setObject:v67 forKey:identifier];
                                }

                                [v67 addObject:v21];

                                anyObject = v222;
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
                        anyObject = v222;
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
                  date = [redemptionEvent date];
                  v223 = [(PDDatabaseManager *)selfCopy _startOfTimeBlockForUnit:unit inCalendar:calendarCopy fromDate:date forward:0];
                  v31 = [v198 objectForKey:?];
                  if (!v31)
                  {
                    v32 = objc_alloc_init(PKPaymentTransactionGroup);
                    [v32 setStartDate:v223];
                    [v32 setEndDate:date];
                    [v32 setType:5];
                    v226 = +[NSDecimalNumber zero];
                    currencyCode = [v21 currencyCode];
                    v34 = PKCurrencyAmountCreate(v226, currencyCode, 0);
                    [v32 setTotalAmount:v34];

                    v31 = v32;
                    [v32 setTransactionCount:0];
                    [v32 setTransactions:&__NSArray0__struct];
                    [v198 setObject:v32 forKey:v223];
                  }

                  transactions = [v31 transactions];
                  v36 = [transactions arrayByAddingObject:v21];
                  [v31 setTransactions:v36];

                  endDate = [v31 endDate];
                  v38 = [date compare:endDate];

                  if (v38 == 1)
                  {
                    [v31 setEndDate:date];
                  }

                  totalAmount = [v31 totalAmount];
                  amount = [totalAmount amount];
                  v41 = [amount decimalNumberByAdding:rewardsTotalAmount];
                  [totalAmount currency];
                  v42 = v218 = v31;
                  PKCurrencyAmountCreate(v41, v42, 0);
                  v43 = v227 = date;

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

        redemptionEvent = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(redemptionEvent, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, redemptionEvent, OS_LOG_TYPE_DEFAULT, "Transaction does not have a valid rewardsTotalAmount", buf, 2u);
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
      identifier3 = [v72 identifier];
      v74 = [v69 objectForKey:identifier3];

      if ([v74 count])
      {
        v75 = [v74 pk_setByApplyingBlock:&stru_100848E98];
        [v205 unionSet:v75];

        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v207 = v72;
        lineItems = [v72 lineItems];
        v77 = [lineItems countByEnumeratingWithState:&v252 objects:v278 count:16];
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
              objc_enumerationMutation(lineItems);
            }

            v81 = *(*(&v252 + 1) + 8 * j);
            if ([v81 type] == 1)
            {
              identifier4 = [v81 identifier];
              goto LABEL_73;
            }
          }

          v78 = [lineItems countByEnumeratingWithState:&v252 objects:v278 count:16];
        }

        while (v78);
LABEL_71:
        identifier4 = 0;
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

          redemptionEvent3 = 0;
          goto LABEL_111;
        }

        v85 = v84;
        v211 = v71;
        redemptionEvent3 = 0;
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
          lifecycleIdentifier2 = [v89 lifecycleIdentifier];
          v91 = identifier4;
          v92 = v91;
          if (lifecycleIdentifier2 != v91)
          {
            if (identifier4 && lifecycleIdentifier2)
            {
              v93 = [lifecycleIdentifier2 isEqualToString:v91];

              if (!v93)
              {
                goto LABEL_87;
              }

LABEL_84:
              redemptionEvent2 = [v89 redemptionEvent];

              lifecycleIdentifier2 = objb;
              redemptionEvent3 = redemptionEvent2;
              objb = v89;
            }

            else
            {
            }

LABEL_87:
            rewardsTotalAmount2 = [v89 rewardsTotalAmount];
            if (rewardsTotalAmount2 && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v96 = objc_claimAutoreleasedReturnValue(), v97 = [rewardsTotalAmount2 compare:v96], v96, v97))
            {
              v98 = v229;
              v229 = [v229 decimalNumberByAdding:rewardsTotalAmount2];
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
                  if (redemptionEvent3)
                  {
LABEL_96:
                    v224 = redemptionEvent3;
                    items2 = [redemptionEvent3 items];
                    anyObject3 = [items2 anyObject];

                    if (anyObject3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [anyObject3 type] == typeCopy)
                    {
                      date2 = [redemptionEvent3 date];
                      v196 = [(PDDatabaseManager *)selfCopy _startOfTimeBlockForUnit:unit inCalendar:calendarCopy fromDate:date2 forward:0];
                      [v198 objectForKey:?];
                      v103 = v102 = v229;
                      if (!v103)
                      {
                        v103 = objc_alloc_init(PKPaymentTransactionGroup);
                        [v103 setStartDate:v196];
                        [v103 setEndDate:date2];
                        [v103 setType:5];
                        v104 = +[NSDecimalNumber zero];
                        currencyCode2 = [v207 currencyCode];
                        PKCurrencyAmountCreate(v104, currencyCode2, 0);
                        v107 = v106 = v71;
                        [v103 setTotalAmount:v107];

                        v71 = v106;
                        [v103 setTransactionCount:0];
                        [v103 setTransactions:&__NSArray0__struct];
                        [v198 setObject:v103 forKey:v196];
                      }

                      v212 = v71;
                      endDate2 = [v103 endDate];
                      v109 = [date2 compare:endDate2];

                      if (v109 == 1)
                      {
                        [v103 setEndDate:date2];
                      }

                      v110 = objc_alloc_init(PKPaymentTransaction);
                      [v110 setTransactionType:14];
                      [v110 setTransactionSource:4];
                      [v110 setRedemptionType:typeCopy];
                      transactionDate = [objb transactionDate];
                      [v110 setTransactionDate:transactionDate];

                      [v110 setInstallmentPlan:v207];
                      totalAmount2 = [v207 totalAmount];
                      [v110 setAmount:totalAmount2];

                      currencyCode3 = [v207 currencyCode];
                      [v110 setCurrencyCode:currencyCode3];

                      [v110 setTransactionStatus:1];
                      identifier5 = [v207 identifier];
                      [v110 setIdentifier:identifier5];

                      [v110 setRewardsTotalAmount:v229];
                      currencyCode4 = [v110 currencyCode];
                      [v110 setRewardsTotalCurrencyCode:currencyCode4];

                      rewards = [v207 rewards];
                      [v110 setRewards:rewards];

                      [v110 setAccountType:2];
                      transactions2 = [v103 transactions];
                      v118 = [transactions2 arrayByAddingObject:v110];
                      [v103 setTransactions:v118];

                      totalAmount3 = [v103 totalAmount];
                      amount2 = [totalAmount3 amount];
                      [amount2 decimalNumberByAdding:v229];
                      v121 = v120 = v103;
                      currency = [totalAmount3 currency];
                      v123 = PKCurrencyAmountCreate(v121, currency, 0);

                      [v120 setTotalAmount:v123];
                      v71 = v212;
                      v124 = v224;
                      v69 = v203;
                      v70 = v199;
                    }

                    else
                    {
                      date2 = PKLogFacilityTypeGetObject();
                      v102 = v229;
                      if (os_log_type_enabled(date2, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, date2, OS_LOG_TYPE_DEFAULT, "Transaction does not have a valid rewards event", buf, 2u);
                      }

                      v124 = v224;
                    }

                    v74 = v220;
                    goto LABEL_108;
                  }

LABEL_112:
                  redemptionEvent3 = [objb redemptionEvent];
                  goto LABEL_96;
                }

LABEL_111:
                objb = [v83 anyObject];
                if (redemptionEvent3)
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

  v126 = [AccountEvent accountEventsForAccountIdentifier:v186 altDSID:0 types:&off_1008A4830 startDate:v182 endDate:v181 orderedByDate:1 limit:0 inDatabase:selfCopy->_database];
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
        items3 = [v132 items];
        anyObject4 = [items3 anyObject];

        v221 = v132;
        identifier6 = [v132 identifier];
        LOBYTE(v132) = [v128 containsObject:identifier6];

        if ((v132 & 1) == 0)
        {
          rewards2 = [anyObject4 rewards];
          rewardsItems = [rewards2 rewardsItems];

          v138 = anyObject4;
          if (anyObject4 && [rewardsItems count] && objc_msgSend(anyObject4, "type") == typeCopy)
          {
            date3 = [v221 date];
            v200 = [(PDDatabaseManager *)selfCopy _startOfTimeBlockForUnit:unit inCalendar:calendarCopy fromDate:date3 forward:0];
            v140 = [v198 objectForKey:?];
            if (!v140)
            {
              v140 = objc_alloc_init(PKPaymentTransactionGroup);
              [v140 setStartDate:v200];
              [v140 setEndDate:date3];
              [v140 setType:5];
              objc = +[NSDecimalNumber zero];
              currencyAmount = [anyObject4 currencyAmount];
              currency2 = [currencyAmount currency];
              v143 = PKCurrencyAmountCreate(objc, currency2, 0);
              [v140 setTotalAmount:v143];

              [v140 setTransactionCount:0];
              [v140 setTransactions:&__NSArray0__struct];
              [v198 setObject:v140 forKey:v200];
            }

            v216 = v140;
            v192 = v138;
            v197 = v131;
            endDate3 = [v140 endDate];
            v145 = [date3 compare:endDate3];

            v146 = v145 == 1;
            v147 = v216;
            if (v146)
            {
              [v216 setEndDate:date3];
            }

            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v209 = rewardsItems;
            v230 = [v209 countByEnumeratingWithState:&v240 objects:v275 count:16];
            if (v230)
            {
              v225 = *v241;
              v213 = rewardsItems;
              do
              {
                for (k = 0; k != v230; k = k + 1)
                {
                  if (*v241 != v225)
                  {
                    objc_enumerationMutation(v209);
                  }

                  v149 = *(*(&v240 + 1) + 8 * k);
                  currencyAmount2 = [v149 currencyAmount];
                  if (currencyAmount2)
                  {
                    v151 = objc_alloc_init(PKPaymentTransaction);
                    [v151 setTransactionType:12];
                    [v151 setTransactionSource:4];
                    [v151 setRedemptionType:typeCopy];
                    [v151 setTransactionDate:date3];
                    amount3 = [currencyAmount2 amount];
                    [v151 setAmount:amount3];

                    currency3 = [currencyAmount2 currency];
                    [v151 setCurrencyCode:currency3];

                    [v151 setTransactionStatus:1];
                    identifier7 = [v221 identifier];
                    [v151 setIdentifier:identifier7];

                    amount4 = [v151 amount];
                    [v151 setRewardsTotalAmount:amount4];

                    currencyCode5 = [v151 currencyCode];
                    [v151 setRewardsTotalCurrencyCode:currencyCode5];

                    v157 = [PKPaymentTransactionRewards alloc];
                    v274 = v149;
                    v158 = [NSArray arrayWithObjects:&v274 count:1];
                    objd = [v157 initWithRewardsItems:v158];

                    [v151 setRewards:objd];
                    transactions3 = [v147 transactions];
                    v160 = [transactions3 arrayByAddingObject:v151];
                    [v147 setTransactions:v160];

                    totalAmount4 = [v147 totalAmount];
                    amount5 = [totalAmount4 amount];
                    amount6 = [v151 amount];
                    [amount5 decimalNumberByAdding:amount6];
                    v165 = v164 = date3;
                    currency4 = [totalAmount4 currency];
                    PKCurrencyAmountCreate(v165, currency4, 0);
                    v168 = v167 = currencyAmount2;

                    v147 = v216;
                    date3 = v164;

                    [v216 setTotalAmount:v168];
                    currencyAmount2 = v167;

                    rewardsItems = v213;
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

          anyObject4 = v138;
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
        transactions4 = [v174 transactions];
        v176 = [transactions4 sortedArrayUsingComparator:&stru_100848ED8];

        [v174 setTransactions:v176];
        transactions5 = [v174 transactions];
        [v174 setTransactionCount:{objc_msgSend(transactions5, "count")}];
      }

      v171 = [v169 countByEnumeratingWithState:&v236 objects:v273 count:16];
    }

    while (v171);
  }

  allValues = [v169 allValues];
  v179 = [allValues sortedArrayUsingComparator:&stru_100848EF8];

  return v179;
}

- (id)_startOfTimeBlockForUnit:(unint64_t)unit inCalendar:(id)calendar fromDate:(id)date forward:(BOOL)forward
{
  v8 = 1;
  v9 = 4096;
  v10 = 16;
  if ((unit & 4) == 0)
  {
    v10 = 32;
  }

  if ((unit & 8) == 0)
  {
    v9 = v10;
    v8 = (unit & 4) >> 2;
  }

  if ((unit & 0x1000) != 0)
  {
    v11 = 512;
  }

  else
  {
    v11 = v9;
  }

  if ((unit & 0x1000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (forward)
  {
    v13 = 256;
  }

  else
  {
    v13 = 260;
  }

  return [calendar nextDateAfterDate:date matchingUnit:v11 value:v12 options:v13];
}

- (id)insertOrUpdateSharedAccountCloudStore:(id)store accountIdentifier:(id)identifier
{
  storeCopy = store;
  v7 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = [SharedAccountCloudStore insertOrUpdateSharedAccountCloudStore:storeCopy forAccount:v7 inDatabase:self->_database];
    sharedAccountCloudStore = [v8 sharedAccountCloudStore];
  }

  else
  {
    sharedAccountCloudStore = 0;
  }

  return sharedAccountCloudStore;
}

- (id)sharedAccountCloudStoreForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (id)accountUserWithAltDSID:(id)d accountIdentifier:(id)identifier
{
  dCopy = d;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, dCopy, [v7 persistentID]);
    accountUser = [v8 accountUser];
  }

  else
  {
    accountUser = 0;
  }

  return accountUser;
}

- (id)primaryTransactionSourceIdentifierForAccountUserAltDSID:(id)d accountIdentifier:(id)identifier
{
  dCopy = d;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, dCopy, [v7 persistentID]);
    transactionSourceIdentifier = [v9 transactionSourceIdentifier];
  }

  else
  {
    transactionSourceIdentifier = 0;
  }

  return transactionSourceIdentifier;
}

- (id)physicalCardsForAccountWithIdentifier:(id)identifier
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:identifier];
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

- (id)replacePhysicalCards:(id)cards forAccountWithIdentifier:(id)identifier
{
  cardsCopy = cards;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard replacePhysicalCards:forAccountPID:inDatabase:](PhysicalCard, "replacePhysicalCards:forAccountPID:inDatabase:", cardsCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePhysicalCards:(id)cards forAccountWithIdentifier:(id)identifier
{
  cardsCopy = cards;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard insertOrUpdatePhysicalCards:forAccountPID:inDatabase:](PhysicalCard, "insertOrUpdatePhysicalCards:forAccountPID:inDatabase:", cardsCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePhysicalCard:(id)card forAccountWithIdentifier:(id)identifier
{
  cardCopy = card;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = +[PhysicalCard insertOrUpdatePhysicalCard:forAccountPID:inDatabase:](PhysicalCard, "insertOrUpdatePhysicalCard:forAccountPID:inDatabase:", cardCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)paymentFundingSourcesForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (id)paymentFundingSourceForIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v7 = [Account accountWithIdentifier:accountIdentifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v9 = [AccountPaymentFundingSource paymentFundingSourceForAccountPID:v8 identifier:identifierCopy inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)insertOrUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier
{
  sourcesCopy = sources;
  v7 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v9 = [AccountPaymentFundingSource insertOrUpdatePaymentFundingSources:sourcesCopy forAccountPID:v8 inDatabase:self->_database];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accountPromotionsForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (id)accountPromotionForProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v7 = [Account accountWithIdentifier:accountIdentifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountPromotion accountPromotionForProgramIdentifier:accountPID:inDatabase:](AccountPromotion, "accountPromotionForProgramIdentifier:accountPID:inDatabase:", identifierCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier
{
  promotionsCopy = promotions;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion insertOrUpdateAccountPromotions:accountPID:inDatabase:](AccountPromotion, "insertOrUpdateAccountPromotions:accountPID:inDatabase:", promotionsCopy, [v6 persistentID], self->_database);
  }
}

- (void)insertOrUpdateAccountPromotion:(id)promotion accountIdentifier:(id)identifier
{
  promotionCopy = promotion;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion insertOrUpdateAccountPromotion:accountPID:inDatabase:](AccountPromotion, "insertOrUpdateAccountPromotion:accountPID:inDatabase:", promotionCopy, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountPromotion:(id)promotion accountIdentifier:(id)identifier
{
  promotionCopy = promotion;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion deleteAccountPromotion:accountPID:inDatabase:](AccountPromotion, "deleteAccountPromotion:accountPID:inDatabase:", promotionCopy, [v6 persistentID], self->_database);
  }
}

- (void)updateImpressionCountsForPromotions:(id)promotions accountIdentifier:(id)identifier
{
  promotionsCopy = promotions;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotion updateImpressionCountsForPromotions:accountPID:inDatabase:](AccountPromotion, "updateImpressionCountsForPromotions:accountPID:inDatabase:", promotionsCopy, [v6 persistentID], self->_database);
  }
}

- (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v8 = [Account accountWithIdentifier:accountIdentifier inDatabase:self->_database];
  if ([v8 existsInDatabase])
  {
    +[AccountPromotion updateImpressionCount:promotionProgramIdentifier:accountPID:inDatabase:](AccountPromotion, "updateImpressionCount:promotionProgramIdentifier:accountPID:inDatabase:", count, identifierCopy, [v8 persistentID], self->_database);
  }
}

- (id)accountPromotionCompletionStepsForProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v7 = [Account accountWithIdentifier:accountIdentifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountPromotionCompletionStep accountPromotionCompletionStepsForProgramIdentifier:accountPID:inDatabase:](AccountPromotionCompletionStep, "accountPromotionCompletionStepsForProgramIdentifier:accountPID:inDatabase:", identifierCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountPromotionBehaviorForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (void)insertOrUpdateAccountPromotionBehavior:(id)behavior accountIdentifier:(id)identifier
{
  behaviorCopy = behavior;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountPromotionBehavior insertOrUpdateAccountPromotionBehavior:accountPID:inDatabase:](AccountPromotionBehavior, "insertOrUpdateAccountPromotionBehavior:accountPID:inDatabase:", behaviorCopy, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountPromotionBehaviorForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountPromotionBehavior deleteAccountPromotionBehaviorForAccountPID:inDatabase:](AccountPromotionBehavior, "deleteAccountPromotionBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)accountEnhancedMerchantsForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (id)accountEnhancedMerchantForPrivateIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  v7 = [Account accountWithIdentifier:accountIdentifier inDatabase:self->_database];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountEnhancedMerchant accountEnhancedMerchantForPrivateIdentifier:accountPID:inDatabase:](AccountEnhancedMerchant, "accountEnhancedMerchantForPrivateIdentifier:accountPID:inDatabase:", identifierCopy, [v7 persistentID], self->_database);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)insertOrUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier
{
  merchantsCopy = merchants;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant insertOrUpdateAccountEnhancedMerchants:accountPID:inDatabase:](AccountEnhancedMerchant, "insertOrUpdateAccountEnhancedMerchants:accountPID:inDatabase:", merchantsCopy, [v6 persistentID], self->_database);
  }
}

- (void)insertOrUpdateAccountEnhancedMerchant:(id)merchant accountIdentifier:(id)identifier
{
  merchantCopy = merchant;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant insertOrUpdateAccountEnhancedMerchant:accountPID:inDatabase:](AccountEnhancedMerchant, "insertOrUpdateAccountEnhancedMerchant:accountPID:inDatabase:", merchantCopy, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountEnhancedMerchant:(id)merchant accountIdentifier:(id)identifier
{
  merchantCopy = merchant;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchant deleteAccountEnhancedMerchant:accountPID:inDatabase:](AccountEnhancedMerchant, "deleteAccountEnhancedMerchant:accountPID:inDatabase:", merchantCopy, [v6 persistentID], self->_database);
  }
}

- (id)accountEnhancedMerchantBehaviorForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
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

- (void)insertOrUpdateAccountEnhancedMerchantBehavior:(id)behavior accountIdentifier:(id)identifier
{
  behaviorCopy = behavior;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEnhancedMerchantBehavior insertOrUpdateAccountEnhancedMerchantBehavior:accountPID:inDatabase:](AccountEnhancedMerchantBehavior, "insertOrUpdateAccountEnhancedMerchantBehavior:accountPID:inDatabase:", behaviorCopy, [v6 persistentID], self->_database);
  }
}

- (void)deleteAccountEnhancedMerchantBehaviorForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountEnhancedMerchantBehavior deleteAccountEnhancedMerchantBehaviorForAccountPID:inDatabase:](AccountEnhancedMerchantBehavior, "deleteAccountEnhancedMerchantBehaviorForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)accountEntityOrderingsForAccountIdentifier:(id)identifier entityType:(unint64_t)type
{
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    v7 = +[AccountEntityOrdering accountEntityOrderingsForAccountPID:entityType:inDatabase:](AccountEntityOrdering, "accountEntityOrderingsForAccountPID:entityType:inDatabase:", [v6 persistentID], type, self->_database);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)insertOrUpdateAccountEntityOrderings:(id)orderings accountIdentifier:(id)identifier entityType:(unint64_t)type
{
  orderingsCopy = orderings;
  v8 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v8 existsInDatabase])
  {
    +[AccountEntityOrdering insertOrUpdateAccountEntityOrderings:accountPID:entityType:inDatabase:](AccountEntityOrdering, "insertOrUpdateAccountEntityOrderings:accountPID:entityType:inDatabase:", orderingsCopy, [v8 persistentID], type, self->_database);
  }
}

- (void)deleteAccountEntityOrderingsForAccountIdentifier:(id)identifier entityType:(unint64_t)type
{
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    +[AccountEntityOrdering deleteAccountEntityOrderingsForAccountPID:entityType:inDatabase:](AccountEntityOrdering, "deleteAccountEntityOrderingsForAccountPID:entityType:inDatabase:", [v6 persistentID], type, self->_database);
  }
}

- (id)accountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type limit:(unint64_t)limit
{
  dateCopy = date;
  endDateCopy = endDate;
  v14 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v14 existsInDatabase])
  {
    v15 = +[AccountHistoricalBalance balancesForAccountPID:startDate:endDate:type:limit:inDatabase:](AccountHistoricalBalance, "balancesForAccountPID:startDate:endDate:type:limit:inDatabase:", [v14 persistentID], dateCopy, endDateCopy, type, limit, self->_database);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)insertAccountBalance:(id)balance forAccountIdentifier:(id)identifier
{
  balanceCopy = balance;
  v6 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v6 existsInDatabase])
  {
    v7 = +[AccountHistoricalBalance insertBalance:forAccountPID:inDatabase:](AccountHistoricalBalance, "insertBalance:forAccountPID:inDatabase:", balanceCopy, [v6 persistentID], self->_database);
  }
}

- (void)resetAccountBalancesForAccountIdentifier:(id)identifier
{
  v4 = [Account accountWithIdentifier:identifier inDatabase:self->_database];
  if ([v4 existsInDatabase])
  {
    +[AccountHistoricalBalance deleteBalancesForAccountPID:inDatabase:](AccountHistoricalBalance, "deleteBalancesForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (void)deleteAccountEndpointMetadataForAccountIdentifier:(id)identifier endpoint:(unint64_t)endpoint
{
  v4 = [AccountWebServiceEndpointMetadata anyInDatabase:self->_database accountIdentifier:identifier endpoint:endpoint];
  [v4 deleteFromDatabase];
}

- (id)accountEndpointMetadataForAccountIdentifier:(id)identifier endpoint:(unint64_t)endpoint
{
  v4 = [AccountWebServiceEndpointMetadata anyInDatabase:self->_database accountIdentifier:identifier endpoint:endpoint];
  endpointMetadata = [v4 endpointMetadata];

  return endpointMetadata;
}

- (id)insertOrUpdateAccountEndpointMetadata:(id)metadata
{
  v3 = [AccountWebServiceEndpointMetadata insertOrUpdateinitWithAccountEndpointMetadata:metadata inDatabase:self->_database];
  endpointMetadata = [v3 endpointMetadata];

  return endpointMetadata;
}

- (id)appleBalancePromotionForAccountIdentifier:(id)identifier
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:identifier];
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

- (id)insertOrUpdateAppleBalancePromotion:(id)promotion forAccountWithIdentifier:(id)identifier
{
  promotionCopy = promotion;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  if ([v7 existsInDatabase])
  {
    v8 = +[AppleBalancePromotionConfiguration insertOrUpdateAppleBalancePromotionConfiguration:forAccountPID:inDatabase:](AppleBalancePromotionConfiguration, "insertOrUpdateAppleBalancePromotionConfiguration:forAccountPID:inDatabase:", promotionCopy, [v7 persistentID], self->_database);
    appleBalancePromotionConfiguration = [v8 appleBalancePromotionConfiguration];
  }

  else
  {
    appleBalancePromotionConfiguration = 0;
  }

  return appleBalancePromotionConfiguration;
}

- (id)deleteAppleBalancePromotionForAccountWithIdentifier:(id)identifier
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:identifier];
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

- (id)inStoreTopUpTokenForAccountIdentifier:(id)identifier
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:identifier];
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

- (id)insertOrUpdateInStoreTopUpToken:(id)token forAccountWithIdentifier:(id)identifier
{
  tokenCopy = token;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  if ([v7 existsInDatabase])
  {
    v8 = +[AppleBalanceInStoreTopUpToken insertOrUpdateInStoreTopUpToken:forAccountPID:inDatabase:](AppleBalanceInStoreTopUpToken, "insertOrUpdateInStoreTopUpToken:forAccountPID:inDatabase:", tokenCopy, [v7 persistentID], self->_database);
    topUpToken = [v8 topUpToken];
  }

  else
  {
    topUpToken = 0;
  }

  return topUpToken;
}

- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)identifier
{
  v4 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  if ([v4 existsInDatabase])
  {
    +[AppleBalanceInStoreTopUpToken deleteInStoreTopUpTokenForAccountPID:inDatabase:](AppleBalanceInStoreTopUpToken, "deleteInStoreTopUpTokenForAccountPID:inDatabase:", [v4 persistentID], self->_database);
  }
}

- (id)discoveryItemWithIdentifier:(id)identifier
{
  v3 = [DiscoveryItem itemWithIdentifier:identifier inDatabase:self->_database];
  item = [v3 item];

  return item;
}

- (id)setDiscoveryItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100169E04;
  v12[3] = &unk_100841740;
  v13 = itemsCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = itemsCopy;
  sub_1005D4424(database, v12);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)updateDiscoveryItemsWithDialogRequestSourcedItems:(id)items
{
  itemsCopy = items;
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
  v6 = itemsCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryItemsWithRemoteItems:(id)items
{
  itemsCopy = items;
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
  v6 = itemsCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryItemsWithRuleResults:(id)results
{
  resultsCopy = results;
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
  v6 = resultsCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)updateDiscoveryItem:(id)item
{
  v3 = [DiscoveryItem updateItem:item inDatabse:self->_database];
  item = [v3 item];

  return item;
}

- (id)insertOrUpdateRule:(id)rule
{
  v3 = [Rule insertOrUpdateRule:rule inDatabase:self->_database];
  rule = [v3 rule];

  return rule;
}

- (id)updateRules:(id)rules
{
  rulesCopy = rules;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016ABC0;
  v12[3] = &unk_100841740;
  v13 = rulesCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = rulesCopy;
  sub_1005D4424(database, v12);
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)engagementMessageWithIdentifier:(id)identifier
{
  v3 = [DiscoveryEngagementMessage engagementMessageWithIdentifier:identifier inDatabase:self->_database];
  engagementMessage = [v3 engagementMessage];

  return engagementMessage;
}

- (id)updateEngagementMessages:(id)messages
{
  messagesCopy = messages;
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
  v6 = messagesCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateEngagementMessagesWithRemoteMessages:(id)messages
{
  messagesCopy = messages;
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
  v6 = messagesCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateEngagementMessagesForRuleResults:(id)results
{
  resultsCopy = results;
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
  v6 = resultsCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)updateEngagementMessage:(id)message
{
  v3 = [DiscoveryEngagementMessage updateEngagementMessage:message inDatabase:self->_database];
  engagementMessage = [v3 engagementMessage];

  return engagementMessage;
}

- (id)discoveryNotificationWithIdentifier:(id)identifier
{
  v3 = [DiscoveryNotification notificationWithIdentifier:identifier inDatabase:self->_database];
  notification = [v3 notification];

  return notification;
}

- (id)insertOrUpdateDiscoveryNotification:(id)notification
{
  v3 = [DiscoveryNotification insertOrUpdateNotification:notification inDatabase:self->_database];
  notification = [v3 notification];

  return notification;
}

- (id)updateDiscoveryNotifications:(id)notifications
{
  notificationsCopy = notifications;
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
  v6 = notificationsCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryNotificationsWithRemoteNotifications:(id)notifications
{
  notificationsCopy = notifications;
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
  v6 = notificationsCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)updateDiscoveryNotificationsForRuleResults:(id)results
{
  resultsCopy = results;
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
  v6 = resultsCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)paymentSetupFeatureWithIdentifier:(id)identifier
{
  v3 = [PaymentSetupFeature paymentSetupFeatureWithIdentifier:identifier inDatabase:self->_database];
  paymentSetupFeature = [v3 paymentSetupFeature];

  return paymentSetupFeature;
}

- (id)setPaymentSetupFeatures:(id)features
{
  featuresCopy = features;
  v5 = objc_alloc_init(NSMutableSet);
  v17 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = featuresCopy;
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
        productIdentifier = [v11 productIdentifier];
        if (productIdentifier)
        {
          v13 = [PaymentSetupFeature insertOrUpdatePaymentSetupFeature:v11 inDatabase:self->_database];
          if (v13)
          {
            [v5 addObject:productIdentifier];
            paymentSetupFeature = [v13 paymentSetupFeature];
            [v17 addObject:paymentSetupFeature];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];
  [PaymentSetupFeature deletePaymentSetupFeaturesNotIncludingIdentifiers:allObjects inDatabase:self->_database];

  return v17;
}

- (id)insertOrUpdatePaymentSetupFeature:(id)feature
{
  v3 = [PaymentSetupFeature insertOrUpdatePaymentSetupFeature:feature inDatabase:self->_database];
  paymentSetupFeature = [v3 paymentSetupFeature];

  return paymentSetupFeature;
}

- (id)passUniqueIdentifierWithPaymentApplicationIdentifier:(id)identifier subcredentialIdentifier:(id)subcredentialIdentifier
{
  identifierCopy = identifier;
  subcredentialIdentifierCopy = subcredentialIdentifier;
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
  v9 = identifierCopy;
  v14 = v9;
  v10 = subcredentialIdentifierCopy;
  v15 = v10;
  v16 = &v17;
  sub_1005D4424(database, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)passesWithPairedReaderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016C6A8;
  v11[3] = &unk_100841740;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = identifierCopy;
  sub_1005D4424(database, v11);
  v9 = [v7 copy];

  return v9;
}

- (id)appletSubcredentialWithIdentifier:(id)identifier
{
  v3 = [AppletSubcredential appletSubcredentialWithIdentifier:identifier inDatabase:self->_database];
  appletSubcredential = [v3 appletSubcredential];

  return appletSubcredential;
}

- (id)appletSubcredentialForSharedCredentialWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  sub_1005D4424(database, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (BOOL)updateAppletSubcredentials:(id)subcredentials
{
  subcredentialsCopy = subcredentials;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016CB8C;
  v8[3] = &unk_100848590;
  v6 = subcredentialsCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  sub_1005D4424(database, v8);
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (void)updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:(id)identifiers usingUpdater:(id)updater withHandler:(id)handler
{
  identifiersCopy = identifiers;
  updaterCopy = updater;
  handlerCopy = handler;
  v11 = objc_alloc_init(NSMutableArray);
  database = self->_database;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016CFC4;
  v29[3] = &unk_100848F98;
  v24 = identifiersCopy;
  v30 = v24;
  selfCopy = self;
  v13 = updaterCopy;
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
        unsignedIntegerValue = [v20 unsignedIntegerValue];

        v22 = [v19 objectAtIndexedSubscript:1];
        v23 = [v19 objectAtIndexedSubscript:2];
        handlerCopy[2](handlerCopy, unsignedIntegerValue, v22, v23);
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v16);
  }
}

- (id)subcredentialIdentifiersByAIDForSecureElementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [identifiersCopy count];
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
    v17 = identifiersCopy;
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

- (id)identityPassUniqueIDsOfTypes:(id)types
{
  allObjects = [types allObjects];
  v5 = [Pass predicateForIdentityTypes:allObjects];

  v6 = [Pass passUniqueIDsInDatabase:self->_database matchingPredicate:v5];

  return v6;
}

- (id)identityPassesOfTypes:(id)types
{
  v4 = [Pass predicateForIdentityTypes:types];
  v5 = [Pass passesInDatabase:self->_database matchingPredicate:v4];

  return v5;
}

- (id)passesWithISO18013Credentials
{
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
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
  v12 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v18[2] = v12;
  v18[3] = v9;
  v13 = [NSArray arrayWithObjects:v18 count:4];
  v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = [Pass passesInDatabase:self->_database matchingPredicate:v14];
  v16 = [(PDDatabaseManager *)self _registeredPasses:v15];

  return v16;
}

- (id)identityPassesWithIssuingCountryCode:(id)code
{
  secureElement = self->_secureElement;
  codeCopy = code;
  secureElementIdentifiers = [(PKSecureElement *)secureElement secureElementIdentifiers];
  v7 = [Pass predicateForPaymentType:1005];
  v21[0] = v7;
  v8 = [NSSet setWithObject:codeCopy];

  v9 = [Pass predicateForIssuerCountryCodes:v8];
  v21[1] = v9;
  v10 = [NSArray arrayWithObjects:v21 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v10];

  v12 = [(PDDatabaseManager *)self _predicateForType:1];
  v20[0] = v12;
  v13 = [Pass predicateForPrimaryPaymentApplication:1];
  v20[1] = v13;
  v14 = [Pass predicateForPaymentApplicationSecureElementIdentifiers:secureElementIdentifiers];
  v20[2] = v14;
  v20[3] = v11;
  v15 = [NSArray arrayWithObjects:v20 count:4];
  v16 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v15];

  v17 = [Pass passesInDatabase:self->_database matchingPredicate:v16];
  v18 = [(PDDatabaseManager *)self _registeredPasses:v17];

  return v18;
}

- (id)transactionReceiptWithUniqueID:(id)d
{
  v3 = [TransactionReceipt anyInDatabase:self->_database withUniqueID:d];
  transactionReceipt = [v3 transactionReceipt];

  return transactionReceipt;
}

- (id)insertOrUpdateTransactionReceipt:(id)receipt
{
  v3 = [TransactionReceipt insertOrUpdateTransactionReceipt:receipt inDatabase:self->_database];
  transactionReceipt = [v3 transactionReceipt];

  return transactionReceipt;
}

- (void)deleteTransactionReceiptWithUniqueID:(id)d
{
  v3 = [TransactionReceipt anyInDatabase:self->_database withUniqueID:d];
  [v3 deleteFromDatabase];
}

- (unint64_t)numberOfTransactionReceipts
{
  database = self->_database;
  v3 = +[SQLiteBooleanPredicate truePredicate];
  v4 = [(SQLiteEntity *)TransactionReceipt queryWithDatabase:database predicate:v3];
  countOfEntities = [v4 countOfEntities];

  return countOfEntities;
}

- (void)removeMissingRemoteAssetsPersistentStoreItemWithUniqueID:(id)d
{
  dCopy = d;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016DE90;
  v7[3] = &unk_10083C2B8;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  sub_1005D4424(database, v7);
}

- (id)issuerInstallmentTransactionsForPassUniqueIdentifier:(id)identifier
{
  v4 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifier];
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

- (id)issuerInstallmentTransactionsForTransactionSourceIdentifiers:(id)identifiers paymentHashes:(id)hashes
{
  identifiersCopy = identifiers;
  hashesCopy = hashes;
  if ([identifiersCopy count])
  {
    v8 = [PaymentTransaction issuerInstallmentTransactionsInDatabase:self->_database transactionSourceIdentifiers:identifiersCopy transactionPaymentHashes:hashesCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteIssuerInstallmentTransactionsForPassUniqueID:(id)d
{
  v4 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:d];
  if ([v4 count])
  {
    [PaymentTransaction deleteIssuerInstallmentTransactionsInDatabase:self->_database transactionSourceIdentifiers:v4];
  }
}

- (id)selectedPaymentOfferAssociatedWithPassUniqueID:(id)d selectedPaymentOfferType:(unint64_t)type storageType:(unint64_t)storageType
{
  if (d)
  {
    v8 = [Pass anyInDatabase:self->_database withUniqueID:d];
    v9 = v8;
    if (v8)
    {
      v10 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:selectedPaymentOfferType:storageType:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:selectedPaymentOfferType:storageType:inDatabase:", [v8 persistentID], type, storageType, self->_database);
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

- (id)allSelectedPaymentOfferAssociatedWithPassUniqueID:(id)d
{
  if (d)
  {
    v4 = [Pass anyInDatabase:self->_database withUniqueID:d];
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

- (id)selectedPaymentOfferForPassUniqueID:(id)d offerIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  if (d)
  {
    v9 = [Pass anyInDatabase:self->_database withUniqueID:d];
    v10 = v9;
    if (v9)
    {
      v11 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:offerIdentifier:type:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:offerIdentifier:type:inDatabase:", [v9 persistentID], identifierCopy, type, self->_database);
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

- (id)selectedPaymentOfferForPassUniqueID:(id)d sessionIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  if (d)
  {
    v9 = [Pass anyInDatabase:self->_database withUniqueID:d];
    v10 = v9;
    if (v9)
    {
      v11 = +[SelectedPaymentOffer selectedPaymentOfferForPassPID:sessionIdentifier:type:inDatabase:](SelectedPaymentOffer, "selectedPaymentOfferForPassPID:sessionIdentifier:type:inDatabase:", [v9 persistentID], identifierCopy, type, self->_database);
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

- (BOOL)removeSelectedPaymentOffer:(id)offer associatedWithPassUniqueID:(id)d
{
  offerCopy = offer;
  if (offerCopy && d)
  {
    v7 = [Pass anyInDatabase:self->_database withUniqueID:d];
    v8 = v7;
    if (v7)
    {
      persistentID = [v7 persistentID];
      database = self->_database;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10016E3D0;
      v12[3] = &unk_100848FC0;
      v15 = persistentID;
      v13 = offerCopy;
      selfCopy = self;
      sub_1005D4424(database, v12);
    }
  }

  return 0;
}

- (id)insertOrUpdateSelectedPaymentOfferAssociatedWithPass:(id)pass selectedOffer:(id)offer
{
  passCopy = pass;
  offerCopy = offer;
  if (!passCopy)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v8 = [Pass anyInDatabase:self->_database withUniqueID:passCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (!offerCopy)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = passCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot insert a nil selected payment offer associated with pass %@", &v13, 0xCu);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = +[SelectedPaymentOffer insertOrUpdateSelectedPaymentOffer:associatedWithPassPID:inDatabase:](SelectedPaymentOffer, "insertOrUpdateSelectedPaymentOffer:associatedWithPassPID:inDatabase:", offerCopy, [v8 persistentID], self->_database);
LABEL_10:

LABEL_11:

  return v10;
}

- (id)cloudStoreZonesForContainerDatabaseWithName:(id)name scope:(int64_t)scope
{
  v4 = [CloudStoreContainerDatabase anyInDatabase:self->_database withContainerName:name scope:scope];
  cloudStoreZones = [v4 cloudStoreZones];

  return cloudStoreZones;
}

- (void)insertOrUpdateCloudStoreZone:(id)zone containerDatabase:(id)database
{
  zoneCopy = zone;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v12)
  {
    goto LABEL_6;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    zoneName = [zoneCopy zoneName];
    v17 = 138543618;
    v18 = zoneName;
    v19 = 2112;
    v20 = databaseCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot insert cloud store zone %{public}@ without a container database defined. Inserting one now. %@", &v17, 0x16u);
  }

  v14 = [(PDDatabaseManager *)self _insertContainerDatabaseForContainerDatabase:databaseCopy];
  if (v14)
  {
    v12 = v14;
LABEL_6:
    v15 = [CloudStoreZone insertOrUpdateCloudStoreZone:zoneCopy forContainerDatabase:v12 inDatabase:self->_database];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    zoneName2 = [zoneCopy zoneName];
    v17 = 138543618;
    v18 = zoneName2;
    v19 = 2112;
    v20 = databaseCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot insert cloud store zone %{public}@ without a container database defined %@", &v17, 0x16u);
  }

LABEL_7:
}

- (void)updateChangeToken:(id)token fetchTimestamp:(id)timestamp forCloudStoreZone:(id)zone inContainerDatabase:(id)database
{
  tokenCopy = token;
  timestampCopy = timestamp;
  zoneCopy = zone;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v18 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v18)
  {
    [CloudStoreZone updateChangeToken:tokenCopy fetchTimestamp:timestampCopy forCloudStoreZone:zoneCopy inContainerDatabase:v18 inDatabase:self->_database];
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [zoneCopy zoneName];
      v21 = 138543618;
      v22 = zoneName;
      v23 = 2112;
      v24 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot update change token and fetch timestamp for zone %{public}@ without a container database defined %@", &v21, 0x16u);
    }
  }
}

- (void)updateDidFinishInitialSync:(BOOL)sync forCloudStoreZone:(id)zone inContainerDatabase:(id)database
{
  syncCopy = sync;
  zoneCopy = zone;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v14 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v14)
  {
    [CloudStoreZone updateDidFinishInitialSync:syncCopy forCloudStoreZone:zoneCopy inContainerDatabase:v14 inDatabase:self->_database];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [zoneCopy zoneName];
      v17 = 138543618;
      v18 = zoneName;
      v19 = 2112;
      v20 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cannot update change token and fetch timestamp for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }
  }
}

- (id)tokenDataForCloudStore:(id)store containerDatabase:(id)database
{
  storeCopy = store;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v12)
  {
    v13 = [CloudStoreZone tokenDataForCloudStoreZone:storeCopy forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [storeCopy zoneName];
      v17 = 138543618;
      v18 = zoneName;
      v19 = 2112;
      v20 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get change token for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)didFinishInitialSyncForCloudStore:(id)store containerDatabase:(id)database
{
  storeCopy = store;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v12)
  {
    v13 = [CloudStoreZone didFinishInitialSyncForCloudStoreZone:storeCopy forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [storeCopy zoneName];
      v17 = 138543618;
      v18 = zoneName;
      v19 = 2112;
      v20 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get finish flag for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)fetchTimestampForCloudStore:(id)store containerDatabase:(id)database
{
  storeCopy = store;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v12)
  {
    v13 = [CloudStoreZone fetchTimestampForCloudStoreZone:storeCopy forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [storeCopy zoneName];
      v17 = 138543618;
      v18 = zoneName;
      v19 = 2112;
      v20 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot get change token for zone %{public}@ without a container database defined %@", &v17, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)removeCloudStoreZone:(id)zone containerDatabase:(id)database
{
  zoneCopy = zone;
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v12 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

  if (v12)
  {
    [CloudStoreZone removeCloudStoreZone:zoneCopy forContainerDatabase:v12 inDatabase:self->_database];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [zoneCopy zoneName];
      v15 = 138543618;
      v16 = zoneName;
      v17 = 2112;
      v18 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot remove cloud store zone %{public}@ without a container database defined %@", &v15, 0x16u);
    }
  }
}

- (id)identityPassCredentialPropertiesForIdentityPasses
{
  database = self->_database;
  v4 = [Pass predicateForPaymentCardType:4];
  v5 = [Pass passUniqueIDsInDatabase:database matchingPredicate:v4];
  allObjects = [v5 allObjects];

  v7 = self->_database;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v9 = [PaymentApplication identityPassCredentialPropertiesInDatabase:v7 forPassIDS:allObjects forSecureElementIdentifiers:secureElementIdentifiers];

  return v9;
}

- (id)identityPassCredentialPropertiesForPassUniqueIdentifier:(id)identifier
{
  database = self->_database;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  v6 = [NSArray arrayWithObjects:&identifierCopy count:1];
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v8 = [PaymentApplication identityPassCredentialPropertiesInDatabase:database forPassIDS:v6 forSecureElementIdentifiers:secureElementIdentifiers];

  return v8;
}

- (void)removeContainerDatabaseForContainerDatabase:(id)database
{
  databaseCopy = database;
  database = self->_database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  v9 = +[CloudStoreContainerDatabase anyInDatabase:withContainerName:scope:](CloudStoreContainerDatabase, "anyInDatabase:withContainerName:scope:", database, containerIdentifier, [databaseCopy scope]);

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
      v12 = databaseCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot remove cloud container database %@", &v11, 0xCu);
    }
  }
}

- (id)cloudStoreZonesForContainerDatabase:(id)database
{
  database = self->_database;
  databaseCopy = database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  scope = [databaseCopy scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:containerIdentifier scope:scope];

  if (v9)
  {
    cloudStoreZones = [v9 cloudStoreZones];
  }

  else
  {
    cloudStoreZones = 0;
  }

  return cloudStoreZones;
}

- (id)databaseSubscriptionForContainerDatabase:(id)database
{
  database = self->_database;
  databaseCopy = database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  scope = [databaseCopy scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:containerIdentifier scope:scope];

  if (v9)
  {
    databaseSubscription = [v9 databaseSubscription];
  }

  else
  {
    databaseSubscription = 0;
  }

  return databaseSubscription;
}

- (void)updateDatabaseSubscription:(id)subscription containerDatabase:(id)database
{
  subscriptionCopy = subscription;
  database = self->_database;
  databaseCopy = database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  scope = [databaseCopy scope];

  v12 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:containerIdentifier scope:scope];

  if (v12)
  {
    [v12 updateWithDatabaseSubscription:subscriptionCopy];
  }
}

- (BOOL)containerDatabaseExistsForContainerDatabase:(id)database
{
  database = self->_database;
  databaseCopy = database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  scope = [databaseCopy scope];

  v9 = [CloudStoreContainerDatabase anyInDatabase:database withContainerName:containerIdentifier scope:scope];

  return v9 != 0;
}

- (id)_insertContainerDatabaseForContainerDatabase:(id)database
{
  databaseCopy = database;
  database = [databaseCopy database];
  container = [database container];
  containerIdentifier = [container containerIdentifier];
  scope = [databaseCopy scope];

  v9 = [CloudStoreContainerDatabase insertOrUpdateCloudStoreDatabaseWithContainerName:containerIdentifier scope:scope inDatabase:self->_database];

  return v9;
}

- (BOOL)hasMatchingCloudStoreRecord:(id)record inCloudStoreZone:(id)zone
{
  v4 = 0;
  if (record && zone)
  {
    database = self->_database;
    recordCopy = record;
    v8 = [CloudStoreRecord anyInDatabase:database cloudStoreRecord:recordCopy cloudStoreZone:zone];
    pk_hash = [recordCopy pk_hash];

    v4 = pk_hash == [v8 hash];
  }

  return v4;
}

- (id)cloudStoreRecordWithRecordName:(id)name recordType:(id)type inCloudStoreZone:(id)zone
{
  v7 = 0;
  if (name && type && zone)
  {
    v7 = [CloudStoreRecord recordInDatabase:self->_database withRecordName:name recordType:type cloudStoreZone:?];
    v5 = vars8;
  }

  return v7;
}

- (void)insertOrUpdateCloudStoreRecords:(id)records inCloudStoreZone:(id)zone
{
  recordsCopy = records;
  zoneCopy = zone;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [recordsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(recordsCopy);
        }

        v12 = [CloudStoreRecord insertOrUpdateCloudStoreRecord:*(*(&v13 + 1) + 8 * v11) forCloudStoreZone:zoneCopy inDatabase:self->_database];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [recordsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)addCloudStoreContainerChangeEvent:(id)event
{
  if (event)
  {
    v3 = [CloudStoreContainerChangeEvent insertContainerChangeEvent:event inDatabase:self->_database];
  }
}

- (id)cloudStoreContainerChangeEventWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [CloudStoreContainerChangeEvent changeEventWithIdentifier:identifier inDatabase:self->_database];
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

- (void)updateRecordFetchTask:(id)task
{
  taskCopy = task;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = taskCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating cloud store record fetch task %@", &v7, 0xCu);
  }

  v6 = [CloudStoreRecordFetchTask insertOrUpdateRecordFetchTask:taskCopy inDatabase:self->_database];
}

- (void)removeRecordFetchTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = tasksCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing cloud store record fetch tasks %@", &v6, 0xCu);
  }

  [CloudStoreRecordFetchTask removeRecordFetchTasks:tasksCopy inDatabase:self->_database];
}

- (id)insertOrUpdatePushProvisioningSharingMetadata:(id)metadata
{
  v3 = [PushProvisioningSharingMetadata insertOrUpdateSharingMetadata:metadata inDatabase:self->_database];
  sharingMetaData = [v3 sharingMetaData];

  return sharingMetaData;
}

- (id)nextPossibleCloudStoreShareOperationForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle
{
  database = self->_database;
  handleCopy = handle;
  v10 = [CloudStoreZone anyInDatabase:database forCloudStoreZone:zone];
  v11 = [CloudStoreShareBackoff anyInDatabase:self->_database forBackoffType:type cloudStoreZone:v10 recipientHandle:handleCopy];

  if ([v11 existsInDatabase])
  {
    nextPossibleFetchDate = [v11 nextPossibleFetchDate];
  }

  else
  {
    nextPossibleFetchDate = 0;
  }

  return nextPossibleFetchDate;
}

- (void)increaseRetryCloudStoreShareOperationBackoffLevelForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle
{
  handleCopy = handle;
  v8 = [CloudStoreZone anyInDatabase:self->_database forCloudStoreZone:zone];
  v9 = [CloudStoreShareBackoff anyInDatabase:self->_database forBackoffType:type cloudStoreZone:v8 recipientHandle:handleCopy];
  if ([v9 existsInDatabase])
  {
    [v9 increaseBackoffLevel];
  }

  else
  {
    v10 = [CloudStoreShareBackoff insertIfNotExistsForBackoffType:type cloudStoreZone:v8 recipientHandle:handleCopy inDatabase:self->_database];
  }
}

- (void)deleteRetryCloudStoreShareOperationBackoffForBackoffType:(unint64_t)type cloudStoreZone:(id)zone recipientHandle:(id)handle
{
  handleCopy = handle;
  v8 = [CloudStoreZone anyInDatabase:self->_database forCloudStoreZone:zone];
  if ([v8 existsInDatabase])
  {
    [CloudStoreShareBackoff deleteEntriesForBackoffType:type cloudStoreZone:v8 recipientHandle:handleCopy inDatabase:self->_database];
  }
}

- (id)unregisteredAuxiliaryCapabilityRequirementsForPass:(id)pass
{
  database = self->_database;
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v7 = [Pass anyInDatabase:database withUniqueID:uniqueID];

  v8 = +[PassAuxiliaryRegistrationRequirement auxiliaryRegistrationRequirementStatusForPassPID:inDatabase:](PassAuxiliaryRegistrationRequirement, "auxiliaryRegistrationRequirementStatusForPassPID:inDatabase:", [v7 persistentID], self->_database);
  v9 = [v8 pk_indexDictionaryByApplyingBlock:&stru_100849000];
  auxiliaryRegistrationRequirements = [passCopy auxiliaryRegistrationRequirements];

  allRequirements = [auxiliaryRegistrationRequirements allRequirements];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001703F8;
  v17[3] = &unk_100849028;
  v18 = v9;
  v12 = v9;
  v13 = [allRequirements pk_objectsPassingTest:v17];
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

- (unint64_t)isAuxiliaryRegistrationRequirementRegistered:(id)registered pass:(id)pass
{
  database = self->_database;
  registeredCopy = registered;
  uniqueID = [pass uniqueID];
  v9 = [Pass anyInDatabase:database withUniqueID:uniqueID];

  v10 = +[PassAuxiliaryRegistrationRequirement auxiliaryRegistrationRequirementStatusForRequirement:passPID:inDatabase:](PassAuxiliaryRegistrationRequirement, "auxiliaryRegistrationRequirementStatusForRequirement:passPID:inDatabase:", registeredCopy, [v9 persistentID], self->_database);

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

- (BOOL)updateAuxiliaryRegistrationRequirement:(id)requirement pass:(id)pass isRegistered:(BOOL)registered
{
  registeredCopy = registered;
  database = self->_database;
  requirementCopy = requirement;
  uniqueID = [pass uniqueID];
  v11 = [Pass anyInDatabase:database withUniqueID:uniqueID];

  LOBYTE(registeredCopy) = +[PassAuxiliaryRegistrationRequirement updateAuxiliaryRegistrationRequirement:passPID:isRegistered:inDatabase:](PassAuxiliaryRegistrationRequirement, "updateAuxiliaryRegistrationRequirement:passPID:isRegistered:inDatabase:", requirementCopy, [v11 persistentID], registeredCopy, self->_database);
  return registeredCopy;
}

- (BOOL)updateAuxiliaryRegistrationRequirementsForPass:(id)pass isRegistered:(BOOL)registered
{
  registeredCopy = registered;
  database = self->_database;
  uniqueID = [pass uniqueID];
  v8 = [Pass anyInDatabase:database withUniqueID:uniqueID];

  LOBYTE(registeredCopy) = +[PassAuxiliaryRegistrationRequirement updateAuxiliaryRegistrationRequirementsForPassPID:isRegistered:inDatabase:](PassAuxiliaryRegistrationRequirement, "updateAuxiliaryRegistrationRequirementsForPassPID:isRegistered:inDatabase:", [v8 persistentID], registeredCopy, self->_database);
  return registeredCopy;
}

- (BOOL)insertBarcodeCredentials:(id)credentials forDPANIdentifier:(id)identifier
{
  credentialsCopy = credentials;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = credentialsCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(credentialsCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return credentialsCopy;
}

- (unint64_t)numberOfValidBarcodeCredentialsForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)numberOfBarcodeCredentialsDisplayedAfterDate:(id)date forDPANIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v14 = v9;
  v16 = &v17;
  v10 = dateCopy;
  v15 = v10;
  sub_1005D4424(database, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (id)firstValidBarcodeCredentialForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)lastUsedBarcodeIdentifierForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)removeAllBarcodeCredentialValuesForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)removeAllBarcodeCredentialsForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)updateDisplayTimestamp:(id)timestamp forBarcodeIdentifier:(id)identifier
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = timestampCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(timestampCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return timestampCopy;
}

- (BOOL)updatePaymentPINData:(id)data forTransactionIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = dataCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(dataCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dataCopy;
}

- (BOOL)updateTransactionSignatureData:(id)data forTransactionIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = dataCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(dataCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dataCopy;
}

- (BOOL)updateUserConfirmationData:(id)data forTransactionIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = dataCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(dataCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dataCopy;
}

- (BOOL)addProcessedAuthenticationMechanisms:(unint64_t)mechanisms forTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v11 = v8;
  v12 = &v14;
  mechanismsCopy = mechanisms;
  sub_1005D4424(database, v10);
  LOBYTE(mechanisms) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return mechanisms;
}

- (BOOL)addDataCollectedAuthenticationMechanisms:(unint64_t)mechanisms forTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v11 = v8;
  v12 = &v14;
  mechanismsCopy = mechanisms;
  sub_1005D4424(database, v10);
  LOBYTE(mechanisms) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return mechanisms;
}

- (BOOL)markAuthenticationCompleteforTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (BOOL)resetTransactionAuthenticationForTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  sub_1005D4424(database, v8);
  LOBYTE(database) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return database;
}

- (id)transactionAuthenticationResultForTransactionIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  transactionAuthenticationResult = [v3 transactionAuthenticationResult];

  return transactionAuthenticationResult;
}

- (int64_t)barcodeBackgroundFetchRetryLevelForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)updateNextBarcodeBackgroundFetchDate:(id)date withRetryLevel:(int64_t)level forPassUniqueIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
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
  v11 = identifierCopy;
  v15 = v11;
  v17 = &v19;
  v12 = dateCopy;
  v16 = v12;
  levelCopy = level;
  sub_1005D4424(database, v14);
  LOBYTE(level) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return level;
}

- (BOOL)hasBarcodeBackgroundFetchRecordForPassUniqueIdentifier:(id)identifier nextBackgroundFetchDate:(id *)date
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  sub_1005D4424(database, v11);
  if (date)
  {
    *date = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)passesWithNextBackgroundFetchDateBeforeDate:(id)date
{
  v4 = [BarcodeFetch passPIDsWithNextbackgroundFetchDateBeforeDate:date inDatabase:self->_database];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001724DC;
  v11 = &unk_1008490A0;
  selfCopy = self;
  v13 = objc_alloc_init(NSMutableArray);
  v5 = v13;
  [v4 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

- (id)evaluatedPolicyDomainStateForDPANIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  sub_1005D4424(database, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)insertOrUpdateEvaluatedPolicyDomainState:(id)state forDPANIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
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
  v9 = identifierCopy;
  v13 = v9;
  v15 = &v16;
  v10 = stateCopy;
  v14 = v10;
  sub_1005D4424(database, v12);
  LOBYTE(stateCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return stateCopy;
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

- (void)updateSpotlightIndexingVersion:(int64_t)version
{
  sub_10035E1C0(self->_database, @"DELETE FROM index_metadata");
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100172E20;
  v6[3] = &unk_100849110;
  v6[4] = version;
  sub_1005D44A8(database, @"INSERT INTO index_metadata (version) VALUES (?)", v6);
}

- (int64_t)indexingMetadataVersionForType:(unint64_t)type
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
  v6[5] = type;
  sub_1005D44A8(database, @"SELECT version FROM index_fetched_metadata WHERE type = ? LIMIT 1", v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)indexingMetadataStatusForType:(unint64_t)type
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
  v6[5] = type;
  sub_1005D44A8(database, @"SELECT status FROM index_fetched_metadata WHERE type = ? LIMIT 1", v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateIndexingMetadataStatus:(unint64_t)status version:(int64_t)version forType:(unint64_t)type
{
  database = self->_database;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001731A0;
  v6[3] = &unk_100849158;
  v6[4] = type;
  v6[5] = status;
  v6[6] = version;
  sub_1005D44A8(database, @"INSERT OR REPLACE INTO index_fetched_metadata (type, status, version) VALUES (?, ?, ?)", v6);
}

- (void)markAllIndexedContentForVerifyingOfType:(unint64_t)type
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001733E4;
  v4[3] = &unk_100849110;
  v4[4] = type;
  sub_1005D44A8(database, @"UPDATE index_item set status=?, last_modified_date=date('now'), last_error_domain=NULL, last_error_code=NULL, action_try_count=0 where status=? and type=?", v4);
}

- (void)markAllVerifyingContentForReindexingOfType:(unint64_t)type
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001734CC;
  v4[3] = &unk_100849110;
  v4[4] = type;
  sub_1005D44A8(database, @"UPDATE index_item set status=?, last_modified_date=date('now'), last_error_domain=NULL, last_error_code=NULL, action_try_count=0 where status=? and type=?", v4);
}

- (void)markAllIndexedContentForReindexingOfType:(unint64_t)type
{
  database = self->_database;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001735B4;
  v4[3] = &unk_100849110;
  v4[4] = type;
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

- (id)transactionSourceIdentifiersForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    database = self->_database;
    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v7 = [PaymentApplication paymentApplicationsInDatabase:database forPassUniqueIdentifier:identifierCopy secureElementIdentifiers:secureElementIdentifiers];

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

          transactionSourceIdentifier = [*(*(&v19 + 1) + 8 * i) transactionSourceIdentifier];
          if (transactionSourceIdentifier)
          {
            [v8 addObject:transactionSourceIdentifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [Pass anyInDatabase:self->_database withUniqueID:identifierCopy];
    transactionSourceIdentifier2 = [v15 transactionSourceIdentifier];
    [v8 pk_safelyAddObject:transactionSourceIdentifier2];
    v17 = [v8 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)allAssociatedTransactionSourceIdentifiersForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PDDatabaseManager *)self transactionSourceIdentifiersForPassUniqueIdentifier:identifierCopy];
  v6 = [v5 mutableCopy];

  v7 = [(PDDatabaseManager *)self associatedAccountIdentifierForPassWithUniqueIdentifier:identifierCopy];
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

          altDSID = [*(*(&v17 + 1) + 8 * i) altDSID];
          v14 = [(PDDatabaseManager *)self transactionSourceIdentifierForAccountUserAltDSID:altDSID accountIdentifier:v7];

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

- (id)transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:(id)identifier
{
  v17 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
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
        transactionSourceIdentifier = [*(*(&v18 + 1) + 8 * i) transactionSourceIdentifier];
        v13 = [TransactionSource anyInDatabase:database withIdentifier:transactionSourceIdentifier];

        identifier = [v13 identifier];
        [v5 addObject:identifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)passUniqueIdentifierForTransactionSourceIdentifier:(id)identifier includingAccountUsers:(BOOL)users
{
  usersCopy = users;
  identifierCopy = identifier;
  v7 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifierCopy];
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
  uniqueID = [v11 uniqueID];
  if (uniqueID)
  {
    v13 = 1;
  }

  else
  {
    v13 = !usersCopy;
  }

  if (!v13)
  {
    v14 = [PaymentTransaction anyInDatabase:self->_database withTransactionSourceIdentifier:identifierCopy];
    if ([v14 accountType] == 2 && (v15 = self->_database, objc_msgSend(v14, "transactionSourceIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), +[TransactionSource anyInDatabase:withIdentifier:](TransactionSource, "anyInDatabase:withIdentifier:", v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "type"), v17, v16, v18 == 2))
    {
      v19 = self->_database;
      accountIdentifier = [v14 accountIdentifier];
      v21 = [Pass anyInDatabase:v19 withAssociatedAccountIdentifier:accountIdentifier];

      uniqueID = [v21 uniqueID];
    }

    else
    {
      uniqueID = 0;
    }
  }

  return uniqueID;
}

- (id)paymentApplicationIdentifierForTransactionSourceIdentifier:(id)identifier
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  v5 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  applicationIdentifier = [v5 applicationIdentifier];

  return applicationIdentifier;
}

- (id)paymentApplicationForTransactionSourceIdentifier:(id)identifier
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  v5 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  paymentApplication = [v5 paymentApplication];

  return paymentApplication;
}

- (id)paymentTransactionWithIdentifier:(id)identifier
{
  v3 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  paymentTransaction = [v3 paymentTransaction];

  return paymentTransaction;
}

- (BOOL)transactionSourceExistsWithIdentifier:(id)identifier
{
  v3 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  existsInDatabase = [v3 existsInDatabase];

  return existsInDatabase;
}

- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier accountType:(int64_t)type
{
  v5 = [PaymentTransaction anyInDatabase:self->_database withServiceIdentifier:identifier accountIdentifier:accountIdentifier accountType:type];
  transactionSourceIdentifier = [v5 transactionSourceIdentifier];

  return transactionSourceIdentifier;
}

- (unint64_t)transactionSourceTypeForTransactionSourceIdentifier:(id)identifier
{
  v3 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  type = [v3 type];

  return type;
}

- (id)peerPaymentAccountForTransactionSourceIdentifier:(id)identifier
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  v5 = +[PeerPaymentAccount anyInDatabase:withTransactionSourcePID:](PeerPaymentAccount, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  peerPaymentAccount = [v5 peerPaymentAccount];

  return peerPaymentAccount;
}

- (id)accountUserWithTransactionSourceIdentifier:(id)identifier
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  v5 = +[AccountUser anyInDatabase:withTransactionSourcePID:](AccountUser, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  accountUser = [v5 accountUser];

  return accountUser;
}

- (id)transactionSourceIdentifierForAccountUserAltDSID:(id)d accountIdentifier:(id)identifier
{
  dCopy = d;
  v7 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  if ([v7 existsInDatabase])
  {
    v8 = +[AccountUser anyInDatabase:withAltDSID:accountPID:](AccountUser, "anyInDatabase:withAltDSID:accountPID:", self->_database, dCopy, [v7 persistentID]);
    transactionSourceIdentifier = [v8 transactionSourceIdentifier];
  }

  else
  {
    transactionSourceIdentifier = 0;
  }

  return transactionSourceIdentifier;
}

- (id)accountWithTransactionSourceIdentifier:(id)identifier
{
  v4 = [TransactionSource anyInDatabase:self->_database withIdentifier:identifier];
  v5 = +[Account anyInDatabase:withTransactionSourcePID:](Account, "anyInDatabase:withTransactionSourcePID:", self->_database, [v4 persistentID]);
  account = [v5 account];

  return account;
}

- (id)transactionSourceIdentifierForAccountIdentifier:(id)identifier
{
  v3 = [Account anyInDatabase:self->_database withIdentifier:identifier];
  transactionSourceIdentifier = [v3 transactionSourceIdentifier];

  return transactionSourceIdentifier;
}

- (id)transactionSourceIdentifierForPeerPaymentAccountIdentifier:(id)identifier
{
  v3 = [PeerPaymentAccount anyInDatabase:self->_database withIdentifier:identifier];
  transactionSourceIdentifier = [v3 transactionSourceIdentifier];

  return transactionSourceIdentifier;
}

- (id)serviceIdentifierForTransactionIdentifier:(id)identifier accountIdentifier:(id *)accountIdentifier accountType:(int64_t *)type
{
  v7 = [PaymentTransaction anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    if (accountIdentifier)
    {
      *accountIdentifier = [v7 accountIdentifier];
    }

    if (type)
    {
      *type = [v8 accountType];
    }

    serviceIdentifier = [v8 serviceIdentifier];
  }

  else
  {
    serviceIdentifier = 0;
  }

  return serviceIdentifier;
}

- (id)broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:(id)identifier transactionAccountIdentifier:(id *)accountIdentifier transactionAccountType:(int64_t *)type transactionAltDSID:(id *)d
{
  identifierCopy = identifier;
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
      v18 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:identifierCopy transactionSourceIdentifier:v17];
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
    transactionSourceIdentifier = v17;

    if (transactionSourceIdentifier)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:

    v19 = [(PDDatabaseManager *)self dbTransactionWithServiceIdentifier:identifierCopy transactionSourceIdentifier:0];
    if (!v19)
    {
LABEL_25:
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error: could not find the transactionSourceIdentifier for the card or peer payment transaction with service identifier %@", buf, 0xCu);
      }

      transactionSourceIdentifier = 0;
      goto LABEL_28;
    }
  }

  transactionSourceIdentifier = [v19 transactionSourceIdentifier];
LABEL_13:
  if (accountIdentifier)
  {
    accountIdentifier = [v19 accountIdentifier];
    if (accountIdentifier)
    {
      accountIdentifier = accountIdentifier;
      *accountIdentifier = accountIdentifier;
    }
  }

  if (type)
  {
    accountType = [v19 accountType];
    if (accountType)
    {
      *type = accountType;
    }
  }

  if (d)
  {
    dbAccountUser = [v19 dbAccountUser];
    altDSID = [dbAccountUser altDSID];

    if (altDSID)
    {
      v25 = altDSID;
      *d = altDSID;
    }
  }

  if (!transactionSourceIdentifier)
  {
    goto LABEL_25;
  }

LABEL_28:

  return transactionSourceIdentifier;
}

- (id)regionsForTransaction:(id)transaction localeIdentifier:(id)identifier
{
  database = self->_database;
  identifierCopy = identifier;
  identifier = [transaction identifier];
  v9 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];
  v10 = +[WorldRegion regionsForTransactionPID:localeIdentifier:inDatabase:](WorldRegion, "regionsForTransactionPID:localeIdentifier:inDatabase:", [v9 persistentID], identifierCopy, self->_database);

  return v10;
}

- (id)lastRegionErrorForTransaction:(id)transaction
{
  database = self->_database;
  identifier = [transaction identifier];
  v6 = [PaymentTransaction anyInDatabase:database withIdentifier:identifier];
  v7 = [WorldRegion lastRegionErrorForTransaction:v6 inDatabase:self->_database];

  return v7;
}

- (void)insertDynamicAssociatedDomains:(id)domains
{
  database = self->_database;
  domainsCopy = domains;
  [DynamicAssociatedDomain deleteAssociatedDomainsInDatabase:database];
  [DynamicAssociatedDomain insertAssociatedDomains:domainsCopy inDatabase:self->_database];
}

- (id)merchantForPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier
{
  database = self->_database;
  itemIdentifierCopy = itemIdentifier;
  v8 = [Pass anyInDatabase:database withUniqueID:identifier];
  v9 = +[PassAuxiliaryItemMerchant merchantForPassAuxiliaryItemIdentifier:passPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "merchantForPassAuxiliaryItemIdentifier:passPersistentID:inDatabase:", itemIdentifierCopy, [v8 persistentID], self->_database);

  return v9;
}

- (id)auxiliaryItemIdentifiersForPassUniqueIdentifier:(id)identifier
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  v5 = +[PassAuxiliaryItemMerchant itemIdentifiersForPassPersisentID:inDatabase:](PassAuxiliaryItemMerchant, "itemIdentifiersForPassPersisentID:inDatabase:", [v4 persistentID], self->_database);

  return v5;
}

- (void)insertMerchant:(id)merchant forPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier
{
  itemIdentifierCopy = itemIdentifier;
  database = self->_database;
  merchantCopy = merchant;
  v10 = [Pass anyInDatabase:database withUniqueID:identifier];
  mapsBrand = [merchantCopy mapsBrand];
  mapsMerchant = [merchantCopy mapsMerchant];

  if (mapsBrand)
  {
    v13 = [MapsBrand insertMapsBrand:mapsBrand inDatabase:self->_database];
    if (mapsMerchant)
    {
LABEL_3:
      v14 = [MapsMerchant insertMapsMerchant:mapsMerchant inDatabase:self->_database];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (mapsMerchant)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = +[PassAuxiliaryItemMerchant insertPassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:mapsBrandPersistentID:mapsMerchantPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "insertPassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:mapsBrandPersistentID:mapsMerchantPersistentID:inDatabase:", itemIdentifierCopy, [v10 persistentID], objc_msgSend(v13, "persistentID"), objc_msgSend(v14, "persistentID"), self->_database);
}

- (void)deleteMerchantForPassUniqueIdentifier:(id)identifier auxiliaryPassInformationItemIdentifier:(id)itemIdentifier
{
  database = self->_database;
  itemIdentifierCopy = itemIdentifier;
  v8 = [Pass anyInDatabase:database withUniqueID:identifier];
  +[PassAuxiliaryItemMerchant deletePassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:inDatabase:](PassAuxiliaryItemMerchant, "deletePassAuxiliaryItemMerchantForItemIdentifier:passPersistentID:inDatabase:", itemIdentifierCopy, [v8 persistentID], self->_database);
}

- (void)deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:(id)identifier
{
  v4 = [Pass anyInDatabase:self->_database withUniqueID:identifier];
  +[PassAuxiliaryItemMerchant deleteAllPassAuxiliaryItemMerchantsForPassPersisentID:inDatabase:](PassAuxiliaryItemMerchant, "deleteAllPassAuxiliaryItemMerchantsForPassPersisentID:inDatabase:", [v4 persistentID], self->_database);
}

- (id)fetchDeviceEnviromentForClient:(int64_t)client andCompareToCurrentEnvironment:(id)environment didChange:(BOOL *)change
{
  environmentCopy = environment;
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
  clientCopy = client;
  v13[4] = self;
  changeCopy = change;
  v10 = environmentCopy;
  v14 = v10;
  sub_1005D4424(database, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)updateNFCPayloadState:(unint64_t)state forPassUniqueIdentifier:(id)identifier didChange:(BOOL *)change
{
  identifierCopy = identifier;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100175204;
  v11[3] = &unk_10083F170;
  v11[4] = self;
  v12 = identifierCopy;
  stateCopy = state;
  changeCopy = change;
  v10 = identifierCopy;
  sub_1005D4424(database, v11);
}

- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)d
{
  dCopy = d;
  v5 = [(PDDatabaseManager *)self hasEligiblePaymentOfferCriteriaForPassUniqueID:dCopy criteriaType:1];
  LOBYTE(self) = [(PDDatabaseManager *)self hasEligiblePaymentOfferCriteriaForPassUniqueID:dCopy criteriaType:2];

  return (v5 | self) & 1;
}

- (BOOL)hasEligiblePaymentOfferCriteriaForPassUniqueID:(id)d criteriaType:(unint64_t)type
{
  v6 = [Pass anyInDatabase:self->_database withUniqueID:d];
  v7 = v6;
  if (v6)
  {
    serialNumber = [v6 serialNumber];
    passType = [v7 passType];
    passTypeID = [passType passTypeID];

    v11 = [PaymentOfferCatalog catalogPIDInDatabase:self->_database];
    if (type == 1)
    {
      v12 = off_1008377B8;
    }

    else
    {
      if (type != 2)
      {
        v13 = 0;
        goto LABEL_9;
      }

      v12 = off_1008377C0;
    }

    v13 = [(__objc2_class *)*v12 hasCriteriaForPassSerialNumber:serialNumber passTypeIdentifier:passTypeID catalogPID:v11 inDatabase:self->_database];
LABEL_9:

    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (unint64_t)paymentOfferCriteriaTypeForCriteriaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PaymentOfferInstallmentCriteria criteriaTypeForIdentifier:identifierCopy inDatabase:self->_database];
  if (!v5)
  {
    v5 = [PaymentOfferRewardsCriteria criteriaTypeForIdentifier:identifierCopy inDatabase:self->_database];
  }

  return v5;
}

- (id)insertOrUpdatePaymentOfferEndpointMetadata:(id)metadata
{
  if (metadata)
  {
    v3 = [PaymentOfferEndpointMetadata insertOrUpdateWithEndpointMetadata:metadata inDatabase:self->_database];
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

- (id)deletePaymentOfferEndpointMetadataForPassUniqueID:(id)d type:(unint64_t)type
{
  v4 = [PaymentOfferEndpointMetadata deleteEndpointMetadataForPassUniqueID:d type:type inDatabase:self->_database];
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

- (id)anyEligiblePaymentOfferRewardsCriteriaForPass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];

  v7 = [PaymentOfferRewardsCriteria anyEligiblePaymentOfferRewardsCriteriaInDatabase:self->_database withPassTypeIdentifier:passTypeIdentifier passSerialNumber:serialNumber];

  return v7;
}

- (id)insertOrUpdatePaymentOfferConfirmationRecord:(id)record
{
  database = self->_database;
  recordCopy = record;
  [PaymentOfferConfirmationRecord insertOrUpdateRecord:recordCopy inDatabase:database];
  paymentHash = [recordCopy paymentHash];

  v7 = [(PDDatabaseManager *)self paymentOfferConfirmationRecordWithPaymentHash:paymentHash];

  return v7;
}

- (id)accessUserActivitySignalsForCollectionInterval:(id)interval
{
  intervalCopy = interval;
  if ([(PDDatabaseManager *)self hasSecureElementPassesOfType:3])
  {
    v5 = [UserActivitySignals populateAccessUserActivitySignalsWithPassTransactionActivitySummariesWithDatabase:self->_database databaseManager:self collectionInterval:intervalCopy];
    v6 = [[PDUserActivitySignals alloc] initWithAccessInformation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userActivitySignalsForCollectionInterval:(id)interval
{
  intervalCopy = interval;
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
  v12 = intervalCopy;
  v61 = v12;
  selfCopy = self;
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
      peerPaymentPassUniqueID = [v30 peerPaymentPassUniqueID];

      v32 = [(PDDatabaseManager *)self passWithUniqueIdentifier:peerPaymentPassUniqueID];
      secureElementPass = [v32 secureElementPass];
      devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];
      v35 = devicePrimaryPaymentApplication == 0;

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
    _transitPredicate = [(PDDatabaseManager *)self _transitPredicate];
    v40 = [Pass passUniqueIDsInDatabase:v38 matchingPredicate:_transitPredicate];

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
          defaultPaymentApplication = [v48 defaultPaymentApplication];
          [defaultPaymentApplication paymentNetworkIdentifier];
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

- (id)flightForPassWithUniqueID:(id)d
{
  v4 = [PassAssociatedFlight anyInDatabase:self->_database forPassUniqueID:d];
  v5 = +[Flight anyInDatabase:withPID:](Flight, "anyInDatabase:withPID:", self->_database, [v4 flightPID]);
  flight = [v5 flight];

  return flight;
}

- (id)flightsWithOperatorAirlineCode:(id)code operatorFlightNumber:(unint64_t)number originalDepartureDate:(id)date
{
  v6 = [Flight predicateForOperatorAirlineCode:code operatorFlightNumber:number originalDepartureDate:date];
  v7 = [(SQLiteEntity *)Flight queryWithDatabase:self->_database predicate:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100176408;
  v14 = &unk_10083ED50;
  v8 = objc_alloc_init(NSMutableArray);
  v15 = v8;
  selfCopy = self;
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

- (id)flightWithIdentifier:(id)identifier
{
  v3 = [Flight anyInDatabase:self->_database withIdentifier:identifier];
  flight = [v3 flight];

  return flight;
}

- (id)updateFlightWithIdentifier:(id)identifier usingUpdateContent:(id)content
{
  contentCopy = content;
  v7 = [Flight anyInDatabase:self->_database withIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [v7 updateWithContent:contentCopy];
    flight = [v8 flight];
  }

  else
  {
    flight = 0;
  }

  return flight;
}

- (void)deleteFlightWithIdentifier:(id)identifier
{
  database = self->_database;
  identifierCopy = identifier;
  v5 = [Flight anyInDatabase:database withIdentifier:identifierCopy];
  [v5 deleteFromDatabase];

  [(PDDatabaseManager *)self deleteSharesForFlightWithIdentifier:identifierCopy senderAddress:0];
}

- (id)passUniqueIDsForFlightIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableSet);
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100176720;
  v11[3] = &unk_100841740;
  v12 = identifiersCopy;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  v8 = identifiersCopy;
  sub_1005D4424(database, v11);
  if ([v7 count])
  {
    allObjects = [v7 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (BOOL)passesExistForFlightWithIdentifier:(id)identifier
{
  v4 = [PassAssociatedFlight predicateForFlightIdentifier:identifier];
  v9[0] = v4;
  v5 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  LOBYTE(self) = [(SQLiteEntity *)PassAssociatedFlight existsInDatabase:self->_database predicate:v7];
  return self;
}

- (BOOL)hasAnySharesForFlightWithIdentifier:(id)identifier
{
  database = self->_database;
  v4 = [ShareAssociatedFlight predicateForFlightIdentifier:identifier];
  v5 = [(SQLiteEntity *)ShareAssociatedFlight existsInDatabase:database predicate:v4];

  return v5;
}

- (void)deleteSharesForFlightWithIdentifier:(id)identifier senderAddress:(id)address
{
  addressCopy = address;
  [ShareAssociatedFlight predicateForFlightIdentifier:identifier];
  if (addressCopy)
    v7 = {;
    v13[0] = v7;
    v8 = [ShareAssociatedFlight predicateForSenderAddress:addressCopy];
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

- (id)insertOrUpdateFlight:(id)flight senderAddress:(id)address
{
  addressCopy = address;
  v7 = [Flight insertOrUpdateFlight:flight inDatabase:self->_database];
  if (addressCopy)
  {
    [ShareAssociatedFlight insertOrUpdateFlight:v7 senderAddress:addressCopy inDatabase:self->_database];
  }

  flight = [v7 flight];

  return flight;
}

- (id)insertOrUpdateFlight:(id)flight forPassUniqueID:(id)d
{
  flightCopy = flight;
  v7 = [NSSet setWithObject:d];
  v8 = [(PDDatabaseManager *)self insertOrUpdateFlight:flightCopy forPassUniqueIDs:v7 senderAddresses:0];

  return v8;
}

- (id)insertOrUpdateFlight:(id)flight forPassUniqueIDs:(id)ds senderAddresses:(id)addresses
{
  flightCopy = flight;
  dsCopy = ds;
  addressesCopy = addresses;
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
  v12 = flightCopy;
  v18 = v12;
  selfCopy = self;
  v13 = dsCopy;
  v20 = v13;
  v14 = addressesCopy;
  v21 = v14;
  sub_1005D4424(database, v17);
  flight = [v24[5] flight];

  _Block_object_dispose(&v23, 8);

  return flight;
}

- (void)deleteAssociatedFlightForPassUniqueID:(id)d
{
  v3 = [PassAssociatedFlight anyInDatabase:self->_database forPassUniqueID:d];
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

- (BOOL)flightExistsForPassWithUniqueID:(id)d
{
  v4 = [PassAssociatedFlight predicateForPassUniqueID:d];
  v9[0] = v4;
  v5 = [SQLiteHasAssociatedEntityPredicate predicateWithAssociatedEntityClass:objc_opt_class()];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  LOBYTE(self) = [(SQLiteEntity *)PassAssociatedFlight existsInDatabase:self->_database predicate:v7];
  return self;
}

- (id)subscriptionForFlightWithIdentifier:(id)identifier
{
  v4 = [FlightSubscription predicateForFlightIdentifier:identifier];
  v5 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v4];
  subscription = [v5 subscription];

  return subscription;
}

- (id)insertOrUpdateFlightSubscription:(id)subscription
{
  database = self->_database;
  subscriptionCopy = subscription;
  flightIdentifier = [subscriptionCopy flightIdentifier];
  v7 = [Flight anyInDatabase:database withIdentifier:flightIdentifier];

  v8 = [FlightSubscription insertOrUpdateSubscription:subscriptionCopy forFlight:v7 inDatabase:self->_database];

  subscription = [v8 subscription];

  return subscription;
}

- (BOOL)hasActiveFlightSubscriptions
{
  database = self->_database;
  v3 = [FlightSubscription predicateForIsActive:1];
  v4 = [(SQLiteEntity *)FlightSubscription existsInDatabase:database predicate:v3];

  return v4;
}

- (void)deleteSubscriptionForFlightWithIdentifier:(id)identifier
{
  v5 = [FlightSubscription predicateForFlightIdentifier:identifier];
  v4 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v5];
  [v4 deleteFromDatabase];
}

- (void)deleteFlightSubscriptionWithChannelIdentifier:(id)identifier
{
  v5 = [FlightSubscription predicateForChannelIdentifier:identifier];
  v4 = [(SQLiteEntity *)FlightSubscription anyInDatabase:self->_database predicate:v5];
  [v4 deleteFromDatabase];
}

- (id)rateLimitTokensForBundleIdentifier:(id)identifier operation:(int64_t)operation
{
  v4 = [RateLimitTokens tokensForBundleIdentifier:identifier operation:operation inDatabase:self->_database];
  tokens = [v4 tokens];

  return tokens;
}

- (id)insertOrUpdateRateLimitTokens:(id)tokens
{
  v3 = [RateLimitTokens insertOrUpdateTokens:tokens inDatabase:self->_database];
  tokens = [v3 tokens];

  return tokens;
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

- (void)fieldMetadataForFieldWithProperties:(id)properties withExpressPassManager:(id)manager completion:(id)completion
{
  propertiesCopy = properties;
  managerCopy = manager;
  completionCopy = completion;
  v125 = propertiesCopy;
  if (completionCopy)
  {
    v121 = completionCopy;
    terminalType = [propertiesCopy terminalType];
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
    v120 = [(PDDatabaseManager *)self shouldIgnoreFieldWithProperties:propertiesCopy];
    if (terminalType == 4)
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
              uniqueID = [v15 uniqueID];
              [v16 addObject:uniqueID];
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
      readerIdentifier = v19;
      v165 = readerIdentifier;
      v166 = &v201;
      [v20 sortUsingComparator:v163];

      v11 = v164;
      goto LABEL_151;
    }

    if (terminalType == 3)
    {
      tCIs = [propertiesCopy TCIs];
      context = [tCIs firstObject];

      readerIdentifier = [propertiesCopy readerIdentifier];
      v11 = objc_alloc_init(NSMutableArray);
      if (v120)
      {
        obj = 0;
      }

      else
      {
        credentialIdentifier = [propertiesCopy credentialIdentifier];
        applicationIdentifier = [propertiesCopy applicationIdentifier];
        v114 = v11;
        *(v194 + 24) = readerIdentifier != 0;
        v50 = objc_autoreleasePoolPush();
        if (context)
        {
          [(PDDatabaseManager *)self contactlessAccessPaymentPassesWithTCI:context readerId:readerIdentifier];
        }

        else
        {
          [(PDDatabaseManager *)self passesForPaymentType:1001];
        }

        v76 = v51 = v11;
        objc_autoreleasePoolPop(v50);
        fieldType = [v125 fieldType];
        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
        obj = v76;
        v78 = [obj countByEnumeratingWithState:&v189 objects:v219 count:16];
        if (v78)
        {
          v79 = *v190;
          v113 = fieldType != 1;
          v80 = fieldType != 1 && applicationIdentifier == 0;
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
              deviceContactlessPaymentApplications = [v82 deviceContactlessPaymentApplications];
              v84 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v185 objects:v218 count:16];
              v85 = v113;
              v86 = applicationIdentifier == 0;
              if (v84)
              {
                v129 = deviceContactlessPaymentApplications;
                v131 = *v186;
                v85 = v113;
                v86 = applicationIdentifier == 0;
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
                      applicationIdentifier2 = [v88 applicationIdentifier];
                      v86 = [applicationIdentifier2 isEqualToString:applicationIdentifier];

                      v88 = v136;
                      if ((v86 & (credentialIdentifier != 0)) == 1)
                      {
                        v183 = 0u;
                        v184 = 0u;
                        v181 = 0u;
                        v182 = 0u;
                        subcredentials = [v136 subcredentials];
                        v86 = 0;
                        v91 = [subcredentials countByEnumeratingWithState:&v181 objects:v217 count:16];
                        if (v91)
                        {
                          v92 = *v182;
                          do
                          {
                            for (k = 0; k != v91; k = k + 1)
                            {
                              if (*v182 != v92)
                              {
                                objc_enumerationMutation(subcredentials);
                              }

                              identifier = [*(*(&v181 + 1) + 8 * k) identifier];
                              v95 = [identifier isEqualToString:credentialIdentifier];

                              v86 |= v95;
                            }

                            v91 = [subcredentials countByEnumeratingWithState:&v181 objects:v217 count:16];
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
                      automaticSelectionCriteria = [v88 automaticSelectionCriteria];
                      v85 = 0;
                      v97 = [automaticSelectionCriteria countByEnumeratingWithState:&v177 objects:v216 count:16];
                      if (v97)
                      {
                        v98 = *v178;
                        do
                        {
                          for (m = 0; m != v97; m = m + 1)
                          {
                            if (*v178 != v98)
                            {
                              objc_enumerationMutation(automaticSelectionCriteria);
                            }

                            v85 |= [*(*(&v177 + 1) + 8 * m) technologyType] == 2;
                          }

                          v97 = [automaticSelectionCriteria countByEnumeratingWithState:&v177 objects:v216 count:16];
                        }

                        while (v97);
                      }
                    }
                  }

                  deviceContactlessPaymentApplications = v129;
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
        v172 = managerCopy;
        selfCopy = self;
        v176 = &v201;
        v104 = v11;
        v174 = v104;
        readerIdentifier = readerIdentifier;
        v175 = readerIdentifier;
        [v123 addOperation:v171];

        v11 = v104;
      }

LABEL_151:

      v70 = context;
      goto LABEL_152;
    }

    if (([propertiesCopy technology] & 8) != 0)
    {
      terminalType2 = [propertiesCopy terminalType];
      v43 = terminalType2;
      v45 = terminalType2 != 5 && terminalType2 != 0;
      v130 = v45;
      v46 = objc_autoreleasePoolPush();
      merchantIdentifiers = [v125 merchantIdentifiers];
      obj = [(PDDatabaseManager *)self passesWithPassTypeIdentifierHashes:merchantIdentifiers automaticSelectionOnly:1];

      objc_autoreleasePoolPop(v46);
      valueAddedServiceMode = [v125 valueAddedServiceMode];
      if (valueAddedServiceMode >= 2)
      {
        if (valueAddedServiceMode == 2 || valueAddedServiceMode == 4 && [obj count])
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
        pk_mutableArrayCopy = [v22 pk_mutableArrayCopy];
        v24 = [pk_mutableArrayCopy count];
        if (!v24)
        {

          pk_mutableArrayCopy = 0;
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
        if (terminalType == 2)
        {
          contexta = objc_autoreleasePoolPush();
          tCIs2 = [v125 TCIs];
          firstObject = [tCIs2 firstObject];
          v128 = v27;
          v29 = pk_mutableArrayCopy;
          v30 = firstObject;
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
                deviceContactlessPaymentApplications2 = [v34 deviceContactlessPaymentApplications];
                v36 = [deviceContactlessPaymentApplications2 countByEnumeratingWithState:&v207 objects:v220 count:16];
                if (v36)
                {
                  v37 = *v208;
                  while (2)
                  {
                    v38 = pk_mutableArrayCopy;
                    for (n = 0; n != v36; n = n + 1)
                    {
                      if (*v208 != v37)
                      {
                        objc_enumerationMutation(deviceContactlessPaymentApplications2);
                      }

                      if ([*(*(&v207 + 1) + 8 * n) supportsAutomaticSelectionForTCI:v31])
                      {

                        pk_mutableArrayCopy = v38;
                        uniqueID2 = [v34 uniqueID];
                        [v128 addObject:uniqueID2];

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

                    v36 = [deviceContactlessPaymentApplications2 countByEnumeratingWithState:&v207 objects:v220 count:16];
                    pk_mutableArrayCopy = v38;
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
        merchantIdentifiers2 = [v125 merchantIdentifiers];
        if ([merchantIdentifiers2 count])
        {
          v54 = [(PDDatabaseManager *)self paymentPassesWithAssociatedPassTypeIdentifierHashes:merchantIdentifiers2 automaticSelectionOnly:1];
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

                  uniqueID3 = [*(*(&v159 + 1) + 8 * ii) uniqueID];
                  [v27 addObject:uniqueID3];
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
        v60 = pk_mutableArrayCopy;
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
                uniqueID4 = [v64 uniqueID];
                [v27 addObject:uniqueID4];
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

          completionCopy = v121;
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
              uniqueID5 = [*(*(&v147 + 1) + 8 * mm) uniqueID];
              [v74 addObject:uniqueID5];
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

- (BOOL)shouldIgnoreFieldWithProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy backgroundTransaction])
  {
    goto LABEL_2;
  }

  if (([propertiesCopy technology] & 8) == 0 || (v5 = objc_msgSend(propertiesCopy, "terminalType"), v5 > 5) || ((1 << v5) & 0x16) != 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  if (((1 << v5) & 0x21) == 0)
  {
    if ([propertiesCopy accessTerminalSubtype] == 2)
    {
      credentialIdentifier = [propertiesCopy credentialIdentifier];
      v4 = credentialIdentifier == 0;

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_2:
  v4 = 1;
LABEL_7:

  return v4;
}

- (id)_readerIDPriorityForPasses:(id)passes readerID:(id)d
{
  passesCopy = passes;
  dCopy = d;
  if (dCopy)
  {
    v28 = objc_alloc_init(NSMutableDictionary);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = passesCopy;
    v33 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (!v33)
    {
      goto LABEL_39;
    }

    v30 = *v55;
    v31 = passesCopy;
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
        deviceContactlessPaymentApplications = [v8 deviceContactlessPaymentApplications];
        v37 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (!v37)
        {
          goto LABEL_36;
        }

        v32 = v8;
        v35 = deviceContactlessPaymentApplications;
        v36 = *v51;
        priority = -1;
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
            automaticSelectionCriteria = [v12 automaticSelectionCriteria];
            v41 = [automaticSelectionCriteria countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v41)
            {
              v40 = *v47;
              while (2)
              {
                for (i = 0; i != v41; i = i + 1)
                {
                  if (*v47 != v40)
                  {
                    objc_enumerationMutation(automaticSelectionCriteria);
                  }

                  v14 = *(*(&v46 + 1) + 8 * i);
                  readerIDs = [v14 readerIDs];
                  v16 = [readerIDs containsObject:dCopy];

                  if (v16)
                  {
                    priority = 0;
                    goto LABEL_32;
                  }

                  v44 = 0u;
                  v45 = 0u;
                  v42 = 0u;
                  v43 = 0u;
                  associatedReaderIDs = [v14 associatedReaderIDs];
                  v18 = [associatedReaderIDs countByEnumeratingWithState:&v42 objects:v58 count:16];
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
                          objc_enumerationMutation(associatedReaderIDs);
                        }

                        v22 = *(*(&v42 + 1) + 8 * j);
                        readerID = [v22 readerID];
                        v24 = PKEqualObjects();

                        if (v24 && [v22 priority] < priority)
                        {
                          priority = [v22 priority];
                        }
                      }

                      v19 = [associatedReaderIDs countByEnumeratingWithState:&v42 objects:v58 count:16];
                    }

                    while (v19);
                  }
                }

                v41 = [automaticSelectionCriteria countByEnumeratingWithState:&v46 objects:v59 count:16];
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

        if (priority != -1)
        {
          deviceContactlessPaymentApplications = [NSNumber numberWithUnsignedInteger:priority];
          uniqueID = [v32 uniqueID];
          [v28 setObject:deviceContactlessPaymentApplications forKeyedSubscript:uniqueID];

LABEL_36:
        }

        v7 = v34 + 1;
        passesCopy = v31;
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