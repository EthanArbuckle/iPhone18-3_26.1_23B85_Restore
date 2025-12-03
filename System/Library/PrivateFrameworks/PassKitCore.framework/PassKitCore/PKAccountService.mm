@interface PKAccountService
+ (PKAccountService)sharedInstance;
- (BOOL)supportsCardNumbersShortcutForPassUniqueID:(id)d;
- (PKAccountService)init;
- (id)accountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type;
- (id)accountUsersForAccountWithIdentifier:(id)identifier;
- (id)accountWithIdentifier:(id)identifier error:(id *)error;
- (id)defaultAccountForFeature:(unint64_t)feature;
- (id)errorHandlerForMethod:(SEL)method completion:(id)completion;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_accountsChanged:(id)changed;
- (void)accountAdded:(id)added;
- (void)accountChanged:(id)changed;
- (void)accountEnhancedMerchantBehaviorForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountEnhancedMerchantsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountEntityOrderingsForAccountWithIdentifier:(id)identifier entityType:(unint64_t)type completion:(id)completion;
- (void)accountForPassWithUniqueID:(id)d completion:(id)completion;
- (void)accountHoldsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)accountPendingFamilyMembersForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)accountPromotionBehaviorForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountPromotionsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountRemoved:(id)removed;
- (void)accountStatementMetadataForAllAccountsWithCompletion:(id)completion;
- (void)accountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)accountUsersForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountWithIdentifier:(id)identifier completion:(id)completion;
- (void)accountWithVirtualCardIdentifier:(id)identifier completion:(id)completion;
- (void)accountsForProvisioningWithCompletion:(id)completion;
- (void)accountsWithCompletion:(id)completion;
- (void)accountsWithPassLocallyProvisionedWithCompletion:(id)completion;
- (void)activateBroadwayPhysicalCardWithActivationCode:(id)code completion:(id)completion;
- (void)activatePhysicalCard:(id)card withActivationCode:(id)code forFeatureIdentifier:(unint64_t)identifier completion:(id)completion;
- (void)appleBalancePromotionForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)attemptAppleBalanceSetupWithCompletion:(id)completion;
- (void)attemptAppleStoredValueSetupWithCompletion:(id)completion;
- (void)backgroundProvisionInProgressForFeature:(unint64_t)feature withCompletion:(id)completion;
- (void)beginPhysicalCardAction:(id)action onPhysicalCardWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier accountUserAltDSID:(id)d deviceMetadata:(id)metadata completion:(id)completion;
- (void)beginPhysicalCardRequestWithOrder:(id)order forAccountWithIdentifier:(id)identifier accountUserAltDSID:(id)d deviceMetadata:(id)metadata completion:(id)completion;
- (void)billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:(id)identifier withStartDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:(id)identifier withStatementIdentifier:(id)statementIdentifier completion:(id)completion;
- (void)cardCredentialsForVirtualCard:(id)card authorization:(id)authorization action:(int64_t)action completion:(id)completion;
- (void)completePhysicalCardActionRequest:(id)request withSignature:(id)signature completion:(id)completion;
- (void)completePhysicalCardRequest:(id)request withSignature:(id)signature completion:(id)completion;
- (void)createVirtualCard:(int64_t)card forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)creditRecoveryPaymentPlanInformationForAccountIdentifier:(id)identifier allowFetchFromServer:(BOOL)server completion:(id)completion;
- (void)creditRecoveryPaymentPlansChangedForAccountIdentifier:(id)identifier;
- (void)creditRecoveryPaymentPlansForAccountIdentifier:(id)identifier allowFetchFromServer:(BOOL)server completion:(id)completion;
- (void)creditStatementsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)creditStatementsForStatementIdentifiers:(id)identifiers accountIdentifier:(id)identifier completion:(id)completion;
- (void)dailyCashEligibleDestinationsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)defaultAccountForFeature:(unint64_t)feature completion:(id)completion;
- (void)deleteAccountEnhancedMerchant:(id)merchant forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteAccountPromotion:(id)promotion forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)deleteAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteAppleBalancePromotionForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteBeneficiaryWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)deleteEventWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteEventsWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)deleteEventsWithAccountIdentifier:(id)identifier excludingTypes:(id)types completion:(id)completion;
- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteLocalAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)didAddAccountPendingFamilyMembers:(id)members;
- (void)didRemoveAppleBalancePromotionWithUniqueIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier;
- (void)didUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier lastUpdate:(id)update;
- (void)didUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier;
- (void)didUpdateAppleBalancePromotion:(id)promotion forAccountIdentifier:(id)identifier;
- (void)didUpdateInStoreTopUpToken:(id)token forAccountIdentifier:(id)identifier;
- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier;
- (void)eventsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)eventsForAccountIdentifier:(id)identifier types:(id)types startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(unint64_t)limit completion:(id)completion;
- (void)exportTransactionDataForAccountIdentifier:(id)identifier withFileFormat:(id)format beginDate:(id)date endDate:(id)endDate productTimeZone:(id)zone completion:(id)completion;
- (void)fetchKeychainCredentialForVirtualCardIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)inStoreTopUpTokenForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)inactivePhysicalCardForFeatureIdentifier:(unint64_t)identifier completion:(id)completion;
- (void)insertDailyCashNotificationForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)insertEvents:(id)events withAccountidentifier:(id)accountidentifier completion:(id)completion;
- (void)insertOrUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier completion:(id)completion;
- (void)insertOrUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier completion:(id)completion;
- (void)insertOrUpdateInStoreTopUpToken:(id)token accountIdentifier:(id)identifier completion:(id)completion;
- (void)insertOrUpdateLocalAccount:(id)account completion:(id)completion;
- (void)insertSummaryNotificationForAccountIdentifier:(id)identifier summaryType:(int64_t)type completion:(id)completion;
- (void)invalidateTopUpTokenWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)lastRedemptionEventToDestination:(unint64_t)destination forAccountIdentifier:(id)identifier altDSID:(id)d completion:(id)completion;
- (void)lastUsedInAppFundingSourceForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)markUserViewedIntroduction:(BOOL)introduction forInstallmentIdentifiers:(id)identifiers accountIdentifier:(id)identifier;
- (void)noteSecurityCodeActivityWithAction:(int64_t)action forSecurityCodeIdentifier:(id)identifier forVirtualCardIdentifier:(id)cardIdentifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)noteVirtualCardAutoFilledBySafari:(id)safari completion:(id)completion;
- (void)paymentFundingSourceForIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)paymentFundingSourcesForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)performAccountAction:(id)action withAccountIdentifier:(id)identifier accountUserAltDSID:(id)d completion:(id)completion;
- (void)performVirtualCardAction:(int64_t)action forVirtualCardIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)physicalCardForFeatureIdentifier:(unint64_t)identifier activationCode:(id)code completion:(id)completion;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)physicalCardsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)processPhysicalCardExpirationMessaging:(id)messaging physicalCards:(id)cards account:(id)account;
- (void)registerObserver:(id)observer;
- (void)resetAccountBalancesForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)rewardsTierSummaryForTransactionSourceIdentifiers:(id)identifiers currencyCode:(id)code startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)savingsStatementsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)scheduleSetupReminderForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier;
- (void)scheduledPaymentsWithAccountIdentifier:(id)identifier includeFailedRecurringPayments:(BOOL)payments allowFetchFromServer:(BOOL)server completion:(id)completion;
- (void)setNeedsSyncToFinanceForAllTransactionsWithCompletion:(id)completion;
- (void)sharedAccountCloudStoreWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)statementsChangedForAccountIdentifier:(id)identifier;
- (void)taxFormsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)termsWithIdentifier:(id)identifier accepted:(BOOL)accepted withAccountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion;
- (void)triggerStatementMetadataProcessingForAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateAccountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type completion:(id)completion;
- (void)updateAccountEnhancedMerchantsForAccountWithIdentifier:(id)identifier cooldownLevel:(unint64_t)level completion:(id)completion;
- (void)updateAccountEnhancedMerchantsForAccountWithIdentifier:(id)identifier ignoreErrorBackoff:(BOOL)backoff cooldownLevel:(unint64_t)level completion:(id)completion;
- (void)updateAccountPromotionsForAccountWithIdentifier:(id)identifier ignoreErrorBackoff:(BOOL)backoff observeCooldownPeriod:(BOOL)period completion:(id)completion;
- (void)updateAccountPromotionsForAccountWithIdentifier:(id)identifier observeCooldownPeriod:(BOOL)period completion:(id)completion;
- (void)updateAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)updateAccountUserNotificationSettings:(id)settings forAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateAccountUserPreferences:(id)preferences forAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateAccountUsersForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateAccountWithIdentifier:(id)identifier extended:(BOOL)extended completion:(id)completion;
- (void)updateAccountsWithCompletion:(id)completion;
- (void)updateCreditRecoveryPaymentPlansForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateCreditStatementsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)updateImpressionCountsForPromotions:(id)promotions accountIdentifier:(id)identifier completion:(id)completion;
- (void)updateLastUsedInAppFundingSource:(id)source accountIdentifier:(id)identifier;
- (void)updateMockAccountWithAccount:(id)account completion:(id)completion;
- (void)updatePaymentFundingSourcesForAccountIdentifier:(id)identifier force:(BOOL)force completion:(id)completion;
- (void)updatePhysicalCardsForAccountWithIdentifier:(id)identifier force:(BOOL)force completion:(id)completion;
- (void)updateSavingsStatementsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateScheduledPaymentsWithAccount:(id)account completion:(id)completion;
- (void)updateSharedAccountCloudStoreWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateTaxFormsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)updateUserInfoForAccountIdentifier:(id)identifier contact:(id)contact completion:(id)completion;
- (void)updateVirtualCardsWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)userInfoForAccountIdentifier:(id)identifier forceFetch:(BOOL)fetch completion:(id)completion;
- (void)validateAppleBalanceSecurityRequirementsWithCompletion:(id)completion;
- (void)virtualCardsInKeychainWithCompletion:(id)completion;
- (void)writeVirtualCardToKeychain:(id)keychain completion:(id)completion;
@end

@implementation PKAccountService

+ (PKAccountService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PKAccountService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_280 != -1)
  {
    dispatch_once(&_MergedGlobals_280, block);
  }

  v2 = qword_1ED6D2270;

  return v2;
}

void __34__PKAccountService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D2270;
  qword_1ED6D2270 = v1;
}

- (PKAccountService)init
{
  v14.receiver = self;
  v14.super_class = PKAccountService;
  v2 = [(PKAccountService *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passkit.pkpassservice.reply", 0);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v3;

    v5 = [PKXPCService alloc];
    v6 = PDAccountServiceInterface();
    v7 = PKAccountServiceInterface();
    v8 = [(PKXPCService *)v5 initWithMachServiceName:@"com.apple.passd.account" remoteObjectInterface:v6 exportedObjectInterface:v7 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v8;

    v2->_lockObservers._os_unfair_lock_opaque = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accountsChanged_ name:@"PKAccountServiceAccountsChangedDistributedNotification" object:0 suspensionBehavior:2];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKAccountService;
  [(PKAccountService *)&v4 dealloc];
}

- (void)_accountsChanged:(id)changed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKAccountServiceAccountsChangedNotification" object:self];
}

- (id)errorHandlerForMethod:(SEL)method completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKAccountService_errorHandlerForMethod_completion___block_invoke;
  aBlock[3] = &unk_1E79C8E18;
  v12 = completionCopy;
  methodCopy = method;
  aBlock[4] = self;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

void __53__PKAccountService_errorHandlerForMethod_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKAccountService %@];", &buf, 0xCu);
  }

  v6 = *(*(a1 + 32) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKAccountService_errorHandlerForMethod_completion___block_invoke_25;
  v11[3] = &unk_1E79C44F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v3;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v16 = __dispatch_async_ar_block_invoke_22;
  v17 = &unk_1E79C4428;
  v18 = v9;
  v10 = v3;
  dispatch_async(v6, &buf);
}

uint64_t __53__PKAccountService_errorHandlerForMethod_completion___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)accountsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__PKAccountService_accountsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__PKAccountService_accountsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = v7;
    [v9 accountsWithCompletion:v10];
  }
}

uint64_t __43__PKAccountService_accountsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __43__PKAccountService_accountsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PKAccountService_accountsWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __43__PKAccountService_accountsWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountsForProvisioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79E34A0;
    v10[4] = self;
    v11 = v7;
    [v9 accountsForProvisioningWithCompletion:v10];
  }
}

uint64_t __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __58__PKAccountService_accountsForProvisioningWithCompletion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)accountsWithPassLocallyProvisionedWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = completionCopy;
    v13 = v7;
    v8 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = v7;
    [v9 accountsWithPassLocallyProvisionedWithCompletion:v10];
  }
}

uint64_t __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __69__PKAccountService_accountsWithPassLocallyProvisionedWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKAccountService_updateAccountsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PKAccountService_updateAccountsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4BD0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateAccountsWithCompletion:v10];
}

uint64_t __49__PKAccountService_updateAccountsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __49__PKAccountService_updateAccountsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKAccountService_updateAccountsWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __49__PKAccountService_updateAccountsWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateMockAccountWithAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  accountCopy = account;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke_2;
  v13[3] = &unk_1E79E34C8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateMockAccountWithAccount:accountCopy completion:v13];
}

uint64_t __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __60__PKAccountService_updateMockAccountWithAccount_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)accountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__83;
  v24 = __Block_byref_object_dispose__83;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__83;
  v18 = __Block_byref_object_dispose__83;
  v19 = 0;
  v8 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v9 = [(PKAccountService *)self _synchronousRemoteObjectProxyWithErrorHandler:v8];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__PKAccountService_accountWithIdentifier_error___block_invoke;
  v13[3] = &unk_1E79E34F0;
  v13[4] = &v20;
  v13[5] = &v14;
  [v9 usingSynchronousProxy:1 accountWithIdentifier:identifierCopy completion:v13];
  v10 = v21[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (error)
  {
    objc_storeStrong(error, v15[5]);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __48__PKAccountService_accountWithIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)accountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PKAccountService_accountWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v16 = v9;
    identifierCopy = identifier;
    v11 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PKAccountService_accountWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79C4928;
    v13[4] = self;
    v14 = v9;
    [v12 usingSynchronousProxy:0 accountWithIdentifier:identifierCopy completion:v13];
  }
}

uint64_t __53__PKAccountService_accountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __53__PKAccountService_accountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__PKAccountService_accountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __53__PKAccountService_accountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountWithVirtualCardIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v16 = v9;
    identifierCopy = identifier;
    v11 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79C4928;
    v13[4] = self;
    v14 = v9;
    [v12 accountWithVirtualCardIdentifier:identifierCopy completion:v13];
  }
}

uint64_t __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__PKAccountService_accountWithVirtualCardIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountForPassWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v16 = v9;
    dCopy = d;
    v11 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke_2;
    v13[3] = &unk_1E79E34C8;
    v13[4] = self;
    v14 = v9;
    [v12 accountForPassWithUniqueID:dCopy completion:v13];
  }
}

uint64_t __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__PKAccountService_accountForPassWithUniqueID_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4928;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateAccountWithIdentifier:identifierCopy extended:0 completion:v13];
}

uint64_t __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __59__PKAccountService_updateAccountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountWithIdentifier:(id)identifier extended:(BOOL)extended completion:(id)completion
{
  extendedCopy = extended;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke_2;
  v15[3] = &unk_1E79C4928;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updateAccountWithIdentifier:identifierCopy extended:extendedCopy completion:v15];
}

uint64_t __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __68__PKAccountService_updateAccountWithIdentifier_extended_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountUsersForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D6028;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateAccountUsersForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __74__PKAccountService_updateAccountUsersForAccountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)accountUsersForAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKAccountService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__83;
  v13 = __Block_byref_object_dispose__83;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PKAccountService_accountUsersForAccountWithIdentifier___block_invoke;
  v8[3] = &unk_1E79CA7D8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 accountUsersForAccountWithIdentifier:identifierCopy usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)accountUsersForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4810;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountUsersForAccountWithIdentifier:identifierCopy usingSynchronousProxy:0 completion:v13];
}

uint64_t __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __68__PKAccountService_accountUsersForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  dCopy = d;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteAccountUserWithAltDSID:dCopy forAccountWithIdentifier:identifierCopy completion:v16];
}

uint64_t __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __85__PKAccountService_deleteAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteBeneficiaryWithIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteBeneficiaryWithIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __81__PKAccountService_deleteBeneficiaryWithIdentifier_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateAccountUserPreferences:(id)preferences forAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke;
  v21[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v22 = v12;
  identifierCopy = identifier;
  dCopy = d;
  preferencesCopy = preferences;
  v16 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v21];
  v17 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2;
  v19[3] = &unk_1E79E3518;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 updateAccountUserPreferences:preferencesCopy forAccountUserWithAltDSID:dCopy forAccountWithIdentifier:identifierCopy completion:v19];
}

uint64_t __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __111__PKAccountService_updateAccountUserPreferences_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountUserNotificationSettings:(id)settings forAccountUserWithAltDSID:(id)d forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke;
  v21[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v22 = v12;
  identifierCopy = identifier;
  dCopy = d;
  settingsCopy = settings;
  v16 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v21];
  v17 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2;
  v19[3] = &unk_1E79E3518;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 updateAccountUserNotificationSettings:settingsCopy forAccountUserWithAltDSID:dCopy forAccountWithIdentifier:identifierCopy completion:v19];
}

uint64_t __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __120__PKAccountService_updateAccountUserNotificationSettings_forAccountUserWithAltDSID_forAccountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)deleteAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__PKAccountService_deleteAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteLocalAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteLocalAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __64__PKAccountService_deleteLocalAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)insertOrUpdateLocalAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  accountCopy = account;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke_2;
  v13[3] = &unk_1E79E34C8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertOrUpdateLocalAccount:accountCopy completion:v13];
}

uint64_t __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__PKAccountService_insertOrUpdateLocalAccount_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)setNeedsSyncToFinanceForAllTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4770;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 setNeedsSyncToFinanceForAllTransactionsWithCompletion:v10];
}

uint64_t __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke_3;
  v5[3] = &unk_1E79C4748;
  v6 = *(a1 + 40);
  v7 = a2;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v9 = v4;
  dispatch_async(v3, block);
}

uint64_t __74__PKAccountService_setNeedsSyncToFinanceForAllTransactionsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)scheduleSetupReminderForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:&__block_literal_global_228];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKAccountService_scheduleSetupReminderForAccountWithIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E79C4A40;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 scheduleSetupReminderForAccountWithIdentifier:identifierCopy completion:v12];
}

void __77__PKAccountService_scheduleSetupReminderForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKAccountService_scheduleSetupReminderForAccountWithIdentifier_completion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __77__PKAccountService_scheduleSetupReminderForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertSummaryNotificationForAccountIdentifier:(id)identifier summaryType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke_2;
  v15[3] = &unk_1E79C4C70;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 insertSummaryNotificationForAccountIdentifier:identifierCopy summaryType:type completion:v15];
}

uint64_t __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __89__PKAccountService_insertSummaryNotificationForAccountIdentifier_summaryType_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)insertDailyCashNotificationForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertDailyCashNotificationForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __79__PKAccountService_insertDailyCashNotificationForAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)paymentFundingSourcesForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4838;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 paymentFundingSourcesForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__PKAccountService_paymentFundingSourcesForAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)paymentFundingSourceForIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E3540;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 paymentFundingSourceForIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__PKAccountService_paymentFundingSourceForIdentifier_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updatePaymentFundingSourcesForAccountIdentifier:(id)identifier force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke_2;
  v15[3] = &unk_1E79C4BD0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updatePaymentFundingSourcesForAccountIdentifier:identifierCopy force:forceCopy completion:v15];
}

uint64_t __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __85__PKAccountService_updatePaymentFundingSourcesForAccountIdentifier_force_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)defaultAccountForFeature:(unint64_t)feature
{
  v5 = [(PKAccountService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__83;
  v13 = __Block_byref_object_dispose__83;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PKAccountService_defaultAccountForFeature___block_invoke;
  v8[3] = &unk_1E79E3568;
  v8[4] = self;
  v8[5] = &v9;
  [v5 defaultAccountForFeature:feature usingSynchronousProxy:1 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)defaultAccountForFeature:(unint64_t)feature completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__PKAccountService_defaultAccountForFeature_completion___block_invoke;
    v14[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v15 = v9;
    v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v14];
    v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PKAccountService_defaultAccountForFeature_completion___block_invoke_2;
    v12[3] = &unk_1E79E3590;
    v12[4] = self;
    v13 = v9;
    [v11 defaultAccountForFeature:feature usingSynchronousProxy:0 completion:v12];
  }
}

- (void)termsWithIdentifier:(id)identifier accepted:(BOOL)accepted withAccountIdentifier:(id)accountIdentifier completion:(id)completion
{
  acceptedCopy = accepted;
  completionCopy = completion;
  v12 = completionCopy;
  if (completionCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__PKAccountService_termsWithIdentifier_accepted_withAccountIdentifier_completion___block_invoke;
    v20[3] = &unk_1E79C4450;
    v13 = completionCopy;
    v21 = v13;
    accountIdentifierCopy = accountIdentifier;
    identifierCopy = identifier;
    v16 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
    v17 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v16];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__PKAccountService_termsWithIdentifier_accepted_withAccountIdentifier_completion___block_invoke_2;
    v18[3] = &unk_1E79C4450;
    v19 = v13;
    [v17 termsWithIdentifier:identifierCopy accepted:acceptedCopy withAccountIdentifier:accountIdentifierCopy completion:v18];
  }
}

uint64_t __82__PKAccountService_termsWithIdentifier_accepted_withAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performAccountAction:(id)action withAccountIdentifier:(id)identifier accountUserAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v12 = completionCopy;
  if (completionCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke;
    v21[3] = &unk_1E79C4450;
    v13 = completionCopy;
    v22 = v13;
    dCopy = d;
    identifierCopy = identifier;
    actionCopy = action;
    v17 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v21];
    v18 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v17];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke_2;
    v19[3] = &unk_1E79C4928;
    v19[4] = self;
    v20 = v13;
    [v18 performAccountAction:actionCopy withAccountIdentifier:identifierCopy accountUserAltDSID:dCopy completion:v19];
  }
}

uint64_t __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __93__PKAccountService_performAccountAction_withAccountIdentifier_accountUserAltDSID_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)userInfoForAccountIdentifier:(id)identifier forceFetch:(BOOL)fetch completion:(id)completion
{
  fetchCopy = fetch;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke;
    v17[3] = &unk_1E79C4450;
    v11 = completionCopy;
    v18 = v11;
    identifierCopy = identifier;
    v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
    v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke_2;
    v15[3] = &unk_1E79E35B8;
    v15[4] = self;
    v16 = v11;
    [v14 userInfoForAccountIdentifier:identifierCopy forceFetch:fetchCopy completion:v15];
  }
}

uint64_t __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __71__PKAccountService_userInfoForAccountIdentifier_forceFetch_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateUserInfoForAccountIdentifier:(id)identifier contact:(id)contact completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke;
    v18[3] = &unk_1E79C4450;
    v11 = completionCopy;
    v19 = v11;
    contactCopy = contact;
    identifierCopy = identifier;
    v14 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
    v15 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v14];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke_2;
    v16[3] = &unk_1E79E35E0;
    v16[4] = self;
    v17 = v11;
    [v15 updateUserInfoForAccountIdentifier:identifierCopy contact:contactCopy completion:v16];
  }
}

uint64_t __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __74__PKAccountService_updateUserInfoForAccountIdentifier_contact_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)lastUsedInAppFundingSourceForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = completionCopy;
    v16 = v9;
    identifierCopy = identifier;
    v11 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79E3608;
    v13[4] = self;
    v14 = v9;
    [v12 lastUsedInAppFundingSourceForAccountIdentifier:identifierCopy completion:v13];
  }
}

uint64_t __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __78__PKAccountService_lastUsedInAppFundingSourceForAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateLastUsedInAppFundingSource:(id)source accountIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    sourceCopy = source;
    v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:0];
    [v8 updateLastUsedInAppFundingSource:sourceCopy accountIdentifier:identifierCopy];
  }
}

- (void)eventsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D6028;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 eventsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __58__PKAccountService_eventsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)eventsForAccountIdentifier:(id)identifier types:(id)types startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(unint64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke;
  v28[3] = &unk_1E79C4450;
  v18 = completionCopy;
  v29 = v18;
  endDateCopy = endDate;
  dateCopy = date;
  typesCopy = types;
  identifierCopy = identifier;
  v23 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v28];
  v24 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v23];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke_2;
  v26[3] = &unk_1E79C4BD0;
  v26[4] = self;
  v27 = v18;
  v25 = v18;
  [v24 eventsForAccountIdentifier:identifierCopy types:typesCopy startDate:dateCopy endDate:endDateCopy orderedByDate:byDate limit:limit completion:v26];
}

uint64_t __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __102__PKAccountService_eventsForAccountIdentifier_types_startDate_endDate_orderedByDate_limit_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)deleteEventsWithAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteEventsWithAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __65__PKAccountService_deleteEventsWithAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteEventWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteEventWithIdentifier:identifierCopy completion:v13];
}

uint64_t __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __57__PKAccountService_deleteEventWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteEventsWithAccountIdentifier:(id)identifier excludingTypes:(id)types completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  typesCopy = types;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteEventsWithAccountIdentifier:identifierCopy excludingTypes:typesCopy completion:v16];
}

uint64_t __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __80__PKAccountService_deleteEventsWithAccountIdentifier_excludingTypes_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)insertEvents:(id)events withAccountidentifier:(id)accountidentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountidentifierCopy = accountidentifier;
  eventsCopy = events;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertEvents:eventsCopy withAccountidentifier:accountidentifierCopy completion:v16];
}

uint64_t __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __66__PKAccountService_insertEvents_withAccountidentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateCreditStatementsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D6028;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateCreditStatementsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __74__PKAccountService_updateCreditStatementsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)creditStatementsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79D6028;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 creditStatementsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __68__PKAccountService_creditStatementsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)creditStatementsForStatementIdentifiers:(id)identifiers accountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79D6028;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 creditStatementsForStatementIdentifiers:identifiersCopy accountIdentifier:identifierCopy completion:v16];
}

uint64_t __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __89__PKAccountService_creditStatementsForStatementIdentifiers_accountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateSavingsStatementsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateSavingsStatementsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __75__PKAccountService_updateSavingsStatementsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)savingsStatementsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 savingsStatementsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __69__PKAccountService_savingsStatementsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountStatementMetadataForAllAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4518;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 accountStatementMetadataForAllAccountsWithCompletion:v10];
}

uint64_t __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __73__PKAccountService_accountStatementMetadataForAllAccountsWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E3630;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 accountStatementMetadataForStatementIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __96__PKAccountService_accountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E3630;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateAccountStatementMetadataForStatementIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __102__PKAccountService_updateAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)deleteAccountStatementMetadataForStatementIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteAccountStatementMetadataForStatementIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __102__PKAccountService_deleteAccountStatementMetadataForStatementIdentifier_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)triggerStatementMetadataProcessingForAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  statementIdentifierCopy = statementIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E3630;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 triggerStatementMetadataProcessingForAccountIdentifier:identifierCopy statementIdentifier:statementIdentifierCopy completion:v16];
}

uint64_t __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __106__PKAccountService_triggerStatementMetadataProcessingForAccountIdentifier_statementIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateTaxFormsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateTaxFormsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __66__PKAccountService_updateTaxFormsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)taxFormsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 taxFormsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __60__PKAccountService_taxFormsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)lastRedemptionEventToDestination:(unint64_t)destination forAccountIdentifier:(id)identifier altDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v21 = v12;
  dCopy = d;
  identifierCopy = identifier;
  v15 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
  v16 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke_2;
  v18[3] = &unk_1E79E3658;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 lastRedemptionEventToDestination:destination forAccountIdentifier:identifierCopy altDSID:dCopy completion:v18];
}

uint64_t __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __93__PKAccountService_lastRedemptionEventToDestination_forAccountIdentifier_altDSID_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)createVirtualCard:(int64_t)card forAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E79E3680;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 createVirtualCard:card forAccountIdentifier:identifierCopy completion:v15];
}

uint64_t __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __70__PKAccountService_createVirtualCard_forAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)performVirtualCardAction:(int64_t)action forVirtualCardIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v21 = v12;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v15 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
  v16 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E79E3680;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 performVirtualCardAction:action forVirtualCardIdentifier:identifierCopy forAccountIdentifier:accountIdentifierCopy completion:v18];
}

uint64_t __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __102__PKAccountService_performVirtualCardAction_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)updateVirtualCardsWithAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E36A8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateVirtualCardsWithAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __71__PKAccountService_updateVirtualCardsWithAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)cardCredentialsForVirtualCard:(id)card authorization:(id)authorization action:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v21 = v12;
  authorizationCopy = authorization;
  cardCopy = card;
  v15 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
  v16 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke_2;
  v18[3] = &unk_1E79E36D0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 cardCredentialsForVirtualCard:cardCopy authorization:authorizationCopy action:action completion:v18];
}

uint64_t __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __82__PKAccountService_cardCredentialsForVirtualCard_authorization_action_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)noteVirtualCardAutoFilledBySafari:(id)safari completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  safariCopy = safari;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 noteVirtualCardAutoFilledBySafari:safariCopy completion:v13];
}

uint64_t __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __65__PKAccountService_noteVirtualCardAutoFilledBySafari_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)fetchKeychainCredentialForVirtualCardIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 fetchKeychainCredentialForVirtualCardIdentifier:identifierCopy forAccountIdentifier:accountIdentifierCopy completion:v16];
}

uint64_t __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __100__PKAccountService_fetchKeychainCredentialForVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)writeVirtualCardToKeychain:(id)keychain completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  keychainCopy = keychain;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke_2;
  v13[3] = &unk_1E79C4A40;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 writeVirtualCardToKeychain:keychainCopy completion:v13];
}

uint64_t __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __58__PKAccountService_writeVirtualCardToKeychain_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)virtualCardsInKeychainWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4810;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 virtualCardsInKeychainWithCompletion:v10];
}

uint64_t __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __57__PKAccountService_virtualCardsInKeychainWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)noteSecurityCodeActivityWithAction:(int64_t)action forSecurityCodeIdentifier:(id)identifier forVirtualCardIdentifier:(id)cardIdentifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke;
  v23[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v24 = v14;
  accountIdentifierCopy = accountIdentifier;
  cardIdentifierCopy = cardIdentifier;
  identifierCopy = identifier;
  v18 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v23];
  v19 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v18];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2;
  v21[3] = &unk_1E79E36F8;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 noteSecurityCodeActivityWithAction:action forSecurityCodeIdentifier:identifierCopy forVirtualCardIdentifier:cardIdentifierCopy forAccountIdentifier:accountIdentifierCopy completion:v21];
}

uint64_t __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __138__PKAccountService_noteSecurityCodeActivityWithAction_forSecurityCodeIdentifier_forVirtualCardIdentifier_forAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)physicalCardsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4810;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 physicalCardsForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __69__PKAccountService_physicalCardsForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updatePhysicalCardsForAccountWithIdentifier:(id)identifier force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke_2;
  v15[3] = &unk_1E79D6028;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updatePhysicalCardsForAccountWithIdentifier:identifierCopy force:forceCopy completion:v15];
}

uint64_t __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke_3;
  v11[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __81__PKAccountService_updatePhysicalCardsForAccountWithIdentifier_force_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)beginPhysicalCardRequestWithOrder:(id)order forAccountWithIdentifier:(id)identifier accountUserAltDSID:(id)d deviceMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke;
  v24[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v25 = v14;
  metadataCopy = metadata;
  dCopy = d;
  identifierCopy = identifier;
  orderCopy = order;
  v19 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v24];
  v20 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v19];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_2;
  v22[3] = &unk_1E79E3720;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 beginPhysicalCardRequestWithOrder:orderCopy forAccountWithIdentifier:identifierCopy accountUserAltDSID:dCopy deviceMetadata:metadataCopy completion:v22];
}

uint64_t __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, 0, a2);
  }

  return result;
}

void __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(*(a1 + 32) + 40);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_3;
  v25[3] = &unk_1E79CAA08;
  v17 = *(a1 + 40);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v18 = *(a1 + 32);
  v30 = v15;
  v31 = v18;
  v32 = v17;
  v19 = v25;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v34 = v19;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  dispatch_async(v16, block);
}

uint64_t __124__PKAccountService_beginPhysicalCardRequestWithOrder_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_3(void *a1)
{
  result = a1[10];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7], a1[8]);
  }

  return result;
}

- (void)completePhysicalCardRequest:(id)request withSignature:(id)signature completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  signatureCopy = signature;
  requestCopy = request;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke_2;
  v16[3] = &unk_1E79E3748;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 completePhysicalCardRequest:requestCopy withSignature:signatureCopy completion:v16];
}

uint64_t __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __73__PKAccountService_completePhysicalCardRequest_withSignature_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)beginPhysicalCardAction:(id)action onPhysicalCardWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier accountUserAltDSID:(id)d deviceMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke;
  v27[3] = &unk_1E79C4450;
  v16 = completionCopy;
  v28 = v16;
  metadataCopy = metadata;
  dCopy = d;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  actionCopy = action;
  v22 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v27];
  v23 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v22];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_2;
  v25[3] = &unk_1E79E3770;
  v25[4] = self;
  v26 = v16;
  v24 = v16;
  [v23 beginPhysicalCardAction:actionCopy onPhysicalCardWithIdentifier:identifierCopy forAccountWithIdentifier:withIdentifierCopy accountUserAltDSID:dCopy deviceMetadata:metadataCopy completion:v25];
}

uint64_t __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, 0, a2);
  }

  return result;
}

void __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(*(a1 + 32) + 40);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_3;
  v25[3] = &unk_1E79CAA08;
  v17 = *(a1 + 40);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v18 = *(a1 + 32);
  v30 = v15;
  v31 = v18;
  v32 = v17;
  v19 = v25;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v34 = v19;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  dispatch_async(v16, block);
}

uint64_t __143__PKAccountService_beginPhysicalCardAction_onPhysicalCardWithIdentifier_forAccountWithIdentifier_accountUserAltDSID_deviceMetadata_completion___block_invoke_3(void *a1)
{
  result = a1[10];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6], a1[7], a1[8]);
  }

  return result;
}

- (void)completePhysicalCardActionRequest:(id)request withSignature:(id)signature completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  signatureCopy = signature;
  requestCopy = request;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke_2;
  v16[3] = &unk_1E79E36A8;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 completePhysicalCardActionRequest:requestCopy withSignature:signatureCopy completion:v16];
}

uint64_t __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __79__PKAccountService_completePhysicalCardActionRequest_withSignature_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)activateBroadwayPhysicalCardWithActivationCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  codeCopy = code;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke_2;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 activatePhysicalCardWithActivationCode:codeCopy completion:v13];
}

uint64_t __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __78__PKAccountService_activateBroadwayPhysicalCardWithActivationCode_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)inactivePhysicalCardForFeatureIdentifier:(unint64_t)identifier completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v14];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E79E3798;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 inactivatePhysicalCardForFeatureIdentifier:identifier completion:v12];
}

uint64_t __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __72__PKAccountService_inactivePhysicalCardForFeatureIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)physicalCardForFeatureIdentifier:(unint64_t)identifier activationCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  codeCopy = code;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke_2;
  v15[3] = &unk_1E79E3798;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 physicalCardForFeatureIdentifier:identifier activationCode:codeCopy completion:v15];
}

uint64_t __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __79__PKAccountService_physicalCardForFeatureIdentifier_activationCode_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)activatePhysicalCard:(id)card withActivationCode:(id)code forFeatureIdentifier:(unint64_t)identifier completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v11 = completionCopy;
  v21 = v11;
  codeCopy = code;
  cardCopy = card;
  v14 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
  v15 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v14];

  identifier = [cardCopy identifier];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E79CA9E0;
  v18[4] = self;
  v19 = v11;
  v17 = v11;
  [v15 activatePhysicalCardWithIdentifier:identifier activationCode:codeCopy completion:v18];
}

uint64_t __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

void __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke_3;
  v6[3] = &unk_1E79C4658;
  v7 = *(a1 + 40);
  v8 = a2;
  v6[4] = *(a1 + 32);
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, block);
}

uint64_t __92__PKAccountService_activatePhysicalCard_withActivationCode_forFeatureIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)processPhysicalCardExpirationMessaging:(id)messaging physicalCards:(id)cards account:(id)account
{
  accountCopy = account;
  cardsCopy = cards;
  messagingCopy = messaging;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  [v13 processPhysicalCardExpirationMessaging:messagingCopy physicalCards:cardsCopy account:accountCopy];
}

- (void)billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:(id)identifier withStatementIdentifier:(id)statementIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  statementIdentifierCopy = statementIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4BD0;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:identifierCopy withStatementIdentifier:statementIdentifierCopy completion:v16];
}

uint64_t __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __120__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStatementIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:(id)identifier withStartDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke;
  v21[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v22 = v12;
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  v16 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v21];
  v17 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke_2;
  v19[3] = &unk_1E79C4BD0;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier:identifierCopy withStartDate:dateCopy endDate:endDateCopy completion:v19];
}

uint64_t __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __118__PKAccountService_billPaymentSelectedSuggestedAmountDataEventsForAccountIdentifier_withStartDate_endDate_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)scheduledPaymentsWithAccountIdentifier:(id)identifier includeFailedRecurringPayments:(BOOL)payments allowFetchFromServer:(BOOL)server completion:(id)completion
{
  serverCopy = server;
  paymentsCopy = payments;
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke;
  v19[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v20 = v12;
  identifierCopy = identifier;
  v14 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v19];
  v15 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v14];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke_2;
  v17[3] = &unk_1E79C4BD0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 scheduledPaymentsWithAccountIdentifier:identifierCopy includeFailedRecurringPayments:paymentsCopy allowFetchFromServer:serverCopy completion:v17];
}

uint64_t __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __122__PKAccountService_scheduledPaymentsWithAccountIdentifier_includeFailedRecurringPayments_allowFetchFromServer_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateScheduledPaymentsWithAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  accountCopy = account;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateScheduledPaymentsWithAccount:accountCopy completion:v13];
}

uint64_t __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __66__PKAccountService_updateScheduledPaymentsWithAccount_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)markUserViewedIntroduction:(BOOL)introduction forInstallmentIdentifiers:(id)identifiers accountIdentifier:(id)identifier
{
  introductionCopy = introduction;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v11 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v12 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v11];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKAccountService_markUserViewedIntroduction_forInstallmentIdentifiers_accountIdentifier___block_invoke;
  v13[3] = &unk_1E79C7D08;
  v13[4] = self;
  [v12 markUserViewedIntroduction:introductionCopy forInstallmentIdentifiers:identifiersCopy accountIdentifier:identifierCopy completion:v13];
}

void __91__PKAccountService_markUserViewedIntroduction_forInstallmentIdentifiers_accountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PKAccountService_markUserViewedIntroduction_forInstallmentIdentifiers_accountIdentifier___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __91__PKAccountService_markUserViewedIntroduction_forInstallmentIdentifiers_accountIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in markBillPaymentInstallmentInterstitialViewedForInstallment: %@", &v3, 0xCu);
    }
  }
}

- (void)exportTransactionDataForAccountIdentifier:(id)identifier withFileFormat:(id)format beginDate:(id)date endDate:(id)endDate productTimeZone:(id)zone completion:(id)completion
{
  completionCopy = completion;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  formatCopy = format;
  identifierCopy = identifier;
  v21 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v22 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v21];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __122__PKAccountService_exportTransactionDataForAccountIdentifier_withFileFormat_beginDate_endDate_productTimeZone_completion___block_invoke;
  v24[3] = &unk_1E79E37C0;
  v24[4] = self;
  v25 = completionCopy;
  v23 = completionCopy;
  [v22 exportTransactionDataForAccountIdentifier:identifierCopy withFileFormat:formatCopy beginDate:dateCopy endDate:endDateCopy productTimeZone:zoneCopy completion:v24];
}

void __122__PKAccountService_exportTransactionDataForAccountIdentifier_withFileFormat_beginDate_endDate_productTimeZone_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __122__PKAccountService_exportTransactionDataForAccountIdentifier_withFileFormat_beginDate_endDate_productTimeZone_completion___block_invoke_2;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __122__PKAccountService_exportTransactionDataForAccountIdentifier_withFileFormat_beginDate_endDate_productTimeZone_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)sharedAccountCloudStoreWithAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PKAccountService_sharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke;
  v12[3] = &unk_1E79E37E8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 sharedAccountCloudStoreWithAccountIdentifier:identifierCopy completion:v12];
}

void __76__PKAccountService_sharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PKAccountService_sharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke_2;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __76__PKAccountService_sharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateSharedAccountCloudStoreWithAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKAccountService_updateSharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke;
  v12[3] = &unk_1E79E3810;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 updateSharedAccountCloudStoreWithAccountIdentifier:identifierCopy completion:v12];
}

void __82__PKAccountService_updateSharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKAccountService_updateSharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __82__PKAccountService_updateSharedAccountCloudStoreWithAccountIdentifier_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)didAddAccountPendingFamilyMembers:(id)members
{
  membersCopy = members;
  v6 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v7 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v6];

  [v7 didAddAccountPendingFamilyMembers:membersCopy];
}

- (void)accountPendingFamilyMembersForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKAccountService_accountPendingFamilyMembersForAccountIdentifier_completion___block_invoke;
  v12[3] = &unk_1E79C4BD0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 accountPendingFamilyMembersForAccountIdentifier:identifierCopy completion:v12];
}

void __79__PKAccountService_accountPendingFamilyMembersForAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKAccountService_accountPendingFamilyMembersForAccountIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __79__PKAccountService_accountPendingFamilyMembersForAccountIdentifier_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)accountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__83;
  v21 = __Block_byref_object_dispose__83;
  v22 = 0;
  v13 = [(PKAccountService *)self _synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_56_1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PKAccountService_accountBalancesForAccountIdentifier_startDate_endDate_type___block_invoke_57;
  v16[3] = &unk_1E79D6538;
  v16[4] = self;
  v16[5] = &v17;
  [v13 accountBalancesForAccountIdentifier:identifierCopy startDate:dateCopy endDate:endDateCopy type:type completion:v16];
  v14 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v14;
}

void __79__PKAccountService_accountBalancesForAccountIdentifier_startDate_endDate_type___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "XPC Error fetching balances %@", &v4, 0xCu);
    }
  }
}

void __79__PKAccountService_accountBalancesForAccountIdentifier_startDate_endDate_type___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching balances %@", &v10, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)updateAccountBalancesForAccountIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate type:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  identifierCopy = identifier;
  v17 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v18 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v17];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PKAccountService_updateAccountBalancesForAccountIdentifier_startDate_endDate_type_completion___block_invoke;
  v20[3] = &unk_1E79C4BD0;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [v18 updateAccountBalancesForAccountIdentifier:identifierCopy startDate:dateCopy endDate:endDateCopy type:type completion:v20];
}

void __96__PKAccountService_updateAccountBalancesForAccountIdentifier_startDate_endDate_type_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKAccountService_updateAccountBalancesForAccountIdentifier_startDate_endDate_type_completion___block_invoke_2;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __96__PKAccountService_updateAccountBalancesForAccountIdentifier_startDate_endDate_type_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)resetAccountBalancesForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:0];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKAccountService_resetAccountBalancesForAccountIdentifier_completion___block_invoke;
  v12[3] = &unk_1E79C4C70;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 resetAccountBalancesForAccountIdentifier:identifierCopy completion:v12];
}

void __72__PKAccountService_resetAccountBalancesForAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKAccountService_resetAccountBalancesForAccountIdentifier_completion___block_invoke_2;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __72__PKAccountService_resetAccountBalancesForAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)attemptAppleBalanceSetupWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4C70;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 attemptAppleBalanceSetupWithCompletion:v10];
}

uint64_t __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__PKAccountService_attemptAppleBalanceSetupWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)attemptAppleStoredValueSetupWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4C70;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 attemptAppleBalanceSetupWithCompletion:v10];
}

uint64_t __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__PKAccountService_attemptAppleStoredValueSetupWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)validateAppleBalanceSecurityRequirementsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke;
  v12[3] = &unk_1E79C4450;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v12];
  v8 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4568;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 validateAppleBalanceSecurityRequirementsWithCompletion:v10];
}

uint64_t __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __75__PKAccountService_validateAppleBalanceSecurityRequirementsWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)triggerCloudStoreZoneCreationForAccount:(id)account withCompletion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  accountCopy = account;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79C4770;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 triggerCloudStoreZoneCreationForAccount:accountCopy withCompletion:v13];
}

uint64_t __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __75__PKAccountService_triggerCloudStoreZoneCreationForAccount_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)backgroundProvisionInProgressForFeature:(unint64_t)feature withCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke;
  v14[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v14];
  v10 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke_2;
  v12[3] = &unk_1E79C4770;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 backgroundProvisionInProgressForFeature:feature withCompletion:v12];
}

uint64_t __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __75__PKAccountService_backgroundProvisionInProgressForFeature_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)invalidateTopUpTokenWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 invalidateTopUpTokenWithIdentifier:identifierCopy forAccountWithIdentifier:withIdentifierCopy completion:v16];
}

uint64_t __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __91__PKAccountService_invalidateTopUpTokenWithIdentifier_forAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)appleBalancePromotionForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E3838;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 appleBalancePromotionForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __77__PKAccountService_appleBalancePromotionForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteAppleBalancePromotionForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteAppleBalancePromotionForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__PKAccountService_deleteAppleBalancePromotionForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)inStoreTopUpTokenForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E3860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 inStoreTopUpTokenForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__PKAccountService_inStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)insertOrUpdateInStoreTopUpToken:(id)token accountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  tokenCopy = token;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertOrUpdateInStoreTopUpToken:tokenCopy accountIdentifier:identifierCopy completion:v16];
}

uint64_t __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __81__PKAccountService_insertOrUpdateInStoreTopUpToken_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteInStoreTopUpTokenForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4C70;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteInStoreTopUpTokenForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __79__PKAccountService_deleteInStoreTopUpTokenForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)dailyCashEligibleDestinationsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E3888;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 dailyCashEligibleDestinationsForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __85__PKAccountService_dailyCashEligibleDestinationsForAccountWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)accountHoldsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountHoldsForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__PKAccountService_accountHoldsForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)rewardsTierSummaryForTransactionSourceIdentifiers:(id)identifiers currencyCode:(id)code startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke;
  v24[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v25 = v14;
  endDateCopy = endDate;
  dateCopy = date;
  codeCopy = code;
  identifiersCopy = identifiers;
  v19 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v24];
  v20 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v19];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke_2;
  v22[3] = &unk_1E79E38B0;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 rewardsTierSummaryForTransactionSourceIdentifiers:identifiersCopy currencyCode:codeCopy startDate:dateCopy endDate:endDateCopy completion:v22];
}

uint64_t __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __112__PKAccountService_rewardsTierSummaryForTransactionSourceIdentifiers_currencyCode_startDate_endDate_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateAccountPromotionsForAccountWithIdentifier:(id)identifier observeCooldownPeriod:(BOOL)period completion:(id)completion
{
  periodCopy = period;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke_2;
  v15[3] = &unk_1E79C4BD0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updateAccountPromotionsForAccountWithIdentifier:identifierCopy observeCooldownPeriod:periodCopy completion:v15];
}

uint64_t __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __101__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_observeCooldownPeriod_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountPromotionsForAccountWithIdentifier:(id)identifier ignoreErrorBackoff:(BOOL)backoff observeCooldownPeriod:(BOOL)period completion:(id)completion
{
  periodCopy = period;
  backoffCopy = backoff;
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke;
  v19[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v20 = v12;
  identifierCopy = identifier;
  v14 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v19];
  v15 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v14];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke_2;
  v17[3] = &unk_1E79C4BD0;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 updateAccountPromotionsForAccountWithIdentifier:identifierCopy ignoreErrorBackoff:backoffCopy observeCooldownPeriod:periodCopy completion:v17];
}

uint64_t __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __120__PKAccountService_updateAccountPromotionsForAccountWithIdentifier_ignoreErrorBackoff_observeCooldownPeriod_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)insertOrUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  promotionsCopy = promotions;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertOrUpdateAccountPromotions:promotionsCopy accountIdentifier:identifierCopy completion:v16];
}

uint64_t __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __81__PKAccountService_insertOrUpdateAccountPromotions_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)accountPromotionsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4838;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountPromotionsForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__PKAccountService_accountPromotionsForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteAccountPromotion:(id)promotion forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  promotionCopy = promotion;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteAccountPromotion:promotionCopy forAccountWithIdentifier:identifierCopy completion:v16];
}

uint64_t __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __79__PKAccountService_deleteAccountPromotion_forAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateImpressionCountsForPromotions:(id)promotions accountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  promotionsCopy = promotions;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateImpressionCountsForPromotions:promotionsCopy accountIdentifier:identifierCopy completion:v16];
}

uint64_t __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __85__PKAccountService_updateImpressionCountsForPromotions_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v21 = v12;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v15 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v20];
  v16 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E79C4C70;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 updateImpressionCount:count promotionProgramIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy completion:v18];
}

uint64_t __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __98__PKAccountService_updateImpressionCount_promotionProgramIdentifier_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)accountPromotionBehaviorForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E38D8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountPromotionBehaviorForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __80__PKAccountService_accountPromotionBehaviorForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateAccountEnhancedMerchantsForAccountWithIdentifier:(id)identifier cooldownLevel:(unint64_t)level completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke_2;
  v15[3] = &unk_1E79C4BD0;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updateAccountEnhancedMerchantsForAccountWithIdentifier:identifierCopy cooldownLevel:level completion:v15];
}

uint64_t __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __100__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_cooldownLevel_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateAccountEnhancedMerchantsForAccountWithIdentifier:(id)identifier ignoreErrorBackoff:(BOOL)backoff cooldownLevel:(unint64_t)level completion:(id)completion
{
  backoffCopy = backoff;
  completionCopy = completion;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke;
  v19[3] = &unk_1E79C4450;
  v12 = completionCopy;
  v20 = v12;
  identifierCopy = identifier;
  v14 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v19];
  v15 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v14];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke_2;
  v17[3] = &unk_1E79E3900;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 updateAccountEnhancedMerchantsForAccountWithIdentifier:identifierCopy ignoreErrorBackoff:backoffCopy cooldownLevel:level completion:v17];
}

uint64_t __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2, 0);
  }

  return result;
}

void __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __119__PKAccountService_updateAccountEnhancedMerchantsForAccountWithIdentifier_ignoreErrorBackoff_cooldownLevel_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)insertOrUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  merchantsCopy = merchants;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 insertOrUpdateAccountEnhancedMerchants:merchantsCopy accountIdentifier:identifierCopy completion:v16];
}

uint64_t __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __88__PKAccountService_insertOrUpdateAccountEnhancedMerchants_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)accountEnhancedMerchantsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4838;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountEnhancedMerchantsForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __80__PKAccountService_accountEnhancedMerchantsForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteAccountEnhancedMerchant:(id)merchant forAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v19 = v10;
  identifierCopy = identifier;
  merchantCopy = merchant;
  v13 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteAccountEnhancedMerchant:merchantCopy forAccountWithIdentifier:identifierCopy completion:v16];
}

uint64_t __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __86__PKAccountService_deleteAccountEnhancedMerchant_forAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)accountEnhancedMerchantBehaviorForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E3928;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 accountEnhancedMerchantBehaviorForAccountWithIdentifier:identifierCopy completion:v13];
}

uint64_t __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __87__PKAccountService_accountEnhancedMerchantBehaviorForAccountWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateCreditRecoveryPaymentPlansForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79C4450;
  v8 = completionCopy;
  v16 = v8;
  identifierCopy = identifier;
  v10 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v15];
  v11 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4BD0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateCreditRecoveryPaymentPlansForAccountIdentifier:identifierCopy completion:v13];
}

uint64_t __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __84__PKAccountService_updateCreditRecoveryPaymentPlansForAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)creditRecoveryPaymentPlansForAccountIdentifier:(id)identifier allowFetchFromServer:(BOOL)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke_2;
  v15[3] = &unk_1E79C4838;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 creditRecoveryPaymentPlansForAccountIdentifier:identifierCopy allowFetchFromServer:serverCopy completion:v15];
}

uint64_t __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __99__PKAccountService_creditRecoveryPaymentPlansForAccountIdentifier_allowFetchFromServer_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)creditRecoveryPaymentPlanInformationForAccountIdentifier:(id)identifier allowFetchFromServer:(BOOL)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke_2;
  v15[3] = &unk_1E79E3978;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 creditRecoveryPaymentPlanInformationForAccountIdentifier:identifierCopy allowFetchFromServer:serverCopy completion:v15];
}

uint64_t __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke_2(uint64_t a1, char a2, char a3)
{
  v6 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke_3;
  v9[3] = &unk_1E79E3950;
  v7 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  v9[4] = *(a1 + 32);
  v10 = v7;
  v8 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v8;
  dispatch_async(v6, block);
}

uint64_t __109__PKAccountService_creditRecoveryPaymentPlanInformationForAccountIdentifier_allowFetchFromServer_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49));
  }

  return result;
}

- (void)accountEntityOrderingsForAccountWithIdentifier:(id)identifier entityType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke;
  v17[3] = &unk_1E79C4450;
  v10 = completionCopy;
  v18 = v10;
  identifierCopy = identifier;
  v12 = [(PKAccountService *)self errorHandlerForMethod:a2 completion:v17];
  v13 = [(PKAccountService *)self _remoteObjectProxyWithErrorHandler:v12];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke_2;
  v15[3] = &unk_1E79C4838;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 accountEntityOrderingsForAccountWithIdentifier:identifierCopy entityType:type completion:v15];
}

uint64_t __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_22;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __89__PKAccountService_accountEntityOrderingsForAccountWithIdentifier_entityType_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)supportsCardNumbersShortcutForPassUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(PKAccountService *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PKAccountService_supportsCardNumbersShortcutForPassUniqueID___block_invoke;
  v8[3] = &unk_1E79C4798;
  v8[4] = &v9;
  [v5 supportsCardNumbersShortcutForPassUniqueID:dCopy completion:v8];
  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
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
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__PKAccountService__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __48__PKAccountService__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)accountAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__PKAccountService_accountAdded___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = addedCopy;
  v5 = addedCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __33__PKAccountService_accountAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountAdded:*(a1 + 32)];
  }
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PKAccountService_accountChanged___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = changedCopy;
  v5 = changedCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __35__PKAccountService_accountChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountChanged:*(a1 + 32)];
  }
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PKAccountService_accountRemoved___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = removedCopy;
  v5 = removedCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __35__PKAccountService_accountRemoved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountRemoved:*(a1 + 32)];
  }
}

- (void)statementsChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKAccountService_statementsChangedForAccountIdentifier___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __58__PKAccountService_statementsChangedForAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 statementsChangedForAccountIdentifier:*(a1 + 32)];
  }
}

- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKAccountService_scheduledPaymentsChangedForAccountIdentifier___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __65__PKAccountService_scheduledPaymentsChangedForAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 scheduledPaymentsChangedForAccountIdentifier:*(a1 + 32)];
  }
}

- (void)didUpdatePaymentFundingSources:(id)sources accountIdentifier:(id)identifier
{
  sourcesCopy = sources;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PKAccountService_didUpdatePaymentFundingSources_accountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = sourcesCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = sourcesCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __69__PKAccountService_didUpdatePaymentFundingSources_accountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdatePaymentFundingSources:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  }
}

- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKAccountService_accountUsersChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = changedCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = changedCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __61__PKAccountService_accountUsersChanged_forAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accountUsersChanged:*(a1 + 32) forAccountIdentifier:*(a1 + 40)];
  }
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKAccountService_physicalCardsChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = changedCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = changedCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __62__PKAccountService_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 physicalCardsChanged:*(a1 + 32) forAccountIdentifier:*(a1 + 40)];
  }
}

- (void)didUpdateAccountPromotions:(id)promotions accountIdentifier:(id)identifier
{
  promotionsCopy = promotions;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKAccountService_didUpdateAccountPromotions_accountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = promotionsCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = promotionsCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __65__PKAccountService_didUpdateAccountPromotions_accountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateAccountPromotions:*(a1 + 32) accountIdentifier:*(a1 + 40)];
  }
}

- (void)didUpdateAccountEnhancedMerchants:(id)merchants accountIdentifier:(id)identifier lastUpdate:(id)update
{
  merchantsCopy = merchants;
  identifierCopy = identifier;
  updateCopy = update;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PKAccountService_didUpdateAccountEnhancedMerchants_accountIdentifier_lastUpdate___block_invoke;
  v14[3] = &unk_1E79E39F0;
  v15 = merchantsCopy;
  v16 = identifierCopy;
  v17 = updateCopy;
  v11 = updateCopy;
  v12 = identifierCopy;
  v13 = merchantsCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v14];
}

void __83__PKAccountService_didUpdateAccountEnhancedMerchants_accountIdentifier_lastUpdate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateAccountEnhancedMerchants:a1[4] accountIdentifier:a1[5] lastUpdate:a1[6]];
  }
}

- (void)creditRecoveryPaymentPlansChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKAccountService_creditRecoveryPaymentPlansChangedForAccountIdentifier___block_invoke;
  v6[3] = &unk_1E79E39A0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v6];
}

void __74__PKAccountService_creditRecoveryPaymentPlansChangedForAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 creditRecoveryPaymentPlansChangedForAccountIdentifier:*(a1 + 32)];
  }
}

- (void)didUpdateAppleBalancePromotion:(id)promotion forAccountIdentifier:(id)identifier
{
  promotionCopy = promotion;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKAccountService_didUpdateAppleBalancePromotion_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = promotionCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = promotionCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __72__PKAccountService_didUpdateAppleBalancePromotion_forAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateAppleBalancePromotion:*(a1 + 32) forAccountIdentifier:*(a1 + 40)];
  }
}

- (void)didRemoveAppleBalancePromotionWithUniqueIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PKAccountService_didRemoveAppleBalancePromotionWithUniqueIdentifier_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = identifierCopy;
  v12 = accountIdentifierCopy;
  v8 = accountIdentifierCopy;
  v9 = identifierCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __92__PKAccountService_didRemoveAppleBalancePromotionWithUniqueIdentifier_forAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemoveAppleBalancePromotionWithUniqueIdentifier:*(a1 + 32) forAccountIdentifier:*(a1 + 40)];
  }
}

- (void)didUpdateInStoreTopUpToken:(id)token forAccountIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKAccountService_didUpdateInStoreTopUpToken_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E79E39C8;
  v11 = tokenCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = tokenCopy;
  [(PKAccountService *)self _accessObserversWithHandler:v10];
}

void __68__PKAccountService_didUpdateInStoreTopUpToken_forAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateInStoreTopUpToken:*(a1 + 32) forAccountIdentifier:*(a1 + 40)];
  }
}

@end