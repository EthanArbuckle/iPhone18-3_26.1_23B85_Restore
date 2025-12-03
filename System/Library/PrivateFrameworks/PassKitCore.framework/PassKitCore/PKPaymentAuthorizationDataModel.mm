@interface PKPaymentAuthorizationDataModel
- (BOOL)canSupportDisbursementsOnRemoteDevice:(id)device;
- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)service forPass:(id)pass;
- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)service forPaymentInstrument:(id)instrument;
- (BOOL)isIssuerInstallmentsRepayment;
- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status;
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
- (PKPaymentAuthorizationDataModel)initWithMode:(int64_t)mode;
- (PKPaymentOptionsDefaults)defaults;
- (PKPaymentOptionsRecents)recents;
- (PKPaymentPass)appleCardPass;
- (PKPaymentSummaryItem)totalSummaryItem;
- (PKRemoteDevice)remoteDevice;
- (id)_billingAddressKey;
- (id)_defaultSelectedPaymentApplicationForPaymentApplications:(id)applications;
- (id)_filterAndProcessPaymentApplicationsUsingConfiguration:(id)configuration withPrimaryPaymentApplication:(id)application passHasAssociatedPeerPaymentAccount:(BOOL)account;
- (id)_filterAndProcessPaymentPassesUsingConfiguration:(id)configuration;
- (id)_formatAddressContactIfNecessary:(id)necessary;
- (id)_inAppPaymentPassesForPaymentRequest:(id)request;
- (id)_inAppPrivateLabelPaymentPasses;
- (id)acceptedPaymentApplicationsForPass:(id)pass;
- (id)acceptedPaymentApplicationsForRemoteInstrument:(id)instrument;
- (id)acceptedRemotePaymentInstrumentsForRemoteDevice:(id)device;
- (id)automaticallyPresentedPassFromAcceptedPasses:(id)passes;
- (id)defaultSelectedPaymentApplicationForPass:(id)pass;
- (id)defaultSelectedPaymentApplicationForRemoteInstrument:(id)instrument;
- (id)enhancedMerchantInfoForPass:(id)pass;
- (id)itemForType:(int64_t)type;
- (id)paymentErrorsFromLegacyStatus:(int64_t)status;
- (id)paymentRequestSupportedQuery;
- (id)paymentRequestSupportedRemoteQuery;
- (id)unavailablePaymentApplicationsForPass:(id)pass;
- (id)unavailablePaymentApplicationsForRemoteInstrument:(id)instrument;
- (int64_t)_displayOrderForDataType:(int64_t)type;
- (int64_t)_statusForPass:(id)pass;
- (int64_t)requestedMode;
- (unint64_t)_insertionIndexForItem:(id)item;
- (unint64_t)confirmationStyle;
- (unint64_t)connectedCardStateForPass:(id)pass;
- (void)_didSetItemForClass:(Class)class;
- (void)_ensureItemForClass:(Class)class;
- (void)_ensureItems;
- (void)_ensurePaymentContentItems;
- (void)_ensurePlaceholderItems;
- (void)_notifyModelChanged;
- (void)_populateFinanceKitBalancesIfNecessaryForPasses:(id)passes;
- (void)_populatePeerPaymentBalanceIfNecessaryForPasses:(id)passes;
- (void)_removeDataItem:(id)item;
- (void)_setDataItem:(id)item;
- (void)_setPaymentContentDataItems:(id)items;
- (void)_setStatus:(int64_t)status forPass:(id)pass;
- (void)_updatePaymentOfferDataItem;
- (void)_updatePeerPaymentPromotionAvailability;
- (void)endUpdates;
- (void)fallbackToBypassMode;
- (void)paymentOffersDidUpdate;
- (void)refreshBillingAddressErrors;
- (void)refreshPaymentMethods;
- (void)resetPaymentMethods;
- (void)setAutomaticReloadPaymentRequest:(id)request;
- (void)setBankAccount:(id)account;
- (void)setBillingAddress:(id)address;
- (void)setBillingAgreement:(id)agreement;
- (void)setCouponCode:(id)code;
- (void)setCouponCodeErrors:(id)errors;
- (void)setDeferredPaymentRequest:(id)request;
- (void)setEnhancedMerchantInfo:(id)info forPass:(id)pass;
- (void)setFundingMode:(int64_t)mode;
- (void)setMultiTokenContexts:(id)contexts;
- (void)setNumberOfOutstandingCouponCodeUpdates:(unint64_t)updates;
- (void)setPass:(id)pass;
- (void)setPass:(id)pass withSelectedPaymentApplication:(id)application;
- (void)setPaymentApplication:(id)application;
- (void)setPaymentContentItems:(id)items;
- (void)setPaymentDateForPaymentRequest:(id)request;
- (void)setPaymentErrors:(id)errors;
- (void)setPaymentOffersController:(id)controller;
- (void)setPaymentPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number;
- (void)setPaymentRequest:(id)request;
- (void)setPaymentSummaryItems:(id)items;
- (void)setPeerPaymentBalanceForAccountPayment:(id)payment;
- (void)setPeerPaymentQuote:(id)quote;
- (void)setPeerPaymentService:(id)service;
- (void)setRecurringPaymentRequest:(id)request;
- (void)setRemoteDevice:(id)device;
- (void)setRemotePaymentInstrument:(id)instrument;
- (void)setRemotePaymentInstrument:(id)instrument withSelectedPaymentApplication:(id)application;
- (void)setSelectedPaymentOffer:(id)offer;
- (void)setShippingAddress:(id)address;
- (void)setShippingAddressErrors:(id)errors;
- (void)setShippingEditableMessage:(id)message;
- (void)setShippingEmail:(id)email;
- (void)setShippingEmailError:(id)error;
- (void)setShippingMethod:(id)method;
- (void)setShippingName:(id)name;
- (void)setShippingPhone:(id)phone;
- (void)setStatus:(int64_t)status forItemWithType:(int64_t)type notify:(BOOL)notify;
- (void)setUpdateHandler:(id)handler;
- (void)showPeerPaymentCardDataItem:(BOOL)item withCardDataItem:(BOOL)dataItem;
- (void)updateBillingErrors;
- (void)updatePeerPaymentPromotionForPeerPaymentQuote:(BOOL)quote;
- (void)updateRemoteDevices:(id)devices ignoreProximity:(BOOL)proximity;
@end

@implementation PKPaymentAuthorizationDataModel

- (PKPaymentAuthorizationDataModel)initWithMode:(int64_t)mode
{
  v38.receiver = self;
  v38.super_class = PKPaymentAuthorizationDataModel;
  v4 = [(PKPaymentAuthorizationDataModel *)&v38 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
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

    if (mode == 2)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      instrumentToDeviceMap = v5->_instrumentToDeviceMap;
      v5->_instrumentToDeviceMap = strongToWeakObjectsMapTable;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      remoteDeviceToAcceptedInstruments = v5->_remoteDeviceToAcceptedInstruments;
      v5->_remoteDeviceToAcceptedInstruments = dictionary;

      dictionary2 = MEMORY[0x1E695E0F0];
      v30 = 80;
    }

    else
    {
      if (mode != 1)
      {
LABEL_7:
        v36 = ABPersonCreate();
        CFRelease(v36);
        return v5;
      }

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v30 = 88;
    }

    v35 = *(&v5->super.isa + v30);
    *(&v5->super.isa + v30) = dictionary2;

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

- (void)setFundingMode:(int64_t)mode
{
  v13 = *MEMORY[0x1E69E9840];
  fundingMode = self->_fundingMode;
  if (fundingMode != mode)
  {
    v6 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PKPaymentAuthorizationFundingModeToString(fundingMode);
      v8 = PKPaymentAuthorizationFundingModeToString(mode);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Did update funding mode from %@ to %@", &v9, 0x16u);
    }

    self->_fundingMode = mode;
    [(NSMutableDictionary *)self->_acceptedApplications removeAllObjects];
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)setPaymentRequest:(id)request
{
  requestCopy = request;
  if (self->_paymentRequest)
  {
    [MEMORY[0x1E695DF30] raise:@"Illegal state" format:@"paymentRequest property already set"];
  }

  else
  {
    objc_storeStrong(&self->_paymentRequest, request);
    [(PKPaymentAuthorizationDataModel *)self _ensureItems];
    transactionAmount = [(PKPaymentAuthorizationDataModel *)self transactionAmount];
    v6 = [transactionAmount copy];
    initialTransactionAmount = self->_initialTransactionAmount;
    self->_initialTransactionAmount = v6;
  }
}

- (void)setPaymentContentItems:(id)items
{
  objc_storeStrong(&self->_paymentContentItems, items);
  [(PKPaymentAuthorizationDataModel *)self _ensurePaymentContentItems];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setBillingAgreement:(id)agreement
{
  v4 = MEMORY[0x1E696AB08];
  agreementCopy = agreement;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v10 = [agreementCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

- (void)setRecurringPaymentRequest:(id)request
{
  requestCopy = request;
  [requestCopy sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setRecurringPaymentRequest:requestCopy];
  billingAgreement = [requestCopy billingAgreement];

  v6 = [billingAgreement length];
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

- (void)setAutomaticReloadPaymentRequest:(id)request
{
  requestCopy = request;
  [requestCopy sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setAutomaticReloadPaymentRequest:requestCopy];
  billingAgreement = [requestCopy billingAgreement];

  v6 = [billingAgreement length];
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

- (void)setDeferredPaymentRequest:(id)request
{
  requestCopy = request;
  [requestCopy sanitize];
  [(PKPaymentRequest *)self->_paymentRequest setDeferredPaymentRequest:requestCopy];
  billingAgreement = [requestCopy billingAgreement];

  v6 = [billingAgreement length];
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

- (void)setMultiTokenContexts:(id)contexts
{
  [(PKPaymentRequest *)self->_paymentRequest setMultiTokenContexts:contexts];
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

- (void)setCouponCode:(id)code
{
  v4 = [code copy];
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

- (void)setNumberOfOutstandingCouponCodeUpdates:(unint64_t)updates
{
  self->_numberOfOutstandingCouponCodeUpdates = updates;
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setCouponCodeErrors:(id)errors
{
  paymentErrors = self->_paymentErrors;
  errorsCopy = errors;
  v6 = [(NSArray *)paymentErrors pk_objectsPassingTest:&__block_literal_global_81];
  v7 = self->_paymentErrors;
  self->_paymentErrors = v6;

  v10 = [errorsCopy pk_arrayByApplyingBlock:&__block_literal_global_84];

  if (v10 && [v10 count])
  {
    v8 = [(NSArray *)self->_paymentErrors arrayByAddingObjectsFromArray:v10];
    v9 = self->_paymentErrors;
    self->_paymentErrors = v8;
  }

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingEmail:(id)email
{
  v45[2] = *MEMORY[0x1E69E9840];
  emailCopy = email;
  emailAddresses = [emailCopy emailAddresses];
  firstObject = [emailAddresses firstObject];
  value = [firstObject value];

  if (value)
  {
    v8 = emailCopy;
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

  shippingContact = [(PKPayment *)self->_payment shippingContact];
  emailAddress = [shippingContact emailAddress];
  v16 = [emailAddress isEqual:value];

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
    v30 = [(PKContactFormatValidator *)contactFormatValidator emailAddressIsValid:value];
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

- (void)setShippingEmailError:(id)error
{
  errorCopy = error;
  if (![(NSArray *)self->_paymentErrors containsObject:?])
  {
    v4 = [(NSArray *)self->_paymentErrors mutableCopy];
    [v4 addObject:errorCopy];
    v5 = [v4 copy];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v5;

    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)setShippingPhone:(id)phone
{
  v45[2] = *MEMORY[0x1E69E9840];
  phoneCopy = phone;
  phoneNumbers = [phoneCopy phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];

  if (value)
  {
    v8 = phoneCopy;
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

  shippingContact = [(PKPayment *)self->_payment shippingContact];
  phoneNumber = [shippingContact phoneNumber];
  v16 = [phoneNumber isEqual:value];

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
    v30 = [(PKContactFormatValidator *)contactFormatValidator phoneNumberIsValid:value forCountryCode:0];
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

- (void)setShippingName:(id)name
{
  v32[3] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  nameComponents = [nameCopy nameComponents];

  if (nameComponents)
  {
    v6 = nameCopy;
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

  shippingContact = [(PKPayment *)self->_payment shippingContact];
  name = [shippingContact name];
  nameComponents2 = [nameCopy nameComponents];
  v14 = [name isEqual:nameComponents2];

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

- (void)setShippingAddress:(id)address
{
  v84[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  nameComponents = [addressCopy nameComponents];
  postalAddresses = [addressCopy postalAddresses];
  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  v73 = value;
  if (value)
  {
    objc_storeStrong(&self->_originalShippingAddress, address);
    v10 = [(PKPaymentAuthorizationDataModel *)self _formatAddressContactIfNecessary:addressCopy];
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

  requiredShippingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if (([requiredShippingContactFields containsObject:@"name"] & 1) == 0)
  {
    v14 = [requiredShippingContactFields containsObject:@"post"];
  }

  v68 = requiredShippingContactFields;
  v70 = [requiredShippingContactFields containsObject:@"phoneticName"];
  v22 = [(NSArray *)self->_paymentErrors mutableCopy];
  v23 = MEMORY[0x1E695DEC8];
  v81 = @"post";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v25 = [v23 pk_FilteredShippingErrorsForContactFields:v24 errors:self->_paymentErrors];
  [v22 removeObjectsInArray:v25];

  shippingContact = [(PKPayment *)self->_payment shippingContact];
  postalAddress = [shippingContact postalAddress];
  v28 = [postalAddress isEqual:value];

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

    shippingContact2 = [(PKPayment *)self->_payment shippingContact];
    name = [shippingContact2 name];
    if ([name isEqual:nameComponents])
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
      pkFullName = [addressCopy pkFullName];
      v36 = [pkFullName length];

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

  v40 = addressCopy;
  v41 = MEMORY[0x1E695DEC8];
  v77 = @"phoneticName";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v43 = [v41 pk_FilteredShippingErrorsForContactFields:v42 errors:self->_paymentErrors];
  [v22 removeObjectsInArray:v43];

  shippingContact3 = [(PKPayment *)self->_payment shippingContact];
  name2 = [shippingContact3 name];
  phoneticRepresentation = [name2 phoneticRepresentation];
  phoneticRepresentation2 = [nameComponents phoneticRepresentation];
  if ([phoneticRepresentation isEqual:phoneticRepresentation2])
  {
    v48 = [v71 count];

    if (v48)
    {
      [v22 addObjectsFromArray:v71];
      addressCopy = v40;
      goto LABEL_24;
    }
  }

  else
  {
  }

  addressCopy = v40;
  if (v70)
  {
    pkPhoneticName = [v40 pkPhoneticName];
    v50 = [pkPhoneticName length];

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

  v56 = [(PKContactFormatValidator *)self->_contactFormatValidator checkPostalAddressFormat:value];
  contactFormatValidator = self->_contactFormatValidator;
  iSOCountryCode = [value ISOCountryCode];
  v59 = [(PKContactFormatValidator *)contactFormatValidator checkNameFormat:nameComponents forCountryCode:iSOCountryCode];

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
  requiredShippingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v4 = [requiredShippingContactFields containsObject:@"email"];

  requiredShippingContactFields2 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v6 = [requiredShippingContactFields2 containsObject:@"phone"];

  requiredShippingContactFields3 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([requiredShippingContactFields3 containsObject:@"name"])
  {
    v8 = 0;
  }

  else
  {
    requiredShippingContactFields4 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
    v10 = [requiredShippingContactFields4 containsObject:@"phoneticName"];

    v8 = v10 ^ 1;
  }

  requiredShippingContactFields5 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v12 = [requiredShippingContactFields5 containsObject:@"post"];

  return (v4 | v6) & 1 | (((v8 | v12 & [(PKPaymentRequest *)self->_paymentRequest isShippingEditable]) & 1) == 0);
}

- (void)setShippingMethod:(id)method
{
  objc_storeStrong(&self->_shippingMethod, method);
  methodCopy = method;
  v6 = objc_opt_class();

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:v6];
  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setShippingEditableMessage:(id)message
{
  objc_storeStrong(&self->_shippingEditableMessage, message);

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (CNContact)billingAddress
{
  _billingAddressKey = [(PKPaymentAuthorizationDataModel *)self _billingAddressKey];
  if (_billingAddressKey)
  {
    v4 = [(NSMutableDictionary *)self->_billingAddressForFundingSource objectForKeyedSubscript:_billingAddressKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBillingAddress:(id)address
{
  addressCopy = address;
  postalAddresses = [addressCopy postalAddresses];
  if ([postalAddresses count])
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self _formatAddressContactIfNecessary:addressCopy];
  }

  else
  {
    v5 = 0;
  }

  _billingAddressKey = [(PKPaymentAuthorizationDataModel *)self _billingAddressKey];
  if (_billingAddressKey)
  {
    [(NSMutableDictionary *)self->_billingAddressForFundingSource setObject:v5 forKeyedSubscript:_billingAddressKey];
  }

  [(PKPaymentAuthorizationDataModel *)self refreshBillingAddressErrors];
  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)refreshBillingAddressErrors
{
  v20[3] = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  billingAddress = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  nameComponents = [billingAddress nameComponents];
  postalAddresses = [billingAddress postalAddresses];
  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  v8 = [(PKContactFormatValidator *)self->_contactFormatValidator checkPostalAddressFormat:value];
  contactFormatValidator = self->_contactFormatValidator;
  iSOCountryCode = [value ISOCountryCode];
  v11 = [(PKContactFormatValidator *)contactFormatValidator checkNameFormat:nameComponents forCountryCode:iSOCountryCode];

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
    uniqueID = 0;
    goto LABEL_7;
  }

  mode = self->_mode;
  if (mode != 2)
  {
    if (mode == 1)
    {
      uniqueID = [(PKObject *)self->_pass uniqueID];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  uniqueID = [(PKRemotePaymentInstrument *)self->_remotePaymentInstrument passIdentifier];
LABEL_7:

  return uniqueID;
}

- (void)updateBillingErrors
{
  v115[1] = *MEMORY[0x1E69E9840];
  requiredBillingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  v4 = 0x1E695D000uLL;
  if (![requiredBillingContactFields containsObject:@"post"] || !self->_paymentApplicationIdentifierForErrors || (-[PKPaymentApplication applicationIdentifier](self->_paymentApplication, "applicationIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_17;
  }

  v6 = v5;
  paymentApplicationIdentifierForErrors = self->_paymentApplicationIdentifierForErrors;
  applicationIdentifier = [(PKPaymentApplication *)self->_paymentApplication applicationIdentifier];
  LODWORD(paymentApplicationIdentifierForErrors) = [(NSString *)paymentApplicationIdentifierForErrors isEqualToString:applicationIdentifier];

  if (!paymentApplicationIdentifierForErrors)
  {
LABEL_17:
    v27 = MEMORY[0x1E695DEC8];
    v111[0] = @"post";
    v111[1] = @"name";
    v111[2] = @"phoneticName";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
    value = [v27 pk_FilteredBillingErrorsForContactFields:v28 errors:self->_clientErrors];

    v29 = [(NSArray *)self->_paymentErrors pk_arrayByRemovingObjectsInArray:value];
    paymentErrors = self->_paymentErrors;
    self->_paymentErrors = v29;
    goto LABEL_18;
  }

  billingAddress = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  postalAddresses = [billingAddress postalAddresses];
  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  billingContact = [(PKPayment *)self->_payment billingContact];
  paymentErrors = [billingContact postalAddress];

  v15 = MEMORY[0x1E695DEC8];
  v115[0] = @"post";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
  v17 = [v15 pk_FilteredBillingErrorsForContactFields:v16 errors:self->_clientErrors];

  v93 = v17;
  if ([value isEqual:paymentErrors])
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

  billingAddress2 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
  nameComponents = [billingAddress2 nameComponents];

  billingContact2 = [(PKPayment *)self->_payment billingContact];
  name = [billingContact2 name];

  v74 = *(v4 + 3784);
  v113[0] = @"name";
  v113[1] = @"phoneticName";
  v75 = [v74 arrayWithObjects:v113 count:2];
  v76 = [v74 pk_FilteredBillingErrorsForContactFields:v75 errors:self->_clientErrors];

  v77 = nameComponents;
  if ([v76 count] && objc_msgSend(nameComponents, "isEqual:", name))
  {
    v90 = name;
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
    name = v90;
    paymentErrors = v91;
    v77 = nameComponents;
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
  billingAddress3 = [(PKPaymentAuthorizationDataModel *)self billingAddress];

  if (!billingAddress3)
  {
    return;
  }

  requiredBillingContactFields2 = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  if ([requiredBillingContactFields2 containsObject:@"name"])
  {
    v32 = 1;
  }

  else
  {
    v32 = [requiredBillingContactFields2 containsObject:@"post"];
  }

  v33 = [requiredBillingContactFields2 containsObject:@"phoneticName"];
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
    v39 = requiredBillingContactFields2;
    v40 = v38;
    billingContact3 = [(PKPayment *)self->_payment billingContact];
    name2 = [billingContact3 name];
    billingAddress4 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    nameComponents2 = [billingAddress4 nameComponents];
    v45 = [name2 isEqual:nameComponents2];

    if (v45)
    {
      v38 = v40;
      requiredBillingContactFields2 = v39;
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
      requiredBillingContactFields2 = v39;
    }

    billingAddress5 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    pkFullName = [billingAddress5 pkFullName];
    v48 = [pkFullName length];

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
    v52 = requiredBillingContactFields2;
    v53 = v38;
    billingContact4 = [(PKPayment *)self->_payment billingContact];
    name3 = [billingContact4 name];
    phoneticRepresentation = [name3 phoneticRepresentation];
    billingAddress6 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
    nameComponents3 = [billingAddress6 nameComponents];
    phoneticRepresentation2 = [nameComponents3 phoneticRepresentation];
    v60 = [phoneticRepresentation isEqual:phoneticRepresentation2];

    if ((v60 & 1) == 0)
    {
      v38 = v53;
      [v95 removeObjectsInArray:v53];
      [v53 count];
      requiredBillingContactFields2 = v52;
      goto LABEL_34;
    }

    v38 = v53;
    v61 = [v53 count];
    requiredBillingContactFields2 = v52;
    if (!v61)
    {
LABEL_34:
      billingAddress7 = [(PKPaymentAuthorizationDataModel *)self billingAddress];
      pkPhoneticName = [billingAddress7 pkPhoneticName];
      v64 = [pkPhoneticName length];

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

- (void)setShippingAddressErrors:(id)errors
{
  v25 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = errorsCopy;
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

        pk_paymentErrorWithLocalizedDescription = [*(*(&v19 + 1) + 8 * v10) pk_paymentErrorWithLocalizedDescription];
        [v5 addObject:pk_paymentErrorWithLocalizedDescription];

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

- (void)setPaymentErrors:(id)errors
{
  v23 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = errorsCopy;
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

        pk_paymentErrorWithLocalizedDescription = [*(*(&v18 + 1) + 8 * v10) pk_paymentErrorWithLocalizedDescription];
        [(NSArray *)v5 addObject:pk_paymentErrorWithLocalizedDescription];

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

  applicationIdentifier = [(PKPaymentApplication *)self->_paymentApplication applicationIdentifier];
  paymentApplicationIdentifierForErrors = self->_paymentApplicationIdentifierForErrors;
  self->_paymentApplicationIdentifierForErrors = applicationIdentifier;

  v16 = [(NSArray *)v13 copy];
  clientErrors = self->_clientErrors;
  self->_clientErrors = v16;
}

- (void)setPeerPaymentService:(id)service
{
  objc_storeStrong(&self->_peerPaymentService, service);
  serviceCopy = service;
  account = [(PKPeerPaymentService *)self->_peerPaymentService account];
  peerPaymentAccount = self->_peerPaymentAccount;
  self->_peerPaymentAccount = account;
}

- (void)setPeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  objc_storeStrong(&self->_peerPaymentQuote, quote);
  if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsPreserveCurrentBalance]&& [(PKPeerPaymentQuote *)self->_peerPaymentQuote hasRecipient])
  {
    acceptedPasses = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
    self->_supportsPreservePeerPaymentBalance = [acceptedPasses count] != 0;

    if (self->_supportsPreservePeerPaymentBalance)
    {
      self->_usePeerPaymentBalance = [quoteCopy preservesCurrentBalance] ^ 1;
    }
  }

  else
  {
    self->_supportsPreservePeerPaymentBalance = 0;
  }

  if ([(PKPeerPaymentQuote *)self->_peerPaymentQuote hasRecipient])
  {
    v6 = [quoteCopy firstQuoteItemOfType:2];
    v7 = v6 != 0;

    v8 = [quoteCopy firstQuoteItemOfType:1];
    v9 = v8 != 0;

    [(PKPaymentAuthorizationDataModel *)self showPeerPaymentCardDataItem:v7 withCardDataItem:v9];
  }

  else
  {
    v10 = [quoteCopy firstQuoteItemOfType:3];
    if (v10)
    {
    }

    else
    {
      v11 = [quoteCopy firstQuoteItemOfType:4];

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

- (void)setBankAccount:(id)account
{
  accountCopy = account;
  objc_storeStrong(&self->_bankAccount, account);
  peerPaymentBalanceForAccountPayment = [(PKPaymentAuthorizationDataModel *)self peerPaymentBalanceForAccountPayment];
  amount = [peerPaymentBalanceForAccountPayment amount];

  v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
  v8 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
  if (v8 && amount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v10 = [zero compare:amount];

    paymentRequest = self->_paymentRequest;
    if (v10 == -1)
    {
      paymentSummaryItems = [(PKPaymentRequest *)paymentRequest paymentSummaryItems];
      lastObject = [paymentSummaryItems lastObject];
      amount2 = [lastObject amount];

      v16 = [amount2 compare:amount];
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

    accountServiceTransferRequest = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
    supportsSplitPayment = [accountServiceTransferRequest supportsSplitPayment];

    if (supportsSplitPayment && !v12)
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

- (void)setPeerPaymentBalanceForAccountPayment:(id)payment
{
  paymentCopy = payment;
  objc_storeStrong(&self->_peerPaymentBalanceForAccountPayment, payment);
  if (self->_peerPaymentBalanceForAccountPayment)
  {
    [(PKSecureElementPass *)self->_peerPaymentPass setPeerPaymentBalance:paymentCopy];
  }

  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
  amount = [paymentCopy amount];
  zero = [MEMORY[0x1E696AB90] zero];
  v8 = [amount compare:zero];

  accountServiceTransferRequest = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
  transferType = [accountServiceTransferRequest transferType];

  v12 = (transferType & 0xFFFFFFFFFFFFFFFELL) != 2 && v8 != 1;
  if (!paymentCopy || v12)
  {
    [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v5];
    v13 = v5;
  }

  else
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
    v13 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];

    pass = [v13 pass];
    [pass setPeerPaymentBalance:paymentCopy];

    accountServiceTransferRequest2 = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
    supportsSplitPayment = [accountServiceTransferRequest2 supportsSplitPayment];

    if (supportsSplitPayment)
    {
      paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
      lastObject = [paymentSummaryItems lastObject];
      amount2 = [lastObject amount];

      if ([amount2 compare:amount] != 1)
      {
        v20 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
        [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v20];
      }
    }
  }

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setPaymentDateForPaymentRequest:(id)request
{
  requestCopy = request;
  paymentDate = [requestCopy paymentDate];
  paymentFrequency = [requestCopy paymentFrequency];
  paymentTimeZone = [requestCopy paymentTimeZone];

  if ((paymentFrequency - 4) < 4 || paymentFrequency == 2)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
    v7 = [(PKPaymentAuthorizationDataModel *)self itemForType:10];
    [v7 setPaymentDate:paymentDate];
    [v7 setPaymentFrequency:paymentFrequency];
    [v7 setPaymentTimeZone:paymentTimeZone];
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (NSString)merchantName
{
  requestType = [(PKPaymentRequest *)self->_paymentRequest requestType];
  paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v5 = paymentSummaryItems;
  if (requestType == 10)
  {
    [paymentSummaryItems firstObject];
  }

  else
  {
    [paymentSummaryItems lastObject];
  }
  v6 = ;

  label = [v6 label];

  return label;
}

- (void)setPaymentSummaryItems:(id)items
{
  [(PKPaymentRequest *)self->_paymentRequest setPaymentSummaryItems:items];
  paymentSummaryItems = [(PKPaymentAuthorizationDataModel *)self paymentSummaryItems];
  v5 = [paymentSummaryItems count];

  if (v5 >= 2)
  {
    [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2 || ([(PKPaymentRequest *)self->_paymentRequest peerPaymentRequest], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, [(PKPeerPaymentQuote *)self->_peerPaymentQuote recipient], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    paymentSummaryItems2 = [(PKPaymentAuthorizationDataModel *)self paymentSummaryItems];
    v10 = [paymentSummaryItems2 count];

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
    paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
    lastObject = [paymentSummaryItems lastObject];
    amount = [lastObject amount];
  }

  else
  {
    paymentSummaryItems = [(PKPaymentAuthorizationDataModel *)self totalSummaryItem];
    amount = [paymentSummaryItems amount];
  }

  return amount;
}

- (PKPaymentSummaryItem)totalSummaryItem
{
  requestType = [(PKPaymentRequest *)self->_paymentRequest requestType];
  paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v5 = paymentSummaryItems;
  if (requestType == 10)
  {
    [paymentSummaryItems firstObject];
  }

  else
  {
    [paymentSummaryItems lastObject];
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
  confirmationStyle = [(PKPaymentRequest *)self->_paymentRequest confirmationStyle];
  paymentRequest = self->_paymentRequest;
  if (paymentRequest && ([(PKPaymentRequest *)paymentRequest APIType]- 1) <= 1 && [(PKPaymentAuthorizationDataModel *)self isIssuerInstallmentsRepayment])
  {
    return 1;
  }

  return confirmationStyle;
}

- (BOOL)isIssuerInstallmentsRepayment
{
  if (!self->_presenterIsIssuerInstallmentsRepayment)
  {
    return 0;
  }

  recurringPaymentRequest = [(PKPaymentRequest *)self->_paymentRequest recurringPaymentRequest];
  v3 = recurringPaymentRequest != 0;

  return v3;
}

- (id)automaticallyPresentedPassFromAcceptedPasses:(id)passes
{
  v34 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  originatingURL = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
  if (self->_hostApplicationIdentifier | originatingURL)
  {
    v24 = passesCopy;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = passesCopy;
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
        if (originatingURL)
        {
          associatedWebDomains = [*(*(&v26 + 1) + 8 * i) associatedWebDomains];
          host = [originatingURL host];
          if ([associatedWebDomains containsObject:host])
          {
            settings = [v12 settings];

            if ((settings & 0x10) != 0)
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

        associatedApplicationIdentifiers = [v12 associatedApplicationIdentifiers];
        if ([associatedApplicationIdentifiers containsObject:self->_hostApplicationIdentifier])
        {
          settings2 = [v12 settings];

          if ((settings2 & 0x10) == 0)
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

          firstObject = [v25 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        passesCopy = v24;
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

  firstObject = 0;
LABEL_26:

  return firstObject;
}

- (void)setUpdateHandler:(id)handler
{
  v4 = [handler copy];
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

- (id)itemForType:(int64_t)type
{
  typeToItemMap = self->_typeToItemMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)typeToItemMap objectForKey:v4];

  return v5;
}

- (void)_setDataItem:(id)item
{
  itemCopy = item;
  if (([objc_opt_class() supportsMultipleItems] & 1) == 0)
  {
    v4 = -[PKPaymentAuthorizationDataModel itemForType:](self, "itemForType:", [itemCopy type]);
    if (v4)
    {
      [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v4];
    }

    typeToItemMap = self->_typeToItemMap;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "type")}];
    [(NSMutableDictionary *)typeToItemMap setObject:itemCopy forKey:v6];
  }

  [(NSMutableArray *)self->_items insertObject:itemCopy atIndex:[(PKPaymentAuthorizationDataModel *)self _insertionIndexForItem:itemCopy]];
}

- (void)_setPaymentContentDataItems:(id)items
{
  items = self->_items;
  itemsCopy = items;
  v9 = [(NSMutableArray *)items indexesOfObjectsPassingTest:&__block_literal_global_120];
  [(NSMutableArray *)self->_items removeObjectsAtIndexes:v9];
  v6 = objc_alloc(MEMORY[0x1E696AC90]);
  firstObject = [itemsCopy firstObject];
  v8 = [v6 initWithIndexesInRange:{-[PKPaymentAuthorizationDataModel _insertionIndexForItem:](self, "_insertionIndexForItem:", firstObject), objc_msgSend(itemsCopy, "count")}];

  [(NSMutableArray *)self->_items insertObjects:itemsCopy atIndexes:v8];
}

- (unint64_t)_insertionIndexForItem:(id)item
{
  items = self->_items;
  itemCopy = item;
  v6 = [(NSMutableArray *)items count];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKPaymentAuthorizationDataModel__insertionIndexForItem___block_invoke;
  v9[3] = &unk_1E79CC2C8;
  v9[4] = self;
  v7 = [(NSMutableArray *)items indexOfObject:itemCopy inSortedRange:0 options:v6 usingComparator:1024, v9];

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

- (int64_t)_displayOrderForDataType:(int64_t)type
{
  switch(type)
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
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self paymentRequest];
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [v3 _defaultPaymentPassForPaymentRequest:paymentRequest];

  uniqueID = [v4 uniqueID];

  return uniqueID;
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
      passTypeIdentifier = [(PKPaymentRequest *)self->_paymentRequest passTypeIdentifier];
      passSerialNumber = [(PKPaymentRequest *)self->_paymentRequest passSerialNumber];
      if ([passTypeIdentifier length] && objc_msgSend(passSerialNumber, "length"))
      {
        library = [(PKPaymentAuthorizationDataModel *)self library];
        v7 = [library passWithPassTypeIdentifier:passTypeIdentifier serialNumber:passSerialNumber];
        paymentPass = [v7 paymentPass];

        if (paymentPass)
        {
          [(PKPaymentAuthorizationDataModel *)self setPass:paymentPass];
        }

        goto LABEL_27;
      }

      library2 = [(PKPaymentAuthorizationDataModel *)self library];
      paymentPass = [library2 defaultPaymentPassesWithRemotePasses:0];

      if (![paymentPass count])
      {
        goto LABEL_27;
      }

      firstObject = [paymentPass firstObject];
      [(PKPaymentAuthorizationDataModel *)self setPass:firstObject];
    }

    else
    {
      passTypeIdentifier = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
      if (-[PKPaymentRequest isVirtualCardRequest](self->_paymentRequest, "isVirtualCardRequest") || (-[PKPaymentRequest peerPaymentRequest](self->_paymentRequest, "peerPaymentRequest"), v9 = objc_claimAutoreleasedReturnValue(), [v9 peerPaymentQuote], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isRecurringPayment"), v10, v9, v11))
      {
        passSerialNumber2 = [(PKPaymentRequest *)self->_paymentRequest passSerialNumber];
        v13 = passSerialNumber2;
        if (passSerialNumber2)
        {
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __47__PKPaymentAuthorizationDataModel__ensureItems__block_invoke;
          v105[3] = &unk_1E79CAF98;
          v106 = passSerialNumber2;
          passSerialNumber = [passTypeIdentifier pk_firstObjectPassingTest:v105];
        }

        else
        {
          passSerialNumber = 0;
        }
      }

      else
      {
        passSerialNumber = 0;
      }

      if ([(PKPaymentRequest *)self->_paymentRequest isServiceProviderPaymentRequest])
      {
        serviceProviderOrder = [(PKPaymentRequest *)self->_paymentRequest serviceProviderOrder];
        serviceProviderData = [serviceProviderOrder serviceProviderData];

        v18 = [serviceProviderData objectForKey:@"primaryAccountIdentifier"];
        library3 = [(PKPaymentAuthorizationDataModel *)self library];
        v20 = [library3 passWithFPANIdentifier:v18];

        passSerialNumber = v20;
      }

      if (!passSerialNumber)
      {
        passSerialNumber = [passTypeIdentifier firstObject];
      }

      paymentPass = [(PKPaymentAuthorizationDataModel *)self automaticallyPresentedPassFromAcceptedPasses:passTypeIdentifier];
      self->_hasAutomaticallyPresentedPass = paymentPass != 0;
      if (paymentPass)
      {
        [(PKPaymentAuthorizationDataModel *)self setPass:paymentPass];
        selfCopy2 = self;
        v22 = paymentPass;
      }

      else
      {
        if (!passSerialNumber)
        {
          if (self->_supportsEmptyPass)
          {
            [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:objc_opt_class()];
            [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
          }

LABEL_27:

          if (![(PKPaymentRequest *)self->_paymentRequest _isAMPPayment])
          {
            requestType = [(PKPaymentRequest *)self->_paymentRequest requestType];
            if (requestType > 5 || ((1 << requestType) & 0x2C) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_30;
        }

        [(PKPaymentAuthorizationDataModel *)self setPass:passSerialNumber];
        selfCopy2 = self;
        v22 = passSerialNumber;
      }

      firstObject = [(PKPaymentAuthorizationDataModel *)selfCopy2 defaultSelectedPaymentApplicationForPass:v22];
      [(PKPaymentAuthorizationDataModel *)self setPaymentApplication:firstObject];
    }

    goto LABEL_27;
  }

LABEL_30:
  paymentContentItems = [(PKPaymentRequest *)self->_paymentRequest paymentContentItems];
  v25 = [paymentContentItems count];

  if (v25)
  {
    paymentContentItems2 = [(PKPaymentRequest *)self->_paymentRequest paymentContentItems];
    [(PKPaymentAuthorizationDataModel *)self setPaymentContentItems:paymentContentItems2];
  }

LABEL_32:
  recurringPaymentRequest = [(PKPaymentRequest *)self->_paymentRequest recurringPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setRecurringPaymentRequest:recurringPaymentRequest];

  automaticReloadPaymentRequest = [(PKPaymentRequest *)self->_paymentRequest automaticReloadPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setAutomaticReloadPaymentRequest:automaticReloadPaymentRequest];

  deferredPaymentRequest = [(PKPaymentRequest *)self->_paymentRequest deferredPaymentRequest];
  [(PKPaymentAuthorizationDataModel *)self setDeferredPaymentRequest:deferredPaymentRequest];

  multiTokenContexts = [(PKPaymentRequest *)self->_paymentRequest multiTokenContexts];
  [(PKPaymentAuthorizationDataModel *)self setMultiTokenContexts:multiTokenContexts];

  if ([(PKPaymentRequest *)self->_paymentRequest supportsCouponCode])
  {
    couponCode = [(PKPaymentRequest *)self->_paymentRequest couponCode];
    [(PKPaymentAuthorizationDataModel *)self setCouponCode:couponCode];
  }

  availableShippingMethods = [(PKPaymentRequest *)self->_paymentRequest availableShippingMethods];
  methods = [availableShippingMethods methods];
  v34 = [methods count];

  if (v34)
  {
    availableShippingMethods2 = [(PKPaymentRequest *)self->_paymentRequest availableShippingMethods];
    defaultMethod = [availableShippingMethods2 defaultMethod];
    [(PKPaymentAuthorizationDataModel *)self setShippingMethod:defaultMethod];
  }

  v37 = PKShippingTypeToString([(PKPaymentRequest *)self->_paymentRequest shippingType]);
  [(PKPaymentAuthorizationDataModel *)self setShippingType:v37];

  [(PKPaymentAuthorizationDataModel *)self setShippingEditable:[(PKPaymentRequest *)self->_paymentRequest isShippingEditable]];
  shippingEditableMessage = [(PKPaymentRequest *)self->_paymentRequest shippingEditableMessage];
  [(PKPaymentAuthorizationDataModel *)self setShippingEditableMessage:shippingEditableMessage];

  requiredBillingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredBillingContactFields];
  v40 = [requiredBillingContactFields containsObject:@"post"];

  if (v40)
  {
    billingContact = [(PKPaymentRequest *)self->_paymentRequest billingContact];

    paymentRequest = self->_paymentRequest;
    if (billingContact)
    {
      billingContact2 = [(PKPaymentRequest *)paymentRequest billingContact];
      cnMutableContact = [billingContact2 cnMutableContact];
    }

    else if ([(PKPaymentRequest *)paymentRequest billingAddress])
    {
      cnMutableContact = [MEMORY[0x1E695CD58] contactWithABRecordRef:{-[PKPaymentRequest billingAddress](self->_paymentRequest, "billingAddress")}];
    }

    else
    {
      cnMutableContact = 0;
    }

    [(PKPaymentAuthorizationDataModel *)self setBillingAddress:cnMutableContact];
  }

  shippingContact = [(PKPaymentRequest *)self->_paymentRequest shippingContact];

  v46 = self->_paymentRequest;
  if (shippingContact)
  {
    shippingContact2 = [(PKPaymentRequest *)v46 shippingContact];
    cnMutableContact2 = [shippingContact2 cnMutableContact];

    [cnMutableContact2 setContactSource:4];
  }

  else if ([(PKPaymentRequest *)v46 shippingAddress])
  {
    cnMutableContact2 = [MEMORY[0x1E695CD58] contactWithABRecordRef:{-[PKPaymentRequest shippingAddress](self->_paymentRequest, "shippingAddress")}];
  }

  else
  {
    cnMutableContact2 = 0;
  }

  requiredShippingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([requiredShippingContactFields containsObject:@"post"])
  {
    postalAddresses = [cnMutableContact2 postalAddresses];
    v51 = [postalAddresses count];

    if (v51)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingAddress:cnMutableContact2];
    }
  }

  else
  {
  }

  requiredShippingContactFields2 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([requiredShippingContactFields2 containsObject:@"email"])
  {
    requiredShippingContactFields = [cnMutableContact2 emailAddresses];
    v53 = [requiredShippingContactFields count];

    if (v53)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingEmail:cnMutableContact2];
    }
  }

  else
  {
  }

  requiredShippingContactFields3 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  if ([requiredShippingContactFields3 containsObject:@"phone"])
  {
    requiredShippingContactFields = [cnMutableContact2 phoneNumbers];
    v55 = [requiredShippingContactFields count];

    if (v55)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingPhone:cnMutableContact2];
    }
  }

  else
  {
  }

  requiredShippingContactFields4 = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v57 = [requiredShippingContactFields4 containsObject:@"name"];
  if (v57 & 1) != 0 || (-[PKPaymentRequest requiredShippingContactFields](self->_paymentRequest, "requiredShippingContactFields"), requiredShippingContactFields = objc_claimAutoreleasedReturnValue(), ([requiredShippingContactFields containsObject:@"phoneticName"]))
  {
    shippingContact3 = [(PKPaymentRequest *)self->_paymentRequest shippingContact];
    name = [shippingContact3 name];

    if ((v57 & 1) == 0)
    {
    }

    if (name)
    {
      [(PKPaymentAuthorizationDataModel *)self setShippingName:cnMutableContact2];
    }
  }

  else
  {
  }

  if ([(PKPaymentRequest *)self->_paymentRequest isPeerPaymentRequest])
  {
    v60 = +[PKPassLibrary sharedInstance];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v62 = [v60 passWithUniqueID:associatedPassUniqueID];
    peerPaymentPass = self->_peerPaymentPass;
    self->_peerPaymentPass = v62;

    peerPaymentRequest = [(PKPaymentRequest *)self->_paymentRequest peerPaymentRequest];
    peerPaymentQuote = [peerPaymentRequest peerPaymentQuote];
    v66 = self->_peerPaymentPass;
    currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    [(PKSecureElementPass *)v66 setPeerPaymentBalance:currentBalance];

    [(PKPaymentAuthorizationDataModel *)self setPeerPaymentQuote:peerPaymentQuote];
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2 && [(PKPaymentRequest *)self->_paymentRequest accountPaymentSupportsPeerPayment])
  {
    v68 = +[PKPassLibrary sharedInstance];
    associatedPassUniqueID2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v70 = [v68 passWithUniqueID:associatedPassUniqueID2];
    v71 = self->_peerPaymentPass;
    self->_peerPaymentPass = v70;

    v72 = self->_peerPaymentPass;
    currentBalance2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    [(PKSecureElementPass *)v72 setPeerPaymentBalance:currentBalance2];

    peerPaymentBalance = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
    accountPaymentUsePeerPaymentBalance = [(PKPaymentRequest *)self->_paymentRequest accountPaymentUsePeerPaymentBalance];
    self->_usePeerPaymentBalance = accountPaymentUsePeerPaymentBalance;
    if (accountPaymentUsePeerPaymentBalance)
    {
      [(PKPaymentAuthorizationDataModel *)self setPeerPaymentBalanceForAccountPayment:peerPaymentBalance];
    }
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2)
  {
    bankAccounts = [(PKPaymentRequest *)self->_paymentRequest bankAccounts];
    v77 = [bankAccounts count];

    if (v77)
    {
      bankAccounts2 = [(PKPaymentRequest *)self->_paymentRequest bankAccounts];
      accountServiceTransferRequest = [(PKPaymentRequest *)self->_paymentRequest accountServiceTransferRequest];
      v80 = accountServiceTransferRequest;
      if (!accountServiceTransferRequest || ([accountServiceTransferRequest defaultBankAccount], (firstObject2 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        firstObject2 = [bankAccounts2 firstObject];
        if ([bankAccounts2 count] >= 2)
        {
          v82 = PKSharedCacheGetStringForKey(@"LastBankAccountIdentifier");
          if ([v82 length])
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            obj = bankAccounts2;
            v83 = [obj countByEnumeratingWithState:&v101 objects:v107 count:16];
            if (v83)
            {
              v84 = v83;
              v97 = firstObject2;
              v98 = v80;
              v99 = bankAccounts2;
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
                  identifier = [v87 identifier];
                  v89 = v82;
                  v90 = identifier;
                  v91 = v90;
                  if (v89 == v90)
                  {

LABEL_95:
                    firstObject2 = v87;

                    v80 = v98;
                    bankAccounts2 = v99;
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
              bankAccounts2 = v99;
              firstObject2 = v97;
            }

LABEL_96:
          }
        }
      }

      [(PKPaymentAuthorizationDataModel *)self setBankAccount:firstObject2];
      v93 = [(PKPaymentAuthorizationDataModel *)self itemForType:9];
      peerPaymentBalance2 = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
      [v93 setPeerPaymentBalance:peerPaymentBalance2];
    }
  }

  if ([(PKPaymentRequest *)self->_paymentRequest requestType]== 2)
  {
    [(PKPaymentAuthorizationDataModel *)self setPaymentDateForPaymentRequest:self->_paymentRequest];
  }

  [(PKPaymentAuthorizationDataModel *)self _updatePeerPaymentPromotionAvailability];
  paymentOffersController = self->_paymentOffersController;
  uniqueID = [(PKObject *)self->_pass uniqueID];
  [(PKPaymentOffersController *)paymentOffersController setSelectedPassUniqueID:uniqueID];
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
  requestType = [(PKPaymentRequest *)self->_paymentRequest requestType];
  v4 = self->_mode == 1 && requestType == 0;
  if (!v4 || [(PKPaymentRequest *)self->_paymentRequest isPeerPaymentRequest]|| !self->_peerPaymentPass)
  {
    return;
  }

  v18 = [(PKPaymentAuthorizationDataModel *)self itemForType:+[PKPaymentCardDataItem dataType]];
  if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsCardBalancePromotion])
  {
    goto LABEL_12;
  }

  uniqueID = [(PKObject *)self->_pass uniqueID];
  uniqueID2 = [(PKObject *)self->_peerPaymentPass uniqueID];
  v7 = uniqueID2;
  if (!uniqueID || !uniqueID2)
  {

    if (uniqueID == v7)
    {
      goto LABEL_12;
    }

LABEL_15:
    peerPaymentBalance = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
    paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
    lastObject = [paymentSummaryItems lastObject];

    if ([lastObject type])
    {
LABEL_16:
      v12 = 0;
LABEL_22:
      [v18 setShowPeerPaymentBalance:v12];
      [v18 setPeerPaymentBalance:peerPaymentBalance];

      goto LABEL_23;
    }

    currency = [peerPaymentBalance currency];
    currencyCode = [(PKPaymentRequest *)self->_paymentRequest currencyCode];
    if ([currency caseInsensitiveCompare:currencyCode])
    {
      v12 = 0;
    }

    else
    {
      amount = [peerPaymentBalance amount];
      amount2 = [lastObject amount];
      v17 = [amount compare:amount2];

      if (v17 == -1)
      {
        goto LABEL_16;
      }

      currency = [MEMORY[0x1E696AB90] zero];
      currencyCode = [lastObject amount];
      v12 = [currency compare:currencyCode] == -1;
    }

    goto LABEL_22;
  }

  v8 = [uniqueID isEqual:uniqueID2];

  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  [v18 setShowPeerPaymentBalance:0];
LABEL_23:
}

- (void)updatePeerPaymentPromotionForPeerPaymentQuote:(BOOL)quote
{
  if (self->_supportsPreservePeerPaymentBalance)
  {
    peerPaymentQuote = self->_peerPaymentQuote;
    if (peerPaymentQuote)
    {
      quoteCopy = quote;
      if ([(PKPeerPaymentQuote *)peerPaymentQuote hasRecipient])
      {
        v10 = [(PKPaymentAuthorizationDataModel *)self itemForType:+[PKPaymentCardDataItem dataType]];
        if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsCardBalancePromotion])
        {
          peerPaymentBalance = [(PKSecureElementPass *)self->_peerPaymentPass peerPaymentBalance];
          if (peerPaymentBalance)
          {
            zero = [MEMORY[0x1E696AB90] zero];
            amount = [peerPaymentBalance amount];
            v9 = [zero compare:amount] == -1;
          }

          else
          {
            v9 = 0;
          }

          [v10 setShowPeerPaymentBalance:quoteCopy & v9];
          [v10 setPeerPaymentBalance:peerPaymentBalance];
        }

        else
        {
          [v10 setShowPeerPaymentBalance:0];
        }
      }
    }
  }
}

- (id)enhancedMerchantInfoForPass:(id)pass
{
  if ([pass isAppleCardPass])
  {
    v4 = self->_appleCardEnhancedMerchant;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEnhancedMerchantInfo:(id)info forPass:(id)pass
{
  infoCopy = info;
  if ([pass isAppleCardPass])
  {
    appleCardEnhancedMerchant = self->_appleCardEnhancedMerchant;
    if (infoCopy && appleCardEnhancedMerchant)
    {
      if ([(PKAccountEnhancedMerchant *)appleCardEnhancedMerchant isEqual:infoCopy])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (appleCardEnhancedMerchant != infoCopy)
    {
LABEL_7:
      objc_storeStrong(&self->_appleCardEnhancedMerchant, info);
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

- (void)_didSetItemForClass:(Class)class
{
  [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:?];
  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:[(objc_class *)class dataType]];
  if ([v5 status] == 1)
  {
    -[PKPaymentAuthorizationDataModel setStatus:forItemWithType:notify:](self, "setStatus:forItemWithType:notify:", 0, [v5 type], 0);
  }
}

- (void)_ensureItemForClass:(Class)class
{
  v5 = [(PKPaymentAuthorizationDataModel *)self itemForType:[(objc_class *)class dataType]];
  if (!v5)
  {
    v6 = [[class alloc] initWithModel:self];
    [(PKPaymentAuthorizationDataModel *)self _setDataItem:v6];
    v5 = v6;
  }
}

- (void)_removeDataItem:(id)item
{
  if (item)
  {
    items = self->_items;
    itemCopy = item;
    [(NSMutableArray *)items removeObject:itemCopy];
    typeToItemMap = self->_typeToItemMap;
    v7 = MEMORY[0x1E696AD98];
    type = [itemCopy type];

    v9 = [v7 numberWithInteger:type];
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
  requiredShippingContactFields = [(PKPaymentRequest *)self->_paymentRequest requiredShippingContactFields];
  v4 = [requiredShippingContactFields containsObject:@"post"];

  if (v4)
  {
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  }

  if ([(PKPaymentAuthorizationDataModel *)self shouldUpdateContactDataItem])
  {
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  }

  paymentSummaryItems = [(PKPaymentRequest *)self->_paymentRequest paymentSummaryItems];
  v6 = [paymentSummaryItems count];

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

- (id)_inAppPaymentPassesForPaymentRequest:(id)request
{
  requestCopy = request;
  library = [(PKPaymentAuthorizationDataModel *)self library];
  v6 = [library _sortedPaymentPassesForPaymentRequest:requestCopy];

  v7 = [(PKPaymentAuthorizationDataModel *)self _filterAndProcessPaymentPassesUsingConfiguration:v6];

  return v7;
}

- (id)_inAppPrivateLabelPaymentPasses
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_hostApplicationIdentifier)
  {
    originatingURL = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

    if (!originatingURL)
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

  originatingURL2 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  library = [(PKPaymentAuthorizationDataModel *)self library];
  if (originatingURL2)
  {
    originatingURL3 = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
    host = [originatingURL3 host];
    supportedCountries = [(PKPaymentRequest *)self->_paymentRequest supportedCountries];
    v12 = [library inAppPrivateLabelPaymentPassesForWebDomain:host issuerCountryCodes:supportedCountries isMultiTokensRequest:{-[PKPaymentRequest isMultiTokenRequest](self->_paymentRequest, "isMultiTokenRequest")}];
  }

  else
  {
    hostApplicationIdentifier = self->_hostApplicationIdentifier;
    originatingURL3 = [(PKPaymentRequest *)self->_paymentRequest supportedCountries];
    v12 = [library inAppPrivateLabelPaymentPassesForApplicationIdentifier:hostApplicationIdentifier issuerCountryCodes:originatingURL3 isMultiTokensRequest:{-[PKPaymentRequest isMultiTokenRequest](self->_paymentRequest, "isMultiTokenRequest")}];
  }

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"ingestedDate" ascending:1];
  v19 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v16 = [v12 sortedArrayUsingDescriptors:v15];

  v17 = [(PKPaymentAuthorizationDataModel *)self _filterAndProcessPaymentPassesUsingConfiguration:v16];

  return v17;
}

- (id)_filterAndProcessPaymentApplicationsUsingConfiguration:(id)configuration withPrimaryPaymentApplication:(id)application passHasAssociatedPeerPaymentAccount:(BOOL)account
{
  applicationCopy = application;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke;
  v27[3] = &unk_1E79CC2F0;
  v27[4] = self;
  v8 = [configuration pk_objectsPassingTest:v27];
  originatingURL = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  if (originatingURL)
  {
    v10 = self->_paymentWebService;
    context = [(PKPaymentWebService *)v10 context];
    configuration = [context configuration];
    unsupportedWebPaymentConfigurations = [configuration unsupportedWebPaymentConfigurations];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __156__PKPaymentAuthorizationDataModel__filterAndProcessPaymentApplicationsUsingConfiguration_withPrimaryPaymentApplication_passHasAssociatedPeerPaymentAccount___block_invoke_2;
    v25[3] = &unk_1E79CC318;
    v25[4] = self;
    v26 = unsupportedWebPaymentConfigurations;
    v14 = unsupportedWebPaymentConfigurations;
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

  v19 = PKSortedPaymentApplicationsByAID(v8, applicationCopy, 1);

  countryCode = [(PKPaymentRequest *)self->_paymentRequest countryCode];
  v21 = PKSortedPaymentApplicationsBySupportedInAppMerchantCountryCode(v19, countryCode);

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

- (id)_filterAndProcessPaymentPassesUsingConfiguration:(id)configuration
{
  v39 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [configurationCopy count];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = @"N";
    if (!configurationCopy)
    {
      v21 = @"Y";
    }

    *buf = 134218242;
    v36 = v5;
    v37 = 2112;
    v38 = v21;
    _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Pass filtering: Passes passed into _filterAndProcessPaymentPassesUsingConfiguration: %ld, isNil: %@", buf, 0x16u);
  }

  originatingURL = [(PKPaymentRequest *)self->_paymentRequest originatingURL];

  if (originatingURL)
  {
    v8 = self->_paymentWebService;
    context = [(PKPaymentWebService *)v8 context];
    configuration = [context configuration];
    unsupportedWebPaymentConfigurations = [configuration unsupportedWebPaymentConfigurations];

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
    v13 = unsupportedWebPaymentConfigurations;
    v33 = v13;
    v14 = [configurationCopy pk_objectsPassingTest:v32];

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
    v14 = configurationCopy;
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

- (void)_populatePeerPaymentBalanceIfNecessaryForPasses:(id)passes
{
  v16 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  associatedPassSerialNumber = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassSerialNumber];
  v6 = associatedPassSerialNumber;
  if (self->_peerPaymentAccount)
  {
    v7 = associatedPassSerialNumber == 0;
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
    v13 = associatedPassSerialNumber;
    v8 = [passesCopy pk_firstObjectPassingTest:v12];
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
        formattedStringValue = [v10 formattedStringValue];
        *buf = 138412290;
        v15 = formattedStringValue;
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

- (void)_populateFinanceKitBalancesIfNecessaryForPasses:(id)passes
{
  passesCopy = passes;
  if (PKBankConnectEnabled())
  {
    objc_initWeak(&location, self);
    balancesProviderQueue = self->_balancesProviderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKPaymentAuthorizationDataModel__populateFinanceKitBalancesIfNecessaryForPasses___block_invoke;
    block[3] = &unk_1E79C54B8;
    objc_copyWeak(&v8, &location);
    v7 = passesCopy;
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

- (id)_formatAddressContactIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = necessaryCopy;
  contactFormatValidator = self->_contactFormatValidator;
  v7 = necessaryCopy;
  if (contactFormatValidator)
  {
    postalAddresses = [necessaryCopy postalAddresses];
    firstObject = [postalAddresses firstObject];
    value = [firstObject value];
    v11 = [(PKContactFormatValidator *)contactFormatValidator formatPostalAddress:value];

    v7 = v5;
    if (v11)
    {
      v12 = [v5 mutableCopy];
      postalAddresses2 = [v12 postalAddresses];
      firstObject2 = [postalAddresses2 firstObject];

      v15 = [firstObject2 labeledValueBySettingValue:v11];

      postalAddresses3 = [v12 postalAddresses];
      v17 = [postalAddresses3 mutableCopy];

      [v17 setObject:v15 atIndexedSubscript:0];
      v18 = [v17 copy];
      [v12 setPostalAddresses:v18];

      v7 = [v12 copy];
      valueSource = [v5 valueSource];
      [v7 setValueSource:valueSource];

      [v7 setFormattingConstrained:1];
    }
  }

  return v7;
}

- (id)paymentErrorsFromLegacyStatus:(int64_t)status
{
  v23[1] = *MEMORY[0x1E69E9840];
  switch(status)
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
      pk_paymentErrorWithLocalizedDescription = [v6 pk_paymentErrorWithLocalizedDescription];
      v17 = pk_paymentErrorWithLocalizedDescription;
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
      pk_paymentErrorWithLocalizedDescription = [v6 pk_paymentErrorWithLocalizedDescription];
      v20 = pk_paymentErrorWithLocalizedDescription;
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
      pk_paymentErrorWithLocalizedDescription = [v6 pk_paymentErrorWithLocalizedDescription];
      v23[0] = pk_paymentErrorWithLocalizedDescription;
      v8 = v23;
LABEL_7:
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status
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

        if (![*(*(&v18 + 1) + 8 * i) isValidWithError:error errorStatus:status])
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
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3008 userInfo:0];
      *error = v16 = 0;
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

- (void)setPaymentPassWithPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v12[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  identifierCopy = identifier;
  library = [(PKPaymentAuthorizationDataModel *)self library];
  v9 = [library passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  paymentPass = [v9 paymentPass];

  [(PKPaymentAuthorizationDataModel *)self setPass:paymentPass];
  if (paymentPass)
  {
    v12[0] = paymentPass;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(PKPaymentAuthorizationDataModel *)self _populatePeerPaymentBalanceIfNecessaryForPasses:v11];
  }
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
  [(PKPaymentAuthorizationDataModel *)self setPass:passCopy withSelectedPaymentApplication:devicePrimaryInAppPaymentApplication];
}

- (void)setPass:(id)pass withSelectedPaymentApplication:(id)application
{
  passCopy = pass;
  applicationCopy = application;
  objc_storeStrong(&self->_pass, pass);
  objc_storeStrong(&self->_paymentApplication, application);
  if (!self->_paymentApplication)
  {
    v8 = [(PKPaymentAuthorizationDataModel *)self defaultSelectedPaymentApplicationForPass:passCopy];
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
  uniqueID = [(PKObject *)self->_pass uniqueID];
  [(PKPaymentOffersController *)paymentOffersController setSelectedPassUniqueID:uniqueID];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setPaymentApplication:(id)application
{
  objc_storeStrong(&self->_paymentApplication, application);
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

- (void)setRemoteDevice:(id)device
{
  deviceCopy = device;
  if (self->_mode == 1)
  {
    v6 = deviceCopy;
    objc_storeStrong(&self->_remoteDevice, device);
    deviceCopy = v6;
  }
}

- (void)setRemotePaymentInstrument:(id)instrument withSelectedPaymentApplication:(id)application
{
  instrumentCopy = instrument;
  applicationCopy = application;
  remotePaymentInstrument = self->_remotePaymentInstrument;
  self->_remotePaymentInstrument = instrumentCopy;
  v9 = instrumentCopy;

  paymentApplication = self->_paymentApplication;
  self->_paymentApplication = applicationCopy;
  v11 = applicationCopy;

  [(PKPaymentAuthorizationDataModel *)self updateBillingErrors];
  v12 = objc_opt_class();

  [(PKPaymentAuthorizationDataModel *)self _didSetItemForClass:v12];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setRemotePaymentInstrument:(id)instrument
{
  instrumentCopy = instrument;
  v5 = [(PKPaymentAuthorizationDataModel *)self defaultSelectedPaymentApplicationForRemoteInstrument:instrumentCopy];
  [(PKPaymentAuthorizationDataModel *)self setRemotePaymentInstrument:instrumentCopy withSelectedPaymentApplication:v5];
}

- (void)updateRemoteDevices:(id)devices ignoreProximity:(BOOL)proximity
{
  proximityCopy = proximity;
  v55 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  [(NSMapTable *)self->_instrumentToDeviceMap removeAllObjects];
  [(NSMutableDictionary *)self->_remoteDeviceToAcceptedInstruments removeAllObjects];
  [(NSMutableDictionary *)self->_acceptedApplications removeAllObjects];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v49 = proximityCopy;
    v50 = 2112;
    v51 = devicesCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Updating remote devices for payment authorization model, ignoreProximity: %ld, remoteDevices: %@", buf, 0x16u);
  }

  self->_ignoreProximity = proximityCopy;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__PKPaymentAuthorizationDataModel_updateRemoteDevices_ignoreProximity___block_invoke;
  v47[3] = &unk_1E79CC428;
  v47[4] = self;
  v10 = [devicesCopy pk_objectsPassingTest:v47];

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
  paymentRequestSupportedRemoteQuery = [(PKPaymentAuthorizationDataModel *)self paymentRequestSupportedRemoteQuery];
  v12 = [PKRemoteDevice acceptedComparatorWithPaymentSupportedQuery:paymentRequestSupportedRemoteQuery];
  v39 = v10;
  v13 = [v10 sortedArrayUsingComparator:v12];
  allRemoteDevices = self->_allRemoteDevices;
  self->_allRemoteDevices = v13;

  objc_storeStrong(&self->_allAcceptedRemotePaymentInstruments, v7);
  objc_storeStrong(&self->_allUnavailableRemotePaymentInstruments, v8);
  originatingURL = [(PKPaymentRequest *)self->_paymentRequest originatingURL];
  host = [originatingURL host];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  firstObject = [(NSArray *)self->_allRemoteDevices firstObject];
  remotePaymentInstruments = [firstObject remotePaymentInstruments];

  v19 = [remotePaymentInstruments countByEnumeratingWithState:&v40 objects:v54 count:16];
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
          objc_enumerationMutation(remotePaymentInstruments);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        if ([v23 supportsAutomaticSelection])
        {
          associatedWebDomains = [v23 associatedWebDomains];
          v25 = [associatedWebDomains containsObject:host];

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

      v20 = [remotePaymentInstruments countByEnumeratingWithState:&v40 objects:v54 count:16];
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
    firstObject2 = [(NSArray *)self->_allRemoteDevices firstObject];
    remotePaymentInstruments2 = [firstObject2 remotePaymentInstruments];
    firstObject3 = [remotePaymentInstruments2 firstObject];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = [firstObject2 deviceName];
      uniqueID = [firstObject2 uniqueID];
      *buf = 138412802;
      v49 = deviceName;
      v50 = 2112;
      v51 = uniqueID;
      v52 = 2112;
      v53 = firstObject3;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Selecting default remote device name: %@, uniqueID: %@, payment instrument: %@", buf, 0x20u);
    }

    remotePaymentInstrument = self->_remotePaymentInstrument;
    self->_remotePaymentInstrument = firstObject3;
    v33 = firstObject3;

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
      paymentPass = [v7 paymentPass];

      if (paymentPass)
      {
        v20[0] = paymentPass;
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

      paymentPass = [(PKPaymentAuthorizationDataModel *)self _inAppPaymentPassesForPaymentRequest:self->_paymentRequest];
      supportedNetworks = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
      v12 = [supportedNetworks containsObject:@"PrivateLabel"];

      if (v12)
      {
        _inAppPrivateLabelPaymentPasses = [(PKPaymentAuthorizationDataModel *)self _inAppPrivateLabelPaymentPasses];
        v14 = [MEMORY[0x1E695DEC8] arrayWithArray:paymentPass];
        v15 = [v14 arrayByAddingObjectsFromArray:_inAppPrivateLabelPaymentPasses];

        paymentPass = v15;
      }

      objc_storeStrong(p_acceptedPasses, paymentPass);
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
  acceptedPasses = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
  v3 = [acceptedPasses countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(acceptedPasses);
      }

      paymentPass = [*(*(&v9 + 1) + 8 * v6) paymentPass];
      if ([paymentPass isAppleCardPass])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [acceptedPasses countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    paymentPass = 0;
  }

  return paymentPass;
}

- (id)paymentRequestSupportedRemoteQuery
{
  supportedNetworks = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
  v4 = [supportedNetworks pk_arrayByApplyingBlock:&__block_literal_global_157];

  requestType = [(PKPaymentRequest *)self->_paymentRequest requestType];
  merchantCapabilities = [(PKPaymentRequest *)self->_paymentRequest merchantCapabilities];
  countryCode = [(PKPaymentRequest *)self->_paymentRequest countryCode];
  if (requestType == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaymentRequest requestType](self->_paymentRequest, "requestType")}];
    LOBYTE(v11) = [(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest];
    v9 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v4 merchantCapabilities:merchantCapabilities merchantCountryCode:countryCode paymentMode:2 paymentApplicationStates:0 paymentRequestType:v8 isMultiTokensRequest:v11 webService:self->_paymentWebService];
  }

  else
  {
    v9 = [PKPaymentRequestSupportedQuery webQueryWithSupportedNetworkIDs:v4 merchantCapabilities:merchantCapabilities merchantCountryCode:countryCode paymentMode:2 paymentApplicationStates:0 isMultiTokensRequest:[(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest] webService:self->_paymentWebService];
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
    supportedNetworks = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
    v4 = PKPaymentCredentialTypesForPaymentNetworkNames(supportedNetworks);
    merchantCapabilities = [(PKPaymentRequest *)self->_paymentRequest merchantCapabilities];
    countryCode = [(PKPaymentRequest *)self->_paymentRequest countryCode];
    requestedMode = [(PKPaymentAuthorizationDataModel *)self requestedMode];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaymentRequest requestType](self->_paymentRequest, "requestType")}];
    LOBYTE(v11) = [(PKPaymentRequest *)self->_paymentRequest isMultiTokenRequest];
    v9 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:v4 merchantCapabilities:merchantCapabilities merchantCountryCode:countryCode paymentMode:requestedMode paymentApplicationStates:0 paymentRequestType:v8 isMultiTokensRequest:v11 webService:self->_paymentWebService];
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

- (id)acceptedPaymentApplicationsForPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  if (uniqueID)
  {
    v6 = [(NSMutableDictionary *)self->_acceptedApplications objectForKey:uniqueID];
    if (!v6)
    {
      deviceInAppPaymentApplications = [passCopy deviceInAppPaymentApplications];
      allObjects = [deviceInAppPaymentApplications allObjects];
      devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
      v6 = -[PKPaymentAuthorizationDataModel _filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:](self, "_filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:", allObjects, devicePrimaryInAppPaymentApplication, [passCopy hasAssociatedPeerPaymentAccount]);

      [(NSMutableDictionary *)self->_acceptedApplications setObject:v6 forKey:uniqueID];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unavailablePaymentApplicationsForPass:(id)pass
{
  acceptedApplications = self->_acceptedApplications;
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v6 = [(NSMutableDictionary *)acceptedApplications objectForKey:uniqueID];
  v7 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_161];

  deviceInAppPaymentApplications = [passCopy deviceInAppPaymentApplications];

  allObjects = [deviceInAppPaymentApplications allObjects];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __73__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForPass___block_invoke_2;
  v17 = &unk_1E79CC4E0;
  v18 = v7;
  v19 = &__block_literal_global_161;
  v10 = v7;
  v11 = [allObjects indexesOfObjectsPassingTest:&v14];
  v12 = [allObjects objectsAtIndexes:{v11, v14, v15, v16, v17}];

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

- (id)defaultSelectedPaymentApplicationForPass:(id)pass
{
  if (pass)
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

- (id)defaultSelectedPaymentApplicationForRemoteInstrument:(id)instrument
{
  if (instrument)
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

- (id)_defaultSelectedPaymentApplicationForPaymentApplications:(id)applications
{
  v32 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  if ([applicationsCopy count] <= 1)
  {
    firstObject = [applicationsCopy firstObject];
    goto LABEL_29;
  }

  supportedNetworks = [(PKPaymentRequest *)self->_paymentRequest supportedNetworks];
  if ([supportedNetworks count])
  {
    respectSupportedNetworksOrder = [(PKPaymentRequest *)self->_paymentRequest respectSupportedNetworksOrder];
  }

  else
  {
    respectSupportedNetworksOrder = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = applicationsCopy;
  obj = applicationsCopy;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    inAppPriority = 0x7FFFFFFFFFFFFFFFLL;
    v24 = respectSupportedNetworksOrder;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      countryCode = [(PKPaymentRequest *)self->_paymentRequest countryCode];
      v15 = [v13 isRequiredForMerchantInCountry:countryCode];

      if (v15)
      {
        firstObject = v13;

        goto LABEL_28;
      }

      if (respectSupportedNetworksOrder)
      {
        v16 = PKPaymentNetworkNameForPaymentCredentialType([v13 paymentNetworkIdentifier]);
        v17 = [supportedNetworks indexOfObject:v16];
        v18 = v17;
        if (inAppPriority == 0x7FFFFFFFFFFFFFFFLL || v17 < inAppPriority || v17 == inAppPriority && (v19 = [v13 inAppPriority], v18 = inAppPriority, v20 = v19 <= objc_msgSend(v9, "inAppPriority"), respectSupportedNetworksOrder = v24, !v20))
        {
          v21 = v13;

          inAppPriority = v18;
          v9 = v21;
          respectSupportedNetworksOrder = v24;
        }
      }

      else
      {
        if (inAppPriority != 0x7FFFFFFFFFFFFFFFLL && [v13 inAppPriority] <= inAppPriority)
        {
          goto LABEL_22;
        }

        inAppPriority = [v13 inAppPriority];
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
  firstObject = v9;
LABEL_28:

  applicationsCopy = v23;
LABEL_29:

  return firstObject;
}

- (id)acceptedRemotePaymentInstrumentsForRemoteDevice:(id)device
{
  remoteDeviceToAcceptedInstruments = self->_remoteDeviceToAcceptedInstruments;
  uniqueID = [device uniqueID];
  v5 = [(NSMutableDictionary *)remoteDeviceToAcceptedInstruments objectForKey:uniqueID];

  return v5;
}

- (id)acceptedPaymentApplicationsForRemoteInstrument:(id)instrument
{
  instrumentCopy = instrument;
  v5 = [(NSMutableDictionary *)self->_acceptedApplications objectForKey:instrumentCopy];
  if (!v5)
  {
    paymentApplications = [instrumentCopy paymentApplications];
    primaryPaymentApplication = [instrumentCopy primaryPaymentApplication];
    v5 = -[PKPaymentAuthorizationDataModel _filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:](self, "_filterAndProcessPaymentApplicationsUsingConfiguration:withPrimaryPaymentApplication:passHasAssociatedPeerPaymentAccount:", paymentApplications, primaryPaymentApplication, [instrumentCopy hasAssociatedPeerPaymentAccount]);

    [(NSMutableDictionary *)self->_acceptedApplications setObject:v5 forKey:instrumentCopy];
  }

  return v5;
}

- (id)unavailablePaymentApplicationsForRemoteInstrument:(id)instrument
{
  acceptedApplications = self->_acceptedApplications;
  instrumentCopy = instrument;
  v5 = [(NSMutableDictionary *)acceptedApplications objectForKey:instrumentCopy];
  v6 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_163];

  paymentApplications = [instrumentCopy paymentApplications];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __85__PKPaymentAuthorizationDataModel_unavailablePaymentApplicationsForRemoteInstrument___block_invoke_2;
  v15 = &unk_1E79CC4E0;
  v16 = v6;
  v17 = &__block_literal_global_163;
  v8 = v6;
  v9 = [paymentApplications indexesOfObjectsPassingTest:&v12];
  v10 = [paymentApplications objectsAtIndexes:{v9, v12, v13, v14, v15}];

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

- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)service forPass:(id)pass
{
  passCopy = pass;
  v7 = [PKWebServiceMerchantCategoryCodesFeature merchantCategoryCodesFeatureWithWebService:service];
  if (v7 && [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode])
  {
    appleCardUnsupportedMerchantCategoryCodes = [v7 appleCardUnsupportedMerchantCategoryCodes];
    appleCashUnsupportedMerchantCategoryCodes = [v7 appleCashUnsupportedMerchantCategoryCodes];
    merchantCategoryCode = [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode];
    if ([passCopy isPeerPaymentPass] && (v11 = appleCashUnsupportedMerchantCategoryCodes) != 0 || (v12 = 1, objc_msgSend(passCopy, "isAppleCardPass")) && (v11 = appleCardUnsupportedMerchantCategoryCodes) != 0)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithShort:merchantCategoryCode];
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

- (BOOL)canSupportMerchantCategoryCodeAccordingToWebService:(id)service forPaymentInstrument:(id)instrument
{
  serviceCopy = service;
  instrumentCopy = instrument;
  if (([instrumentCopy associatedAccountFeatureIdentifier] - 3) >= 0xFFFFFFFFFFFFFFFELL && -[PKPaymentRequest merchantCategoryCode](self->_paymentRequest, "merchantCategoryCode"))
  {
    v8 = [PKWebServiceMerchantCategoryCodesFeature merchantCategoryCodesFeatureWithWebService:serviceCopy];
    v9 = v8;
    if (v8)
    {
      appleCardUnsupportedMerchantCategoryCodes = [v8 appleCardUnsupportedMerchantCategoryCodes];
      appleCashUnsupportedMerchantCategoryCodes = [v9 appleCashUnsupportedMerchantCategoryCodes];
      merchantCategoryCode = [(PKPaymentRequest *)self->_paymentRequest merchantCategoryCode];
      if ([instrumentCopy associatedAccountFeatureIdentifier] == 1 && (v13 = appleCashUnsupportedMerchantCategoryCodes) != 0 || (v14 = 1, objc_msgSend(instrumentCopy, "associatedAccountFeatureIdentifier") == 2) && (v13 = appleCardUnsupportedMerchantCategoryCodes) != 0)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithShort:merchantCategoryCode];
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

- (BOOL)canSupportDisbursementsOnRemoteDevice:(id)device
{
  deviceCopy = device;
  v4 = ([deviceCopy type] || objc_msgSend(deviceCopy, "majorOperatingSystemVersion") >= 11) && (objc_msgSend(deviceCopy, "type") != 1 || objc_msgSend(deviceCopy, "majorOperatingSystemVersion") >= 18);

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
      associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      [v4 safelyAddObject:associatedPassUniqueID];
    }

    acceptedPasses = [(PKPaymentAuthorizationDataModel *)self acceptedPasses];
    v8 = [acceptedPasses valueForKey:@"uniqueID"];

    library = [(PKPaymentAuthorizationDataModel *)self library];
    v10 = [library passesOfType:1];

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
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self paymentApplication];
  if ([paymentApplication inAppPINRequired])
  {
    inAppPINRequiredCurrency = [paymentApplication inAppPINRequiredCurrency];
    currencyCode = [(PKPaymentAuthorizationDataModel *)self currencyCode];
    v6 = [inAppPINRequiredCurrency caseInsensitiveCompare:currencyCode];

    inAppPINRequiredAmount = [paymentApplication inAppPINRequiredAmount];
    transactionAmount = [(PKPaymentAuthorizationDataModel *)self transactionAmount];
    v9 = [inAppPINRequiredAmount compare:transactionAmount];

    pass = [(PKPaymentAuthorizationDataModel *)self pass];
    v11 = [(PKPaymentAuthorizationDataModel *)self _statusForPass:pass];

    v14 = v9 == -1 || v11 == 3 || v6 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setStatus:(int64_t)status forItemWithType:(int64_t)type notify:(BOOL)notify
{
  notifyCopy = notify;
  v10 = [(PKPaymentAuthorizationDataModel *)self itemForType:type];
  [v10 setStatus:status];
  if (type == 3)
  {
    pass = [v10 pass];
    [(PKPaymentAuthorizationDataModel *)self _setStatus:status forPass:pass];
  }

  if (notifyCopy)
  {
    [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
  }
}

- (void)_setStatus:(int64_t)status forPass:(id)pass
{
  if (pass)
  {
    statusForPass = self->_statusForPass;
    v6 = MEMORY[0x1E696AD98];
    passCopy = pass;
    v9 = [v6 numberWithInteger:status];
    uniqueID = [passCopy uniqueID];

    [(NSMutableDictionary *)statusForPass setObject:v9 forKey:uniqueID];
  }
}

- (int64_t)_statusForPass:(id)pass
{
  statusForPass = self->_statusForPass;
  uniqueID = [pass uniqueID];
  v5 = [(NSMutableDictionary *)statusForPass objectForKey:uniqueID];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
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

- (void)showPeerPaymentCardDataItem:(BOOL)item withCardDataItem:(BOOL)dataItem
{
  dataItemCopy = dataItem;
  itemCopy = item;
  if (!item)
  {
    v8 = [(PKPaymentAuthorizationDataModel *)self itemForType:2];
    if (v8)
    {
      [(PKPaymentAuthorizationDataModel *)self _removeDataItem:v8];
    }

    if (!dataItemCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
    goto LABEL_10;
  }

  [(PKPaymentAuthorizationDataModel *)self _ensureItemForClass:objc_opt_class()];
  if (dataItemCopy)
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

  [(PKPaymentAuthorizationDataModel *)self updatePeerPaymentPromotionForPeerPaymentQuote:dataItemCopy & ~itemCopy];
}

- (void)paymentOffersDidUpdate
{
  [(PKPaymentAuthorizationDataModel *)self recomputeHasAnyPaymentOffers];

  [(PKPaymentAuthorizationDataModel *)self _notifyModelChanged];
}

- (void)setSelectedPaymentOffer:(id)offer
{
  objc_storeStrong(&self->_selectedPaymentOffer, offer);
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

- (void)setPaymentOffersController:(id)controller
{
  objc_storeStrong(&self->_paymentOffersController, controller);

  [(PKPaymentAuthorizationDataModel *)self recomputeHasAnyPaymentOffers];
}

- (unint64_t)connectedCardStateForPass:(id)pass
{
  passCopy = pass;
  primaryAccountIdentifiersWithConnectedCardStateSet = [(PKPaymentAuthorizationDataModel *)self primaryAccountIdentifiersWithConnectedCardStateSet];
  primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
  v7 = [primaryAccountIdentifiersWithConnectedCardStateSet containsObject:primaryAccountIdentifier];

  if (v7)
  {
    bankConnectAccount = [passCopy bankConnectAccount];
    if (bankConnectAccount)
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