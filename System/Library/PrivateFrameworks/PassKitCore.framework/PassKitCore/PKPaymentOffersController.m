@interface PKPaymentOffersController
+ (PKPaymentOffersController)sharedInstance;
- (BOOL)_criteriaIdentifierIsEligible:(id)a3;
- (BOOL)_eligibleToFetchMerchandising;
- (BOOL)_eligibleToFetchPaymentOfferCatalog;
- (BOOL)_handleNewCatalog:(id)a3 isServerFetch:(BOOL)a4;
- (BOOL)_handleOffersChangedForPassUniqueID:(id)a3 didRemove:(BOOL)a4;
- (BOOL)_paymentOfferCriteriaToKeep:(id)a3;
- (BOOL)didFetchMerchandisingOfferForPassUniqueID:(id)a3;
- (BOOL)hasAnyEligiblePaymentOfferCriteriaOfType:(unint64_t)a3;
- (BOOL)hasSeenLanguageDisclosureForCriteriaForIdentifier:(id)a3;
- (PKPaymentOffersController)initWithPaymentService:(id)a3 paymentWebService:(id)a4 configuration:(id)a5;
- (id)_criteriaEligibilityConfigurationForCriteria:(id)a3;
- (id)_eligibleCatalogItems;
- (id)_eligiblePaymentOfferCriteriaForPassUniqueID:(id)a3;
- (id)_initSharedInstance;
- (id)_initWithPaymentService:(id)a3 paymentWebService:(id)a4 configuration:(id)a5;
- (id)_redeemablePaymentRewardsBalanceFrom:(id)a3;
- (id)dynamicContentPageForCriteriaIdentifier:(id)a3 pageType:(unint64_t)a4;
- (id)eligiblePaymentOfferCriteriaForPassUniqueID:(id)a3 type:(unint64_t)a4;
- (id)eligiblePaymentOfferCriteriaNoAssociatedPassWithType:(unint64_t)a3;
- (id)eligiblePaymentOfferInstallmentCriteriaRequiringSetup;
- (id)fallbackSelectedPaymentOfferForType:(unint64_t)a3;
- (id)fetchedAndInflightMerchandisingIdentifiers;
- (id)ineligibleDetailsForCriteria:(id)a3;
- (id)loadingDetailsForPaymentOffersForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4;
- (id)loadingDetailsForRewardsBalanceForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4;
- (id)merchandisingIdentifiersForCriteriaIdentifiers:(id)a3;
- (id)merchandisingOfferForMerchandisingIdentifier:(id)a3;
- (id)merchandisingOfferForPassUniqueID:(id)a3;
- (id)paymentOfferCollectionForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4;
- (id)paymentOfferCriteriaForIdentifier:(id)a3;
- (id)paymentOfferCriteriaForPassUniqueID:(id)a3;
- (id)paymentOfferCriteriaForPassUniqueID:(id)a3 type:(unint64_t)a4;
- (id)paymentOfferInstallmentCriteriaRequiringSetup;
- (id)preferredLocalizationLanguageForCriteriaIdentifier:(id)a3;
- (id)rewardsBalanceForPassUniqueID:(id)a3;
- (unint64_t)preconfiguredInstallmentOfferStateForPassUniqueID:(id)a3;
- (void)_accessObserversWithHandler:(id)a3;
- (void)_addPaymentOffersControllerMerchandisingRequest:(id)a3;
- (void)_addPaymentOffersControllerRequest:(id)a3;
- (void)_executeNextPaymentOffersControllerMerchandisingRequestIfPossible;
- (void)_executeNextPaymentOffersControllerRequestIfPossible;
- (void)_fetchDeviceMetadataFields:(unint64_t)a3 completion:(id)a4;
- (void)_informObserversPaymentOfferCatalogChanged;
- (void)_informObserversPaymentOfferDynamicContentChanged;
- (void)_informObserversPaymentOfferMerchandisingChanged;
- (void)_informObserversPaymentOffersChangedForPassUniqueID:(id)a3;
- (void)_informObserversSelectedPaymentOfferChangedForPassUniqueID:(id)a3;
- (void)_performCancelRequest:(id)a3 completion:(id)a4;
- (void)_performCatalogRequest:(id)a3 completion:(id)a4;
- (void)_performConfirmRequest:(id)a3 completion:(id)a4;
- (void)_performDynamicContentRequest:(id)a3 completion:(id)a4;
- (void)_performMerchandisingRequest:(id)a3 completion:(id)a4;
- (void)_performPaymentOffersRequest:(id)a3 completion:(id)a4;
- (void)_performRewardsBalanceRequest:(id)a3 completion:(id)a4;
- (void)_performSelectRequest:(id)a3 completion:(id)a4;
- (void)_printCatalogEligibilityDebugDetails;
- (void)_updateCatalogLoadingState:(unint64_t)a3;
- (void)_updateLoadingDetailsState:(id)a3 criteriaIdentifier:(id)a4 passUniqueID:(id)a5 requestType:(unint64_t)a6;
- (void)_updatePreconfiguredInstallmentOfferStateForPassUniqueID:(id)a3;
- (void)_updatePreferredLanguageForSelectedOffer:(id)a3;
- (void)cancelOfferRequestWithCompletion:(id)a3;
- (void)clearCurrentSelectedPaymentOfferDetails;
- (void)confirmOfferRequestWithCompletion:(id)a3;
- (void)didEndContactlessPaymentSessionForPassUniqueID:(id)a3;
- (void)didReceiveValidMerchantSession;
- (void)markLanguageDisclosureAsSeenForCriteriaForIdentifier:(id)a3;
- (void)paymentOfferCatalogChangedFromPush:(id)a3;
- (void)registerObserver:(id)a3;
- (void)removeCachedMerchandising;
- (void)removeCachedPaymentOffers;
- (void)resetLoadingDetailsForPaymentOffersForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4;
- (void)selectOfferRequestWithCompletion:(id)a3;
- (void)selectedPaymentOfferRemoved:(id)a3 passUniqueID:(id)a4;
- (void)selectedPaymentOfferUpdated:(id)a3 passUniqueID:(id)a4;
- (void)setSelectedPassUniqueID:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateCurrentSelectedPaymentOffer:(id)a3 updateReason:(unint64_t)a4;
- (void)updateDynamicContentPageForCriteriaIdentifier:(id)a3 pageTypes:(id)a4 completion:(id)a5;
- (void)updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:(id)a3;
- (void)updatePaymentOfferCatalogIfNecessaryWithReason:(unint64_t)a3 completion:(id)a4;
- (void)updatePaymentOfferCatalogWithReason:(unint64_t)a3 completion:(id)a4;
- (void)updatePaymentOffersForCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 reason:(unint64_t)a5 completion:(id)a6;
- (void)updatePreconfiguredOfferStateForAllPasses;
- (void)updateRewardsBalanceForPass:(id)a3 criteriaIdentifier:(id)a4 completion:(id)a5;
- (void)updateSessionDetails:(id)a3;
- (void)willConsumeSelectedPaymentOfferForPassUniqueID:(id)a3;
@end

@implementation PKPaymentOffersController

+ (PKPaymentOffersController)sharedInstance
{
  os_unfair_lock_lock(&_MergedGlobals_211);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D1998);
  if (!WeakRetained)
  {
    WeakRetained = [[PKPaymentOffersController alloc] _initSharedInstance];
    objc_storeWeak(&qword_1ED6D1998, WeakRetained);
  }

  os_unfair_lock_unlock(&_MergedGlobals_211);

  return WeakRetained;
}

- (id)_initSharedInstance
{
  v3 = [PKPaymentOffersController alloc];
  v4 = +[PKPaymentService paymentService];
  v5 = +[PKPaymentWebService sharedService];
  v6 = [(PKPaymentOffersController *)v3 _initWithPaymentService:v4 paymentWebService:v5 configuration:0];

  return v6;
}

- (PKPaymentOffersController)initWithPaymentService:(id)a3 paymentWebService:(id)a4 configuration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PKPaymentOffersController alloc] _initWithPaymentService:v10 paymentWebService:v9 configuration:v8];

  return v11;
}

- (id)_initWithPaymentService:(id)a3 paymentWebService:(id)a4 configuration:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v9 && v10)
  {
    v62.receiver = self;
    v62.super_class = PKPaymentOffersController;
    v13 = [(PKPaymentOffersController *)&v62 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_paymentService, a3);
      [(PKPaymentService *)v14->_paymentService registerObserver:v14];
      objc_storeStrong(&v14->_paymentWebService, a4);
      v15 = [v10 context];
      v16 = [v15 primaryRegion];
      v17 = [v16 paymentOffersServiceURL];
      baseURL = v14->_baseURL;
      v14->_baseURL = v17;

      if (!v14->_baseURL)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v19 = [v15 regions];
        v20 = [v19 allValues];

        v21 = [v20 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v59;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v59 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v58 + 1) + 8 * i) paymentOffersServiceURL];
              if (v25)
              {
                v26 = v14->_baseURL;
                v14->_baseURL = v25;

                goto LABEL_15;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v58 objects:v63 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }

      v14->_lockObservers._os_unfair_lock_opaque = 0;
      v27 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      observers = v14->_observers;
      v14->_observers = v27;

      v29 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      queuedRequests = v14->_queuedRequests;
      v14->_queuedRequests = v29;

      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      sessionIdentifierForCriteriaIdentifier = v14->_sessionIdentifierForCriteriaIdentifier;
      v14->_sessionIdentifierForCriteriaIdentifier = v31;

      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      paymentOffersForCriteriaIdentifier = v14->_paymentOffersForCriteriaIdentifier;
      v14->_paymentOffersForCriteriaIdentifier = v33;

      v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dynamicContentPagesByCriteriaIdentifier = v14->_dynamicContentPagesByCriteriaIdentifier;
      v14->_dynamicContentPagesByCriteriaIdentifier = v35;

      v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
      languageDisclosuresSeenForCriteriaIdentifier = v14->_languageDisclosuresSeenForCriteriaIdentifier;
      v14->_languageDisclosuresSeenForCriteriaIdentifier = v37;

      v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
      preferredLanguageForCriteriaIdentifier = v14->_preferredLanguageForCriteriaIdentifier;
      v14->_preferredLanguageForCriteriaIdentifier = v39;

      v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requestLoadingDetails = v14->_requestLoadingDetails;
      v14->_requestLoadingDetails = v41;

      v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
      preconfiguredInstallmentStateForPassUniqueID = v14->_preconfiguredInstallmentStateForPassUniqueID;
      v14->_preconfiguredInstallmentStateForPassUniqueID = v43;

      v45 = dispatch_queue_create("com.apple.passkit.PKPaymentOffersController.reply", 0);
      replyQueue = v14->_replyQueue;
      v14->_replyQueue = v45;

      v14->_catalogLoadingState = 1;
      v47 = objc_alloc_init(PKPaymentOffersControllerSelectedOfferDetails);
      selectedOfferDetails = v14->_selectedOfferDetails;
      v14->_selectedOfferDetails = v47;

      v49 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      inflightMerchandisingRequests = v14->_inflightMerchandisingRequests;
      v14->_inflightMerchandisingRequests = v49;

      v51 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      queuedMerchandisingRequests = v14->_queuedMerchandisingRequests;
      v14->_queuedMerchandisingRequests = v51;

      v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      fetchedMerchandisingIdentifiers = v14->_fetchedMerchandisingIdentifiers;
      v14->_fetchedMerchandisingIdentifiers = v53;

      v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
      rewardsBalancesForPassUniqueID = v14->_rewardsBalancesForPassUniqueID;
      v14->_rewardsBalancesForPassUniqueID = v55;

      [(PKPaymentOffersController *)v14 updateSessionDetails:v11];
    }

    self = v14;
    v12 = self;
  }

  return v12;
}

- (void)updateSessionDetails:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_configuration = &self->_configuration;
  if (self->_configuration != v5)
  {
    objc_storeStrong(&self->_configuration, a3);
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_configuration;
      v33 = 138412290;
      v34 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Updating payment offer session details %@", &v33, 0xCu);
    }

    [(PKPaymentOffersController *)self clearCurrentSelectedPaymentOfferDetails];
    allSelectedInStorePaymentOffers = self->_allSelectedInStorePaymentOffers;
    self->_allSelectedInStorePaymentOffers = 0;

    if (self->_configuration)
    {
      if ([(PKPaymentOffersController *)self _eligibleToFetchPaymentOfferCatalog])
      {
        if (!self->_catalog)
        {
          v10 = [(PKPaymentService *)self->_paymentService paymentOffersCatalog];
          catalog = self->_catalog;
          self->_catalog = v10;
        }

        v12 = [*p_configuration passUniqueID];
        if ([*p_configuration context] != 1 || !v12)
        {
          goto LABEL_41;
        }

        [(PKPaymentOffersController *)self setSelectedPassUniqueID:v12];
        v13 = [(PKPaymentService *)self->_paymentService allSelectedPaymentOffersForPassUniqueID:v12];
        v14 = self->_allSelectedInStorePaymentOffers;
        self->_allSelectedInStorePaymentOffers = v13;

        v15 = [(NSArray *)self->_allSelectedInStorePaymentOffers firstObject];
        v16 = v15;
        if (v15 && ((v17 = self->_catalog, [v15 criteriaIdentifier], v18 = objc_claimAutoreleasedReturnValue(), -[PKPaymentOfferCatalog criteriaWithIdentifier:](v17, "criteriaWithIdentifier:", v18), v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v19, "type") != 1) ? (v20 = 0) : (v20 = v19), v21 = v20, v19, v21))
        {
          if ([v21 suppressPayInFull])
          {
            v22 = v16;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v33 = 138412290;
              v34 = v22;
              _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Auto selecting cached selected offer since suppressPayInFull is true %@", &v33, 0xCu);
            }

LABEL_31:
            v25 = [v16 criteriaIdentifier];
            v26 = [(PKPaymentOffersController *)self _criteriaIdentifierIsEligible:v25];

            if (v26)
            {
              if ([v22 storageType] == 1)
              {
                v27 = [v22 installmentSelectedPaymentOffer];
                v28 = [v27 userEnteredAmount];

                if (v28)
                {
                  v29 = *p_configuration;
                  v30 = [v28 amount];
                  [v29 updateTransactionAmount:v30];

                  v31 = *p_configuration;
                  v32 = [v28 currency];
                  [v31 updateCurrencyCode:v32];
                }
              }

              [(PKPaymentOffersController *)self updateCurrentSelectedPaymentOffer:v22 updateReason:11];
            }

            else
            {
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                v33 = 138412290;
                v34 = v22;
                _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Cannot auto select offer since the criteria isnt eligible: %@", &v33, 0xCu);
              }
            }

LABEL_40:

LABEL_41:
            goto LABEL_42;
          }
        }

        else
        {
          v19 = 0;
        }

        if ([v16 isSticky])
        {
          v22 = v16;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 138412290;
            v34 = v22;
            _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Auto selecting cached selected offer since it is sticky %@", &v33, 0xCu);
          }

          v23 = v7;
        }

        else
        {
          v23 = [(NSArray *)self->_allSelectedInStorePaymentOffers pk_objectsPassingTest:&__block_literal_global_67];
          v24 = [v23 pk_firstObjectPassingTest:&__block_literal_global_108];
          if (v24)
          {
            v22 = [v23 firstObject];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v33 = 138412290;
              v34 = v22;
              _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Auto selecting cached default installment selected offer %@", &v33, 0xCu);
            }
          }

          else
          {
            v22 = 0;
          }
        }

        if (!v22)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_42:
}

- (void)updateCurrentSelectedPaymentOffer:(id)a3 updateReason:(unint64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(PKPaymentOffersController *)self _updatePreferredLanguageForSelectedOffer:v6];
  v7 = [v6 installmentSelectedPaymentOffer];
  v8 = [v7 userEnteredAmount];

  if (v8)
  {
    [(PKPaymentOffersSessionDetails *)self->_configuration setUserEnteredAmount:v8];
    if ([(PKPaymentOffersSessionDetails *)self->_configuration context]== 1)
    {
      v9 = [(PKPaymentOffersSessionDetails *)self->_configuration transactionAmount];

      if (!v9)
      {
        configuration = self->_configuration;
        v11 = [v8 amount];
        [(PKPaymentOffersSessionDetails *)configuration updateTransactionAmount:v11];

        v12 = self->_configuration;
        v13 = [v8 currency];
        [(PKPaymentOffersSessionDetails *)v12 updateCurrencyCode:v13];
      }
    }
  }

  selectedPassUniqueID = self->_selectedPassUniqueID;
  if (selectedPassUniqueID)
  {
    v15 = selectedPassUniqueID;
  }

  else
  {
    v15 = [v6 passUniqueID];
  }

  v16 = v15;
  v17 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
  [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails updateCurrentSelectedPaymentOffer:v6 selectedPassUniqueID:v16 updateReason:a4];
  v18 = [v6 criteriaIdentifier];
  v19 = [v6 sessionIdentifier];
  v20 = v19;
  if (v18 && v19)
  {
    v21 = [(NSMutableDictionary *)self->_sessionIdentifierForCriteriaIdentifier objectForKeyedSubscript:v18];
    v22 = v21;
    if (v21)
    {
      if (v21 == v20 || ([v21 isEqualToString:v20] & 1) != 0)
      {
        goto LABEL_17;
      }

      v23 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412802;
        v31 = v22;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "There is a mismatch between the current defined sessionID %@ for criteriaID %@ and the newly selected payment offer sessionID %@. Using the sessionID on the selected offer.", &v30, 0x20u);
      }
    }

    [(NSMutableDictionary *)self->_sessionIdentifierForCriteriaIdentifier setObject:v20 forKeyedSubscript:v18];
LABEL_17:
  }

  [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferState];
  v24 = [(PKPaymentOffersSessionDetails *)self->_configuration context];
  if (a4 != 11 && v24 == 1)
  {
    if (v6 && v17)
    {
      if ([v17 isEqual:v6])
      {
        goto LABEL_28;
      }
    }

    else if (v17 == v6)
    {
      goto LABEL_28;
    }

    v25 = [MEMORY[0x1E695DF00] date];
    [v6 updateUserSelectionDate:v25];

    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v6;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Inserting the newly selected offer into the local database: %@", &v30, 0xCu);
    }

    v27 = [(PKPaymentService *)self->_paymentService updateSelectedPaymentOffer:v6 forPassUniqueID:v16];
    v28 = [(PKPaymentService *)self->_paymentService allSelectedPaymentOffersForPassUniqueID:v16];
    allSelectedInStorePaymentOffers = self->_allSelectedInStorePaymentOffers;
    self->_allSelectedInStorePaymentOffers = v28;
  }

LABEL_28:
}

- (void)clearCurrentSelectedPaymentOfferDetails
{
  [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails clearCurrentSelectedPaymentOfferDetails];

  [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferState];
}

- (void)updatePaymentOfferCatalogIfNecessaryWithReason:(unint64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PKPaymentOfferCatalog *)self->_catalog isOutOfDate])
  {
    v7 = [(PKPaymentOffersSessionDetails *)self->_configuration context];
    if (v7 && v7 != 2)
    {
      if (v7 != 1 || ((-[PKPaymentOffersSessionDetails passUniqueID](self->_configuration, "passUniqueID"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) || (-[PKPaymentOffersControllerSelectedOfferDetails selectedPassUniqueID](self->_selectedOfferDetails, "selectedPassUniqueID"), (v9 = objc_claimAutoreleasedReturnValue()) != 0)) && (v10 = v9, -[PKPaymentOffersController eligiblePaymentOfferCriteriaForPassUniqueID:](self, "eligiblePaymentOfferCriteriaForPassUniqueID:", v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, v10, v12))
      {
        v13 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = PKPaymentOfferCatalogUpdateReasonToString(a3);
          v15 = [(PKPaymentOfferCatalog *)self->_catalog lastUpdated];
          v17 = 138412546;
          v18 = v14;
          v19 = 2112;
          v20 = v15;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Updating payment offer catalog for reason %@ since it is out of date. Last updated: %@", &v17, 0x16u);
        }

        v16 = [[PKPaymentOffersControllerRequest alloc] initPaymentOfferCatalogRequestWithCatalogUpdateReason:a3 completion:v6];
        [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v16];
      }
    }
  }
}

- (void)updatePaymentOfferCatalogWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[PKPaymentOffersControllerRequest alloc] initPaymentOfferCatalogRequestWithCatalogUpdateReason:a3 completion:v6];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v7];
}

- (void)updatePaymentOffersForCriteriaIdentifier:(id)a3 selectedPassDetails:(id)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[PKPaymentOffersControllerRequest alloc] initPaymentOfferRequestWithCriteriaIdentifierIdentifier:v12 selectedPassDetails:v11 reason:a5 completion:v10];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v13];
}

- (id)paymentOfferCollectionForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4
{
  v5 = PKPaymentOffersControllerGenerateCacheKey(a3, a4);
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_paymentOffersForCriteriaIdentifier objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dynamicContentPageForCriteriaIdentifier:(id)a3 pageType:(unint64_t)a4
{
  if (a3)
  {
    v5 = [(NSMutableDictionary *)self->_dynamicContentPagesByCriteriaIdentifier objectForKeyedSubscript:?];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v7 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateDynamicContentPageForCriteriaIdentifier:(id)a3 pageTypes:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PKPaymentOffersControllerRequest alloc] initDynamicContentRequestWithCriteriaIdentifier:v10 pageTypes:v9 completion:v8];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v11];
}

- (void)removeCachedPaymentOffers
{
  if ([(NSMutableDictionary *)self->_paymentOffersForCriteriaIdentifier count])
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing cached payment offers", v4, 2u);
    }

    [(NSMutableDictionary *)self->_paymentOffersForCriteriaIdentifier removeAllObjects];
  }
}

- (void)updatePreconfiguredOfferStateForAllPasses
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID allKeys];
  if ([v3 count])
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Recomputing preconfigured offer state for all cached passes %@", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID setObject:&unk_1F23B4C88 forKeyedSubscript:v10, v11];
          [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferStateForPassUniqueID:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeCachedMerchandising
{
  if (self->_currentMerchandisingOfferDetails)
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing cached payment offer merchandising", v5, 2u);
    }

    currentMerchandisingOfferDetails = self->_currentMerchandisingOfferDetails;
    self->_currentMerchandisingOfferDetails = 0;

    [(NSMutableSet *)self->_fetchedMerchandisingIdentifiers removeAllObjects];
  }
}

- (void)setSelectedPassUniqueID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  selectedPassUniqueID = self->_selectedPassUniqueID;
  v7 = v5;
  v8 = selectedPassUniqueID;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if (v7 && v8)
    {
      v10 = [(NSString *)v7 isEqualToString:v8];

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPaymentOffersController updated selected pass uniqueID: %@", &v14, 0xCu);
    }

    objc_storeStrong(&self->_selectedPassUniqueID, a3);
    [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails updatedSelectedPassUniqueID:v7];
    self->_consumingSelectedPaymentOffer = 0;
    [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferState];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    v13 = [(PKPaymentOffersController *)self merchandisingIdentifiersForPassUniqueIDs:v12];
    [(PKPaymentOffersController *)self updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:v13];
  }

LABEL_11:
}

- (void)willConsumeSelectedPaymentOfferForPassUniqueID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_selectedPassUniqueID;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_7:
    self->_consumingSelectedPaymentOffer = 1;
    v5 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
    v9 = [(NSString *)v5 criteriaIdentifier];
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Clearing cached session identifiers and payment offers for pass %@, criteriaIdentifier %@", &v13, 0x16u);
    }

    v11 = PKPaymentOffersControllerGenerateCacheKey(v9, v7);
    if (v9)
    {
      [(NSMutableDictionary *)self->_sessionIdentifierForCriteriaIdentifier setObject:0 forKeyedSubscript:v9];
    }

    if (v11)
    {
      [(NSMutableDictionary *)self->_paymentOffersForCriteriaIdentifier setObject:0 forKeyedSubscript:v11];
    }

    [(PKPaymentOffersController *)self clearCurrentSelectedPaymentOfferDetails];
    allSelectedInStorePaymentOffers = self->_allSelectedInStorePaymentOffers;
    self->_allSelectedInStorePaymentOffers = 0;

    [(PKPaymentOffersSessionDetails *)self->_configuration removeTransactionAmount];
    goto LABEL_15;
  }

  if (v6 && v5)
  {
    v8 = [(NSString *)v5 isEqualToString:v6];

    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

LABEL_15:
LABEL_16:
}

- (void)didEndContactlessPaymentSessionForPassUniqueID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_selectedPassUniqueID;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!v6 || !v5)
    {

      goto LABEL_12;
    }

    v8 = [(NSString *)v5 isEqualToString:v6];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (self->_consumingSelectedPaymentOffer)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      selectedPassUniqueID = self->_selectedPassUniqueID;
      v11 = 138412290;
      v12 = selectedPassUniqueID;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Ended contactless payment session for %@", &v11, 0xCu);
    }

    self->_consumingSelectedPaymentOffer = 0;
    [(PKPaymentOffersController *)self _informObserversSelectedPaymentOfferChangedForPassUniqueID:v7];
  }

LABEL_12:
}

- (void)didReceiveValidMerchantSession
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentOffersCatalog didReceiveValidMerchantSession", v4, 2u);
  }

  self->_didReceiveValidMerchantSession = 1;
  [(PKPaymentOffersController *)self _executeNextPaymentOffersControllerRequestIfPossible];
  [(PKPaymentOffersController *)self _executeNextPaymentOffersControllerMerchandisingRequestIfPossible];
}

- (id)fallbackSelectedPaymentOfferForType:(unint64_t)a3
{
  v5 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
  v6 = [(NSArray *)self->_allSelectedInStorePaymentOffers mutableCopy];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 indexOfObject:v5];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__PKPaymentOffersController_fallbackSelectedPaymentOfferForType___block_invoke;
      v15[3] = &unk_1E79CEF48;
      v16 = v5;
      v9 = [v7 indexOfObjectPassingTest:v15];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = v8;
    }

    [v7 removeObjectAtIndex:v9];
  }

LABEL_7:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKPaymentOffersController_fallbackSelectedPaymentOfferForType___block_invoke_2;
  v14[3] = &__block_descriptor_40_e39_B32__0__PKSelectedPaymentOffer_8Q16_B24l;
  v14[4] = a3;
  v10 = [v7 pk_objectsPassingTest:v14];
  v11 = [v10 mutableCopy];

  v12 = [v11 firstObject];

  return v12;
}

BOOL __65__PKPaymentOffersController_fallbackSelectedPaymentOfferForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 == [*(a1 + 32) type])
  {
    v5 = [v3 storageType];
    v6 = v5 == [*(a1 + 32) storageType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __65__PKPaymentOffersController_fallbackSelectedPaymentOfferForType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v7 = 0;
  if (v4 == *(a1 + 32))
  {
    if (v4 != 1 || ([v3 installmentSelectedPaymentOffer], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "selectionType"), v5, (v6 - 1) >= 2))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)loadingDetailsForPaymentOffersForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4
{
  v5 = PKPaymentOffersControllerGenerateCacheKey(a3, a4);
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_requestLoadingDetails objectForKeyedSubscript:&unk_1F23B4CA0];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)resetLoadingDetailsForPaymentOffersForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = PKPaymentOffersControllerGenerateCacheKey(a3, a4);
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Reseting payment offers loading state for %@", &v8, 0xCu);
    }

    v7 = [(NSMutableDictionary *)self->_requestLoadingDetails objectForKeyedSubscript:&unk_1F23B4CA0];
    [v7 setObject:0 forKeyedSubscript:v5];
  }
}

- (id)loadingDetailsForRewardsBalanceForCriteriaIdentifier:(id)a3 passUniqueID:(id)a4
{
  v5 = PKPaymentOffersControllerGenerateCacheKey(a3, a4);
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_requestLoadingDetails objectForKeyedSubscript:&unk_1F23B4CB8];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateCatalogLoadingState:(unint64_t)a3
{
  catalogLoadingState = self->_catalogLoadingState;
  self->_catalogLoadingState = a3;
  if (catalogLoadingState != a3)
  {
    [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferState];

    [(PKPaymentOffersController *)self _informObserversPaymentOfferCatalogChanged];
  }
}

- (void)_updateLoadingDetailsState:(id)a3 criteriaIdentifier:(id)a4 passUniqueID:(id)a5 requestType:(unint64_t)a6
{
  v10 = a3;
  if (a4)
  {
    v22 = v10;
    v11 = PKPaymentOffersControllerGenerateCacheKey(a4, a5);
    requestLoadingDetails = self->_requestLoadingDetails;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
    v14 = [(NSMutableDictionary *)requestLoadingDetails objectForKeyedSubscript:v13];

    v15 = [v14 objectForKeyedSubscript:v11];
    if (!v22 || !v15 || ([v22 isEqual:v15] & 1) == 0)
    {
      if (!v14)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v17 = self->_requestLoadingDetails;
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
        [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
      }

      v19 = self->_requestLoadingDetails;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
      [v21 setObject:v22 forKeyedSubscript:v11];

      [(PKPaymentOffersController *)self _informObserversPaymentOfferCatalogChanged];
      [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferState];
    }

    v10 = v22;
  }
}

- (unint64_t)preconfiguredInstallmentOfferStateForPassUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID objectForKeyedSubscript:v4];
    v6 = [v5 integerValue];

    if (!v6)
    {
      [(PKPaymentOffersController *)self _updatePreconfiguredInstallmentOfferStateForPassUniqueID:v4];
      v7 = [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID objectForKeyedSubscript:v4];
      v6 = [v7 integerValue];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updatePreconfiguredInstallmentOfferStateForPassUniqueID:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [(PKPaymentOffersController *)self paymentOfferCriteriaForPassUniqueID:v4 type:1];
  v6 = [v5 identifier];
  v7 = [(PKPaymentOffersController *)self ineligibleDetailsForCriteria:v5];
  v8 = [(PKPaymentOffersController *)self loadingDetailsForPaymentOffersForCriteriaIdentifier:v6 passUniqueID:v4];
  v9 = [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID objectForKeyedSubscript:v4];
  v10 = [v9 integerValue];

  if (!v6)
  {
    goto LABEL_11;
  }

  if (!v5 || ![v5 hasPreconfiguredOffers])
  {
    v12 = 1;
    goto LABEL_13;
  }

  if (![v7 isEligible])
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    if (self->_hasFetchedCatalogFromServer)
    {
      v12 = 5;
    }

    else
    {
      v12 = 4;
    }

    goto LABEL_37;
  }

  v11 = [v8 state];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 10;
      goto LABEL_13;
    }

    v12 = v10;
    if (v11 == 3)
    {
      v17 = [(PKPaymentOffersController *)self paymentOfferCollectionForCriteriaIdentifier:v6 passUniqueID:v4];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 installmentAssessment];
        v20 = [(NSMutableDictionary *)self->_sessionIdentifierForCriteriaIdentifier objectForKeyedSubscript:v6];
        v31 = [v19 selectedOfferIdentifier];
        v32 = v19;
        v21 = [v19 isEligible];
        v12 = 7;
        v30 = v20;
        if (v21 && v20)
        {
          if ([v31 length] && (objc_msgSend(v32, "installmentOfferWithIdentifier:", v31), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
          {
            v12 = 6;
          }

          else
          {
            v23 = [v32 offers];
            v24 = [v23 count];

            if (v24 == 1)
            {
              v12 = 6;
            }

            else
            {
              v12 = 8;
            }
          }
        }
      }

      else
      {
        v12 = 2;
      }
    }

LABEL_37:
    if ((v12 - 5) > 1)
    {
      goto LABEL_13;
    }

    v25 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPassUniqueID];
    v26 = v4;
    v27 = v25;
    v28 = v27;
    if (v27 == v26)
    {
    }

    else
    {
      if (!v27)
      {

LABEL_47:
        goto LABEL_13;
      }

      v33 = [v26 isEqualToString:v27];

      if (!v33)
      {
        goto LABEL_47;
      }
    }

    v29 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails hasSelectedOtherOffersAfterPreconfiguredInstallmentOffer];

    if (v29)
    {
      v12 = 9;
    }

    goto LABEL_13;
  }

  if (!v11)
  {
LABEL_11:
    v12 = 2;
    goto LABEL_13;
  }

  v12 = v10;
  if (v11 != 1)
  {
    goto LABEL_37;
  }

  v12 = 3;
LABEL_13:
  if (v12 != v10)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PKPaymentOffersControllerPreconfiguredInstallmentOfferStateToString(v10);
      v15 = PKPaymentOffersControllerPreconfiguredInstallmentOfferStateToString(v12);
      *buf = 138412802;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKPaymentOffersController: Updating preconfigured installment offer state from %@ to %@ for pass %@", buf, 0x20u);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [(NSMutableDictionary *)self->_preconfiguredInstallmentStateForPassUniqueID setObject:v16 forKeyedSubscript:v4];

    [(PKPaymentOffersController *)self _informObserversPaymentOffersChangedForPassUniqueID:v4];
  }

LABEL_18:
}

- (id)eligiblePaymentOfferCriteriaForPassUniqueID:(id)a3 type:(unint64_t)a4
{
  v5 = [(PKPaymentOffersController *)self _eligiblePaymentOfferCriteriaForPassUniqueID:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPaymentOffersController_eligiblePaymentOfferCriteriaForPassUniqueID_type___block_invoke;
  v8[3] = &__block_descriptor_40_e32_B16__0__PKPaymentOfferCriteria_8l;
  v8[4] = a4;
  v6 = [v5 pk_firstObjectPassingTest:v8];

  return v6;
}

- (id)paymentOfferCriteriaForPassUniqueID:(id)a3 type:(unint64_t)a4
{
  if (a3)
  {
    v5 = [(PKPaymentOffersController *)self _eligiblePaymentOfferCriteriaForPassUniqueID:?];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PKPaymentOffersController_paymentOfferCriteriaForPassUniqueID_type___block_invoke;
    v8[3] = &__block_descriptor_40_e32_B16__0__PKPaymentOfferCriteria_8l;
    v8[4] = a4;
    v6 = [v5 pk_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)eligiblePaymentOfferCriteriaNoAssociatedPassWithType:(unint64_t)a3
{
  v4 = [(PKPaymentOffersController *)self _eligiblePaymentOfferCriteriaForPassUniqueID:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPaymentOffersController_eligiblePaymentOfferCriteriaNoAssociatedPassWithType___block_invoke;
  v7[3] = &__block_descriptor_40_e39_B32__0__PKPaymentOfferCriteria_8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 pk_objectsPassingTest:v7];

  return v5;
}

- (id)paymentOfferCriteriaForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PKPaymentOffersController_paymentOfferCriteriaForPassUniqueID___block_invoke;
  v9[3] = &unk_1E79CEFD0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pk_objectsPassingTest:v9];

  return v7;
}

uint64_t __65__PKPaymentOffersController_paymentOfferCriteriaForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPassUniqueID];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)eligiblePaymentOfferInstallmentCriteriaRequiringSetup
{
  v2 = [(PKPaymentOffersController *)self _eligiblePaymentOfferCriteriaForPassUniqueID:0];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_123_0];

  return v3;
}

- (id)paymentOfferInstallmentCriteriaRequiringSetup
{
  v2 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_125];

  return v3;
}

BOOL __74__PKPaymentOffersController_paymentOfferInstallmentCriteriaRequiringSetup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 associatedPassUniqueID];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 type] == 1;
  }

  return v4;
}

- (id)paymentOfferCriteriaForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPaymentOffersController_paymentOfferCriteriaForIdentifier___block_invoke;
  v9[3] = &unk_1E79CA320;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __63__PKPaymentOffersController_paymentOfferCriteriaForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)_eligiblePaymentOfferCriteriaForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPaymentOffersController__eligiblePaymentOfferCriteriaForPassUniqueID___block_invoke;
  v9[3] = &unk_1E79CF018;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 pk_objectsPassingTest:v9];

  return v7;
}

uint64_t __74__PKPaymentOffersController__eligiblePaymentOfferCriteriaForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 associatedPassUniqueID];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  if (!v6 || !v7)
  {

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [v6 isEqualToString:v7];

  if (v9)
  {
LABEL_7:
    v6 = [*(a1 + 40) ineligibleDetailsForCriteria:v3];
    v10 = [v6 isEligible];
LABEL_9:

    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)_criteriaIdentifierIsEligible:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PKPaymentOffersController__criteriaIdentifierIsEligible___block_invoke;
    v8[3] = &unk_1E79CA320;
    v9 = v4;
    v6 = [v5 pk_containsObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __59__PKPaymentOffersController__criteriaIdentifierIsEligible___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3 && v5)
  {
    v6 = [v3 isEqual:?];
  }

  else
  {
    v6 = v3 == v5;
  }

  return v6;
}

- (id)ineligibleDetailsForCriteria:(id)a3
{
  v4 = a3;
  v28 = 0;
  v5 = [(PKPaymentOffersController *)self _criteriaEligibilityConfigurationForCriteria:v4];
  v6 = [v4 identifier];
  v7 = [(PKPaymentOffersController *)self preferredLocalizationLanguageForCriteriaIdentifier:v6];

  v8 = [(PKPaymentOffersSessionDetails *)self->_configuration originURL];

  if (!v5)
  {
    v18 = v8 != 0;
    v19 = 1;
LABEL_14:
    v20 = [PKPaymentOfferCriteriaIneligibleDetails ineligibleDetailsWithReason:v19 preferredLanguage:v7 criteria:v4 isWebPaymentRequest:v18];
    goto LABEL_18;
  }

  if (([v4 eligibleWithConfiguration:v5 ineligibleReason:&v28] & 1) == 0)
  {
    if (v28 > 0x12)
    {
      v19 = 1;
    }

    else
    {
      v19 = qword_1ADB9A408[v28];
    }

    v18 = v8 != 0;
    goto LABEL_14;
  }

  v9 = [v4 identifier];
  v10 = [v4 associatedPassUniqueID];
  v11 = PKPaymentOffersControllerGenerateCacheKey(v9, v10);

  v12 = [(NSMutableDictionary *)self->_paymentOffersForCriteriaIdentifier objectForKeyedSubscript:v11];
  v13 = [v4 type];
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = [v12 installmentAssessment];
      v15 = v14;
      if (v14 && ([v14 isEligible] & 1) == 0)
      {
        v22 = [v15 offerEligibility];
        if ((v22 - 1) >= 0xA)
        {
          v23 = 1;
        }

        else
        {
          v23 = qword_1ADB9A4A0[v22 - 1];
        }

        v27 = v23;
        v24 = [v15 dynamicContent];
        v25 = [v24 dynamicContentPageForPageType:5];
        v26 = [v25 subtitle];

        v20 = [PKPaymentOfferCriteriaIneligibleDetails ineligibleDetailsWithReason:v27 preferredLanguage:v7 overrideDisplayString:v26 criteria:v4 isWebPaymentRequest:v8 != 0];

        goto LABEL_17;
      }
    }

    v16 = v8 != 0;
    v17 = 0;
  }

  else
  {
    v16 = v8 != 0;
    v17 = 1;
  }

  v20 = [PKPaymentOfferCriteriaIneligibleDetails ineligibleDetailsWithReason:v17 preferredLanguage:v7 criteria:v4 isWebPaymentRequest:v16];
LABEL_17:

LABEL_18:

  return v20;
}

- (BOOL)hasAnyEligiblePaymentOfferCriteriaOfType:(unint64_t)a3
{
  v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentOffersController_hasAnyEligiblePaymentOfferCriteriaOfType___block_invoke;
  v7[3] = &unk_1E79CA2B0;
  v7[4] = self;
  v7[5] = a3;
  LOBYTE(a3) = [v5 pk_containsObjectPassingTest:v7];

  return a3;
}

uint64_t __70__PKPaymentOffersController_hasAnyEligiblePaymentOfferCriteriaOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 40))
  {
    v4 = [*(a1 + 32) ineligibleDetailsForCriteria:v3];
    v5 = [v4 isEligible];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasSeenLanguageDisclosureForCriteriaForIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_languageDisclosuresSeenForCriteriaIdentifier objectForKeyedSubscript:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)markLanguageDisclosureAsSeenForCriteriaForIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Updating language disclosure as seen for criteria identifier: %@", &v6, 0xCu);
    }

    [(NSMutableDictionary *)self->_languageDisclosuresSeenForCriteriaIdentifier setObject:MEMORY[0x1E695E118] forKeyedSubscript:v4];
  }
}

- (id)preferredLocalizationLanguageForCriteriaIdentifier:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKPassKitBundle();
  v6 = [v5 preferredLocalizations];
  v7 = [v6 firstObject];
  v8 = v7;
  v9 = @"en";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(PKPaymentOffersController *)self paymentOfferCriteriaForIdentifier:v4];
  if (!v11)
  {
    v15 = v10;
    goto LABEL_40;
  }

  v12 = [(NSMutableDictionary *)self->_preferredLanguageForCriteriaIdentifier objectForKeyedSubscript:v4];
  v13 = v12;
  if (!v12)
  {
    if ([v11 type] != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = v10;
      goto LABEL_38;
    }

    v45 = v11;
    v56 = [v45 supportedLanguages];
    v51 = v4;
    v49 = v6;
    v50 = v5;
    v47 = v11;
    v48 = v10;
    v46 = self;
    if ([v56 count])
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v16 = v6;
      v57 = [v16 countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v57)
      {
        v15 = 0;
        obj = v16;
        v54 = *v74;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v74 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v73 + 1) + 8 * i);
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v19 = v56;
            v20 = [v19 countByEnumeratingWithState:&v69 objects:v83 count:16];
            if (v20)
            {
              v21 = v20;
              v59 = v15;
              v22 = *v70;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v70 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v69 + 1) + 8 * j);
                  v25 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v18];
                  v26 = v24;
                  v27 = v26;
                  if (v25 == v26)
                  {

LABEL_32:
                    v15 = v18;

                    goto LABEL_33;
                  }

                  if (v26)
                  {
                    v28 = v25 == 0;
                  }

                  else
                  {
                    v28 = 1;
                  }

                  if (v28)
                  {
                  }

                  else
                  {
                    v29 = [v25 isEqualToString:v26];

                    if (v29)
                    {
                      goto LABEL_32;
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v69 objects:v83 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }

              v15 = v59;
            }

LABEL_33:
          }

          v57 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
        }

        while (v57);

        v4 = v51;
        v6 = v49;
        v5 = v50;
        v11 = v47;
        v10 = v48;
        v30 = v46;
        if (v15)
        {
          goto LABEL_72;
        }
      }

      else
      {
      }
    }

    v60 = [v5 localizations];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obja = v56;
    v58 = [obja countByEnumeratingWithState:&v65 objects:v82 count:16];
    if (v58)
    {
      v55 = *v66;
      while (2)
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v65 + 1) + 8 * k);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v34 = v60;
          v35 = [v34 countByEnumeratingWithState:&v61 objects:v81 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v62;
LABEL_51:
            v38 = 0;
            while (1)
            {
              if (*v62 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v61 + 1) + 8 * v38);
              v40 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v39];
              v41 = v33;
              v42 = v41;
              if (v40 == v41)
              {
                break;
              }

              if (v33 && v40)
              {
                v43 = [v40 isEqualToString:v41];

                if (v43)
                {
                  goto LABEL_64;
                }
              }

              else
              {
              }

              if (v36 == ++v38)
              {
                v36 = [v34 countByEnumeratingWithState:&v61 objects:v81 count:16];
                if (v36)
                {
                  goto LABEL_51;
                }

                goto LABEL_62;
              }
            }

LABEL_64:
            v15 = v39;

            if (!v15)
            {
              goto LABEL_65;
            }

            v4 = v51;
            v6 = v49;
            v5 = v50;
            v10 = v48;
            goto LABEL_71;
          }

LABEL_62:

LABEL_65:
          v44 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v78 = v33;
            v79 = 2112;
            v80 = v51;
            _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Server has a supported language of %@ for criteriaIdentifier %@, but that is not a supported language in the PKPassKitBundle", buf, 0x16u);
          }
        }

        v58 = [obja countByEnumeratingWithState:&v65 objects:v82 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    v10 = v48;
    v15 = v48;
    v4 = v51;
    v6 = v49;
    v5 = v50;
LABEL_71:
    v30 = v46;
    v11 = v47;
    v13 = 0;
LABEL_72:
    [(NSMutableDictionary *)v30->_preferredLanguageForCriteriaIdentifier setObject:v15 forKeyedSubscript:v4];

    goto LABEL_39;
  }

  v14 = v12;
LABEL_38:
  v15 = v14;
LABEL_39:

LABEL_40:

  return v15;
}

- (id)merchandisingIdentifiersForCriteriaIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOffersController *)self _eligibleCatalogItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentOffersController_merchandisingIdentifiersForCriteriaIdentifiers___block_invoke;
  v10[3] = &unk_1E79CF040;
  v6 = v4;
  v11 = v6;
  v7 = [v5 pk_createArrayBySafelyApplyingBlock:v10];

  if ([v7 count])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __76__PKPaymentOffersController_merchandisingIdentifiersForCriteriaIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1 && (v4 = *(a1 + 32), objc_msgSend(v3, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "containsObject:", v5), v5, v4))
  {
    v6 = [v3 merchandisingIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchedAndInflightMerchandisingIdentifiers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v3 unionSet:self->_fetchedMerchandisingIdentifiers];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_inflightMerchandisingRequests;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) merchandisingIdentifiers];
        [v3 unionSet:v9];
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_queuedMerchandisingRequests;
  v11 = [(NSMutableOrderedSet *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * j) merchandisingIdentifiers];
        [v3 unionSet:v15];
      }

      v12 = [(NSMutableOrderedSet *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

- (void)updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:(id)a3
{
  v11 = a3;
  v4 = [(PKPaymentOffersController *)self _eligibleToFetchMerchandising];
  v5 = v11;
  if (v4)
  {
    if (self->_catalog)
    {
      v6 = [v11 count];
      v5 = v11;
      if (v6)
      {
        v7 = [v11 mutableCopy];
        [v7 minusSet:self->_fetchedMerchandisingIdentifiers];
        if ([v7 count])
        {
          v8 = [PKPaymentOffersControllerMerchandisingRequest alloc];
          v9 = [(PKPaymentOffersSessionDetails *)self->_configuration transactionAmount];
          v10 = [(PKPaymentOffersControllerMerchandisingRequest *)v8 initWithMerchandisingIdentifiers:v7 amount:v9];

          [(PKPaymentOffersController *)self _addPaymentOffersControllerMerchandisingRequest:v10];
        }

        v5 = v11;
      }
    }
  }
}

- (void)_addPaymentOffersControllerMerchandisingRequest:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_inflightMerchandisingRequests;
    v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v18 + 1) + 8 * v9) coalesceWithRequest:v4])
        {
          goto LABEL_19;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_queuedMerchandisingRequests;
    v10 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
LABEL_12:
      v13 = 0;
      while (1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v13) coalesceWithRequest:{v4, v14}])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }

LABEL_19:

      goto LABEL_20;
    }

LABEL_18:

    [(NSMutableOrderedSet *)self->_queuedMerchandisingRequests addObject:v4];
    [(PKPaymentOffersController *)self _executeNextPaymentOffersControllerMerchandisingRequestIfPossible];
  }

LABEL_20:
}

- (void)_executeNextPaymentOffersControllerMerchandisingRequestIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableOrderedSet *)self->_queuedMerchandisingRequests firstObject];
  if (v3)
  {
    if ([(PKPaymentOffersSessionDetails *)self->_configuration shouldUseMerchantSession]&& !self->_didReceiveValidMerchantSession)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Waiting to start next payment offers controller request until a valid merchant session is received. %@", buf, 0xCu);
      }
    }

    else
    {
      [(NSMutableOrderedSet *)self->_inflightMerchandisingRequests addObject:v3];
      [(NSMutableOrderedSet *)self->_queuedMerchandisingRequests removeObjectAtIndex:0];
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Adding incoming payment offers controller merchandising request onto inflight list %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __94__PKPaymentOffersController__executeNextPaymentOffersControllerMerchandisingRequestIfPossible__block_invoke;
      v9 = &unk_1E79CDC10;
      objc_copyWeak(&v11, buf);
      v10 = v3;
      [(PKPaymentOffersController *)self _performMerchandisingRequest:v10 completion:&v6];
      [(PKPaymentOffersController *)self _executeNextPaymentOffersControllerRequestIfPossible:v6];

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

void __94__PKPaymentOffersController__executeNextPaymentOffersControllerMerchandisingRequestIfPossible__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[15] removeObject:*(a1 + 32)];
    WeakRetained = v7;
    if (!a2)
    {
      v5 = v7[17];
      v6 = [*(a1 + 32) merchandisingIdentifiers];
      [v5 unionSet:v6];

      WeakRetained = v7;
    }
  }
}

- (void)_performMerchandisingRequest:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke;
  aBlock[3] = &unk_1E79C4450;
  v8 = v7;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v6 merchandisingIdentifiers];
  v11 = v10;
  if (v6 && [v10 count])
  {
    v12 = [(PKPaymentOfferCatalog *)self->_catalog eligibleMerchandisingIdentifiersThatNeedProvisioning];
    v13 = [v12 mutableCopy];

    [v13 intersectSet:v11];
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Fetching Payment Offer Merchandising for %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v15 = [(PKPaymentOffersSessionDetails *)self->_configuration copy];
    paymentService = self->_paymentService;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke_135;
    v17[3] = &unk_1E79CF090;
    objc_copyWeak(&v19, buf);
    v18 = v9;
    [(PKPaymentService *)paymentService paymentOffersMerchandisingForSessionDetails:v15 merchandisingIdentifiers:v11 needsProvisioningMerchandisingIdentifiers:v13 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke_2;
  v10[3] = &unk_1E79CF068;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __69__PKPaymentOffersController__performMerchandisingRequest_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_18;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = [PKPaymentOfferMerchandisingOfferDetails combineOfferDetails:WeakRetained[12] withOtherDetails:*(a1 + 40)];
    v6 = WeakRetained[12];
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v6 != v5)
      {
LABEL_14:
        objc_storeStrong(WeakRetained + 12, v5);
        v8 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = WeakRetained[12];
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Payment Offer Merchandising did change %@", &v10, 0xCu);
        }

        [WeakRetained _informObserversPaymentOfferMerchandisingChanged];
      }
    }

    else if (([v6 isEqual:v5] & 1) == 0)
    {
      goto LABEL_14;
    }

    (*(*(a1 + 48) + 16))();

    goto LABEL_18;
  }

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error getting payment offer merchandising: %@", &v10, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_18:
}

- (id)merchandisingOfferForMerchandisingIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(PKPaymentOfferMerchandisingOfferDetails *)self->_currentMerchandisingOfferDetails offerForMerchandisingIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)merchandisingOfferForPassUniqueID:(id)a3
{
  if (a3)
  {
    v4 = [(PKPaymentOfferCatalog *)self->_catalog capabilityForPassUniqueID:?];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 merchandisingIdentifier];
      if (v6)
      {
        v7 = [(PKPaymentOfferMerchandisingOfferDetails *)self->_currentMerchandisingOfferDetails offerForMerchandisingIdentifier:v6];
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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)didFetchMerchandisingOfferForPassUniqueID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(PKPaymentOfferCatalog *)self->_catalog capabilityForPassUniqueID:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 merchandisingIdentifier];
    if (v6)
    {
      v7 = [(NSMutableSet *)self->_fetchedMerchandisingIdentifiers containsObject:v6];
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

- (void)selectOfferRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentOffersControllerRequest alloc];
  v6 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
  v7 = [v6 criteriaIdentifier];
  v8 = [(PKPaymentOffersControllerRequest *)v5 initSelectRequestWithCriteriaIdentifier:v7 completion:v4];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v8];
}

- (void)cancelOfferRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentOffersControllerRequest alloc];
  v6 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
  v7 = [v6 criteriaIdentifier];
  v8 = [(PKPaymentOffersControllerRequest *)v5 initCancelRequestWithCriteriaIdentifier:v7 completion:v4];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v8];
}

- (void)confirmOfferRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentOffersControllerRequest alloc];
  v6 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
  v7 = [v6 criteriaIdentifier];
  v8 = [(PKPaymentOffersControllerRequest *)v5 initConfirmRequestWithCriteriaIdentifier:v7 rewardsRedemptionIntent:0 completion:v4];

  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v8];
}

- (void)_addPaymentOffersControllerRequest:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(PKPaymentOffersControllerRequest *)self->_currentRequest coalesceWithRequest:v4])
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_DEFAULT))
      {
        currentRequest = self->_currentRequest;
        *buf = 138412290;
        v20 = currentRequest;
        _os_log_impl(&dword_1AD337000, &v5->super.super, OS_LOG_TYPE_DEFAULT, "Coalescing incoming payment offers controller request onto current request %@", buf, 0xCu);
      }

LABEL_19:
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_queuedRequests;
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([(PKPaymentOffersControllerRequest *)v11 coalesceWithRequest:v4, v14])
            {
              v13 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v20 = v11;
                _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Coalescing incoming payment offers controller request onto queued request %@", buf, 0xCu);
              }

              goto LABEL_19;
            }
          }

          v8 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      [(NSMutableOrderedSet *)self->_queuedRequests addObject:v4];
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Adding incoming payment offers controller request onto queued list %@", buf, 0xCu);
      }

      [(PKPaymentOffersController *)self _executeNextPaymentOffersControllerRequestIfPossible];
    }
  }
}

- (void)_executeNextPaymentOffersControllerRequestIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  p_currentRequest = &self->_currentRequest;
  if (!self->_currentRequest)
  {
    v4 = [(NSMutableOrderedSet *)self->_queuedRequests firstObject];
    if ([(PKPaymentOffersSessionDetails *)self->_configuration shouldUseMerchantSession]&& !self->_didReceiveValidMerchantSession && [(PKPaymentOffersControllerRequest *)v4 requestRequiresMerchantDetails])
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Waiting to start next payment offers controller request until a valid merchant session is received. %@", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(p_currentRequest, v4);
      v6 = *p_currentRequest;
      if (*p_currentRequest)
      {
        v7 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = v6;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Starting payment offers controller request %@", buf, 0xCu);
        }

        [(NSMutableOrderedSet *)self->_queuedRequests removeObjectAtIndex:0];
        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __81__PKPaymentOffersController__executeNextPaymentOffersControllerRequestIfPossible__block_invoke;
        aBlock[3] = &unk_1E79CF0B8;
        objc_copyWeak(&v11, buf);
        v8 = _Block_copy(aBlock);
        v9 = [(PKPaymentOffersControllerRequest *)self->_currentRequest type];
        if (v9 <= 2)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              [(PKPaymentOffersController *)self _performPaymentOffersRequest:self->_currentRequest completion:v8];
            }

            else if (v9 == 2)
            {
              [(PKPaymentOffersController *)self _performDynamicContentRequest:self->_currentRequest completion:v8];
            }
          }

          else
          {
            [(PKPaymentOffersController *)self _performCatalogRequest:self->_currentRequest completion:v8];
          }
        }

        else if (v9 > 4)
        {
          if (v9 == 5)
          {
            [(PKPaymentOffersController *)self _performCancelRequest:self->_currentRequest completion:v8];
          }

          else if (v9 == 6)
          {
            [(PKPaymentOffersController *)self _performRewardsBalanceRequest:self->_currentRequest completion:v8];
          }
        }

        else if (v9 == 3)
        {
          [(PKPaymentOffersController *)self _performConfirmRequest:self->_currentRequest completion:v8];
        }

        else
        {
          [(PKPaymentOffersController *)self _performSelectRequest:self->_currentRequest completion:v8];
        }

        objc_destroyWeak(&v11);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __81__PKPaymentOffersController__executeNextPaymentOffersControllerRequestIfPossible__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v7 = PKLocalizedPaymentString(&cfstr_GenericErrorTi.isa, 0);
      v8 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa, 0);
      v9 = PKDisplayableErrorCustomWithType(-1, v7, v8, v4, 0);
      v10 = *(v6 + 3);
      *(v6 + 3) = v9;
    }

    else
    {
      v7 = WeakRetained[3];
      WeakRetained[3] = 0;
    }

    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v6 + 14);
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Completed payment offers controller request %@", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [*(v6 + 14) completions];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v19 + 1) + 8 * v17++) + 16))();
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    v18 = *(v6 + 14);
    *(v6 + 14) = 0;

    [v6 _executeNextPaymentOffersControllerRequestIfPossible];
  }
}

- (BOOL)_eligibleToFetchPaymentOfferCatalog
{
  Catalog = PKPaymentOffersEligibleToFetchCatalog(self->_paymentWebService);
  if (Catalog)
  {
    if (self->_baseURL)
    {
      v4 = [(PKPaymentOffersSessionDetails *)self->_configuration context];
      if (v4 == 3 || v4 == 0)
      {
        v6 = [(PKPaymentOffersSessionDetails *)self->_configuration currencyCode];
        if (!v6)
        {
          v7 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v8 = "Not fetching payment offers because there is no currencyCode defined";
            v9 = buf;
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      if (self->_catalogLoadingState)
      {
        LOBYTE(Catalog) = 1;
        return Catalog;
      }

      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v8 = "Not fetching payment offers because the loading state is not applicable";
        v9 = &v11;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "Not fetching payment offers since there is no baseURL";
        v9 = &v13;
LABEL_18:
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

LABEL_19:

    LOBYTE(Catalog) = 0;
  }

  return Catalog;
}

- (BOOL)_eligibleToFetchMerchandising
{
  v3 = [(PKPaymentOffersController *)self _eligibleToFetchPaymentOfferCatalog];
  if (v3)
  {
    if (PKHideCardBenefitMerchandisingOffers())
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        LOBYTE(v3) = 0;
        return v3;
      }

      v12 = 0;
      v5 = "Not fetching payment offer merchandising since the MerchandisingOffers card benefit flag is off";
      v6 = &v12;
    }

    else
    {
      v7 = PKHidePayLaterOptions();
      v8 = PKHideCardBenefitPayLater();
      v9 = PKHideCardBenefitRewards();
      if (!v7 || !v8 || !v9)
      {
        LOBYTE(v3) = [(PKPaymentOffersSessionDetails *)self->_configuration context]- 4 < 0xFFFFFFFFFFFFFFFDLL;
        return v3;
      }

      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = 0;
      v5 = "Not fetching payment offer merchandising. Flags are off: PayLaterOffers, CardBenefitPayLater, CardBenefitRewards";
      v6 = &v11;
    }

    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    goto LABEL_11;
  }

  return v3;
}

- (id)_eligibleCatalogItems
{
  v3 = [(PKPaymentOfferCatalog *)self->_catalog catalog];
  v4 = [v3 allObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKPaymentOffersController__eligibleCatalogItems__block_invoke;
  v7[3] = &unk_1E79CEFD0;
  v7[4] = self;
  v5 = [v4 pk_objectsPassingTest:v7];

  return v5;
}

- (BOOL)_paymentOfferCriteriaToKeep:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    if ([(PKPaymentOffersSessionDetails *)self->_configuration context]== 2)
    {
      goto LABEL_8;
    }

    if (!PKHideCardBenefitPayLater())
    {
      v6 = [v4 associatedPassUniqueID];

      if (v6 || !PKHidePayLaterOptions())
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (PKHideCardBenefitRewards())
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 1;
LABEL_11:

  return v7;
}

- (void)_performCatalogRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__20;
    v22[4] = __Block_byref_object_dispose__20;
    v23 = 0;
    v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke;
    v15[3] = &unk_1E79CF130;
    objc_copyWeak(&v20, &location);
    v16 = v6;
    v17 = self;
    v18 = v22;
    v19 = v24;
    [(PKAsyncUnaryOperationComposer *)v8 addOperation:v15];
    v9 = [MEMORY[0x1E695DFB0] null];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_151;
    v11[3] = &unk_1E79CF158;
    v12 = v7;
    v13 = v24;
    v14 = v22;
    v10 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:v9 completion:v11];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
  }
}

void __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _eligibleToFetchPaymentOfferCatalog])
    {
      [v11 _updateCatalogLoadingState:1];
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PKPaymentOfferCatalogUpdateReasonToString([*(a1 + 32) catalogUpdateReason]);
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Fetching Payment Offer Catalog for reason %@", buf, 0xCu);
      }

      v14 = *(*(a1 + 40) + 8);
      v15 = [*(a1 + 32) catalogUpdateReason];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_147;
      v18[3] = &unk_1E79CF108;
      objc_copyWeak(&v23, (a1 + 64));
      v21 = *(a1 + 48);
      v20 = v9;
      v16 = v8;
      v17 = *(a1 + 56);
      v19 = v16;
      v22 = v17;
      [v14 updatePaymentOffersCatalogWithReason:v15 completion:v18];

      objc_destroyWeak(&v23);
    }

    else
    {
      [v11 _updateCatalogLoadingState:0];
      (*(v9 + 2))(v9, v8, 1);
    }
  }
}

void __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_2;
  block[3] = &unk_1E79CF0E0;
  objc_copyWeak(&v18, (a1 + 64));
  v13 = v6;
  v11 = *(a1 + 40);
  v7 = v11;
  v16 = v11;
  v8 = *(a1 + 32);
  v17 = *(a1 + 56);
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error getting payment offer catalog: %@", &v10, 0xCu);
      }

      [v3 _updateCatalogLoadingState:2];
      v6 = *(*(a1 + 64) + 8);
      v9 = *(v6 + 40);
      v7 = (v6 + 40);
      v8 = v9;
      if (!v9)
      {
        v8 = *(a1 + 32);
      }

      objc_storeStrong(v7, v8);
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = [WeakRetained _handleNewCatalog:*(a1 + 48) isServerFetch:1];
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_151(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentOffersController__performCatalogRequest_completion___block_invoke_2_152;
  block[3] = &unk_1E79CBE88;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)_handleNewCatalog:(id)a3 isServerFetch:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  hasFetchedCatalogFromServer = self->_hasFetchedCatalogFromServer;
  v9 = self->_catalog;
  objc_storeStrong(&self->_catalog, a3);
  if (v4)
  {
    self->_hasFetchedCatalogFromServer = 1;
    [(PKPaymentOffersController *)self _updateCatalogLoadingState:3];
  }

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10 || ![(PKPaymentOfferCatalog *)v9 isEqualIgnoringLastUpdatedDate:v7])
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v7;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Payment Offer Catalog has changed: %@", &v25, 0xCu);
    }

    [(PKPaymentOffersController *)self _printCatalogEligibilityDebugDetails];
    [(PKPaymentOffersController *)self _informObserversPaymentOfferCatalogChanged];
    v13 = self->_selectedPassUniqueID;
    if (!v13)
    {
      goto LABEL_33;
    }

    if (!v7 || v9)
    {
      if (!v11)
      {
LABEL_33:
        v14 = 1;
        goto LABEL_34;
      }

      v19 = [(PKPaymentOfferCatalog *)v9 capabilityForPassUniqueID:v13];
      v20 = [v19 supportsMerchandising];

      v21 = [(NSString *)v7 capabilityForPassUniqueID:v13];
      v22 = [v21 supportsMerchandising];

      v23 = [MEMORY[0x1E695DFD8] setWithObject:v13];
      v17 = [(NSString *)v7 eligibleMerchandisingIdentifiersForPassUniqueIDs:v23];

      if (!v20 && v22 && v17)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v13;
          v18 = "The currently selected pass now supports merchandising. Updating the merchandising offers now. %@";
          goto LABEL_30;
        }

LABEL_31:

        [(PKPaymentOffersController *)self updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:v17];
      }
    }

    else
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObject:v13];
      v17 = [(NSString *)v7 eligibleMerchandisingIdentifiersForPassUniqueIDs:v16];

      if ([v17 count])
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v13;
          v18 = "There was no cached catalog. Updating merchandising for the selected pass %@ after the first catalog fetch";
LABEL_30:
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, v18, &v25, 0xCu);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    goto LABEL_33;
  }

  if (!hasFetchedCatalogFromServer)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Payment Offer Catalog is the same as cached one", &v25, 2u);
    }

    [(PKPaymentOffersController *)self _printCatalogEligibilityDebugDetails];
  }

  v13 = self->_selectedPassUniqueID;
  v14 = 0;
LABEL_34:

  return v14;
}

- (void)_performPaymentOffersRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1)
  {
    v8 = [v6 criteriaIdentifier];
    v9 = [v6 selectedPassDetails];
    v10 = [v9 passUniqueID];
    v11 = [v6 updateReason];
    v12 = [(PKPaymentOffersController *)self paymentOfferCriteriaForIdentifier:v8];
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__20;
    v48[4] = __Block_byref_object_dispose__20;
    if (v8)
    {
      v13 = [(NSMutableDictionary *)self->_sessionIdentifierForCriteriaIdentifier objectForKeyedSubscript:v8];
    }

    else
    {
      v13 = 0;
    }

    v49 = v13;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__20;
    v44[4] = __Block_byref_object_dispose__20;
    v45 = 0;
    v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(&location, self);
    if ([v6 updateReason] == 7 && objc_msgSend(v12, "type") == 1 && (objc_msgSend(v12, "hasPreconfiguredOffers") & 1) == 0)
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPaymentOffersController requested to load payment offers the cached catalog had hasPreconfiguredOffers as true. But the updated catalog cache has hasPreconfiguredOffers as false. Cancelling this payment offers request.", buf, 2u);
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 0, 0);
      }
    }

    else
    {
      v15 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:1];
      [(PKPaymentOffersController *)self _updateLoadingDetailsState:v15 criteriaIdentifier:v8 passUniqueID:v10 requestType:1];

      *buf = 0;
      v38 = buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__20;
      v41 = __Block_byref_object_dispose__20;
      v42 = 0;
      if (!v10)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke;
        v35[3] = &unk_1E79CF1D0;
        objc_copyWeak(&v36, &location);
        v35[4] = self;
        v35[5] = buf;
        [(PKAsyncUnaryOperationComposer *)v14 addOperation:v35];
        objc_destroyWeak(&v36);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_4;
      v23[3] = &unk_1E79CF248;
      objc_copyWeak(v34, &location);
      v24 = v12;
      v25 = v8;
      v30 = v44;
      v26 = v10;
      v31 = v48;
      v27 = v9;
      v34[1] = v11;
      v32 = buf;
      v33 = v46;
      v28 = v6;
      v29 = self;
      [(PKAsyncUnaryOperationComposer *)v14 addOperation:v23];
      v16 = [MEMORY[0x1E695DFB0] null];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_167;
      v19[3] = &unk_1E79CF158;
      v20 = v7;
      v21 = v46;
      v22 = v44;
      v17 = [(PKAsyncUnaryOperationComposer *)v14 evaluateWithInput:v16 completion:v19];

      objc_destroyWeak(v34);
      _Block_object_dispose(buf, 8);
    }

    objc_destroyWeak(&location);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);
    _Block_object_dispose(v48, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = *(*(a1 + 32) + 208);
    if (!v11)
    {
      v12 = [PKODIServiceProviderAssessment alloc];
      v13 = *MEMORY[0x1E6998628];
      v14 = PKPassKitCoreBundle();
      v15 = [(PKODIServiceProviderAssessment *)v12 initWithServiceProviderIdentifier:v13 locationBundle:v14];
      v16 = *(a1 + 32);
      v17 = *(v16 + 208);
      *(v16 + 208) = v15;

      [*(*(a1 + 32) + 208) startAssessment];
      v11 = *(*(a1 + 32) + 208);
    }

    [v11 computeAssessment];
    v18 = *(*(a1 + 32) + 208);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_2;
    v19[3] = &unk_1E79CF1A8;
    objc_copyWeak(&v23, (a1 + 48));
    v22 = *(a1 + 40);
    v21 = v9;
    v20 = v8;
    [v18 waitForAssessmentWithContinueBlock:v19];

    objc_destroyWeak(&v23);
  }
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_3;
  block[3] = &unk_1E79CF180;
  objc_copyWeak(&v13, (a1 + 56));
  v14 = a3;
  v10 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v11 = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 72) == 1)
    {
      [WeakRetained[26] provideSessionFeedback:2];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    (*(*(a1 + 48) + 16))();
    WeakRetained = v3;
  }
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v43 = a2;
  v44 = a3;
  v45 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      if (*(*(*(a1 + 88) + 8) + 40))
      {
        v8 = PKLogFacilityTypeGetObject(7uLL);
      }

      else
      {
        v14 = [MEMORY[0x1E696AFB0] UUID];
        v15 = [v14 UUIDString];
        v16 = *(*(a1 + 88) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v8 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          v19 = *(*(*(a1 + 88) + 8) + 40);
          *buf = 138412546;
          v60 = v18;
          v61 = 2112;
          v62 = v19;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Creating a new session identifier for criteriaIdentifier %@: %@", buf, 0x16u);
        }

        [WeakRetained[5] setObject:*(*(*(a1 + 88) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412546;
        v60 = v20;
        v61 = 2112;
        v62 = v21;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Fetching Payment Offers for %@, sessionIdentifier %@", buf, 0x16u);
      }

      v42 = [WeakRetained merchandisingOfferForPassUniqueID:*(a1 + 48)];
      v40 = [v42 allIdentifiers];
      v22 = [WeakRetained[28] copy];
      [v22 setMerchandisingOfferIdentifiers:v40];
      v38 = *(a1 + 40);
      v39 = WeakRetained[1];
      v23 = *(*(*(a1 + 88) + 8) + 40);
      v36 = *(a1 + 120);
      v37 = *(a1 + 56);
      v24 = *(*(*(a1 + 96) + 8) + 40);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_164;
      v46[3] = &unk_1E79CF220;
      objc_copyWeak(&v58, (a1 + 112));
      *&v25 = *(a1 + 80);
      *(&v25 + 1) = *(a1 + 96);
      v35 = v25;
      v47 = *(a1 + 40);
      v48 = *(a1 + 48);
      v55 = v45;
      v49 = v44;
      v34 = *(a1 + 104);
      v50 = *(a1 + 56);
      v51 = *(a1 + 32);
      *&v26 = v34;
      *(&v26 + 1) = *(a1 + 88);
      v56 = v35;
      v57 = v26;
      v52 = *(a1 + 64);
      v27 = v22;
      v28 = *(a1 + 72);
      v53 = v27;
      v54 = v28;
      [v39 paymentOffersForCriteriaIdentifier:v38 selectedPassDetails:v37 sessionIdentifier:v23 sessionDetails:v27 updateReason:v36 fraudAssessment:v24 completion:v46];

      objc_destroyWeak(&v58);
    }

    else
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch payment offers for %@ since there is no criteria for that identifier", *(a1 + 40)];
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v41;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v10 = *(*(a1 + 80) + 8);
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = v11;
        v13 = *(v10 + 40);
        *(v10 + 40) = v12;
      }

      else
      {
        v29 = MEMORY[0x1E696ABC0];
        v63 = *MEMORY[0x1E696A578];
        v64[0] = v41;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        v30 = [v29 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];
        v31 = *(*(a1 + 80) + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = v30;
      }

      v33 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithError:*(*(*(a1 + 80) + 8) + 40)];
      [WeakRetained _updateLoadingDetailsState:v33 criteriaIdentifier:*(a1 + 40) passUniqueID:*(a1 + 48) requestType:1];

      (*(v45 + 2))(v45, v44, 0);
    }
  }
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_2_165;
  v15[3] = &unk_1E79CF1F8;
  objc_copyWeak(&v28, (a1 + 136));
  v16 = v6;
  v25 = *(a1 + 104);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v24 = *(a1 + 96);
  v19 = *(a1 + 48);
  v20 = v5;
  v26 = *(a1 + 120);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v27 = *(a1 + 128);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v21 = v12;
  v22 = v11;
  v23 = *(a1 + 88);
  v13 = v5;
  v14 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v15);

  objc_destroyWeak(&v28);
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_2_165(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 152));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_51;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error getting payment offers: %@", buf, 0xCu);
    }

    v6 = *(*(a1 + 120) + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    if (!v9)
    {
      v8 = *(a1 + 32);
    }

    objc_storeStrong(v7, v8);
    if (*(*(*(a1 + 128) + 8) + 40))
    {
      [v3[26] provideSessionFeedback:1];
    }

    v10 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithError:*(*(*(a1 + 120) + 8) + 40)];
    [v3 _updateLoadingDetailsState:v10 criteriaIdentifier:*(a1 + 40) passUniqueID:*(a1 + 48) requestType:1];

    (*(*(a1 + 112) + 16))();
    goto LABEL_51;
  }

  v11 = [WeakRetained preferredLocalizationLanguageForCriteriaIdentifier:*(a1 + 40)];
  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 138412546;
    v48 = v13;
    v49 = 2112;
    v50 = v11;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Setting preferred language for criteriaIdentifier %@ as %@", buf, 0x16u);
  }

  [*(a1 + 64) populatePreferredLanguage:v11];
  v14 = PKPaymentOffersControllerGenerateCacheKey(*(a1 + 40), *(a1 + 48));
  v15 = [v3[6] objectForKeyedSubscript:v14];
  v45 = v14;
  [v3[6] setObject:*(a1 + 64) forKeyedSubscript:v14];
  v16 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:3];
  [v3 _updateLoadingDetailsState:v16 criteriaIdentifier:*(a1 + 40) passUniqueID:*(a1 + 48) requestType:1];

  v17 = *(a1 + 64);
  if (v15 && v17)
  {
    if ([v15 isEqual:?])
    {
      goto LABEL_20;
    }

LABEL_17:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 64);
      *buf = 138412546;
      v48 = v18;
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Payment Offers Assessment collection has changed for identifier %@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 136) + 8) + 24) = 1;
    [v3 _informObserversPaymentOffersChangedForPassUniqueID:*(a1 + 48)];
    goto LABEL_20;
  }

  if (v15 != v17)
  {
    goto LABEL_17;
  }

LABEL_20:
  v44 = v15;
  v46 = v11;
  if (*(*(*(a1 + 128) + 8) + 40))
  {
    [v3[26] provideSessionFeedback:0];
  }

  v20 = [v3[30] selectedPaymentOffer];
  v21 = [*(a1 + 72) passUniqueID];
  v22 = [v3 preconfiguredInstallmentOfferStateForPassUniqueID:v21];

  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = *(*(*(a1 + 144) + 8) + 40);
  v27 = [v20 selectedOfferIdentifier];
  v28 = [v25 selectedPaymentOfferWithCriteria:v24 passDetails:v23 sessionIdentifier:v26 previousSelectedOfferIdentifier:v27 preconfiguredOfferState:v22 updateReason:{objc_msgSend(*(a1 + 88), "updateReason")}];

  v29 = [MEMORY[0x1E695DF00] date];
  [v28 updateUserSelectionDate:v29];

  if (v28 || !v20)
  {
    goto LABEL_38;
  }

  if ([v20 type] == 1)
  {
    v30 = [*(a1 + 96) transactionAmount];
    if ((!v30 || [v20 storageType] == 1) && objc_msgSend(*(a1 + 96), "context") == 1)
    {
      v31 = [v20 installmentSelectedPaymentOffer];
      v32 = [v31 installmentAssessment];
      v33 = [v32 isEligible];

      if (v33)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  if ([v20 type] != 1)
  {
    goto LABEL_37;
  }

  v34 = [*(a1 + 96) transactionAmount];
  if (!v34 || [*(a1 + 96) context] != 1)
  {

    goto LABEL_37;
  }

  v35 = [*(a1 + 64) installmentAssessment];
  v36 = [v35 isEligible];

  if (v36)
  {
LABEL_37:
    v28 = 0;
    goto LABEL_38;
  }

LABEL_35:
  v28 = v20;
LABEL_38:
  v37 = [*(*(a1 + 104) + 240) selectedPaymentOffer];
  if ([v3[30] updateCurrentSelectedPaymentOffer:v28 selectedPassUniqueID:*(a1 + 48) updateReason:{objc_msgSend(*(a1 + 88), "updateReason")}])
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 40);
      v39 = *(*(a1 + 104) + 240);
      *buf = 138412546;
      v48 = v38;
      v49 = 2112;
      v50 = v39;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Selected Payment Offer Changed for identifier %@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 136) + 8) + 24) = 1;
    [v3 _informObserversSelectedPaymentOfferChangedForPassUniqueID:*(a1 + 48)];
    if (([*(*(a1 + 104) + 224) context] - 1) <= 1 && objc_msgSend(*(a1 + 88), "updateReason") == 4 && v28 && (!v37 || (objc_msgSend(v37, "isEqual:", v28) & 1) == 0))
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 48);
        *buf = 138412546;
        v48 = v40;
        v49 = 2112;
        v50 = v28;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Updating current selected payment offer for %@ to %@", buf, 0x16u);
      }

      v41 = [v3[1] updateSelectedPaymentOffer:v28 forPassUniqueID:*(a1 + 48)];
      if ([v3[28] context] == 1)
      {
        v42 = [*(*(a1 + 104) + 8) allSelectedPaymentOffersForPassUniqueID:*(a1 + 48)];
        v43 = v3[11];
        v3[11] = v42;
      }
    }
  }

  (*(*(a1 + 112) + 16))();

LABEL_51:
}

void __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_167(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentOffersController__performPaymentOffersRequest_completion___block_invoke_2_168;
  block[3] = &unk_1E79CBE88;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_performConfirmRequest:(id)a3 completion:(id)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 3)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__20;
    v71 = __Block_byref_object_dispose__20;
    v72 = 0;
    v8 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
    v9 = [v6 criteriaIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v8 criteriaIdentifier];
    }

    v12 = v11;

    v13 = [v8 sessionIdentifier];
    v14 = [(PKPaymentOfferCatalog *)self->_catalog criteriaWithIdentifier:v12];
    v15 = [v14 type];

    if (v15 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2 * (v15 == 1);
    }

    if (v12)
    {
      if (v8)
      {
        if (v13)
        {
          v17 = objc_alloc_init(PKPaymentOfferWebServiceConfirmOffer);
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setBaseURL:self->_baseURL];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setCriteriaIdentifier:v12];
          v18 = [v8 selectedOfferIdentifier];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setSelectedOfferIdentifier:v18];

          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setSessionIdentifier:v13];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setSelectionType:v16];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setEventType:3];
          v19 = [v8 passDetails];
          v20 = [v19 passSerialNumber];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setPassSerialNumber:v20];

          v21 = [v8 passDetails];
          v22 = [v21 passTypeIdentifier];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setPassTypeIdentifier:v22];

          v23 = [v8 passDetails];
          v24 = [v23 primaryAccountIdentifier];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setFpanIdentifier:v24];

          v25 = [v8 passDetails];
          v26 = [v25 dpanIdentifier];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setDpanIdentifier:v26];

          v27 = [(PKPaymentOffersSessionDetails *)self->_configuration transactionDetails];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setTransactionDetails:v27];

          v28 = [(PKPaymentOfferWebServiceConfirmOffer *)v17 rewardsRedemptionIntent];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setRewardsRedemptionIntent:v28];

          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setSelectedOffer:v8];
          [(PKPaymentOfferWebServiceConfirmOffer *)v17 setContext:[(PKPaymentOffersSessionDetails *)self->_configuration context]];
          v29 = objc_alloc_init(PKAsyncUnaryOperationComposer);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v74 = 0x3032000000;
          v75 = __Block_byref_object_copy__20;
          v76 = __Block_byref_object_dispose__20;
          v77 = 0;
          v65[0] = 0;
          v65[1] = v65;
          v65[2] = 0x3032000000;
          v65[3] = __Block_byref_object_copy__20;
          v65[4] = __Block_byref_object_dispose__20;
          v66 = 0;
          objc_initWeak(&location, self);
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke;
          v59[3] = &unk_1E79CF298;
          objc_copyWeak(&v63, &location);
          v30 = v17;
          v60 = v30;
          v61 = &v67;
          p_buf = &buf;
          [(PKAsyncUnaryOperationComposer *)v29 addOperation:v59];
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_180;
          v57[3] = &unk_1E79CF360;
          objc_copyWeak(&v58, &location);
          v57[4] = &buf;
          v57[5] = v65;
          [(PKAsyncUnaryOperationComposer *)v29 addOperation:v57];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3_186;
          v52[3] = &unk_1E79CF3D8;
          objc_copyWeak(&v56, &location);
          v54 = self;
          v55 = v65;
          v53 = v8;
          [(PKAsyncUnaryOperationComposer *)v29 addOperation:v52];
          v31 = [MEMORY[0x1E695DFB0] null];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_8;
          v49[3] = &unk_1E79CB818;
          v50 = v7;
          v51 = &v67;
          v32 = [(PKAsyncUnaryOperationComposer *)v29 evaluateWithInput:v31 completion:v49];

          objc_destroyWeak(&v56);
          objc_destroyWeak(&v58);

          objc_destroyWeak(&v63);
          objc_destroyWeak(&location);
          _Block_object_dispose(v65, 8);

          _Block_object_dispose(&buf, 8);
LABEL_29:

          _Block_object_dispose(&v67, 8);
          goto LABEL_30;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no sessionIdentifier defined for selected offer %@", v8];
        v37 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v30;
          _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
        }

        v34 = v68;
        v35 = v68[5];
        if (!v35)
        {
          v46 = MEMORY[0x1E696ABC0];
          v78 = *MEMORY[0x1E696A578];
          v79 = v30;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v47 = [v46 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v39];
          v48 = v68[5];
          v68[5] = v47;

          goto LABEL_28;
        }
      }

      else
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no selected offer defined for criteria identifier %@", v12];
        v36 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v30;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
        }

        v34 = v68;
        v35 = v68[5];
        if (!v35)
        {
          v43 = MEMORY[0x1E696ABC0];
          v80 = *MEMORY[0x1E696A578];
          v81 = v30;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v44 = [v43 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v39];
          v45 = v68[5];
          v68[5] = v44;

          goto LABEL_28;
        }
      }
    }

    else
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no criteriaIdentifier defined"];
      v33 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }

      v34 = v68;
      v35 = v68[5];
      if (!v35)
      {
        v40 = MEMORY[0x1E696ABC0];
        v82 = *MEMORY[0x1E696A578];
        v83[0] = v30;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
        v41 = [v40 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v39];
        v42 = v68[5];
        v68[5] = v41;

        goto LABEL_28;
      }
    }

    v38 = v35;
    v39 = v34[5];
    v34[5] = v38;
LABEL_28:

    (*(v7 + 2))(v7, 0, v68[5]);
    goto LABEL_29;
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_30:
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 2);
    v13 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2;
    v16[3] = &unk_1E79CF270;
    objc_copyWeak(&v21, (a1 + 56));
    v19 = *(a1 + 40);
    v18 = v9;
    v14 = v8;
    v15 = *(a1 + 48);
    v17 = v14;
    v20 = v15;
    [v12 confirmOffersWithRequest:v13 completion:v16];

    objc_destroyWeak(&v21);
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3;
  block[3] = &unk_1E79CF0E0;
  objc_copyWeak(&v18, (a1 + 64));
  v13 = v6;
  v11 = *(a1 + 40);
  v7 = v11;
  v16 = v11;
  v8 = *(a1 + 32);
  v17 = *(a1 + 56);
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error calling payment offer confirm: %@", &v10, 0xCu);
      }

      v5 = *(*(a1 + 64) + 8);
      v8 = *(v5 + 40);
      v6 = (v5 + 40);
      v7 = v8;
      if (!v8)
      {
        v7 = *(a1 + 32);
      }

      objc_storeStrong(v6, v7);
      v9 = *(*(a1 + 56) + 16);
    }

    else
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
      v9 = *(*(a1 + 56) + 16);
    }

    v9();
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_180(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    if (v11)
    {
      v12 = [v11 issuerInstallmentManagementURL];
      v13 = [WeakRetained[28] transactionDetails];
      v14 = [v13 serviceIdentifier];

      v15 = [WeakRetained[28] transactionDetails];
      v16 = [v15 transactionSourceIdentifier];

      v17 = WeakRetained[1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2_181;
      v22[3] = &unk_1E79CF338;
      objc_copyWeak(&v29, (a1 + 48));
      v27 = v9;
      v23 = v8;
      v18 = v14;
      v24 = v18;
      v19 = v12;
      v20 = *(a1 + 40);
      v25 = v19;
      v28 = v20;
      v21 = v16;
      v26 = v21;
      [v17 transactionWithServiceIdentifier:v18 transactionSourceIdentifier:v21 completion:v22];

      objc_destroyWeak(&v29);
    }

    else
    {
      (*(v9 + 2))(v9, v8, 1);
    }
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2_181(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3_182;
  v11[3] = &unk_1E79CF310;
  objc_copyWeak(&v17, (a1 + 80));
  v12 = v3;
  v15 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v17);
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3_182(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = PKLogFacilityTypeGetObject(7uLL);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        *buf = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Updating payment transaction with service identifier %@ to have issuerInstallmentManagementURL as %@ and issIssuerInstallmentTransaction as true", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 32));
      [*(a1 + 32) setIssuerInstallmentManagementURL:*(a1 + 56)];
      [*(a1 + 32) setIsIssuerInstallmentTransaction:1];
      v8 = *(WeakRetained + 1);
      v9 = *(a1 + 32);
      v10 = *(a1 + 64);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_183;
      v12[3] = &unk_1E79CF2E8;
      objc_copyWeak(&v15, (a1 + 88));
      v14 = *(a1 + 72);
      v13 = *(a1 + 40);
      [v8 insertOrUpdatePaymentTransaction:v9 forTransactionSourceIdentifier:v10 completion:v12];

      objc_destroyWeak(&v15);
    }

    else
    {
      if (v5)
      {
        v11 = [*(WeakRetained + 28) transactionDetails];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "There is no transaction in the database with details %@. Cannot update it with the latest issuer installment mangement URL.", buf, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_183(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2_184;
  block[3] = &unk_1E79CF2C0;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  v3 = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_2_184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_3_186(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = [*(a1 + 32) installmentSelectedPaymentOffer];
    v12 = [*(a1 + 32) selectedOfferIdentifier];
    [v11 updateSelectedOfferIdentifier:v12];

    v13 = [WeakRetained[28] transactionDetails];
    v14 = [v13 paymentHash];

    v15 = -[PKPaymentOfferSelectedConfirmationRecord initWithTransaction:context:selectedOffer:]([PKPaymentOfferSelectedConfirmationRecord alloc], "initWithTransaction:context:selectedOffer:", *(*(*(a1 + 48) + 8) + 40), [*(*(a1 + 40) + 224) context], *(a1 + 32));
    v16 = WeakRetained[1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_4;
    v18[3] = &unk_1E79CF3B0;
    objc_copyWeak(&v22, (a1 + 56));
    v17 = v14;
    v19 = v17;
    v21 = v9;
    v20 = v8;
    [v16 insertOrUpdatePaymentOfferConfirmationRecord:v15 completion:v18];

    objc_destroyWeak(&v22);
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_4(id *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_5;
  v2[3] = &unk_1E79CF068;
  objc_copyWeak(&v6, a1 + 7);
  v3 = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v6);
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_6;
    v6[3] = &unk_1E79CF388;
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v4 updatePaymentOfferConfirmationRecordProcessEvents:3 forPaymentHash:v5 successfully:1 completion:v6];

    objc_destroyWeak(&v9);
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_6(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_7;
  block[3] = &unk_1E79CF2C0;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  v3 = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

void __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_8(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PKPaymentOffersController__performConfirmRequest_completion___block_invoke_9;
  v4[3] = &unk_1E79CF400;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)_performSelectRequest:(id)a3 completion:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 4)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__20;
    v58 = __Block_byref_object_dispose__20;
    v59 = 0;
    v8 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
    v9 = [v6 criteriaIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v8 criteriaIdentifier];
    }

    v12 = v11;

    v13 = [v8 sessionIdentifier];
    v14 = v13;
    if (v12)
    {
      if (v8)
      {
        if (v13)
        {
          v15 = objc_alloc_init(PKPaymentOfferWebServiceSelectedOffer);
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setBaseURL:self->_baseURL];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setCriteriaIdentifier:v12];
          v16 = [v8 selectedOfferIdentifier];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setOfferIdentifier:v16];

          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setSessionIdentifier:v14];
          v17 = [v8 passDetails];
          v18 = [v17 passSerialNumber];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setPassSerialNumber:v18];

          v19 = [v8 passDetails];
          v20 = [v19 passTypeIdentifier];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setPassTypeIdentifier:v20];

          v21 = [v8 passDetails];
          v22 = [v21 primaryAccountIdentifier];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setFpanIdentifier:v22];

          v23 = [v8 passDetails];
          v24 = [v23 dpanIdentifier];
          [(PKPaymentOfferWebServiceSelectedOffer *)v15 setDpanIdentifier:v24];

          v25 = objc_alloc_init(PKAsyncUnaryOperationComposer);
          objc_initWeak(location, self);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke;
          v48[3] = &unk_1E79CF478;
          objc_copyWeak(&v53, location);
          v26 = v15;
          v49 = v26;
          v52 = &v54;
          v50 = v8;
          v51 = self;
          [(PKAsyncUnaryOperationComposer *)v25 addOperation:v48];
          v27 = [MEMORY[0x1E695DFB0] null];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_191;
          v45[3] = &unk_1E79CB818;
          v46 = v7;
          v47 = &v54;
          v28 = [(PKAsyncUnaryOperationComposer *)v25 evaluateWithInput:v27 completion:v45];

          objc_destroyWeak(&v53);
          objc_destroyWeak(location);

LABEL_26:
          _Block_object_dispose(&v54, 8);

          goto LABEL_27;
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no sessionIdentifier defined for selected offer %@", v8];
        v33 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v26;
          _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
        }

        v30 = v55;
        v31 = v55[5];
        if (!v31)
        {
          v42 = MEMORY[0x1E696ABC0];
          v60 = *MEMORY[0x1E696A578];
          v61 = v26;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v43 = [v42 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
          v44 = v55[5];
          v55[5] = v43;

          goto LABEL_25;
        }
      }

      else
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no selected offer defined for criteria identifier %@", v12];
        v32 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v26;
          _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
        }

        v30 = v55;
        v31 = v55[5];
        if (!v31)
        {
          v39 = MEMORY[0x1E696ABC0];
          v62 = *MEMORY[0x1E696A578];
          v63 = v26;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v40 = [v39 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
          v41 = v55[5];
          v55[5] = v40;

          goto LABEL_25;
        }
      }
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no criteriaIdentifier defined"];
      v29 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v26;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
      }

      v30 = v55;
      v31 = v55[5];
      if (!v31)
      {
        v36 = MEMORY[0x1E696ABC0];
        v64 = *MEMORY[0x1E696A578];
        v65 = v26;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v37 = [v36 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
        v38 = v55[5];
        v55[5] = v37;

        goto LABEL_25;
      }
    }

    v34 = v31;
    v35 = v30[5];
    v30[5] = v34;
LABEL_25:

    (*(v7 + 2))(v7, 0, v55[5]);
    goto LABEL_26;
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_27:
}

void __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 2);
    v13 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_2;
    v16[3] = &unk_1E79CF450;
    objc_copyWeak(&v22, (a1 + 64));
    v21 = *(a1 + 56);
    v20 = v9;
    v17 = v8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = v14;
    v19 = v15;
    [v12 selectedOffersWithRequest:v13 completion:v16];

    objc_destroyWeak(&v22);
  }
}

void __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_3;
  block[3] = &unk_1E79CF428;
  objc_copyWeak(&v16, (a1 + 72));
  v11 = v4;
  v9 = *(a1 + 56);
  v5 = v9;
  v15 = v9;
  v12 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error calling payment offer select: %@", &v18, 0xCu);
      }

      v5 = *(*(a1 + 72) + 8);
      v8 = *(v5 + 40);
      v6 = (v5 + 40);
      v7 = v8;
      if (!v8)
      {
        v7 = *(a1 + 32);
      }

      objc_storeStrong(v6, v7);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v9 = [*(a1 + 48) passDetails];
      v10 = [v9 passUniqueID];

      v11 = *(a1 + 48);
      v12 = [MEMORY[0x1E695DF00] date];
      [v11 updateUserSelectionDate:v12];

      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 48);
        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Updating current selected payment offer for %@ to %@", &v18, 0x16u);
      }

      v15 = [WeakRetained[1] updateSelectedPaymentOffer:*(a1 + 48) forPassUniqueID:v10];
      if ([WeakRetained[28] context] == 1)
      {
        v16 = [*(*(a1 + 56) + 8) allSelectedPaymentOffersForPassUniqueID:v10];
        v17 = WeakRetained[11];
        WeakRetained[11] = v16;
      }

      [WeakRetained _informObserversSelectedPaymentOfferChangedForPassUniqueID:v10];
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_191(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PKPaymentOffersController__performSelectRequest_completion___block_invoke_2_192;
  v4[3] = &unk_1E79CF400;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)_performCancelRequest:(id)a3 completion:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 5)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__20;
    v62 = __Block_byref_object_dispose__20;
    v63 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v57 = 0;
    v8 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
    v9 = [v6 criteriaIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v8 criteriaIdentifier];
    }

    v12 = v11;

    v13 = [v8 sessionIdentifier];
    v14 = v13;
    if (v12)
    {
      if (v8)
      {
        if (v13)
        {
          v15 = objc_alloc_init(PKPaymentOfferWebServiceCancel);
          [(PKPaymentOfferWebServiceCancel *)v15 setBaseURL:self->_baseURL];
          [(PKPaymentOfferWebServiceCancel *)v15 setCriteriaIdentifier:v12];
          v16 = [v8 selectedOfferIdentifier];
          [(PKPaymentOfferWebServiceCancel *)v15 setSelectedOfferIdentifier:v16];

          [(PKPaymentOfferWebServiceCancel *)v15 setSessionIdentifier:v14];
          v17 = [v8 passDetails];
          v18 = [v17 passSerialNumber];
          [(PKPaymentOfferWebServiceCancel *)v15 setPassSerialNumber:v18];

          v19 = [v8 passDetails];
          v20 = [v19 passTypeIdentifier];
          [(PKPaymentOfferWebServiceCancel *)v15 setPassTypeIdentifier:v20];

          v21 = [v8 passDetails];
          v22 = [v21 primaryAccountIdentifier];
          [(PKPaymentOfferWebServiceCancel *)v15 setFpanIdentifier:v22];

          v23 = [v8 passDetails];
          v24 = [v23 dpanIdentifier];
          [(PKPaymentOfferWebServiceCancel *)v15 setDpanIdentifier:v24];

          v25 = objc_alloc_init(PKAsyncUnaryOperationComposer);
          objc_initWeak(location, self);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke;
          v49[3] = &unk_1E79CF4F0;
          objc_copyWeak(&v55, location);
          v26 = v15;
          v50 = v26;
          v53 = &v58;
          v51 = v8;
          v52 = v12;
          v54 = v56;
          [(PKAsyncUnaryOperationComposer *)v25 addOperation:v49];
          v27 = [MEMORY[0x1E695DFB0] null];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_195;
          v45[3] = &unk_1E79CF158;
          v46 = v7;
          v47 = v56;
          v48 = &v58;
          v28 = [(PKAsyncUnaryOperationComposer *)v25 evaluateWithInput:v27 completion:v45];

          objc_destroyWeak(&v55);
          objc_destroyWeak(location);

LABEL_26:
          _Block_object_dispose(v56, 8);
          _Block_object_dispose(&v58, 8);

          goto LABEL_27;
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no sessionIdentifier defined for selected offer %@", v8];
        v33 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v26;
          _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
        }

        v30 = v59;
        v31 = v59[5];
        if (!v31)
        {
          v42 = MEMORY[0x1E696ABC0];
          v64 = *MEMORY[0x1E696A578];
          v65 = v26;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v43 = [v42 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
          v44 = v59[5];
          v59[5] = v43;

          goto LABEL_25;
        }
      }

      else
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no selected offer defined for criteria identifier %@", v12];
        v32 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v26;
          _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
        }

        v30 = v59;
        v31 = v59[5];
        if (!v31)
        {
          v39 = MEMORY[0x1E696ABC0];
          v66 = *MEMORY[0x1E696A578];
          v67 = v26;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v40 = [v39 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
          v41 = v59[5];
          v59[5] = v40;

          goto LABEL_25;
        }
      }
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch call confirm with no criteriaIdentifier defined"];
      v29 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v26;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "%@", location, 0xCu);
      }

      v30 = v59;
      v31 = v59[5];
      if (!v31)
      {
        v36 = MEMORY[0x1E696ABC0];
        v68 = *MEMORY[0x1E696A578];
        v69 = v26;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v37 = [v36 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v35];
        v38 = v59[5];
        v59[5] = v37;

        goto LABEL_25;
      }
    }

    v34 = v31;
    v35 = v30[5];
    v30[5] = v34;
LABEL_25:

    (*(v7 + 2))(v7, 0, v59[5]);
    goto LABEL_26;
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_27:
}

void __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 2);
    v13 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_2;
    v16[3] = &unk_1E79CF4C8;
    objc_copyWeak(&v23, (a1 + 72));
    v21 = *(a1 + 56);
    v20 = v9;
    v17 = v8;
    v18 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v19 = v14;
    v22 = v15;
    [v12 cancelPaymentOfferWithRequest:v13 completion:v16];

    objc_destroyWeak(&v23);
  }
}

void __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_3;
  block[3] = &unk_1E79CF4A0;
  objc_copyWeak(&v17, (a1 + 80));
  v11 = v4;
  v9 = *(a1 + 56);
  v5 = v9;
  v15 = v9;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  v14 = v6;
  v16 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error calling payment offer select: %@", &v12, 0xCu);
      }

      v5 = *(*(a1 + 72) + 8);
      v8 = *(v5 + 40);
      v6 = (v5 + 40);
      v7 = v8;
      if (!v8)
      {
        v7 = *(a1 + 32);
      }

      objc_storeStrong(v6, v7);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v9 = [*(a1 + 48) passDetails];
      v10 = [v9 passUniqueID];

      v11 = PKPaymentOffersControllerGenerateCacheKey(*(a1 + 56), v10);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      [WeakRetained[5] setObject:0 forKeyedSubscript:*(a1 + 56)];
      [WeakRetained[6] setObject:0 forKeyedSubscript:v11];
      [WeakRetained clearCurrentSelectedPaymentOfferDetails];
      [WeakRetained[1] removeSelectedPaymentOffer:*(a1 + 48) associatedWithPassUniqueID:v10];
      [WeakRetained _informObserversSelectedPaymentOfferChangedForPassUniqueID:v10];
      [WeakRetained _handleOffersChangedForPassUniqueID:v10 didRemove:1];
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_195(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentOffersController__performCancelRequest_completion___block_invoke_2_196;
  block[3] = &unk_1E79CBE88;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_performDynamicContentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 2)
  {
    v8 = [(PKPaymentOffersControllerRequest *)self->_currentRequest criteriaIdentifier];
    v9 = [(PKPaymentOffersControllerRequest *)self->_currentRequest dynamicPageTypes];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__20;
    v27[4] = __Block_byref_object_dispose__20;
    v28 = 0;
    v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(&location, self);
    v11 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:1];
    [(PKPaymentOffersController *)self _updateLoadingDetailsState:v11 criteriaIdentifier:v8 passUniqueID:0 requestType:2];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke;
    v20[3] = &unk_1E79CF568;
    objc_copyWeak(&v25, &location);
    v12 = v8;
    v21 = v12;
    v23 = v27;
    v13 = v9;
    v22 = v13;
    v24 = v29;
    [(PKAsyncUnaryOperationComposer *)v10 addOperation:v20];
    v14 = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_203;
    v16[3] = &unk_1E79CF158;
    v17 = v7;
    v18 = v29;
    v19 = v27;
    v15 = [(PKAsyncUnaryOperationComposer *)v10 evaluateWithInput:v14 completion:v16];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *buf = 138412546;
        v38 = v11;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Fetching Payment Offer Dynamic Content for %@, pageTypes %@", buf, 0x16u);
      }

      v14 = objc_alloc_init(PKPaymentOfferWebServiceDynamicContentRequest);
      [(PKPaymentOfferWebServiceDynamicContentRequest *)v14 setBaseURL:*(WeakRetained + 4)];
      [(PKPaymentOfferWebServiceDynamicContentRequest *)v14 setCriteriaIdentifier:*(a1 + 32)];
      v15 = [*(a1 + 40) allObjects];
      [(PKPaymentOfferWebServiceDynamicContentRequest *)v14 setTypes:v15];

      -[PKPaymentOfferWebServiceDynamicContentRequest setContext:](v14, "setContext:", [*(WeakRetained + 28) context]);
      v16 = *(WeakRetained + 2);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_201;
      v29[3] = &unk_1E79CF540;
      objc_copyWeak(&v36, (a1 + 64));
      v34 = *(a1 + 48);
      v30 = *(a1 + 32);
      v33 = v9;
      v31 = v8;
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v32 = v17;
      v35 = v18;
      [v16 paymentOffersDynamicContentWithRequest:v14 completion:v29];

      objc_destroyWeak(&v36);
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot fetch payment offer dynamic content %@ since there is no criteria for that identifier", 0];
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v14;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      if (v21)
      {
        v22 = v21;
        v23 = *(v20 + 40);
        *(v20 + 40) = v22;
      }

      else
      {
        v24 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A578];
        v42[0] = v14;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
        v25 = [v24 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v23];
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;
      }

      v28 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithError:*(*(*(a1 + 48) + 8) + 40)];
      [WeakRetained _updateLoadingDetailsState:v28 criteriaIdentifier:*(a1 + 32) passUniqueID:0 requestType:2];

      (*(v9 + 2))(v9, v8, 0);
    }
  }
}

void __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_2;
  block[3] = &unk_1E79CF518;
  objc_copyWeak(&v19, (a1 + 80));
  v7 = *(a1 + 64);
  v11 = v6;
  v17 = v7;
  v12 = *(a1 + 32);
  v16 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v5;
  v18 = *(a1 + 72);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_37;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error getting payment offer dynamic content: %@", buf, 0xCu);
    }

    v6 = *(*(a1 + 80) + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    if (!v9)
    {
      v8 = *(a1 + 32);
    }

    objc_storeStrong(v7, v8);
    v10 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithError:*(*(*(a1 + 80) + 8) + 40)];
    [v3 _updateLoadingDetailsState:v10 criteriaIdentifier:*(a1 + 40) passUniqueID:0 requestType:2];

    (*(*(a1 + 72) + 16))();
    goto LABEL_37;
  }

  v11 = [WeakRetained[22] objectForKeyedSubscript:*(a1 + 40)];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3[22] setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }

  v29 = v3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = *(a1 + 56);
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        v18 = [v11 objectForKeyedSubscript:v17];
        v19 = [*(a1 + 64) dynamicContent];
        v20 = [v19 dynamicContentPageForPageType:{objc_msgSend(v17, "integerValue")}];

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v18 == 0;
        }

        if (v21)
        {
          if (v18)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            if (v18 == v20)
            {
              goto LABEL_27;
            }

LABEL_26:
            *(*(*(a1 + 88) + 8) + 24) = 1;
            v23 = [v29[22] objectForKeyedSubscript:*(a1 + 40)];
            [v23 setObject:v20 forKeyedSubscript:v17];

            goto LABEL_27;
          }

          v24 = [v18 isEqual:v20];
          if ((v24 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_27:

        ++v16;
      }

      while (v14 != v16);
      v25 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v14 = v25;
    }

    while (v25);
  }

  v26 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:3];
  v3 = v29;
  [v29 _updateLoadingDetailsState:v26 criteriaIdentifier:*(a1 + 40) passUniqueID:0 requestType:2];

  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v27 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      *buf = 138412290;
      v36 = v28;
      _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Payment Offer dynamic content changed for criteriaIdentifier %@", buf, 0xCu);
    }

    [v29 _informObserversPaymentOfferDynamicContentChanged];
  }

  (*(*(a1 + 72) + 16))();

LABEL_37:
}

void __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_203(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentOffersController__performDynamicContentRequest_completion___block_invoke_2_204;
  block[3] = &unk_1E79CBE88;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updatePreferredLanguageForSelectedOffer:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 criteriaIdentifier];
  if ([v4 type] == 1)
  {
    v6 = [(PKPaymentOffersController *)self preferredLocalizationLanguageForCriteriaIdentifier:v5];
    if (v6)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 selectedOfferIdentifier];
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Setting preferred language for selected offer %@ as %@", &v10, 0x16u);
      }

      v9 = [v4 installmentAssessment];
      [v9 populatePreferredLanguage:v6];
    }
  }
}

- (void)_fetchDeviceMetadataFields:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    paymentWebService = self->_paymentWebService;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PKPaymentOffersController__fetchDeviceMetadataFields_completion___block_invoke;
    v9[3] = &unk_1E79CF590;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [v7 paymentWebService:paymentWebService deviceMetadataWithFields:a3 completion:v9];

    objc_destroyWeak(&v11);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  objc_destroyWeak(&location);
}

void __67__PKPaymentOffersController__fetchDeviceMetadataFields_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPaymentOffersController__fetchDeviceMetadataFields_completion___block_invoke_2;
  block[3] = &unk_1E79CF2C0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __67__PKPaymentOffersController__fetchDeviceMetadataFields_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (id)_criteriaEligibilityConfigurationForCriteria:(id)a3
{
  v4 = [a3 type];
  if (v4 == 2)
  {
    v12 = [PKPaymentOfferRewardsCriteriaEligibilityConfiguration alloc];
    v5 = [(PKPaymentOffersSessionDetails *)self->_configuration transactionAmount];
    v6 = [(PKPaymentOffersSessionDetails *)self->_configuration currencyCode];
    v7 = [(PKPaymentOffersSessionDetails *)self->_configuration merchantCountryCode];
    v11 = [(PKPaymentOfferRewardsCriteriaEligibilityConfiguration *)v12 initWithAmount:v5 currencyCode:v6 merchantCountryCode:v7 context:[(PKPaymentOffersSessionDetails *)self->_configuration context] options:[(PKPaymentOffersSessionDetails *)self->_configuration options]];
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v14 = [PKPaymentOfferInstallmentCriteriaEligibilityConfiguration alloc];
    v5 = [(PKPaymentOffersSessionDetails *)self->_configuration transactionAmount];
    v6 = [(PKPaymentOffersSessionDetails *)self->_configuration currencyCode];
    v7 = [(PKPaymentOffersSessionDetails *)self->_configuration merchantCountryCode];
    v8 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
    v9 = [v8 deviceRegion];
    v10 = [(PKPaymentOffersSessionDetails *)self->_configuration supportedNetworks];
    v11 = [(PKPaymentOfferInstallmentCriteriaEligibilityConfiguration *)v14 initWithAmount:v5 currencyCode:v6 merchantCountryCode:v7 deviceRegion:v9 supportedNetworks:v10 merchantCapabilities:[(PKPaymentOffersSessionDetails *)self->_configuration merchantCapabilities] payLaterSuppressionMode:[(PKPaymentOffersSessionDetails *)self->_configuration payLaterSuppressionMode] context:[(PKPaymentOffersSessionDetails *)self->_configuration context] options:[(PKPaymentOffersSessionDetails *)self->_configuration options]];

LABEL_5:
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)_printCatalogEligibilityDebugDetails
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Payment offer catalog eligibility debug details:", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PKPaymentOfferCatalog *)self->_catalog catalog];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    log = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(PKPaymentOffersController *)self _criteriaEligibilityConfigurationForCriteria:v8];
        v23 = 0;
        v10 = [v8 eligibleWithConfiguration:v9 ineligibleReason:&v23];
        v11 = [(PKPaymentOffersController *)self _paymentOfferCriteriaToKeep:v8];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v8 identifier];
          v13 = [v8 associatedPassUniqueID];
          v14 = self;
          v15 = v5;
          v16 = v6;
          if (v10)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v18 = PKPaymentOfferCriteriaIneligibleReasonToString(v23);
          v19 = v18;
          *buf = 138413314;
          v20 = @"NO";
          if (!v11)
          {
            v20 = @"YES";
          }

          v29 = v12;
          v30 = 2112;
          v31 = v13;
          v32 = 2112;
          v33 = v17;
          v6 = v16;
          v5 = v15;
          self = v14;
          v3 = log;
          v34 = 2112;
          v35 = v18;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "PaymentOfferID: %@, passUniqueID: %@, eligibility: %@ ineligibleReason: %@, filteredFromUI: %@", buf, 0x34u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v5);
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
    v4 = v5;
  }
}

- (void)_accessObserversWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    v5 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PKPaymentOffersController__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(replyQueue, v8);
  }
}

void __57__PKPaymentOffersController__accessObserversWithHandler___block_invoke(uint64_t a1)
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

- (void)_informObserversPaymentOfferCatalogChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__PKPaymentOffersController__informObserversPaymentOfferCatalogChanged__block_invoke;
  v2[3] = &unk_1E79CF5B8;
  v2[4] = self;
  [(PKPaymentOffersController *)self _accessObserversWithHandler:v2];
}

void __71__PKPaymentOffersController__informObserversPaymentOfferCatalogChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferCatalogChanged:*(a1 + 32)];
  }
}

- (void)_informObserversPaymentOffersChangedForPassUniqueID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__PKPaymentOffersController__informObserversPaymentOffersChangedForPassUniqueID___block_invoke;
  v6[3] = &unk_1E79CF5E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKPaymentOffersController *)self _accessObserversWithHandler:v6];
}

void __81__PKPaymentOffersController__informObserversPaymentOffersChangedForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOffersChanged:*(a1 + 32) forPassUniqueIdentifier:*(a1 + 40)];
  }
}

- (void)_informObserversSelectedPaymentOfferChangedForPassUniqueID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__PKPaymentOffersController__informObserversSelectedPaymentOfferChangedForPassUniqueID___block_invoke;
  v6[3] = &unk_1E79CF5E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKPaymentOffersController *)self _accessObserversWithHandler:v6];
}

void __88__PKPaymentOffersController__informObserversSelectedPaymentOfferChangedForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 selectedPaymentOfferChanged:*(a1 + 32) forPassUniqueIdentifier:*(a1 + 40)];
  }
}

- (void)_informObserversPaymentOfferDynamicContentChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__PKPaymentOffersController__informObserversPaymentOfferDynamicContentChanged__block_invoke;
  v2[3] = &unk_1E79CF5B8;
  v2[4] = self;
  [(PKPaymentOffersController *)self _accessObserversWithHandler:v2];
}

void __78__PKPaymentOffersController__informObserversPaymentOfferDynamicContentChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferDynamicContentChanged:*(a1 + 32)];
  }
}

- (void)_informObserversPaymentOfferMerchandisingChanged
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__PKPaymentOffersController__informObserversPaymentOfferMerchandisingChanged__block_invoke;
  v2[3] = &unk_1E79CF5B8;
  v2[4] = self;
  [(PKPaymentOffersController *)self _accessObserversWithHandler:v2];
}

void __77__PKPaymentOffersController__informObserversPaymentOfferMerchandisingChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferMerchandisingChanged:*(a1 + 32)];
  }
}

- (void)selectedPaymentOfferUpdated:(id)a3 passUniqueID:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentOffersController_selectedPaymentOfferUpdated_passUniqueID___block_invoke;
  block[3] = &unk_1E79C54B8;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__PKPaymentOffersController_selectedPaymentOfferUpdated_passUniqueID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleOffersChangedForPassUniqueID:*(a1 + 32) didRemove:0];
    WeakRetained = v3;
  }
}

- (void)selectedPaymentOfferRemoved:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPaymentOffersController_selectedPaymentOfferRemoved_passUniqueID___block_invoke;
  v10[3] = &unk_1E79C9528;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __70__PKPaymentOffersController_selectedPaymentOfferRemoved_passUniqueID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained _handleOffersChangedForPassUniqueID:*(a1 + 32) didRemove:1])
  {
    v4 = [*(a1 + 40) criteriaIdentifier];
    if (v4)
    {
      [v3[5] setObject:0 forKeyedSubscript:v4];
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v10 = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Clearing cached session identifiers and payment offers for pass %@, criteriaIdentifier %@", &v10, 0x16u);
      }

      v7 = [*(a1 + 40) passDetails];
      v8 = [v7 passUniqueID];

      v9 = PKPaymentOffersControllerGenerateCacheKey(v4, v8);
      if (v9)
      {
        [v3[6] setObject:0 forKeyedSubscript:v9];
      }
    }
  }
}

- (void)paymentOfferCatalogChangedFromPush:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPaymentOffersController_paymentOfferCatalogChangedFromPush___block_invoke;
  block[3] = &unk_1E79C54B8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __64__PKPaymentOffersController_paymentOfferCatalogChangedFromPush___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleNewCatalog:*(a1 + 32) isServerFetch:0];
    WeakRetained = v3;
  }
}

- (BOOL)_handleOffersChangedForPassUniqueID:(id)a3 didRemove:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(PKPaymentOffersSessionDetails *)self->_configuration context]!= 1)
  {
    goto LABEL_19;
  }

  selectedPassUniqueID = self->_selectedPassUniqueID;
  v8 = v6;
  v9 = selectedPassUniqueID;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

      goto LABEL_19;
    }

    v11 = [(NSString *)v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (!self->_consumingSelectedPaymentOffer)
  {
    v39 = self->_allSelectedInStorePaymentOffers;
    v12 = [(PKPaymentService *)self->_paymentService allSelectedPaymentOffersForPassUniqueID:v8];
    allSelectedInStorePaymentOffers = self->_allSelectedInStorePaymentOffers;
    self->_allSelectedInStorePaymentOffers = v12;

    v14 = [(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails selectedPaymentOffer];
    v15 = v14;
    if (v4)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v36 = v16;
    v17 = [(NSArray *)self->_allSelectedInStorePaymentOffers firstObject];
    v37 = [(NSArray *)self->_allSelectedInStorePaymentOffers pk_objectsPassingTest:&__block_literal_global_228];
    v18 = [v37 pk_firstObjectPassingTest:&__block_literal_global_230_0];
    catalog = self->_catalog;
    v20 = v17;
    v21 = [v17 criteriaIdentifier];
    v22 = [(PKPaymentOfferCatalog *)catalog criteriaWithIdentifier:v21];

    v38 = v22;
    if ([v22 type] == 1)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = v15;
    if (!v15 && v18)
    {
      v26 = v37;
      v27 = [v37 firstObject];
LABEL_24:
      v30 = v36;
LABEL_25:

      v30 = v27;
      goto LABEL_26;
    }

    v26 = v37;
    if (v15 && !v20)
    {
      v27 = 0;
      goto LABEL_24;
    }

    v33 = [v15 type];
    v30 = v36;
    if (v33 != [v20 type] || (v34 = objc_msgSend(v25, "storageType"), v34 != objc_msgSend(v20, "storageType")))
    {
      if (v20 && !v18 && v24)
      {
        if ([v24 suppressPayInFull])
        {
          goto LABEL_39;
        }
      }

      else if (v20)
      {
        if (v25)
        {
          if (v18)
          {
            if ([v25 storageType] == 1 && !objc_msgSend(v20, "storageType"))
            {
              v35 = [v20 userSelectionDate];

              if (v35)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }

LABEL_26:
      [(PKPaymentOffersController *)self _updatePreferredLanguageForSelectedOffer:v30];
      v31 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v8;
        v42 = 2112;
        v43 = v30;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Received selected payment offer changed from passd for pass %@, selected offer: %@", buf, 0x16u);
      }

      if (![(PKPaymentOffersControllerSelectedOfferDetails *)self->_selectedOfferDetails updateCurrentSelectedPaymentOffer:v30 selectedPassUniqueID:v8 updateReason:12])
      {
        v32 = self->_allSelectedInStorePaymentOffers;
        if (v39 && v32)
        {
          if (([(NSArray *)v39 isEqual:?]& 1) != 0)
          {
            goto LABEL_42;
          }
        }

        else if (v39 == v32)
        {
LABEL_42:

          v28 = 1;
          goto LABEL_20;
        }
      }

      [(PKPaymentOffersController *)self _informObserversSelectedPaymentOfferChangedForPassUniqueID:v8];
      goto LABEL_42;
    }

LABEL_39:
    v27 = v20;
    goto LABEL_25;
  }

LABEL_19:
  v28 = 0;
LABEL_20:

  return v28;
}

BOOL __75__PKPaymentOffersController__handleOffersChangedForPassUniqueID_didRemove___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 && objc_msgSend(v2, "storageType") == 1;

  return v3;
}

- (void)updateRewardsBalanceForPass:(id)a3 criteriaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [[PKSelectedPaymentOfferPaymentPassDetails alloc] initWithPaymentPass:v10];

  v11 = [[PKPaymentOffersControllerRequest alloc] initRewardsBalanceWithCriteriaIdentifier:v9 selectedPassDetails:v12 completion:v8];
  [(PKPaymentOffersController *)self _addPaymentOffersControllerRequest:v11];
}

- (id)rewardsBalanceForPassUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_rewardsBalancesForPassUniqueID objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 count])
  {
    v6 = [(PKPaymentService *)self->_paymentService paymentRewardsBalancesWithPassUniqueIdentifier:v4];

    v5 = v6;
  }

  v7 = [(PKPaymentOffersController *)self _redeemablePaymentRewardsBalanceFrom:v5];

  return v7;
}

- (void)_performRewardsBalanceRequest:(id)a3 completion:(id)a4
{
  v72[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 6)
  {
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__20;
    v60 = __Block_byref_object_dispose__20;
    v61 = 0;
    v8 = [v6 criteriaIdentifier];
    v9 = [v6 selectedPassDetails];
    v10 = [v9 primaryAccountIdentifier];

    v11 = [v6 selectedPassDetails];
    v12 = [v11 passUniqueID];

    v32 = [(PKPaymentOffersSessionDetails *)self->_configuration copy];
    if (v8)
    {
      if (v10)
      {
        v13 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Fetching Merchant specific Payment Rewards Balance for %@", &buf, 0xCu);
        }

        v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
        objc_initWeak(&location, self);
        v15 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:1];
        [(PKPaymentOffersController *)self _updateLoadingDetailsState:v15 criteriaIdentifier:v8 passUniqueID:v12 requestType:6];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy__20;
        v67 = __Block_byref_object_dispose__20;
        v68 = 0;
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x3032000000;
        v53[3] = __Block_byref_object_copy__20;
        v53[4] = __Block_byref_object_dispose__20;
        v54 = 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke;
        v44[3] = &unk_1E79CF680;
        objc_copyWeak(&v52, &location);
        v16 = v12;
        v45 = v16;
        v49 = &v56;
        p_buf = &buf;
        v46 = v10;
        v17 = v8;
        v47 = v17;
        v48 = v32;
        v51 = v53;
        [(PKAsyncUnaryOperationComposer *)v14 addOperation:v44];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2_245;
        v36[3] = &unk_1E79CF6A8;
        objc_copyWeak(&v43, &location);
        v37 = v16;
        v39 = v53;
        v40 = &buf;
        v41 = &v56;
        v38 = v17;
        v42 = v62;
        [(PKAsyncUnaryOperationComposer *)v14 addOperation:v36];
        v18 = [MEMORY[0x1E695DFB0] null];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_246;
        v33[3] = &unk_1E79CB818;
        v34 = v7;
        v35 = &v56;
        v19 = [(PKAsyncUnaryOperationComposer *)v14 evaluateWithInput:v18 completion:v33];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&v52);
        _Block_object_dispose(v53, 8);

        _Block_object_dispose(&buf, 8);
        objc_destroyWeak(&location);
        goto LABEL_19;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot get merchant specific rewards balance with no fpanIdentifier defined"];
      v23 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }

      v21 = v57;
      v22 = v57[5];
      if (!v22)
      {
        v29 = MEMORY[0x1E696ABC0];
        v69 = *MEMORY[0x1E696A578];
        v70 = v14;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v30 = [v29 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v25];
        v31 = v57[5];
        v57[5] = v30;

        goto LABEL_18;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot get merchant specific rewards balance with no criteriaIdentifier defined"];
      v20 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }

      v21 = v57;
      v22 = v57[5];
      if (!v22)
      {
        v26 = MEMORY[0x1E696ABC0];
        v71 = *MEMORY[0x1E696A578];
        v72[0] = v14;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v27 = [v26 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v25];
        v28 = v57[5];
        v57[5] = v27;

        goto LABEL_18;
      }
    }

    v24 = v22;
    v25 = v21[5];
    v21[5] = v24;
LABEL_18:

    (*(v7 + 2))(v7, 0, v57[5]);
LABEL_19:

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(v62, 8);
    goto LABEL_20;
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_20:
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Updating rewards balances for pass %@", buf, 0xCu);
    }

    v14 = *(WeakRetained + 1);
    v15 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_238;
    v29[3] = &unk_1E79CF630;
    objc_copyWeak(&v32, (a1 + 88));
    v31 = *(a1 + 64);
    v16 = v11;
    v30 = v16;
    [v14 updatePaymentRewardsBalancesWithPassUniqueIdentifier:v15 completion:v29];
    if (![*(WeakRetained + 28) context])
    {
      v17 = objc_alloc_init(PKPaymentOfferWebServiceRewardsBalancesRequest);
      [(PKPaymentOfferWebServiceRewardsBalancesRequest *)v17 setBaseURL:*(WeakRetained + 4)];
      [(PKPaymentOfferWebServiceRewardsBalancesRequest *)v17 setFpanIdentifier:*(a1 + 40)];
      [(PKPaymentOfferWebServiceRewardsBalancesRequest *)v17 setCriteriaIdentifier:*(a1 + 48)];
      [(PKPaymentOfferWebServiceRewardsBalancesRequest *)v17 setSessionDetails:*(a1 + 56)];
      dispatch_group_enter(v16);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v34 = v18;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Updating merchant specific rewards balances for pass %@", buf, 0xCu);
      }

      v19 = *(WeakRetained + 2);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_241;
      v24[3] = &unk_1E79CF658;
      objc_copyWeak(&v28, (a1 + 88));
      v20 = *(a1 + 80);
      v26 = *(a1 + 64);
      v27 = v20;
      v25 = v16;
      [v19 paymentRewardsBalancesWithRequest:v17 completion:v24];

      objc_destroyWeak(&v28);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_244;
    v21[3] = &unk_1E79C44A0;
    v23 = v9;
    v22 = v8;
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], v21);

    objc_destroyWeak(&v32);
  }
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_238(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2;
  block[3] = &unk_1E79CF608;
  objc_copyWeak(&v16, (a1 + 56));
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v10 = *(a1 + 32);
  v7 = v10;
  v14 = v10;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error getting rewards balance: %@", &v9, 0xCu);
      }

      v5 = *(*(a1 + 56) + 8);
      v8 = *(v5 + 40);
      v6 = (v5 + 40);
      v7 = v8;
      if (!v8)
      {
        v7 = *(a1 + 32);
      }
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = (*(*(a1 + 64) + 8) + 40);
    }

    objc_storeStrong(v6, v7);
    dispatch_group_leave(*(a1 + 48));
  }
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_241(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2_242;
  block[3] = &unk_1E79CF608;
  objc_copyWeak(&v16, (a1 + 56));
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v10 = *(a1 + 32);
  v7 = v10;
  v14 = v10;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2_242(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error calling merchant specific rewards balance: %@", &v12, 0xCu);
      }

      v5 = *(*(a1 + 56) + 8);
      v8 = *(v5 + 40);
      v6 = (v5 + 40);
      v7 = v8;
      if (!v8)
      {
        v7 = *(a1 + 32);
      }

      objc_storeStrong(v6, v7);
    }

    else
    {
      v9 = [*(a1 + 40) rewardsBalances];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2_245(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[7] objectForKeyedSubscript:*(a1 + 32)];
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v11 = *(a1 + 48);
    }

    else
    {
      if (![*(*(*(a1 + 56) + 8) + 40) count])
      {
        v12 = [v9[1] paymentRewardsBalancesWithPassUniqueIdentifier:*(a1 + 32)];
LABEL_7:
        v13 = v12;
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        if (v15)
        {
          v16 = [v12 count];
          v17 = *(a1 + 64);
          if (!v16)
          {
            v21 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithError:*(*(v17 + 8) + 40)];
            [v9 _updateLoadingDetailsState:v21 criteriaIdentifier:*(a1 + 40) passUniqueID:*(a1 + 32) requestType:6];

            goto LABEL_19;
          }

          v14 = *(v17 + 8);
          v15 = *(v14 + 40);
        }

        *(v14 + 40) = 0;

        v18 = [PKPaymentOffersControllerLoadingDetails loadingDetailsWithState:3];
        [v9 _updateLoadingDetailsState:v18 criteriaIdentifier:*(a1 + 40) passUniqueID:*(a1 + 32) requestType:6];

        if (v10 && v13)
        {
          if ([v10 isEqual:v13])
          {
            goto LABEL_19;
          }

LABEL_15:
          v19 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 40);
            v22 = 138412546;
            v23 = v20;
            v24 = 2112;
            v25 = v13;
            _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Rewards balances changed for identifier %@: %@", &v22, 0x16u);
          }

          [v9[7] setObject:v13 forKeyedSubscript:*(a1 + 32)];
          *(*(*(a1 + 72) + 8) + 24) = 1;
          goto LABEL_19;
        }

        if (v10 != v13)
        {
          goto LABEL_15;
        }

LABEL_19:
        v7[2](v7, v6, 0);

        goto LABEL_20;
      }

      v11 = *(a1 + 56);
    }

    v12 = *(*(v11 + 8) + 40);
    goto LABEL_7;
  }

LABEL_20:
}

void __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_246(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PKPaymentOffersController__performRewardsBalanceRequest_completion___block_invoke_2_247;
  v4[3] = &unk_1E79CF400;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (id)_redeemablePaymentRewardsBalanceFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 pk_firstObjectPassingTest:&__block_literal_global_250];
  if (v4 || ![v3 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = [v3 firstObject];
  }

  v6 = v5;

  return v6;
}

@end