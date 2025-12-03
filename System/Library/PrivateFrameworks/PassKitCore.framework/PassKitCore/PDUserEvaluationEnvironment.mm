@interface PDUserEvaluationEnvironment
+ (BOOL)isTransactionRelevant:(id)relevant;
+ (id)availableKeysAndOperators;
- (BOOL)_hasDefaultCreditAccountTransactionOfTransactionSourceType:(unint64_t)type;
- (BOOL)_hasPaymentOfferCriteriaOfType:(unint64_t)type;
- (BOOL)_hasSavingsAccountAccountTransactionOfTransactionType:(int64_t)type fundingSourceTypes:(id)types;
- (BOOL)anyCreditAccountStateIsClosed;
- (BOOL)anyCreditAccountStateIsRemoved;
- (BOOL)defaultCreditAccountHasActiveInstallment;
- (BOOL)defaultCreditAccountHasAutopaySetup;
- (BOOL)defaultCreditAccountHasDynamicSecurityCode;
- (BOOL)defaultCreditAccountHasInAppTransaction;
- (BOOL)defaultCreditAccountHasInStoreTransaction;
- (BOOL)defaultCreditAccountHasMapsBrandIdentifier:(id)identifier;
- (BOOL)defaultCreditAccountHasMapsBrandIdentifierLast30Days:(id)days;
- (BOOL)defaultCreditAccountHasMapsIdentifier:(id)identifier;
- (BOOL)defaultCreditAccountHasMapsIdentifierLast30Days:(id)days;
- (BOOL)defaultCreditAccountHasMerchantIdentifier30Days:(id)days;
- (BOOL)defaultCreditAccountHasMerchantIdentifier:(id)identifier;
- (BOOL)defaultCreditAccountHasPhysicalCard;
- (BOOL)defaultCreditAccountHasPhysicalCardTransaction;
- (BOOL)defaultCreditAccountHasUnderageParticipant;
- (BOOL)defaultCreditAccountHasUsedInstallments;
- (BOOL)defaultCreditAccountHasVirtualCard;
- (BOOL)defaultCreditAccountHasVirtualCardTransaction;
- (BOOL)defaultCreditAccountHasWebTransaction;
- (BOOL)defaultCreditAccountInDisasterRecovery;
- (BOOL)defaultCreditAccountInGrace;
- (BOOL)defaultCreditAccountPassIsDefault;
- (BOOL)defaultCreditAccountRequiresDebtCollectionNotices;
- (BOOL)defaultCreditAccountSupportsShowNotifications;
- (BOOL)familyCircleFamilyOrganizer;
- (BOOL)familyCircleHasFamily;
- (BOOL)familyCircleParent;
- (BOOL)hasActivePromotionIdentifier:(id)identifier;
- (BOOL)hasActivePromotionIdentifierExpiringSoon:(id)soon;
- (BOOL)hasAnyConnectedCardWithBankConnect;
- (BOOL)hasAppleAccountCardProvisioned;
- (BOOL)hasApplePayTransaction;
- (BOOL)hasBankConnectEligibleCard;
- (BOOL)hasCreditCard;
- (BOOL)hasDebitCard;
- (BOOL)hasInstalledApp:(id)app;
- (BOOL)hasMapsBrandIdentifier:(id)identifier;
- (BOOL)hasMapsIdentifier:(id)identifier;
- (BOOL)hasMerchantIdentifier:(id)identifier;
- (BOOL)hasPairedWatch;
- (BOOL)hasPaymentCard;
- (BOOL)hasPaymentTransaction;
- (BOOL)hasPeerPaymentPassProvisioned;
- (BOOL)hasSecureElementPass;
- (BOOL)hasTransactionOfTransactionSourceType:(id)type;
- (BOOL)hasTransitTransaction;
- (BOOL)isApplePayActive;
- (BOOL)isApplePaySetupAvailable;
- (BOOL)isDeviceRegisteredWithBroker;
- (BOOL)peerPaymentAccountHasBalance;
- (BOOL)peerPaymentAccountHasContactlessTransaction;
- (BOOL)peerPaymentAccountHasSentMoneyToAnyParticipant;
- (BOOL)peerPaymentAccountHasTransaction;
- (BOOL)peerPaymentHasAutoReloadEnabled;
- (BOOL)peerPaymentHasOnlinePurchaseTransaction;
- (BOOL)peerPaymentHasP2PTransaction;
- (BOOL)peerPaymentHasReceivedDeviceTapTransactions;
- (BOOL)peerPaymentHasReceivedP2PPayment;
- (BOOL)peerPaymentHasSentDeviceTapTransaction;
- (BOOL)peerPaymentHasSentP2PPayment;
- (BOOL)peerPaymentHasSetupRecurringP2PPayment;
- (BOOL)peerPaymentHasSetupRecurringP2PPaymentForAnyParticipant;
- (BOOL)savingsAccountHasCashTransferIn;
- (BOOL)savingsAccountHasExternalTransferIn;
- (BOOL)savingsAccountHasExternalTransferOut;
- (NSArray)appleAccountCardActivePromotionIdentifiers;
- (NSDecimalNumber)defaultCreditAccountAvailableCredit;
- (NSDecimalNumber)defaultCreditAccountLifetimeRewards;
- (NSDecimalNumber)savingsAccountAPY;
- (NSSet)discoveryCTAsCompleted;
- (NSSet)discoveryCTAsTapped;
- (NSSet)discoveryItemsDismissed;
- (NSSet)discoveryItemsExpanded;
- (NSSet)discoveryItemsWithActionedStatus;
- (NSSet)discoveryItemsWithActiveStatus;
- (NSSet)discoveryItemsWithDismissedStatus;
- (NSSet)discoveryItemsWithWaitingForTriggerStatus;
- (NSSet)enrolledAuthenticationMechanisms;
- (NSSet)passStyles;
- (NSSet)secureElementCardTypes;
- (NSSet)transitNetworksPresent;
- (NSSet)transitNetworksPresentAndUnexpired;
- (NSSet)unexpiredPassStyles;
- (NSSet)unexpiredSecureElementCardTypes;
- (NSString)currentDefaultCreditApplicationState;
- (NSString)defaultCreditAccountPhysicalAppleCardStatus;
- (NSString)defaultCreditAccountRewardsDestination;
- (PDUserEvaluationEnvironment)initWithAccountManager:(id)manager applyManager:(id)applyManager databaseManager:(id)databaseManager peerPaymentWebServiceCoordinator:(id)coordinator paymentWebServiceCoordinator:(id)serviceCoordinator transitNotificationService:(id)service familyCircleManager:(id)circleManager expressPassManager:(id)self0 discoveryManager:(id)self1;
- (id)_accountUsersForAccountIdentifier:(id)identifier accessLevel:(unint64_t)level;
- (id)_creditAccountPhysicalCardsForAccountIdentifier:(id)identifier;
- (id)_creditAccountUsersForAccountIdentifier:(id)identifier;
- (id)_creditAccountWithIdentifier:(id)identifier;
- (id)_defaultCreditAccountAccountStatement;
- (id)_defaultCreditAccountAccountSummary;
- (id)_defaultCreditAccountCreditAccountDetails;
- (id)_defaultCreditAccountSupportedDestinations;
- (id)_familyMemberWithAltDSID:(id)d;
- (id)_unactivatedPhysicalCardForAltDSID:(id)d;
- (id)debugDescription;
- (id)discoveryItemStatus;
- (id)enumeratorOfDefaultCreditAccountActivePromotionIdentifiers;
- (id)enumeratorOfDefaultCreditAccountActivePromotionIdentifiersExpiringSoon;
- (id)enumeratorOfDefaultCreditAccountMapsBrandIdentifiers;
- (id)enumeratorOfDefaultCreditAccountMapsBrandIdentifiersLast30Days;
- (id)enumeratorOfDefaultCreditAccountMapsIdentifiers;
- (id)enumeratorOfDefaultCreditAccountMapsIdentifiersLast30Days;
- (id)enumeratorOfDefaultCreditAccountMerchantIdentifiers;
- (id)enumeratorOfDefaultCreditAccountMerchantIdentifiersLast30Days;
- (id)enumeratorOfInstalledApps;
- (id)enumeratorOfMapsBrandIdentifiers;
- (id)enumeratorOfMapsIdentifiers;
- (id)enumeratorOfMerchantIdentifiers;
- (id)hasUserPreferencesEnabledByIdentifier;
- (id)issuerMessagingFlagsForDefaultAccountType:(id)type;
- (id)memberOfDefaultCreditAccountActivePromotionIdentifiers:(id)identifiers;
- (id)memberOfDefaultCreditAccountActivePromotionIdentifiersExpiringSoon:(id)soon;
- (id)memberOfDefaultCreditAccountMapsBrandIdentifiers:(id)identifiers;
- (id)memberOfDefaultCreditAccountMapsBrandIdentifiersLast30Days:(id)days;
- (id)memberOfDefaultCreditAccountMapsIdentifiers:(id)identifiers;
- (id)memberOfDefaultCreditAccountMapsIdentifiersLast30Days:(id)days;
- (id)memberOfDefaultCreditAccountMerchantIdentifiers:(id)identifiers;
- (id)memberOfDefaultCreditAccountMerchantIdentifiersLast30Days:(id)days;
- (id)memberOfInstalledApps:(id)apps;
- (id)memberOfMapsBrandIdentifiers:(id)identifiers;
- (id)memberOfMapsIdentifiers:(id)identifiers;
- (id)memberOfMerchantIdentifiers:(id)identifiers;
- (int64_t)appleAccountCardDaysSinceTopUpOfType:(id)type;
- (int64_t)currentDefaultCreditApplictionDaysSinceLastUpdated;
- (int64_t)daysSinceAppleAccountInStoreTopUp;
- (int64_t)daysSinceLastDeviceTapSendTransaction;
- (int64_t)daysSinceLastPeerPaymentTransaction;
- (int64_t)daysSinceLastTransaction;
- (int64_t)daysSinceOldestCardInPendingVerification;
- (int64_t)daysSinceOldestCreditCardIngestDate;
- (int64_t)daysSinceOldestPaymentPassIngestDate;
- (int64_t)daysSinceParticipantPeerPaymentAccountIdentifiedDate;
- (int64_t)daysSinceProvisionedPassBySpecifiedType:(id)type;
- (int64_t)defaultCreditAccountBalanceStatus;
- (int64_t)defaultCreditAccountCyclesPastDue;
- (int64_t)defaultCreditAccountDaysSinceCreatedDate;
- (int64_t)defaultCreditAccountDaysSinceLastTransaction;
- (int64_t)defaultCreditAccountDaysUntilActivePromotionExpires:(id)expires;
- (int64_t)defaultCreditAccountParticipantUsersCount;
- (int64_t)defaultCreditAccountSetupFeatureState;
- (int64_t)defaultCreditAccountState;
- (int64_t)defaultCreditApplicationCount;
- (int64_t)familyCircleAgeCategory;
- (int64_t)familyCircleCurrentUserAge;
- (int64_t)familyCircleDaysSinceNewestJoinedDate;
- (int64_t)familyCircleMembersCount;
- (int64_t)familyCircleMembersUnderAge;
- (int64_t)familyCircleMinimumMemberAge;
- (int64_t)numberOfApplePayTransactionsLast30Days;
- (int64_t)peerPaymentAccountBalanceBase;
- (int64_t)peerPaymentAccountDaysSinceCreatedDate;
- (int64_t)peerPaymentAccountDaysSinceIdentifiedDate;
- (int64_t)peerPaymentAccountStage;
- (int64_t)peerPaymentAccountState;
- (int64_t)peerPaymentAccountStateReason;
- (int64_t)peerPaymentDaysSinceLastP2PTransaction;
- (int64_t)peerPaymentDaysSinceLastP2PTransactionToAnyParticipant;
- (int64_t)peerPaymentDaysSinceLastPurchaseTransaction;
- (int64_t)peerPaymentFamilyParticipantAccounts;
- (int64_t)peerPaymentNumberOfDeviceTapTransactions;
- (int64_t)savingsAccountBinnedBalance;
- (int64_t)savingsAccountDaysSinceCreatedDate;
- (unint64_t)countOfInstalledApps;
- (unint64_t)peerPaymentAccountRole;
- (void)_prefetchDataSources:(id)sources completion:(id)completion;
- (void)preflightForKeys:(id)keys completion:(id)completion;
- (void)updateDisputeState;
@end

@implementation PDUserEvaluationEnvironment

+ (id)availableKeysAndOperators
{
  v4[0] = @"currentRegion";
  v4[1] = @"deviceLanguage";
  v5[0] = &off_1008A2AF8;
  v5[1] = &off_1008A2AF8;
  v4[2] = @"isApplePayActive";
  v4[3] = @"isApplePaySetupAvailable";
  v5[2] = &off_1008A2B10;
  v5[3] = &off_1008A2B10;
  v4[4] = @"isPrimaryAppleAccountVerified";
  v4[5] = @"isDeviceRegisteredWithBroker";
  v5[4] = &off_1008A2B10;
  v5[5] = &off_1008A2B10;
  v4[6] = @"hasPaymentCard";
  v4[7] = @"hasDebitCard";
  v5[6] = &off_1008A2B10;
  v5[7] = &off_1008A2B10;
  v4[8] = @"hasCreditCard";
  v4[9] = @"hasSecureElementPass";
  v5[8] = &off_1008A2B10;
  v5[9] = &off_1008A2B10;
  v4[10] = @"hasApplePayTransaction";
  v4[11] = @"numberOfApplePayTransactionsInPastThirtyDays";
  v5[10] = &off_1008A2B10;
  v5[11] = &off_1008A2B28;
  v4[12] = @"daysSinceLastTransaction";
  v4[13] = @"daysSinceOldestPaymentPassIngestDate";
  v5[12] = &off_1008A2B28;
  v5[13] = &off_1008A2B28;
  v4[14] = @"daysSinceOldestCreditCardIngestDate";
  v4[15] = @"daysSinceOldestCardInPendingVerification";
  v5[14] = &off_1008A2B28;
  v5[15] = &off_1008A2B28;
  v4[16] = @"hasUserPreferencesEnabledByIdentifier";
  v4[17] = @"defaultCreditAccountSetupFeatureState";
  v5[16] = &off_1008A2B40;
  v5[17] = &off_1008A2B28;
  v4[18] = @"hasDefaultCreditAccount";
  v4[19] = @"defaultCreditAccountState";
  v5[18] = &off_1008A2B10;
  v5[19] = &off_1008A2B28;
  v4[20] = @"defaultCreditAccountLifetimeRewards";
  v4[21] = @"defaultCreditAccountHasPhysicalCard";
  v5[20] = &off_1008A2B28;
  v5[21] = &off_1008A2B10;
  v4[22] = @"defaultCreditAccountHasVirtualCard";
  v4[23] = @"defaultCreditAccountHasDynamicSecurityCode";
  v5[22] = &off_1008A2B10;
  v5[23] = &off_1008A2B10;
  v4[24] = @"defaultCreditAccountRequiresDebtCollectionNotices";
  v4[25] = @"defaultCreditAccountBalanceStatus";
  v5[24] = &off_1008A2B10;
  v5[25] = &off_1008A2B28;
  v4[26] = @"defaultCreditAccountCyclesPastDue";
  v4[27] = @"defaultCreditAccountInGrace";
  v5[26] = &off_1008A2B28;
  v5[27] = &off_1008A2B10;
  v4[28] = @"defaultCreditAccountInDisasterRecovery";
  v4[29] = @"defaultCreditAccountHasDisputeOpen";
  v5[28] = &off_1008A2B10;
  v5[29] = &off_1008A2B10;
  v4[30] = @"defaultCreditAccountDaysSinceDisputeOpened";
  v4[31] = @"defaultCreditAccountAvailableCredit";
  v5[30] = &off_1008A2B28;
  v5[31] = &off_1008A2B28;
  v4[32] = @"defaultCreditAccountSupportsShowNotifications";
  v4[33] = @"defaultCreditAccountPassIsDefault";
  v5[32] = &off_1008A2B10;
  v5[33] = &off_1008A2B10;
  v4[34] = @"defaultCreditAccountDaysSinceLastTransaction";
  v4[35] = @"defaultCreditAccountHasInStoreTransaction";
  v5[34] = &off_1008A2B28;
  v5[35] = &off_1008A2B10;
  v4[36] = @"defaultCreditAccountHasInAppTransaction";
  v4[37] = @"defaultCreditAccountHasWebTransaction";
  v5[36] = &off_1008A2B10;
  v5[37] = &off_1008A2B10;
  v4[38] = @"defaultCreditAccountHasVirtualCardTransaction";
  v4[39] = @"defaultCreditAccountHasPhysicalCardTransaction";
  v5[38] = &off_1008A2B10;
  v5[39] = &off_1008A2B10;
  v4[40] = @"defaultCreditAccountDaysSinceCreatedDate";
  v4[41] = @"defaultCreditAccountHasActiveInstallment";
  v5[40] = &off_1008A2B28;
  v5[41] = &off_1008A2B10;
  v4[42] = @"defaultCreditAccountHasUsedInstallments";
  v4[43] = @"defaultCreditAccountMerchantIdentifiers";
  v5[42] = &off_1008A2B10;
  v5[43] = &off_1008A2B40;
  v4[44] = @"defaultCreditAccountMerchantIdentifiersLast30Days";
  v4[45] = @"defaultCreditAccountMapsIdentifiers";
  v5[44] = &off_1008A2B40;
  v5[45] = &off_1008A2B40;
  v4[46] = @"defaultCreditAccountMapsIdentifiersLast30Days";
  v4[47] = @"defaultCreditAccountMapsBrandIdentifiers";
  v5[46] = &off_1008A2B40;
  v5[47] = &off_1008A2B40;
  v4[48] = @"defaultCreditAccountMapsBrandIdentifiersLast30Days";
  v4[49] = @"defaultCreditAccountSupportedDestinations";
  v5[48] = &off_1008A2B40;
  v5[49] = &off_1008A2B40;
  v4[50] = @"defaultCreditAccountRewardsDestination";
  v4[51] = @"defaultCreditApplicationCount";
  v5[50] = &off_1008A2AF8;
  v5[51] = &off_1008A2B28;
  v4[52] = @"currentDefaultCreditApplictionDaysSinceLastUpdated";
  v4[53] = @"currentDefaultCreditApplicationState";
  v5[52] = &off_1008A2B28;
  v5[53] = &off_1008A2AF8;
  v4[54] = @"defaultCreditAccountIsShared";
  v4[55] = @"defaultCreditAccountAccessLevel";
  v5[54] = &off_1008A2B10;
  v5[55] = &off_1008A2B28;
  v4[56] = @"defaultCreditAccountIsCoOwner";
  v4[57] = @"defaultCreditAccountParticipantUsersCount";
  v5[56] = &off_1008A2B10;
  v5[57] = &off_1008A2B28;
  v4[58] = @"defaultCreditAccountHasUnderageParticipant";
  v4[59] = @"defaultCreditAccountPhysicalAppleCardStatus";
  v5[58] = &off_1008A2B10;
  v5[59] = &off_1008A2AF8;
  v4[60] = @"daysSincePhysicalAppleCardShipmentUpdate";
  v4[61] = @"defaultCreditAccountActivePromotionIdentifiers";
  v5[60] = &off_1008A2B28;
  v5[61] = &off_1008A2B40;
  v4[62] = @"defaultCreditAccountActivePromotionIdentifiersExpiringSoon";
  v4[63] = @"defaultCreditAccountDaysUntilActivePromotionExpires";
  v5[62] = &off_1008A2B40;
  v5[63] = &off_1008A2B58;
  v4[64] = @"defaultCreditAccountHasAutopaySetup";
  v5[64] = &off_1008A2B10;
  v4[65] = @"merchantIdentifiers";
  v5[65] = &off_1008A2B40;
  v4[66] = @"mapsIdentifiers";
  v5[66] = &off_1008A2B40;
  v4[67] = @"mapsBrandIdentifiers";
  v5[67] = &off_1008A2B40;
  v4[68] = @"hasPaymentTransaction";
  v5[68] = &off_1008A2B10;
  v4[69] = @"hasTransitTransaction";
  v5[69] = &off_1008A2B10;
  v4[70] = @"anyCreditAccountStateIsClosed";
  v5[70] = &off_1008A2B10;
  v4[71] = @"anyCreditAccountStateIsRemoved";
  v5[71] = &off_1008A2B10;
  v4[72] = @"passStyles";
  v5[72] = &off_1008A2B40;
  v4[73] = @"unexpiredPassStyles";
  v5[73] = &off_1008A2B40;
  v4[74] = @"secureElementCardTypes";
  v5[74] = &off_1008A2B40;
  v4[75] = @"unexpiredSecureElementCardTypes";
  v5[75] = &off_1008A2B40;
  v4[76] = @"transitNetworksPresent";
  v5[76] = &off_1008A2B40;
  v4[77] = @"transitNetworksPresentAndUnexpired";
  v5[77] = &off_1008A2B40;
  v4[78] = @"hasPeerPaymentAccount";
  v5[78] = &off_1008A2B10;
  v4[79] = @"hasPeerPaymentPassProvisioned";
  v5[79] = &off_1008A2B10;
  v4[80] = @"peerPaymentAccountState";
  v5[80] = &off_1008A2B28;
  v4[81] = @"peerPaymentAccountStage";
  v5[81] = &off_1008A2B28;
  v4[82] = @"peerPaymentAccountStateReason";
  v5[82] = &off_1008A2B28;
  v4[83] = @"peerPaymentAccountHasTransaction";
  v5[83] = &off_1008A2B10;
  v4[84] = @"peerPaymentAccountHasContactlessTransaction";
  v5[84] = &off_1008A2B10;
  v4[85] = @"peerPaymentHasOnlinePurchaseTransaction";
  v5[85] = &off_1008A2B10;
  v4[86] = @"daysSinceLastPeerPaymentTransaction";
  v5[86] = &off_1008A2B28;
  v4[87] = @"peerPaymentDaysSinceLastP2PTransaction";
  v5[87] = &off_1008A2B28;
  v4[88] = @"peerPaymentDaysSinceLastP2PTransactionToAnyParticipant";
  v5[88] = &off_1008A2B28;
  v4[89] = @"peerPaymentAccountHasBalance";
  v5[89] = &off_1008A2B10;
  v4[90] = @"peerPaymentAccountBalanceBase";
  v5[90] = &off_1008A2B28;
  v4[91] = @"peerPaymentHasP2PTransaction";
  v5[91] = &off_1008A2B10;
  v4[92] = @"peerPaymentHasAutoReloadEnabled";
  v5[92] = &off_1008A2B10;
  v4[93] = @"peerPaymentHasSetupRecurringP2PPayment";
  v5[93] = &off_1008A2B10;
  v4[94] = @"peerPaymentHasSetupRecurringP2PPaymentForAnyParticipant";
  v5[94] = &off_1008A2B10;
  v4[95] = @"peerPaymentDaysSinceLastPurchaseTransaction";
  v5[95] = &off_1008A2B28;
  v4[96] = @"peerPaymentHasSentP2PPayment";
  v5[96] = &off_1008A2B10;
  v4[97] = @"peerPaymentHasReceivedP2PPayment";
  v5[97] = &off_1008A2B10;
  v4[98] = @"peerPaymentHasSentDeviceTapTransaction";
  v5[98] = &off_1008A2B10;
  v4[99] = @"peerPaymentHasReceivedDeviceTapTransaction";
  v5[99] = &off_1008A2B10;
  v4[100] = @"peerPaymentNumberOfDeviceTapTransactions";
  v5[100] = &off_1008A2B28;
  v4[101] = @"daysSinceLastDeviceTapSendTransaction";
  v5[101] = &off_1008A2B28;
  v4[102] = @"peerPaymentFamilyParticipantAccounts";
  v5[102] = &off_1008A2B28;
  v4[103] = @"peerPaymentAccountRole";
  v5[103] = &off_1008A2B28;
  v4[104] = @"peerPaymentAccountDaysSinceCreatedDate";
  v5[104] = &off_1008A2B28;
  v4[105] = @"peerPaymentAccountDaysSinceIdentifiedDate";
  v5[105] = &off_1008A2B28;
  v4[106] = @"daysSinceParticipantPeerPaymentAccountIdentifiedDate";
  v5[106] = &off_1008A2B28;
  v4[107] = @"peerPaymentAccountHasSentMoneyToAnyParticipant";
  v5[107] = &off_1008A2B10;
  v4[108] = @"familyCircleFamilyOrganizer";
  v5[108] = &off_1008A2B10;
  v4[109] = @"familyCircleParent";
  v5[109] = &off_1008A2B10;
  v4[110] = @"familyCircleHasFamily";
  v5[110] = &off_1008A2B10;
  v4[111] = @"familyCircleCurrentUserAge";
  v5[111] = &off_1008A2B28;
  v4[112] = @"familyCircleMembersUnderAge";
  v5[112] = &off_1008A2B28;
  v4[113] = @"familyCircleMembersCount";
  v5[113] = &off_1008A2B28;
  v4[114] = @"familyCircleDaysSinceNewestJoinedDate";
  v5[114] = &off_1008A2B28;
  v4[115] = @"familyCircleMinimumMemberAge";
  v5[115] = &off_1008A2B28;
  v4[116] = @"familyCircleAgeCategory";
  v5[116] = &off_1008A2B28;
  v4[117] = @"discoveryItemsWithActiveStatus";
  v5[117] = &off_1008A2B70;
  v4[118] = @"discoveryItemsWithActionedStatus";
  v5[118] = &off_1008A2B70;
  v4[119] = @"discoveryItemsWithDismissedStatus";
  v5[119] = &off_1008A2B70;
  v4[120] = @"discoveryItemsWithWaitingForTriggerStatus";
  v5[120] = &off_1008A2B70;
  v4[121] = @"discoveryItemsExpanded";
  v5[121] = &off_1008A2B70;
  v4[122] = @"discoveryItemsDismissed";
  v5[122] = &off_1008A2B70;
  v4[123] = @"discoveryCTAsTapped";
  v5[123] = &off_1008A2B70;
  v4[124] = @"discoveryCTAsCompleted";
  v5[124] = &off_1008A2B70;
  v4[125] = @"sentTransitDCINotifications";
  v5[125] = &off_1008A2B70;
  v4[126] = @"sentTransitOpenLoopUpgradeNotifications";
  v5[126] = &off_1008A2B70;
  v4[127] = @"sentTransitOpenLoopRenotifiedInMarketNotifications";
  v5[127] = &off_1008A2B70;
  v4[128] = @"cardTypesWithExpressEnabled";
  v5[128] = &off_1008A2B70;
  v4[129] = @"supportedMarketsForCurrentLocation";
  v5[129] = &off_1008A2B70;
  v4[130] = @"supportedTransitMarketsForCurrentLocation";
  v5[130] = &off_1008A2B70;
  v4[131] = @"supportedTransitNetworksForCurrentLocation";
  v5[131] = &off_1008A2B70;
  v4[132] = @"expressTransitNetworksForCurrentLocation";
  v5[132] = &off_1008A2B70;
  v4[133] = @"hasTransitPassForCurrentLocation";
  v5[133] = &off_1008A2B10;
  v4[134] = @"hasUnexpiredTransitPassForCurrentLocation";
  v5[134] = &off_1008A2B10;
  v4[135] = @"currentPlacemark";
  v5[135] = &off_1008A2B58;
  v4[136] = @"currentPlacemark.ISOcountryCode";
  v5[136] = &off_1008A2AF8;
  v4[137] = @"currentPlacemark.postalCode";
  v5[137] = &off_1008A2AF8;
  v4[138] = @"currentPlacemark.administrativeArea";
  v5[138] = &off_1008A2AF8;
  v4[139] = @"currentPlacemark.subAdministrativeArea";
  v5[139] = &off_1008A2AF8;
  v4[140] = @"currentPlacemark.locality";
  v5[140] = &off_1008A2AF8;
  v4[141] = @"currentPlacemark.subLocality";
  v5[141] = &off_1008A2AF8;
  v4[142] = @"hasSavingsAccount";
  v5[142] = &off_1008A2B10;
  v4[143] = @"savingsAccountDaysSinceCreatedDate";
  v5[143] = &off_1008A2B28;
  v4[144] = @"savingsAccountHasExternalTransferIn";
  v5[144] = &off_1008A2B10;
  v4[145] = @"savingsAccountHasExternalTransferOut";
  v5[145] = &off_1008A2B10;
  v4[146] = @"savingsAccountHasCashTransferIn";
  v5[146] = &off_1008A2B10;
  v4[147] = @"savingsAccountBinnedBalance";
  v5[147] = &off_1008A2B28;
  v4[148] = @"savingsAccountAPY";
  v5[148] = &off_1008A2AF8;
  v4[149] = @"installedApps";
  v5[149] = &off_1008A2B40;
  v4[150] = @"hasPairedWatch";
  v5[150] = &off_1008A2B10;
  v4[151] = @"enrolledAuthenticationMechanisms";
  v5[151] = &off_1008A2B40;
  v4[152] = @"hasIssuerInstallmentCard";
  v5[152] = &off_1008A2B10;
  v4[153] = @"hasEverMadeIssuerInstallmentTransaction";
  v5[153] = &off_1008A2B10;
  v4[154] = @"hasBankConnectEligibleCard";
  v5[154] = &off_1008A2B10;
  v4[155] = @"hasAnyConnectedCardWithBankConnect";
  v5[155] = &off_1008A2B10;
  v4[156] = @"hasRewardsCard";
  v5[156] = &off_1008A2B10;
  v4[157] = @"hasEverMadeRewardsTransaction";
  v5[157] = &off_1008A2B10;
  v4[158] = @"issuerMessagingFlagsForDefaultAccountType";
  v5[158] = &off_1008A2B70;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:159];

  return v2;
}

+ (BOOL)isTransactionRelevant:(id)relevant
{
  relevantCopy = relevant;
  _applePayRelevantTransactionTypes = [self _applePayRelevantTransactionTypes];
  transactionType = [relevantCopy transactionType];

  v7 = [NSNumber numberWithInteger:transactionType];
  v8 = [_applePayRelevantTransactionTypes containsObject:v7];

  return v8;
}

- (PDUserEvaluationEnvironment)initWithAccountManager:(id)manager applyManager:(id)applyManager databaseManager:(id)databaseManager peerPaymentWebServiceCoordinator:(id)coordinator paymentWebServiceCoordinator:(id)serviceCoordinator transitNotificationService:(id)service familyCircleManager:(id)circleManager expressPassManager:(id)self0 discoveryManager:(id)self1
{
  managerCopy = manager;
  applyManagerCopy = applyManager;
  databaseManagerCopy = databaseManager;
  coordinatorCopy = coordinator;
  serviceCoordinatorCopy = serviceCoordinator;
  serviceCopy = service;
  circleManagerCopy = circleManager;
  passManagerCopy = passManager;
  discoveryManagerCopy = discoveryManager;
  v66.receiver = self;
  v66.super_class = PDUserEvaluationEnvironment;
  v18 = [(PDUserEvaluationEnvironment *)&v66 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountManager, manager);
    objc_storeStrong(&v19->_applyManager, applyManager);
    objc_storeStrong(&v19->_databaseManager, databaseManager);
    objc_storeStrong(&v19->_peerPaymentWebServiceCoordinator, coordinator);
    objc_storeStrong(&v19->_paymentWebServiceCoordinator, serviceCoordinator);
    objc_storeStrong(&v19->_transitNotificationService, service);
    objc_storeStrong(&v19->_familyCircleManager, circleManager);
    objc_storeStrong(&v19->_expressPassManager, passManager);
    objc_storeStrong(&v19->_discoveryManager, discoveryManager);
    v19->_prefetchedFamilyMemberType = -1;
    v19->_daysSinceLastPeerPaymentP2PTransaction = -1;
    v19->_peerPaymentDaysSinceLastP2PTransactionToAnyParticipant = -1;
    v19->_peerPaymentDaysSinceLastPurchaseTransaction = -1;
    v19->_familyCircleCurrentUserAge = -1;
    v19->_familyCircleMembersUnderAge = -1;
    v19->_familyCircleDaysSinceNewestJoinedDate = -1;
    v19->_familyCircleMinimumMemberAge = -1;
    v19->_daysSinceOldestPaymentPassIngestDate = -1;
    v19->_daysSinceOldestCreditCardIngestDate = -1;
    v19->_daysSinceOldestCardInPendingVerification = -1;
    v19->_daysSinceLastDefaultCreditAccountTransaction = -1;
    v19->_daysSinceLastApplePayTransaction = -1;
    v19->_daysSinceLastPeerPaymentTransaction = -1;
    v20 = objc_alloc_init(NSMutableDictionary);
    queriedMerchantIdentifierPresence = v19->_queriedMerchantIdentifierPresence;
    v19->_queriedMerchantIdentifierPresence = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    queriedMapsIdentifierPresence = v19->_queriedMapsIdentifierPresence;
    v19->_queriedMapsIdentifierPresence = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    queriedMapsBrandIdentifierPresence = v19->_queriedMapsBrandIdentifierPresence;
    v19->_queriedMapsBrandIdentifierPresence = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMerchantIdentifierPresence = v19->_queriedDefaultCreditAccountMerchantIdentifierPresence;
    v19->_queriedDefaultCreditAccountMerchantIdentifierPresence = v26;

    v28 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence = v19->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence;
    v19->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence = v28;

    v30 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMapsIdentifierPresence = v19->_queriedDefaultCreditAccountMapsIdentifierPresence;
    v19->_queriedDefaultCreditAccountMapsIdentifierPresence = v30;

    v32 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence = v19->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence;
    v19->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence = v32;

    v34 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMapsBrandIdentifierPresence = v19->_queriedDefaultCreditAccountMapsBrandIdentifierPresence;
    v19->_queriedDefaultCreditAccountMapsBrandIdentifierPresence = v34;

    v36 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence = v19->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence;
    v19->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence = v36;

    v38 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountActivePromotionIdentifiersPresence = v19->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence;
    v19->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence = v38;

    v40 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence = v19->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence;
    v19->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence = v40;

    v42 = objc_alloc_init(NSMutableDictionary);
    queriedDefaultCreditAccountDaysUntilActivePromotionExpires = v19->_queriedDefaultCreditAccountDaysUntilActivePromotionExpires;
    v19->_queriedDefaultCreditAccountDaysUntilActivePromotionExpires = v42;

    v19->_peerPaymentDaysSinceLastDeviceTapSendTransaction = -1;
    v44 = objc_alloc_init(NSMutableDictionary);
    queriedAppIdentifierPresence = v19->_queriedAppIdentifierPresence;
    v19->_queriedAppIdentifierPresence = v44;

    v46 = objc_alloc_init(NSMutableDictionary);
    queriedDaysSinceProvisionedPassBySpecifiedType = v19->_queriedDaysSinceProvisionedPassBySpecifiedType;
    v19->_queriedDaysSinceProvisionedPassBySpecifiedType = v46;

    v48 = objc_alloc_init(NSMutableDictionary);
    queriedTransactionOfTransactionSourceTypePresence = v19->_queriedTransactionOfTransactionSourceTypePresence;
    v19->_queriedTransactionOfTransactionSourceTypePresence = v48;

    v50 = objc_alloc_init(NSMutableDictionary);
    queriedIssuerMessagingFlagsForDefaultAccountType = v19->_queriedIssuerMessagingFlagsForDefaultAccountType;
    v19->_queriedIssuerMessagingFlagsForDefaultAccountType = v50;

    v52 = objc_alloc_init(NSMutableDictionary);
    queriedAppleAccountCardDaysSinceTopUpOfType = v19->_queriedAppleAccountCardDaysSinceTopUpOfType;
    v19->_queriedAppleAccountCardDaysSinceTopUpOfType = v52;

    *&v19->_defaultPhysicalCardStatus = xmmword_10068E520;
    v19->_rulesNeedLocation = [(PDDiscoveryManager *)v19->_discoveryManager rulesNeedLocation];
    v19->_rulesNeedPlacemark = [(PDDiscoveryManager *)v19->_discoveryManager rulesNeedPlacemark];
    v54 = objc_alloc_init(FKBankConnectEvaluationManager);
    bankConnectEvaluationManager = v19->_bankConnectEvaluationManager;
    v19->_bankConnectEvaluationManager = v54;
  }

  return v19;
}

- (BOOL)isApplePayActive
{
  if (self->_hasQueriedApplePayActive)
  {
    return self->_isApplePayActive;
  }

  else
  {
    v4 = [(PDDatabaseManager *)self->_databaseManager passExistsWithPassType:1];
    v3 = v4 & [(PDDatabaseManager *)self->_databaseManager hasAnyTransactions];
    self->_isApplePayActive = v3;
    self->_hasQueriedApplePayActive = 1;
  }

  return v3;
}

- (BOOL)isApplePaySetupAvailable
{
  if (self->_hasQueriedApplePaySetUpState)
  {
    return self->_isApplePaySetupAvailable;
  }

  else
  {
    if (PKSecureElementIsAvailable() && (PKCurrentUserIsGuestUser() & 1) == 0)
    {
      v4 = PKCurrentUserIsInSharingMode() ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    paymentSetupSupportedInRegion = [sharedWebService paymentSetupSupportedInRegion];

    if (paymentSetupSupportedInRegion)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    self->_isApplePaySetupAvailable = v3;
    self->_hasQueriedApplePaySetUpState = 1;
  }

  return v3;
}

- (BOOL)isDeviceRegisteredWithBroker
{
  if (!self->_hasQueriedBrokerRegistration)
  {
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    context = [sharedWebService context];
    self->_isBrokerRegistered = [context isRegistered];

    self->_hasQueriedBrokerRegistration = 1;
  }

  return self->_isBrokerRegistered;
}

- (BOOL)hasPaymentCard
{
  if (self->_hasQueriedPaymentCards)
  {
    hasPaymentCard = self->_hasPaymentCard;
  }

  else
  {
    hasPaymentCard = [(PDDatabaseManager *)self->_databaseManager passExistsWithPassType:1];
    self->_hasPaymentCard = hasPaymentCard;
    self->_hasQueriedPaymentCards = 1;
  }

  return hasPaymentCard & 1;
}

- (BOOL)hasDebitCard
{
  if (self->_hasQueriedDebitCards)
  {
    hasDebitCard = self->_hasDebitCard;
  }

  else
  {
    hasDebitCard = [(PDDatabaseManager *)self->_databaseManager passExistsWithPaymentType:1];
    self->_hasDebitCard = hasDebitCard;
    self->_hasQueriedDebitCards = 1;
  }

  return hasDebitCard & 1;
}

- (BOOL)hasCreditCard
{
  if (self->_hasQueriedCreditCards)
  {
    hasCreditCard = self->_hasCreditCard;
  }

  else
  {
    hasCreditCard = [(PDDatabaseManager *)self->_databaseManager passExistsWithPaymentType:2];
    self->_hasCreditCard = hasCreditCard;
    self->_hasQueriedCreditCards = 1;
  }

  return hasCreditCard & 1;
}

- (BOOL)hasSecureElementPass
{
  if (self->_hasQueriedSecureElementPasses)
  {
    hasSecureElementPass = self->_hasSecureElementPass;
  }

  else
  {
    hasSecureElementPass = [(PDDatabaseManager *)self->_databaseManager hasActiveSecureElementPasses];
    self->_hasSecureElementPass = hasSecureElementPass;
    self->_hasQueriedSecureElementPasses = 1;
  }

  return hasSecureElementPass & 1;
}

- (BOOL)hasApplePayTransaction
{
  if (!self->_hasQueriedApplePayTransactions)
  {
    v3 = +[PDUserEvaluationEnvironment _applePayRelevantTransactionTypes];
    v4 = [(PDDatabaseManager *)self->_databaseManager transactionsOfTypes:v3 withTransactionSource:0 withBackingData:0 limit:1];
    firstObject = [v4 firstObject];
    self->_hasApplePayTransaction = firstObject != 0;

    self->_hasQueriedApplePayTransactions = 1;
  }

  return self->_hasApplePayTransaction;
}

- (int64_t)numberOfApplePayTransactionsLast30Days
{
  if (!self->_hasQueriedNumberOfApplePayTransactionsLast30Days)
  {
    v3 = +[NSDate now];
    v4 = [v3 dateByAddingTimeInterval:-2592000.0];

    v5 = objc_alloc_init(PKPaymentTransactionRequest);
    [v5 setTransactionTypes:&off_1008A4698];
    [v5 setStartDate:v4];
    v6 = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v5];
    v7 = 5;
    v8 = 4;
    v9 = 3;
    v10 = 2;
    if (v6 <= 7)
    {
      v10 = v6 != 0;
    }

    if (v6 <= 0xE)
    {
      v9 = v10;
    }

    if (v6 <= 0x15)
    {
      v8 = v9;
    }

    if (v6 <= 0x1E)
    {
      v7 = v8;
    }

    self->_numberOfApplePayTransactionsLast30Days = v7;
    self->_hasQueriedNumberOfApplePayTransactionsLast30Days = 1;
  }

  return self->_numberOfApplePayTransactionsLast30Days;
}

- (int64_t)daysSinceLastTransaction
{
  if (!self->_hasQueriedDaysSinceLastTransaction)
  {
    v3 = +[PDUserEvaluationEnvironment _applePayRelevantTransactionTypes];
    v4 = [(PDDatabaseManager *)self->_databaseManager transactionsOfTypes:v3 withTransactionSource:0 withBackingData:0 limit:1];
    firstObject = [v4 firstObject];
    if (firstObject)
    {
      v6 = +[NSDate date];
      transactionDate = [firstObject transactionDate];
      [v6 timeIntervalSinceDate:transactionDate];
      v9 = v8;

      self->_daysSinceLastApplePayTransaction = vcvtmd_s64_f64(v9 / 86400.0);
    }

    self->_hasQueriedDaysSinceLastTransaction = 1;
  }

  return self->_daysSinceLastApplePayTransaction;
}

- (int64_t)daysSinceOldestPaymentPassIngestDate
{
  if (!self->_hasQueriedDaysSinceOldestPaymentPassIngestDate)
  {
    v3 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
    [(PDSecureElementPassDatabaseRequest *)v3 setCardType:1];
    v4 = [(PDDatabaseManager *)self->_databaseManager minIngestedDateForRequest:v3];
    if (v4)
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:v4];
      v7 = v6;

      self->_daysSinceOldestPaymentPassIngestDate = vcvtmd_s64_f64(v7 / 86400.0);
    }

    self->_hasQueriedDaysSinceOldestPaymentPassIngestDate = 1;
  }

  return self->_daysSinceOldestPaymentPassIngestDate;
}

- (int64_t)daysSinceOldestCreditCardIngestDate
{
  if (!self->_hasQueriedDaysSinceOldestCreditCardIngestDate)
  {
    v3 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
    [(PDSecureElementPassDatabaseRequest *)v3 setCardType:1];
    [(PDSecureElementPassDatabaseRequest *)v3 setPaymentMethodTypes:&off_1008A46B0];
    [(PDSecureElementPassDatabaseRequest *)v3 setExcludeFirstPartyCards:1];
    v4 = [(PDDatabaseManager *)self->_databaseManager minIngestedDateForRequest:v3];
    if (v4)
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:v4];
      v7 = v6;

      self->_daysSinceOldestCreditCardIngestDate = vcvtmd_s64_f64(v7 / 86400.0);
    }

    self->_hasQueriedDaysSinceOldestCreditCardIngestDate = 1;
  }

  return self->_daysSinceOldestCreditCardIngestDate;
}

- (int64_t)daysSinceOldestCardInPendingVerification
{
  if (!self->_hasQueriedDaysSinceOldestCardInPendingVerification)
  {
    v3 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
    [(PDSecureElementPassDatabaseRequest *)v3 setCardType:1];
    v4 = [[NSSet alloc] initWithObjects:{&off_1008A2BD0, &off_1008A2C00, 0}];
    [(PDSecureElementPassDatabaseRequest *)v3 setPrimaryPaymentApplicationStates:v4];

    v5 = [(PDDatabaseManager *)self->_databaseManager minIngestedDateForRequest:v3];
    if (v5)
    {
      v6 = +[NSCalendar currentCalendar];
      v7 = +[NSDate date];
      v8 = [v6 components:16 fromDate:v5 toDate:v7 options:0];
      self->_daysSinceOldestCardInPendingVerification = [v8 day];
    }

    self->_hasQueriedDaysSinceOldestCardInPendingVerification = 1;
  }

  return self->_daysSinceOldestCardInPendingVerification;
}

- (int64_t)daysSinceProvisionedPassBySpecifiedType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy == @"appleCash")
  {
    goto LABEL_4;
  }

  if (!typeCopy)
  {
    goto LABEL_34;
  }

  v6 = [(__CFString *)typeCopy isEqualToString:@"appleCash"];

  if (!v6)
  {
    v15 = v5;
    if (v15 == @"appleCard" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"appleCard"], v16, v17))
    {
      v7 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      associatedPassUniqueID = [(PKAccount *)self->_prefetchedDefaultCreditAccount associatedPassUniqueID];
      v53 = associatedPassUniqueID;
      v9 = &v53;
      goto LABEL_5;
    }

    v18 = v16;
    if (v18 == @"appleBalance" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"appleBalance"], v19, v20))
    {
      v7 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      associatedPassUniqueID = [(PKAccount *)self->_prefetchedAppleBalanceAccount associatedPassUniqueID];
      v52 = associatedPassUniqueID;
      v9 = &v52;
      goto LABEL_5;
    }

    v21 = v19;
    if (v21 == @"externalCredit" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"externalCredit"], v22, v23))
    {
      v24 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      v7 = v24;
      v25 = &off_1008A46C8;
LABEL_19:
      [(PDSecureElementPassDatabaseRequest *)v24 setPaymentMethodTypes:v25];
      [(PDSecureElementPassDatabaseRequest *)v7 setExcludeFirstPartyCards:1];
      goto LABEL_6;
    }

    v26 = v22;
    if (v26 == @"externalDebit" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"externalDebit"], v27, v28))
    {
      v24 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      v7 = v24;
      v25 = &off_1008A46E0;
      goto LABEL_19;
    }

    v29 = v27;
    if (v29 == @"transit" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"transit"], v30, v31))
    {
      v32 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      v7 = v32;
      v33 = 2;
LABEL_26:
      [(PDSecureElementPassDatabaseRequest *)v32 setCardType:v33];
      goto LABEL_6;
    }

    v34 = v30;
    if (v34 == @"access" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"access"], v35, v36))
    {
      v32 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
      v7 = v32;
      v33 = 3;
      goto LABEL_26;
    }

    v37 = v35;
    if (v37 == @"eventTicket" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"eventTicket"], v38, v39))
    {
      v7 = objc_alloc_init(PDPassDatabaseRequest);
      [(PDSecureElementPassDatabaseRequest *)v7 setPassType:0];
      [(PDPassDatabaseRequest *)v7 setHasPassStyleMask:1];
      v40 = v7;
      v41 = 516;
LABEL_33:
      [(PDPassDatabaseRequest *)v40 setPassStyleMask:v41];
      goto LABEL_6;
    }

    v42 = v38;
    if (v42 == @"boardingPass" || (v43 = v42, v44 = [(__CFString *)v42 isEqualToString:@"boardingPass"], v43, v44))
    {
      v7 = objc_alloc_init(PDPassDatabaseRequest);
      [(PDSecureElementPassDatabaseRequest *)v7 setPassType:0];
      [(PDPassDatabaseRequest *)v7 setHasPassStyleMask:1];
      v40 = v7;
      v41 = 1040;
      goto LABEL_33;
    }

LABEL_34:
    integerValue = -1;
    goto LABEL_35;
  }

LABEL_4:
  v7 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount associatedPassUniqueID];
  v54 = associatedPassUniqueID;
  v9 = &v54;
LABEL_5:
  v10 = [NSArray arrayWithObjects:v9 count:1];
  [(PDPassDatabaseRequest *)v7 setPassUniqueIdentifiers:v10];

LABEL_6:
  queriedDaysSinceProvisionedPassBySpecifiedType = self->_queriedDaysSinceProvisionedPassBySpecifiedType;
  v46 = _NSConcreteStackBlock;
  v47 = 3221225472;
  v48 = sub_100126D80;
  v49 = &unk_100847888;
  selfCopy = self;
  v51 = v7;
  v12 = v7;
  v13 = [(NSMutableDictionary *)queriedDaysSinceProvisionedPassBySpecifiedType getOrCreateObjectForKey:v5 creationBlock:&v46];
  integerValue = [v13 integerValue];

LABEL_35:
  return integerValue;
}

- (id)hasUserPreferencesEnabledByIdentifier
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:PKNewFeaturesNotificationsDisabled() ^ 1];
  [v3 setObject:v4 forKey:@"newFeatures"];
  [(NSMutableDictionary *)self->_queriedUserPreferencesEnabledByIdentifier setObject:v4 forKey:@"newFeatures"];
  v5 = [NSNumber numberWithBool:PKOffersNotificationsDisabled() ^ 1];
  [v3 setObject:v5 forKey:@"offers"];
  [(NSMutableDictionary *)self->_queriedUserPreferencesEnabledByIdentifier setObject:v5 forKey:@"offers"];

  return v3;
}

- (int64_t)defaultCreditAccountSetupFeatureState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = -1;
  v9 = -1;
  prefetchedSetupFeatures = self->_prefetchedSetupFeatures;
  if (prefetchedSetupFeatures)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10012703C;
    v5[3] = &unk_1008478B0;
    v5[4] = &v6;
    [(NSArray *)prefetchedSetupFeatures enumerateObjectsUsingBlock:v5];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

- (int64_t)defaultCreditAccountState
{
  result = self->_prefetchedDefaultCreditAccount;
  if (result)
  {
    return [result state];
  }

  return result;
}

- (NSDecimalNumber)defaultCreditAccountLifetimeRewards
{
  v3 = +[NSDecimalNumber zero];
  _defaultCreditAccountAccountStatement = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountAccountStatement];
  v5 = _defaultCreditAccountAccountStatement;
  if (_defaultCreditAccountAccountStatement)
  {
    rewardsLifetime = [_defaultCreditAccountAccountStatement rewardsLifetime];

    v3 = rewardsLifetime;
  }

  return v3;
}

- (BOOL)defaultCreditAccountHasPhysicalCard
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (!prefetchedDefaultCreditAccount)
  {
    return 0;
  }

  accountIdentifier = [(PKAccount *)prefetchedDefaultCreditAccount accountIdentifier];
  v5 = [(PDUserEvaluationEnvironment *)self _creditAccountPhysicalCardsForAccountIdentifier:accountIdentifier];

  if (v5)
  {
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)defaultCreditAccountHasVirtualCard
{
  _defaultCreditAccountCreditAccountDetails = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountCreditAccountDetails];
  v3 = _defaultCreditAccountCreditAccountDetails;
  if (_defaultCreditAccountCreditAccountDetails)
  {
    virtualCards = [_defaultCreditAccountCreditAccountDetails virtualCards];
    v5 = virtualCards;
    if (virtualCards)
    {
      v6 = [virtualCards count] != 0;
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

- (BOOL)defaultCreditAccountHasDynamicSecurityCode
{
  _defaultCreditAccountCreditAccountDetails = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountCreditAccountDetails];
  v3 = _defaultCreditAccountCreditAccountDetails;
  if (_defaultCreditAccountCreditAccountDetails)
  {
    virtualCards = [_defaultCreditAccountCreditAccountDetails virtualCards];
    v5 = virtualCards;
    if (virtualCards && [virtualCards count])
    {
      anyObject = [v5 anyObject];
      hasDynamicSecurityCode = [anyObject hasDynamicSecurityCode];
    }

    else
    {
      hasDynamicSecurityCode = 0;
    }
  }

  else
  {
    hasDynamicSecurityCode = 0;
  }

  return hasDynamicSecurityCode;
}

- (BOOL)defaultCreditAccountRequiresDebtCollectionNotices
{
  _defaultCreditAccountAccountSummary = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountAccountSummary];
  v3 = _defaultCreditAccountAccountSummary;
  if (_defaultCreditAccountAccountSummary)
  {
    requiresDebtCollectionNotices = [_defaultCreditAccountAccountSummary requiresDebtCollectionNotices];
  }

  else
  {
    requiresDebtCollectionNotices = 0;
  }

  return requiresDebtCollectionNotices;
}

- (int64_t)defaultCreditAccountBalanceStatus
{
  _defaultCreditAccountAccountSummary = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountAccountSummary];
  v3 = _defaultCreditAccountAccountSummary;
  if (_defaultCreditAccountAccountSummary)
  {
    balanceStatus = [_defaultCreditAccountAccountSummary balanceStatus];
  }

  else
  {
    balanceStatus = 0;
  }

  return balanceStatus;
}

- (int64_t)defaultCreditAccountCyclesPastDue
{
  _defaultCreditAccountAccountSummary = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountAccountSummary];
  v3 = _defaultCreditAccountAccountSummary;
  if (_defaultCreditAccountAccountSummary)
  {
    cyclesPastDue = [_defaultCreditAccountAccountSummary cyclesPastDue];
  }

  else
  {
    cyclesPastDue = 0;
  }

  return cyclesPastDue;
}

- (BOOL)defaultCreditAccountInGrace
{
  _defaultCreditAccountCreditAccountDetails = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountCreditAccountDetails];
  accountSummary = [_defaultCreditAccountCreditAccountDetails accountSummary];
  v4 = accountSummary;
  if (accountSummary)
  {
    inGrace = [accountSummary inGrace];
  }

  else
  {
    inGrace = 0;
  }

  return inGrace;
}

- (BOOL)defaultCreditAccountInDisasterRecovery
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    LOBYTE(prefetchedDefaultCreditAccount) = [(PKAccount *)prefetchedDefaultCreditAccount stateReason]== 2;
  }

  return prefetchedDefaultCreditAccount;
}

- (void)updateDisputeState
{
  if (!self->_hasQueriedForDisputeState)
  {
    self->_defaultCreditAccountHasDisputeOpen = 0;
    self->_defaultCreditAccountDaysSinceDisputeOpened = -1;
    if (self->_prefetchedDefaultCreditAccount)
    {
      v8 = [(PDDatabaseManager *)self->_databaseManager transactionsForAdjustmentType:1 limit:1];
      if ([v8 count])
      {
        self->_defaultCreditAccountHasDisputeOpen = 1;
        firstObject = [v8 firstObject];
        transactionDate = [firstObject transactionDate];
        v5 = +[NSDate date];
        [v5 timeIntervalSinceDate:transactionDate];
        v7 = v6;

        self->_defaultCreditAccountDaysSinceDisputeOpened = vcvtmd_s64_f64(v7 / 86400.0);
      }

      else
      {
        self->_defaultCreditAccountHasDisputeOpen = 0;
        self->_defaultCreditAccountDaysSinceDisputeOpened = -1;
      }

      self->_hasQueriedForDisputeState = 1;
    }
  }
}

- (NSDecimalNumber)defaultCreditAccountAvailableCredit
{
  v3 = +[NSDecimalNumber zero];
  _defaultCreditAccountAccountSummary = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountAccountSummary];
  v5 = _defaultCreditAccountAccountSummary;
  if (_defaultCreditAccountAccountSummary)
  {
    availableCredit = [_defaultCreditAccountAccountSummary availableCredit];

    v3 = availableCredit;
  }

  return v3;
}

- (BOOL)defaultCreditAccountSupportsShowNotifications
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    LOBYTE(prefetchedDefaultCreditAccount) = [(PKAccount *)prefetchedDefaultCreditAccount supportsShowNotifications];
  }

  return prefetchedDefaultCreditAccount;
}

- (BOOL)defaultCreditAccountPassIsDefault
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (!prefetchedDefaultCreditAccount)
  {
    return 0;
  }

  if (!self->_defaultPassUniqueIdentifier)
  {
    v4 = PDUserSpecifiedDefaultPaymentPassUniqueIdentifier();
    defaultPassUniqueIdentifier = self->_defaultPassUniqueIdentifier;
    self->_defaultPassUniqueIdentifier = v4;

    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  }

  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = self->_defaultPassUniqueIdentifier;
  v8 = associatedPassUniqueID;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [(NSString *)v8 isEqualToString:v9];
    }
  }

  return v11;
}

- (int64_t)defaultCreditAccountDaysSinceLastTransaction
{
  result = self->_daysSinceLastDefaultCreditAccountTransaction;
  if (result < 0 && self->_prefetchedDefaultCreditAccount)
  {
    associatedPassUniqueID = [(PKAccount *)self->_prefetchedDefaultCreditAccount associatedPassUniqueID];
    v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
    v6 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v5 withTransactionSource:0 withBackingData:0 limit:1];
    if ([v6 count] == 1)
    {
      anyObject = [v6 anyObject];
      transactionDate = [anyObject transactionDate];
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:transactionDate];
      v11 = v10;

      self->_daysSinceLastDefaultCreditAccountTransaction = vcvtmd_s64_f64(v11 / 86400.0);
    }

    return self->_daysSinceLastDefaultCreditAccountTransaction;
  }

  return result;
}

- (BOOL)defaultCreditAccountHasInStoreTransaction
{
  if (self->_hasQueriedDefaultCreditAccountInStoreTransaction)
  {
    hasDefaultCreditAccountInStoreTransaction = self->_hasDefaultCreditAccountInStoreTransaction;
  }

  else
  {
    hasDefaultCreditAccountInStoreTransaction = [(PDUserEvaluationEnvironment *)self _hasDefaultCreditAccountTransactionOfTransactionSourceType:1];
    self->_hasDefaultCreditAccountInStoreTransaction = hasDefaultCreditAccountInStoreTransaction;
    self->_hasQueriedDefaultCreditAccountInStoreTransaction = 1;
  }

  return hasDefaultCreditAccountInStoreTransaction & 1;
}

- (BOOL)defaultCreditAccountHasInAppTransaction
{
  if (self->_hasQueriedDefaultCreditAccountInAppTransaction)
  {
    hasDefaultCreditAccountInAppTransaction = self->_hasDefaultCreditAccountInAppTransaction;
  }

  else
  {
    hasDefaultCreditAccountInAppTransaction = [(PDUserEvaluationEnvironment *)self _hasDefaultCreditAccountTransactionOfTransactionSourceType:2];
    self->_hasDefaultCreditAccountInAppTransaction = hasDefaultCreditAccountInAppTransaction;
    self->_hasQueriedDefaultCreditAccountInAppTransaction = 1;
  }

  return hasDefaultCreditAccountInAppTransaction & 1;
}

- (BOOL)defaultCreditAccountHasWebTransaction
{
  if (self->_hasQueriedDefaultCreditAccountWebTransaction)
  {
    hasDefaultCreditAccountWebTransaction = self->_hasDefaultCreditAccountWebTransaction;
  }

  else
  {
    hasDefaultCreditAccountWebTransaction = [(PDUserEvaluationEnvironment *)self _hasDefaultCreditAccountTransactionOfTransactionSourceType:3];
    self->_hasDefaultCreditAccountWebTransaction = hasDefaultCreditAccountWebTransaction;
    self->_hasQueriedDefaultCreditAccountWebTransaction = 1;
  }

  return hasDefaultCreditAccountWebTransaction & 1;
}

- (BOOL)defaultCreditAccountHasVirtualCardTransaction
{
  if (self->_hasQueriedDefaultCreditAccountVirtualCardTransaction)
  {
    hasDefaultCreditAccountVirtualCardTransaction = self->_hasDefaultCreditAccountVirtualCardTransaction;
  }

  else
  {
    hasDefaultCreditAccountVirtualCardTransaction = [(PDUserEvaluationEnvironment *)self _hasDefaultCreditAccountTransactionOfTransactionSourceType:6];
    self->_hasDefaultCreditAccountVirtualCardTransaction = hasDefaultCreditAccountVirtualCardTransaction;
    self->_hasQueriedDefaultCreditAccountVirtualCardTransaction = 1;
  }

  return hasDefaultCreditAccountVirtualCardTransaction & 1;
}

- (BOOL)defaultCreditAccountHasPhysicalCardTransaction
{
  if (self->_hasQueriedDefaultCreditAccountPhysicalCardTransaction)
  {
    hasDefaultCreditAccountPhysicalCardTransaction = self->_hasDefaultCreditAccountPhysicalCardTransaction;
  }

  else
  {
    hasDefaultCreditAccountPhysicalCardTransaction = [(PDUserEvaluationEnvironment *)self _hasDefaultCreditAccountTransactionOfTransactionSourceType:5];
    self->_hasDefaultCreditAccountPhysicalCardTransaction = hasDefaultCreditAccountPhysicalCardTransaction;
    self->_hasQueriedDefaultCreditAccountPhysicalCardTransaction = 1;
  }

  return hasDefaultCreditAccountPhysicalCardTransaction & 1;
}

- (int64_t)defaultCreditAccountDaysSinceCreatedDate
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (!prefetchedDefaultCreditAccount)
  {
    return -1;
  }

  if (!-[PKAccount isCoOwner](prefetchedDefaultCreditAccount, "isCoOwner") || (-[PKAccount previousAccountIdentifiers](self->_prefetchedDefaultCreditAccount, "previousAccountIdentifiers"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5) || (-[PKAccount previousAccountIdentifiers](self->_prefetchedDefaultCreditAccount, "previousAccountIdentifiers"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "anyObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, -[PDUserEvaluationEnvironment _creditAccountWithIdentifier:](self, "_creditAccountWithIdentifier:", v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "creditDetails"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "createdDate"), createdDate = objc_claimAutoreleasedReturnValue(), v9, v8, v7, !createdDate))
  {
    creditDetails = [(PKAccount *)self->_prefetchedDefaultCreditAccount creditDetails];
    createdDate = [creditDetails createdDate];
  }

  v12 = +[NSDate date];
  [v12 timeIntervalSinceDate:createdDate];
  v14 = v13;

  v15 = vcvtmd_s64_f64(v14 / 86400.0);
  return v15;
}

- (BOOL)defaultCreditAccountHasActiveInstallment
{
  _defaultCreditAccountCreditAccountDetails = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountCreditAccountDetails];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  installmentPlans = [_defaultCreditAccountCreditAccountDetails installmentPlans];
  v4 = [installmentPlans countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(installmentPlans);
        }

        if ([*(*(&v8 + 1) + 8 * i) state] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [installmentPlans countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (NSString)defaultCreditAccountRewardsDestination
{
  creditDetails = [(PKAccount *)self->_prefetchedDefaultCreditAccount creditDetails];
  [creditDetails rewardsDestination];
  v3 = PKAccountRewardRedemptionTypeToString();

  return v3;
}

- (BOOL)defaultCreditAccountHasUsedInstallments
{
  _defaultCreditAccountCreditAccountDetails = [(PDUserEvaluationEnvironment *)self _defaultCreditAccountCreditAccountDetails];
  installmentPlans = [_defaultCreditAccountCreditAccountDetails installmentPlans];
  v4 = [installmentPlans count] != 0;

  return v4;
}

- (BOOL)defaultCreditAccountHasAutopaySetup
{
  accountIdentifier = [(PKAccount *)self->_prefetchedDefaultCreditAccount accountIdentifier];
  v4 = accountIdentifier;
  if (!self->_hasQueriedDefaultCreditAccountHasAutopaySetup && accountIdentifier)
  {
    v5 = [(PDDatabaseManager *)self->_databaseManager scheduledPaymentsWithAccountIdentifier:accountIdentifier includeFailedRecurringPayments:0];
    self->_hasDefaultCreditAccountAutopaySetup = [v5 pk_containsObjectPassingTest:&stru_1008478F0];
    self->_hasQueriedDefaultCreditAccountHasAutopaySetup = 1;
  }

  hasDefaultCreditAccountAutopaySetup = self->_hasDefaultCreditAccountAutopaySetup;

  return hasDefaultCreditAccountAutopaySetup;
}

- (id)memberOfDefaultCreditAccountMerchantIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMerchantIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      v9 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
      v10 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMerchantIdentifiers:v9 forPassUniqueIdentifier:associatedPassUniqueID];

      v5 = [NSNumber numberWithBool:v10];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMerchantIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v11 = identifiersCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)enumeratorOfDefaultCreditAccountMerchantIdentifiers
{
  queriedDefaultCreditAccountMerchantIdentifierPresence = self->_queriedDefaultCreditAccountMerchantIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMerchantIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountMerchantIdentifiersLast30Days:(id)days
{
  daysCopy = days;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence objectForKeyedSubscript:daysCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      v8 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
      databaseManager = self->_databaseManager;
      v10 = [[NSSet alloc] initWithObjects:{daysCopy, 0}];
      v11 = +[NSDate date];
      v12 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMerchantIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID startDate:v8 endDate:v11];

      v5 = [NSNumber numberWithBool:v12];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence setObject:v5 forKeyedSubscript:daysCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v13 = daysCopy;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)enumeratorOfDefaultCreditAccountMerchantIdentifiersLast30Days
{
  queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence = self->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountMapsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      v9 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
      v10 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsIdentifiers:v9 forPassUniqueIdentifier:associatedPassUniqueID];

      v5 = [NSNumber numberWithBool:v10];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v11 = identifiersCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)enumeratorOfDefaultCreditAccountMapsIdentifiers
{
  queriedDefaultCreditAccountMapsIdentifierPresence = self->_queriedDefaultCreditAccountMapsIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMapsIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountMapsIdentifiersLast30Days:(id)days
{
  daysCopy = days;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence objectForKeyedSubscript:daysCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      v8 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
      databaseManager = self->_databaseManager;
      v10 = [[NSSet alloc] initWithObjects:{daysCopy, 0}];
      v11 = +[NSDate date];
      v12 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID startDate:v8 endDate:v11];

      v5 = [NSNumber numberWithBool:v12];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence setObject:v5 forKeyedSubscript:daysCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v13 = daysCopy;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)enumeratorOfDefaultCreditAccountMapsIdentifiersLast30Days
{
  queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence = self->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountMapsBrandIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsBrandIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      v9 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
      v10 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v9 forPassUniqueIdentifier:associatedPassUniqueID];

      v5 = [NSNumber numberWithBool:v10];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsBrandIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v11 = identifiersCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)enumeratorOfDefaultCreditAccountMapsBrandIdentifiers
{
  queriedDefaultCreditAccountMapsBrandIdentifierPresence = self->_queriedDefaultCreditAccountMapsBrandIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMapsBrandIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountMapsBrandIdentifiersLast30Days:(id)days
{
  daysCopy = days;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence objectForKeyedSubscript:daysCopy];
  if (!v5)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
      v8 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
      databaseManager = self->_databaseManager;
      v10 = [[NSSet alloc] initWithObjects:{daysCopy, 0}];
      v11 = +[NSDate date];
      v12 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID startDate:v8 endDate:v11];

      v5 = [NSNumber numberWithBool:v12];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence setObject:v5 forKeyedSubscript:daysCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 BOOLValue])
  {
    v13 = daysCopy;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)enumeratorOfDefaultCreditAccountMapsBrandIdentifiersLast30Days
{
  queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence = self->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (int64_t)defaultCreditAccountParticipantUsersCount
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (!prefetchedDefaultCreditAccount || !self->_prefetchedCreditAccountUsers)
  {
    return 0;
  }

  accountIdentifier = [(PKAccount *)prefetchedDefaultCreditAccount accountIdentifier];
  v5 = [(PDUserEvaluationEnvironment *)self _accountUsersForAccountIdentifier:accountIdentifier accessLevel:2];
  v6 = [v5 count];

  return v6;
}

- (BOOL)defaultCreditAccountHasUnderageParticipant
{
  if (!self->_hasQueriedDefaultCreditAccountHasUnderageParticipant)
  {
    prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
    if (prefetchedDefaultCreditAccount)
    {
      if (self->_prefetchedCreditAccountUsers && self->_prefetchedFamilyMembers)
      {
        accountIdentifier = [(PKAccount *)prefetchedDefaultCreditAccount accountIdentifier];
        [(PDUserEvaluationEnvironment *)self _accountUsersForAccountIdentifier:accountIdentifier accessLevel:2];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v5 = v17 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v15;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v15 != v8)
              {
                objc_enumerationMutation(v5);
              }

              altDSID = [*(*(&v14 + 1) + 8 * i) altDSID];
              v11 = [(PDUserEvaluationEnvironment *)self _familyMemberWithAltDSID:altDSID];
              v12 = v11;
              if (v11 && [v11 age] >= 0xD && objc_msgSend(v12, "age") <= 0x11)
              {
                self->_defaultCreditAccountHasUnderageParticipant = 1;

                goto LABEL_17;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        self->_hasQueriedDefaultCreditAccountHasUnderageParticipant = 1;
      }
    }
  }

  return self->_defaultCreditAccountHasUnderageParticipant;
}

- (NSString)defaultCreditAccountPhysicalAppleCardStatus
{
  defaultPhysicalCardStatus = self->_defaultPhysicalCardStatus;
  if (defaultPhysicalCardStatus > 3)
  {
    return @"ordered";
  }

  else
  {
    return *(&off_100847C30 + defaultPhysicalCardStatus);
  }
}

- (id)memberOfDefaultCreditAccountActivePromotionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence objectForKeyedSubscript:identifiersCopy];
  accountIdentifier = [(PKAccount *)self->_prefetchedDefaultCreditAccount accountIdentifier];
  v7 = accountIdentifier;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = accountIdentifier == 0;
  }

  if (!v8)
  {
    v9 = [(PDDatabaseManager *)self->_databaseManager accountPromotionForProgramIdentifier:identifiersCopy accountIdentifier:accountIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 state] == 2;
    }

    else
    {
      v11 = 0;
    }

    v5 = [NSNumber numberWithBool:v11];
    [(NSMutableDictionary *)self->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence setObject:v5 forKeyedSubscript:identifiersCopy];
  }

  if ([v5 BOOLValue])
  {
    v12 = identifiersCopy;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)enumeratorOfDefaultCreditAccountActivePromotionIdentifiers
{
  queriedDefaultCreditAccountActivePromotionIdentifiersPresence = self->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountActivePromotionIdentifiersPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfDefaultCreditAccountActivePromotionIdentifiersExpiringSoon:(id)soon
{
  soonCopy = soon;
  v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence objectForKeyedSubscript:soonCopy];
  accountIdentifier = [(PKAccount *)self->_prefetchedDefaultCreditAccount accountIdentifier];
  v7 = accountIdentifier;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = accountIdentifier == 0;
  }

  if (!v8)
  {
    v9 = [(PDDatabaseManager *)self->_databaseManager accountPromotionForProgramIdentifier:soonCopy accountIdentifier:accountIdentifier];
    v10 = v9;
    if (v9 && [v9 state] == 2)
    {
      expiringSoon = [v10 expiringSoon];
    }

    else
    {
      expiringSoon = 0;
    }

    v5 = [NSNumber numberWithBool:expiringSoon];
    [(NSMutableDictionary *)self->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence setObject:v5 forKeyedSubscript:soonCopy];
  }

  if ([v5 BOOLValue])
  {
    v12 = soonCopy;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)enumeratorOfDefaultCreditAccountActivePromotionIdentifiersExpiringSoon
{
  queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence = self->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (BOOL)anyCreditAccountStateIsClosed
{
  prefetchedCreditAccounts = self->_prefetchedCreditAccounts;
  if (prefetchedCreditAccounts && !self->_hasQueriedAnyCreditAccountIsClosed)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = prefetchedCreditAccounts;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * i) state] == 4)
          {
            self->_anyCreditAccountIsClosed = 1;
            goto LABEL_13;
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    self->_hasQueriedAnyCreditAccountIsClosed = 1;
  }

  return self->_anyCreditAccountIsClosed;
}

- (BOOL)anyCreditAccountStateIsRemoved
{
  prefetchedCreditAccounts = self->_prefetchedCreditAccounts;
  if (prefetchedCreditAccounts && !self->_hasQueriedAnyCreditAccountIsRemoved)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = prefetchedCreditAccounts;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * i) state] == 5)
          {
            self->_anyCreditAccountIsRemoved = 1;
            goto LABEL_13;
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    self->_hasQueriedAnyCreditAccountIsRemoved = 1;
  }

  return self->_anyCreditAccountIsRemoved;
}

- (NSSet)passStyles
{
  passStyles = self->_passStyles;
  if (!passStyles)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_passStyles;
    self->_passStyles = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    passStyles = [(PDDatabaseManager *)self->_databaseManager passStyles];
    v7 = [passStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(passStyles);
          }

          v11 = self->_passStyles;
          [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = PKPassStyleToString();
          [(NSMutableSet *)v11 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [passStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    passStyles = self->_passStyles;
  }

  v13 = [(NSMutableSet *)passStyles copy];

  return v13;
}

- (NSSet)unexpiredPassStyles
{
  unexpiredPassStyles = self->_unexpiredPassStyles;
  if (!unexpiredPassStyles)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_unexpiredPassStyles;
    self->_unexpiredPassStyles = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    unexpiredPassStyles = [(PDDatabaseManager *)self->_databaseManager unexpiredPassStyles];
    v7 = [unexpiredPassStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(unexpiredPassStyles);
          }

          v11 = self->_unexpiredPassStyles;
          [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = PKPassStyleToString();
          [(NSMutableSet *)v11 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [unexpiredPassStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    unexpiredPassStyles = self->_unexpiredPassStyles;
  }

  v13 = [(NSMutableSet *)unexpiredPassStyles copy];

  return v13;
}

- (NSSet)secureElementCardTypes
{
  cardTypes = self->_cardTypes;
  if (!cardTypes)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_cardTypes;
    self->_cardTypes = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    secureElementCardTypes = [(PDDatabaseManager *)self->_databaseManager secureElementCardTypes];
    v7 = [secureElementCardTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(secureElementCardTypes);
          }

          v11 = self->_cardTypes;
          [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = PKPaymentCardTypeToString();
          [(NSMutableSet *)v11 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [secureElementCardTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    cardTypes = self->_cardTypes;
  }

  v13 = [(NSMutableSet *)cardTypes copy];

  return v13;
}

- (NSSet)unexpiredSecureElementCardTypes
{
  unexpiredCardTypes = self->_unexpiredCardTypes;
  if (!unexpiredCardTypes)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_unexpiredCardTypes;
    self->_unexpiredCardTypes = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    unexpiredSecureElementCardTypes = [(PDDatabaseManager *)self->_databaseManager unexpiredSecureElementCardTypes];
    v7 = [unexpiredSecureElementCardTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(unexpiredSecureElementCardTypes);
          }

          v11 = self->_unexpiredCardTypes;
          [*(*(&v15 + 1) + 8 * v10) integerValue];
          v12 = PKPaymentCardTypeToString();
          [(NSMutableSet *)v11 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [unexpiredSecureElementCardTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    unexpiredCardTypes = self->_unexpiredCardTypes;
  }

  v13 = [(NSMutableSet *)unexpiredCardTypes copy];

  return v13;
}

- (NSSet)transitNetworksPresent
{
  transitNetworksPresent = self->_transitNetworksPresent;
  if (!transitNetworksPresent)
  {
    v5 = [(PDDatabaseManager *)self->_databaseManager transitNetworksForPassesMatchingTransitType:0 expired:0];
    v6 = self->_transitNetworksPresent;
    self->_transitNetworksPresent = v5;

    transitNetworksPresent = self->_transitNetworksPresent;
    v2 = vars8;
  }

  return [NSSet setWithArray:transitNetworksPresent];
}

- (NSSet)transitNetworksPresentAndUnexpired
{
  transitNetworksPresentAndUnexpired = self->_transitNetworksPresentAndUnexpired;
  if (!transitNetworksPresentAndUnexpired)
  {
    v5 = [(PDDatabaseManager *)self->_databaseManager transitNetworksForPassesMatchingTransitType:0 expired:2];
    v6 = self->_transitNetworksPresentAndUnexpired;
    self->_transitNetworksPresentAndUnexpired = v5;

    transitNetworksPresentAndUnexpired = self->_transitNetworksPresentAndUnexpired;
    v2 = vars8;
  }

  return [NSSet setWithArray:transitNetworksPresentAndUnexpired];
}

- (id)memberOfMerchantIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedMerchantIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    databaseManager = self->_databaseManager;
    v7 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
    v8 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMerchantIdentifiers:v7];

    v5 = [NSNumber numberWithBool:v8];
    [(NSMutableDictionary *)self->_queriedMerchantIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
  }

  if ([v5 BOOLValue])
  {
    v9 = identifiersCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)enumeratorOfMerchantIdentifiers
{
  queriedMerchantIdentifierPresence = self->_queriedMerchantIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedMerchantIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfMapsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedMapsIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    databaseManager = self->_databaseManager;
    v7 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
    v8 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsIdentifiers:v7];

    v5 = [NSNumber numberWithBool:v8];
    [(NSMutableDictionary *)self->_queriedMapsIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
  }

  if ([v5 BOOLValue])
  {
    v9 = identifiersCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)enumeratorOfMapsIdentifiers
{
  queriedMapsIdentifierPresence = self->_queriedMapsIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedMapsIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (id)memberOfMapsBrandIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(NSMutableDictionary *)self->_queriedMapsBrandIdentifierPresence objectForKeyedSubscript:identifiersCopy];
  if (!v5)
  {
    databaseManager = self->_databaseManager;
    v7 = [[NSSet alloc] initWithObjects:{identifiersCopy, 0}];
    v8 = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v7];

    v5 = [NSNumber numberWithBool:v8];
    [(NSMutableDictionary *)self->_queriedMapsBrandIdentifierPresence setObject:v5 forKeyedSubscript:identifiersCopy];
  }

  if ([v5 BOOLValue])
  {
    v9 = identifiersCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)enumeratorOfMapsBrandIdentifiers
{
  queriedMapsBrandIdentifierPresence = self->_queriedMapsBrandIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedMapsBrandIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (BOOL)hasPaymentTransaction
{
  if (self->_hasQueriedPaymentTransaction)
  {
    hasPaymentTransaction = self->_hasPaymentTransaction;
  }

  else
  {
    hasPaymentTransaction = [(PDDatabaseManager *)self->_databaseManager hasAnyTransactionsOfType:0];
    self->_hasPaymentTransaction = hasPaymentTransaction;
    self->_hasQueriedPaymentTransaction = 1;
  }

  return hasPaymentTransaction & 1;
}

- (BOOL)hasTransitTransaction
{
  if (self->_hasQueriedTransitTransaction)
  {
    hasTransitTransaction = self->_hasTransitTransaction;
  }

  else
  {
    hasTransitTransaction = [(PDDatabaseManager *)self->_databaseManager hasAnyTransactionsOfType:2];
    self->_hasTransitTransaction = hasTransitTransaction;
    self->_hasQueriedTransitTransaction = 1;
  }

  return hasTransitTransaction & 1;
}

- (BOOL)hasTransactionOfTransactionSourceType:(id)type
{
  v4 = PKPaymentTransactionSourceFromString();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  queriedTransactionOfTransactionSourceTypePresence = self->_queriedTransactionOfTransactionSourceTypePresence;
  v7 = [NSNumber numberWithUnsignedInteger:v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100129AA0;
  v11[3] = &unk_100847918;
  v11[4] = self;
  v11[5] = v5;
  v8 = [(NSMutableDictionary *)queriedTransactionOfTransactionSourceTypePresence getOrCreateObjectForKey:v7 creationBlock:v11];

  bOOLValue = [v8 BOOLValue];
  return bOOLValue;
}

- (int64_t)defaultCreditApplicationCount
{
  result = self->_prefetchedCreditApplications;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (int64_t)currentDefaultCreditApplictionDaysSinceLastUpdated
{
  if (!self->_prefetchedCurrentCreditApplication)
  {
    return -1;
  }

  v3 = +[NSDate date];
  lastUpdated = [(PKFeatureApplication *)self->_prefetchedCurrentCreditApplication lastUpdated];
  [v3 timeIntervalSinceDate:lastUpdated];
  v6 = v5;

  return vcvtmd_s64_f64(v6 / 86400.0);
}

- (NSString)currentDefaultCreditApplicationState
{
  applicationState = [(PKFeatureApplication *)self->_prefetchedCurrentCreditApplication applicationState];

  return _PKFeatureApplicationStateToString(applicationState);
}

- (BOOL)hasPeerPaymentPassProvisioned
{
  if (!self->_hasQueriedPeerPaymentPassProvisioned)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      databaseManager = self->_databaseManager;
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v6 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:associatedPassUniqueID];
      paymentPass = [v6 paymentPass];

      devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
      self->_peerPaymentPassProvisioned = devicePrimaryPaymentApplication != 0;

      self->_hasQueriedPeerPaymentPassProvisioned = 1;
    }
  }

  return self->_peerPaymentPassProvisioned;
}

- (int64_t)peerPaymentAccountState
{
  result = self->_prefetchedPeerPaymentAccount;
  if (result)
  {
    return [result state];
  }

  return result;
}

- (int64_t)peerPaymentAccountStage
{
  result = self->_prefetchedPeerPaymentAccount;
  if (result)
  {
    return [result stage];
  }

  return result;
}

- (int64_t)peerPaymentAccountStateReason
{
  result = self->_prefetchedPeerPaymentAccount;
  if (result)
  {
    return [result stateReason];
  }

  return result;
}

- (BOOL)peerPaymentAccountHasTransaction
{
  if (!self->_hasQueriedPeerPaymentTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v5 withTransactionSource:0 withBackingData:0 limit:1];
      self->_hasPeerPaymentTransaction = [v6 count] != 0;
      self->_hasQueriedPeerPaymentTransaction = 1;
    }
  }

  return self->_hasPeerPaymentTransaction;
}

- (BOOL)peerPaymentAccountHasContactlessTransaction
{
  if (!self->_hasQueriedPeerPaymentContaclessTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      self->_hasPeerPaymentContactlessTransaction = [(PDDatabaseManager *)self->_databaseManager hasPaymentTransactionForTransactionSourceIdentifiers:v5 withTransactionSource:1];
      self->_hasQueriedPeerPaymentContaclessTransaction = 1;
    }
  }

  return self->_hasPeerPaymentContactlessTransaction;
}

- (BOOL)peerPaymentHasOnlinePurchaseTransaction
{
  if (!self->_hasQueriedPeerPaymentOnlinePurchaseTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = objc_alloc_init(PKPaymentTransactionRequest);
      [v6 setTransactionSourceIdentifiers:v5];
      [v6 setTransactionSources:&off_1008A4710];
      [v6 setTransactionTypes:&off_1008A4728];
      [v6 setLimit:1];
      self->_hasPeerPaymentOnlinePurchaseTransaction = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v6]!= 0;
      self->_hasQueriedPeerPaymentOnlinePurchaseTransaction = 1;
    }
  }

  return self->_hasPeerPaymentOnlinePurchaseTransaction;
}

- (int64_t)daysSinceLastPeerPaymentTransaction
{
  if (!self->_hasQueriedPeerPaymentDaysSinceLastTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v5 withTransactionSource:0 withBackingData:0 limit:1];
      anyObject = [v6 anyObject];

      if (anyObject)
      {
        v8 = +[NSDate date];
        transactionDate = [anyObject transactionDate];
        [v8 timeIntervalSinceDate:transactionDate];
        v11 = v10;

        self->_daysSinceLastPeerPaymentTransaction = vcvtmd_s64_f64(v11 / 86400.0);
      }

      self->_hasQueriedPeerPaymentDaysSinceLastTransaction = 1;
    }
  }

  return self->_daysSinceLastPeerPaymentTransaction;
}

- (int64_t)peerPaymentDaysSinceLastP2PTransaction
{
  if (!self->_hasQueriedPeerPaymentDaysSinceLastP2PTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      transactionSourceIdentifier = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount transactionSourceIdentifier];
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      v9 = +[NSDate date];
      v10 = [(PDDatabaseManager *)databaseManager peerPaymentCounterpartHandlesForTransactionSourceIdentifier:transactionSourceIdentifier startDate:createdDate endDate:v9];
      v11 = [NSSet setWithArray:v10];

      if (![v11 count])
      {
LABEL_16:
        self->_hasQueriedPeerPaymentDaysSinceLastP2PTransaction = 1;

        return self->_daysSinceLastPeerPaymentP2PTransaction;
      }

      v12 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v5 withPeerPaymentCounterpartHandles:v11 forPeerPaymentSubtype:1 withTransactionSource:0 withBackingData:0 limit:1];
      anyObject = [v12 anyObject];

      v14 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v5 withPeerPaymentCounterpartHandles:v11 forPeerPaymentSubtype:2 withTransactionSource:0 withBackingData:0 limit:1];
      anyObject2 = [v14 anyObject];

      if (anyObject && anyObject2)
      {
        v16 = +[NSDate date];
        transactionDate = [anyObject transactionDate];
        [v16 timeIntervalSinceDate:transactionDate];
        v19 = v18;

        v20 = vcvtmd_s64_f64(v19 / 86400.0);
        v21 = +[NSDate date];
        transactionDate2 = [anyObject2 transactionDate];
        [v21 timeIntervalSinceDate:transactionDate2];
        v24 = v23;

        v25 = vcvtmd_s64_f64(v24 / 86400.0);
        if (v20 < v25)
        {
          v25 = v20;
        }
      }

      else
      {
        if (anyObject)
        {
          v26 = +[NSDate date];
          v27 = anyObject;
        }

        else
        {
          if (!anyObject2)
          {
LABEL_15:

            goto LABEL_16;
          }

          v26 = +[NSDate date];
          v27 = anyObject2;
        }

        transactionDate3 = [v27 transactionDate];
        [v26 timeIntervalSinceDate:transactionDate3];
        v30 = v29;

        v25 = vcvtmd_s64_f64(v30 / 86400.0);
      }

      self->_daysSinceLastPeerPaymentP2PTransaction = v25;
      goto LABEL_15;
    }
  }

  return self->_daysSinceLastPeerPaymentP2PTransaction;
}

- (int64_t)peerPaymentDaysSinceLastP2PTransactionToAnyParticipant
{
  if (!self->_hasQueriedPeerPaymentDaysSinceLastP2PTransactionToAnyParticipant)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      if (self->_prefetchedFamilyMembers)
      {
        associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
        v32 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:?];
        v4 = objc_alloc_init(NSMutableSet);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        associatedAccountInformation = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount associatedAccountInformation];
        associatedAccounts = [associatedAccountInformation associatedAccounts];

        v7 = [associatedAccounts countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v39;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v39 != v9)
              {
                objc_enumerationMutation(associatedAccounts);
              }

              v11 = *(*(&v38 + 1) + 8 * i);
              if ([v11 role] == 1)
              {
                altDSID = [v11 altDSID];
                [v4 addObject:altDSID];
              }
            }

            v8 = [associatedAccounts countByEnumeratingWithState:&v38 objects:v43 count:16];
          }

          while (v8);
        }

        v13 = objc_alloc_init(NSMutableSet);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v14 = self->_prefetchedFamilyMembers;
        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * j);
              if (([v19 isMe] & 1) == 0)
              {
                altDSID2 = [v19 altDSID];
                v21 = [v4 containsObject:altDSID2];

                if (v21)
                {
                  appleID = [v19 appleID];
                  [v13 addObject:appleID];

                  appleIDAliases = [v19 appleIDAliases];
                  allObjects = [appleIDAliases allObjects];
                  [v13 addObjectsFromArray:allObjects];
                }
              }
            }

            v16 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v16);
        }

        if ([v13 count])
        {
          v25 = [(PDDatabaseManager *)self->_databaseManager transactionsForTransactionSourceIdentifiers:v32 withPeerPaymentCounterpartHandles:v13 forPeerPaymentSubtype:1 withTransactionSource:0 withBackingData:0 limit:1];
          anyObject = [v25 anyObject];

          if (anyObject)
          {
            v27 = +[NSDate date];
            transactionDate = [anyObject transactionDate];
            [v27 timeIntervalSinceDate:transactionDate];
            v30 = v29;

            self->_peerPaymentDaysSinceLastP2PTransactionToAnyParticipant = vcvtmd_s64_f64(v30 / 86400.0);
          }
        }

        self->_hasQueriedPeerPaymentDaysSinceLastP2PTransactionToAnyParticipant = 1;
      }
    }
  }

  return self->_peerPaymentDaysSinceLastP2PTransactionToAnyParticipant;
}

- (BOOL)peerPaymentAccountHasBalance
{
  prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
  if (!prefetchedPeerPaymentAccount)
  {
    return 0;
  }

  currentBalance = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount currentBalance];
  amount = [currentBalance amount];

  v5 = +[NSDecimalNumber zero];
  v6 = [amount compare:v5] == 1;

  return v6;
}

- (int64_t)peerPaymentAccountBalanceBase
{
  prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
  if (!prefetchedPeerPaymentAccount)
  {
    return 0;
  }

  currentBalance = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount currentBalance];
  currency = [currentBalance currency];
  v5 = [currency isEqualToString:@"USD"];

  if (v5)
  {
    amountByConvertingToSmallestCommonCurrencyUnit = [currentBalance amountByConvertingToSmallestCommonCurrencyUnit];
    longLongValue = [amountByConvertingToSmallestCommonCurrencyUnit longLongValue];

    v8 = 50;
    v9 = 20;
    if (longLongValue <= 1999)
    {
      v9 = 0;
    }

    if (longLongValue <= 4999)
    {
      v8 = v9;
    }

    if (longLongValue <= 9999)
    {
      v10 = v8;
    }

    else
    {
      v10 = 100;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)peerPaymentHasP2PTransaction
{
  if (!self->_hasQueriedPeerPaymentHasP2PTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      v8 = +[NSDate date];
      v9 = [(PDDatabaseManager *)databaseManager peerPaymentTransactionServiceIdentifiersForTransactionSourceIdentifiers:v5 withPeerPaymentSubtype:1 withTransactionSource:0 withBackingData:0 startDate:createdDate endDate:v8];
      if ([v9 count])
      {
        self->_hasPeerPaymentP2PTransaction = 1;
      }

      else
      {
        v10 = self->_databaseManager;
        createdDate2 = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
        v12 = +[NSDate date];
        v13 = [(PDDatabaseManager *)v10 peerPaymentTransactionServiceIdentifiersForTransactionSourceIdentifiers:v5 withPeerPaymentSubtype:2 withTransactionSource:0 withBackingData:0 startDate:createdDate2 endDate:v12];
        self->_hasPeerPaymentP2PTransaction = [v13 count] != 0;
      }

      self->_hasQueriedPeerPaymentHasP2PTransaction = 1;
    }
  }

  return self->_hasPeerPaymentP2PTransaction;
}

- (BOOL)peerPaymentHasAutoReloadEnabled
{
  if (!self->_hasQueriedPeerPaymentHasAutoReloadEnabled)
  {
    v3 = [(PDDatabaseManager *)self->_databaseManager peerPaymentRecurringPaymentsWithType:3];
    self->_hasPeerPaymentAutoReloadEnabled = [v3 count] != 0;
    self->_hasQueriedPeerPaymentHasAutoReloadEnabled = 1;
  }

  return self->_hasPeerPaymentAutoReloadEnabled;
}

- (BOOL)peerPaymentHasSetupRecurringP2PPayment
{
  if (!self->_hasQueriedPeerPaymentHasSetupRecurringP2PPayment)
  {
    [(PDDatabaseManager *)self->_databaseManager peerPaymentRecurringPaymentsWithType:1];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) sentByMe])
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    self->_hasPeerPaymentSetupRecurringP2PPayment = v4;
    self->_hasQueriedPeerPaymentHasSetupRecurringP2PPayment = 1;
  }

  return self->_hasPeerPaymentSetupRecurringP2PPayment;
}

- (BOOL)peerPaymentHasSetupRecurringP2PPaymentForAnyParticipant
{
  if (!self->_hasQueriedPeerPaymentHasSetupRecurringP2PPaymentForAnyParticipant && self->_prefetchedPeerPaymentAccount)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    associatedAccountInformation = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount associatedAccountInformation];
    associatedAccounts = [associatedAccountInformation associatedAccounts];

    v6 = [associatedAccounts countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(associatedAccounts);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if ([v10 role] == 1)
          {
            altDSID = [v10 altDSID];
            [v3 addObject:altDSID];
          }
        }

        v7 = [associatedAccounts countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    v12 = [(PDDatabaseManager *)self->_databaseManager peerPaymentRecurringPaymentsWithType:1];
    self->_hasPeerPaymentSetupRecurringP2PPaymentForAnyParticipant = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * j);
          recipientAltDSID = [v18 recipientAltDSID];
          if ([v3 containsObject:recipientAltDSID])
          {
            sentByMe = [v18 sentByMe];

            if (sentByMe)
            {
              self->_hasPeerPaymentSetupRecurringP2PPaymentForAnyParticipant = 1;
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

LABEL_23:

    self->_hasQueriedPeerPaymentHasSetupRecurringP2PPaymentForAnyParticipant = 1;
  }

  return self->_hasPeerPaymentSetupRecurringP2PPaymentForAnyParticipant;
}

- (int64_t)peerPaymentDaysSinceLastPurchaseTransaction
{
  if (!self->_hasQueriedPeerPaymentDaysSinceLastPurchaseTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = objc_alloc_init(PKPaymentTransactionRequest);
      [v6 setTransactionSourceIdentifiers:v5];
      [v6 setTransactionTypes:&off_1008A4740];
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      [v6 setStartDate:createdDate];

      v8 = +[NSDate date];
      [v6 setEndDate:v8];

      [v6 setLimit:1];
      v9 = [(PDDatabaseManager *)self->_databaseManager transactionsForRequest:v6];
      firstObject = [v9 firstObject];

      if (firstObject)
      {
        v11 = +[NSDate date];
        transactionDate = [firstObject transactionDate];
        [v11 timeIntervalSinceDate:transactionDate];
        v14 = v13;

        self->_peerPaymentDaysSinceLastPurchaseTransaction = vcvtmd_s64_f64(v14 / 86400.0);
      }

      self->_hasQueriedPeerPaymentDaysSinceLastPurchaseTransaction = 1;
    }
  }

  return self->_peerPaymentDaysSinceLastPurchaseTransaction;
}

- (BOOL)peerPaymentHasSentP2PPayment
{
  if (!self->_hasQueriedPeerPaymentHasSentP2PPayment)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      v8 = +[NSDate date];
      v9 = [(PDDatabaseManager *)databaseManager peerPaymentTransactionServiceIdentifiersForTransactionSourceIdentifiers:v5 withPeerPaymentSubtype:1 withTransactionSource:0 withBackingData:0 startDate:createdDate endDate:v8];
      self->_hasSentPeerPaymentP2PPayment = [v9 count] != 0;

      self->_hasQueriedPeerPaymentHasSentP2PPayment = 1;
    }
  }

  return self->_hasSentPeerPaymentP2PPayment;
}

- (BOOL)peerPaymentHasReceivedP2PPayment
{
  if (!self->_hasQueriedPeerPaymentHasReceivedP2PPayment)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      databaseManager = self->_databaseManager;
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      v8 = +[NSDate date];
      v9 = [(PDDatabaseManager *)databaseManager peerPaymentTransactionServiceIdentifiersForTransactionSourceIdentifiers:v5 withPeerPaymentSubtype:2 withTransactionSource:0 withBackingData:0 startDate:createdDate endDate:v8];
      self->_hasReceivedPeerPaymentP2PPayment = [v9 count] != 0;

      self->_hasQueriedPeerPaymentHasReceivedP2PPayment = 1;
    }
  }

  return self->_hasReceivedPeerPaymentP2PPayment;
}

- (BOOL)peerPaymentHasSentDeviceTapTransaction
{
  if (!self->_hasQueriedPeerPaymentHasSentDeviceTapTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      if ([v5 count])
      {
        v6 = objc_alloc_init(PKPaymentTransactionRequest);
        [v6 setTransactionSourceIdentifiers:v5];
        [v6 setPeerPaymentSubType:1];
        [v6 setPeerPaymentPaymentMode:2];
        createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
        [v6 setStartDate:createdDate];

        v8 = +[NSDate date];
        [v6 setEndDate:v8];

        self->_hasSentPeerPaymentDeviceTapTransaction = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v6]> 0;
        self->_hasQueriedPeerPaymentHasSentDeviceTapTransaction = 1;
      }
    }
  }

  return self->_hasSentPeerPaymentDeviceTapTransaction;
}

- (BOOL)peerPaymentHasReceivedDeviceTapTransactions
{
  if (!self->_hasQueriedPeerPaymentHasReceivedDeviceTapTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      if ([v5 count])
      {
        v6 = objc_alloc_init(PKPaymentTransactionRequest);
        [v6 setTransactionSourceIdentifiers:v5];
        [v6 setPeerPaymentSubType:2];
        [v6 setPeerPaymentPaymentMode:2];
        createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
        [v6 setStartDate:createdDate];

        v8 = +[NSDate date];
        [v6 setEndDate:v8];

        self->_hasReceivedPeerPaymentDeviceTapTransaction = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v6]> 0;
        self->_hasQueriedPeerPaymentHasReceivedDeviceTapTransaction = 1;
      }
    }
  }

  return self->_hasReceivedPeerPaymentDeviceTapTransaction;
}

- (int64_t)peerPaymentNumberOfDeviceTapTransactions
{
  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount associatedPassUniqueID];
  v4 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
  if ([v4 count])
  {
    v5 = objc_alloc_init(PKPaymentTransactionRequest);
    [v5 setTransactionSourceIdentifiers:v4];
    [v5 setPeerPaymentPaymentMode:2];
    v6 = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v5];
    v7 = 3;
    v8 = 2;
    if (v6 <= 2)
    {
      v8 = v6 > 0;
    }

    if (v6 <= 5)
    {
      v7 = v8;
    }

    if (v6 <= 9)
    {
      v9 = v7;
    }

    else
    {
      v9 = 4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)daysSinceLastDeviceTapSendTransaction
{
  if (!self->_hasQueriedPeerPaymentDaysSinceLastDeviceTapSendTransaction)
  {
    prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
    if (prefetchedPeerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = objc_alloc_init(PKPaymentTransactionRequest);
      [v6 setTransactionSourceIdentifiers:v5];
      [v6 setPeerPaymentSubType:1];
      [v6 setPeerPaymentPaymentMode:2];
      createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
      [v6 setStartDate:createdDate];

      v8 = +[NSDate date];
      [v6 setEndDate:v8];

      [v6 setLimit:1];
      v9 = [(PDDatabaseManager *)self->_databaseManager transactionsForRequest:v6];
      firstObject = [v9 firstObject];

      if (firstObject)
      {
        v11 = +[NSDate date];
        transactionDate = [firstObject transactionDate];
        [v11 timeIntervalSinceDate:transactionDate];
        v14 = v13;

        self->_peerPaymentDaysSinceLastDeviceTapSendTransaction = vcvtmd_s64_f64(v14 / 86400.0);
      }

      self->_hasQueriedPeerPaymentDaysSinceLastDeviceTapSendTransaction = 1;
    }
  }

  return self->_peerPaymentDaysSinceLastDeviceTapSendTransaction;
}

- (int64_t)peerPaymentFamilyParticipantAccounts
{
  prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
  if (!prefetchedPeerPaymentAccount)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  associatedAccountInformation = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedAccountInformation];
  associatedAccounts = [associatedAccountInformation associatedAccounts];

  v5 = [associatedAccounts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(associatedAccounts);
      }

      if ([*(*(&v11 + 1) + 8 * v9) role] == 1)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [associatedAccounts countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (unint64_t)peerPaymentAccountRole
{
  result = self->_prefetchedPeerPaymentAccount;
  if (result)
  {
    return [result role];
  }

  return result;
}

- (int64_t)peerPaymentAccountDaysSinceCreatedDate
{
  createdDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount createdDate];
  v4 = createdDate;
  if (self->_prefetchedPeerPaymentAccount)
  {
    v5 = createdDate == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = -1;
  }

  else
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 components:16 fromDate:v4 toDate:v7 options:0];
    v9 = [v8 day];
  }

  return v9;
}

- (int64_t)peerPaymentAccountDaysSinceIdentifiedDate
{
  identifiedDate = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount identifiedDate];
  v4 = identifiedDate;
  if (self->_prefetchedPeerPaymentAccount)
  {
    v5 = identifiedDate == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = -1;
  }

  else
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:v4];
    v8 = v7;

    v9 = vcvtmd_s64_f64(v8 / 86400.0);
  }

  return v9;
}

- (int64_t)daysSinceParticipantPeerPaymentAccountIdentifiedDate
{
  prefetchedPeerPaymentAccount = self->_prefetchedPeerPaymentAccount;
  if (prefetchedPeerPaymentAccount)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    associatedAccountInformation = [(PKPeerPaymentAccount *)prefetchedPeerPaymentAccount associatedAccountInformation];
    associatedAccounts = [associatedAccountInformation associatedAccounts];

    v5 = [associatedAccounts countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v5)
    {
      v17 = -1;
      goto LABEL_18;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(associatedAccounts);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 role] == 1)
        {
          identifiedDate = [v10 identifiedDate];
          v12 = identifiedDate;
          if (!v7 || [identifiedDate compare:v7] == 1)
          {
            v13 = v12;

            v7 = v13;
          }
        }
      }

      v6 = [associatedAccounts countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);

    if (v7)
    {
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:v7];
      v16 = v15;

      v17 = vcvtmd_s64_f64(v16 / 86400.0);
      associatedAccounts = v7;
LABEL_18:

      return v17;
    }
  }

  return -1;
}

- (BOOL)peerPaymentAccountHasSentMoneyToAnyParticipant
{
  if (self->_hasQueriedPeerPaymentHasSentMoneyToAnyParticipant || !self->_prefetchedPeerPaymentAccount || (prefetchedFamilyMembers = self->_prefetchedFamilyMembers) == 0)
  {
    return self->_hasSentMoneyToAnyParticipant;
  }

  self->_hasQueriedPeerPaymentHasSentMoneyToAnyParticipant = 1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = prefetchedFamilyMembers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = *v33;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if ([v8 isMe])
        {
          v9 = [NSMutableSet alloc];
          appleIDAliases = [v8 appleIDAliases];
          v5 = [v9 initWithSet:appleIDAliases];

          appleID = [v8 appleID];
          [v5 addObject:appleID];

          goto LABEL_14;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if ([v5 count])
  {
    v27 = v5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    associatedAccountInformation = [(PKPeerPaymentAccount *)self->_prefetchedPeerPaymentAccount associatedAccountInformation];
    associatedAccounts = [associatedAccountInformation associatedAccounts];

    v14 = [associatedAccounts countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(associatedAccounts);
          }

          v18 = *(*(&v28 + 1) + 8 * j);
          if ([v18 role] == 1)
          {
            databaseManager = self->_databaseManager;
            transactionSourceIdentifier = [v18 transactionSourceIdentifier];
            v21 = [NSSet setWithObject:transactionSourceIdentifier];
            createdDate = [v18 createdDate];
            v23 = +[NSDate date];
            v24 = [(PDDatabaseManager *)databaseManager transactionsCountForTransactionSourceIdentifiers:v21 withPeerPaymentCounterpartHandles:v27 forPeerPaymentSubtype:2 startDate:createdDate endDate:v23];

            if (v24)
            {
              self->_hasSentMoneyToAnyParticipant = 1;
              goto LABEL_27;
            }
          }
        }

        v15 = [associatedAccounts countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    return self->_hasSentMoneyToAnyParticipant;
  }

  return 0;
}

- (BOOL)familyCircleFamilyOrganizer
{
  if (!self->_hasQueriedFamilyCircleFamilyOrganizer)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = prefetchedFamilyMembers;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = *v12;
LABEL_5:
        v7 = 0;
        while (1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if ([v8 isMe])
          {
            break;
          }

          if (v5 == ++v7)
          {
            v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (v5)
            {
              goto LABEL_5;
            }

            goto LABEL_14;
          }
        }

        v9 = v8;

        if (v9)
        {
          LOBYTE(v5) = [(NSArray *)v9 isOrganizer];
          v4 = v9;
          goto LABEL_14;
        }

        LOBYTE(v5) = 0;
      }

      else
      {
LABEL_14:
      }

      self->_familyCircleFamilyOrganizer = v5;
      self->_hasQueriedFamilyCircleFamilyOrganizer = 1;
    }
  }

  return self->_familyCircleFamilyOrganizer;
}

- (BOOL)familyCircleParent
{
  if (!self->_hasQueriedFamilyCircleParent)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = prefetchedFamilyMembers;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            if ([v9 isMe])
            {
              v11 = v9;

              self->_hasQueriedFamilyCircleParent = 1;
              if (v11)
              {
                isParent = [v11 isParent];
              }

              else
              {
                isParent = 0;
              }

              goto LABEL_15;
            }
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      isParent = 0;
      self->_hasQueriedFamilyCircleParent = 1;
LABEL_15:
      self->_familyCircleParent = isParent;
    }
  }

  return self->_familyCircleParent;
}

- (BOOL)familyCircleHasFamily
{
  if (!self->_hasQueriedFamilyCircleHasFamily)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      self->_familyCircleHasFamily = [(NSArray *)prefetchedFamilyMembers count]!= 0;
      self->_hasQueriedFamilyCircleHasFamily = 1;
    }
  }

  return self->_familyCircleHasFamily;
}

- (int64_t)familyCircleCurrentUserAge
{
  if (!self->_hasQueriedFamilyCircleCurrentUserAge)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = prefetchedFamilyMembers;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v18 + 1) + 8 * i);
            if ([v9 isMe])
            {
              v10 = v9;

              self->_hasQueriedFamilyCircleCurrentUserAge = 1;
              if (v10)
              {
                year = [v10 age];
                if (!year)
                {
                  dateOfBirth = [v10 dateOfBirth];
                  v13 = PKLogFacilityTypeGetObject();
                  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
                  if (dateOfBirth)
                  {
                    if (v14)
                    {
                      *buf = 138412290;
                      v23 = dateOfBirth;
                      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The current users age is zero. Trying to figure out age from date of birth %@", buf, 0xCu);
                    }

                    v13 = +[NSCalendar currentCalendar];
                    v15 = +[NSDate date];
                    v16 = [v13 components:4 fromDate:dateOfBirth toDate:v15 options:0];
                    year = [v16 year];
                  }

                  else
                  {
                    if (v14)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The current users age is zero and there is no date of birth defined", buf, 2u);
                    }

                    year = 0;
                  }
                }

                if (year >= 1)
                {
                  self->_familyCircleCurrentUserAge = year;
                }
              }

              goto LABEL_24;
            }
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v10 = 0;
      self->_hasQueriedFamilyCircleCurrentUserAge = 1;
LABEL_24:
    }
  }

  return self->_familyCircleCurrentUserAge;
}

- (int64_t)familyCircleMembersUnderAge
{
  if (!self->_hasQueriedFamilyCircleMembersUnderAge && [(NSArray *)self->_prefetchedFamilyMembers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_prefetchedFamilyMembers;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 age];
          v6 += ((v10 - 1) < 0x11) & ~[v9 isMe];
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    self->_familyCircleMembersUnderAge = v6;
    self->_hasQueriedFamilyCircleMembersUnderAge = 1;
  }

  return self->_familyCircleMembersUnderAge;
}

- (int64_t)familyCircleMembersCount
{
  if (!self->_hasQueriedfamilyCircleMembersCount)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      self->_familyCircleMembersCount = [(NSArray *)prefetchedFamilyMembers count];
      self->_hasQueriedfamilyCircleMembersCount = 1;
    }
  }

  return self->_familyCircleMembersCount;
}

- (int64_t)familyCircleDaysSinceNewestJoinedDate
{
  prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
  if (prefetchedFamilyMembers && !self->_hasQueriedFamilyCircleDaysSinceNewestJoinedDate)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = prefetchedFamilyMembers;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          joinedDate = [*(*(&v16 + 1) + 8 * i) joinedDate];
          v11 = joinedDate;
          if (!v7 || [joinedDate compare:v7] == 1)
          {
            v12 = v11;

            v7 = v12;
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);

      if (!v7)
      {
        goto LABEL_17;
      }

      v4 = +[NSCalendar currentCalendar];
      v13 = +[NSDate date];
      v14 = [(NSArray *)v4 components:16 fromDate:v7 toDate:v13 options:0];
      self->_familyCircleDaysSinceNewestJoinedDate = [v14 day];
    }

    else
    {
      v7 = 0;
    }

LABEL_17:
    self->_hasQueriedFamilyCircleDaysSinceNewestJoinedDate = 1;
  }

  return self->_familyCircleDaysSinceNewestJoinedDate;
}

- (int64_t)familyCircleMinimumMemberAge
{
  if (!self->_hasQueriedFamilyCircleMinimumMemberAge)
  {
    prefetchedFamilyMembers = self->_prefetchedFamilyMembers;
    if (prefetchedFamilyMembers)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = prefetchedFamilyMembers;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v15;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = [*(*(&v14 + 1) + 8 * i) age];
            if (v10 >= 1)
            {
              v11 = v10;
              if (!v7 || v10 < [v7 integerValue])
              {
                v12 = [NSNumber numberWithInteger:v11];

                v7 = v12;
              }
            }
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);

        if (v7)
        {
          self->_familyCircleMinimumMemberAge = [v7 integerValue];
        }
      }

      else
      {

        v7 = 0;
      }

      self->_hasQueriedFamilyCircleMinimumMemberAge = 1;
    }
  }

  return self->_familyCircleMinimumMemberAge;
}

- (int64_t)familyCircleAgeCategory
{
  if (self->_prefetchedFamilyMemberType)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (id)discoveryItemStatus
{
  discoveryItemStatus = self->_discoveryItemStatus;
  if (!discoveryItemStatus)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_discoveryItemStatus;
    self->_discoveryItemStatus = v4;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    discoveryItems = [(PDDatabaseManager *)self->_databaseManager discoveryItems];
    v7 = [discoveryItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(discoveryItems);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 status]);
          v13 = self->_discoveryItemStatus;
          identifier = [v11 identifier];
          [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:identifier];
        }

        v8 = [discoveryItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    discoveryItemStatus = self->_discoveryItemStatus;
  }

  v15 = [(NSMutableDictionary *)discoveryItemStatus copy];

  return v15;
}

- (NSSet)discoveryItemsWithActiveStatus
{
  v3 = [NSNumber numberWithInt:2];
  discoveryItemStatus = [(PDUserEvaluationEnvironment *)self discoveryItemStatus];
  v5 = [discoveryItemStatus allKeysForObject:v3];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)discoveryItemsWithActionedStatus
{
  v3 = [NSNumber numberWithInt:3];
  discoveryItemStatus = [(PDUserEvaluationEnvironment *)self discoveryItemStatus];
  v5 = [discoveryItemStatus allKeysForObject:v3];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)discoveryItemsWithDismissedStatus
{
  v3 = [NSNumber numberWithInt:4];
  discoveryItemStatus = [(PDUserEvaluationEnvironment *)self discoveryItemStatus];
  v5 = [discoveryItemStatus allKeysForObject:v3];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)discoveryItemsWithWaitingForTriggerStatus
{
  v3 = [NSNumber numberWithInt:5];
  discoveryItemStatus = [(PDUserEvaluationEnvironment *)self discoveryItemStatus];
  v5 = [discoveryItemStatus allKeysForObject:v3];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (NSSet)discoveryItemsExpanded
{
  discoveryItemsExpanded = self->_discoveryItemsExpanded;
  if (!discoveryItemsExpanded)
  {
    identifiersOfTappedDiscoveryItems = [(PDDiscoveryManager *)self->_discoveryManager identifiersOfTappedDiscoveryItems];
    v5 = identifiersOfTappedDiscoveryItems;
    if (identifiersOfTappedDiscoveryItems)
    {
      v6 = identifiersOfTappedDiscoveryItems;
    }

    else
    {
      v6 = objc_alloc_init(NSSet);
    }

    v7 = self->_discoveryItemsExpanded;
    self->_discoveryItemsExpanded = v6;

    discoveryItemsExpanded = self->_discoveryItemsExpanded;
  }

  return discoveryItemsExpanded;
}

- (NSSet)discoveryItemsDismissed
{
  discoveryItemsDismissed = self->_discoveryItemsDismissed;
  if (!discoveryItemsDismissed)
  {
    identifiersOfDismissedDiscoveryItems = [(PDDiscoveryManager *)self->_discoveryManager identifiersOfDismissedDiscoveryItems];
    v5 = identifiersOfDismissedDiscoveryItems;
    if (identifiersOfDismissedDiscoveryItems)
    {
      v6 = identifiersOfDismissedDiscoveryItems;
    }

    else
    {
      v6 = objc_alloc_init(NSSet);
    }

    v7 = self->_discoveryItemsDismissed;
    self->_discoveryItemsDismissed = v6;

    discoveryItemsDismissed = self->_discoveryItemsDismissed;
  }

  return discoveryItemsDismissed;
}

- (NSSet)discoveryCTAsTapped
{
  discoveryCTAsTapped = self->_discoveryCTAsTapped;
  if (!discoveryCTAsTapped)
  {
    identifiersOfTappedDiscoveryItems = [(PDDiscoveryManager *)self->_discoveryManager identifiersOfTappedDiscoveryItems];
    v5 = identifiersOfTappedDiscoveryItems;
    if (identifiersOfTappedDiscoveryItems)
    {
      v6 = identifiersOfTappedDiscoveryItems;
    }

    else
    {
      v6 = objc_alloc_init(NSSet);
    }

    v7 = self->_discoveryCTAsTapped;
    self->_discoveryCTAsTapped = v6;

    discoveryCTAsTapped = self->_discoveryCTAsTapped;
  }

  return discoveryCTAsTapped;
}

- (NSSet)discoveryCTAsCompleted
{
  discoveryCTAsCompleted = self->_discoveryCTAsCompleted;
  if (!discoveryCTAsCompleted)
  {
    identifiersOfCompletedDiscoveryItems = [(PDDiscoveryManager *)self->_discoveryManager identifiersOfCompletedDiscoveryItems];
    v5 = identifiersOfCompletedDiscoveryItems;
    if (identifiersOfCompletedDiscoveryItems)
    {
      v6 = identifiersOfCompletedDiscoveryItems;
    }

    else
    {
      v6 = objc_alloc_init(NSSet);
    }

    v7 = self->_discoveryCTAsCompleted;
    self->_discoveryCTAsCompleted = v6;

    discoveryCTAsCompleted = self->_discoveryCTAsCompleted;
  }

  return discoveryCTAsCompleted;
}

- (int64_t)savingsAccountDaysSinceCreatedDate
{
  createdDate = [(PKAccount *)self->_prefetchedSavingsAccount createdDate];
  v4 = createdDate;
  if (self->_prefetchedSavingsAccount)
  {
    v5 = createdDate == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = -1;
  }

  else
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 components:16 fromDate:v4 toDate:v7 options:0];
    v9 = [v8 day];
  }

  return v9;
}

- (BOOL)savingsAccountHasExternalTransferIn
{
  if (self->_hasQueriedSavingsAccountExternalTransferInTransaction)
  {
    hasSavingsAccountExternalTransferInTransaction = self->_hasSavingsAccountExternalTransferInTransaction;
  }

  else
  {
    hasSavingsAccountExternalTransferInTransaction = [(PDUserEvaluationEnvironment *)self _hasSavingsAccountAccountTransactionOfTransactionType:6 fundingSourceTypes:&off_1008A4758];
    self->_hasSavingsAccountExternalTransferInTransaction = hasSavingsAccountExternalTransferInTransaction;
    self->_hasQueriedSavingsAccountExternalTransferInTransaction = 1;
  }

  return hasSavingsAccountExternalTransferInTransaction & 1;
}

- (BOOL)savingsAccountHasExternalTransferOut
{
  if (self->_hasQueriedSavingsAccountExternalTransferOutTransaction)
  {
    hasSavingsAccountExternalTransferOutTransaction = self->_hasSavingsAccountExternalTransferOutTransaction;
  }

  else
  {
    hasSavingsAccountExternalTransferOutTransaction = [(PDUserEvaluationEnvironment *)self _hasSavingsAccountAccountTransactionOfTransactionType:5 fundingSourceTypes:&off_1008A4770];
    self->_hasSavingsAccountExternalTransferOutTransaction = hasSavingsAccountExternalTransferOutTransaction;
    self->_hasQueriedSavingsAccountExternalTransferOutTransaction = 1;
  }

  return hasSavingsAccountExternalTransferOutTransaction & 1;
}

- (BOOL)savingsAccountHasCashTransferIn
{
  if (self->_hasQueriedSavingsAccountCashTransferInTransaction)
  {
    hasSavingsAccountCashTransferInTransaction = self->_hasSavingsAccountCashTransferInTransaction;
  }

  else
  {
    hasSavingsAccountCashTransferInTransaction = [(PDUserEvaluationEnvironment *)self _hasSavingsAccountAccountTransactionOfTransactionType:6 fundingSourceTypes:&off_1008A4788];
    self->_hasSavingsAccountCashTransferInTransaction = hasSavingsAccountCashTransferInTransaction;
    self->_hasQueriedSavingsAccountCashTransferInTransaction = 1;
  }

  return hasSavingsAccountCashTransferInTransaction & 1;
}

- (int64_t)savingsAccountBinnedBalance
{
  prefetchedSavingsAccount = self->_prefetchedSavingsAccount;
  if (!prefetchedSavingsAccount)
  {
    return -1;
  }

  savingsDetails = [(PKAccount *)prefetchedSavingsAccount savingsDetails];
  accountSummary = [savingsDetails accountSummary];
  currentBalance = [accountSummary currentBalance];

  currencyCode = [savingsDetails currencyCode];
  v7 = currencyCode;
  if (currentBalance && [currencyCode isEqualToString:@"USD"])
  {
    v8 = PKCurrencyAmountMake();
    amountByConvertingToSmallestCommonCurrencyUnit = [v8 amountByConvertingToSmallestCommonCurrencyUnit];
    longLongValue = [amountByConvertingToSmallestCommonCurrencyUnit longLongValue];

    if (longLongValue <= 14999999)
    {
      if (longLongValue <= 9999999)
      {
        if (longLongValue <= 7499999)
        {
          if (longLongValue <= 4999999)
          {
            if (longLongValue <= 1999999)
            {
              if (longLongValue <= 999999)
              {
                if (longLongValue <= 499999)
                {
                  if (longLongValue <= 399999)
                  {
                    if (longLongValue <= 299999)
                    {
                      if (longLongValue <= 199999)
                      {
                        if (longLongValue <= 149999)
                        {
                          if (longLongValue <= 99999)
                          {
                            if (longLongValue <= 74999)
                            {
                              if (longLongValue <= 49999)
                              {
                                if (longLongValue <= 24999)
                                {
                                  v11 = 0;
                                }

                                else
                                {
                                  v11 = 250;
                                }
                              }

                              else
                              {
                                v11 = 500;
                              }
                            }

                            else
                            {
                              v11 = 750;
                            }
                          }

                          else
                          {
                            v11 = 1000;
                          }
                        }

                        else
                        {
                          v11 = 1500;
                        }
                      }

                      else
                      {
                        v11 = 2000;
                      }
                    }

                    else
                    {
                      v11 = 3000;
                    }
                  }

                  else
                  {
                    v11 = 4000;
                  }
                }

                else
                {
                  v11 = 5000;
                }
              }

              else
              {
                v11 = 10000;
              }
            }

            else
            {
              v11 = 20000;
            }
          }

          else
          {
            v11 = 50000;
          }
        }

        else
        {
          v11 = 75000;
        }
      }

      else
      {
        v11 = 100000;
      }
    }

    else
    {
      v11 = 150000;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (NSDecimalNumber)savingsAccountAPY
{
  redeemRewardsFeatureDescriptor = [(PKAccount *)self->_prefetchedDefaultCreditAccount redeemRewardsFeatureDescriptor];
  savingsAPY = [redeemRewardsFeatureDescriptor savingsAPY];
  v4 = savingsAPY;
  if (savingsAPY)
  {
    v5 = savingsAPY;
  }

  else
  {
    v5 = [[NSDecimalNumber alloc] initWithInteger:-1];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_hasPaymentOfferCriteriaOfType:(unint64_t)type
{
  prefetchedPaymentOfferCatalog = self->_prefetchedPaymentOfferCatalog;
  if (!prefetchedPaymentOfferCatalog)
  {
    return 0;
  }

  catalog = [(PKPaymentOfferCatalog *)prefetchedPaymentOfferCatalog catalog];
  allObjects = [catalog allObjects];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012D0D8;
  v9[3] = &unk_100847938;
  v9[4] = type;
  v7 = [allObjects pk_containsObjectPassingTest:v9];

  return v7;
}

- (BOOL)hasBankConnectEligibleCard
{
  bankConnectEvaluationManager = self->_bankConnectEvaluationManager;
  secureElementPassSerialNumbers = [(PDDatabaseManager *)self->_databaseManager secureElementPassSerialNumbers];
  LOBYTE(bankConnectEvaluationManager) = [(FKBankConnectEvaluationManager *)bankConnectEvaluationManager hasAnyEligibleCardWithSerialNumbers:secureElementPassSerialNumbers];

  return bankConnectEvaluationManager;
}

- (BOOL)hasAnyConnectedCardWithBankConnect
{
  bankConnectEvaluationManager = self->_bankConnectEvaluationManager;
  secureElementPassPrimaryAccountIdentifiers = [(PDDatabaseManager *)self->_databaseManager secureElementPassPrimaryAccountIdentifiers];
  LOBYTE(bankConnectEvaluationManager) = [(FKBankConnectEvaluationManager *)bankConnectEvaluationManager hasAnyConnectedCardWithPrimaryAccountIdentifiers:secureElementPassPrimaryAccountIdentifiers];

  return bankConnectEvaluationManager;
}

- (BOOL)hasAppleAccountCardProvisioned
{
  if (!self->_hasQueriedHasAppleAccountCard)
  {
    prefetchedAppleBalanceAccount = self->_prefetchedAppleBalanceAccount;
    if (prefetchedAppleBalanceAccount)
    {
      self->_hasQueriedHasAppleAccountCard = 1;
      associatedPassUniqueID = [(PKAccount *)prefetchedAppleBalanceAccount associatedPassUniqueID];
      self->_hasAppleAccountCard = [(PDDatabaseManager *)self->_databaseManager passExistsWithUniqueID:associatedPassUniqueID];
    }
  }

  return self->_hasAppleAccountCard;
}

- (int64_t)daysSinceAppleAccountInStoreTopUp
{
  if (!self->_hasQueriedDaysSinceAppleAccountInStoreTopUp)
  {
    self->_hasQueriedDaysSinceAppleAccountInStoreTopUp = 1;
    self->_daysSinceAppleAccountInStoreTopUp = -1;
    prefetchedAppleBalanceAccount = self->_prefetchedAppleBalanceAccount;
    if (prefetchedAppleBalanceAccount)
    {
      associatedPassUniqueID = [(PKAccount *)prefetchedAppleBalanceAccount associatedPassUniqueID];
      v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v6 = objc_alloc_init(PKPaymentTransactionRequest);
      [v6 setTransactionSourceIdentifiers:v5];
      [v6 setTransactionTypes:&off_1008A47A0];
      [v6 setTopUpSubtype:6];
      [v6 setLimit:1];
      v7 = [(PDDatabaseManager *)self->_databaseManager transactionsForRequest:v6];
      firstObject = [v7 firstObject];

      if (firstObject)
      {
        v9 = +[NSDate date];
        transactionDate = [firstObject transactionDate];
        [v9 timeIntervalSinceDate:transactionDate];
        v12 = v11;

        self->_daysSinceAppleAccountInStoreTopUp = vcvtmd_s64_f64(v12 / 86400.0);
      }
    }
  }

  return self->_daysSinceAppleAccountInStoreTopUp;
}

- (int64_t)appleAccountCardDaysSinceTopUpOfType:(id)type
{
  v4 = PKPaymentTransactionTopUpSubtypeFromString();
  if ((v4 - 5) > 3 || !self->_prefetchedAppleBalanceAccount)
  {
    return -1;
  }

  v5 = v4;
  queriedAppleAccountCardDaysSinceTopUpOfType = self->_queriedAppleAccountCardDaysSinceTopUpOfType;
  v7 = [NSNumber numberWithInteger:v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012D4AC;
  v11[3] = &unk_100847918;
  v11[4] = self;
  v11[5] = v5;
  v8 = [(NSMutableDictionary *)queriedAppleAccountCardDaysSinceTopUpOfType getOrCreateObjectForKey:v7 creationBlock:v11];

  integerValue = [v8 integerValue];
  return integerValue;
}

- (NSArray)appleAccountCardActivePromotionIdentifiers
{
  appleAccountCardActivePromotionIdentifiers = self->_appleAccountCardActivePromotionIdentifiers;
  if (!appleAccountCardActivePromotionIdentifiers)
  {
    appleAccountCardActivePromotionIdentifiers = self->_prefetchedAppleBalanceAccount;
    if (appleAccountCardActivePromotionIdentifiers)
    {
      databaseManager = self->_databaseManager;
      accountIdentifier = [appleAccountCardActivePromotionIdentifiers accountIdentifier];
      v6 = [(PDDatabaseManager *)databaseManager appleBalancePromotionForAccountIdentifier:accountIdentifier];

      programIdentifier = [v6 programIdentifier];
      if ([programIdentifier length])
      {
        v11 = programIdentifier;
        v8 = [NSArray arrayWithObjects:&v11 count:1];
        v9 = self->_appleAccountCardActivePromotionIdentifiers;
        self->_appleAccountCardActivePromotionIdentifiers = v8;
      }

      else
      {
        v9 = self->_appleAccountCardActivePromotionIdentifiers;
        self->_appleAccountCardActivePromotionIdentifiers = &__NSArray0__struct;
      }

      appleAccountCardActivePromotionIdentifiers = self->_appleAccountCardActivePromotionIdentifiers;
    }
  }

  return appleAccountCardActivePromotionIdentifiers;
}

- (id)issuerMessagingFlagsForDefaultAccountType:(id)type
{
  typeCopy = type;
  v5 = PDUEEAccountFeatureToFeatureIdentifier(typeCopy);
  if ([(PDUserEvaluationEnvironment *)self _issuerMessagingFlagsSupportsFeatureIdentifier:v5])
  {
    queriedIssuerMessagingFlagsForDefaultAccountType = self->_queriedIssuerMessagingFlagsForDefaultAccountType;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10012D898;
    v10[3] = &unk_100847918;
    v10[4] = self;
    v10[5] = v5;
    v7 = [(NSMutableDictionary *)queriedIssuerMessagingFlagsForDefaultAccountType getOrCreateObjectForKey:typeCopy creationBlock:v10];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = typeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trying to evaluate issuerMessagingFlagsForDefaultAccountType for unsupported feature %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)memberOfInstalledApps:(id)apps
{
  appsCopy = apps;
  v5 = [(NSMutableDictionary *)self->_queriedAppIdentifierPresence objectForKeyedSubscript:appsCopy];
  if (!v5)
  {
    v6 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(appsCopy error:{"unsignedLongLongValue"), 0}];
    v7 = v6;
    if (v6)
    {
      applicationState = [v6 applicationState];
      v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [applicationState isInstalled]);
    }

    else
    {
      v5 = [NSNumber numberWithBool:0];
    }

    [(NSMutableDictionary *)self->_queriedAppIdentifierPresence setObject:v5 forKeyedSubscript:appsCopy];
  }

  if ([v5 BOOLValue])
  {
    v9 = appsCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (unint64_t)countOfInstalledApps
{
  queriedAppIdentifierPresence = self->_queriedAppIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedAppIdentifierPresence allKeysForObject:v3];
  v5 = [v4 count];

  return v5;
}

- (id)enumeratorOfInstalledApps
{
  queriedAppIdentifierPresence = self->_queriedAppIdentifierPresence;
  v3 = [NSNumber numberWithBool:1];
  v4 = [(NSMutableDictionary *)queriedAppIdentifierPresence allKeysForObject:v3];
  objectEnumerator = [v4 objectEnumerator];

  return objectEnumerator;
}

- (BOOL)hasPairedWatch
{
  if (self->_hasQueriedPairedWatch)
  {
    return self->_hasPairedWatch;
  }

  else
  {
    self->_hasQueriedPairedWatch = 1;
    v3 = PKIsPairedWithWatch() != 0;
    self->_hasPairedWatch = v3;
  }

  return v3;
}

- (NSSet)enrolledAuthenticationMechanisms
{
  prefetchedEnrolledAuthenticationMechanisms = self->_prefetchedEnrolledAuthenticationMechanisms;
  if (!prefetchedEnrolledAuthenticationMechanisms)
  {
    selfCopy = self;
    v4 = [[NSMutableSet alloc] initWithCapacity:4];
    if (PKPasscodeEnabled())
    {
      [v4 addObject:@"Passcode"];
    }

    [(objc_class *)off_10091EA50() availableDevices];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          type = [v9 type];
          if (type == 2)
          {
            v11 = @"Face ID";
          }

          else
          {
            v11 = 0;
          }

          if (type == 1)
          {
            v12 = @"Touch ID";
          }

          else
          {
            v12 = v11;
          }

          v13 = off_10091EA58();
          v23 = 0;
          v14 = [(objc_class *)v13 deviceWithDescriptor:v9 error:&v23];
          v15 = v23;
          if (!v15)
          {
            v22 = 0;
            v16 = [v14 identitiesWithError:&v22];
            v15 = v22;
            if (!v15 && [v16 count])
            {
              [v4 addObject:v12];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v17 = [v4 copy];
    v18 = selfCopy->_prefetchedEnrolledAuthenticationMechanisms;
    selfCopy->_prefetchedEnrolledAuthenticationMechanisms = v17;

    prefetchedEnrolledAuthenticationMechanisms = selfCopy->_prefetchedEnrolledAuthenticationMechanisms;
  }

  return prefetchedEnrolledAuthenticationMechanisms;
}

- (void)preflightForKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  v6 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = keysCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = PDUEEKeyFromString(*(*(&v30 + 1) + 8 * v11));
        v13 = &off_1008A2C18;
        switch(v12)
        {
          case 3:
            v13 = &off_1008A2C00;
            goto LABEL_27;
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 40:
          case 41:
          case 42:
          case 47:
          case 48:
          case 49:
          case 50:
            [v6 addObject:&off_1008A2BB8];
            [v6 addObject:&off_1008A2BA0];
            v13 = &off_1008A2C48;
            goto LABEL_27;
          case 37:
          case 38:
          case 39:
            goto LABEL_27;
          case 43:
            v16 = v6;
            v17 = &off_1008A2C90;
            goto LABEL_21;
          case 44:
            [v6 addObject:&off_1008A2C90];
            v14 = v6;
            v15 = &off_1008A2BB8;
            goto LABEL_25;
          case 45:
          case 46:
          case 116:
          case 145:
            goto LABEL_22;
          case 51:
          case 52:
            v13 = &off_1008A2BA0;
            goto LABEL_27;
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 76:
          case 77:
          case 79:
          case 80:
          case 81:
          case 82:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 92:
          case 93:
          case 94:
          case 95:
            v13 = &off_1008A2BD0;
            goto LABEL_27;
          case 75:
          case 83:
            v14 = v6;
            v15 = &off_1008A2BD0;
LABEL_25:
            [v14 addObject:{v15, completionCopy}];
            goto LABEL_26;
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
LABEL_26:
            v13 = &off_1008A2C60;
            goto LABEL_27;
          case 104:
            v13 = &off_1008A2C78;
            goto LABEL_27;
          case 118:
            [v6 addObject:&off_1008A2BD0];
            [v6 addObject:&off_1008A2BB8];
            goto LABEL_16;
          case 128:
          case 129:
          case 130:
            v13 = &off_1008A2C30;
            goto LABEL_27;
          case 131:
            v13 = &off_1008A2CA8;
            goto LABEL_27;
          case 132:
          case 133:
          case 134:
          case 135:
          case 136:
          case 137:
            v13 = &off_1008A2CC0;
            goto LABEL_27;
          case 138:
            v13 = &off_1008A2CD8;
            goto LABEL_27;
          case 139:
          case 140:
          case 141:
          case 142:
          case 143:
          case 144:
            v13 = &off_1008A2CF0;
            goto LABEL_27;
          case 149:
          case 153:
            v13 = &off_1008A2D08;
            goto LABEL_27;
          case 155:
          case 156:
          case 157:
          case 158:
LABEL_16:
            v13 = &off_1008A2D20;
            goto LABEL_27;
          case 159:
            v16 = v6;
            v17 = &off_1008A2CF0;
LABEL_21:
            [v16 addObject:{v17, completionCopy}];
LABEL_22:
            v13 = &off_1008A2BB8;
LABEL_27:
            [v6 addObject:{v13, completionCopy}];
            break;
          default:
            break;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v18 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = [v6 containsObject:&off_1008A2CC0];
  if (v19)
  {
    if (self->_rulesNeedLocation)
    {
      goto LABEL_38;
    }

    v20 = 1;
  }

  else
  {
    if (!self->_rulesNeedLocation)
    {
      goto LABEL_38;
    }

    v20 = 0;
  }

  self->_rulesNeedLocation = v20;
  [(PDDiscoveryManager *)self->_discoveryManager setRulesNeedLocation:v19, completionCopy];
LABEL_38:
  v21 = [v6 containsObject:{&off_1008A2CD8, completionCopy}];
  if (v21)
  {
    if (self->_rulesNeedPlacemark)
    {
      goto LABEL_44;
    }

    v22 = 1;
  }

  else
  {
    if (!self->_rulesNeedPlacemark)
    {
      goto LABEL_44;
    }

    v22 = 0;
  }

  self->_rulesNeedPlacemark = v22;
  [(PDDiscoveryManager *)self->_discoveryManager setRulesNeedPlacemark:v21];
LABEL_44:
  [(PDUserEvaluationEnvironment *)self _prefetchDataSources:v6 completion:v28];
  if ([v7 containsObject:@"hasTransitPassForCurrentLocation"])
  {
    databaseManager = self->_databaseManager;
    supportedTransitNetworksForCurrentLocation = [(PDUserEvaluationEnvironment *)self supportedTransitNetworksForCurrentLocation];
    self->_hasTransitPassForCurrentLocation = [(PDDatabaseManager *)databaseManager passExistsForTransitNetworks:supportedTransitNetworksForCurrentLocation isTransitCard:1 expired:0];
  }

  if ([v7 containsObject:@"hasUnexpiredTransitPassForCurrentLocation"])
  {
    v25 = self->_databaseManager;
    supportedTransitNetworksForCurrentLocation2 = [(PDUserEvaluationEnvironment *)self supportedTransitNetworksForCurrentLocation];
    self->_hasUnexpiredTransitPassForCurrentLocation = [(PDDatabaseManager *)v25 passExistsForTransitNetworks:supportedTransitNetworksForCurrentLocation2 isTransitCard:1 expired:2];
  }
}

- (void)_prefetchDataSources:(id)sources completion:(id)completion
{
  sourcesCopy = sources;
  completionCopy = completion;
  if ([sourcesCopy count])
  {
    anyObject = [sourcesCopy anyObject];
    intValue = [anyObject intValue];
    [sourcesCopy removeObject:anyObject];
    objc_initWeak(&location, self);
    switch(intValue)
    {
      case 1u:
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1F18();
        }

        accountManager = self->_accountManager;
        v12 = v103;
        v103[0] = _NSConcreteStackBlock;
        v103[1] = 3221225472;
        v103[2] = sub_10012EDEC;
        v103[3] = &unk_1008479A0;
        objc_copyWeak(&v106, &location);
        v104 = sourcesCopy;
        v105 = completionCopy;
        [(PDAccountManager *)accountManager accountsForFeature:2 completion:v103];

        v13 = v104;
        goto LABEL_53;
      case 2u:
        v35 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1EE4();
        }

        v36 = self->_accountManager;
        v12 = v99;
        v99[0] = _NSConcreteStackBlock;
        v99[1] = 3221225472;
        v99[2] = sub_10012EE68;
        v99[3] = &unk_1008479C8;
        objc_copyWeak(&v102, &location);
        v100 = sourcesCopy;
        v101 = completionCopy;
        [(PDAccountManager *)v36 defaultAccountForFeature:2 completion:v99];

        v13 = v100;
        goto LABEL_53;
      case 3u:
        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1EB0();
        }

        peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
        v12 = v95;
        v95[0] = _NSConcreteStackBlock;
        v95[1] = 3221225472;
        v95[2] = sub_10012F018;
        v95[3] = &unk_1008479F0;
        objc_copyWeak(&v98, &location);
        v96 = sourcesCopy;
        v97 = completionCopy;
        [(PDPeerPaymentWebServiceCoordinator *)peerPaymentWebServiceCoordinator accountWithPreventingServerFetch:1 completion:v95];

        v13 = v96;
        goto LABEL_53;
      case 4u:
        v30 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1E7C();
        }

        paymentSetupFeaturesCoordinator = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator paymentSetupFeaturesCoordinator];
        v32 = PKPassdBundleIdentifier;
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_10012F094;
        v91[3] = &unk_100847A18;
        objc_copyWeak(&v94, &location);
        v92 = sourcesCopy;
        v93 = completionCopy;
        [paymentSetupFeaturesCoordinator staticPaymentSetupFeaturesForSourceApplicationID:v32 blockServerFetch:1 completion:v91];

        v19 = &v94;
        goto LABEL_54;
      case 5u:
        v20 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1E48();
        }

        applyManager = self->_applyManager;
        v12 = v87;
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10012F1C8;
        v87[3] = &unk_100847A18;
        objc_copyWeak(&v90, &location);
        v88 = sourcesCopy;
        v89 = completionCopy;
        [(PDApplyManager *)applyManager applicationsWithCompletion:v87];

        v13 = v88;
        goto LABEL_53;
      case 6u:
        v37 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1E14();
        }

        transitNotificationService = self->_transitNotificationService;
        v12 = v83;
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10012F3F8;
        v83[3] = &unk_100847A40;
        objc_copyWeak(&v86, &location);
        v84 = sourcesCopy;
        v85 = completionCopy;
        [(PDTransitNotificationService *)transitNotificationService sentTransitNotificationStateWithHandler:v83];

        v13 = v84;
        goto LABEL_53;
      case 7u:
        v41 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1DE0();
        }

        familyCircleManager = self->_familyCircleManager;
        v12 = v79;
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_10012F4BC;
        v79[3] = &unk_100847A18;
        objc_copyWeak(&v82, &location);
        v80 = sourcesCopy;
        v81 = completionCopy;
        [(PDFamilyCircleManager *)familyCircleManager familyMembersWithCachePolicy:2 completion:v79];

        v13 = v80;
        goto LABEL_53;
      case 8u:
        v33 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1DAC();
        }

        v34 = self->_familyCircleManager;
        v12 = v75;
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_10012F538;
        v75[3] = &unk_100847A68;
        objc_copyWeak(&v78, &location);
        v76 = sourcesCopy;
        v77 = completionCopy;
        [(PDFamilyCircleManager *)v34 memberTypeForCurrentUserWithCachePolicy:2 completion:v75];

        v13 = v76;
        goto LABEL_53;
      case 9u:
        v45 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1D78();
        }

        expressPassManager = self->_expressPassManager;
        v12 = v71;
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_10012F594;
        v71[3] = &unk_1008479A0;
        objc_copyWeak(&v74, &location);
        v72 = sourcesCopy;
        v73 = completionCopy;
        sub_10017F518(expressPassManager, v71);

        v13 = v72;
        goto LABEL_53;
      case 0xAu:
        v24 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1D44();
        }

        v25 = self->_accountManager;
        v12 = v67;
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_10012F70C;
        v67[3] = &unk_100847A90;
        objc_copyWeak(&v70, &location);
        v68 = sourcesCopy;
        v69 = completionCopy;
        [(PDAccountManager *)v25 accountUsersByAccountIdentifierForFeature:2 completion:v67];

        v13 = v68;
        goto LABEL_53;
      case 0xBu:
        v43 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1CDC();
        }

        v44 = PDDefaultQueue();
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10012F804;
        v59[3] = &unk_100847B80;
        v59[4] = self;
        v60 = sourcesCopy;
        v61 = completionCopy;
        objc_copyWeak(&v62, &location);
        dispatch_async(v44, v59);

        objc_destroyWeak(&v62);
        break;
      case 0xCu:
        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1CA8();
        }

        v18 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001300CC;
        block[3] = &unk_100847BD0;
        block[4] = self;
        objc_copyWeak(&v58, &location);
        v56 = sourcesCopy;
        v57 = completionCopy;
        dispatch_async(v18, block);

        v19 = &v58;
        goto LABEL_54;
      case 0xDu:
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1D10();
        }

        v23 = self->_accountManager;
        v12 = v63;
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10012F788;
        v63[3] = &unk_100847A90;
        objc_copyWeak(&v66, &location);
        v64 = sourcesCopy;
        v65 = completionCopy;
        [(PDAccountManager *)v23 physicalCardsByAccountIdentifierForFeature:2 completion:v63];

        v13 = v64;
        goto LABEL_53;
      case 0xEu:
        v39 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1C74();
        }

        v40 = self->_accountManager;
        v12 = v51;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100130220;
        v51[3] = &unk_1008479C8;
        objc_copyWeak(&v54, &location);
        v52 = sourcesCopy;
        v53 = completionCopy;
        [(PDAccountManager *)v40 defaultAccountForFeature:5 completion:v51];

        v13 = v52;
        goto LABEL_53;
      case 0xFu:
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1C40();
        }

        paymentOfferCatalog = [(PDDatabaseManager *)self->_databaseManager paymentOfferCatalog];
        prefetchedPaymentOfferCatalog = self->_prefetchedPaymentOfferCatalog;
        self->_prefetchedPaymentOfferCatalog = paymentOfferCatalog;

        [(PDUserEvaluationEnvironment *)self _prefetchDataSources:sourcesCopy completion:completionCopy];
        break;
      case 0x10u:
        v28 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_1005C1C0C();
        }

        v29 = self->_accountManager;
        v12 = v47;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10013029C;
        v47[3] = &unk_1008479C8;
        objc_copyWeak(&v50, &location);
        v48 = sourcesCopy;
        v49 = completionCopy;
        [(PDAccountManager *)v29 defaultAccountForFeature:4 completion:v47];

        v13 = v48;
LABEL_53:

        v19 = (v12 + 6);
LABEL_54:
        objc_destroyWeak(v19);
        break;
      default:
        break;
    }

    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (BOOL)_hasSavingsAccountAccountTransactionOfTransactionType:(int64_t)type fundingSourceTypes:(id)types
{
  typesCopy = types;
  transactionSourceIdentifier = [(PKAccount *)self->_prefetchedSavingsAccount transactionSourceIdentifier];
  if (transactionSourceIdentifier)
  {
    v8 = [NSSet setWithObject:transactionSourceIdentifier];
    v9 = objc_alloc_init(PKPaymentTransactionRequest);
    [v9 setTransactionSourceIdentifiers:v8];
    v10 = [NSNumber numberWithInteger:type];
    v14 = v10;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    [v9 setTransactionTypes:v11];

    [v9 setFundingSourceTypes:typesCopy];
    v12 = [(PDDatabaseManager *)self->_databaseManager transactionsCountForRequest:v9]!= 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_hasDefaultCreditAccountTransactionOfTransactionSourceType:(unint64_t)type
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
    v7 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
    LOBYTE(type) = [(PDDatabaseManager *)self->_databaseManager hasPaymentTransactionForTransactionSourceIdentifiers:v7 withTransactionSource:type];

    LOBYTE(prefetchedDefaultCreditAccount) = type;
  }

  return prefetchedDefaultCreditAccount;
}

- (id)_defaultCreditAccountCreditAccountDetails
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    creditDetails = [(PKAccount *)prefetchedDefaultCreditAccount creditDetails];
    v4 = creditDetails;
    if (creditDetails)
    {
      v5 = creditDetails;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultCreditAccountAccountSummary
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    creditDetails = [(PKAccount *)prefetchedDefaultCreditAccount creditDetails];
    v4 = creditDetails;
    if (creditDetails)
    {
      accountSummary = [creditDetails accountSummary];
      v6 = accountSummary;
      if (accountSummary)
      {
        v7 = accountSummary;
      }
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

- (id)_defaultCreditAccountAccountStatement
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    creditDetails = [(PKAccount *)prefetchedDefaultCreditAccount creditDetails];
    v4 = creditDetails;
    if (creditDetails)
    {
      accountSummary = [creditDetails accountSummary];
      v6 = accountSummary;
      if (accountSummary)
      {
        currentStatement = [accountSummary currentStatement];
        v8 = currentStatement;
        if (currentStatement)
        {
          v9 = currentStatement;
        }
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
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_defaultCreditAccountSupportedDestinations
{
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  if (prefetchedDefaultCreditAccount)
  {
    redeemRewardsFeatureDescriptor = [(PKAccount *)prefetchedDefaultCreditAccount redeemRewardsFeatureDescriptor];
    supportedDestinations = [redeemRewardsFeatureDescriptor supportedDestinations];

    if (supportedDestinations)
    {
      v5 = [NSSet setWithArray:supportedDestinations];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_creditAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_prefetchedCreditAccounts;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        accountIdentifier = [v9 accountIdentifier];
        v11 = identifierCopy;
        v12 = accountIdentifier;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (identifierCopy && v12)
        {
          v14 = [v11 isEqualToString:v12];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (id)_familyMemberWithAltDSID:(id)d
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_prefetchedFamilyMembers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        altDSID = [v9 altDSID];
        v11 = dCopy;
        v12 = altDSID;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (dCopy && v12)
        {
          v14 = [v11 isEqualToString:v12];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (id)_creditAccountPhysicalCardsForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_prefetchedPhysicalCards objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_creditAccountUsersForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_prefetchedCreditAccountUsers objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accountUsersForAccountIdentifier:(id)identifier accessLevel:(unint64_t)level
{
  if (identifier)
  {
    v5 = [(NSDictionary *)self->_prefetchedCreditAccountUsers objectForKey:?];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100130B30;
    v8[3] = &unk_100847BF0;
    v8[4] = level;
    v6 = [v5 objectsPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_unactivatedPhysicalCardForAltDSID:(id)d
{
  dCopy = d;
  accountIdentifier = [(PKAccount *)self->_prefetchedDefaultCreditAccount accountIdentifier];
  v6 = [(PDUserEvaluationEnvironment *)self _creditAccountPhysicalCardsForAccountIdentifier:accountIdentifier];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        accountUserAltDSID = [v11 accountUserAltDSID];
        v13 = dCopy;
        v14 = accountUserAltDSID;
        v15 = v14;
        if (v14 == v13)
        {
        }

        else
        {
          if (!dCopy || !v14)
          {

LABEL_15:
            continue;
          }

          v16 = [v13 isEqualToString:v14];

          if (!v16)
          {
            goto LABEL_15;
          }
        }

        state = [v11 state];

        if (state == 1)
        {
          v8 = v11;
          goto LABEL_18;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

LABEL_18:

  return v8;
}

- (BOOL)defaultCreditAccountHasMerchantIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  selfCopy = self;
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  identifierCopy = identifier;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [[NSSet alloc] initWithObjects:{identifierCopy, 0}];

  LOBYTE(selfCopy) = [(PDDatabaseManager *)selfCopy->_databaseManager hasAnyTransactionsWithMerchantIdentifiers:v7 forPassUniqueIdentifier:associatedPassUniqueID];
  return selfCopy;
}

- (BOOL)defaultCreditAccountHasMerchantIdentifier30Days:(id)days
{
  if (!days)
  {
    return 0;
  }

  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  daysCopy = days;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [[NSSet alloc] initWithObjects:{daysCopy, 0}];

  v8 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  databaseManager = self->_databaseManager;
  v10 = +[NSDate date];
  LOBYTE(databaseManager) = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMerchantIdentifiers:v7 forPassUniqueIdentifier:associatedPassUniqueID startDate:v8 endDate:v10];

  return databaseManager;
}

- (BOOL)defaultCreditAccountHasMapsIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  selfCopy = self;
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  identifierCopy = identifier;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [NSSet alloc];
  integerValue = [identifierCopy integerValue];

  v9 = [NSNumber numberWithInteger:integerValue];
  v10 = [v7 initWithObjects:{v9, 0}];

  LOBYTE(selfCopy) = [(PDDatabaseManager *)selfCopy->_databaseManager hasAnyTransactionsWithMapsIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID];
  return selfCopy;
}

- (BOOL)defaultCreditAccountHasMapsIdentifierLast30Days:(id)days
{
  if (!days)
  {
    return 0;
  }

  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  daysCopy = days;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [NSSet alloc];
  integerValue = [daysCopy integerValue];

  v9 = [NSNumber numberWithInteger:integerValue];
  v10 = [v7 initWithObjects:{v9, 0}];

  v11 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  databaseManager = self->_databaseManager;
  v13 = +[NSDate date];
  LOBYTE(databaseManager) = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID startDate:v11 endDate:v13];

  return databaseManager;
}

- (BOOL)defaultCreditAccountHasMapsBrandIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  selfCopy = self;
  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  identifierCopy = identifier;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [NSSet alloc];
  integerValue = [identifierCopy integerValue];

  v9 = [NSNumber numberWithInteger:integerValue];
  v10 = [v7 initWithObjects:{v9, 0}];

  LOBYTE(selfCopy) = [(PDDatabaseManager *)selfCopy->_databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID];
  return selfCopy;
}

- (BOOL)defaultCreditAccountHasMapsBrandIdentifierLast30Days:(id)days
{
  if (!days)
  {
    return 0;
  }

  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  daysCopy = days;
  associatedPassUniqueID = [(PKAccount *)prefetchedDefaultCreditAccount associatedPassUniqueID];
  v7 = [NSSet alloc];
  integerValue = [daysCopy integerValue];

  v9 = [NSNumber numberWithInteger:integerValue];
  v10 = [v7 initWithObjects:{v9, 0}];

  v11 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  databaseManager = self->_databaseManager;
  v13 = +[NSDate date];
  LOBYTE(databaseManager) = [(PDDatabaseManager *)databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v10 forPassUniqueIdentifier:associatedPassUniqueID startDate:v11 endDate:v13];

  return databaseManager;
}

- (BOOL)hasActivePromotionIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  identifierCopy = identifier;
  accountIdentifier = [(PKAccount *)prefetchedDefaultCreditAccount accountIdentifier];
  v7 = [(PDDatabaseManager *)self->_databaseManager accountPromotionForProgramIdentifier:identifierCopy accountIdentifier:accountIdentifier];

  if (v7)
  {
    v8 = [v7 state] == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasActivePromotionIdentifierExpiringSoon:(id)soon
{
  if (!soon)
  {
    return 0;
  }

  prefetchedDefaultCreditAccount = self->_prefetchedDefaultCreditAccount;
  soonCopy = soon;
  accountIdentifier = [(PKAccount *)prefetchedDefaultCreditAccount accountIdentifier];
  v7 = [(PDDatabaseManager *)self->_databaseManager accountPromotionForProgramIdentifier:soonCopy accountIdentifier:accountIdentifier];

  if (v7 && [v7 state] == 2)
  {
    expiringSoon = [v7 expiringSoon];
  }

  else
  {
    expiringSoon = 0;
  }

  return expiringSoon;
}

- (int64_t)defaultCreditAccountDaysUntilActivePromotionExpires:(id)expires
{
  expiresCopy = expires;
  if (expiresCopy)
  {
    v5 = [(NSMutableDictionary *)self->_queriedDefaultCreditAccountDaysUntilActivePromotionExpires objectForKeyedSubscript:expiresCopy];
    v6 = v5;
    if (v5)
    {
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    accountIdentifier = [(PKAccount *)self->_prefetchedDefaultCreditAccount accountIdentifier];
    v9 = accountIdentifier;
    if (!v6 && accountIdentifier)
    {
      v10 = [(PDDatabaseManager *)self->_databaseManager accountPromotionForProgramIdentifier:expiresCopy accountIdentifier:accountIdentifier];
      v11 = v10;
      if (v10 && [v10 state] == 2)
      {
        endDate = [v11 endDate];
        [endDate timeIntervalSinceNow];
        integerValue = vcvtmd_s64_f64(v13 / 86400.0);
      }

      v14 = [NSNumber numberWithInteger:integerValue];
      [(NSMutableDictionary *)self->_queriedDefaultCreditAccountDaysUntilActivePromotionExpires setObject:v14 forKeyedSubscript:expiresCopy];
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (BOOL)hasMerchantIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  v5 = [[NSSet alloc] initWithObjects:{identifierCopy, 0}];

  LOBYTE(self) = [(PDDatabaseManager *)self->_databaseManager hasAnyTransactionsWithMerchantIdentifiers:v5];
  return self;
}

- (BOOL)hasMapsIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  v5 = [NSSet alloc];
  integerValue = [identifierCopy integerValue];

  v7 = [NSNumber numberWithInteger:integerValue];
  v8 = [v5 initWithObjects:{v7, 0}];

  LOBYTE(self) = [(PDDatabaseManager *)self->_databaseManager hasAnyTransactionsWithMapsIdentifiers:v8];
  return self;
}

- (BOOL)hasMapsBrandIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  v5 = [NSSet alloc];
  integerValue = [identifierCopy integerValue];

  v7 = [NSNumber numberWithInteger:integerValue];
  v8 = [v5 initWithObjects:{v7, 0}];

  LOBYTE(self) = [(PDDatabaseManager *)self->_databaseManager hasAnyTransactionsWithMapsBrandIdentifiers:v8];
  return self;
}

- (BOOL)hasInstalledApp:(id)app
{
  if (!app)
  {
    return 0;
  }

  appCopy = app;
  v4 = [LSApplicationRecord alloc];
  integerValue = [appCopy integerValue];

  v6 = [v4 initWithStoreItemIdentifier:integerValue error:0];
  v7 = v6;
  if (v6)
  {
    applicationState = [v6 applicationState];
    isInstalled = [applicationState isInstalled];
  }

  else
  {
    isInstalled = 0;
  }

  return isInstalled;
}

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  v4 = v3;
  if (self->_isApplePayActive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@';\n", @"isApplePayActive", v5];
  [v4 appendFormat:@"%@: '%@';\n", @"hasDefaultCreditAccount", self->_prefetchedDefaultCreditAccount];
  [v4 appendFormat:@"%@: '%ld';\n", @"daysSinceOldestPaymentPassIngestDate", self->_daysSinceOldestPaymentPassIngestDate];
  [v4 appendFormat:@"%@: '%ld';\n", @"daysSinceOldestCreditCardIngestDate", self->_daysSinceOldestCreditCardIngestDate];
  [v4 appendFormat:@"%@: '%ld';\n", @"daysSinceProvisionedPassBySpecifiedType", self->_queriedDaysSinceProvisionedPassBySpecifiedType];
  [v4 appendFormat:@"%@: '%ld';\n", @"daysSinceOldestCardInPendingVerification", self->_daysSinceOldestCardInPendingVerification];
  [v4 appendFormat:@"%@: '%ld';\n", @"hasUserPreferencesEnabledByIdentifier", self->_queriedUserPreferencesEnabledByIdentifier];
  if (self->_hasDefaultCreditAccountVirtualCardTransaction)
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountHasVirtualCard", v6];
  [v4 appendFormat:@"%@: '%ld';\n", @"defaultCreditAccountDaysSinceDisputeOpened", self->_defaultCreditAccountDaysSinceDisputeOpened];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMerchantIdentifiers", self->_queriedDefaultCreditAccountMerchantIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMerchantIdentifiersLast30Days", self->_queriedDefaultCreditAccountMerchantIdentifierLast30DaysPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMapsIdentifiers", self->_queriedDefaultCreditAccountMapsIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMapsIdentifiersLast30Days", self->_queriedDefaultCreditAccountMapsIdentifierLast30DaysPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMapsBrandIdentifiers", self->_queriedDefaultCreditAccountMapsBrandIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountMapsBrandIdentifiersLast30Days", self->_queriedDefaultCreditAccountMapsBrandIdentifierLast30DaysPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountActivePromotionIdentifiers", self->_queriedDefaultCreditAccountActivePromotionIdentifiersPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountActivePromotionIdentifiersExpiringSoon", self->_queriedDefaultCreditAccountActivePromotionIdentifiersExpiringSoonPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"defaultCreditAccountDaysUntilActivePromotionExpires", self->_queriedDefaultCreditAccountDaysUntilActivePromotionExpires];
  [v4 appendFormat:@"%@: '%@';\n", @"passStyles", self->_passStyles];
  [v4 appendFormat:@"%@: '%@';\n", @"unexpiredPassStyles", self->_unexpiredPassStyles];
  [v4 appendFormat:@"%@: '%@';\n", @"secureElementCardTypes", self->_cardTypes];
  [v4 appendFormat:@"%@: '%@';\n", @"unexpiredSecureElementCardTypes", self->_unexpiredCardTypes];
  [v4 appendFormat:@"%@: '%@';\n", @"transitNetworksPresent", self->_transitNetworksPresent];
  [v4 appendFormat:@"%@: '%@';\n", @"transitNetworksPresentAndUnexpired", self->_transitNetworksPresentAndUnexpired];
  [v4 appendFormat:@"%@: '%@';\n", @"merchantIdentifiers", self->_queriedMerchantIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"mapsIdentifiers", self->_queriedMapsIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"mapsBrandIdentifiers", self->_queriedMapsBrandIdentifierPresence];
  if (self->_hasPaymentTransaction)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v4 appendFormat:@"%@: '%@';\n", @"hasPaymentTransaction", v7];
  if (self->_hasTransitTransaction)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [v4 appendFormat:@"%@: '%@';\n", @"hasTransitTransaction", v8];
  [v4 appendFormat:@"%@: '%@';\n", @"discoveryItemsExpanded", self->_discoveryItemsExpanded];
  [v4 appendFormat:@"%@: '%@';\n", @"discoveryItemsDismissed", self->_discoveryItemsDismissed];
  [v4 appendFormat:@"%@: '%@';\n", @"discoveryCTAsTapped", self->_discoveryCTAsTapped];
  [v4 appendFormat:@"%@: '%@';\n", @"discoveryCTAsCompleted", self->_discoveryCTAsCompleted];
  [v4 appendFormat:@"%@: '%@';\n", @"installedApps", self->_queriedAppIdentifierPresence];
  [v4 appendFormat:@"%@: '%@';\n", @"supportedMarketsForCurrentLocation", self->_supportedMarketsForCurrentLocation];
  [v4 appendFormat:@"%@: '%@';\n", @"supportedTransitMarketsForCurrentLocation", self->_supportedTransitMarketsForCurrentLocation];
  [v4 appendFormat:@"%@: '%@';\n", @"supportedTransitNetworksForCurrentLocation", self->_supportedTransitNetworksForCurrentLocation];
  [v4 appendFormat:@"%@: '%@';\n", @"expressTransitNetworksForCurrentLocation", self->_expressTransitNetworksForCurrentLocation];
  if (self->_hasTransitPassForCurrentLocation)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@"%@: '%@';\n", @"hasTransitPassForCurrentLocation", v9];
  if (self->_hasUnexpiredTransitPassForCurrentLocation)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v4 appendFormat:@"%@: '%@';\n", @"hasUnexpiredTransitPassForCurrentLocation", v10];
  if (self->_queriedTransactionOfTransactionSourceTypePresence)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v4 appendFormat:@"%@: '%@';\n", @"hasTransactionOfTransactionSourceType", v11];
  [v4 appendFormat:@"%@: '%@';\n", @"currentPlacemark", self->_currentPlacemark];
  [v4 appendFormat:@"%@: '%ld';\n", @"numberOfApplePayTransactionsInPastThirtyDays", self->_numberOfApplePayTransactionsLast30Days];
  [v4 appendFormat:@">"];

  return v4;
}

@end