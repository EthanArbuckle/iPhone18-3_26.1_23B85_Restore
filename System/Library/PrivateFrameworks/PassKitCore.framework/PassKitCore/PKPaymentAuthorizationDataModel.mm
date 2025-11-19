@interface PKPaymentAuthorizationDataModel
- (BOOL)canSupportDisbursementsOnRemoteDevice:(id)a3;
- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)a3 forPass:(id)a4;
- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)a3 forPaymentInstrument:(id)a4;
- (BOOL)isIssuerInstallmentsRepayment;
- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)pinRequired;
- (BOOL)shouldUpdateContactDataItem;
- (CNContact)billingAddress;
- (NSArray)acceptedPasses;
- (NSArray)allErrors;
- (NSArray)allNearbyRemoteDevices;
- (NSArray)allUnavailableRemoteDevices;
- (NSArray)items;
- (NSArray)unavailablePasses;
- (NSDecimalNumber)transactionAmount;
- (NSString)defaultPaymentPassUniqueIdentifier;
- (NSString)merchantName;
- (PKPassLibrary)library;
- (PKPaymentAuthorizationDataModel)initWithMode:(int64_t)a3;
- (PKPaymentOptionsDefaults)defaults;
- (PKPaymentOptionsRecents)recents;
- (PKPaymentPass)appleCardPass;
- (PKPaymentSummaryItem)totalSummaryItem;
- (PKRemoteDevice)remoteDevice;
- (id)_billingAddressKey;
- (id)_defaultSelectedPaymentApplicationForPaymentApplications:(id)a3;
- (id)_filterAndProcessPaymentApplicationsUsingConfiguration:(id)a3 withPrimaryPaymentApplication:(id)a4 passHasAssociatedPeerPaymentAccount:(BOOL)a5;
- (id)_filterAndProcessPaymentPassesUsingConfiguration:(id)a3;
- (id)_formatAddressContactIfNecessary:(id)a3;
- (id)_inAppPaymentPassesForPaymentRequest:(id)a3;
- (id)_inAppPrivateLabelPaymentPasses;
- (id)acceptedPaymentApplicationsForPass:(id)a3;
- (id)acceptedPaymentApplicationsForRemoteInstrument:(id)a3;
- (id)acceptedRemotePaymentInstrumentsForRemoteDevice:(id)a3;
- (id)automaticallyPresentedPassFromAcceptedPasses:(id)a3;
- (id)defaultSelectedPaymentApplicationForPass:(id)a3;
- (id)defaultSelectedPaymentApplicationForRemoteInstrument:(id)a3;
- (id)enhancedMerchantInfoForPass:(id)a3;
- (id)itemForType:(int64_t)a3;
- (id)paymentErrorsFromLegacyStatus:(int64_t)a3;
- (id)paymentRequestSupportedQuery;
- (id)paymentRequestSupportedRemoteQuery;
- (id)unavailablePaymentApplicationsForPass:(id)a3;
- (id)unavailablePaymentApplicationsForRemoteInstrument:(id)a3;
- (int64_t)_displayOrderForDataType:(int64_t)a3;
- (int64_t)_statusForPass:(id)a3;
- (int64_t)requestedMode;
- (unint64_t)_insertionIndexForItem:(id)a3;
- (unint64_t)confirmationStyle;
- (unint64_t)connectedCardStateForPass:(id)a3;
- (void)_didSetItemForClass:(Class)a3;
- (void)_ensureItemForClass:(Class)a3;
- (void)_ensureItems;
- (void)_ensurePaymentContentItems;
- (void)_ensurePlaceholderItems;
- (void)_notifyModelChanged;
- (void)_populateFinanceKitBalancesIfNecessaryForPasses:(id)a3;
- (void)_populatePeerPaymentBalanceIfNecessaryForPasses:(id)a3;
- (void)_removeDataItem:(id)a3;
- (void)_setDataItem:(id)a3;
- (void)_setPaymentContentDataItems:(id)a3;
- (void)_setStatus:(int64_t)a3 forPass:(id)a4;
- (void)_updatePaymentOfferDataItem;
- (void)_updatePeerPaymentPromotionAvailability;
- (void)endUpdates;
- (void)fallbackToBypassMode;
- (void)paymentOffersDidUpdate;
- (void)refreshBillingAddressErrors;
- (void)refreshPaymentMethods;
- (void)resetPaymentMethods;
- (void)setAutomaticReloadPaymentRequest:(id)a3;
- (void)setBankAccount:(id)a3;
- (void)setBillingAddress:(id)a3;
- (void)setBillingAgreement:(id)a3;
- (void)setCouponCode:(id)a3;
- (void)setCouponCodeErrors:(id)a3;
- (void)setDeferredPaymentRequest:(id)a3;
- (void)setEnhancedMerchantInfo:(id)a3 forPass:(id)a4;
- (void)setFundingMode:(int64_t)a3;
- (void)setMultiTokenContexts:(id)a3;
- (void)setNumberOfOutstandingCouponCodeUpdates:(unint64_t)a3;
- (void)setPass:(id)a3;
- (void)setPass:(id)a3 withSelectedPaymentApplication:(id)a4;
- (void)setPaymentApplication:(id)a3;
- (void)setPaymentContentItems:(id)a3;
- (void)setPaymentDateForPaymentRequest:(id)a3;
- (void)setPaymentErrors:(id)a3;
- (void)setPaymentOffersController:(id)a3;
- (void)setPaymentPassWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (void)setPaymentRequest:(id)a3;
- (void)setPaymentSummaryItems:(id)a3;
- (void)setPeerPaymentBalanceForAccountPayment:(id)a3;
- (void)setPeerPaymentQuote:(id)a3;
- (void)setPeerPaymentService:(id)a3;
- (void)setRecurringPaymentRequest:(id)a3;
- (void)setRemoteDevice:(id)a3;
- (void)setRemotePaymentInstrument:(id)a3;
- (void)setRemotePaymentInstrument:(id)a3 withSelectedPaymentApplication:(id)a4;
- (void)setSelectedPaymentOffer:(id)a3;
- (void)setShippingAddress:(id)a3;
- (void)setShippingAddressErrors:(id)a3;
- (void)setShippingEditableMessage:(id)a3;
- (void)setShippingEmail:(id)a3;
- (void)setShippingEmailError:(id)a3;
- (void)setShippingMethod:(id)a3;
- (void)setShippingName:(id)a3;
- (void)setShippingPhone:(id)a3;
- (void)setStatus:(int64_t)a3 forItemWithType:(int64_t)a4 notify:(BOOL)a5;
- (void)setUpdateHandler:(id)a3;
- (void)showPeerPaymentCardDataItem:(BOOL)a3 withCardDataItem:(BOOL)a4;
- (void)updateBillingErrors;
- (void)updatePeerPaymentPromotionForPeerPaymentQuote:(BOOL)a3;
- (void)updateRemoteDevices:(id)a3 ignoreProximity:(BOOL)a4;
@end

@implementation PKPaymentAuthorizationDataModel

- (PKPaymentAuthorizationDataModel)initWithMode:(int64_t)a3
{
  v38.receiver = self;
  v38.super_class = PKPaymentAuthorizationDataModel;
  v4 = [(PKPaymentAuthorizationDataModel *)&v38 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v5->_items;
    v5->_items = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    typeToItemMap = v5->_typeToItemMap;
    v5->_typeToItemMap = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    billingAddressForFundingSource = v5->_billingAddressForFundingSource;
    v5->_billingAddressForFundingSource = v10;

    v5->_holdPendingUpdatesCount = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    acceptedApplications = v5->_acceptedApplications;
    v5->_acceptedApplications = v12;

    couponCode = v5->_couponCode;
    v5->_couponCode = &stru_1F227FD28;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    paymentErrors = v5->_paymentErrors;
    v5->_paymentErrors = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clientErrors = v5->_clientErrors;
    v5->_clientErrors = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    paymentContactFormatErrors = v5->_paymentContactFormatErrors;
    v5->_paymentContactFormatErrors = v19;

    v21 = +[PKPaymentWebService sharedService];
    paymentWebService = v5->_paymentWebService;
    v5->_paymentWebService = v21;

    appleCardEnhancedMerchant = v5->_appleCardEnhancedMerchant;
    v5->_appleCardEnhancedMerchant = 0;

    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v25 = dispatch_queue_create("com.apple.PassKitCore.balancesProvider", v24);
    balancesProviderQueue = v5->_balancesProviderQueue;
    v5->_balancesProviderQueue = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    primaryAccountIdentifiersWithConnectedCardStateSet = v5->_primaryAccountIdentifiersWithConnectedCardStateSet;
    v5->_primaryAccountIdentifiersWithConnectedCardStateSet = v27;

    if (a3 == 2)
    {
      v31 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      instrumentToDeviceMap = v5->_instrumentToDeviceMap;
      v5->_instrumentToDeviceMap = v31;

      v33 = [MEMORY[0x1E695DF90] dictionary];
      remoteDeviceToAcceptedInstruments = v5->_remoteDeviceToAcceptedInstruments;
      v5->_remoteDeviceToAcceptedInstruments = v33;

      v29 = MEMORY[0x1E695E0F0];
      v30 = 80;
    }

    else
    {
      if (a3 != 1)
      {
LABEL_7:
        v36 = ABPersonCreate();
        CFRelease(v36);
        return v5;
      }

      v29 = [MEMORY[0x1E695DF90] dictionary];
      v30 = 88;
    }

    v35 = *(&v5->super.isa + v30);
    *(&v5->super.isa + v30) = v29;

    goto LABEL_7;
  }

  return v5;
}

- (PKPassLibrary)library
{
  library = self->_library;
  if (!library)
  {
    v4 = +[PKPassLibrary sharedInstance];
    v5 = self->_library;
    self->_library = v4;

    library = self->_library;
  }

  return library;
}

- (PKPaymentOptionsDefaults)defaults
{
  defaults = self->_defaults;
  if (!defaults)
  {
    v4 = +[PKPaymentOptionsDefaults defaults];
    v5 = self->_defaults;
    self->_defaults = v4;

    defaults = self->_defaults;
  }

  return defaults;
}

- (PKPaymentOptionsRecents)recents
{
  recents = self->_recents;
  if (!recents)
  {
    v4 = +[PKPaymentOptionsRecents defaultInstance];
    v5 = self->_recents;
    self->_recents = v4;

    recents = self->_recents;
  }

  return recents;
}

- (void)setFundingMode:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  fundingMode = self->_fundingMode;
  if (fundingMode != a3)
  {
    v6 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PKPaymentAuthorizationFundingModeToString(fundingMode);
      v8 = PKPaymentAuthorizationFundingModeToString(a3);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Did update funding mode from %@ to %@", &v9, 0x16u);
    }

    self->_fundingMode = a3;
    [(NSMutableDictionary *)self->_acceptedApplications removeAllObjects];
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)setPaymentRequest:(id)a3
{
  v8 = a3;
  if (self->_paymentRequest)
  {
    [MEMORY[0x1E695DF30] raise:@"Illegal state" format:@"paymentRequest property already set"];
  }

  else
  {
    objc_storeStrong(&self->_paymentRequest, a3);
    [(PKPaymentAuthorizationDataModel *)self _ensureItems];
    v5 = [(PKPaymentAuthorizationDataModel *)self transactionAmount];
    v6 = [v5 copy];
    initialTransactionAmount = self->_initialTransactionAmount;
    self->_initialTransactionAmount = v6;
  }
}

- (void)setPaymentContentItems:(id)a3
{
  objc_storeStrong(&self->_paymentContentItems, a3);
  [(PKPaymentAuthorizationDataModel *)self _ensurePaymentContentItems];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setBillingAgreement:(id)a3
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 whitespaceCharacterSet];
  v10 = [v5 stringByTrimmingCharactersInSet:v6];

  if ([v10 length] <= 0x1F4)
  {
    v7 = [v10 length];
  }

  else
  {
    v7 = 500;
  }

  v8 = [v10 substringToIndex:v7];
  billingAgreement = self->_billingAgreement;
  self->_billingAgreement = v8;

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setRecurringPaymentRequest:(id)a3
{
  v4 = a3;
  [v4 sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setRecurringPaymentRequest:v4];
  v5 = [v4 billingAgreement];

  v6 = [v5 length];
  if (v6)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  else
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:12];
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v7];
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setAutomaticReloadPaymentRequest:(id)a3
{
  v4 = a3;
  [v4 sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setAutomaticReloadPaymentRequest:v4];
  v5 = [v4 billingAgreement];

  v6 = [v5 length];
  if (v6)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  else
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:12];
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v7];
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setDeferredPaymentRequest:(id)a3
{
  v4 = a3;
  [v4 sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setDeferredPaymentRequest:v4];
  v5 = [v4 billingAgreement];

  v6 = [v5 length];
  if (v6)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  else
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:12];
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v7];
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setMultiTokenContexts:(id)a3
{
  [(PKPaymentRequest *)self->_paymentRequest setMultiTokenContexts:a3];
  if ([(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest])
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  else
  {
    v4 = [(PKPaymentAuthorizationDataModel *)self itemForType:13];
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v4];
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setCouponCode:(id)a3
{
  v4 = [a3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F227FD28;
  }

  objc_storeStrong(&self->_couponCode, v6);

  v7 = [(NSArray *)self->_paymentErrors pk_objectsPassingTest:&__block_literal_global_39];
  paymentErrors = self->_paymentErrors;
  self->_paymentErrors = v7;

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setNumberOfOutstandingCouponCodeUpdates:(unint64_t)a3
{
  self->_numberOfOutstandingCouponCodeUpdates = a3;
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setCouponCodeErrors:(id)a3
{
  paymentErrors = self->_paymentErrors;
  v5 = a3;
  v6 = [(NSArray *)paymentErrors pk_objectsPassingTest:&__block_literal_global_81];
  v7 = self->_paymentErrors;
  self->_paymentErrors = v6;

  v10 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_84];

  if (v10 && [v10 count])
  {
    v8 = [(NSArray *)self->_paymentErrors arrayByAddingObjectsFromArray:v10];
    v9 = self->_paymentErrors;
    self->_paymentErrors = v8;
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingEmail:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 emailAddresses];
  v6 = [v5 firstObject];
  v7 = [v6 value];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  shippingEmail = self->_shippingEmail;
  self->_shippingEmail = v8;

  v10 = 0x1E695D000uLL;
  v11 = MEMORY[0x1E695DEC8];
  v45[0] = @"email";
  v45[1] = @"contactInfo";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v13 = [v11 pk_FilteredShippingErrorsForContactFields:v12 errors:self->_clientErrors];

  v14 = [(PKPayment *)self->_payment shippingContact];
  v15 = [v14 emailAddress];
  v16 = [v15 isEqual:v7];

  if (v16)
  {
    v17 = [(NSArray *)self->_paymentErrors mutableCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          if (![(NSArray *)self->_paymentErrors containsObject:v23, v38])
          {
            [(NSArray *)v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v20);
    }

    v24 = [(NSArray *)v17 copy];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v24;

    v10 = 0x1E695D000;
  }

  else
  {
    v26 = MEMORY[0x1E695DEC8];
    v43[0] = @"email";
    v43[1] = @"contactInfo";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v18 = [v26 pk_FilteredShippingErrorsForContactFields:v27 errors:self->_paymentErrors];

    v28 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v18];
    v17 = self->_paymentErrors;
    self->_paymentErrors = v28;
  }

  contactFormatValidator = self->_contactFormatValidator;
  if (contactFormatValidator)
  {
    v30 = [(PKContactFormatValidator *)contactFormatValidator emailAddressIsValid:v7];
    v31 = [(NSArray *)self->_paymentContactFormatErrors mutableCopy];
    v32 = *(v10 + 3784);
    v42 = @"email";
    v33 = [v32 arrayWithObjects:&v42 count:1];
    v34 = [v32 pk_FilteredShippingErrorsForContactFields:v33 errors:self->_paymentContactFormatErrors];
    [v31 removeObjectsInArray:v34];

    if (!v30)
    {
      v35 = PKContactFormatErrorForInvalidEmailAddressFormat();
      [v31 addObject:v35];
    }

    v36 = [v31 copy];
    paymentContactFormatErrors = self->_paymentContactFormatErrors;
    self->_paymentContactFormatErrors = v36;
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingEmailError:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_paymentErrors containsObject:?])
  {
    v4 = [(NSArray *)self->_paymentErrors mutableCopy];
    [v4 addObject:v7];
    v5 = [v4 copy];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v5;

    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)setShippingPhone:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 phoneNumbers];
  v6 = [v5 firstObject];
  v7 = [v6 value];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  shippingPhone = self->_shippingPhone;
  self->_shippingPhone = v8;

  v10 = 0x1E695D000uLL;
  v11 = MEMORY[0x1E695DEC8];
  v45[0] = @"phone";
  v45[1] = @"contactInfo";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v13 = [v11 pk_FilteredShippingErrorsForContactFields:v12 errors:self->_clientErrors];

  v14 = [(PKPayment *)self->_payment shippingContact];
  v15 = [v14 phoneNumber];
  v16 = [v15 isEqual:v7];

  if (v16)
  {
    v17 = [(NSArray *)self->_paymentErrors mutableCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          if (![(NSArray *)self->_paymentErrors containsObject:v23, v38])
          {
            [(NSArray *)v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v20);
    }

    v24 = [(NSArray *)v17 copy];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v24;

    v10 = 0x1E695D000;
  }

  else
  {
    v26 = MEMORY[0x1E695DEC8];
    v43[0] = @"phone";
    v43[1] = @"contactInfo";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v18 = [v26 pk_FilteredShippingErrorsForContactFields:v27 errors:self->_paymentErrors];

    v28 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v18];
    v17 = self->_paymentErrors;
    self->_paymentErrors = v28;
  }

  contactFormatValidator = self->_contactFormatValidator;
  if (contactFormatValidator)
  {
    v30 = [(PKContactFormatValidator *)contactFormatValidator phoneNumberIsValid:v7 forCountryCode:0];
    v31 = [(NSArray *)self->_paymentContactFormatErrors mutableCopy];
    v32 = *(v10 + 3784);
    v42 = @"phone";
    v33 = [v32 arrayWithObjects:&v42 count:1];
    v34 = [v32 pk_FilteredShippingErrorsForContactFields:v33 errors:self->_paymentContactFormatErrors];
    [v31 removeObjectsInArray:v34];

    if (!v30)
    {
      v35 = PKContactFormatErrorForInvalidPhoneNumberFormat();
      [v31 addObject:v35];
    }

    v36 = [v31 copy];
    paymentContactFormatErrors = self->_paymentContactFormatErrors;
    self->_paymentContactFormatErrors = v36;
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingName:(id)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 nameComponents];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  shippingName = self->_shippingName;
  self->_shippingName = v6;

  v8 = MEMORY[0x1E695DEC8];
  v32[0] = @"name";
  v32[1] = @"phoneticName";
  v32[2] = @"contactInfo";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v10 = [v8 pk_FilteredShippingErrorsForContactFields:v9 errors:self->_clientErrors];

  v11 = [(PKPayment *)self->_payment shippingContact];
  v12 = [v11 name];
  v13 = [v4 nameComponents];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [(NSArray *)self->_paymentErrors mutableCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          if (![(NSArray *)self->_paymentErrors containsObject:v21, v26])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }

    v22 = [v15 copy];
  }

  else
  {
    v23 = MEMORY[0x1E695DEC8];
    v30[0] = @"name";
    v30[1] = @"phoneticName";
    v30[2] = @"contactInfo";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v15 = [v23 pk_FilteredShippingErrorsForContactFields:v24 errors:self->_paymentErrors];

    v22 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v15];
  }

  paymentErrors = self->_paymentErrors;
  self->_paymentErrors = v22;

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingAddress:(id)a3
{
  v84[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 nameComponents];
  v7 = [v5 postalAddresses];
  v8 = [v7 firstObject];
  v9 = [v8 value];

  v73 = v9;
  if (v9)
  {
    objc_storeStrong(&self->_originalShippingAddress, a3);
    v10 = [(PKPaymentAuthorizationDataModel *)self _formatAddressContactIfNecessary:v5];
  }

  else
  {
    originalShippingAddress = self->_originalShippingAddress;
    self->_originalShippingAddress = 0;

    v10 = 0;
  }

  shippingAddress = self->_shippingAddress;
  self->_shippingAddress = v10;

  v13 = MEMORY[0x1E695DEC8];
  v84[0] = @"post";
  v14 = 1;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  v16 = [v13 pk_FilteredShippingErrorsForContactFields:v15 errors:self->_clientErrors];

  v17 = MEMORY[0x1E695DEC8];
  v83 = @"name";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  v72 = [v17 pk_FilteredShippingErrorsForContactFields:v18 errors:self->_clientErrors];

  v19 = MEMORY[0x1E695DEC8];
  v82 = @"phoneticName";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v71 = [v19 pk_FilteredShippingErrorsForContactFields:v20 errors:self->_clientErrors];

  v21 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if (([v21 containsObject:@"name"] & 1) == 0)
  {
    v14 = [v21 containsObject:@"post"];
  }

  v68 = v21;
  v70 = [v21 containsObject:@"phoneticName"];
  v22 = [(NSArray *)self->_paymentErrors mutableCopy];
  v23 = MEMORY[0x1E695DEC8];
  v81 = @"post";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v25 = [v23 pk_FilteredShippingErrorsForContactFields:v24 errors:self->_paymentErrors];
  [v22 removeObjectsInArray:v25];

  v26 = [(PKPayment *)self->_payment shippingContact];
  v27 = [v26 postalAddress];
  v28 = [v27 isEqual:v9];

  if (v28)
  {
    [v22 addObjectsFromArray:v16];
  }

  if (([v72 count] != 0) | v14 & 1)
  {
    v29 = MEMORY[0x1E695DEC8];
    v80 = @"name";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v31 = [v29 pk_FilteredShippingErrorsForContactFields:v30 errors:self->_paymentErrors];
    [v22 removeObjectsInArray:v31];

    v32 = [(PKPayment *)self->_payment shippingContact];
    v33 = [v32 name];
    if ([v33 isEqual:v6])
    {
      v34 = [v72 count];

      if (v34)
      {
        [v22 addObjectsFromArray:v72];
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (v14)
    {
      v35 = [v5 pkFullName];
      v36 = [v35 length];

      if (!v36)
      {
        v37 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_6.isa, 0);
        v38 = [PKPaymentRequest paymentContactInvalidErrorWithContactField:@"name" localizedDescription:v37];
        [v22 addObject:v38];

        v78[0] = @"eventType";
        v78[1] = @"authorizationError";
        v79[0] = @"transactionAuthorizationPreferenceError";
        v79[1] = @"shippingContactInvalid";
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
        [PKAnalyticsReporter subject:@"inApp" sendEvent:v39];
      }
    }
  }

LABEL_16:
  v69 = v16;
  if (!(([v71 count] != 0) | v70 & 1))
  {
    goto LABEL_24;
  }

  v40 = v5;
  v41 = MEMORY[0x1E695DEC8];
  v77 = @"phoneticName";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v43 = [v41 pk_FilteredShippingErrorsForContactFields:v42 errors:self->_paymentErrors];
  [v22 removeObjectsInArray:v43];

  v44 = [(PKPayment *)self->_payment shippingContact];
  v45 = [v44 name];
  v46 = [v45 phoneticRepresentation];
  v47 = [v6 phoneticRepresentation];
  if ([v46 isEqual:v47])
  {
    v48 = [v71 count];

    if (v48)
    {
      [v22 addObjectsFromArray:v71];
      v5 = v40;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = v40;
  if (v70)
  {
    v49 = [v40 pkPhoneticName];
    v50 = [v49 length];

    if (!v50)
    {
      v51 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_8.isa, 0);
      v52 = [PKPaymentRequest paymentContactInvalidErrorWithContactField:@"phoneticName" localizedDescription:v51];
      [v22 addObject:v52];

      v75[0] = @"eventType";
      v75[1] = @"authorizationError";
      v76[0] = @"transactionAuthorizationPreferenceError";
      v76[1] = @"shippingContactInvalid";
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v53];
    }
  }

LABEL_24:
  v54 = [v22 copy];
  paymentErrors = self->_paymentErrors;
  self->_paymentErrors = v54;

  v56 = [(PKContactFormatValidator *)self->_contactFormatValidator checkPostalAddressFormat:v9];
  contactFormatValidator = self->_contactFormatValidator;
  v58 = [v9 ISOCountryCode];
  v59 = [(PKContactFormatValidator *)contactFormatValidator checkNameFormat:v6 forCountryCode:v58];

  v60 = [(NSArray *)self->_paymentContactFormatErrors mutableCopy];
  v61 = MEMORY[0x1E695DEC8];
  v74[0] = @"post";
  v74[1] = @"name";
  v74[2] = @"phoneticName";
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
  v63 = [v61 pk_FilteredShippingErrorsForContactFields:v62 errors:self->_paymentContactFormatErrors];
  [v60 removeObjectsInArray:v63];

  if (v56)
  {
    v64 = PKContactFormatErrorsFromShippingAddressFormatErrors(v56);
    [v60 addObjectsFromArray:v64];
  }

  if (v59)
  {
    v65 = PKContactFormatErrorsFromShippingNameComponenentFormatErrors(v59);
    [v60 addObjectsFromArray:v65];
  }

  v66 = [v60 copy];
  paymentContactFormatErrors = self->_paymentContactFormatErrors;
  self->_paymentContactFormatErrors = v66;

  if ([(PKPaymentAuthorizationDataModel *)self shouldUpdateContactDataItem])
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (BOOL)shouldUpdateContactDataItem
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v4 = [v3 containsObject:@"email"];

  v5 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v6 = [v5 containsObject:@"phone"];

  v7 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([v7 containsObject:@"name"])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
    v10 = [v9 containsObject:@"phoneticName"];

    v8 = v10 ^ 1;
  }

  v11 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v12 = [v11 containsObject:@"post"];

  return (v4 | v6) & 1 | (((v8 | v12 & [(PKPaymentRequest *)self->_paymentRequest isShippingEditable]) & 1) == 0);
}

- (void)setShippingMethod:(id)a3
{
  objc_storeStrong(&self->_shippingMethod, a3);
  v5 = a3;
  v6 = objc_opt_class();

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:v6];
  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingEditableMessage:(id)a3
{
  objc_storeStrong(&self->_shippingEditableMessage, a3);

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (CNContact)billingAddress
{
  v3 = [(PKPaymentAuthorizationDataModel *)self _billingAddressKey];
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_billingAddressForFundingSource objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBillingAddress:(id)a3
{
  v7 = a3;
  v4 = [v7 postalAddresses];
  if ([v4 count])
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self _formatAddressContactIfNecessary:v7];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKPaymentAuthorizationDataModel *)self _billingAddressKey];
  if (v6)
  {
    [(NSMutableDictionary *)self->_billingAddressForFundingSource setObject:v5 forKeyedSubscript:v6];
  }

  [(PKPaymentAuthorizationDataModel *)self refreshBillingAddressErrors];
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)refreshBillingAddressErrors
{
  v20[3] = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  v3 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  v4 = [v3 nameComponents];
  v5 = [v3 postalAddresses];
  v6 = [v5 firstObject];
  v7 = [v6 value];

  v8 = [(PKContactFormatValidator *)self->_contactFormatValidator checkPostalAddressFormat:v7];
  contactFormatValidator = self->_contactFormatValidator;
  v10 = [v7 ISOCountryCode];
  v11 = [(PKContactFormatValidator *)contactFormatValidator checkNameFormat:v4 forCountryCode:v10];

  v12 = [(NSArray *)self->_paymentContactFormatErrors mutableCopy];
  v13 = MEMORY[0x1E695DEC8];
  v20[0] = @"post";
  v20[1] = @"name";
  v20[2] = @"phoneticName";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [v13 pk_FilteredBillingErrorsForContactFields:v14 errors:self->_paymentContactFormatErrors];
  [v12 removeObjectsInArray:v15];

  if (v8)
  {
    v16 = PKContactFormatErrorsFromBillingAddressFormatErrors(v8);
    [v12 addObjectsFromArray:v16];
  }

  if (v11)
  {
    v17 = PKContactFormatErrorsFromBillingNameComponenentFormatErrors(v11);
    [v12 addObjectsFromArray:v17];
  }

  v18 = [v12 copy];
  paymentContactFormatErrors = self->_paymentContactFormatErrors;
  self->_paymentContactFormatErrors = v18;
}

- (id)_billingAddressKey
{
  if ((self->_fundingMode | 2) != 2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  mode = self->_mode;
  if (mode != 2)
  {
    if (mode == 1)
    {
      v3 = [(PKObject *)self->_pass uniqueID];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v3 = [(PKRemotePaymentInstrument *)self->_remotePaymentInstrument passIdentifier];
LABEL_7:

  return v3;
}

- (void)updateBillingErrors
{
  v115[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  v4 = 0x1E695D000uLL;
  if (![v3 containsObject:@"post"] || !self->_paymentApplicationIdentifierForErrors || (-[PKPaymentApplication applicationIdentifier](self->_paymentApplication, "applicationIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_17;
  }

  v6 = v5;
  paymentApplicationIdentifierForErrors = self->_paymentApplicationIdentifierForErrors;
  v8 = [(PKPaymentApplication *)self->_paymentApplication applicationIdentifier];
  LODWORD(paymentApplicationIdentifierForErrors) = [(NSString *)paymentApplicationIdentifierForErrors isEqualToString:v8];

  if (!paymentApplicationIdentifierForErrors)
  {
LABEL_17:
    v27 = MEMORY[0x1E695DEC8];
    v111[0] = @"post";
    v111[1] = @"name";
    v111[2] = @"phoneticName";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
    v12 = [v27 pk_FilteredBillingErrorsForContactFields:v28 errors:self->_clientErrors];

    v29 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v12];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v29;
    goto LABEL_18;
  }

  v9 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  v10 = [v9 postalAddresses];
  v11 = [v10 firstObject];
  v12 = [v11 value];

  v13 = [(PKPayment *)self->_payment billingContact];
  paymentErrors = [v13 postalAddress];

  v15 = MEMORY[0x1E695DEC8];
  v115[0] = @"post";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
  v17 = [v15 pk_FilteredBillingErrorsForContactFields:v16 errors:self->_clientErrors];

  v93 = v17;
  if ([v12 isEqual:paymentErrors])
  {
    v18 = [(NSArray *)self->_paymentErrors mutableCopy];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v101 objects:v114 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v102;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v102 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v101 + 1) + 8 * i);
          if (![(NSArray *)self->_paymentErrors containsObject:v24])
          {
            [(NSArray *)v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v101 objects:v114 count:16];
      }

      while (v21);
    }

    v25 = [(NSArray *)v18 copy];
    v26 = self->_paymentErrors;
    self->_paymentErrors = v25;

    v4 = 0x1E695D000;
    goto LABEL_40;
  }

  if ([v17 count])
  {
    v70 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v17];
    v18 = self->_paymentErrors;
    self->_paymentErrors = v70;
LABEL_40:
  }

  v71 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  v96 = [v71 nameComponents];

  v72 = [(PKPayment *)self->_payment billingContact];
  v73 = [v72 name];

  v74 = *(v4 + 3784);
  v113[0] = @"name";
  v113[1] = @"phoneticName";
  v75 = [v74 arrayWithObjects:v113 count:2];
  v76 = [v74 pk_FilteredBillingErrorsForContactFields:v75 errors:self->_clientErrors];

  v77 = v96;
  if ([v76 count] && objc_msgSend(v96, "isEqual:", v73))
  {
    v90 = v73;
    v91 = paymentErrors;
    v78 = [(NSArray *)self->_paymentErrors mutableCopy];
    v79 = v76;
    v80 = v78;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v92 = v79;
    v81 = v79;
    v82 = [v81 countByEnumeratingWithState:&v97 objects:v112 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v98;
      do
      {
        for (j = 0; j != v83; ++j)
        {
          if (*v98 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v86 = *(*(&v97 + 1) + 8 * j);
          if (![(NSArray *)self->_paymentErrors containsObject:v86])
          {
            [(NSArray *)v80 addObject:v86];
          }
        }

        v83 = [v81 countByEnumeratingWithState:&v97 objects:v112 count:16];
      }

      while (v83);
    }

    v87 = [(NSArray *)v80 copy];
    v88 = self->_paymentErrors;
    self->_paymentErrors = v87;

    v4 = 0x1E695D000;
    v73 = v90;
    paymentErrors = v91;
    v77 = v96;
    goto LABEL_55;
  }

  if ([v76 count])
  {
    v92 = v76;
    v89 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v76];
    v80 = self->_paymentErrors;
    self->_paymentErrors = v89;
LABEL_55:

    v76 = v92;
  }

LABEL_18:
  v30 = [(PKPaymentAuthorizationDataModel *)self billingAddress];

  if (!v30)
  {
    return;
  }

  v31 = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  if ([v31 containsObject:@"name"])
  {
    v32 = 1;
  }

  else
  {
    v32 = [v31 containsObject:@"post"];
  }

  v33 = [v31 containsObject:@"phoneticName"];
  v34 = *(v4 + 3784);
  v110 = @"name";
  v35 = [v34 arrayWithObjects:&v110 count:1];
  v94 = [v34 pk_FilteredBillingErrorsForContactFields:v35 errors:self->_paymentErrors];

  v36 = *(v4 + 3784);
  v109 = @"phoneticName";
  v37 = [v36 arrayWithObjects:&v109 count:1];
  v38 = [v36 pk_FilteredBillingErrorsForContactFields:v37 errors:self->_paymentErrors];

  v95 = [(NSArray *)self->_paymentErrors mutableCopy];
  if (v32)
  {
    v39 = v31;
    v40 = v38;
    v41 = [(PKPayment *)self->_payment billingContact];
    v42 = [v41 name];
    v43 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    v44 = [v43 nameComponents];
    v45 = [v42 isEqual:v44];

    if (v45)
    {
      v38 = v40;
      v31 = v39;
      if ([v94 count])
      {
        goto LABEL_29;
      }
    }

    else
    {
      [v95 removeObjectsInArray:v94];
      [v94 count];
      v38 = v40;
      v31 = v39;
    }

    v46 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    v47 = [v46 pkFullName];
    v48 = [v47 length];

    if (!v48)
    {
      v49 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo.isa, 0);
      v50 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"name" localizedDescription:v49];
      [v95 addObject:v50];

      v107[0] = @"eventType";
      v107[1] = @"authorizationError";
      v108[0] = @"transactionAuthorizationPreferenceError";
      v108[1] = @"billingContactInvalid";
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v51];
    }
  }

LABEL_29:
  if (v33)
  {
    v52 = v31;
    v53 = v38;
    v54 = [(PKPayment *)self->_payment billingContact];
    v55 = [v54 name];
    v56 = [v55 phoneticRepresentation];
    v57 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    v58 = [v57 nameComponents];
    v59 = [v58 phoneticRepresentation];
    v60 = [v56 isEqual:v59];

    if ((v60 & 1) == 0)
    {
      v38 = v53;
      [v95 removeObjectsInArray:v53];
      [v53 count];
      v31 = v52;
      goto LABEL_34;
    }

    v38 = v53;
    v61 = [v53 count];
    v31 = v52;
    if (!v61)
    {
LABEL_34:
      v62 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
      v63 = [v62 pkPhoneticName];
      v64 = [v63 length];

      if (!v64)
      {
        v65 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_0.isa, 0);
        v66 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"phoneticName" localizedDescription:v65];
        [v95 addObject:v66];

        v105[0] = @"eventType";
        v105[1] = @"authorizationError";
        v106[0] = @"transactionAuthorizationPreferenceError";
        v106[1] = @"billingContactInvalid";
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];
        [PKAnalyticsReporter subject:@"inApp" sendEvent:v67];
      }
    }
  }

  v68 = [v95 copy];
  v69 = self->_paymentErrors;
  self->_paymentErrors = v68;
}

- (void)setShippingAddressErrors:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * v10) pk_paymentErrorWithLocalizedDescription];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E695DEC8];
  v23 = @"post";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v14 = [v12 pk_FilteredShippingErrorsForContactFields:v13 errors:self->_paymentErrors];

  v15 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:v14];
  paymentErrors = self->_paymentErrors;
  self->_paymentErrors = v15;

  if (v5 && [v5 count])
  {
    v17 = [(NSArray *)self->_paymentErrors arrayByAddingObjectsFromArray:v5];
    v18 = self->_paymentErrors;
    self->_paymentErrors = v17;
  }

  if ([(PKPaymentAuthorizationDataModel *)self shouldUpdateContactDataItem])
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
}

- (NSArray)allErrors
{
  if (self->_paymentErrors || self->_paymentContactFormatErrors)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v3;
    if (self->_paymentErrors)
    {
      [v3 addObjectsFromArray:?];
    }

    if (self->_paymentContactFormatErrors)
    {
      [v4 addObjectsFromArray:?];
    }

    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPaymentErrors:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) pk_paymentErrorWithLocalizedDescription];
        [(NSArray *)v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  paymentErrors = self->_paymentErrors;
  self->_paymentErrors = v5;
  v13 = v5;

  v14 = [(PKPaymentApplication *)self->_paymentApplication applicationIdentifier];
  paymentApplicationIdentifierForErrors = self->_paymentApplicationIdentifierForErrors;
  self->_paymentApplicationIdentifierForErrors = v14;

  v16 = [(NSArray *)v13 copy];
  clientErrors = self->_clientErrors;
  self->_clientErrors = v16;
}

- (void)setPeerPaymentService:(id)a3
{
  objc_storeStrong(&self->_peerPaymentService, a3);
  v7 = a3;
  v5 = [(PKPeerPaymentService *)self->_peerPaymentService account];
  peerPaymentAccount = self->_peerPaymentAccount;
  self->_peerPaymentAccount = v5;
}

- (void)setPeerPaymentQuote:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_peerPaymentQuote, a3);
  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsPreserveCurrentBalance]&& [(PKPeerPaymentQuote *)self->_peerPaymentQuote hasRecipient])
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
    self->_supportsPreservePeerPaymentBalance = [v5 count] != 0;

    if (self->_supportsPreservePeerPaymentBalance)
    {
      self->_usePeerPaymentBalance = [v12 preservesCurrentBalance] ^ 1;
    }
  }

  else
  {
    self->_supportsPreservePeerPaymentBalance = 0;
  }

  if ([(PKPeerPaymentQuote *)self->_peerPaymentQuote hasRecipient])
  {
    v6 = [v12 firstQuoteItemOfType:2];
    v7 = v6 != 0;

    v8 = [v12 firstQuoteItemOfType:1];
    v9 = v8 != 0;

    [(PKPaymentAuthorizationDataModel *)self showPeerPaymentCardDataItem:v7 withCardDataItem:v9];
  }

  else
  {
    v10 = [v12 firstQuoteItemOfType:3];
    if (v10)
    {
    }

    else
    {
      v11 = [v12 firstQuoteItemOfType:4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
LABEL_13:
}

- (void)setBankAccount:(id)a3
{
  v21 = a3;
  objc_storeStrong(&self->_bankAccount, a3);
  v5 = [(PKPaymentAuthorizationDataModel *)self peerPaymentBalanceForAccountPayment];
  v6 = [v5 amount];

  v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
  v8 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
  if (v8 && v6)
  {
    v9 = [MEMORY[0x1E696AB90] zero];
    v10 = [v9 compare:v6];

    paymentRequest = self->_paymentRequest;
    if (v10 == -1)
    {
      v13 = [(PKPaymentRequest *)paymentRequest paymentSummaryItems];
      v14 = [v13 lastObject];
      v15 = [v14 amount];

      v16 = [v15 compare:v6];
      v12 = v16 != 1;

      if (![(PKPaymentRequest *)self->_paymentRequest isAccountServiceTransferRequest])
      {
        if (v16 == 1)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (![(PKPaymentRequest *)paymentRequest isAccountServiceTransferRequest])
      {
        goto LABEL_9;
      }

      v12 = 0;
    }

    v17 = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
    v18 = [v17 supportsSplitPayment];

    if (v18 && !v12)
    {
      goto LABEL_9;
    }

LABEL_12:
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v7];
    goto LABEL_13;
  }

LABEL_9:
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  if (self->_bankAccount)
  {
    pass = self->_pass;
    self->_pass = 0;

    paymentApplication = self->_paymentApplication;
    self->_paymentApplication = 0;
  }

LABEL_13:
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setPeerPaymentBalanceForAccountPayment:(id)a3
{
  v21 = a3;
  objc_storeStrong(&self->_peerPaymentBalanceForAccountPayment, a3);
  if (self->_peerPaymentBalanceForAccountPayment)
  {
    [(PKSecureElementPass *)self->_peerPaymentPass setPeerPaymentBalance:v21];
  }

  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
  v6 = [v21 amount];
  v7 = [MEMORY[0x1E696AB90] zero];
  v8 = [v6 compare:v7];

  v9 = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
  v10 = [v9 transferType];

  v12 = (v10 & 0xFFFFFFFFFFFFFFFELL) != 2 && v8 != 1;
  if (!v21 || v12)
  {
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v5];
    v13 = v5;
  }

  else
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
    v13 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];

    v14 = [v13 pass];
    [v14 setPeerPaymentBalance:v21];

    v15 = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
    v16 = [v15 supportsSplitPayment];

    if (v16)
    {
      v17 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
      v18 = [v17 lastObject];
      v19 = [v18 amount];

      if ([v19 compare:v6] != 1)
      {
        v20 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
        [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v20];
      }
    }
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setPaymentDateForPaymentRequest:(id)a3
{
  v4 = a3;
  v8 = [v4 paymentDate];
  v5 = [v4 paymentFrequency];
  v6 = [v4 paymentTimeZone];

  if ((v5 - 4) < 4 || v5 == 2)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
    v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:10];
    [v7 setPaymentDate:v8];
    [v7 setPaymentFrequency:v5];
    [v7 setPaymentTimeZone:v6];
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (NSString)merchantName
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest requestType];
  v4 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v5 = v4;
  if (v3 == 10)
  {
    [v4 firstObject];
  }

  else
  {
    [v4 lastObject];
  }
  v6 = ;

  v7 = [v6 label];

  return v7;
}

- (void)setPaymentSummaryItems:(id)a3
{
  [(PKPaymentRequest *)self->_paymentRequest setPaymentSummaryItems:a3];
  v4 = [(PKPaymentAuthorizationDataModel *)self paymentSummaryItems];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2 || ([(PKPaymentRequest *)self->_paymentRequest peerPaymentRequest], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, [(PKPeerPaymentQuote *)self->_peerPaymentQuote recipient], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [(PKPaymentAuthorizationDataModel *)self paymentSummaryItems];
    v10 = [v9 count];

    if (v10 == 1)
    {
      v11 = [(PKPaymentAuthorizationDataModel *)self itemForType:8];
      [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v11];
    }
  }

  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (NSDecimalNumber)transactionAmount
{
  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 10)
  {
    v3 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
    v4 = [v3 lastObject];
    v5 = [v4 amount];
  }

  else
  {
    v3 = [(PKPaymentAuthorizationDataModel *)self totalSummaryItem];
    v5 = [v3 amount];
  }

  return v5;
}

- (PKPaymentSummaryItem)totalSummaryItem
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest requestType];
  v4 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v5 = v4;
  if (v3 == 10)
  {
    [v4 firstObject];
  }

  else
  {
    [v4 lastObject];
  }
  v6 = ;

  return v6;
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_items copy];

  return v2;
}

- (unint64_t)confirmationStyle
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest confirmationStyle];
  paymentRequest = self->_paymentRequest;
  if (paymentRequest && ([(PKPaymentRequest *)paymentRequest APIType]- 1) <= 1 && [(PKPaymentAuthorizationDataModel *)self isIssuerInstallmentsRepayment])
  {
    return 1;
  }

  return v3;
}

- (BOOL)isIssuerInstallmentsRepayment
{
  if (!self->_presenterIsIssuerInstallmentsRepayment)
  {
    return 0;
  }

  v2 = [(PKPaymentRequest *)self->_paymentRequest recurringPaymentRequest];
  v3 = v2 != 0;

  return v3;
}

- (id)automaticallyPresentedPassFromAcceptedPasses:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
  if (self->_hostApplicationIdentifier | v6)
  {
    v24 = v5;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = *v27;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (v6)
        {
          v13 = [*(*(&v26 + 1) + 8 * i) associatedWebDomains];
          v14 = [v6 host];
          if ([v13 containsObject:v14])
          {
            v15 = [v12 settings];

            if ((v15 & 0x10) != 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        if (!self->_hostApplicationIdentifier)
        {
          continue;
        }

        v16 = [v12 associatedApplicationIdentifiers];
        if ([v16 containsObject:self->_hostApplicationIdentifier])
        {
          v17 = [v12 settings];

          if ((v17 & 0x10) == 0)
          {
            continue;
          }

LABEL_15:
          [v25 addObject:v12, v24];
          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (!v9)
      {
LABEL_19:

        v18 = v25;
        if ([v25 count])
        {
          v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ingestedDate" ascending:1];
          v30 = v19;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          [v25 sortUsingDescriptors:v20];

          v21 = [v25 firstObject];
        }

        else
        {
          v21 = 0;
        }

        v5 = v24;
        goto LABEL_26;
      }
    }
  }

  v18 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = NSStringFromSelector(a2);
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Warning: %@ requested without a valid hostApplicationIdentifier or web domain. This is likely not what you want!", buf, 0xCu);
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (void)setUpdateHandler:(id)a3
{
  v4 = [a3 copy];
  updateHandler = self->_updateHandler;
  self->_updateHandler = v4;
}

- (void)endUpdates
{
  holdPendingUpdatesCount = self->_holdPendingUpdatesCount;
  if (holdPendingUpdatesCount)
  {
    self->_holdPendingUpdatesCount = holdPendingUpdatesCount - 1;
    updateHandler = self->_updateHandler;
    if (updateHandler)
    {
      updateHandler[2]();
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"No matching beginUpdates"];
  }
}

- (id)itemForType:(int64_t)a3
{
  typeToItemMap = self->_typeToItemMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)typeToItemMap objectForKey:v4];

  return v5;
}

- (void)_setDataItem:(id)a3
{
  v7 = a3;
  if (([objc_opt_class() supportsMultipleItems] & 1) == 0)
  {
    v4 = -[PKPaymentAuthorizationDataModel itemForType:](self, "itemForType:", [v7 type]);
    if (v4)
    {
      [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v4];
    }

    typeToItemMap = self->_typeToItemMap;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "type")}];
    [(NSMutableDictionary *)typeToItemMap setObject:v7 forKey:v6];
  }

  [(NSMutableArray *)self->_items insertObject:v7 atIndex:[(PKPaymentAuthorizationDataModel *)self _insertionIndexForItem:v7]];
}

- (void)_setPaymentContentDataItems:(id)a3
{
  items = self->_items;
  v5 = a3;
  v9 = [(NSMutableArray *)items indexesOfObjectsPassingTest:&__block_literal_global_120];
  [(NSMutableArray *)self->_items removeObjectsAtIndexes:v9];
  v6 = objc_alloc(MEMORY[0x1E696AC90]);
  v7 = [v5 firstObject];
  v8 = [v6 initWithIndexesInRange:{-[PKPaymentAuthorizationDataModel _insertionIndexForItem:](self, "_insertionIndexForItem:", v7), objc_msgSend(v5, "count")}];

  [(NSMutableArray *)self->_items insertObjects:v5 atIndexes:v8];
}

- (unint64_t)_insertionIndexForItem:(id)a3
{
  items = self->_items;
  v5 = a3;
  v6 = [(NSMutableArray *)items count];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKPaymentAuthorizationDataModel__insertionIndexForItem___block_invoke;
  v9[3] = &unk_1E79CC2C8;
  v9[4] = self;
  v7 = [(NSMutableArray *)items indexOfObject:v5 inSortedRange:0 options:v6 usingComparator:1024, v9];

  return v7;
}

uint64_t __58__PKPaymentAuthorizationDataModel__insertionIndexForItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _displayOrderForDataType:{objc_msgSend(a2, "type")}];
  v8 = *(a1 + 32);
  v9 = [v6 type];

  v10 = [v8 _displayOrderForDataType:v9];
  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 != v10;
  }
}

- (int64_t)_displayOrderForDataType:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      result = 2;
      break;
    case 2:
      if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 1)
      {
        result = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }

      break;
    case 3:
      if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 1)
      {
        result = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = 1;
      }

      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 7;
      break;
    case 6:
      result = 8;
      break;
    case 7:
      result = 9;
      break;
    case 8:
      result = 12;
      break;
    case 9:
      result = 3;
      break;
    case 10:
      result = 4;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 6;
      break;
    case 13:
      result = 11;
      break;
    default:
      result = 0x7FFFFFFFFFFFFFFFLL;
      break;
  }

  return result;
}

- (NSString)defaultPaymentPassUniqueIdentifier
{
  v2 = [(PKPaymentAuthorizationDataModel *)self paymentRequest];
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [v3 _defaultPaymentPassForPaymentRequest:v2];

  v5 = [v4 uniqueID];

  return v5;
}

- (void)_ensureItems
{
  v108 = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationDataModel *)self _ensurePlaceholderItems];
  mode = self->_mode;
  if (mode != 3)
  {
    if (mode != 1)
    {
      goto LABEL_32;
    }

    if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 1)
    {
      v4 = [(PKPaymentRequest *)self->_paymentRequest passTypeIdentifier];
      v5 = [(PKPaymentRequest *)self->_paymentRequest passSerialNumber];
      if ([v4 length] && objc_msgSend(v5, "length"))
      {
        v6 = [(PKPaymentAuthorizationDataModel *)self library];
        v7 = [v6 passWithPassTypeIdentifier:v4 serialNumber:v5];
        v8 = [v7 paymentPass];

        if (v8)
        {
          [(PKPaymentAuthorizationDataModel *)self setPass:v8];
        }

        goto LABEL_27;
      }

      v14 = [(PKPaymentAuthorizationDataModel *)self library];
      v8 = [v14 defaultPaymentPassesWithRemotePasses:0];

      if (![v8 count])
      {
        goto LABEL_27;
      }

      v15 = [v8 firstObject];
      [(PKPaymentAuthorizationDataModel *)self setPass:v15];
    }

    else
    {
      v4 = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
      if (-[PKPaymentRequest isVirtualCardRequest](self->_paymentRequest, "isVirtualCardRequest") || (-[PKPaymentRequest peerPaymentRequest](self->_paymentRequest, "peerPaymentRequest"), v9 = objc_claimAutoreleasedReturnValue(), [v9 peerPaymentQuote], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isRecurringPayment"), v10, v9, v11))
      {
        v12 = [(PKPaymentRequest *)self->_paymentRequest passSerialNumber];
        v13 = v12;
        if (v12)
        {
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __47__PKPaymentAuthorizationDataModel__ensureItems__block_invoke;
          v105[3] = &unk_1E79CAF98;
          v106 = v12;
          v5 = [v4 pk_firstObjectPassingTest:v105];
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

      if ([(PKPaymentRequest *)self->_paymentRequest isServiceProviderPaymentRequest])
      {
        v16 = [(PKPaymentRequest *)self->_paymentRequest serviceProviderOrder];
        v17 = [v16 serviceProviderData];

        v18 = [v17 objectForKey:@"primaryAccountIdentifier"];
        v19 = [(PKPaymentAuthorizationDataModel *)self library];
        v20 = [v19 passWithFPANIdentifier:v18];

        v5 = v20;
      }

      if (!v5)
      {
        v5 = [v4 firstObject];
      }

      v8 = [(PKPaymentAuthorizationDataModel *)self automaticallyPresentedPassFromAcceptedPasses:v4];
      self->_hasAutomaticallyPresentedPass = v8 != 0;
      if (v8)
      {
        [(PKPaymentAuthorizationDataModel *)self setPass:v8];
        v21 = self;
        v22 = v8;
      }

      else
      {
        if (!v5)
        {
          if (self->_supportsEmptyPass)
          {
            [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
            [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
          }

LABEL_27:

          if (![(PKPaymentRequest *)self->_paymentRequest _isAMPPayment])
          {
            v23 = [(PKPaymentRequest *)self->_paymentRequest requestType];
            if (v23 > 5 || ((1 << v23) & 0x2C) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_30;
        }

        [(PKPaymentAuthorizationDataModel *)self setPass:v5];
        v21 = self;
        v22 = v5;
      }

      v15 = [(PKPaymentAuthorizationDataModel *)v21 defaultSelectedPaymentApplicationForPass:v22];
      [(PKPaymentAuthorizationDataModel *)self setPaymentApplication:v15];
    }

    goto LABEL_27;
  }

LABEL_30:
  v24 = [(PKPaymentRequest *)self->_paymentRequest paymentContentItems];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(PKPaymentRequest *)self->_paymentRequest paymentContentItems];
    [(PKPaymentAuthorizationDataModel *)self setPaymentContentItems:v26];
  }

LABEL_32:
  v27 = [(PKPaymentRequest *)self->_paymentRequest recurringPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setRecurringPaymentRequest:v27];

  v28 = [(PKPaymentRequest *)self->_paymentRequest automaticReloadPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setAutomaticReloadPaymentRequest:v28];

  v29 = [(PKPaymentRequest *)self->_paymentRequest deferredPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setDeferredPaymentRequest:v29];

  v30 = [(PKPaymentRequest *)self->_paymentRequest multiTokenContexts];
  [(PKPaymentAuthorizationDataModel *)self setMultiTokenContexts:v30];

  if ([(PKPaymentRequest *)self->_paymentRequest supportsCouponCode])
  {
    v31 = [(PKPaymentRequest *)self->_paymentRequest couponCode];
    [(PKPaymentAuthorizationDataModel *)self setCouponCode:v31];
  }

  v32 = [(PKPaymentRequest *)self->_paymentRequest availableShippingMethods];
  v33 = [v32 methods];
  v34 = [v33 count];

  if (v34)
  {
    v35 = [(PKPaymentRequest *)self->_paymentRequest availableShippingMethods];
    v36 = [v35 defaultMethod];
    [(PKPaymentAuthorizationDataModel *)self setShippingMethod:v36];
  }

  v37 = PKShippingTypeToString([(PKPaymentRequest *)self->_paymentRequest shippingType]);
  [(PKPaymentAuthorizationDataModel *)self setShippingType:v37];

  [(PKPaymentAuthorizationDataModel *)self setShippingEditable:[(PKPaymentRequest *)self->_paymentRequest isShippingEditable]];
  v38 = [(PKPaymentRequest *)self->_paymentRequest shippingEditableMessage];
  [(PKPaymentAuthorizationDataModel *)self setShippingEditableMessage:v38];

  v39 = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  v40 = [v39 containsObject:@"post"];

  if (v40)
  {
    v41 = [(PKPaymentRequest *)self->_paymentRequest billingContact];

    paymentRequest = self->_paymentRequest;
    if (v41)
    {
      v43 = [(PKPaymentRequest *)paymentRequest billingContact];
      v44 = [v43 cnMutableContact];
    }

    else if ([(PKPaymentRequest *)paymentRequest billingAddress])
    {
      v44 = [MEMORY[0x1E695CD58] contactWithABRecordRef:{-[PKPaymentRequest billingAddress](self->_paymentRequest, "billingAddress")}];
    }

    else
    {
      v44 = 0;
    }

    [(PKPaymentAuthorizationDataModel *)self setBillingAddress:v44];
  }

  v45 = [(PKPaymentRequest *)self->_paymentRequest shippingContact];

  v46 = self->_paymentRequest;
  if (v45)
  {
    v47 = [(PKPaymentRequest *)v46 shippingContact];
    v48 = [v47 cnMutableContact];

    [v48 setContactSource:4];
  }

  else if ([(PKPaymentRequest *)v46 shippingAddress])
  {
    v48 = [MEMORY[0x1E695CD58] contactWithABRecordRef:{-[PKPaymentRequest shippingAddress](self->_paymentRequest, "shippingAddress")}];
  }

  else
  {
    v48 = 0;
  }

  v49 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([v49 containsObject:@"post"])
  {
    v50 = [v48 postalAddresses];
    v51 = [v50 count];

    if (v51)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingAddress:v48];
    }
  }

  else
  {
  }

  v52 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([v52 containsObject:@"email"])
  {
    v49 = [v48 emailAddresses];
    v53 = [v49 count];

    if (v53)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingEmail:v48];
    }
  }

  else
  {
  }

  v54 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([v54 containsObject:@"phone"])
  {
    v49 = [v48 phoneNumbers];
    v55 = [v49 count];

    if (v55)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingPhone:v48];
    }
  }

  else
  {
  }

  v56 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v57 = [v56 containsObject:@"name"];
  if (v57 & 1) != 0 || (-[PKPaymentRequest requiredShippingContactFields](self->_paymentRequest, "requiredShippingContactFields"), v49 = objc_claimAutoreleasedReturnValue(), ([v49 containsObject:@"phoneticName"]))
  {
    v58 = [(PKPaymentRequest *)self->_paymentRequest shippingContact];
    v59 = [v58 name];

    if ((v57 & 1) == 0)
    {
    }

    if (v59)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingName:v48];
    }
  }

  else
  {
  }

  if ([(PKPaymentRequest *)self->_paymentRequest isPeerPaymentRequest])
  {
    v60 = +[PKPassLibrary sharedInstance];
    v61 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v62 = [v60 passWithUniqueID:v61];
    peerPaymentPass = self->_peerPaymentPass;
    self->_peerPaymentPass = v62;

    v64 = [(PKPaymentRequest *)self->_paymentRequest peerPaymentRequest];
    v65 = [v64 peerPaymentQuote];
    v66 = self->_peerPaymentPass;
    v67 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    [(PKSecureElementPass *)v66 setPeerPaymentBalance:v67];

    [(PKPaymentAuthorizationDataModel *)self setPeerPaymentQuote:v65];
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2 && [(PKPaymentRequest *)self->_paymentRequest accountPaymentSupportsPeerPayment])
  {
    v68 = +[PKPassLibrary sharedInstance];
    v69 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v70 = [v68 passWithUniqueID:v69];
    v71 = self->_peerPaymentPass;
    self->_peerPaymentPass = v70;

    v72 = self->_peerPaymentPass;
    v73 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    [(PKSecureElementPass *)v72 setPeerPaymentBalance:v73];

    v74 = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
    v75 = [(PKPaymentRequest *)self->_paymentRequest accountPaymentUsePeerPaymentBalance];
    self->_usePeerPaymentBalance = v75;
    if (v75)
    {
      [(PKPaymentAuthorizationDataModel *)self setPeerPaymentBalanceForAccountPayment:v74];
    }
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2)
  {
    v76 = [(PKPaymentRequest *)self->_paymentRequest bankAccounts];
    v77 = [v76 count];

    if (v77)
    {
      v78 = [(PKPaymentRequest *)self->_paymentRequest bankAccounts];
      v79 = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
      v80 = v79;
      if (!v79 || ([v79 defaultBankAccount], (v81 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v81 = [v78 firstObject];
        if ([v78 count] >= 2)
        {
          v82 = PKSharedCacheGetStringForKey(@"LastBankAccountIdentifier");
          if ([v82 length])
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            obj = v78;
            v83 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
            if (v83)
            {
              v84 = v83;
              v97 = v81;
              v98 = v80;
              v99 = v78;
              v85 = *v102;
              while (2)
              {
                for (i = 0; i != v84; ++i)
                {
                  if (*v102 != v85)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v87 = *(*(&v101 + 1) + 8 * i);
                  v88 = [v87 identifier];
                  v89 = v82;
                  v90 = v88;
                  v91 = v90;
                  if (v89 == v90)
                  {

LABEL_95:
                    v81 = v87;

                    v80 = v98;
                    v78 = v99;
                    goto LABEL_96;
                  }

                  if (v82 && v90)
                  {
                    v92 = [v89 isEqualToString:v90];

                    if (v92)
                    {
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                  }
                }

                v84 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
                if (v84)
                {
                  continue;
                }

                break;
              }

              v80 = v98;
              v78 = v99;
              v81 = v97;
            }

LABEL_96:
          }
        }
      }

      [(PKPaymentAuthorizationDataModel *)self setBankAccount:v81];
      v93 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
      v94 = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
      [v93 setPeerPaymentBalance:v94];
    }
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2)
  {
    [(PKPaymentAuthorizationDataModel *)self setPaymentDateForPaymentRequest:self->_paymentRequest];
  }

  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];
  paymentOffersController = self->_paymentOffersController;
  v96 = [(PKObject *)self->_pass uniqueID];
  [(PKPaymentOffersController *)paymentOffersController setSelectedPassUniqueID:v96];
}

uint64_t __47__PKPaymentAuthorizationDataModel__ensureItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serialNumber];
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

- (void)refreshPaymentMethods
{
  unavailablePasses = self->_unavailablePasses;
  self->_unavailablePasses = 0;

  acceptedPasses = self->_acceptedPasses;
  self->_acceptedPasses = 0;

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)resetPaymentMethods
{
  unavailablePasses = self->_unavailablePasses;
  self->_unavailablePasses = 0;

  acceptedPasses = self->_acceptedPasses;
  self->_acceptedPasses = 0;
}

- (void)_updatePeerPaymentPromotionAvailability
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest requestType];
  v4 = self->_mode == 1 && v3 == 0;
  if (!v4 || [(PKPaymentRequest *)self->_paymentRequest isPeerPaymentRequest]|| !self->_peerPaymentPass)
  {
    return;
  }

  v18 = [(PKPaymentAuthorizationDataModel *)self itemForType:+[PKPaymentCardDataItem dataType]];
  if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsCardBalancePromotion])
  {
    goto LABEL_12;
  }

  v5 = [(PKObject *)self->_pass uniqueID];
  v6 = [(PKObject *)self->_peerPaymentPass uniqueID];
  v7 = v6;
  if (!v5 || !v6)
  {

    if (v5 == v7)
    {
      goto LABEL_12;
    }

LABEL_15:
    v9 = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
    v10 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
    v11 = [v10 lastObject];

    if ([v11 type])
    {
LABEL_16:
      v12 = 0;
LABEL_22:
      [v18 setShowPeerPaymentBalance:v12];
      [v18 setPeerPaymentBalance:v9];

      goto LABEL_23;
    }

    v13 = [v9 currency];
    v14 = [(PKPaymentRequest *)self->_paymentRequest currencyCode];
    if ([v13 caseInsensitiveCompare:v14])
    {
      v12 = 0;
    }

    else
    {
      v15 = [v9 amount];
      v16 = [v11 amount];
      v17 = [v15 compare:v16];

      if (v17 == -1)
      {
        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E696AB90] zero];
      v14 = [v11 amount];
      v12 = [v13 compare:v14] == -1;
    }

    goto LABEL_22;
  }

  v8 = [v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  [v18 setShowPeerPaymentBalance:0];
LABEL_23:
}

- (void)updatePeerPaymentPromotionForPeerPaymentQuote:(BOOL)a3
{
  if (self->_supportsPreservePeerPaymentBalance)
  {
    peerPaymentQuote = self->_peerPaymentQuote;
    if (peerPaymentQuote)
    {
      v5 = a3;
      if ([(PKPeerPaymentQuote *)peerPaymentQuote hasRecipient])
      {
        v10 = [(PKPaymentAuthorizationDataModel *)self itemForType:+[PKPaymentCardDataItem dataType]];
        if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsCardBalancePromotion])
        {
          v6 = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
          if (v6)
          {
            v7 = [MEMORY[0x1E696AB90] zero];
            v8 = [v6 amount];
            v9 = [v7 compare:v8] == -1;
          }

          else
          {
            v9 = 0;
          }

          [v10 setShowPeerPaymentBalance:v5 & v9];
          [v10 setPeerPaymentBalance:v6];
        }

        else
        {
          [v10 setShowPeerPaymentBalance:0];
        }
      }
    }
  }
}

- (id)enhancedMerchantInfoForPass:(id)a3
{
  if ([a3 isAppleCardPass])
  {
    v4 = self->_appleCardEnhancedMerchant;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEnhancedMerchantInfo:(id)a3 forPass:(id)a4
{
  v7 = a3;
  if ([a4 isAppleCardPass])
  {
    appleCardEnhancedMerchant = self->_appleCardEnhancedMerchant;
    if (v7 && appleCardEnhancedMerchant)
    {
      if ([(PKAccountEnhancedMerchant *)appleCardEnhancedMerchant isEqual:v7])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (appleCardEnhancedMerchant != v7)
    {
LABEL_7:
      objc_storeStrong(&self->_appleCardEnhancedMerchant, a3);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PKPaymentAuthorizationDataModel_setEnhancedMerchantInfo_forPass___block_invoke;
      block[3] = &unk_1E79C4E28;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_8:
}

- (void)_didSetItemForClass:(Class)a3
{
  [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:?];
  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:[(objc_class *)a3 dataType]];
  if ([v5 status] == 1)
  {
    -[PKPaymentAuthorizationDataModel setStatus:forItemWithType:notify:](self, "setStatus:forItemWithType:notify:", 0, [v5 type], 0);
  }
}

- (void)_ensureItemForClass:(Class)a3
{
  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:[(objc_class *)a3 dataType]];
  if (!v5)
  {
    v6 = [[a3 alloc] initWithModel:self];
    [(PKPaymentAuthorizationDataModel *)self _setDataItem:v6];
    v5 = v6;
  }
}

- (void)_removeDataItem:(id)a3
{
  if (a3)
  {
    items = self->_items;
    v5 = a3;
    [(NSMutableArray *)items removeObject:v5];
    typeToItemMap = self->_typeToItemMap;
    v7 = MEMORY[0x1E696AD98];
    v8 = [v5 type];

    v9 = [v7 numberWithInteger:v8];
    [(NSMutableDictionary *)typeToItemMap removeObjectForKey:v9];
  }
}

- (void)_ensurePaymentContentItems
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_paymentContentItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [PKPaymentContentDataItem alloc];
        v11 = [(PKPaymentContentDataItem *)v10 initWithContentItem:v9, v12];
        [(PKPaymentDataItem *)v11 setStatus:0];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(PKPaymentAuthorizationDataModel *)self _setPaymentContentDataItems:v3];
}

- (void)_ensurePlaceholderItems
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v4 = [v3 containsObject:@"post"];

  if (v4)
  {
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  }

  if ([(PKPaymentAuthorizationDataModel *)self shouldUpdateContactDataItem])
  {
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  }

  v5 = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = objc_opt_class();

    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:v7];
  }
}

- (void)_notifyModelChanged
{
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    if (!self->_holdPendingUpdatesCount)
    {
      updateHandler[2]();
    }
  }
}

- (id)_inAppPaymentPassesForPaymentRequest:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self library];
  v6 = [v5 _sortedPaymentPassesForPaymentRequest:v4];

  v7 = [(PKPaymentAuthorizationDataModel *)self _filterAndProcessPaymentPassesUsingConfiguration:v6];

  return v7;
}

- (id)_inAppPrivateLabelPaymentPasses
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_hostApplicationIdentifier)
  {
    v4 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

    if (!v4)
    {
      v5 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = NSStringFromSelector(a2);
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Warning: %@ requested without a valid hostApplicationIdentifier. This is likely not what you want!", buf, 0xCu);
      }
    }
  }

  v7 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  v8 = [(PKPaymentAuthorizationDataModel *)self library];
  if (v7)
  {
    v9 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
    v10 = [v9 host];
    v11 = [(PKPaymentRequest *)self->_paymentRequest supportedCountries];
    v12 = [v8 inAppPrivateLabelPaymentPassesForWebDomain:v10 issuerCountryCodes:v11 isMultiTokensRequest:{-[PKPaymentRequest isMultiTokenRequest](self->_paymentRequest, "isMultiTokenRequest")}];
  }

  else
  {
    hostApplicationIdentifier = self->_hostApplicationIdentifier;
    v9 = [(PKPaymentRequest *)self->_paymentRequest supportedCountries];
    v12 = [v8 inAppPrivateLabelPaymentPassesForApplicationIdentifier:hostApplicationIdentifier issuerCountryCodes:v9 isMultiTokensRequest:{-[PKPaymentRequest isMultiTokenRequest](self->_paymentRequest, "isMultiTokenRequest")}];
  }

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ingestedDate" ascending:1];
  v19 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v16 = [v12 sortedArrayUsingDescriptors:v15];

  v17 = [(PKPaymentAuthorizationDataModel *)self _filterAndProcessPaymentPassesUsingConfiguration:v16];

  return v17;
}

- (id)_filterAndProcessPaymentApplicationsUsingConfiguration:(id)a3 withPrimaryPaymentApplication:(id)a4 passHasAssociatedPeerPaymentAccount:(BOOL)a5
{
  v7 = a4;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke;
  v27[3] = &unk_1E79CC2F0;
  v27[4] = self;
  v8 = [a3 pk_objectsPassingTest:v27];
  v9 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  if (v9)
  {
    v10 = self->_paymentWebService;
    v11 = [(PKPaymentWebService *)v10 context];
    v12 = [v11 configuration];
    v13 = [v12 unsupportedWebPaymentConfigurations];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke_2;
    v25[3] = &unk_1E79CC318;
    v25[4] = self;
    v26 = v13;
    v14 = v13;
    v15 = [v8 pk_objectsPassingTest:v25];

    v8 = v15;
  }

  if ([(PKPaymentRequest *)self->_paymentRequest isRemoteNetworkRequest])
  {
    v16 = [PKWebServiceRemoteNetworkPaymentFeature remoteNetworkPaymentFeatureWithWebService:self->_paymentWebService];
    v17 = v16;
    if (v16 && ![v16 enabled])
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke_3;
      v23[3] = &unk_1E79CC2F0;
      v24 = v17;
      v18 = [v8 pk_objectsPassingTest:v23];

      v8 = v24;
    }

    v8 = v18;
  }

  v19 = PKSortedPaymentApplicationsByAID(v8, v7, 1);

  v20 = [(PKPaymentRequest *)self->_paymentRequest countryCode];
  v21 = PKSortedPaymentApplicationsBySupportedInAppMerchantCountryCode(v19, v20);

  return v21;
}

uint64_t __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 paymentRequestSupportedQuery];
  v5 = [v3 canProcessPayment:v4];

  return v5;
}

uint64_t __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 supportsWebPaymentMode:objc_msgSend(v3 withExclusionList:{"requestedMode"), *(a1 + 40)}];

  return v5;
}

uint64_t __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke_3(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  v3 = [a2 paymentNetworkIdentifier];
  v4 = [*(a1 + 32) unsupportedNetworks];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 containsObject:v5] ^ 1;

  return v6;
}

- (id)_filterAndProcessPaymentPassesUsingConfiguration:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = @"N";
    if (!v4)
    {
      v21 = @"Y";
    }

    *buf = 134218242;
    v36 = v5;
    v37 = 2112;
    v38 = v21;
    _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes passed into _filterAndProcessPaymentPassesUsingConfiguration: %ld, isNil: %@", buf, 0x16u);
  }

  v7 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  if (v7)
  {
    v8 = self->_paymentWebService;
    v9 = [(PKPaymentWebService *)v8 context];
    v10 = [v9 configuration];
    v11 = [v10 unsupportedWebPaymentConfigurations];

    mode = self->_mode;
    if (mode != 2)
    {
      mode = 1;
      if (self->_remoteDevice)
      {
        mode = 2;
      }
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __84__PKPaymentAuthorizationDataModel__filterAndProcessPaymentPassesUsingConfiguration___block_invoke;
    v32[3] = &unk_1E79CC340;
    v34 = mode;
    v13 = v11;
    v33 = v13;
    v14 = [v4 pk_objectsPassingTest:v32];

    if (v5 > [v14 count])
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v14 count];
        *buf = 134217984;
        v36 = v5 - v24;
        _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes removed after payment mode filter: %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = v4;
  }

  v15 = [v14 pk_objectsPassingTest:&__block_literal_global_138];

  if (v5 > [v15 count])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v15 count];
      *buf = 134217984;
      v36 = v5 - v22;
      _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes removed after shell filter: %ld", buf, 0xCu);
    }
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__PKPaymentAuthorizationDataModel__filterAndProcessPaymentPassesUsingConfiguration___block_invoke_139;
  v31[3] = &unk_1E79CC388;
  v31[4] = self;
  v16 = [v15 pk_objectsPassingTest:v31];

  if (v5 > [v16 count])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v16 count];
      *buf = 134217984;
      v36 = v5 - v23;
      _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes removed after MCC filter: %ld", buf, 0xCu);
    }
  }

  if ([(PKPaymentRequest *)self->_paymentRequest isRemoteNetworkRequest])
  {
    v17 = [PKWebServiceRemoteNetworkPaymentFeature remoteNetworkPaymentFeatureWithWebService:self->_paymentWebService];
    v18 = v17;
    if (v17 && ![v17 enabled])
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __84__PKPaymentAuthorizationDataModel__filterAndProcessPaymentPassesUsingConfiguration___block_invoke_140;
      v29 = &unk_1E79CC388;
      v30 = v18;
      v19 = [v16 pk_objectsPassingTest:&v26];

      v16 = v30;
    }

    if (v5 > [v19 count])
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v19 count];
        *buf = 134217984;
        v36 = v5 - v25;
        _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes removed after remote network payment filter: %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v19 = v16;
  }

  [(PKPaymentAuthorizationDataModel *)self _populatePeerPaymentBalanceIfNecessaryForPasses:v19, v26, v27, v28, v29];

  return v19;
}

uint64_t __84__PKPaymentAuthorizationDataModel__filterAndProcessPaymentPassesUsingConfiguration___block_invoke_140(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 issuerCountryCode];
    v6 = [*(a1 + 32) unsupportedIssuerCardCountryCodes];
    v20 = v5;
    v19 = [v6 containsObject:v5];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v4 paymentApplications];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v21 + 1) + 8 * i) paymentNetworkIdentifier];
          if (v10)
          {
            v10 = 1;
          }

          else
          {
            v14 = v13;
            v15 = [*(a1 + 32) unsupportedNetworks];
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
            v10 = [v15 containsObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = (v19 | v10) ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

- (void)_populatePeerPaymentBalanceIfNecessaryForPasses:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassSerialNumber];
  v6 = v5;
  if (self->_peerPaymentAccount)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__PKPaymentAuthorizationDataModel__populatePeerPaymentBalanceIfNecessaryForPasses___block_invoke;
    v12[3] = &unk_1E79CAF98;
    v13 = v5;
    v8 = [v4 pk_firstObjectPassingTest:v12];
    if (v8)
    {
      v9 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_debug_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEBUG, "Fetching peer payment balance for pass: %@", buf, 0xCu);
      }

      objc_storeStrong(&self->_peerPaymentPass, v8);
      v10 = [(PKPeerPaymentService *)self->_peerPaymentService balanceForPass:v8];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v10 formattedStringValue];
        *buf = 138412290;
        v15 = v11;
        _os_log_debug_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEBUG, "Obtained peer payment balance: %@", buf, 0xCu);
      }

      [v8 setPeerPaymentBalance:v10];
      [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];
    }
  }
}

uint64_t __83__PKPaymentAuthorizationDataModel__populatePeerPaymentBalanceIfNecessaryForPasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serialNumber];
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

- (void)_populateFinanceKitBalancesIfNecessaryForPasses:(id)a3
{
  v4 = a3;
  if (PKBankConnectEnabled())
  {
    objc_initWeak(&location, self);
    balancesProviderQueue = self->_balancesProviderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke;
    block[3] = &unk_1E79C54B8;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(balancesProviderQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6967DD8]);
    v4 = WeakRetained[15];
    WeakRetained[15] = v3;

    if (WeakRetained[15])
    {
      v5 = [*(a1 + 32) pk_createArrayBySafelyApplyingBlock:&__block_literal_global_144_0];
      if ([v5 count])
      {
        v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
      }

      else
      {
        v6 = 0;
      }

      v7 = WeakRetained[15];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke_3;
      v9[3] = &unk_1E79CC3D8;
      objc_copyWeak(&v12, (a1 + 40));
      v10 = *(a1 + 32);
      v8 = v6;
      v11 = v8;
      [v7 listenForAccountsWithPrimaryAccountIdentifiers:v8 callback:v9];

      objc_destroyWeak(&v12);
    }
  }
}

void __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke_4;
  v5[3] = &unk_1E79CC3B0;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [*(a1 + 32) count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 primaryAccountIdentifier];
          v9 = [*(a1 + 32) accountForPrimaryIdentifier:v8];
          [v7 setBankConnectAccount:v9];
          v10 = [v7 primaryAccountIdentifier];
          v11 = [WeakRetained[20] primaryAccountIdentifier];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            [WeakRetained[20] setBankConnectAccount:v9];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    v13 = [WeakRetained primaryAccountIdentifiersWithConnectedCardStateSet];
    [v13 unionSet:*(a1 + 48)];

    [WeakRetained _notifyModelChanged];
  }
}

- (id)_formatAddressContactIfNecessary:(id)a3
{
  v4 = a3;
  v5 = v4;
  contactFormatValidator = self->_contactFormatValidator;
  v7 = v4;
  if (contactFormatValidator)
  {
    v8 = [v4 postalAddresses];
    v9 = [v8 firstObject];
    v10 = [v9 value];
    v11 = [(PKContactFormatValidator *)contactFormatValidator formatPostalAddress:v10];

    v7 = v5;
    if (v11)
    {
      v12 = [v5 mutableCopy];
      v13 = [v12 postalAddresses];
      v14 = [v13 firstObject];

      v15 = [v14 labeledValueBySettingValue:v11];

      v16 = [v12 postalAddresses];
      v17 = [v16 mutableCopy];

      [v17 setObject:v15 atIndexedSubscript:0];
      v18 = [v17 copy];
      [v12 setPostalAddresses:v18];

      v7 = [v12 copy];
      v19 = [v5 valueSource];
      [v7 setValueSource:v19];

      [v7 setFormattingConstrained:1];
    }
  }

  return v7;
}

- (id)paymentErrorsFromLegacyStatus:(int64_t)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 4:
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v15[0] = @"PKPaymentErrorContactField";
      v15[1] = v12;
      v16[0] = @"contactInfo";
      v16[1] = &stru_1F227FD28;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v6 = [v11 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v5];
      v7 = [v6 pk_paymentErrorWithLocalizedDescription];
      v17 = v7;
      v8 = &v17;
      goto LABEL_7;
    case 3:
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = *MEMORY[0x1E696A578];
      v18[0] = @"PKPaymentErrorContactField";
      v18[1] = v10;
      v19[0] = @"post";
      v19[1] = &stru_1F227FD28;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v6 = [v9 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v5];
      v7 = [v6 pk_paymentErrorWithLocalizedDescription];
      v20 = v7;
      v8 = &v20;
      goto LABEL_7;
    case 2:
      v3 = objc_alloc(MEMORY[0x1E696ABC0]);
      v4 = *MEMORY[0x1E696A578];
      v21[0] = @"PKPaymentErrorContactField";
      v21[1] = v4;
      v22[0] = @"post";
      v22[1] = &stru_1F227FD28;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v6 = [v3 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v5];
      v7 = [v6 pk_paymentErrorWithLocalizedDescription];
      v23[0] = v7;
      v8 = v23;
LABEL_7:
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_mode == 1 && self->_remoteDevice)
  {
    v7 = MEMORY[0x1E695DEC8];
    v8 = [(PKPaymentAuthorizationDataModel *)self itemForType:3];
    v9 = [v7 arrayWithObjects:{v8, 0}];
  }

  else
  {
    items = self->_items;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__PKPaymentAuthorizationDataModel_isValidWithError_errorStatus___block_invoke;
    v22[3] = &unk_1E79CC400;
    v22[4] = self;
    v9 = [(NSMutableArray *)items pk_objectsPassingTest:v22];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (![*(*(&v18 + 1) + 8 * i) isValidWithError:a3 errorStatus:a4])
        {

          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ([(PKPaymentAuthorizationDataModel *)self wantsInstructions]&& !self->_instructions)
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3008 userInfo:0];
      *a3 = v16 = 0;
    }

    else
    {
LABEL_17:
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

BOOL __64__PKPaymentAuthorizationDataModel_isValidWithError_errorStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (*(*(a1 + 32) + 184) | 2) == 2 && ([v3 context] & 1) != 0;

  return v5;
}

- (void)setPaymentPassWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentAuthorizationDataModel *)self library];
  v9 = [v8 passWithPassTypeIdentifier:v7 serialNumber:v6];

  v10 = [v9 paymentPass];

  [(PKPaymentAuthorizationDataModel *)self setPass:v10];
  if (v10)
  {
    v12[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(PKPaymentAuthorizationDataModel *)self _populatePeerPaymentBalanceIfNecessaryForPasses:v11];
  }
}

- (void)setPass:(id)a3
{
  v4 = a3;
  v5 = [v4 devicePrimaryInAppPaymentApplication];
  [(PKPaymentAuthorizationDataModel *)self setPass:v4 withSelectedPaymentApplication:v5];
}

- (void)setPass:(id)a3 withSelectedPaymentApplication:(id)a4
{
  v13 = a3;
  v7 = a4;
  objc_storeStrong(&self->_pass, a3);
  objc_storeStrong(&self->_paymentApplication, a4);
  if (!self->_paymentApplication)
  {
    v8 = [(PKPaymentAuthorizationDataModel *)self defaultSelectedPaymentApplicationForPass:v13];
    paymentApplication = self->_paymentApplication;
    self->_paymentApplication = v8;
  }

  if (self->_pass)
  {
    bankAccount = self->_bankAccount;
    self->_bankAccount = 0;
  }

  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];
  paymentOffersController = self->_paymentOffersController;
  v12 = [(PKObject *)self->_pass uniqueID];
  [(PKPaymentOffersController *)paymentOffersController setSelectedPassUniqueID:v12];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setPaymentApplication:(id)a3
{
  objc_storeStrong(&self->_paymentApplication, a3);
  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (PKRemoteDevice)remoteDevice
{
  if (self->_mode == 1)
  {
    v2 = self->_remoteDevice;
  }

  else
  {
    v2 = [(NSMapTable *)self->_instrumentToDeviceMap objectForKey:self->_remotePaymentInstrument];
  }

  return v2;
}

- (NSArray)allNearbyRemoteDevices
{
  allRemoteDevices = self->_allRemoteDevices;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPaymentAuthorizationDataModel_allNearbyRemoteDevices__block_invoke;
  v5[3] = &unk_1E79CC428;
  v5[4] = self;
  v3 = [(NSArray *)allRemoteDevices pk_objectsPassingTest:v5];

  return v3;
}

uint64_t __57__PKPaymentAuthorizationDataModel_allNearbyRemoteDevices__block_invoke(uint64_t a1, void *a2)
{
  result = *(*(a1 + 32) + 40);
  if ((result & 1) == 0)
  {
    return [a2 proximityState] == 0;
  }

  return result;
}

- (NSArray)allUnavailableRemoteDevices
{
  if (self->_ignoreProximity || (allRemoteDevices = self->_allRemoteDevices) == 0)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [(NSArray *)allRemoteDevices pk_objectsPassingTest:&__block_literal_global_150];
  }

  return v4;
}

- (void)setRemoteDevice:(id)a3
{
  v5 = a3;
  if (self->_mode == 1)
  {
    v6 = v5;
    objc_storeStrong(&self->_remoteDevice, a3);
    v5 = v6;
  }
}

- (void)setRemotePaymentInstrument:(id)a3 withSelectedPaymentApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  remotePaymentInstrument = self->_remotePaymentInstrument;
  self->_remotePaymentInstrument = v6;
  v9 = v6;

  paymentApplication = self->_paymentApplication;
  self->_paymentApplication = v7;
  v11 = v7;

  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  v12 = objc_opt_class();

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:v12];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setRemotePaymentInstrument:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self defaultSelectedPaymentApplicationForRemoteInstrument:v4];
  [(PKPaymentAuthorizationDataModel *)self setRemotePaymentInstrument:v4 withSelectedPaymentApplication:v5];
}

- (void)updateRemoteDevices:(id)a3 ignoreProximity:(BOOL)a4
{
  v4 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NSMapTable *)self->_instrumentToDeviceMap removeAllObjects];
  [(NSMutableDictionary *)self->_remoteDeviceToAcceptedInstruments removeAllObjects];
  [(NSMutableDictionary *)self->_acceptedApplications removeAllObjects];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v49 = v4;
    v50 = 2112;
    v51 = v6;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Updating remote devices for payment authorization model, ignoreProximity: %ld, remoteDevices: %@", buf, 0x16u);
  }

  self->_ignoreProximity = v4;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke;
  v47[3] = &unk_1E79CC428;
  v47[4] = self;
  v10 = [v6 pk_objectsPassingTest:v47];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke_2;
  v44[3] = &unk_1E79CC498;
  v44[4] = self;
  v38 = v7;
  v45 = v38;
  v37 = v8;
  v46 = v37;
  [v10 enumerateObjectsUsingBlock:v44];
  v11 = [(PKPaymentAuthorizationDataModel *)self paymentRequestSupportedRemoteQuery];
  v12 = [PKRemoteDevice acceptedComparatorWithPaymentSupportedQuery:v11];
  v39 = v10;
  v13 = [v10 sortedArrayUsingComparator:v12];
  allRemoteDevices = self->_allRemoteDevices;
  self->_allRemoteDevices = v13;

  objc_storeStrong(&self->_allAcceptedRemotePaymentInstruments, v7);
  objc_storeStrong(&self->_allUnavailableRemotePaymentInstruments, v8);
  v15 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
  v16 = [v15 host];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = [(NSArray *)self->_allRemoteDevices firstObject];
  v18 = [v17 remotePaymentInstruments];

  v19 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        if ([v23 supportsAutomaticSelection])
        {
          v24 = [v23 associatedWebDomains];
          v25 = [v24 containsObject:v16];

          if (v25)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Found automatic selection remote instrument, promoting it", buf, 2u);
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v23 description];
              *buf = 138412290;
              v49 = v26;
              _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }

            objc_storeStrong(&self->_remotePaymentInstrument, v23);
            goto LABEL_18;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!self->_remotePaymentInstrument || ([v38 containsObject:?] & 1) == 0)
  {
    v27 = [(NSArray *)self->_allRemoteDevices firstObject];
    v28 = [v27 remotePaymentInstruments];
    v29 = [v28 firstObject];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v27 deviceName];
      v31 = [v27 uniqueID];
      *buf = 138412802;
      v49 = v30;
      v50 = 2112;
      v51 = v31;
      v52 = 2112;
      v53 = v29;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Selecting default remote device name: %@, uniqueID: %@, payment instrument: %@", buf, 0x20u);
    }

    remotePaymentInstrument = self->_remotePaymentInstrument;
    self->_remotePaymentInstrument = v29;
    v33 = v29;

    v34 = [(PKPaymentAuthorizationDataModel *)self defaultSelectedPaymentApplicationForRemoteInstrument:self->_remotePaymentInstrument];
    paymentApplication = self->_paymentApplication;
    self->_paymentApplication = v34;

    [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  }

  if (!self->_initialRemotePaymentInstrument)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v36 = self->_remotePaymentInstrument;
      *buf = 138412290;
      v49 = v36;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Selecting initial remote payment instrument: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_initialRemotePaymentInstrument, self->_remotePaymentInstrument);
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

uint64_t __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userDisabled])
  {
    [v3 type];
    v4 = 0;
  }

  else
  {
    v5 = [v3 deviceDisabled];
    v6 = v5;
    v4 = v5 ^ 1u;
    if (![v3 type] && (v6 & 1) == 0)
    {
      v4 = [v3 isLocked] ^ 1;
    }
  }

  if ([v3 type])
  {
    v4 = ([v3 type] == 1) & v4;
  }

  if ([*(*(a1 + 32) + 192) requestType] == 10)
  {
    v4 = [*(a1 + 32) canSupportDisbursementsOnRemoteDevice:v3];
  }

  return v4;
}

void __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke_2(id *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 defaultRemotePaymentInstrument];
  v5 = [a1[4] paymentRequestSupportedRemoteQuery];
  v6 = [PKRemotePaymentInstrument sortDescriptorForDefaultPaymentInstrument:v4 paymentSupportedQuery:v5];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ingestedDate" ascending:1];
  v8 = [v3 remotePaymentInstruments];
  v25[0] = v6;
  v25[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v10 = [v8 sortedArrayUsingDescriptors:v9];

  [v3 setRemotePaymentInstruments:v10];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = a1[4];
  v13 = v12[40];
  if ((v13 & 1) == 0)
  {
    v13 = [v3 proximityState] == 0;
    v12 = a1[4];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke_3;
  v19[3] = &unk_1E79CC470;
  v19[4] = v12;
  v20 = v3;
  v24 = v13;
  v21 = a1[5];
  v22 = v11;
  v23 = a1[6];
  v14 = v11;
  v15 = v3;
  [v10 enumerateObjectsUsingBlock:v19];
  v16 = *(a1[4] + 9);
  v17 = [v14 copy];
  v18 = [v15 uniqueID];
  [v16 setObject:v17 forKey:v18];
}

void __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 64) setObject:*(a1 + 40) forKey:v3];
  if (*(a1 + 72) != 1 || [v3 hasAssociatedPeerPaymentAccount] && (!objc_msgSend(v3, "hasAssociatedPeerPaymentAccount") || objc_msgSend(v3, "peerPaymentAccountState") == 3))
  {
    goto LABEL_16;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 paymentApplications];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
LABEL_13:

LABEL_16:
    v11 = 64;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v13;
LABEL_7:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    v10 = [*(a1 + 32) paymentRequestSupportedRemoteQuery];
    LOBYTE(v9) = [v9 canProcessPayment:v10];

    if (v9)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  if (![*(a1 + 32) canSupportMerchantCategoryCodeAccordingToWebService:*(*(a1 + 32) + 392) forPaymentInstrument:v3])
  {
    goto LABEL_16;
  }

  [*(a1 + 48) addObject:v3];
  v11 = 56;
LABEL_17:
  [*(a1 + v11) addObject:v3];
}

- (NSArray)acceptedPasses
{
  v20[1] = *MEMORY[0x1E69E9840];
  p_acceptedPasses = &self->_acceptedPasses;
  acceptedPasses = self->_acceptedPasses;
  if (!acceptedPasses)
  {
    v5 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "Pass filtering: Accepted passes unknown, determining...", &v18, 2u);
    }

    if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 5 || [(PKPaymentRequest *)self->_paymentRequest requestType]== 4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "Pass filtering: Installment/Physical Card request", &v18, 2u);
      }

      v6 = +[PKPassLibrary sharedInstance];
      v7 = [v6 passWithUniqueID:self->_relevantPassUniqueID];
      v8 = [v7 paymentPass];

      if (v8)
      {
        v20[0] = v8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v10 = *p_acceptedPasses;
        *p_acceptedPasses = v9;
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "Pass filtering: Other payment request type", &v18, 2u);
      }

      v8 = [(PKPaymentAuthorizationDataModel *)self _inAppPaymentPassesForPaymentRequest:self->_paymentRequest];
      v11 = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
      v12 = [v11 containsObject:@"PrivateLabel"];

      if (v12)
      {
        v13 = [(PKPaymentAuthorizationDataModel *)self _inAppPrivateLabelPaymentPasses];
        v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
        v15 = [v14 arrayByAddingObjectsFromArray:v13];

        v8 = v15;
      }

      objc_storeStrong(p_acceptedPasses, v8);
      [(PKPaymentAuthorizationDataModel *)self _populatePeerPaymentBalanceIfNecessaryForPasses:self->_acceptedPasses];
      if (![(PKPaymentRequest *)self->_paymentRequest requestType])
      {
        [(PKPaymentAuthorizationDataModel *)self _populateFinanceKitBalancesIfNecessaryForPasses:self->_acceptedPasses];
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*p_acceptedPasses count];
      v18 = 134217984;
      v19 = v17;
      _os_log_debug_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEBUG, "Pass filtering: Accepted passes count: %ld", &v18, 0xCu);
    }

    acceptedPasses = *p_acceptedPasses;
  }

  return acceptedPasses;
}

- (PKPaymentPass)appleCardPass
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) paymentPass];
      if ([v7 isAppleCardPass])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return v7;
}

- (id)paymentRequestSupportedRemoteQuery
{
  v3 = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
  v4 = [v3 pk_arrayByApplyingBlock:&__block_literal_global_157];

  v5 = [(PKPaymentRequest *)self->_paymentRequest requestType];
  v6 = [(PKPaymentRequest *)self->_paymentRequest merchantCapabilities];
  v7 = [(PKPaymentRequest *)self->_paymentRequest countryCode];
  if (v5 == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaymentRequest requestType](self->_paymentRequest, "requestType")}];
    LOBYTE(v11) = [(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest];
    v9 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v4 merchantCapabilities:v6 merchantCountryCode:v7 paymentMode:2 paymentApplicationStates:0 paymentRequestType:v8 isMultiTokensRequest:v11 webService:self->_paymentWebService];
  }

  else
  {
    v9 = [PKPaymentRequestSupportedQuery webQueryWithSupportedNetworkIDs:v4 merchantCapabilities:v6 merchantCountryCode:v7 paymentMode:2 paymentApplicationStates:0 isMultiTokensRequest:[(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest] webService:self->_paymentWebService];
  }

  return v9;
}

uint64_t __69__PKPaymentAuthorizationDataModel_paymentRequestSupportedRemoteQuery__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKPaymentCredentialTypeForPaymentNetworkName(a2);

  return [v2 numberWithInteger:v3];
}

- (id)paymentRequestSupportedQuery
{
  if ((self->_fundingMode | 2) == 2)
  {
    v3 = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
    v4 = PKPaymentCredentialTypesForPaymentNetworkNames(v3);
    v5 = [(PKPaymentRequest *)self->_paymentRequest merchantCapabilities];
    v6 = [(PKPaymentRequest *)self->_paymentRequest countryCode];
    v7 = [(PKPaymentAuthorizationDataModel *)self requestedMode];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaymentRequest requestType](self->_paymentRequest, "requestType")}];
    LOBYTE(v11) = [(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest];
    v9 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v4 merchantCapabilities:v5 merchantCountryCode:v6 paymentMode:v7 paymentApplicationStates:0 paymentRequestType:v8 isMultiTokensRequest:v11 webService:self->_paymentWebService];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)requestedMode
{
  if (self->_mode == 2)
  {
    return 2;
  }

  if (self->_remoteDevice)
  {
    return 2;
  }

  return 1;
}

- (id)acceptedPaymentApplicationsForPass:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_acceptedApplications objectForKey:v5];
    if (!v6)
    {
      v7 = [v4 deviceInAppPaymentApplications];
      v8 = [v7 allObjects];
      v9 = [v4 devicePrimaryInAppPaymentApplication];
      v6 = -[PKPaymentAuthorizationDataModel _filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:](self, "_filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:", v8, v9, [v4 hasAssociatedPeerPaymentAccount]);

      [(NSMutableDictionary *)self->_acceptedApplications setObject:v6 forKey:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unavailablePaymentApplicationsForPass:(id)a3
{
  acceptedApplications = self->_acceptedApplications;
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = [(NSMutableDictionary *)acceptedApplications objectForKey:v5];
  v7 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_161];

  v8 = [v4 deviceInAppPaymentApplications];

  v9 = [v8 allObjects];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __73__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForPass___block_invoke_2;
  v17 = &unk_1E79CC4E0;
  v18 = v7;
  v19 = &__block_literal_global_161;
  v10 = v7;
  v11 = [v9 indexesOfObjectsPassingTest:&v14];
  v12 = [v9 objectsAtIndexes:{v11, v14, v15, v16, v17}];

  return v12;
}

id __73__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForPass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 applicationIdentifier];
  v4 = [v2 paymentType];

  v5 = PKPaymentMethodTypeToString(v4);
  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

uint64_t __73__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForPass___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  LODWORD(v1) = [v1 containsObject:v2];

  return v1 ^ 1;
}

- (id)defaultSelectedPaymentApplicationForPass:(id)a3
{
  if (a3)
  {
    v4 = [(PKPaymentAuthorizationDataModel *)self acceptedPaymentApplicationsForPass:?];
    v5 = [(PKPaymentAuthorizationDataModel *)self _defaultSelectedPaymentApplicationForPaymentApplications:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultSelectedPaymentApplicationForRemoteInstrument:(id)a3
{
  if (a3)
  {
    v4 = [(PKPaymentAuthorizationDataModel *)self acceptedPaymentApplicationsForRemoteInstrument:?];
    v5 = [(PKPaymentAuthorizationDataModel *)self _defaultSelectedPaymentApplicationForPaymentApplications:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_defaultSelectedPaymentApplicationForPaymentApplications:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] <= 1)
  {
    v5 = [v4 firstObject];
    goto LABEL_29;
  }

  v25 = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
  if ([v25 count])
  {
    v6 = [(PKPaymentRequest *)self->_paymentRequest respectSupportedNetworksOrder];
  }

  else
  {
    v6 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = v4;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = v6;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = [(PKPaymentRequest *)self->_paymentRequest countryCode];
      v15 = [v13 isRequiredForMerchantInCountry:v14];

      if (v15)
      {
        v5 = v13;

        goto LABEL_28;
      }

      if (v6)
      {
        v16 = PKPaymentNetworkNameForPaymentCredentialType([v13 paymentNetworkIdentifier]);
        v17 = [v25 indexOfObject:v16];
        v18 = v17;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL || v17 < v11 || v17 == v11 && (v19 = [v13 inAppPriority], v18 = v11, v20 = v19 <= objc_msgSend(v9, "inAppPriority"), v6 = v24, !v20))
        {
          v21 = v13;

          v11 = v18;
          v9 = v21;
          v6 = v24;
        }
      }

      else
      {
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && [v13 inAppPriority] <= v11)
        {
          goto LABEL_22;
        }

        v11 = [v13 inAppPriority];
        v16 = v9;
        v9 = v13;
      }

LABEL_22:
      if (v8 == ++v12)
      {
        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }
  }

  v9 = 0;
LABEL_27:

  v9 = v9;
  v5 = v9;
LABEL_28:

  v4 = v23;
LABEL_29:

  return v5;
}

- (id)acceptedRemotePaymentInstrumentsForRemoteDevice:(id)a3
{
  remoteDeviceToAcceptedInstruments = self->_remoteDeviceToAcceptedInstruments;
  v4 = [a3 uniqueID];
  v5 = [(NSMutableDictionary *)remoteDeviceToAcceptedInstruments objectForKey:v4];

  return v5;
}

- (id)acceptedPaymentApplicationsForRemoteInstrument:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_acceptedApplications objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 paymentApplications];
    v7 = [v4 primaryPaymentApplication];
    v5 = -[PKPaymentAuthorizationDataModel _filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:](self, "_filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:", v6, v7, [v4 hasAssociatedPeerPaymentAccount]);

    [(NSMutableDictionary *)self->_acceptedApplications setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)unavailablePaymentApplicationsForRemoteInstrument:(id)a3
{
  acceptedApplications = self->_acceptedApplications;
  v4 = a3;
  v5 = [(NSMutableDictionary *)acceptedApplications objectForKey:v4];
  v6 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_163];

  v7 = [v4 paymentApplications];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __85__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForRemoteInstrument___block_invoke_2;
  v15 = &unk_1E79CC4E0;
  v16 = v6;
  v17 = &__block_literal_global_163;
  v8 = v6;
  v9 = [v7 indexesOfObjectsPassingTest:&v12];
  v10 = [v7 objectsAtIndexes:{v9, v12, v13, v14, v15}];

  return v10;
}

id __85__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForRemoteInstrument___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 applicationIdentifier];
  v4 = [v2 paymentType];

  v5 = PKPaymentMethodTypeToString(v4);
  v6 = [v3 stringByAppendingString:v5];

  return v6;
}

uint64_t __85__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForRemoteInstrument___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  LODWORD(v1) = [v1 containsObject:v2];

  return v1 ^ 1;
}

- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)a3 forPass:(id)a4
{
  v6 = a4;
  v7 = [PKWebServiceMerchantCategoryCodesFeature merchantCategoryCodesFeatureWithWebService:a3];
  if (v7 && [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode])
  {
    v8 = [v7 appleCardUnsupportedMerchantCategoryCodes];
    v9 = [v7 appleCashUnsupportedMerchantCategoryCodes];
    v10 = [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode];
    if ([v6 isPeerPaymentPass] && (v11 = v9) != 0 || (v12 = 1, objc_msgSend(v6, "isAppleCardPass")) && (v11 = v8) != 0)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithShort:v10];
      v14 = [v11 containsObject:v13];

      v12 = v14 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)a3 forPaymentInstrument:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 associatedAccountFeatureIdentifier] - 3) >= 0xFFFFFFFFFFFFFFFELL && -[PKPaymentRequest merchantCategoryCode](self->_paymentRequest, "merchantCategoryCode"))
  {
    v8 = [PKWebServiceMerchantCategoryCodesFeature merchantCategoryCodesFeatureWithWebService:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 appleCardUnsupportedMerchantCategoryCodes];
      v11 = [v9 appleCashUnsupportedMerchantCategoryCodes];
      v12 = [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode];
      if ([v7 associatedAccountFeatureIdentifier] == 1 && (v13 = v11) != 0 || (v14 = 1, objc_msgSend(v7, "associatedAccountFeatureIdentifier") == 2) && (v13 = v10) != 0)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithShort:v12];
        v16 = [v13 containsObject:v15];

        v14 = v16 ^ 1;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)canSupportDisbursementsOnRemoteDevice:(id)a3
{
  v3 = a3;
  v4 = ([v3 type] || objc_msgSend(v3, "majorOperatingSystemVersion") >= 11) && (objc_msgSend(v3, "type") != 1 || objc_msgSend(v3, "majorOperatingSystemVersion") >= 18);

  return v4;
}

- (NSArray)unavailablePasses
{
  unavailablePasses = self->_unavailablePasses;
  if (!unavailablePasses)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(PKPaymentRequest *)self->_paymentRequest isPeerPaymentRequest])
    {
      v6 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      [v4 safelyAddObject:v6];
    }

    v7 = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
    v8 = [v7 valueForKey:@"uniqueID"];

    v9 = [(PKPaymentAuthorizationDataModel *)self library];
    v10 = [v9 passesOfType:1];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__PKPaymentAuthorizationDataModel_unavailablePasses__block_invoke;
    v18[3] = &unk_1E79CC508;
    v19 = v8;
    v20 = v5;
    v21 = v4;
    v11 = v4;
    v12 = v5;
    v13 = v8;
    v14 = [v10 pk_objectsPassingTest:v18];
    v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_170];
    v16 = self->_unavailablePasses;
    self->_unavailablePasses = v15;

    unavailablePasses = self->_unavailablePasses;
  }

  return unavailablePasses;
}

uint64_t __52__PKPaymentAuthorizationDataModel_unavailablePasses__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 uniqueID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) != 0 || (([v3 isAccessPass] & 1) != 0 || (objc_msgSend(v3, "isIdentityPass") & 1) != 0 || objc_msgSend(v3, "isShellPass")) && (v6 = a1[5], objc_msgSend(v3, "uniqueID"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "containsObject:", v7), v7, !v6))
  {
    v10 = 0;
  }

  else
  {
    v8 = a1[6];
    v9 = [v3 uniqueID];
    v10 = [v8 containsObject:v9] ^ 1;
  }

  return v10;
}

- (BOOL)pinRequired
{
  v3 = [(PKPaymentAuthorizationDataModel *)self paymentApplication];
  if ([v3 inAppPINRequired])
  {
    v4 = [v3 inAppPINRequiredCurrency];
    v5 = [(PKPaymentAuthorizationDataModel *)self currencyCode];
    v6 = [v4 caseInsensitiveCompare:v5];

    v7 = [v3 inAppPINRequiredAmount];
    v8 = [(PKPaymentAuthorizationDataModel *)self transactionAmount];
    v9 = [v7 compare:v8];

    v10 = [(PKPaymentAuthorizationDataModel *)self pass];
    v11 = [(PKPaymentAuthorizationDataModel *)self _statusForPass:v10];

    v14 = v9 == -1 || v11 == 3 || v6 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setStatus:(int64_t)a3 forItemWithType:(int64_t)a4 notify:(BOOL)a5
{
  v5 = a5;
  v10 = [(PKPaymentAuthorizationDataModel *)self itemForType:a4];
  [v10 setStatus:a3];
  if (a4 == 3)
  {
    v9 = [v10 pass];
    [(PKPaymentAuthorizationDataModel *)self _setStatus:a3 forPass:v9];
  }

  if (v5)
  {
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)_setStatus:(int64_t)a3 forPass:(id)a4
{
  if (a4)
  {
    statusForPass = self->_statusForPass;
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v9 = [v6 numberWithInteger:a3];
    v8 = [v7 uniqueID];

    [(NSMutableDictionary *)statusForPass setObject:v9 forKey:v8];
  }
}

- (int64_t)_statusForPass:(id)a3
{
  statusForPass = self->_statusForPass;
  v4 = [a3 uniqueID];
  v5 = [(NSMutableDictionary *)statusForPass objectForKey:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fallbackToBypassMode
{
  v3 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Falling back to bypass mode", v8, 2u);
  }

  v4 = [(PKPaymentAuthorizationDataModel *)self itemForType:+[PKPaymentCardDataItem dataType]];
  if (v4)
  {
    [(NSMutableArray *)self->_items removeObject:v4];
  }

  statusForPass = self->_statusForPass;
  self->_statusForPass = 0;

  pass = self->_pass;
  self->_pass = 0;

  paymentApplication = self->_paymentApplication;
  self->_paymentApplication = 0;

  self->_mode = 3;
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)showPeerPaymentCardDataItem:(BOOL)a3 withCardDataItem:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v8 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
    if (v8)
    {
      [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v8];
    }

    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
    goto LABEL_10;
  }

  [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:3];
  if (v7)
  {
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v7];
  }

LABEL_10:

  [(PKPaymentAuthorizationDataModel *)self updatePeerPaymentPromotionForPeerPaymentQuote:v4 & ~v5];
}

- (void)paymentOffersDidUpdate
{
  [(PKPaymentAuthorizationDataModel *)self recomputeHasAnyPaymentOffers];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setSelectedPaymentOffer:(id)a3
{
  objc_storeStrong(&self->_selectedPaymentOffer, a3);
  [(PKPaymentAuthorizationDataModel *)self _updatePaymentOfferDataItem];
  [(PKPaymentAuthorizationDataModel *)self recomputeHasAnyPaymentOffers];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)_updatePaymentOfferDataItem
{
  if (self->_selectedPaymentOffer || (-[PKPaymentOffersController selectedOfferDetails](self->_paymentOffersController, "selectedOfferDetails"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 requiresUserAction], v3, v4))
  {
    v5 = objc_opt_class();

    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:v5];
  }

  else
  {
    v6 = [(PKPaymentAuthorizationDataModel *)self itemForType:14];
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v6];
  }
}

- (void)setPaymentOffersController:(id)a3
{
  objc_storeStrong(&self->_paymentOffersController, a3);

  [(PKPaymentAuthorizationDataModel *)self recomputeHasAnyPaymentOffers];
}

- (unint64_t)connectedCardStateForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self primaryAccountIdentifiersWithConnectedCardStateSet];
  v6 = [v4 primaryAccountIdentifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v4 bankConnectAccount];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end