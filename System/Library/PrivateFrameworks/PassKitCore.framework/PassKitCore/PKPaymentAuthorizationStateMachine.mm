@interface PKPaymentAuthorizationStateMachine
- (BOOL)_canUpdateWithAutomaticReloadPaymentRequest:(id)request error:(id *)error;
- (BOOL)_canUpdateWithBillingAgreement:(id)agreement oldAgreement:(id)oldAgreement error:(id *)error;
- (BOOL)_canUpdateWithDeferredPaymentRequest:(id)request error:(id *)error;
- (BOOL)_canUpdateWithMultiTokenContexts:(id)contexts error:(id *)error;
- (BOOL)_canUpdateWithRecurringPaymentRequest:(id)request error:(id *)error;
- (BOOL)_isDeviceTransactionAssessmentEnabled;
- (BOOL)_isMerchantTokensSupported;
- (BOOL)_isMultiTokenContextsSupported;
- (BOOL)_isRequestUsedForTransactionAssessment;
- (BOOL)_purchaseSupportsPaymentOffers;
- (BOOL)canSelectPaymentOptions;
- (BOOL)isErrorAboutPostalAddressField:(id)field;
- (NSString)description;
- (PKBluetoothMonitorer)bluetoothMonitor;
- (PKPaymentAuthorizationStateMachine)init;
- (PKPaymentAuthorizationStateMachineDelegate)delegate;
- (PKPaymentSheetExperiment)paymentSheetExperiment;
- (id)_billingInformationFromPaymentRequest:(id)request;
- (id)_createNewRemotePaymentRequest;
- (id)_dequeuePendingCallbackParam;
- (id)_inAppSessionAuthorizationRequest;
- (id)_pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:(id)quote;
- (id)_pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:(id)quote;
- (id)_rewrapCompleteSessionRequestWithParam:(id)param serviceURL:(id *)l;
- (id)_transactionWithPaymentToken:(id)token;
- (id)_transactionWithPurchase:(id)purchase paymentHash:(id)hash;
- (id)_updateRewrapBaseRequest:(id)request param:(id)param;
- (id)acceptedPassForProvisionedPass:(id)pass;
- (int64_t)statusFromPaymentError:(id)error;
- (unint64_t)_adamIdentifier;
- (void)__setState:(unint64_t)state param:(id)param;
- (void)_advanceToNextStateFromResolveError:(BOOL)error;
- (void)_applyBillingInformationToAuthorizedQuote:(id)quote;
- (void)_applyBillingInformationToPayment:(id)payment;
- (void)_applyFulfillmentMethodToPayment:(id)payment;
- (void)_applyShippingInformationToPayment:(id)payment;
- (void)_applyWebServiceConfigurationIfNeeded;
- (void)_augmentBaseRequestWithCompletion:(id)completion;
- (void)_augmentSessionResponseWithCompletion:(id)completion;
- (void)_cancelClientCallbackTimer;
- (void)_clientCallbackTimedOut;
- (void)_computeAssessmentIfNecessary;
- (void)_configurePaymentOffersIfNeeded;
- (void)_deviceUpdateDidFailWithNoEiligbleRemoteDevices:(id)devices;
- (void)_dispatchNextCallbackParam;
- (void)_emitSignpostEvent:(unint64_t)event;
- (void)_enqeueDidAuthorizePurchaseWithParam:(id)param;
- (void)_enqueueCallbackOfKind:(int64_t)kind withObject:(id)object;
- (void)_enqueueDidAuthorizePaymentWithByPassPayment:(id)payment rewrapResponse:(id)response;
- (void)_enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:(id)token rewrapResponse:(id)response;
- (void)_enqueueDidAuthorizePaymentWithPayment:(id)payment rewrapResponse:(id)response;
- (void)_enqueueDidAuthorizePaymentWithRemotePayment:(id)payment rewrapResponse:(id)response;
- (void)_enqueueDidAuthorizePaymentWithToken:(id)token rewrapResponse:(id)response;
- (void)_enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:(id)quote;
- (void)_enqueueDidSelectBankAccount:(id)account;
- (void)_enqueueDidSelectPaymentMethodWithBindToken:(id)token;
- (void)_enqueueDidSelectPaymentMethodWithQuote:(id)quote;
- (void)_enqueueDidSelectPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential;
- (void)_enqueueDidSelectRemotePaymentInstrument:(id)instrument;
- (void)_enqueueDidSelectRemotePaymentInstrument:(id)instrument paymentApplication:(id)application;
- (void)_enqueueDidSelectShippingContact:(id)contact;
- (void)_enqueueInitialCallbacks;
- (void)_enrichPaymentRewardsRedemptionWithPaymentTransaction:(id)transaction usingPass:(id)pass;
- (void)_fetchPaymentOffersIfNeeded;
- (void)_handleStateMachineWillStartNotification:(id)notification;
- (void)_insertPendingOrderDetails:(BOOL *)details;
- (void)_insertPendingPaymentTransactionsWithParam:(id)param;
- (void)_insertPendingTransactionRegistration;
- (void)_nonceResponseWithCompletion:(id)completion;
- (void)_performAuthorizationWithParam:(id)param;
- (void)_performDataProcessingWithParam:(id)param;
- (void)_performDidAuthorizeCallbackWithParam:(id)param;
- (void)_performInstallmentBind;
- (void)_performNonceRequestWithParam:(id)param;
- (void)_performPassRewardsUpdateForCooldownLevel:(unint64_t)level ignoreErrorBackoff:(BOOL)backoff merchantIdentifier:(id)identifier;
- (void)_performPrepareTransactionDetailsRequestWithParam:(id)param;
- (void)_performRewrapRequestImplWithParam:(id)param;
- (void)_performRewrapRequestWithParam:(id)param;
- (void)_performSendClientUpdateWithShippingMethods:(id)methods paymentSummaryItems:(id)items multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest paymentApplication:(id)application status:(int64_t)self0;
- (void)_performSendPaymentResult:(id)result;
- (void)_performSendRemotePaymentRequest;
- (void)_performUpdatePaymentDevices;
- (void)_postStateMachineWillStartNotification;
- (void)_processBluetoothState:(int64_t)state;
- (void)_processErrorsForDataType:(int64_t)type;
- (void)_processPaymentRewardsRedemption:(id)redemption;
- (void)_promptTapToRadar;
- (void)_purchaseMerchantIdentifier:(id *)identifier originURL:(id *)l webMerchantIdentifier:(id *)merchantIdentifier webMerchantName:(id *)name adamIdentifier:(id *)adamIdentifier isMerchantTokenRequest:(BOOL *)request isMultiTokenRequest:(BOOL *)tokenRequest;
- (void)_registerForNotifications;
- (void)_removeWebServiceConfigurationIfNeeded;
- (void)_reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:(id)dictionary eventType:(id)type;
- (void)_reportToAutoBugCapture:(id)capture;
- (void)_retrieveVPANPaymentSession;
- (void)_sendDidTransitionFromState:(unint64_t)state toState:(unint64_t)toState withParam:(id)param;
- (void)_setState:(unint64_t)state param:(id)param;
- (void)_simulatePayment;
- (void)_start;
- (void)_startAssessmentIfNecessary;
- (void)_startClientCallbackTimer;
- (void)_startHandoff;
- (void)_startPayment;
- (void)_startRemoteDeviceUpdate;
- (void)_trackCouponCodeOutcomeWithError:(id)error;
- (void)_unregisterForNotifications;
- (void)_updateAssessmentAttributes;
- (void)_updateModelBillingAddressIfNeededForPass:(id)pass;
- (void)_updateModelCanAddPasses;
- (void)_updateModelWithPaymentSummaryItems:(id)items;
- (void)_updateModelWithRemoteDevices:(id)devices;
- (void)_updateModelWithShippingMethods:(id)methods paymentSummaryItems:(id)items multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest contentItems:(id)contentItems;
- (void)_updatePassRewardsInfo;
- (void)_updatePaymentRequestBillingAddressWithPaymentMethod:(id)method;
- (void)_updateRewrapRequest:(id)request param:(id)param serviceURL:(id *)l;
- (void)continuityPaymentCoordinator:(id)coordinator didReceivePayment:(id)payment;
- (void)continuityPaymentCoordinator:(id)coordinator didReceiveUpdatedPaymentDevices:(id)devices;
- (void)continuityPaymentCoordinator:(id)coordinator didTimeoutTotalWithPaymentDevices:(id)devices;
- (void)continuityPaymentCoordinatorDidReceiveCancellation:(id)cancellation;
- (void)continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices:(id)devices;
- (void)dealloc;
- (void)delayAuthorizedStateByDuration:(double)duration;
- (void)didAuthenticateWithAuthenticatorEvaluationResponse:(id)response;
- (void)didAuthenticateWithCredential:(id)credential;
- (void)didBecomeActive:(BOOL)active;
- (void)didBecomeArmable:(BOOL)armable;
- (void)didBecomeOccluded:(BOOL)occluded;
- (void)didCancel;
- (void)didChangeCouponCode:(id)code;
- (void)didChangeFundingMode:(int64_t)mode;
- (void)didChangePeerPaymentUsage:(BOOL)usage;
- (void)didEncounterError:(id)error;
- (void)didEncounterFatalError:(id)error;
- (void)didEncounterShippingEmailError:(id)error;
- (void)didReceiveCouponCodeCompleteWithUpdate:(id)update;
- (void)didReceiveMerchantSessionCompleteWithSession:(id)session error:(id)error;
- (void)didReceiveMerchantSessionCompleteWithUpdate:(id)update;
- (void)didReceivePaymentAuthorizationResult:(id)result;
- (void)didReceivePaymentAuthorizationStatus:(int64_t)status;
- (void)didReceivePaymentMethodCompleteWithSummaryItems:(id)items;
- (void)didReceivePaymentMethodCompleteWithUpdate:(id)update;
- (void)didReceiveShippingContactCompleteWithStatus:(int64_t)status shippingMethods:(id)methods paymentSummaryItems:(id)items;
- (void)didReceiveShippingContactCompleteWithUpdate:(id)update;
- (void)didReceiveShippingMethodCompleteWithStatus:(int64_t)status paymentSummaryItems:(id)items;
- (void)didReceiveShippingMethodCompleteWithUpdate:(id)update;
- (void)didReceiveUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)update signatureRequest:(id)request;
- (void)didRequestRefreshPaymentMethods;
- (void)didResignActive:(BOOL)active;
- (void)didResolveError;
- (void)didResolveLoadingState;
- (void)didSelectBankAccount:(id)account;
- (void)didSelectBillingAddress:(id)address;
- (void)didSelectPaymentOffer:(id)offer updateReason:(unint64_t)reason;
- (void)didSelectPaymentPass:(id)pass paymentApplication:(id)application;
- (void)didSelectPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential;
- (void)didSelectRemotePaymentInstrument:(id)instrument;
- (void)didSelectRemotePaymentInstrument:(id)instrument paymentApplication:(id)application;
- (void)didSelectShippingContact:(id)contact;
- (void)didSelectShippingEmail:(id)email;
- (void)didSelectShippingName:(id)name;
- (void)didSelectShippingPhoneNumber:(id)number;
- (void)invalidate;
- (void)paymentOfferActionsChanged:(id)changed;
- (void)paymentOfferCatalogChanged:(id)changed;
- (void)paymentOfferDynamicContentChanged:(id)changed;
- (void)paymentOfferMerchandisingChanged:(id)changed;
- (void)paymentOffersChanged:(id)changed forPassUniqueIdentifier:(id)identifier;
- (void)selectedPaymentOfferChanged:(id)changed forPassUniqueIdentifier:(id)identifier;
- (void)setAccountService:(id)service;
- (void)setBluetoothMonitor:(id)monitor;
- (void)setCancelReason:(int64_t)reason;
- (void)setModel:(id)model;
- (void)setPaymentService:(id)service;
- (void)setPaymentWebService:(id)service;
- (void)setPeerPaymentService:(id)service;
- (void)start;
@end

@implementation PKPaymentAuthorizationStateMachine

- (PKPaymentAuthorizationStateMachine)init
{
  v12.receiver = self;
  v12.super_class = PKPaymentAuthorizationStateMachine;
  v2 = [(PKPaymentAuthorizationStateMachine *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v2->_updatePaymentDeviceTimeout = 10.0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    instanceIdentifier = v3->_instanceIdentifier;
    v3->_instanceIdentifier = uUIDString;

    v7 = dispatch_group_create();
    delayAuthorizedStateGroup = v3->_delayAuthorizedStateGroup;
    v3->_delayAuthorizedStateGroup = v7;

    v9 = +[PKSecureElement sharedSecureElement];
    secureElement = v3->_secureElement;
    v3->_secureElement = v9;
  }

  return v3;
}

- (void)dealloc
{
  [(PKPaymentAuthorizationStateMachine *)self invalidate];
  [(PKPaymentAuthorizationStateMachine *)self _clientCallbackTimedOut];
  [(PKPaymentAuthorizationStateMachine *)self _unregisterForNotifications];
  if (self->_enhancedMerchantsFetcherUpdateToken)
  {
    [(PKAccountEnhancedMerchantsFetcher *)self->_enhancedMerchantsFetcher removeUpdateHandler:?];
  }

  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationStateMachine;
  [(PKPaymentAuthorizationStateMachine *)&v3 dealloc];
}

- (void)_setState:(unint64_t)state param:(id)param
{
  paramCopy = param;
  if (state == 12)
  {
    objc_initWeak(&location, self);
    delayAuthorizedStateGroup = self->_delayAuthorizedStateGroup;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PKPaymentAuthorizationStateMachine__setState_param___block_invoke;
    v8[3] = &unk_1E79CE020;
    objc_copyWeak(v10, &location);
    v10[1] = 12;
    v9 = paramCopy;
    dispatch_group_notify(delayAuthorizedStateGroup, MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKPaymentAuthorizationStateMachine *)self __setState:state param:paramCopy];
  }
}

void __54__PKPaymentAuthorizationStateMachine__setState_param___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained __setState:*(a1 + 48) param:*(a1 + 32)];
}

- (void)__setState:(unint64_t)state param:(id)param
{
  v76[5] = *MEMORY[0x1E69E9840];
  paramCopy = param;
  state = self->_state;
  self->_state = state;
  [(PKPaymentAuthorizationStateMachine *)self _sendDidTransitionFromState:state toState:state withParam:paramCopy];
  error = 0;
  if (state > 11)
  {
    if (state > 15)
    {
      switch(state)
      {
        case 0x10uLL:
          [(PKPaymentAuthorizationStateMachine *)self _removeWebServiceConfigurationIfNeeded];
          [(PKPaymentAuthorizationStateMachine *)self _insertPendingPaymentTransactionsWithParam:paramCopy];
          v69 = 0;
          [(PKPaymentAuthorizationStateMachine *)self _insertPendingOrderDetails:&v69];
          if ((v69 & 1) == 0)
          {
            [(PKPaymentAuthorizationStateMachine *)self _insertPendingTransactionRegistration];
          }

          break;
        case 0x11uLL:
          [(PKPaymentAuthorizationStateMachine *)self _performDataProcessingWithParam:paramCopy];
          break;
        case 0x12uLL:
          goto LABEL_26;
      }
    }

    else
    {
      if (state - 14 < 2)
      {
        error = [paramCopy error];
        goto LABEL_26;
      }

      if (state == 12)
      {
        [(PKPaymentAuthorizationStateMachine *)self _performDidAuthorizeCallbackWithParam:paramCopy];
      }
    }
  }

  else if (state > 8)
  {
    if (state == 9)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performNonceRequestWithParam:paramCopy];
    }

    else if (state == 10)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performAuthorizationWithParam:paramCopy];
    }

    else
    {
      [(PKPaymentAuthorizationStateMachine *)self _performRewrapRequestWithParam:paramCopy];
    }
  }

  else
  {
    switch(state)
    {
      case 3uLL:
        error = [paramCopy error];
        -[PKPaymentAuthorizationDataModel setStatus:forItemWithType:](self->_model, "setStatus:forItemWithType:", [paramCopy status], objc_msgSend(paramCopy, "dataType"));
        goto LABEL_26;
      case 5uLL:
        goto LABEL_26;
      case 8uLL:
        [(PKPaymentAuthorizationStateMachine *)self _performPrepareTransactionDetailsRequestWithParam:paramCopy];
        break;
    }
  }

  error = 0;
LABEL_26:
  domain = [error domain];
  v10 = [domain isEqualToString:@"PKPassKitErrorDomain"];

  if (v10)
  {
    v59 = paramCopy;
    domain2 = [error domain];
    code = [error code];
    userInfo = [error userInfo];
    v13 = [userInfo PKBoolForKey:@"PKPaymentErrorIsFieldEmpty"];

    localizedFailureReason = [error localizedFailureReason];
    if (!localizedFailureReason)
    {
      localizedFailureReason = [error localizedDescription];
    }

    userInfo2 = [error userInfo];
    v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    domain3 = [v16 domain];
    v18 = [domain3 isEqualToString:@"PKPassKitErrorDomain"];

    v57 = error;
    v58 = v16;
    if (v18)
    {
      domain4 = [v16 domain];

      code2 = [v16 code];
      userInfo3 = [error userInfo];
      v22 = [userInfo3 PKBoolForKey:@"PKPaymentErrorIsFieldEmpty"];

      localizedFailureReason2 = [v16 localizedFailureReason];

      if (localizedFailureReason2)
      {
        localizedFailureReason = localizedFailureReason2;
      }

      else
      {
        localizedFailureReason = [v16 localizedDescription];
      }

      domain2 = domain4;
    }

    else
    {
      v22 = v13;
      code2 = code;
    }

    paramCopy = v59;
    v64 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:localizedFailureReason]];
    has_internal_ui = os_variant_has_internal_ui();
    if (has_internal_ui)
    {
      v24 = localizedFailureReason;
    }

    else
    {
      v24 = 0;
    }

    v75[0] = @"authorizationError";
    if (code2 > -2017)
    {
      switch(code2)
      {
        case -2016:
          v25 = @"provisioningError";
          break;
        case -2015:
          v25 = @"bluetoothUnavailable";
          break;
        case -2014:
        case -2013:
        case -2007:
        case -2006:
        case -2005:
        case -2004:
          v25 = @"serverError";
          break;
        case -2012:
          v25 = @"authenticatorError";
          break;
        case -2011:
          v25 = @"continuityPaymentError";
          break;
        case -2010:
          v25 = @"continuitySendError";
          break;
        case -2009:
          v25 = @"continuityDeviceDisappeared";
          break;
        case -2008:
          v25 = @"continuityTimeout";
          break;
        case -2003:
          v25 = @"callbackSequenceError";
          break;
        case -2002:
          v25 = @"unexpectedReply";
          break;
        case -2001:
          v25 = @"callbackStatusError";
          break;
        case -2000:
          v25 = @"unknownError";
          break;
        default:
          if (code2 == -1001)
          {
            v25 = @"extensionNotFound";
          }

          else
          {
            if (code2 != -1002)
            {
              goto LABEL_127;
            }

            v25 = @"errorInstantiatingExtension";
          }

          break;
      }
    }

    else if (code2 > -3018)
    {
      switch(code2)
      {
        case -3017:
          v25 = @"verificationRequiredError";
          break;
        case -3016:
          v25 = @"minimumAmountError";
          break;
        case -3015:
          v25 = @"maximumAmountError";
          break;
        case -3013:
          v25 = @"cardUnsupported";
          break;
        case -3012:
          v25 = @"cardEmpty";
          break;
        case -3011:
          v25 = @"cardPINIncorrect";
          break;
        case -3010:
          v25 = @"invalidShippingContact";
          break;
        case -3009:
          v25 = @"cardInsufficientBalance";
          break;
        case -3008:
          v25 = @"paymentInstructionsError";
          break;
        case -3007:
          v25 = @"shippingPhoneticNameError";
          break;
        case -3006:
          v25 = @"shippingNameError";
          break;
        case -3005:
          v25 = @"shippingEmailError";
          break;
        case -3004:
          v25 = @"shippingPhoneError";
          break;
        case -3003:
          v25 = @"shippingAddressError";
          break;
        case -3002:
          v25 = @"billingAddressError";
          break;
        case -3001:
          v25 = @"cardLockedOut";
          break;
        case -3000:
          v25 = @"invalidPaymentCard";
          break;
        default:
          goto LABEL_127;
      }
    }

    else if (code2 <= -5001)
    {
      switch(code2)
      {
        case -6000:
          v25 = @"signatureCheckUnreachableError";
          break;
        case -5002:
          v25 = @"cloudStoreNotEntitledForMethodError";
          break;
        case -5001:
          v25 = @"cloudStoreCannotInitalizeContainerError";
          break;
        default:
LABEL_127:
          v25 = @"unknown";
          break;
      }
    }

    else
    {
      switch(code2)
      {
        case -4013:
          v25 = @"cloudStoreQueryCancelled";
          break;
        case -4012:
          v25 = @"cloudStoreCreateZoneFailed";
          break;
        case -4011:
          v25 = @"cloudStoreCopyDataFailed";
          break;
        case -4010:
          v25 = @"cloudStoreNoRecordNameForItem";
          break;
        case -4009:
          v25 = @"cloudStoreNoAssociatedContainer";
          break;
        case -4008:
          v25 = @"cloudStoreInvalidAccountState";
          break;
        case -4007:
          v25 = @"cloudStoreInitializationTimeOut";
          break;
        case -4006:
          v25 = @"cloudStoreInvalidCloudStoreState";
          break;
        case -4005:
          v25 = @"cloudStoreNotManateeCapable";
          break;
        case -4004:
          v25 = @"cloudStoreCannotPerformAction";
          break;
        case -4003:
          v25 = @"cloudStoreArgumentMismatch";
          break;
        case -4002:
          v25 = @"cloudStoreNoRecordTypeForItem";
          break;
        case -4001:
          v25 = @"cloudStoreNoZoneForItem";
          break;
        case -4000:
          v25 = @"cloudStoreUnknownError";
          break;
        default:
          if (code2 != -5000)
          {
            goto LABEL_127;
          }

          v25 = @"cloudStoreNotInitalizedError";
          break;
      }
    }

    v26 = domain2;
    if (!domain2)
    {
      v26 = &stru_1F227FD28;
    }

    v76[0] = v25;
    v76[1] = v26;
    v75[1] = @"errorDomain";
    v75[2] = @"errorCode";
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", code2];
    v28 = v27;
    if (v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = &stru_1F227FD28;
    }

    v76[2] = v27;
    v76[3] = v29;
    v75[3] = @"errorText";
    v75[4] = @"errorTextGroup";
    v30 = v64;
    if (!v64)
    {
      v30 = &stru_1F227FD28;
    }

    v76[4] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:5];
    [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v31 eventType:@"transactionAuthorizationError"];

    v32 = v16;
    if (v22)
    {
      v74[0] = @"fieldEmpty";
      v73[0] = @"eventType";
      v73[1] = @"errorType";
      if ((code2 + 3007) > 5)
      {
        v33 = @"unknown";
      }

      else
      {
        v33 = off_1E79CE6C8[code2 + 3007];
      }

      v74[1] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v34];
    }

    if (state == 3)
    {
      [v59 clientErrors];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v68 = 0u;
      v35 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v66;
        do
        {
          v38 = 0;
          v62 = v36;
          do
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v65 + 1) + 8 * v38);
            domain5 = [v39 domain];
            v41 = [domain5 isEqualToString:@"PKPaymentErrorDomain"];

            if (v41)
            {
              code3 = [v39 code];
              localizedFailureReason3 = [v39 localizedFailureReason];

              localizedDescription = localizedFailureReason3;
              if (!localizedFailureReason3)
              {
                localizedDescription = [v39 localizedDescription];
              }

              v45 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:localizedDescription]];

              v46 = localizedDescription;
              if (has_internal_ui)
              {
                v47 = localizedDescription;
              }

              else
              {
                v47 = 0;
              }

              v71[0] = @"transactionAuthorizationClientError";
              v70[0] = @"eventType";
              v70[1] = @"authorizationError";
              v48 = @"unknown";
              if ((code3 - 1) <= 2)
              {
                v48 = off_1E79CE6F8[code3 - 1];
              }

              v71[1] = v48;
              v70[2] = @"errorDomain";
              domain6 = [v39 domain];
              v50 = domain6;
              if (domain6)
              {
                v51 = domain6;
              }

              else
              {
                v51 = &stru_1F227FD28;
              }

              v71[2] = v51;
              v70[3] = @"errorCode";
              v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", code3];
              v53 = v52;
              if (v47)
              {
                v54 = v47;
              }

              else
              {
                v54 = &stru_1F227FD28;
              }

              v71[3] = v52;
              v71[4] = v54;
              v70[4] = @"errorText";
              v70[5] = @"errorTextGroup";
              if (v45)
              {
                v55 = v45;
              }

              else
              {
                v55 = &stru_1F227FD28;
              }

              v71[5] = v55;
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
              [PKAnalyticsReporter subject:@"inApp" sendEvent:v56];

              v64 = v45;
              v24 = v47;
              localizedFailureReason = v46;
              v36 = v62;
            }

            ++v38;
          }

          while (v36 != v38);
          v36 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
        }

        while (v36);
      }

      v32 = v58;
      paramCopy = v59;
    }

    error = v57;
  }
}

- (PKPaymentSheetExperiment)paymentSheetExperiment
{
  paymentSheetExperiment = self->_paymentSheetExperiment;
  if (!paymentSheetExperiment)
  {
    v4 = objc_alloc_init(PKPaymentSheetExperiment);
    v5 = self->_paymentSheetExperiment;
    self->_paymentSheetExperiment = v4;

    paymentSheetExperiment = self->_paymentSheetExperiment;
  }

  return paymentSheetExperiment;
}

- (PKBluetoothMonitorer)bluetoothMonitor
{
  bluetoothMonitor = self->_bluetoothMonitor;
  if (!bluetoothMonitor)
  {
    v4 = [[PKBluetoothMonitorer alloc] initWithManagerOptions:0];
    v5 = self->_bluetoothMonitor;
    self->_bluetoothMonitor = v4;

    [(PKBluetoothMonitorer *)self->_bluetoothMonitor setDelegate:self];
    bluetoothMonitor = self->_bluetoothMonitor;
  }

  return bluetoothMonitor;
}

- (void)setBluetoothMonitor:(id)monitor
{
  monitorCopy = monitor;
  [(PKBluetoothMonitorer *)self->_bluetoothMonitor setDelegate:0];
  [(PKBluetoothMonitorer *)monitorCopy setDelegate:self];
  bluetoothMonitor = self->_bluetoothMonitor;
  self->_bluetoothMonitor = monitorCopy;
}

- (void)setPaymentService:(id)service
{
  objc_storeStrong(&self->_paymentService, service);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setPaymentWebService:(id)service
{
  objc_storeStrong(&self->_paymentWebService, service);
  [(PKPaymentAuthorizationStateMachine *)self _applyWebServiceConfigurationIfNeeded];

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setAccountService:(id)service
{
  objc_storeStrong(&self->_accountService, service);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setPeerPaymentService:(id)service
{
  objc_storeStrong(&self->_peerPaymentService, service);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setModel:(id)model
{
  objc_storeStrong(&self->_model, model);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)_applyWebServiceConfigurationIfNeeded
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  paymentWebService = self->_paymentWebService;
  if (paymentWebService)
  {
    v5 = paymentRequest == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sessionConfiguration = [(PKWebService *)paymentWebService sessionConfiguration];
    sourceApplicationBundleIdentifier = [paymentRequest sourceApplicationBundleIdentifier];

    v8 = sourceApplicationBundleIdentifier != 0;
    if (sourceApplicationBundleIdentifier)
    {
      v9 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request has source application bundle, applying network configuration", buf, 2u);
      }

      sourceApplicationBundleIdentifier2 = [paymentRequest sourceApplicationBundleIdentifier];
      [sessionConfiguration set_sourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier2];
    }

    sourceApplicationSecondaryIdentifier = [paymentRequest sourceApplicationSecondaryIdentifier];

    if (sourceApplicationSecondaryIdentifier)
    {
      v12 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request has secondary application identifier, applying network configuration", v16, 2u);
      }

      sourceApplicationSecondaryIdentifier2 = [paymentRequest sourceApplicationSecondaryIdentifier];
      [sessionConfiguration set_sourceApplicationSecondaryIdentifier:sourceApplicationSecondaryIdentifier2];

      v8 = 1;
    }

    cTDataConnectionServiceType = [paymentRequest CTDataConnectionServiceType];

    if (cTDataConnectionServiceType)
    {
      cTDataConnectionServiceType2 = [paymentRequest CTDataConnectionServiceType];
      [sessionConfiguration set_CTDataConnectionServiceType:cTDataConnectionServiceType2];
    }

    else if (!v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    [(PKWebService *)self->_paymentWebService refreshSessionWithConfiguration:sessionConfiguration];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_purchaseMerchantIdentifier:(id *)identifier originURL:(id *)l webMerchantIdentifier:(id *)merchantIdentifier webMerchantName:(id *)name adamIdentifier:(id *)adamIdentifier isMerchantTokenRequest:(BOOL *)request isMultiTokenRequest:(BOOL *)tokenRequest
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  merchantSession = [paymentRequest merchantSession];
  originatingURL = [paymentRequest originatingURL];
  host = [originatingURL host];

  merchantIdentifier = [paymentRequest merchantIdentifier];
  if ([(PKPaymentAuthorizationStateMachine *)self _adamIdentifier])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PKPaymentAuthorizationStateMachine _adamIdentifier](self, "_adamIdentifier")}];
  }

  else
  {
    v32 = 0;
  }

  nameCopy = name;
  requestCopy = request;
  if (host)
  {
    merchantIdentifier2 = [merchantSession merchantIdentifier];

    domain = [merchantSession domain];
    host = [merchantSession merchantIdentifier];
    displayName = [merchantSession displayName];
    merchantIdentifier = merchantIdentifier2;
  }

  else
  {
    displayName = 0;
    domain = 0;
  }

  recurringPaymentRequest = [paymentRequest recurringPaymentRequest];
  automaticReloadPaymentRequest = [paymentRequest automaticReloadPaymentRequest];
  if (recurringPaymentRequest | automaticReloadPaymentRequest)
  {
    _isMerchantTokensSupported = [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported];
  }

  else
  {
    _isMerchantTokensSupported = 0;
  }

  if ([paymentRequest isMultiTokenRequest])
  {
    _isMultiTokenContextsSupported = [(PKPaymentAuthorizationStateMachine *)self _isMultiTokenContextsSupported];
  }

  else
  {
    _isMultiTokenContextsSupported = 0;
  }

  lCopy2 = l;
  if (identifier)
  {
    v24 = merchantIdentifier;
    lCopy2 = l;
    *identifier = merchantIdentifier;
  }

  if (lCopy2)
  {
    v25 = lCopy2;
    v26 = domain;
    *v25 = domain;
  }

  if (merchantIdentifier)
  {
    v27 = host;
    *merchantIdentifier = host;
  }

  if (nameCopy)
  {
    v28 = displayName;
    *nameCopy = displayName;
  }

  if (adamIdentifier)
  {
    v29 = v32;
    *adamIdentifier = v32;
  }

  if (requestCopy)
  {
    *requestCopy = _isMerchantTokensSupported;
  }

  if (tokenRequest)
  {
    *tokenRequest = _isMultiTokenContextsSupported;
  }
}

- (void)_removeWebServiceConfigurationIfNeeded
{
  sessionConfiguration = [(PKWebService *)self->_paymentWebService sessionConfiguration];
  _sourceApplicationBundleIdentifier = [sessionConfiguration _sourceApplicationBundleIdentifier];
  if (_sourceApplicationBundleIdentifier || ([sessionConfiguration _sourceApplicationSecondaryIdentifier], (_sourceApplicationBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [sessionConfiguration set_sourceApplicationBundleIdentifier:0];
    [sessionConfiguration set_sourceApplicationSecondaryIdentifier:0];
    [sessionConfiguration set_CTDataConnectionServiceType:0];
    [(PKWebService *)self->_paymentWebService refreshSessionWithConfiguration:sessionConfiguration];
    goto LABEL_5;
  }

  _CTDataConnectionServiceType = [sessionConfiguration _CTDataConnectionServiceType];

  if (_CTDataConnectionServiceType)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  state = self->_state;
  if (state > 0x14)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CE800[state];
  }

  v7 = [v3 stringWithFormat:@"<%@: %p state: %@", v4, self, v6];;
  if ([(NSMutableArray *)self->_callbackQueue count])
  {
    [v7 appendString:@"; callbackQueue:\n"];
    callbackQueue = self->_callbackQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PKPaymentAuthorizationStateMachine_description__block_invoke;
    v11[3] = &unk_1E79CE048;
    v12 = v7;
    selfCopy = self;
    [(NSMutableArray *)callbackQueue enumerateObjectsUsingBlock:v11];
  }

  [v7 appendString:@">"];
  v9 = [v7 copy];

  return v9;
}

unint64_t __49__PKPaymentAuthorizationStateMachine_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 136) objectAtIndex:?];
  [v5 appendFormat:@"    %@", v6];

  result = [*(*(a1 + 40) + 136) count];
  if (a3 + 1 < result)
  {
    v8 = *(a1 + 32);

    return [v8 appendString:{@", \n"}];
  }

  return result;
}

- (void)_configurePaymentOffersIfNeeded
{
  if ([(PKPaymentAuthorizationStateMachine *)self _purchaseSupportsPaymentOffers])
  {
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    totalSummaryItem = [(PKPaymentAuthorizationDataModel *)self->_model totalSummaryItem];
    *v35 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [(PKPaymentAuthorizationStateMachine *)self _purchaseMerchantIdentifier:&v34 originURL:&v33 webMerchantIdentifier:&v32 webMerchantName:&v31 adamIdentifier:&v30 isMerchantTokenRequest:&v35[1] isMultiTokenRequest:v35];
    v4 = v34;
    v29 = v33;
    v5 = v32;
    v6 = v31;
    v27 = v30;
    configuration = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    if (configuration)
    {
      v8 = configuration;
      [(PKPaymentOffersSessionDetails *)configuration updateMerchantIdentifier:v4 originURL:v29 webMerchantIdentifier:v5 webMerchantName:v6];
    }

    else
    {
      v9 = 2;
      if (!v35[1])
      {
        v9 = 0;
      }

      v25 = v4;
      v10 = v9 | v35[0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 |= 4uLL;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10 | 8;
      }

      else
      {
        v11 = v10;
      }

      v24 = [PKPaymentOffersSessionDetails alloc];
      transactionAmount = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
      currencyCode = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
      countryCode = [paymentRequest countryCode];
      merchantName = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
      [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v21 = v26 = totalSummaryItem;
      shouldUseMerchantSession = [v21 shouldUseMerchantSession];
      merchantCategoryCode = [paymentRequest merchantCategoryCode];
      supportedNetworks = [paymentRequest supportedNetworks];
      WORD1(v18) = merchantCategoryCode;
      v4 = v25;
      LOBYTE(v18) = shouldUseMerchantSession;
      v15 = countryCode;
      v8 = -[PKPaymentOffersSessionDetails initWithTransactionAmount:currencyCode:merchantCountryCode:merchantIdentifier:originURL:webMerchantIdentifier:webMerchantName:merchantName:adamIdentifier:shouldUseMerchantSession:merchantCategoryCode:supportedNetworks:merchantCapabilities:payLaterSuppressionMode:options:](v24, "initWithTransactionAmount:currencyCode:merchantCountryCode:merchantIdentifier:originURL:webMerchantIdentifier:webMerchantName:merchantName:adamIdentifier:shouldUseMerchantSession:merchantCategoryCode:supportedNetworks:merchantCapabilities:payLaterSuppressionMode:options:", transactionAmount, currencyCode, countryCode, v25, v29, v5, v6, merchantName, v27, v18, supportedNetworks, [paymentRequest merchantCapabilities], objc_msgSend(paymentRequest, "applePayLaterAvailability"), v11);

      totalSummaryItem = v26;
    }

    if (!self->_paymentOffersController)
    {
      v16 = [[PKPaymentOffersController alloc] initWithPaymentService:self->_paymentService paymentWebService:self->_paymentWebService configuration:v8];
      paymentOffersController = self->_paymentOffersController;
      self->_paymentOffersController = v16;

      [(PKPaymentOffersController *)self->_paymentOffersController registerObserver:self];
      [(PKPaymentAuthorizationDataModel *)self->_model setPaymentOffersController:self->_paymentOffersController];
    }
  }
}

- (void)_fetchPaymentOffersIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_paymentOffersController && [(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    configuration = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    transactionAmount = [configuration transactionAmount];

    transactionAmount2 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    v6 = transactionAmount2;
    if (transactionAmount && transactionAmount2)
    {
      v7 = [transactionAmount isEqual:transactionAmount2];
    }

    else
    {
      v7 = transactionAmount == transactionAmount2;
    }

    configuration2 = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    [configuration2 updateTransactionAmount:v6];

    if ((v7 & 1) == 0)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model recomputeHasAnyPaymentOffers];
    }

    v22 = 0;
    [(PKPaymentAuthorizationStateMachine *)self _purchaseMerchantIdentifier:&v22 originURL:0 webMerchantIdentifier:0 webMerchantName:0 adamIdentifier:0 isMerchantTokenRequest:0 isMultiTokenRequest:0];
    v9 = v22;
    if (v9)
    {
      if (![(PKPaymentOffersController *)self->_paymentOffersController hasFetchedCatalogFromServer])
      {
        pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
        uniqueID = [pass uniqueID];

        [(PKPaymentOffersController *)self->_paymentOffersController setSelectedPassUniqueID:uniqueID];
        [(PKPaymentOffersController *)self->_paymentOffersController updatePaymentOfferCatalogWithReason:4 completion:0];
      }

      if ((v7 & 1) == 0 && [(PKPaymentOffersController *)self->_paymentOffersController hasFetchedCatalogFromServer])
      {
        fetchedAndInflightMerchandisingIdentifiers = [(PKPaymentOffersController *)self->_paymentOffersController fetchedAndInflightMerchandisingIdentifiers];
        [(PKPaymentOffersController *)self->_paymentOffersController updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:fetchedAndInflightMerchandisingIdentifiers];
      }

      selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
      fundingMode = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];
      if (fundingMode == 2)
      {
        if (!((selectedPaymentOffer == 0) | v7 & 1))
        {
          if ([selectedPaymentOffer type] == 1)
          {
            v15 = PKLogFacilityTypeGetObject(8uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v24 = transactionAmount;
              v25 = 2112;
              v26 = v6;
              _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Payment sheet total amount has changed from %@ to %@. Updating payment offers now.", buf, 0x16u);
            }

            [(PKPaymentAuthorizationStateMachine *)self _setState:18 param:0];
            paymentOffersController = self->_paymentOffersController;
            criteriaIdentifier = [selectedPaymentOffer criteriaIdentifier];
            passDetails = [selectedPaymentOffer passDetails];
            [(PKPaymentOffersController *)paymentOffersController updatePaymentOffersForCriteriaIdentifier:criteriaIdentifier selectedPassDetails:passDetails reason:5 completion:0];
          }

          if ([selectedPaymentOffer type] == 2)
          {
            rewardsRedemptionIntent = [selectedPaymentOffer rewardsRedemptionIntent];
            monetaryValue = [rewardsRedemptionIntent monetaryValue];
            amount = [monetaryValue amount];

            if (rewardsRedemptionIntent && [v6 compare:amount] == -1)
            {
              [(PKPaymentOffersController *)self->_paymentOffersController clearCurrentSelectedPaymentOfferDetails];
              [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
            }
          }
        }
      }

      else if (!fundingMode && (v7 & 1) == 0)
      {
        [(PKPaymentOffersController *)self->_paymentOffersController removeCachedPaymentOffers];
        [(PKPaymentOffersController *)self->_paymentOffersController updatePreconfiguredOfferStateForAllPasses];
      }
    }
  }
}

- (BOOL)_purchaseSupportsPaymentOffers
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = paymentRequest;
  if (self->_paymentWebService && self->_model && self->_paymentService && ![paymentRequest requestType] && (objc_msgSend(v4, "_isAMPPayment") & 1) == 0 && -[PKPaymentAuthorizationDataModel mode](self->_model, "mode") == 1)
  {
    remoteDevice = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    v6 = remoteDevice == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)paymentOfferCatalogChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentAuthorizationStateMachine_paymentOfferCatalogChanged___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __65__PKPaymentAuthorizationStateMachine_paymentOfferCatalogChanged___block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) == *(v2 + 256))
  {
    v3 = *(v2 + 112);
    v4 = v3 > 0x10;
    v5 = (1 << v3) & 0x1A000;
    if (v4 || v5 == 0)
    {
      v7 = result;
      [*(v2 + 56) beginUpdates];
      [*(*(v7 + 40) + 56) paymentOffersDidUpdate];
      [*(*(v7 + 40) + 56) endUpdates];
      v8 = *(v7 + 40);

      return [v8 _advanceToNextState];
    }
  }

  return result;
}

- (void)paymentOffersChanged:(id)changed forPassUniqueIdentifier:(id)identifier
{
  changedCopy = changed;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentAuthorizationStateMachine_paymentOffersChanged_forPassUniqueIdentifier___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __83__PKPaymentAuthorizationStateMachine_paymentOffersChanged_forPassUniqueIdentifier___block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) == *(v2 + 256))
  {
    v3 = *(v2 + 112);
    v4 = v3 > 0x10;
    v5 = (1 << v3) & 0x1A000;
    if (v4 || v5 == 0)
    {
      v7 = result;
      [*(v2 + 56) beginUpdates];
      [*(*(v7 + 40) + 56) paymentOffersDidUpdate];
      [*(*(v7 + 40) + 56) endUpdates];
      v8 = *(v7 + 40);

      return [v8 _advanceToNextState];
    }
  }

  return result;
}

- (void)paymentOfferActionsChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentAuthorizationStateMachine_paymentOfferActionsChanged___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __65__PKPaymentAuthorizationStateMachine_paymentOfferActionsChanged___block_invoke(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) == *(v2 + 256))
  {
    v3 = *(v2 + 112);
    v4 = v3 > 0x10;
    v5 = (1 << v3) & 0x1A000;
    if (v4 || v5 == 0)
    {
      v7 = result;
      [*(v2 + 56) beginUpdates];
      [*(*(v7 + 40) + 56) paymentOffersDidUpdate];
      [*(*(v7 + 40) + 56) endUpdates];
      v8 = *(v7 + 40);

      return [v8 _advanceToNextState];
    }
  }

  return result;
}

- (void)selectedPaymentOfferChanged:(id)changed forPassUniqueIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentAuthorizationStateMachine_selectedPaymentOfferChanged_forPassUniqueIdentifier___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v11 = identifierCopy;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPaymentAuthorizationStateMachine_selectedPaymentOfferChanged_forPassUniqueIdentifier___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 7) pass];
  v3 = [v2 uniqueID];

  v4 = a1[5];
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {

LABEL_10:
    [*(a1[4] + 7) beginUpdates];
    v9 = [a1[6] selectedOfferDetails];
    v10 = a1[4];
    v11 = [v9 selectedPaymentOffer];
    [v10 didSelectPaymentOffer:v11 updateReason:2];

    [*(a1[4] + 7) endUpdates];
    [a1[4] _advanceToNextState];
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
  }

  else
  {
    v8 = [v4 isEqualToString:v5];

    if (v8)
    {
      goto LABEL_10;
    }
  }

  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[5];
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: Payment Offers Controller updated the selected offer for pass %@, but the selected pass is %@", &v13, 0x16u);
  }

LABEL_13:
}

- (void)paymentOfferDynamicContentChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPaymentAuthorizationStateMachine_paymentOfferDynamicContentChanged___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __72__PKPaymentAuthorizationStateMachine_paymentOfferDynamicContentChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) beginUpdates];
  [*(*(a1 + 32) + 56) paymentOffersDidUpdate];
  [*(*(a1 + 32) + 56) endUpdates];
  v2 = *(a1 + 32);

  return [v2 _advanceToNextState];
}

- (void)paymentOfferMerchandisingChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPaymentAuthorizationStateMachine_paymentOfferMerchandisingChanged___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__PKPaymentAuthorizationStateMachine_paymentOfferMerchandisingChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) beginUpdates];
  [*(*(a1 + 32) + 56) paymentOffersDidUpdate];
  [*(*(a1 + 32) + 56) endUpdates];
  v2 = *(a1 + 32);

  return [v2 _advanceToNextState];
}

- (void)start
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PKPaymentAuthorizationModeDescriptions[[(PKPaymentAuthorizationDataModel *)self->_model mode]];
    *buf = 138412290;
    v49 = v4;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "State machine starting for mode: %@", buf, 0xCu);
  }

  self->_hostApplicationState = 0;
  [(PKPaymentAuthorizationStateMachine *)self _postStateMachineWillStartNotification];
  [(PKPaymentAuthorizationStateMachine *)self _registerForNotifications];
  if (self->_state)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Invalid state"];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [&unk_1F23B3CE0 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v8 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(&unk_1F23B3CE0);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [(PKPaymentAuthorizationStateMachine *)self valueForKey:v10];

        if (!v11)
        {
          [MEMORY[0x1E695DF30] raise:v8 format:{@"Missing required property '%@'", v10}];
        }
      }

      v6 = [&unk_1F23B3CE0 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  mode = [(PKPaymentAuthorizationDataModel *)self->_model mode];
  if ((mode - 3) >= 2 && mode != 1)
  {
    if (mode == 2)
    {
      if (self->_continuityPaymentService)
      {
        v13 = [[PKContinuityPaymentCoordinator alloc] initWithContinuityPaymentService:self->_continuityPaymentService];
        continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
        self->_continuityPaymentCoordinator = v13;

        [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator setUpdatePaymentDeviceTimeout:self->_updatePaymentDeviceTimeout];
        [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator setDelegate:self];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Missing required property 'continuityPaymentService'", v39}];
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid mode: %d", -[PKPaymentAuthorizationDataModel mode](self->_model, "mode")}];
    }
  }

  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v16 = [PKPaymentRequestValidator validatorWithObject:paymentRequest];
  v40 = 0;
  v17 = [v16 isValidWithError:&v40];
  v18 = v40;

  if (v17)
  {
    if ([paymentRequest _isAMPPayment])
    {
      v19 = PKAggDKeyPaymentiTunesPurchasePresented;
    }

    else
    {
      if ([paymentRequest requestType])
      {
LABEL_30:
        [(PKPaymentAuthorizationStateMachine *)self _start];
        goto LABEL_31;
      }

      v19 = PKAggDKeyPaymentInAppPaymentPresent;
    }

    v22 = *v19;
    AnalyticsSendEvent();
    [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:v22 value:1];
    goto LABEL_30;
  }

  v20 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v49 = v18;
    _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Payment is invalid: %{public}@", buf, 0xCu);
  }

  v21 = [PKPaymentAuthorizationErrorStateParam paramWithError:v18];
  [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v21];

LABEL_31:
  [(PKPaymentAuthorizationStateMachine *)self _startAssessmentIfNecessary];
  multiTokenContexts = [paymentRequest multiTokenContexts];
  if ([multiTokenContexts count] && !-[PKPaymentAuthorizationStateMachine _isMultiTokenContextsSupported](self, "_isMultiTokenContextsSupported"))
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setMultiTokenContexts:MEMORY[0x1E695E0F0]];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  }

  recurringPaymentRequest = [paymentRequest recurringPaymentRequest];
  automaticReloadPaymentRequest = [paymentRequest automaticReloadPaymentRequest];
  deferredPaymentRequest = [paymentRequest deferredPaymentRequest];

  if ((recurringPaymentRequest || automaticReloadPaymentRequest || deferredPaymentRequest) && ![(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setRecurringPaymentRequest:0];
    [(PKPaymentAuthorizationDataModel *)self->_model setAutomaticReloadPaymentRequest:0];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  }

  thumbnailURLs = [paymentRequest thumbnailURLs];
  v28 = [thumbnailURLs count];

  if (v28)
  {
    AnalyticsSendEvent();
    [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:@"com.apple.passbook.payment.in-app.thumbnail" value:1];
  }

  if (![paymentRequest requestType])
  {
    merchantSession = [paymentRequest merchantSession];
    if (merchantSession)
    {

      v30 = PKAggDKeyPaymentInAppUsesMerchantSession;
    }

    else
    {
      shouldUseMerchantSession = [paymentRequest shouldUseMerchantSession];
      v30 = PKAggDKeyPaymentInAppUsesMerchantIdentifier;
      if (shouldUseMerchantSession)
      {
        v30 = PKAggDKeyPaymentInAppUsesMerchantSession;
      }
    }

    v32 = *v30;
    AnalyticsSendEvent();
    [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:v32 value:1];
  }

  aggregateDictionary = self->_aggregateDictionary;
  v34 = MEMORY[0x1E696AEC0];
  v35 = PKAggDKeyForPaymentRequestAPIType([paymentRequest APIType]);
  v36 = [v34 stringWithFormat:@"%@.%@", @"com.apple.passbook.payment.api", v35];
  [(PKAggregateDictionaryProtocol *)aggregateDictionary addValueForScalarKey:v36 value:1];

  v45 = @"api";
  v37 = PKAggDKeyForPaymentRequestAPIType([paymentRequest APIType]);
  v46 = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  AnalyticsSendEvent();

  [(PKPaymentAuthorizationStateMachine *)self _applyWebServiceConfigurationIfNeeded];
  [(PKPaymentAuthorizationStateMachine *)self _fetchAdditionalPaymentMethodDataIfNeeded];
  [(PKPaymentAuthorizationStateMachine *)self _updateModelCanAddPasses];
}

- (void)invalidate
{
  [(PKPaymentOffersController *)self->_paymentOffersController unregisterObserver:self];
  [(PKPaymentOffersController *)self->_paymentOffersController invalidate];
  paymentOffersController = self->_paymentOffersController;
  self->_paymentOffersController = 0;
}

- (void)_startAssessmentIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1 && !self->_odiTransactionAssessment && [(PKPaymentAuthorizationStateMachine *)self _isDeviceTransactionAssessmentEnabled])
  {
    if (_os_feature_enabled_impl() && (-[PKPaymentAuthorizationDataModel paymentRequest](self->_model, "paymentRequest"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isServiceProviderPaymentRequest], v3, v4))
    {
      v5 = [[PKODITransactionAssessment alloc] initWithAssessmentType:1];
    }

    else
    {
      v5 = objc_alloc_init(PKODITransactionAssessment);
    }

    odiTransactionAssessment = self->_odiTransactionAssessment;
    self->_odiTransactionAssessment = v5;

    v7 = self->_odiTransactionAssessment;
    if (v7)
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Starting CoreODI assessment %@", &v11, 0xCu);
      }

      v9 = self->_odiTransactionAssessment;
      bundleIdentifier = [(PKPaymentAuthorizationDataModel *)self->_model bundleIdentifier];
      [(PKODIAssessment *)v9 startAssessmentWithHostBundleIdentifier:bundleIdentifier];
    }
  }
}

- (BOOL)canSelectPaymentOptions
{
  state = self->_state;
  if (state > 8)
  {
    return 0;
  }

  if (((1 << state) & 0x17A) != 0)
  {
    return 1;
  }

  return state == 7 && [(PKPaymentAuthorizationClientCallbackStateParam *)self->_mostRecentClientCallback kind:v2]!= 5;
}

- (void)didResignActive:(BOOL)active
{
  v3 = 1;
  if (!active)
  {
    v3 = 2;
  }

  self->_hostApplicationState |= v3;
  if (self->_state == 5)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)didBecomeActive:(BOOL)active
{
  v3 = -4;
  if (!active)
  {
    v3 = -3;
  }

  self->_hostApplicationState &= v3;
  state = self->_state;
  v5 = state > 0x10;
  v6 = (1 << state) & 0x1A008;
  if (v5 || v6 == 0)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)didBecomeOccluded:(BOOL)occluded
{
  hostApplicationState = self->_hostApplicationState;
  if (occluded)
  {
    self->_hostApplicationState = hostApplicationState | 4;
  }

  else
  {
    self->_hostApplicationState = hostApplicationState & 0xFFFFFFFFFFFFFFFBLL;
    if ((hostApplicationState & 4) == 0)
    {
      return;
    }
  }

  state = self->_state;
  v5 = state > 0x10;
  v6 = (1 << state) & 0x1A008;
  if (v5 || v6 == 0)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)didBecomeArmable:(BOOL)armable
{
  hostApplicationState = self->_hostApplicationState;
  if (armable)
  {
    self->_hostApplicationState = hostApplicationState & 0xFFFFFFFFFFFFFFF7;
    if ((hostApplicationState & 8) == 0)
    {
      return;
    }
  }

  else
  {
    self->_hostApplicationState = hostApplicationState | 8;
  }

  state = self->_state;
  v5 = state > 0x10;
  v6 = (1 << state) & 0x1A008;
  if (v5 || v6 == 0)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)setCancelReason:(int64_t)reason
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKPaymentAuthorizationStateMachineCancelReasonToString(reason);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Setting state machine cancel reason to %@", &v7, 0xCu);
  }

  self->_cancelReason = reason;
}

- (void)didCancel
{
  v3 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Received cancel", v14, 2u);
  }

  state = self->_state;
  v5 = state > 0x10;
  v6 = (1 << state) & 0x1A000;
  if (v5 || v6 == 0)
  {
    [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:0 eventType:@"transactionAuthorizationCanceled"];
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    _isAMPPayment = [paymentRequest2 _isAMPPayment];

    if (_isAMPPayment)
    {
      v11 = PKAggDKeyPaymentiTunesPurchaseCancel;
    }

    else
    {
      if ([paymentRequest requestType])
      {
LABEL_13:
        currentRemotePaymentRequest = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

        if (currentRemotePaymentRequest)
        {
          [(PKPaymentAuthorizationStateMachine *)self _performCancelRemotePaymentRequest];
        }

        if (self->_odiAssessmentInFlight)
        {
          [(PKODIAssessment *)self->_odiTransactionAssessment provideSessionFeedback:1];
          self->_odiAssessmentInFlight = 0;
        }

        [(PKPaymentAuthorizationStateMachine *)self _setState:13 param:0];

        return;
      }

      v11 = PKAggDKeyPaymentInAppPaymentCancel;
    }

    v12 = *v11;
    AnalyticsSendEvent();
    [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:v12 value:1];
    goto LABEL_13;
  }
}

- (void)didEncounterError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Received error from client: %@", &v11, 0xCu);
  }

  state = self->_state;
  v7 = state > 0x10;
  v8 = (1 << state) & 0x1A000;
  if (v7 || v8 == 0)
  {
    v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:errorCopy];
    [(PKPaymentAuthorizationStateMachine *)self _setState:14 param:v10];
  }
}

- (void)didEncounterFatalError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Received fatal error from client: %@", &v11, 0xCu);
  }

  state = self->_state;
  v7 = state > 0x10;
  v8 = (1 << state) & 0x1A000;
  if (v7 || v8 == 0)
  {
    v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:errorCopy];
    [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v10];
  }
}

- (void)didResolveError
{
  state = self->_state;
  v5 = state > 0xE;
  v6 = (1 << state) & 0x4028;
  if (v5 || v6 == 0)
  {
    v10 = v2;
    v11 = v3;
    v8 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Called didResolveError but not in error or authenticate state", v9, 2u);
    }
  }

  else
  {

    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextStateFromResolveError:1];
  }
}

- (void)didResolveLoadingState
{
  state = self->_state;
  v3 = state > 7;
  v4 = (1 << state) & 0xC8;
  if (!v3 && v4 != 0)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)didReceiveMerchantSessionCompleteWithSession:(id)session error:(id)error
{
  if (session)
  {
    v5 = error == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  sessionCopy = session;
  v8 = [[PKPaymentRequestMerchantSessionUpdate alloc] initWithStatus:v6 merchantSession:sessionCopy];

  [(PKPaymentAuthorizationStateMachine *)self didReceiveMerchantSessionCompleteWithUpdate:v8];
}

- (void)didReceiveMerchantSessionCompleteWithUpdate:(id)update
{
  v45 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  status = [updateCopy status];
  if (status <= 3)
  {
    if (status > 1)
    {
      if (status == 2)
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!status)
    {
      v7 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (status == 1)
    {
      v7 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v7 = @"unknown";
    goto LABEL_22;
  }

  if (status <= 5)
  {
    if (status == 4)
    {
      v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v7 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (status == 6)
  {
    v7 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (status == 7)
  {
    v7 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (status != 1000)
  {
    goto LABEL_21;
  }

  v7 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
  session = [updateCopy session];
  *buf = 138412546;
  v42 = v7;
  v43 = 2112;
  v44 = session;
  _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received merchant session update with status:%@ session:%@", buf, 0x16u);

LABEL_23:
  state = self->_state;
  v10 = state > 0x10;
  v11 = (1 << state) & 0x1A000;
  if (v10 || v11 == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__PKPaymentAuthorizationStateMachine_didReceiveMerchantSessionCompleteWithUpdate___block_invoke;
    aBlock[3] = &unk_1E79C4E28;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    if ([updateCopy status] || (objc_msgSend(updateCopy, "session"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
    {
      v13[2](v13);
    }

    else
    {
      session2 = [updateCopy session];
      if (PKBypassCertValidation())
      {
        v16 = 0;
      }

      else
      {
        v17 = PKValidatePaymentMerchantSession(session2);
        v16 = v17 != 0;
      }

      paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      aPIType = [paymentRequest APIType];

      if ((aPIType - 1) > 1)
      {
        v22 = 0;
      }

      else
      {
        paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        originatingURL = [paymentRequest2 originatingURL];

        LODWORD(paymentRequest2) = [session2 supportsURL:originatingURL];
        v22 = paymentRequest2 ^ 1;
      }

      if ((v16 | v22))
      {
        v13[2](v13);
      }

      else
      {
        [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
        paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        [paymentRequest3 setMerchantSession:session2];

        [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
        merchantIdentifier = [session2 merchantIdentifier];
        v25 = merchantIdentifier;
        if (merchantIdentifier)
        {
          v39[0] = @"eventType";
          v39[1] = @"merchantIdentifier";
          v40[0] = @"stateChange";
          v40[1] = merchantIdentifier;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v27 = v26 = v25;
          [PKAnalyticsReporter subject:@"inApp" sendEvent:v27];

          v25 = v26;
        }

        operationalAnalyticsIdentifier = [session2 operationalAnalyticsIdentifier];
        if (operationalAnalyticsIdentifier)
        {
          v36 = v25;
          v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v29 setObject:@"stateChange" forKeyedSubscript:@"eventType"];
          [v29 setObject:operationalAnalyticsIdentifier forKeyedSubscript:@"analyticsIdentifier"];
          paymentRequest4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          originatingURL2 = [paymentRequest4 originatingURL];

          if (originatingURL2)
          {
            host = [originatingURL2 host];
            [v29 setObject:host forKeyedSubscript:@"merchantDomain"];
          }

          v33 = [v29 copy];
          [PKAnalyticsReporter subject:@"inApp" sendEvent:v33];

          v25 = v37;
        }

        paymentRequest5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        requestType = [paymentRequest5 requestType];

        if (requestType == 5)
        {
          [(PKPaymentAuthorizationStateMachine *)self _performInstallmentBind];
        }

        else
        {
          [(PKPaymentAuthorizationStateMachine *)self _enqueueInitialCallbacks];
        }

        [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
        [(PKPaymentAuthorizationStateMachine *)self _fetchAdditionalPaymentMethodDataIfNeeded];
        [(PKPaymentAuthorizationStateMachine *)self _updatePassRewardsInfo];
        [(PKPaymentOffersController *)self->_paymentOffersController didReceiveValidMerchantSession];
      }
    }
  }
}

void __82__PKPaymentAuthorizationStateMachine_didReceiveMerchantSessionCompleteWithUpdate___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "Application failed to provide a valid merchant session. We can't proceed to authorize the transaction.", v6, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
  v4 = *(a1 + 32);
  v5 = [PKPaymentAuthorizationErrorStateParam paramWithError:v3];
  [v4 _setState:15 param:v5];
}

- (void)didChangeCouponCode:(id)code
{
  codeCopy = code;
  couponCode = [(PKPaymentAuthorizationDataModel *)self->_model couponCode];
  v8 = codeCopy;
  v6 = couponCode;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setNumberOfOutstandingCouponCodeUpdates:[(PKPaymentAuthorizationDataModel *)self->_model numberOfOutstandingCouponCodeUpdates]+ 1];
    [(PKPaymentAuthorizationDataModel *)self->_model setCouponCode:v8];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:10 withObject:v8];
  }

LABEL_9:
}

- (void)didReceiveCouponCodeCompleteWithUpdate:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  status = [updateCopy status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (status <= 3)
    {
      if (status > 1)
      {
        if (status == 2)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!status)
      {
        v10 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (status == 1)
      {
        v10 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (status <= 5)
      {
        if (status == 4)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(status)
      {
        case 6:
          v10 = @"PKPaymentAuthorizationStatusPINIncorrect";
          goto LABEL_22;
        case 7:
          v10 = @"PKPaymentAuthorizationStatusPINLockout";
          goto LABEL_22;
        case 1000:
          v10 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
          *buf = 138412546;
          v22 = v8;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ status: %{public}@", buf, 0x16u);

          goto LABEL_23;
      }
    }

    v10 = @"unknown";
    goto LABEL_22;
  }

LABEL_23:

  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  [(PKPaymentAuthorizationDataModel *)self->_model setNumberOfOutstandingCouponCodeUpdates:[(PKPaymentAuthorizationDataModel *)self->_model numberOfOutstandingCouponCodeUpdates]- 1];
  errors = [updateCopy errors];
  [(PKPaymentAuthorizationDataModel *)self->_model setCouponCodeErrors:errors];
  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  if (![(PKPaymentAuthorizationDataModel *)self->_model numberOfOutstandingCouponCodeUpdates])
  {
    firstObject = [errors firstObject];
    [(PKPaymentAuthorizationStateMachine *)self _trackCouponCodeOutcomeWithError:firstObject];
  }

  state = self->_state;
  if (state > 0x10 || ((1 << state) & 0x1A000) == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    if (status)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Application failed to process coupon code change. This means that the coupon code and summary items are out of sync. We can't proceed to authorize the transaction.", buf, 2u);
      }

      availableShippingMethods = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      paymentSummaryItems = [PKPaymentAuthorizationErrorStateParam paramWithError:availableShippingMethods];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:paymentSummaryItems];
    }

    else
    {
      availableShippingMethods = [updateCopy availableShippingMethods];
      paymentSummaryItems = [updateCopy paymentSummaryItems];
      multiTokenContexts = [updateCopy multiTokenContexts];
      recurringPaymentRequest = [updateCopy recurringPaymentRequest];
      automaticReloadPaymentRequest = [updateCopy automaticReloadPaymentRequest];
      deferredPaymentRequest = [updateCopy deferredPaymentRequest];
      contentItems = [updateCopy contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:availableShippingMethods paymentSummaryItems:paymentSummaryItems multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:deferredPaymentRequest contentItems:contentItems];
    }
  }
}

- (void)didEncounterShippingEmailError:(id)error
{
  [(PKPaymentAuthorizationDataModel *)self->_model setShippingEmailError:error];

  [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
}

- (void)didSelectShippingEmail:(id)email
{
  emailCopy = email;
  shippingEmail = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];

  v5 = emailCopy;
  if (shippingEmail != emailCopy)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingEmail:emailCopy];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = emailCopy;
  }
}

- (void)didSelectShippingPhoneNumber:(id)number
{
  numberCopy = number;
  shippingPhone = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];

  v5 = numberCopy;
  if (shippingPhone != numberCopy)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingPhone:numberCopy];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = numberCopy;
  }
}

- (void)didSelectShippingName:(id)name
{
  nameCopy = name;
  shippingName = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];

  v5 = nameCopy;
  if (shippingName != nameCopy)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingName:nameCopy];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = nameCopy;
  }
}

- (void)didSelectBillingAddress:(id)address
{
  addressCopy = address;
  billingAddress = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];

  v5 = addressCopy;
  if (billingAddress != addressCopy)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setBillingAddress:?];
    if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:v6];
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
    v9 = [requiredShippingContactFields containsObject:@"post"];

    if ((v9 & 1) != 0 || ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]| 2) != 2)
    {
      goto LABEL_14;
    }

    if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 2 && ([(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      remotePaymentInstrument = [(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:remotePaymentInstrument];
    }

    else
    {
      if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 1)
      {
        goto LABEL_14;
      }

      pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];

      if (!pass)
      {
        goto LABEL_14;
      }

      remotePaymentInstrument = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:remotePaymentInstrument paymentApplication:paymentApplication];
    }

LABEL_14:
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = addressCopy;
  }
}

- (void)didSelectPaymentOffer:(id)offer updateReason:(unint64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  selectedOfferDetails = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
  selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
  v9 = selectedPaymentOffer;
  if (offerCopy && selectedPaymentOffer)
  {
    if ([selectedPaymentOffer isEqual:offerCopy])
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (selectedPaymentOffer != offerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  requiresUserAction = [selectedOfferDetails requiresUserAction];

  if ((requiresUserAction & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_8:
  v11 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = offerCopy;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "didSelectPaymentOffer called with offer %@", &v19, 0xCu);
  }

  pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  uniqueID = [pass uniqueID];

  if (offerCopy)
  {
    passUniqueID = [offerCopy passUniqueID];
    v15 = uniqueID;
    v16 = v15;
    if (passUniqueID == v15)
    {
    }

    else
    {
      if (!v15 || !passUniqueID)
      {

LABEL_26:
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v16;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error: The selected payment offer passUniqueID doesnt match the selected passUniqueID: %@", &v19, 0xCu);
        }

        goto LABEL_33;
      }

      v17 = [passUniqueID isEqualToString:v15];

      if ((v17 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  if (reason != 2)
  {
    [(PKPaymentOffersController *)self->_paymentOffersController updateCurrentSelectedPaymentOffer:offerCopy updateReason:reason];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  [(PKPaymentAuthorizationDataModel *)self->_model setSelectedPaymentOffer:offerCopy];
  if (_os_feature_enabled_impl())
  {
    if (reason == 1)
    {
      [(PKPaymentOffersController *)self->_paymentOffersController clearCurrentSelectedPaymentOfferDetails];
    }

    if (([selectedOfferDetails requiresUserAction] & 1) == 0)
    {
      if (offerCopy)
      {
        v18 = 2;
LABEL_31:
        [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:v18];
        goto LABEL_32;
      }

      if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2)
      {
        [(PKPaymentOffersController *)self->_paymentOffersController clearCurrentSelectedPaymentOfferDetails];
        v18 = 0;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
LABEL_33:

LABEL_34:
}

- (void)_processErrorsForDataType:(int64_t)type
{
  v23[6] = *MEMORY[0x1E69E9840];
  if (self->_state == 3)
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      v6 = [v5 isValidWithError:&v21];
      v7 = v21;
      if ((v6 & 1) == 0)
      {
        paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v20 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:type status:1 error:v7 clientErrors:paymentErrors];

        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v7, "code")];
        localizedFailureReason = [v7 localizedFailureReason];
        if (!localizedFailureReason)
        {
          localizedFailureReason = [v7 localizedDescription];
        }

        v11 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:localizedFailureReason]];
        if (os_variant_has_internal_ui())
        {
          v12 = localizedFailureReason;
        }

        else
        {
          v12 = 0;
        }

        v23[0] = @"preferenceError";
        v22[0] = @"eventType";
        v22[1] = @"preferenceType";
        if (type > 0x10)
        {
          v13 = @"unknown";
        }

        else
        {
          v13 = off_1E79CE738[type];
        }

        v23[1] = v13;
        v22[2] = @"errorDomain";
        domain = [v7 domain];
        v15 = domain;
        v16 = &stru_1F227FD28;
        if (domain)
        {
          v17 = domain;
        }

        else
        {
          v17 = &stru_1F227FD28;
        }

        v23[2] = v17;
        v23[3] = v9;
        v22[3] = @"errorCode";
        v22[4] = @"errorText";
        v22[5] = @"errorTextGroup";
        if (v12)
        {
          v18 = v12;
        }

        else
        {
          v18 = &stru_1F227FD28;
        }

        if (v11)
        {
          v16 = v11;
        }

        v23[4] = v18;
        v23[5] = v16;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
        [PKAnalyticsReporter subject:@"inApp" sendEvent:v19];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v20];
        goto LABEL_23;
      }
    }

    else
    {
      v7 = 0;
    }

    [(PKPaymentAuthorizationStateMachine *)self _setState:5 param:0];
LABEL_23:
  }
}

- (void)didSelectShippingContact:(id)contact
{
  v20[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  model = self->_model;
  if (contactCopy)
  {
    [(PKPaymentAuthorizationDataModel *)model setShippingAddress:contactCopy];
    v6 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isValidWithError:0])
    {
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectShippingContact:contactCopy];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Selected contact is not valid (either same contact, or doesn't possess required fields) - bypassing callback, moving straight to invalid state", buf, 2u);
      }

      v8 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v9 = MEMORY[0x1E696AEC0];
      model = [(PKPaymentAuthorizationStateMachine *)self model];
      shippingType = [model shippingType];
      v12 = [v9 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", shippingType];
      v13 = PKLocalizedPaymentString(v12, 0);
      v20[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v14];

      paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
      v17 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:5 status:1 error:v15 clientErrors:paymentErrors];

      [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v17];
    }
  }

  else
  {
    [(PKPaymentAuthorizationDataModel *)model setShippingAddress:0];
  }
}

- (void)didChangePeerPaymentUsage:(BOOL)usage
{
  usageCopy = usage;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requestType = [paymentRequest requestType];

  if (requestType == 2)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    model = self->_model;
    if (usageCopy)
    {
      peerPaymentAccount = [(PKPaymentAuthorizationDataModel *)model peerPaymentAccount];
      currentBalance = [peerPaymentAccount currentBalance];

      [(PKPaymentAuthorizationDataModel *)self->_model setPeerPaymentBalanceForAccountPayment:currentBalance];
      v10 = self->_model;
      v11 = [(PKPaymentAuthorizationDataModel *)v10 itemForType:2];
      [(PKPaymentAuthorizationDataModel *)v10 setUsePeerPaymentBalance:v11 != 0];
    }

    else
    {
      [(PKPaymentAuthorizationDataModel *)model setPeerPaymentBalanceForAccountPayment:0];
      [(PKPaymentAuthorizationDataModel *)self->_model setUsePeerPaymentBalance:0];
      currentBalance = 0;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
    pass2 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [pass2 isValidWithError:0])
    {
      pass = [pass2 pass];
      [pass setPeerPaymentBalance:currentBalance];

      if (usageCopy)
      {
        paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        accountServiceTransferRequest = [paymentRequest2 accountServiceTransferRequest];
        supportsSplitPayment = [accountServiceTransferRequest supportsSplitPayment];

        if (supportsSplitPayment)
        {
          paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          paymentSummaryItems = [paymentRequest3 paymentSummaryItems];
          lastObject = [paymentSummaryItems lastObject];
          amount = [lastObject amount];

          amount2 = [currentBalance amount];
          v22 = [amount compare:amount2];

          if (v22 == 1)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      v24 = [PKAccountServicePaymentMethod alloc];
      bankAccount = [(PKPaymentAuthorizationDataModel *)self->_model bankAccount];
      paymentRequest4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v27 = -[PKAccountServicePaymentMethod initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:](v24, "initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:", bankAccount, currentBalance, [paymentRequest4 deviceSupportsPeerPaymentAccountPayment], v23);

      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidUpdateAccountServicePaymentMethod:v27];
    }

    goto LABEL_21;
  }

  if (requestType == 9)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setUsePeerPaymentBalance:usageCopy];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
    currentBalance = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentPass];
    PKUpdatePeerPaymentBalanceUsagePreference(currentBalance, usageCopy);
    pass2 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:pass2];
LABEL_21:

    return;
  }

  v12 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Selected peer payment usage is not valid - bypassing callback", buf, 2u);
  }
}

- (void)didSelectBankAccount:(id)account
{
  v49[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  model = [(PKPaymentAuthorizationStateMachine *)self model];
  [model setBankAccount:accountCopy];
  identifier = [accountCopy identifier];
  PKSharedCacheSetObjectForKey(identifier, @"LastBankAccountIdentifier");

  v7 = [model itemForType:9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isValidWithError:0];
  }

  else
  {
    v8 = 0;
  }

  paymentRequest = [model paymentRequest];
  accountServiceTransferRequest = [paymentRequest accountServiceTransferRequest];

  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  accountServiceTransferRequest2 = [paymentRequest2 accountServiceTransferRequest];
  supportsSplitPayment = [accountServiceTransferRequest2 supportsSplitPayment];

  if (accountServiceTransferRequest)
  {
    account = [accountServiceTransferRequest account];
    accountIdentifier = [account accountIdentifier];
    identifier2 = [accountCopy identifier];
    PKSetLastBankAccountIdentifierForAccountTransfer(accountIdentifier, identifier2);
  }

  v17 = [model itemForType:2];
  v18 = v17;
  if (v8)
  {
    v19 = 3;
    if (!supportsSplitPayment)
    {
      v19 = 1;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_23;
  }

  peerPaymentBalanceForAccountPayment = [model peerPaymentBalanceForAccountPayment];
  amount = [peerPaymentBalanceForAccountPayment amount];

  if (v18 && amount)
  {
    if (!((accountServiceTransferRequest == 0) | supportsSplitPayment & 1))
    {

LABEL_22:
      v20 = 2;
LABEL_23:
      paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      if ([paymentRequest3 deviceSupportsPeerPaymentAccountPayment] && objc_msgSend(paymentRequest3, "accountPaymentUsePeerPaymentBalance"))
      {
        peerPaymentBalanceForAccountPayment2 = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentBalanceForAccountPayment];
      }

      else
      {
        peerPaymentBalanceForAccountPayment2 = 0;
      }

      if (accountServiceTransferRequest)
      {
        v39 = v18 == 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = v39;
      if ((v40 | supportsSplitPayment))
      {
        v41 = v7;
        v42 = -[PKAccountServicePaymentMethod initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:]([PKAccountServicePaymentMethod alloc], "initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:", accountCopy, peerPaymentBalanceForAccountPayment2, [paymentRequest3 deviceSupportsPeerPaymentAccountPayment], v20);
        [(PKPaymentAuthorizationStateMachine *)self _enqueueDidUpdateAccountServicePaymentMethod:v42];

        v7 = v41;
      }

      else
      {
        v43 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Selected bank account is not used - bypassing callback", buf, 2u);
        }
      }

      goto LABEL_38;
    }

    paymentRequest4 = [model paymentRequest];
    paymentSummaryItems = [paymentRequest4 paymentSummaryItems];
    [paymentSummaryItems lastObject];
    v24 = v45 = v7;
    amount2 = [v24 amount];

    v26 = [amount2 compare:amount];
    v39 = v26 == 1;
    v7 = v45;
    if (!v39)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v46 = v7;
  v27 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Selected bank account is not valid - bypassing callback, moving straight to invalid state", buf, 2u);
  }

  v28 = MEMORY[0x1E696ABC0];
  v48 = *MEMORY[0x1E696A588];
  v34 = PKLocalizedFeatureString(@"IN_APP_PAYMENT_BANK_ACCOUNT_INCOMPLETE_REASON", 2, 0, v29, v30, v31, v32, v33, paymentRequest4);
  v49[0] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  paymentRequest3 = [v28 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v35];

  paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
  peerPaymentBalanceForAccountPayment2 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:9 status:1 error:paymentRequest3 clientErrors:paymentErrors];

  [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:peerPaymentBalanceForAccountPayment2];
  v7 = v46;
LABEL_38:
}

- (void)didReceiveShippingContactCompleteWithUpdate:(id)update
{
  v42 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  status = [updateCopy status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (status <= 3)
    {
      if (status > 1)
      {
        if (status == 2)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!status)
      {
        v10 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (status == 1)
      {
        v10 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (status <= 5)
      {
        if (status == 4)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(status)
      {
        case 6:
          v10 = @"PKPaymentAuthorizationStatusPINIncorrect";
          goto LABEL_22;
        case 7:
          v10 = @"PKPaymentAuthorizationStatusPINLockout";
          goto LABEL_22;
        case 1000:
          v10 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
          *buf = 138412546;
          v39 = v8;
          v40 = 2114;
          v41 = v10;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ status: %{public}@", buf, 0x16u);

          goto LABEL_23;
      }
    }

    v10 = @"unknown";
    goto LABEL_22;
  }

LABEL_23:

  errors = [updateCopy errors];
  v12 = [(PKPaymentAuthorizationStateMachine *)self sanitizeClientErrors:errors];

  if (![v12 count] && status == 3)
  {
    model = [(PKPaymentAuthorizationStateMachine *)self model];
    v14 = [model paymentErrorsFromLegacyStatus:3];

    v12 = v14;
  }

  v15 = [v12 count];
  v16 = MEMORY[0x1E695DEC8];
  v37 = @"post";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v18 = [v16 pk_FilteredShippingErrorsForContactFields:v17 errors:v12 contactFieldOptional:1];

  if (v15 != [v18 count])
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Some errors provided were stripped out (not address related).", buf, 2u);
    }
  }

  [(PKPaymentAuthorizationDataModel *)self->_model setShippingAddressErrors:v18];
  state = self->_state;
  if (state > 0x10 || ((1 << state) & 0x1A000) == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    if (status)
    {
      if (status == 3)
      {
LABEL_37:
        v20 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A588];
        v21 = MEMORY[0x1E696AEC0];
        model2 = [(PKPaymentAuthorizationStateMachine *)self model];
        shippingType = [model2 shippingType];
        v24 = [v21 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", shippingType];
        v25 = PKLocalizedPaymentString(v24, 0);
        v36 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        availableShippingMethods = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v26];

        paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        paymentSummaryItems = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:5 status:1 error:availableShippingMethods clientErrors:paymentErrors];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:paymentSummaryItems];
        [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (![v18 count])
    {
      availableShippingMethods = [updateCopy availableShippingMethods];
      paymentSummaryItems = [updateCopy paymentSummaryItems];
      multiTokenContexts = [updateCopy multiTokenContexts];
      recurringPaymentRequest = [updateCopy recurringPaymentRequest];
      automaticReloadPaymentRequest = [updateCopy automaticReloadPaymentRequest];
      deferredPaymentRequest = [updateCopy deferredPaymentRequest];
      contentItems = [updateCopy contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:availableShippingMethods paymentSummaryItems:paymentSummaryItems multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:deferredPaymentRequest contentItems:contentItems];

      goto LABEL_42;
    }

    if (![v18 count])
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Application failed to process shipping address change. This means that the user's shipping address selection and summary items are out of sync, or inappropriate errors have been provided. We can't proceed to authorize the transaction.", buf, 2u);
      }

      availableShippingMethods = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      paymentSummaryItems = [PKPaymentAuthorizationErrorStateParam paramWithError:availableShippingMethods];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:paymentSummaryItems];
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_43:
}

- (void)didReceiveShippingContactCompleteWithStatus:(int64_t)status shippingMethods:(id)methods paymentSummaryItems:(id)items
{
  itemsCopy = items;
  methodsCopy = methods;
  model = [(PKPaymentAuthorizationStateMachine *)self model];
  v12 = [model paymentErrorsFromLegacyStatus:status];

  v11 = [[PKPaymentRequestShippingContactUpdate alloc] initWithErrors:v12 paymentSummaryItems:itemsCopy shippingMethods:methodsCopy];
  [(PKPaymentRequestUpdate *)v11 setStatus:status];
  [(PKPaymentAuthorizationStateMachine *)self didReceiveShippingContactCompleteWithUpdate:v11];
}

- (void)didReceiveShippingMethodCompleteWithUpdate:(id)update
{
  v26 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  status = [updateCopy status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  v8 = NSStringFromSelector(a2);
  v9 = v8;
  if (status <= 3)
  {
    if (status > 1)
    {
      if (status == 2)
      {
        v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!status)
    {
      v10 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (status == 1)
    {
      v10 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v10 = @"unknown";
    goto LABEL_22;
  }

  if (status <= 5)
  {
    if (status == 4)
    {
      v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v10 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (status == 6)
  {
    v10 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (status == 7)
  {
    v10 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (status != 1000)
  {
    goto LABEL_21;
  }

  v10 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
  *buf = 138412546;
  v23 = v8;
  v24 = 2114;
  v25 = v10;
  _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ status: %{public}@", buf, 0x16u);

LABEL_23:
  state = self->_state;
  v12 = state > 0x10;
  v13 = (1 << state) & 0x1A000;
  if (v12 || v13 == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    if (status)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Application failed to process shipping method change. This means that the user's shipping method selection and summary items are out of sync. We can't proceed to authorize the transaction.", buf, 2u);
      }

      availableShippingMethods = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      paymentSummaryItems = [PKPaymentAuthorizationErrorStateParam paramWithError:availableShippingMethods];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:paymentSummaryItems];
    }

    else
    {
      availableShippingMethods = [updateCopy availableShippingMethods];
      paymentSummaryItems = [updateCopy paymentSummaryItems];
      multiTokenContexts = [updateCopy multiTokenContexts];
      recurringPaymentRequest = [updateCopy recurringPaymentRequest];
      automaticReloadPaymentRequest = [updateCopy automaticReloadPaymentRequest];
      deferredPaymentRequest = [updateCopy deferredPaymentRequest];
      contentItems = [updateCopy contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:availableShippingMethods paymentSummaryItems:paymentSummaryItems multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:deferredPaymentRequest contentItems:contentItems];
    }
  }
}

- (void)didReceiveUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)update signatureRequest:(id)request
{
  requestCopy = request;
  paymentSummaryItems = [update paymentSummaryItems];
  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  [(PKPaymentAuthorizationStateMachine *)self _updateModelWithPaymentSummaryItems:paymentSummaryItems];
  if (requestCopy)
  {
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [paymentRequest setApplePayTrustSignatureRequest:requestCopy];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  self->_awaitingClientCallbackReply = 0;
  [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
  [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
}

- (void)didReceiveShippingMethodCompleteWithStatus:(int64_t)status paymentSummaryItems:(id)items
{
  itemsCopy = items;
  v7 = objc_alloc_init(PKPaymentRequestShippingMethodUpdate);
  [(PKPaymentRequestUpdate *)v7 setStatus:status];
  [(PKPaymentRequestUpdate *)v7 setPaymentSummaryItems:itemsCopy];

  [(PKPaymentAuthorizationStateMachine *)self didReceiveShippingMethodCompleteWithUpdate:v7];
}

- (void)didSelectPaymentPass:(id)pass paymentApplication:(id)application
{
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:pass paymentApplication:application];
  if (pass && _os_feature_enabled_impl())
  {

    [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
  }
}

- (void)didSelectPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential
{
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:pass paymentApplication:application subCredential:credential];
  if (pass)
  {

    [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
  }
}

- (void)didSelectRemotePaymentInstrument:(id)instrument
{
  instrumentCopy = instrument;
  primaryPaymentApplication = [instrumentCopy primaryPaymentApplication];
  [(PKPaymentAuthorizationStateMachine *)self didSelectRemotePaymentInstrument:instrumentCopy paymentApplication:primaryPaymentApplication];
}

- (void)didSelectRemotePaymentInstrument:(id)instrument paymentApplication:(id)application
{
  v34 = *MEMORY[0x1E69E9840];
  instrumentCopy = instrument;
  applicationCopy = application;
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v31 = v10;
    v32 = 2112;
    v33 = instrumentCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "State machine %@: %@", buf, 0x16u);
  }

  if (self->_hasReceivedRemoteDeviceUpdate)
  {
    continuityPaymentCoordinator = [(PKPaymentAuthorizationStateMachine *)self continuityPaymentCoordinator];
    currentRemotePaymentRequest = [continuityPaymentCoordinator currentRemotePaymentRequest];

    device = [currentRemotePaymentRequest device];
    model = [(PKPaymentAuthorizationStateMachine *)self model];
    remoteDevice = [model remoteDevice];
    v16 = [device isEqual:remoteDevice];

    if (v16)
    {
      paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      availableShippingMethods = [paymentRequest availableShippingMethods];
      paymentSummaryItems = [(PKPaymentAuthorizationDataModel *)self->_model paymentSummaryItems];
      paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      multiTokenContexts = [paymentRequest2 multiTokenContexts];
      paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      recurringPaymentRequest = [paymentRequest3 recurringPaymentRequest];
      paymentRequest4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      automaticReloadPaymentRequest = [paymentRequest4 automaticReloadPaymentRequest];
      [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v22 = v25 = currentRemotePaymentRequest;
      deferredPaymentRequest = [v22 deferredPaymentRequest];
      [(PKPaymentAuthorizationStateMachine *)self _performSendClientUpdateWithShippingMethods:availableShippingMethods paymentSummaryItems:paymentSummaryItems multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:deferredPaymentRequest paymentApplication:applicationCopy status:0];

      currentRemotePaymentRequest = v25;
    }

    else
    {
      currentRemotePaymentRequest2 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

      if (currentRemotePaymentRequest2)
      {
        [(PKPaymentAuthorizationStateMachine *)self _performCancelRemotePaymentRequest];
      }

      [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    }

    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:instrumentCopy paymentApplication:applicationCopy];
  }
}

- (void)didReceivePaymentMethodCompleteWithUpdate:(id)update
{
  v46 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  status = [updateCopy status];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  if (status <= 3)
  {
    if (status > 1)
    {
      if (status == 2)
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!status)
    {
      v7 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (status == 1)
    {
      v7 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v7 = @"unknown";
    goto LABEL_22;
  }

  if (status <= 5)
  {
    if (status == 4)
    {
      v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v7 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (status == 6)
  {
    v7 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (status == 7)
  {
    v7 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (status != 1000)
  {
    goto LABEL_21;
  }

  v7 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
  *buf = 138543362;
  v45 = v7;
  _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Received didReceivePaymentMethodCompleteWithUpdate: %{public}@", buf, 0xCu);
LABEL_23:

  state = self->_state;
  v9 = state > 0x10;
  v10 = (1 << state) & 0x1A000;
  if (v9 || v10 == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    if (status || ([updateCopy errors], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
    {
      errors = [updateCopy errors];
      v15 = [errors count];

      v16 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          errors2 = [updateCopy errors];
          *buf = 138543362;
          v45 = errors2;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Application failed to process billing address with errors: %{public}@", buf, 0xCu);
        }

        v18 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A588];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON"];
        v20 = PKLocalizedPaymentString(v19, 0);
        v43 = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        availableShippingMethods = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v21];

        paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        paymentSummaryItems = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:1 error:availableShippingMethods clientErrors:paymentErrors];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:paymentSummaryItems];
        [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "The app returned PKPaymentAuthorizationStatusFailure from the payment method update callback.", buf, 2u);
        }

        v25 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A578];
        v26 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_8.isa, 0);
        v41 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        availableShippingMethods = [v25 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v27];

        paymentSummaryItems = [PKPaymentAuthorizationErrorStateParam paramWithError:availableShippingMethods];
        [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:paymentSummaryItems];
      }

      goto LABEL_45;
    }

    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([paymentRequest isPeerPaymentRequest])
    {
      peerPaymentQuote = [updateCopy peerPaymentQuote];

      if (peerPaymentQuote)
      {
        model = self->_model;
        peerPaymentQuote2 = [updateCopy peerPaymentQuote];
        [(PKPaymentAuthorizationDataModel *)model setPeerPaymentQuote:peerPaymentQuote2];
        goto LABEL_43;
      }
    }

    else
    {
    }

    paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    requestType = [paymentRequest2 requestType];

    if (requestType != 5)
    {
LABEL_44:
      availableShippingMethods = [updateCopy availableShippingMethods];
      paymentSummaryItems = [updateCopy paymentSummaryItems];
      multiTokenContexts = [updateCopy multiTokenContexts];
      recurringPaymentRequest = [updateCopy recurringPaymentRequest];
      automaticReloadPaymentRequest = [updateCopy automaticReloadPaymentRequest];
      deferredPaymentRequest = [updateCopy deferredPaymentRequest];
      contentItems = [updateCopy contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:availableShippingMethods paymentSummaryItems:paymentSummaryItems multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:deferredPaymentRequest contentItems:contentItems];

LABEL_45:
      goto LABEL_46;
    }

    v34 = self->_model;
    peerPaymentQuote2 = [updateCopy installmentGroupIdentifier];
    [(PKPaymentAuthorizationDataModel *)v34 setInstallmentGroupIdentifier:peerPaymentQuote2];
LABEL_43:

    goto LABEL_44;
  }

LABEL_46:
}

- (void)didReceivePaymentMethodCompleteWithSummaryItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  [(PKPaymentRequestUpdate *)v5 setPaymentSummaryItems:itemsCopy];

  [(PKPaymentAuthorizationStateMachine *)self didReceivePaymentMethodCompleteWithUpdate:v5];
}

- (void)didRequestRefreshPaymentMethods
{
  v10[4] = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationDataModel *)self->_model refreshPaymentMethods];
  pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];

  if (!pass)
  {
    acceptedPasses = [(PKPaymentAuthorizationDataModel *)self->_model acceptedPasses];
    firstObject = [acceptedPasses firstObject];

    if (firstObject)
    {
      v6 = [(PKPaymentAuthorizationDataModel *)self->_model defaultSelectedPaymentApplicationForPass:firstObject];
      [(PKPaymentAuthorizationDataModel *)self->_model setPass:firstObject];
      [(PKPaymentAuthorizationDataModel *)self->_model setPaymentApplication:v6];
      [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentPass:firstObject paymentApplication:v6];
      v9[0] = @"eventType";
      v9[1] = @"pageTag";
      v10[0] = @"stateChange";
      v10[1] = @"paymentPreferences";
      v9[2] = @"valueSupplied";
      v7 = PKAnalyticsReportSwitchToggleResultValue(1);
      v9[3] = @"preferenceType";
      v10[2] = v7;
      v10[3] = @"card";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v8];

      [(PKPaymentAuthorizationStateMachine *)self _updateModelBillingAddressIfNeededForPass:firstObject];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelCanAddPasses];
    }

    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (id)acceptedPassForProvisionedPass:(id)pass
{
  v19 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  [(PKPaymentAuthorizationDataModel *)self->_model resetPaymentMethods];
  uniqueID = [passCopy uniqueID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  acceptedPasses = [(PKPaymentAuthorizationDataModel *)self->_model acceptedPasses];
  v7 = [acceptedPasses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(acceptedPasses);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueID2 = [v10 uniqueID];
        v12 = [uniqueID2 isEqualToString:uniqueID];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [acceptedPasses countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)didAuthenticateWithCredential:(id)credential
{
  credentialCopy = credential;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 3 || [(PKPaymentAuthorizationDataModel *)self->_model mode]== 4)
  {
    v4 = objc_alloc_init(PKPayment);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      requestType = [paymentRequest requestType];

      if (requestType == 15)
      {
        data = [MEMORY[0x1E695DEF0] data];
        [(PKPayment *)v4 setCredential:data];
      }

      else
      {
        [(PKPayment *)v4 setCredential:credentialCopy];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKPayment *)v4 setAuthKitAuthenticationResults:credentialCopy];
      }
    }

    v8 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPayment:v4];
    [(PKPaymentAuthorizationStateMachine *)self _setState:12 param:v8];
  }

  else
  {
    v4 = [PKPaymentAuthorizationNonceStateParam paramWithCredential:credentialCopy];
    [(PKPaymentAuthorizationStateMachine *)self _setState:9 param:v4];
    if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setStatus:0 forItemWithType:3];
    }
  }
}

- (void)didAuthenticateWithAuthenticatorEvaluationResponse:(id)response
{
  v4 = [PKPaymentAuthorizationNonceStateParam paramWithAuthenticatorEvaluationResponse:response];
  [(PKPaymentAuthorizationStateMachine *)self _setState:9 param:v4];
}

- (void)didReceivePaymentAuthorizationResult:(id)result
{
  v169 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  status = [resultCopy status];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (status <= 3)
    {
      if (status > 1)
      {
        if (status == 2)
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!status)
      {
        v7 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (status == 1)
      {
        v7 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (status <= 5)
      {
        if (status == 4)
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v7 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(status)
      {
        case 6:
          v7 = @"PKPaymentAuthorizationStatusPINIncorrect";
          goto LABEL_22;
        case 7:
          v7 = @"PKPaymentAuthorizationStatusPINLockout";
          goto LABEL_22;
        case 1000:
          v7 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
          *buf = 138543362;
          v168 = v7;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Received didReceivePaymentAuthorizationStatus: %{public}@", buf, 0xCu);
          goto LABEL_23;
      }
    }

    v7 = @"unknown";
    goto LABEL_22;
  }

LABEL_23:

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    errors = [resultCopy errors];
    *buf = 138412290;
    v168 = errors;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Client errors: %@", buf, 0xCu);
  }

  state = self->_state;
  if (state > 0x10 || ((1 << state) & 0x1A000) == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    model = self->_model;
    orderDetails = [resultCopy orderDetails];
    [(PKPaymentAuthorizationDataModel *)model setPendingOrderDetails:orderDetails];

    errors2 = [resultCopy errors];
    v19 = [(PKPaymentAuthorizationStateMachine *)self sanitizeClientErrors:errors2];

    if (![v19 count])
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Checking for errors based on legacy status", buf, 2u);
      }

      model = [(PKPaymentAuthorizationStateMachine *)self model];
      v35 = [model paymentErrorsFromLegacyStatus:status];
      v24 = 0;
      v36 = v19;
      v19 = v35;
      goto LABEL_79;
    }

    model = [v19 firstObject];
    domain = [model domain];
    v22 = [domain isEqualToString:@"PKPaymentErrorDomain"];

    domain2 = [model domain];
    v24 = [domain2 isEqualToString:@"PKDisbursementErrorDomain"];

    if ((v22 & 1) == 0 && !v24)
    {
LABEL_80:

      [(PKPaymentAuthorizationDataModel *)self->_model setPaymentErrors:v19];
      firstObject = [v19 firstObject];
      v137 = firstObject;
      if (firstObject)
      {
        v38 = firstObject;
        v134 = v24;
        localizedFailureReason = [firstObject localizedFailureReason];
        if (!localizedFailureReason)
        {
          localizedFailureReason = [v38 localizedDescription];
        }

        v135 = v19;
        v133 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:localizedFailureReason]];
        if (os_variant_has_internal_ui())
        {
          v40 = localizedFailureReason;
        }

        else
        {
          v40 = 0;
        }

        selfCopy2 = self;
        v165[0] = @"authorizationStatus";
        v43 = resultCopy;
        if (status > 7)
        {
          v44 = @"unknown";
        }

        else
        {
          v44 = off_1E79CE7C0[status];
        }

        v166[0] = v44;
        v165[1] = @"errorDomain";
        domain3 = [v38 domain];
        v46 = domain3;
        if (domain3)
        {
          v47 = domain3;
        }

        else
        {
          v47 = &stru_1F227FD28;
        }

        v166[1] = v47;
        v165[2] = @"errorCode";
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v38, "code")];
        v49 = v48;
        if (v40)
        {
          v50 = v40;
        }

        else
        {
          v50 = &stru_1F227FD28;
        }

        v166[2] = v48;
        v166[3] = v50;
        v165[3] = @"errorText";
        v165[4] = @"errorTextGroup";
        if (v133)
        {
          v51 = v133;
        }

        else
        {
          v51 = &stru_1F227FD28;
        }

        v166[4] = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:5];
        [(PKPaymentAuthorizationStateMachine *)selfCopy2 _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v52 eventType:@"transactionAuthorizationStatusUpdated"];

        v19 = v135;
        resultCopy = v43;
        v24 = v134;
      }

      else
      {
        v163 = @"authorizationStatus";
        if (status > 7)
        {
          v41 = @"unknown";
        }

        else
        {
          v41 = off_1E79CE7C0[status];
        }

        v164 = v41;
        localizedFailureReason = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        selfCopy2 = self;
        [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:localizedFailureReason eventType:@"transactionAuthorizationStatusUpdated"];
      }

      if (status > 4)
      {
        v53 = selfCopy2;
        if (status <= 6)
        {
          if (status == 5)
          {
            model2 = [(PKPaymentAuthorizationStateMachine *)selfCopy2 model];
            [model2 setStatus:3 forItemWithType:3];

            v106 = MEMORY[0x1E696ABC0];
            v151 = *MEMORY[0x1E696A588];
            localizedErrorMessageOverride = [resultCopy localizedErrorMessageOverride];
            v81 = localizedErrorMessageOverride;
            if (!localizedErrorMessageOverride)
            {
              v81 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_10.isa, 0);
            }

            v152 = v81;
            v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
            v83 = v106;
            v84 = -1;
          }

          else
          {
            model3 = [(PKPaymentAuthorizationStateMachine *)selfCopy2 model];
            [model3 setStatus:2 forItemWithType:3];

            v79 = MEMORY[0x1E696ABC0];
            v149 = *MEMORY[0x1E696A588];
            localizedErrorMessageOverride = [resultCopy localizedErrorMessageOverride];
            v81 = localizedErrorMessageOverride;
            if (!localizedErrorMessageOverride)
            {
              v81 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_10.isa, 0);
            }

            v150 = v81;
            v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
            v83 = v79;
            v84 = -3011;
          }

          firstObject2 = [v83 errorWithDomain:@"PKPassKitErrorDomain" code:v84 userInfo:v82];

          if (!localizedErrorMessageOverride)
          {
          }

          paymentRequest = [PKPaymentAuthorizationErrorStateParam paramWithError:firstObject2];
          v103 = selfCopy2;
          v104 = 14;
        }

        else
        {
          if (status != 7)
          {
            if (status == 1000)
            {
              v107 = v24;
              if (v24)
              {
                PKLocalizedFundsTransferString(&cfstr_FundsTransferP.isa, 0);
              }

              else
              {
                PKLocalizedPaymentString(&cfstr_InAppPaymentTr.isa, 0);
              }
              paymentRequest = ;
              v112 = MEMORY[0x1E696ABC0];
              v161 = *MEMORY[0x1E696A588];
              localizedErrorMessageOverride2 = [resultCopy localizedErrorMessageOverride];
              v114 = localizedErrorMessageOverride2;
              if (localizedErrorMessageOverride2)
              {
                v115 = localizedErrorMessageOverride2;
              }

              else
              {
                v115 = paymentRequest;
              }

              v162 = v115;
              v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              firstObject2 = [v112 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v116];

              v117 = [PKPaymentAuthorizationErrorStateParam paramWithError:firstObject2 clientFailure:v107];
              [(PKPaymentAuthorizationStateMachine *)v53 _setState:14 param:v117];

              goto LABEL_194;
            }

            if (status == 1001)
            {
              paymentRequest = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model paymentRequest];
              localizedErrorMessageOverride3 = [resultCopy localizedErrorMessageOverride];
              v56 = localizedErrorMessageOverride3;
              if (localizedErrorMessageOverride3)
              {
                v57 = localizedErrorMessageOverride3;
              }

              else
              {
                localizedErrorMessage = [paymentRequest localizedErrorMessage];
                v119 = localizedErrorMessage;
                if (localizedErrorMessage)
                {
                  v120 = localizedErrorMessage;
                }

                else
                {
                  v120 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_9.isa, 0);
                }

                v57 = v120;
              }

              v126 = MEMORY[0x1E696ABC0];
              v159 = *MEMORY[0x1E696A588];
              v160 = v57;
              v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
              firstObject2 = [v126 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v127];

              v128 = [PKPaymentAuthorizationErrorStateParam paramWithError:firstObject2 clientFailure:1];
              v129 = selfCopy2;
              v130 = 14;
LABEL_193:
              [(PKPaymentAuthorizationStateMachine *)v129 _setState:v130 param:v128];

              goto LABEL_194;
            }

LABEL_165:
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "The app failed to process the transaction (declined?)", buf, 2u);
            }

            ++v53->_failureStatusCount;
            [(PKPaymentAuthorizationStateMachine *)v53 _promptTapToRadar];
            paymentRequest = [(PKPaymentAuthorizationDataModel *)v53->_model paymentRequest];
            paymentRequest2 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentRequest];

            if (paymentRequest2)
            {
              v109 = PKAggDKeyPaymentiTunesPurchaseAuthorizationFail;
            }

            else
            {
              if ([paymentRequest requestType])
              {
                goto LABEL_182;
              }

              AnalyticsSendEvent();
              v109 = PKAggDKeyPaymentInAppPaymentAuthorizationFail;
            }

            [(PKAggregateDictionaryProtocol *)v53->_aggregateDictionary addValueForScalarKey:*v109 value:1];
LABEL_182:
            localizedErrorMessageOverride4 = [resultCopy localizedErrorMessageOverride];
            v122 = localizedErrorMessageOverride4;
            if (localizedErrorMessageOverride4)
            {
              v57 = localizedErrorMessageOverride4;
            }

            else
            {
              localizedErrorMessage2 = [paymentRequest localizedErrorMessage];
              v124 = localizedErrorMessage2;
              if (localizedErrorMessage2)
              {
                v125 = localizedErrorMessage2;
              }

              else
              {
                v125 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_9.isa, 0);
              }

              v57 = v125;
            }

            v131 = MEMORY[0x1E696ABC0];
            v145 = *MEMORY[0x1E696A588];
            v146 = v57;
            v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
            firstObject2 = [v131 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v132];

            [(PKPaymentAuthorizationStateMachine *)v53 _reportToAutoBugCapture:v57];
            v128 = [PKPaymentAuthorizationErrorStateParam paramWithError:firstObject2];
            v129 = v53;
            v130 = 15;
            goto LABEL_193;
          }

          v98 = MEMORY[0x1E696ABC0];
          v147 = *MEMORY[0x1E696A588];
          localizedErrorMessageOverride5 = [resultCopy localizedErrorMessageOverride];
          v100 = localizedErrorMessageOverride5;
          if (!localizedErrorMessageOverride5)
          {
            v100 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
          }

          v148 = v100;
          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          firstObject2 = [v98 errorWithDomain:@"PKPassKitErrorDomain" code:-3001 userInfo:v101];

          if (!localizedErrorMessageOverride5)
          {
          }

          paymentErrors = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model paymentErrors];
          paymentRequest = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:4 error:firstObject2 clientErrors:paymentErrors];

          v103 = selfCopy2;
          v104 = 3;
        }

        [(PKPaymentAuthorizationStateMachine *)v103 _setState:v104 param:paymentRequest];
LABEL_194:
        localizedFailureReason2 = 0;
        goto LABEL_195;
      }

      v53 = selfCopy2;
      if (status > 2)
      {
        if (status == 3)
        {
          v88 = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model itemForType:5];
          v139 = 0;
          v89 = [v88 isValidWithError:&v139];
          localizedFailureReason2 = v139;

          if ((v89 & 1) != 0 || ([localizedFailureReason2 localizedFailureReason], (v70 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v90 = MEMORY[0x1E696AEC0];
            shippingType = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model shippingType];
            v92 = [v90 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", shippingType];
            v70 = PKLocalizedPaymentString(v92, 0);
          }

          if (!localizedFailureReason2)
          {
            localizedFailureReason2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:0];
          }

          v93 = MEMORY[0x1E696ABC0];
          v155[0] = *MEMORY[0x1E696A588];
          localizedErrorMessageOverride6 = [resultCopy localizedErrorMessageOverride];
          v95 = localizedErrorMessageOverride6;
          if (localizedErrorMessageOverride6)
          {
            v96 = localizedErrorMessageOverride6;
          }

          else
          {
            v96 = v70;
          }

          v155[1] = *MEMORY[0x1E696AA08];
          v156[0] = v96;
          v156[1] = localizedFailureReason2;
          v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:2];
          firstObject2 = [v93 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v97];

          paymentErrors2 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          v77 = 5;
        }

        else
        {
          v68 = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model itemForType:7];
          v138 = 0;
          v69 = [v68 isValidWithError:&v138];
          localizedFailureReason2 = v138;

          if ((v69 & 1) != 0 || ([localizedFailureReason2 localizedFailureReason], (v70 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v70 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
          }

          if (!localizedFailureReason2)
          {
            localizedFailureReason2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3010 userInfo:0];
          }

          v71 = MEMORY[0x1E696ABC0];
          v153[0] = *MEMORY[0x1E696A588];
          localizedErrorMessageOverride7 = [resultCopy localizedErrorMessageOverride];
          v73 = localizedErrorMessageOverride7;
          if (localizedErrorMessageOverride7)
          {
            v74 = localizedErrorMessageOverride7;
          }

          else
          {
            v74 = v70;
          }

          v153[1] = *MEMORY[0x1E696AA08];
          v154[0] = v74;
          v154[1] = localizedFailureReason2;
          v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:2];
          firstObject2 = [v71 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v75];

          paymentErrors2 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          v77 = 7;
        }

        paymentRequest = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:v77 status:1 error:firstObject2 clientErrors:paymentErrors2];

        [(PKPaymentAuthorizationStateMachine *)v53 _setState:3 param:paymentRequest];
        goto LABEL_195;
      }

      if (status)
      {
        if (status == 2)
        {
          if ([(PKPaymentAuthorizationDataModel *)selfCopy2->_model mode]== 2)
          {
            v58 = 4;
          }

          else
          {
            v58 = 3;
          }

          v59 = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model itemForType:v58];
          v140 = 0;
          v60 = [v59 isValidWithError:&v140];
          localizedFailureReason2 = v140;

          if ((v60 & 1) != 0 || ([localizedFailureReason2 localizedFailureReason], (v61 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v61 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
          }

          v136 = v19;
          if (!localizedFailureReason2)
          {
            localizedFailureReason2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3002 userInfo:0];
          }

          v62 = MEMORY[0x1E696ABC0];
          v157[0] = *MEMORY[0x1E696A588];
          localizedErrorMessageOverride8 = [resultCopy localizedErrorMessageOverride];
          v64 = localizedErrorMessageOverride8;
          if (localizedErrorMessageOverride8)
          {
            v65 = localizedErrorMessageOverride8;
          }

          else
          {
            v65 = v61;
          }

          v157[1] = *MEMORY[0x1E696AA08];
          v158[0] = v65;
          v158[1] = localizedFailureReason2;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:2];
          firstObject2 = [v62 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v66];

          paymentErrors3 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          paymentRequest = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:v58 status:1 error:firstObject2 clientErrors:paymentErrors3];

          [(PKPaymentAuthorizationStateMachine *)v53 _setState:3 param:paymentRequest];
          v19 = v136;
          goto LABEL_195;
        }

        goto LABEL_165;
      }

      paymentRequest = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model paymentRequest];
      paymentRequest3 = [(PKPaymentAuthorizationDataModel *)selfCopy2->_model paymentRequest];
      _isAMPPayment = [paymentRequest3 _isAMPPayment];

      if (_isAMPPayment)
      {
        v87 = PKAggDKeyPaymentiTunesPurchaseAuthorizationSuccess;
      }

      else
      {
        if ([paymentRequest requestType])
        {
LABEL_173:
          peerPaymentTransactionMetadata = [resultCopy peerPaymentTransactionMetadata];
          v111 = [PKPaymentAuthorizationSuccessStateParam paramWithPeerPaymentTransactionMetadata:peerPaymentTransactionMetadata];
          [(PKPaymentAuthorizationStateMachine *)selfCopy2 _setState:16 param:v111];

          localizedFailureReason2 = 0;
          firstObject2 = 0;
LABEL_195:

          [(PKPaymentAuthorizationDataModel *)v53->_model setPendingTransactions:0];
          [(PKPaymentAuthorizationDataModel *)v53->_model setPendingOrderDetails:0];

          goto LABEL_196;
        }

        AnalyticsSendEvent();
        v87 = PKAggDKeyPaymentInAppPaymentAuthorizationSuccess;
      }

      [(PKAggregateDictionaryProtocol *)selfCopy2->_aggregateDictionary addValueForScalarKey:*v87 value:1];
      goto LABEL_173;
    }

    status = [(PKPaymentAuthorizationStateMachine *)self statusFromPaymentError:model];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_78:
      v36 = v6;
LABEL_79:

      goto LABEL_80;
    }

    if (status <= 3)
    {
      if (status > 1)
      {
        if (status == 2)
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_77;
      }

      if (!status)
      {
        v25 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_77;
      }

      if (status == 1)
      {
        v25 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_77;
      }
    }

    else
    {
      if (status <= 5)
      {
        if (status == 4)
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v25 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_77;
      }

      switch(status)
      {
        case 6:
          v25 = @"PKPaymentAuthorizationStatusPINIncorrect";
          goto LABEL_77;
        case 7:
          v25 = @"PKPaymentAuthorizationStatusPINLockout";
          goto LABEL_77;
        case 1000:
          v25 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_77:
          *buf = 138543362;
          v168 = v25;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Overridden didReceivePaymentAuthorizationStatus: %{public}@", buf, 0xCu);
          goto LABEL_78;
      }
    }

    v25 = @"unknown";
    goto LABEL_77;
  }

  errors3 = [resultCopy errors];
  firstObject2 = [errors3 firstObject];

  if (firstObject2)
  {
    localizedFailureReason2 = [firstObject2 localizedFailureReason];
    if (!localizedFailureReason2)
    {
      localizedFailureReason2 = [firstObject2 localizedDescription];
    }

    v13 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:localizedFailureReason2]];
    if (os_variant_has_internal_ui())
    {
      v14 = localizedFailureReason2;
    }

    else
    {
      v14 = 0;
    }

    v143[0] = @"authorizationStatus";
    if (status > 7)
    {
      v26 = @"unknown";
    }

    else
    {
      v26 = off_1E79CE7C0[status];
    }

    v144[0] = v26;
    v143[1] = @"errorDomain";
    domain4 = [firstObject2 domain];
    v28 = domain4;
    if (domain4)
    {
      v29 = domain4;
    }

    else
    {
      v29 = &stru_1F227FD28;
    }

    v144[1] = v29;
    v143[2] = @"errorCode";
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(firstObject2, "code")];
    v31 = v30;
    if (v14)
    {
      v32 = v14;
    }

    else
    {
      v32 = &stru_1F227FD28;
    }

    v144[2] = v30;
    v144[3] = v32;
    v143[3] = @"errorText";
    v143[4] = @"errorTextGroup";
    if (v13)
    {
      v33 = v13;
    }

    else
    {
      v33 = &stru_1F227FD28;
    }

    v144[4] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:5];
    [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v34 eventType:@"transactionAuthorizationStatusUpdated"];
  }

  else
  {
    v141 = @"authorizationStatus";
    if (status > 7)
    {
      v15 = @"unknown";
    }

    else
    {
      v15 = off_1E79CE7C0[status];
    }

    v142 = v15;
    localizedFailureReason2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:localizedFailureReason2 eventType:@"transactionAuthorizationStatusUpdated"];
    firstObject2 = 0;
  }

LABEL_196:
}

id __59__PKPaymentAuthorizationStateMachine_sanitizeClientErrors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInfo];
  v4 = [v3 mutableCopy];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"PKPaymentErrorIsFromClient"];
  v5 = MEMORY[0x1E696ABC0];
  v6 = [v2 domain];
  v7 = [v2 code];

  v8 = [v5 errorWithDomain:v6 code:v7 userInfo:v4];

  return v8;
}

- (int64_t)statusFromPaymentError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"PKPaymentErrorDomain"];

  if (v6)
  {
    code = [errorCopy code];
    v8 = code;
    if ((code - 2) < 2)
    {
      goto LABEL_18;
    }

    if (code == 1)
    {
      v11 = ![(PKPaymentAuthorizationStateMachine *)self isErrorAboutPostalAddressField:errorCopy];
      v12 = 3;
LABEL_15:
      if (v11)
      {
        v8 = v12 + 1;
      }

      else
      {
        v8 = v12;
      }

      goto LABEL_18;
    }

    if (code == -1)
    {
      paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      requestType = [paymentRequest requestType];

      v11 = requestType == 0;
      v12 = 1000;
      goto LABEL_15;
    }

LABEL_13:
    v8 = 1;
    goto LABEL_18;
  }

  domain2 = [errorCopy domain];
  v14 = [domain2 isEqualToString:@"PKDisbursementErrorDomain"];

  if (!v14)
  {
    goto LABEL_13;
  }

  code2 = [errorCopy code];
  v8 = 1000;
  if (code2 != -1 && code2 != 1)
  {
    if (code2 != 2)
    {
      goto LABEL_13;
    }

    if ([(PKPaymentAuthorizationStateMachine *)self isErrorAboutPostalAddressField:errorCopy])
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }
  }

LABEL_18:

  return v8;
}

- (BOOL)isErrorAboutPostalAddressField:(id)field
{
  fieldCopy = field;
  domain = [fieldCopy domain];
  v6 = [domain isEqualToString:@"PKDisbursementErrorDomain"];

  v7 = &PKDisbursementErrorContactFieldUserInfoKey;
  if (!v6)
  {
    v7 = &PKPaymentErrorContactFieldUserInfoKey;
  }

  v8 = *v7;
  userInfo = [fieldCopy userInfo];

  v10 = [userInfo objectForKey:v8];

  v11 = [v10 isEqualToString:@"post"];
  if ([v10 isEqualToString:@"name"])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v10 isEqualToString:@"phoneticName"];
  }

  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
  v15 = [requiredShippingContactFields containsObject:@"post"];

  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  isShippingEditable = [paymentRequest2 isShippingEditable];

  if (v11)
  {
    v18 = 1;
  }

  else
  {
    v18 = v12 & isShippingEditable & v15;
  }

  return v18;
}

- (void)didReceivePaymentAuthorizationStatus:(int64_t)status
{
  v5 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v5 setStatus:status];
  [(PKPaymentAuthorizationStateMachine *)self didReceivePaymentAuthorizationResult:v5];
}

- (void)delayAuthorizedStateByDuration:(double)duration
{
  dispatch_group_enter(self->_delayAuthorizedStateGroup);
  objc_initWeak(&location, self->_delayAuthorizedStateGroup);
  v5 = dispatch_time(0, (duration * 1000000000.0));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPaymentAuthorizationStateMachine_delayAuthorizedStateByDuration___block_invoke;
  v6[3] = &unk_1E79C9D80;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __69__PKPaymentAuthorizationStateMachine_delayAuthorizedStateByDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_group_leave(WeakRetained);
    WeakRetained = v2;
  }
}

- (void)didChangeFundingMode:(int64_t)mode
{
  v23 = *MEMORY[0x1E69E9840];
  state = self->_state;
  v6 = state > 0x10;
  v7 = (1 << state) & 0x1A000;
  if (v6 || v7 == 0)
  {
    fundingMode = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];
    [(PKPaymentAuthorizationDataModel *)self->_model setFundingMode:mode];
    if (_os_feature_enabled_impl())
    {
      if (mode == 2)
      {
        selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
        selectedOfferDetails = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
        -[PKPaymentAuthorizationStateMachine didSelectPaymentOffer:updateReason:](self, "didSelectPaymentOffer:updateReason:", selectedPaymentOffer, [selectedOfferDetails updateReason]);
      }

      else if (!mode && fundingMode)
      {
        [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentOffer:0 updateReason:1];
        pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
        paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
        [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentPass:pass paymentApplication:paymentApplication];

        [(PKPaymentAuthorizationDataModel *)self->_model refreshBillingAddressErrors];
      }
    }

    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PKPaymentAuthorizationFundingModeToString(mode);
      v11 = v10;
      v12 = self->_state;
      if (v12 > 0x14)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_1E79CE800[v12];
      }

      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Not changing funding mode to %@ since the state is termainal %@", &v19, 0x16u);
    }
  }
}

- (void)continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices:(id)devices
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__97__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = result[14];
  v3 = v2 > 0x10;
  v4 = (1 << v2) & 0x1A000;
  if (v3 || v4 == 0)
  {
    return [result _deviceUpdateDidFailWithNoEiligbleRemoteDevices:0];
  }

  return result;
}

- (void)continuityPaymentCoordinator:(id)coordinator didTimeoutTotalWithPaymentDevices:(id)devices
{
  devicesCopy = devices;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didTimeoutTotalWithPaymentDevices___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __101__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didTimeoutTotalWithPaymentDevices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3 == 6)
  {
    if ((*(v2 + 9) & 1) == 0)
    {
      objc_storeStrong((v2 + 192), *(a1 + 40));
    }
  }

  else if (v3 == 1)
  {
    [v2 _updateModelWithRemoteDevices:*(a1 + 40)];
  }
}

- (void)continuityPaymentCoordinator:(id)coordinator didReceiveUpdatedPaymentDevices:(id)devices
{
  devicesCopy = devices;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceiveUpdatedPaymentDevices___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceiveUpdatedPaymentDevices___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 112);
  v2 = v1 > 0x10;
  v3 = (1 << v1) & 0x1A000;
  if (v2 || v3 == 0)
  {
    if ([*(a1 + 40) count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = *(a1 + 40);
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
LABEL_9:
        v10 = 0;
        while (1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [v11 remotePaymentInstruments];
          v13 = [*(*(a1 + 32) + 56) initialRemotePaymentInstrument];
          v14 = [v12 containsObject:v13];

          if (v14)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v8)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }

        v15 = [v11 proximityState];

        if (v15 != 2)
        {
          goto LABEL_20;
        }

        v16 = PKLogFacilityTypeGetObject(8uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v25 = 2;
          v26 = 2048;
          v27 = 1;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Skip updating remote devices: initialDeviceProximityState %ld, initialInstrumentValid %ld", buf, 0x16u);
        }
      }

      else
      {
LABEL_15:

LABEL_20:
        [*(*(a1 + 32) + 56) updateRemoteDevices:*(a1 + 40) ignoreProximity:{0, v20}];
        v17 = *(a1 + 32);
        if (v17[9] == 1)
        {
          [v17 _advanceToNextState];
        }

        else
        {
          v17[9] = 1;
          [*(a1 + 32) _startPayment];
        }
      }
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);

      [v18 _deviceUpdateDidFailWithNoEiligbleRemoteDevices:v19];
    }
  }
}

- (void)continuityPaymentCoordinator:(id)coordinator didReceivePayment:(id)payment
{
  paymentCopy = payment;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceivePayment___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = paymentCopy;
  selfCopy = self;
  v6 = paymentCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __85__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceivePayment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  v7 = [v2 retryNonce];

  if ([v7 length])
  {
    v3 = [*(*(a1 + 40) + 56) paymentRequest];
    v4 = [v3 merchantSession];
    [v4 setRetryNonce:v7];
  }

  v5 = *(a1 + 40);
  if (v5[14] == 5)
  {
    v6 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPayment:*(a1 + 32)];
    [v5 _setState:12 param:v6];
  }

  else
  {
    v6 = objc_alloc_init(PKPaymentAuthorizationResult);
    [(PKPaymentAuthorizationResult *)v6 setStatus:1000];
    [*(a1 + 40) _performSendPaymentResult:v6];
  }
}

- (void)continuityPaymentCoordinatorDidReceiveCancellation:(id)cancellation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinatorDidReceiveCancellation___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__89__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinatorDidReceiveCancellation___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = result[14];
  v3 = v2 > 0x10;
  v4 = (1 << v2) & 0x1A000;
  if (v3 || v4 == 0)
  {
    return [result _setState:13 param:0];
  }

  return result;
}

- (void)_processBluetoothState:(int64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  state = self->_state;
  v4 = state > 0x10;
  v5 = (1 << state) & 0x1A000;
  if (!v4 && v5 != 0)
  {
    return;
  }

  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = state;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Processing bluetooth state: %d", v14, 8u);
  }

  if ((state - 2) < 2)
  {
    goto LABEL_14;
  }

  if (state == 4)
  {
    if (!self->_detectedBluetoothOn)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2015 userInfo:0];
      v11 = [PKPaymentAuthorizationErrorStateParam paramWithError:v10];
      selfCopy2 = self;
      v13 = 14;
      goto LABEL_15;
    }

LABEL_14:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2015 userInfo:0];
    v11 = [PKPaymentAuthorizationErrorStateParam paramWithError:v10];
    selfCopy2 = self;
    v13 = 15;
LABEL_15:
    [(PKPaymentAuthorizationStateMachine *)selfCopy2 _setState:v13 param:v11];

    return;
  }

  if (state == 5 && !self->_detectedBluetoothOn)
  {
    self->_detectedBluetoothOn = 1;
    [(PKPaymentAuthorizationStateMachine *)self _startRemoteDeviceUpdate];
  }
}

- (void)_updateModelWithRemoteDevices:(id)devices
{
  devicesCopy = devices;
  v4 = [devicesCopy pk_containsObjectPassingTest:&__block_literal_global_186];
  if ([devicesCopy count] && (v4 & 1) != 0)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model updateRemoteDevices:devicesCopy ignoreProximity:0];

    if (self->_hasReceivedRemoteDeviceUpdate)
    {

      [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    }

    else
    {
      self->_hasReceivedRemoteDeviceUpdate = 1;

      [(PKPaymentAuthorizationStateMachine *)self _startPayment];
    }
  }

  else
  {
    [(PKPaymentAuthorizationStateMachine *)self _deviceUpdateDidFailWithNoEiligbleRemoteDevices:devicesCopy];
  }
}

- (void)_deviceUpdateDidFailWithNoEiligbleRemoteDevices:(id)devices
{
  v12[1] = *MEMORY[0x1E69E9840];
  model = self->_model;
  devicesCopy = devices;
  remoteDevice = [(PKPaymentAuthorizationDataModel *)model remoteDevice];
  deviceName = [remoteDevice deviceName];

  if (deviceName)
  {
    v11 = @"PKContinuityDeviceNameKey";
    v12[0] = deviceName;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2008 userInfo:v8];
  v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
  [(PKPaymentAuthorizationStateMachine *)self _setState:14 param:v10];

  [(PKPaymentAuthorizationDataModel *)self->_model updateRemoteDevices:devicesCopy ignoreProximity:0];
}

- (void)_performUpdatePaymentDevices
{
  v3 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Updating remote payment devices", v4, 2u);
  }

  [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator updatePaymentDevices];
}

- (void)_performSendRemotePaymentRequest
{
  _createNewRemotePaymentRequest = [(PKPaymentAuthorizationStateMachine *)self _createNewRemotePaymentRequest];
  v4 = [PKPaymentAuthorizationContinuitySendParam paramWithRemotePaymentRequest:_createNewRemotePaymentRequest];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v4];

  objc_initWeak(&location, self);
  device = [_createNewRemotePaymentRequest device];
  deviceName = [device deviceName];

  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPaymentAuthorizationStateMachine__performSendRemotePaymentRequest__block_invoke;
  v9[3] = &unk_1E79CE0D8;
  objc_copyWeak(&v11, &location);
  v8 = deviceName;
  v10 = v8;
  [(PKContinuityPaymentCoordinator *)continuityPaymentCoordinator sendRemotePaymentRequest:_createNewRemotePaymentRequest completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__PKPaymentAuthorizationStateMachine__performSendRemotePaymentRequest__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentAuthorizationStateMachine__performSendRemotePaymentRequest__block_invoke_2;
  v7[3] = &unk_1E79CE0B0;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __70__PKPaymentAuthorizationStateMachine__performSendRemotePaymentRequest__block_invoke_2(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if ((*(a1 + 56) & 1) == 0)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v11[0] = *MEMORY[0x1E696AA08];
        v11[1] = @"PKContinuityDeviceNameKey";
        v7 = *(a1 + 40);
        v12[0] = v6;
        v12[1] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2010 userInfo:v8];
        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
        [v3 _setState:14 param:v10];
      }

      else
      {
        [v3 _advanceToNextState];
      }
    }
  }
}

- (void)_performSendClientUpdateWithShippingMethods:(id)methods paymentSummaryItems:(id)items multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest paymentApplication:(id)application status:(int64_t)self0
{
  methodsCopy = methods;
  itemsCopy = items;
  contextsCopy = contexts;
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  deferredPaymentRequestCopy = deferredPaymentRequest;
  applicationCopy = application;
  v23 = [PKPaymentClientUpdate alloc];
  applicationIdentifier = [applicationCopy applicationIdentifier];
  paymentType = [applicationCopy paymentType];
  v35 = itemsCopy;
  v36 = methodsCopy;
  v26 = itemsCopy;
  v27 = contextsCopy;
  v28 = [(PKPaymentClientUpdate *)v23 initWithPaymentSummaryItems:v26 shippingMethods:methodsCopy multiTokenContexts:contextsCopy recurringPaymentRequest:requestCopy automaticReloadPaymentRequest:paymentRequestCopy deferredPaymentRequest:deferredPaymentRequestCopy status:status selectedAID:applicationIdentifier selectedPaymentMethodType:paymentType];

  v29 = +[(PKPaymentAuthorizationStateParam *)PKPaymentAuthorizationContinuitySendParam];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v29];

  objc_initWeak(&location, self);
  currentRemotePaymentRequest = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];
  device = [currentRemotePaymentRequest device];
  deviceName = [device deviceName];

  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __224__PKPaymentAuthorizationStateMachine__performSendClientUpdateWithShippingMethods_paymentSummaryItems_multiTokenContexts_recurringPaymentRequest_automaticReloadPaymentRequest_deferredPaymentRequest_paymentApplication_status___block_invoke;
  v37[3] = &unk_1E79CE0D8;
  objc_copyWeak(&v39, &location);
  v34 = deviceName;
  v38 = v34;
  [(PKContinuityPaymentCoordinator *)continuityPaymentCoordinator sendPaymentClientUpdate:v28 completion:v37];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __224__PKPaymentAuthorizationStateMachine__performSendClientUpdateWithShippingMethods_paymentSummaryItems_multiTokenContexts_recurringPaymentRequest_automaticReloadPaymentRequest_deferredPaymentRequest_paymentApplication_status___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __224__PKPaymentAuthorizationStateMachine__performSendClientUpdateWithShippingMethods_paymentSummaryItems_multiTokenContexts_recurringPaymentRequest_automaticReloadPaymentRequest_deferredPaymentRequest_paymentApplication_status___block_invoke_2;
  v7[3] = &unk_1E79CE0B0;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __224__PKPaymentAuthorizationStateMachine__performSendClientUpdateWithShippingMethods_paymentSummaryItems_multiTokenContexts_recurringPaymentRequest_automaticReloadPaymentRequest_deferredPaymentRequest_paymentApplication_status___block_invoke_2(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if ((*(a1 + 56) & 1) == 0)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v11[0] = *MEMORY[0x1E696AA08];
        v11[1] = @"PKContinuityDeviceNameKey";
        v7 = *(a1 + 40);
        v12[0] = v6;
        v12[1] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2010 userInfo:v8];
        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
        [v3 _setState:14 param:v10];
      }

      else
      {
        [v3 _advanceToNextState];
      }
    }
  }
}

- (void)_performSendPaymentResult:(id)result
{
  resultCopy = result;
  v5 = +[(PKPaymentAuthorizationStateParam *)PKPaymentAuthorizationContinuitySendParam];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v5];

  objc_initWeak(&location, self);
  currentRemotePaymentRequest = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];
  device = [currentRemotePaymentRequest device];

  deviceName = [device deviceName];
  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentAuthorizationStateMachine__performSendPaymentResult___block_invoke;
  v12[3] = &unk_1E79CE128;
  objc_copyWeak(&v16, &location);
  v10 = deviceName;
  v13 = v10;
  selfCopy = self;
  v11 = resultCopy;
  v15 = v11;
  [(PKContinuityPaymentCoordinator *)continuityPaymentCoordinator sendPaymentResult:v11 completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __64__PKPaymentAuthorizationStateMachine__performSendPaymentResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PKPaymentAuthorizationStateMachine__performSendPaymentResult___block_invoke_2;
  v10[3] = &unk_1E79CE100;
  objc_copyWeak(&v15, (a1 + 56));
  v16 = a2;
  v11 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v15);
}

void __64__PKPaymentAuthorizationStateMachine__performSendPaymentResult___block_invoke_2(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v11[0] = *MEMORY[0x1E696AA08];
        v11[1] = @"PKContinuityDeviceNameKey";
        v7 = *(a1 + 40);
        v12[0] = v6;
        v12[1] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2010 userInfo:v8];
        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
        [v3 _setState:14 param:v10];
      }

      else
      {
        [v3 _advanceToNextState];
      }
    }
  }
}

- (id)_createNewRemotePaymentRequest
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:4];
  paymentApplication = [v4 paymentApplication];
  remoteDevice = [v4 remoteDevice];
  type = [remoteDevice type];
  majorOperatingSystemVersion = [remoteDevice majorOperatingSystemVersion];
  v9 = majorOperatingSystemVersion;
  v10 = type == 1 && majorOperatingSystemVersion < 16;
  if (v10 || (!type ? (v11 = majorOperatingSystemVersion <= 8) : (v11 = 0), v11))
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Bancomat", @"Bancontact", 0}];
    supportedNetworks = [paymentRequest supportedNetworks];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PKPaymentAuthorizationStateMachine__createNewRemotePaymentRequest__block_invoke;
    v22[3] = &unk_1E79C4340;
    v23 = v12;
    v14 = v12;
    v15 = [supportedNetworks pk_objectsPassingTest:v22];

    [paymentRequest setSupportedNetworks:v15];
  }

  v16 = type == 1 && v9 < 17;
  if (v16 || !type && v9 <= 9)
  {
    supportedNetworks2 = [paymentRequest supportedNetworks];
    v18 = [supportedNetworks2 pk_objectsPassingTest:&__block_literal_global_193_0];

    [paymentRequest setSupportedNetworks:v18];
  }

  v19 = [[PKRemotePaymentRequest alloc] initWithDevice:remoteDevice];
  [(PKRemotePaymentRequest *)v19 setPaymentRequest:paymentRequest];
  applicationIdentifier = [paymentApplication applicationIdentifier];
  [(PKRemotePaymentRequest *)v19 setSelectedApplicationIdentifier:applicationIdentifier];

  -[PKRemotePaymentRequest setSelectedPaymentMethodType:](v19, "setSelectedPaymentMethodType:", [paymentApplication paymentType]);

  return v19;
}

- (void)_start
{
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {

    [(PKPaymentAuthorizationStateMachine *)self _startPayment];
  }

  else if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 2)
  {

    [(PKPaymentAuthorizationStateMachine *)self _startHandoff];
  }
}

- (void)_startHandoff
{
  bluetoothMonitor = [(PKPaymentAuthorizationStateMachine *)self bluetoothMonitor];
  -[PKPaymentAuthorizationStateMachine _processBluetoothState:](self, "_processBluetoothState:", [bluetoothMonitor state]);
}

- (void)_startRemoteDeviceUpdate
{
  [(PKPaymentAuthorizationStateMachine *)self _performUpdatePaymentDevices];

  [(PKPaymentAuthorizationStateMachine *)self _setState:1 param:0];
}

- (void)_startPayment
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  merchantSession = [paymentRequest merchantSession];
  if (merchantSession)
  {

    goto LABEL_6;
  }

  if (![paymentRequest shouldUseMerchantSession])
  {
LABEL_6:
    if ([paymentRequest requestType] == 5)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performInstallmentBind];
    }

    else if ([paymentRequest requestType] == 4)
    {
      [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    }

    else
    {
      [(PKPaymentAuthorizationStateMachine *)self _updatePassRewardsInfo];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueInitialCallbacks];
    }

    goto LABEL_12;
  }

  if ([paymentRequest isVirtualCardRequest])
  {
    [(PKPaymentAuthorizationStateMachine *)self _retrieveVPANPaymentSession];
  }

  else
  {
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidRequestMerchantSession];
  }

LABEL_12:
}

- (void)_performInstallmentBind
{
  self->_awaitingWebServiceResponse = 1;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  installmentConfiguration = [paymentRequest installmentConfiguration];
  feature = [installmentConfiguration feature];
  if (feature == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2 * (feature == 1);
  }

  v7 = +[PKAccountService sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke;
  v9[3] = &unk_1E79CE198;
  v10 = paymentRequest;
  selfCopy = self;
  v8 = paymentRequest;
  [v7 defaultAccountForFeature:v6 completion:v9];
}

void __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) installmentConfiguration];
    v8 = [*(a1 + 32) merchantIdentifier];
    if (!v8)
    {
      v10 = [*(a1 + 32) merchantSession];
      v9 = [v10 merchantIdentifier];

      if (v9)
      {
        goto LABEL_6;
      }

      v8 = [v7 installmentMerchantIdentifier];
    }

    v9 = v8;
LABEL_6:
    v11 = objc_alloc_init(PKAccountWebServiceInstallmentBindRequest);
    v12 = [v5 accountIdentifier];
    [(PKAccountWebServiceInstallmentBindRequest *)v11 setAccountIdentifier:v12];

    v13 = [v7 bindingTotalAmount];
    [(PKAccountWebServiceInstallmentBindRequest *)v11 setBindingAmount:v13];

    [(PKAccountWebServiceInstallmentBindRequest *)v11 setMerchantIdentifier:v9];
    v14 = [v5 accountBaseURL];
    [(PKAccountWebServiceInstallmentBindRequest *)v11 setBaseURL:v14];

    objc_initWeak(&location, *(a1 + 40));
    v15 = *(*(a1 + 40) + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_2;
    v17[3] = &unk_1E79CE170;
    objc_copyWeak(&v18, &location);
    [v15 performInstallmentBindWithRequest:v11 completion:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    goto LABEL_7;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_4;
  block[3] = &unk_1E79C4E28;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_7:
}

void __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_3;
  block[3] = &unk_1E79C9528;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(WeakRetained + 11) = 0;
    v7 = WeakRetained;
    if (*(a1 + 32) && !*(a1 + 40))
    {
      [*(WeakRetained + 7) beginUpdates];
      v5 = v7[7];
      v6 = [*(a1 + 32) bindToken];
      [v5 setInstallmentBindToken:v6];

      [v7[7] endUpdates];
      [v7 _enqueueInitialCallbacks];
    }

    else
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:15 userInfo:0];
      v4 = [PKPaymentAuthorizationErrorStateParam paramWithError:v3];
      [v7 _setState:15 param:v4];
    }

    WeakRetained = v7;
  }
}

void __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 11) = 0;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:15 userInfo:0];
  v2 = *(a1 + 32);
  v3 = [PKPaymentAuthorizationErrorStateParam paramWithError:v4];
  [v2 _setState:15 param:v3];
}

- (void)_enqueueInitialCallbacks
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([paymentRequest shippingAddress])
  {
    v3 = 1;
  }

  else
  {
    shippingContact = [paymentRequest shippingContact];
    postalAddress = [shippingContact postalAddress];
    v3 = postalAddress != 0;
  }

  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
  if ([requiredShippingContactFields containsObject:@"post"] && !v3)
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:5];
    v8 = [v7 isValidWithError:0];

    if (!v8)
    {
      goto LABEL_9;
    }

    requiredShippingContactFields = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectShippingContact:requiredShippingContactFields];
  }

LABEL_9:
  mode = [(PKPaymentAuthorizationDataModel *)self->_model mode];
  if (mode != 2)
  {
    if (mode != 1)
    {
      goto LABEL_59;
    }

    if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode])
    {
      v10 = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2;
    }

    else
    {
      v10 = 1;
    }

    paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    requestType = [paymentRequest2 requestType];
    peerPaymentQuote = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentQuote];
    v14 = peerPaymentQuote;
    if (v10)
    {
      if (peerPaymentQuote)
      {
        v15 = [peerPaymentQuote firstQuoteItemOfType:1];
        v16 = v15 != 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = requestType != 1 && requestType != 4 && v16;
      if (requestType == 2)
      {
LABEL_28:
        deviceSupportsPeerPaymentAccountPayment = [paymentRequest2 deviceSupportsPeerPaymentAccountPayment];
        if (deviceSupportsPeerPaymentAccountPayment && [paymentRequest2 accountPaymentUsePeerPaymentBalance])
        {
          peerPaymentBalanceForAccountPayment = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentBalanceForAccountPayment];
        }

        else
        {
          peerPaymentBalanceForAccountPayment = 0;
        }

        if ([paymentRequest2 isAccountServiceTransferRequest])
        {
          accountServiceTransferRequest = [paymentRequest2 accountServiceTransferRequest];
          supportsSplitPayment = [accountServiceTransferRequest supportsSplitPayment];

          v25 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:2];

          v26 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:9];
          if (v26)
          {
            v27 = v25 != 0;
          }

          else
          {
            v27 = 0;
          }

          if ((v27 & supportsSplitPayment) != 0)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          if (v25)
          {
            v29 = v28;
          }

          else
          {
            v29 = v26 != 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = [PKAccountServicePaymentMethod alloc];
        bankAccount = [(PKPaymentAuthorizationDataModel *)self->_model bankAccount];
        v32 = [(PKAccountServicePaymentMethod *)v30 initWithBankAccountInformation:bankAccount peerPaymentBalance:peerPaymentBalanceForAccountPayment deviceSupportsPeerPaymentAccountPayment:deviceSupportsPeerPaymentAccountPayment selectedMethods:v29];

        [(PKPaymentAuthorizationStateMachine *)self _enqueueDidUpdateAccountServicePaymentMethod:v32];
        goto LABEL_51;
      }
    }

    else
    {
      if (requestType == 2)
      {
        goto LABEL_28;
      }

      v17 = 0;
    }

    v21 = requestType == 5;
    v22 = requestType != 5 && v17;
    if (!v21)
    {
      goto LABEL_52;
    }

    peerPaymentBalanceForAccountPayment = [(PKPaymentAuthorizationDataModel *)self->_model installmentBindToken];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentMethodWithBindToken:peerPaymentBalanceForAccountPayment];
LABEL_51:

    v22 = 0;
LABEL_52:
    if (!v22 && v14)
    {
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentMethodWithQuote:v14];
    }

    if (v22)
    {
      pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:pass];
    }

    goto LABEL_58;
  }

  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:paymentRequest2];
LABEL_58:

LABEL_59:
}

- (void)_sendDidTransitionFromState:(unint64_t)state toState:(unint64_t)toState withParam:(id)param
{
  v20 = *MEMORY[0x1E69E9840];
  paramCopy = param;
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (state > 0x14)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1E79CE800[state];
    }

    if (toState > 0x14)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E79CE800[toState];
    }

    v12 = @"<none>";
    v14 = 138412802;
    if (paramCopy)
    {
      v12 = paramCopy;
    }

    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "State machine change state from %@ to %@ with param: %@", &v14, 0x20u);
  }

  [(PKPaymentAuthorizationStateMachine *)self _emitSignpostEvent:toState];
  delegate = [(PKPaymentAuthorizationStateMachine *)self delegate];
  [delegate paymentAuthorizationStateMachine:self didTransitionFromState:state toState:toState withParam:paramCopy];
}

- (void)_emitSignpostEvent:(unint64_t)event
{
  switch(event)
  {
    case 0uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v5 = os_signpost_id_make_with_pointer(v4, self);
      if (v5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v5;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "initialize";
      break;
    case 1uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v16 = os_signpost_id_make_with_pointer(v4, self);
      if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v16;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "continuitySearch";
      break;
    case 3uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v13 = os_signpost_id_make_with_pointer(v4, self);
      if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v13;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "invalidData";
      break;
    case 4uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v21 = os_signpost_id_make_with_pointer(v4, self);
      if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v21;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "continuitySend";
      break;
    case 5uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v22 = os_signpost_id_make_with_pointer(v4, self);
      if (v22 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v22;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "authenticate";
      break;
    case 6uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v14 = os_signpost_id_make_with_pointer(v4, self);
      if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v14;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "inactive";
      break;
    case 7uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v17 = os_signpost_id_make_with_pointer(v4, self);
      if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v17;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "clientCallback";
      break;
    case 8uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v18 = os_signpost_id_make_with_pointer(v4, self);
      if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v18;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "prepareTransactionDetails";
      break;
    case 9uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v24 = os_signpost_id_make_with_pointer(v4, self);
      if (v24 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v24;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "nonce";
      break;
    case 0xAuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v23 = os_signpost_id_make_with_pointer(v4, self);
      if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v23;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "authorize";
      break;
    case 0xBuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v10 = os_signpost_id_make_with_pointer(v4, self);
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v10;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "rewrap";
      break;
    case 0xCuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v15 = os_signpost_id_make_with_pointer(v4, self);
      if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v15;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "authorized";
      break;
    case 0xDuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v11 = os_signpost_id_make_with_pointer(v4, self);
      if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v11;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "cancel";
      break;
    case 0xEuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v9 = os_signpost_id_make_with_pointer(v4, self);
      if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v9;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "error";
      break;
    case 0xFuLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v19 = os_signpost_id_make_with_pointer(v4, self);
      if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v19;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "fatalError";
      break;
    case 0x10uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v20 = os_signpost_id_make_with_pointer(v4, self);
      if (v20 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v20;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "success";
      break;
    case 0x11uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v26 = os_signpost_id_make_with_pointer(v4, self);
      if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v26;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "dataProcessing";
      break;
    case 0x12uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v25 = os_signpost_id_make_with_pointer(v4, self);
      if (v25 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v25;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "updatingPaymentOffers";
      break;
    case 0x13uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v8 = os_signpost_id_make_with_pointer(v4, self);
      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v8;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "paymentOfferInvalid";
      break;
    case 0x14uLL:
      v4 = PKLogFacilityTypeGetObject(8uLL);
      v12 = os_signpost_id_make_with_pointer(v4, self);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v6 = v12;
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_63;
      }

      *v27 = 0;
      v7 = "loadingPreconfiguredInstallmentPaymentOffer";
      break;
    default:
      return;
  }

  _os_signpost_emit_with_name_impl(&dword_1AD337000, v4, OS_SIGNPOST_EVENT, v6, "stateMachine", v7, v27, 2u);
LABEL_63:
}

- (void)_advanceToNextStateFromResolveError:(BOOL)error
{
  errorCopy = error;
  v49 = *MEMORY[0x1E69E9840];
  v6 = 1;
  v46 = 0;
  v47 = 1;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model isValidWithError:&v46 errorStatus:&v47];
  v8 = v46;
  paymentOffersController = self->_paymentOffersController;
  if (paymentOffersController)
  {
    pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    uniqueID = [pass uniqueID];
    v6 = [(PKPaymentOffersController *)paymentOffersController preconfiguredInstallmentOfferStateForPassUniqueID:uniqueID]- 5 < 0xFFFFFFFFFFFFFFFELL;
  }

  if (self->_awaitingClientCallbackReply || self->_awaitingWebServiceResponse || !v7 && self->_state == 3)
  {
    goto LABEL_63;
  }

  if (self->_hostApplicationState)
  {
    state = self->_state;
    if (state - 9 >= 4 && state != 17)
    {
      selfCopy7 = self;
      v18 = 6;
LABEL_62:
      [(PKPaymentAuthorizationStateMachine *)selfCopy7 _setState:v18 param:0];
      goto LABEL_63;
    }
  }

  if ([(NSMutableArray *)self->_callbackQueue count])
  {
    [(PKPaymentAuthorizationStateMachine *)self _dispatchNextCallbackParam];
    goto LABEL_63;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v47 == 10 && !v7)
  {
    selfCopy7 = self;
    v18 = 18;
    goto LABEL_62;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v47 == 11 && !v7)
  {
    if (errorCopy)
    {
      selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
      criteriaIdentifier = [selectedPaymentOffer criteriaIdentifier];
      passUniqueID = [selectedPaymentOffer passUniqueID];
      [(PKPaymentOffersController *)self->_paymentOffersController resetLoadingDetailsForPaymentOffersForCriteriaIdentifier:criteriaIdentifier passUniqueID:passUniqueID];
      [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];

LABEL_47:
      goto LABEL_63;
    }

    selectedPaymentOffer = [PKPaymentAuthorizationErrorStateParam paramWithError:v8 paymentOffersError:1];
    selfCopy8 = self;
    v24 = 14;
LABEL_46:
    [(PKPaymentAuthorizationStateMachine *)selfCopy8 _setState:v24 param:selectedPaymentOffer];
    goto LABEL_47;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v47 == 12 && !v7)
  {
    v22 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "The previously selected payment offer is no longer valid. User needs to take action.", buf, 2u);
    }

    selectedPaymentOffer = [PKPaymentAuthorizationErrorStateParam paramWithError:v8 paymentOffersError:1];
    selfCopy8 = self;
    v24 = 19;
    goto LABEL_46;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 0 && !v6)
  {
    selfCopy7 = self;
    v18 = 20;
    goto LABEL_62;
  }

  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  isVirtualCardRequest = [paymentRequest isVirtualCardRequest];
  if (isVirtualCardRequest)
  {
    if (!self->_state)
    {
      goto LABEL_53;
    }

LABEL_42:

    goto LABEL_43;
  }

  pass = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([pass requestType] != 1 || self->_state)
  {

    goto LABEL_42;
  }

LABEL_53:
  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  merchantSession = [paymentRequest2 merchantSession];
  if (merchantSession && [(PKPaymentAuthorizationDataModel *)self->_model wantsInstructions])
  {
    instructions = [(PKPaymentAuthorizationDataModel *)self->_model instructions];
    v31 = instructions == 0;
  }

  else
  {
    v31 = 0;
  }

  if (isVirtualCardRequest)
  {

    if (v31)
    {
      goto LABEL_61;
    }
  }

  else
  {

    if (v31)
    {
LABEL_61:
      selfCopy7 = self;
      v18 = 8;
      goto LABEL_62;
    }
  }

LABEL_43:
  if (v7)
  {
    selfCopy7 = self;
    v18 = 5;
    goto LABEL_62;
  }

  if (self->_state != 3 && ![(PKPaymentAuthorizationDataModel *)self->_model isHideMyEmailLoading])
  {
    pass2 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    if (!pass2)
    {
      paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      originatingURL = [paymentRequest3 originatingURL];
      v34 = PKPaymentSheetShowExpressProvisioning(originatingURL);

      if (!v34)
      {
        goto LABEL_52;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      pass2 = [(PKPaymentAuthorizationDataModel *)self->_model unavailablePasses];
      v35 = [pass2 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v42;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v42 != v37)
            {
              objc_enumerationMutation(pass2);
            }

            secureElementPass = [*(*(&v41 + 1) + 8 * i) secureElementPass];
            passActivationState = [secureElementPass passActivationState];

            if (passActivationState == 1)
            {
              v47 = 8;
              goto LABEL_51;
            }
          }

          v36 = [pass2 countByEnumeratingWithState:&v41 objects:v48 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_51:

LABEL_52:
    v26 = v47;
    paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
    selectedPaymentOffer = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:0 status:v26 error:v8 clientErrors:paymentErrors];

    selfCopy8 = self;
    v24 = 3;
    goto LABEL_46;
  }

LABEL_63:
}

- (void)_updateModelWithPaymentSummaryItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  model = self->_model;
  itemsCopy = items;
  transactionAmount = [(PKPaymentAuthorizationDataModel *)model transactionAmount];
  [(PKPaymentAuthorizationDataModel *)self->_model setPaymentSummaryItems:itemsCopy];

  transactionAmount2 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v9 = [PKPaymentRequestValidator validatorWithObject:paymentRequest];
  v14 = 0;
  v10 = [v9 isValidWithError:&v14];
  v11 = v14;

  if (v10)
  {
    if (transactionAmount && transactionAmount2)
    {
      if ([transactionAmount isEqual:transactionAmount2])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (transactionAmount != transactionAmount2)
    {
LABEL_10:
      [(PKPaymentAuthorizationStateMachine *)self _fetchAdditionalPaymentMethodDataIfNeeded];
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_error_impl(&dword_1AD337000, v12, OS_LOG_TYPE_ERROR, "Updates to Payment Summary Items have caused an invalid Payment Request. Error: %@", buf, 0xCu);
    }

    v13 = [PKPaymentAuthorizationErrorStateParam paramWithError:v11];
    [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v13];
  }

LABEL_11:
}

- (BOOL)_isMultiTokenContextsSupported
{
  selfCopy = self;
  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v4 = [targetDevice paymentWebService:selfCopy->_paymentWebService supportedRegionFeatureOfType:4];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

- (BOOL)_canUpdateWithMultiTokenContexts:(id)contexts error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  multiTokenContexts = [paymentRequest multiTokenContexts];

  if ([multiTokenContexts count])
  {
    v26 = multiTokenContexts;
    v27 = contextsCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = contextsCopy;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      errorCopy = error;
      v12 = 0;
      v13 = *v30;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v9);
          }

          errorCopy = [PKPaymentTokenContextValidator validatorWithObject:*(*(&v29 + 1) + 8 * v14), errorCopy];
          paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          currencyCode = [paymentRequest2 currencyCode];
          [errorCopy setCurrencyCode:currencyCode];

          paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          aPIType = [paymentRequest3 APIType];
          v28 = v15;
          v21 = [errorCopy isValidWithAPIType:aPIType withError:&v28];
          v12 = v28;

          if (!v21)
          {
            multiTokenContexts = v26;
            contextsCopy = v27;
            error = errorCopy;
            goto LABEL_13;
          }

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

    v23 = 1;
    multiTokenContexts = v26;
    contextsCopy = v27;
  }

  else
  {
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"The original payment request didn't have multi token contexts";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
LABEL_13:

    if (error)
    {
      v22 = v12;
      v23 = 0;
      *error = v12;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)_isDeviceTransactionAssessmentEnabled
{
  if (![(PKPaymentAuthorizationStateMachine *)self _isRequestUsedForTransactionAssessment])
  {
    return 0;
  }

  if (PKHasSeenDeviceAssessmentEducation())
  {
    paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    if (paymentApplication)
    {
      v4 = paymentApplication;
      v5 = [paymentApplication supportsDeviceAssessmentAccordingToService:self->_paymentWebService];
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "No payment application found, returning device assessment as enabled.", v8, 2u);
      }

      v4 = 0;
      v5 = 1;
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "User hasn't seen device assessment education, returning device assessment as disabled.", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isRequestUsedForTransactionAssessment
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  isPeerPaymentRequest = [paymentRequest isPeerPaymentRequest];

  if (isPeerPaymentRequest)
  {
    return 0;
  }

  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  isAccountServiceTransferRequest = [paymentRequest2 isAccountServiceTransferRequest];

  return isAccountServiceTransferRequest ^ 1;
}

- (BOOL)_isMerchantTokensSupported
{
  selfCopy = self;
  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v4 = [targetDevice paymentWebService:selfCopy->_paymentWebService supportedRegionFeatureOfType:3];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

- (BOOL)_canUpdateWithRecurringPaymentRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  recurringPaymentRequest = [paymentRequest recurringPaymentRequest];

  if (recurringPaymentRequest)
  {
    [requestCopy sanitize];
    billingAgreement = [requestCopy billingAgreement];
    billingAgreement2 = [recurringPaymentRequest billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:billingAgreement oldAgreement:billingAgreement2 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have a recurring payment request";
    billingAgreement = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:billingAgreement];
    v11 = 0;
  }

  if (error && !v11)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)_canUpdateWithAutomaticReloadPaymentRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  automaticReloadPaymentRequest = [paymentRequest automaticReloadPaymentRequest];

  if (automaticReloadPaymentRequest)
  {
    [requestCopy sanitize];
    billingAgreement = [requestCopy billingAgreement];
    billingAgreement2 = [automaticReloadPaymentRequest billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:billingAgreement oldAgreement:billingAgreement2 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have an automatic reload payment request";
    billingAgreement = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:billingAgreement];
    v11 = 0;
  }

  if (error && !v11)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)_canUpdateWithBillingAgreement:(id)agreement oldAgreement:(id)oldAgreement error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  agreementCopy = agreement;
  oldAgreementCopy = oldAgreement;
  v9 = agreementCopy;
  v10 = v9;
  if (oldAgreementCopy == v9)
  {

    goto LABEL_7;
  }

  if (!v9 || !oldAgreementCopy)
  {

    goto LABEL_9;
  }

  v11 = [oldAgreementCopy isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    v12 = 0;
    v13 = 1;
    goto LABEL_12;
  }

LABEL_9:
  v17 = *MEMORY[0x1E696A578];
  v18[0] = @"Billing agreements can't be changed";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];

  if (error)
  {
    v15 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (BOOL)_canUpdateWithDeferredPaymentRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  deferredPaymentRequest = [paymentRequest deferredPaymentRequest];

  if (deferredPaymentRequest)
  {
    [requestCopy sanitize];
    billingAgreement = [requestCopy billingAgreement];
    billingAgreement2 = [deferredPaymentRequest billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:billingAgreement oldAgreement:billingAgreement2 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have a deferred payment request";
    billingAgreement = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:billingAgreement];
    v11 = 0;
  }

  if (error && !v11)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (void)_updateModelWithShippingMethods:(id)methods paymentSummaryItems:(id)items multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest contentItems:(id)contentItems
{
  v113[1] = *MEMORY[0x1E69E9840];
  methodsCopy = methods;
  itemsCopy = items;
  contextsCopy = contexts;
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  deferredPaymentRequestCopy = deferredPaymentRequest;
  contentItemsCopy = contentItems;
  transactionAmount = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  v105 = contentItemsCopy;
  if ([contextsCopy count] && -[PKPaymentAuthorizationStateMachine _isMultiTokenContextsSupported](self, "_isMultiTokenContextsSupported"))
  {
    v111 = 0;
    v21 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithMultiTokenContexts:contextsCopy error:&v111];
    v22 = v111;
    if (!v21)
    {
      v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v53 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v53];
      v55 = v54 = deferredPaymentRequestCopy;
      v56 = [PKPaymentAuthorizationErrorStateParam paramWithError:v55];
      goto LABEL_35;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model setMultiTokenContexts:contextsCopy];
  }

  if (requestCopy && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v110 = 0;
    v23 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithRecurringPaymentRequest:requestCopy error:&v110];
    v24 = v110;
    if (!v23)
    {
      goto LABEL_33;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model setRecurringPaymentRequest:requestCopy];
  }

  if (paymentRequestCopy && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v109 = 0;
    v25 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithAutomaticReloadPaymentRequest:paymentRequestCopy error:&v109];
    v24 = v109;
    if (v25)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setAutomaticReloadPaymentRequest:paymentRequestCopy];

      goto LABEL_13;
    }

LABEL_33:
    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v53 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v53];
    v55 = v54 = deferredPaymentRequestCopy;
    v56 = [PKPaymentAuthorizationErrorStateParam paramWithError:v55];
    v22 = v24;
LABEL_35:
    v57 = v56;
    [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v56];

    v58 = v22;
    v59 = v54;

LABEL_59:
    v85 = transactionAmount;
    goto LABEL_60;
  }

LABEL_13:
  if (deferredPaymentRequestCopy && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v108 = 0;
    v26 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithDeferredPaymentRequest:deferredPaymentRequestCopy error:&v108];
    v24 = v108;
    if (v26)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setDeferredPaymentRequest:deferredPaymentRequestCopy];

      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_17:
  v103 = deferredPaymentRequestCopy;
  methods = [methodsCopy methods];
  v28 = [methods count];

  if (v28)
  {
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [paymentRequest setAvailableShippingMethods:methodsCopy];

    model = self->_model;
    defaultMethod = [methodsCopy defaultMethod];
    [(PKPaymentAuthorizationDataModel *)model setShippingMethod:defaultMethod];
  }

  v32 = [itemsCopy count];
  if (v32)
  {
    v33 = v32;
    paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    requestType = [paymentRequest2 requestType];

    v36 = v33 - 1;
    if (v36 && requestType == 5)
    {
      lastObject = [itemsCopy lastObject];
      amount = [lastObject amount];

      v39 = [itemsCopy subarrayWithRange:{0, v36}];

      [(PKPaymentAuthorizationDataModel *)self->_model setInstallmentAuthorizationAmount:amount];
      itemsCopy = v39;
    }

    [(PKPaymentAuthorizationStateMachine *)self _updateModelWithPaymentSummaryItems:itemsCopy];
  }

  if ([contentItemsCopy count])
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setPaymentContentItems:contentItemsCopy];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
  paymentSummaryItems = [(PKPaymentAuthorizationDataModel *)self->_model paymentSummaryItems];
  lastObject2 = [paymentSummaryItems lastObject];

  v102 = paymentRequestCopy;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    if (![pass hasAssociatedPeerPaymentAccount])
    {
LABEL_30:

      goto LABEL_31;
    }

    paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([paymentRequest3 requestType] == 10)
    {

      goto LABEL_30;
    }

    fundingMode = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];

    if (!fundingMode)
    {
      v100 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
      if ([v100 status] == 5)
      {
        [(PKPaymentAuthorizationDataModel *)self->_model setStatus:0 forItemWithType:3];
      }

      pass2 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      peerPaymentBalance = [pass2 peerPaymentBalance];

      paymentRequest4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      currency = [peerPaymentBalance currency];
      v65 = paymentRequest4;
      currencyCode = [paymentRequest4 currencyCode];
      v67 = [currency caseInsensitiveCompare:currencyCode];

      if (v67)
      {
        v68 = peerPaymentBalance;
        v69 = 1;
      }

      else
      {
        amount2 = [peerPaymentBalance amount];
        amount3 = [lastObject2 amount];
        v68 = peerPaymentBalance;
        v69 = [amount2 compare:amount3] != -1;
      }

      v98 = v68;
      amount4 = [v68 amount];
      zero = [MEMORY[0x1E696AB90] zero];
      v74 = [amount4 compare:zero];

      requestType2 = [v65 requestType];
      requestType3 = [v65 requestType];
      if (!v69 || !v74 && requestType2 != 3 && requestType3 != 12)
      {
        v77 = requestCopy;
        v78 = MEMORY[0x1E696ABC0];
        v112 = *MEMORY[0x1E696A588];
        v79 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
        v113[0] = v79;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:&v112 count:1];
        v81 = [v78 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v80];

        paymentErrors = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v83 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:5 error:v81 clientErrors:paymentErrors];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v83];
        if ([(PKPaymentAuthorizationStateMachine *)self hasPendingCallbacks])
        {
          [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
        }

        requestCopy = v77;
        goto LABEL_58;
      }

      goto LABEL_50;
    }
  }

LABEL_31:
  currentRemotePaymentRequest = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

  if (currentRemotePaymentRequest)
  {
    paymentRequest5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    multiTokenContexts = [paymentRequest5 multiTokenContexts];
    paymentRequest6 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    recurringPaymentRequest = [paymentRequest6 recurringPaymentRequest];
    paymentRequest7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    automaticReloadPaymentRequest = [paymentRequest7 automaticReloadPaymentRequest];
    paymentRequest8 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [paymentRequest8 deferredPaymentRequest];
    v48 = requestCopy;
    v50 = v49 = itemsCopy;
    [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v52 = v51 = contextsCopy;
    [(PKPaymentAuthorizationStateMachine *)self _performSendClientUpdateWithShippingMethods:methodsCopy paymentSummaryItems:v49 multiTokenContexts:multiTokenContexts recurringPaymentRequest:recurringPaymentRequest automaticReloadPaymentRequest:automaticReloadPaymentRequest deferredPaymentRequest:v50 paymentApplication:v52 status:0];

    contextsCopy = v51;
    itemsCopy = v49;
    requestCopy = v48;

LABEL_57:
    paymentRequestCopy = v102;
LABEL_58:
    v59 = v103;
    v58 = lastObject2;
    goto LABEL_59;
  }

LABEL_50:
  if (![(PKPaymentAuthorizationDataModel *)self->_model wantsInstructions])
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    goto LABEL_57;
  }

  transactionAmount2 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  v85 = transactionAmount;
  v86 = [transactionAmount2 isEqualToValue:transactionAmount];

  v59 = v103;
  v58 = lastObject2;
  if ((v86 & 1) == 0)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setInstructions:0];
  }

  paymentRequestCopy = v102;
  if ([(PKPaymentAuthorizationStateMachine *)self hasPendingCallbacks]|| ([(PKPaymentAuthorizationDataModel *)self->_model instructions], v87 = objc_claimAutoreleasedReturnValue(), v87, v87))
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }

  else
  {
    paymentRequest9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    merchantSession = [paymentRequest9 merchantSession];
    [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v90 = v101 = itemsCopy;
    secureElementIdentifier = [v90 secureElementIdentifier];
    transactionAmount3 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
    v94 = v93 = requestCopy;
    v95 = [PKPaymentAuthorizationPrepareTransactionDetailsStateParam paramWithMerchantSession:merchantSession secureElementIdentifier:secureElementIdentifier transactionAmount:transactionAmount3 currencyCode:v94];

    requestCopy = v93;
    v59 = v103;

    v58 = lastObject2;
    v85 = transactionAmount;

    itemsCopy = v101;
    paymentRequestCopy = v102;

    [(PKPaymentAuthorizationStateMachine *)self _setState:8 param:v95];
  }

LABEL_60:
}

- (void)_updateAssessmentAttributes
{
  if ([(PKPaymentAuthorizationStateMachine *)self _isDeviceTransactionAssessmentEnabled])
  {
    if (![(PKODIAssessment *)self->_odiTransactionAssessment isAssessing])
    {
      v3 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "CoreODI not assessing, starting...", v4, 2u);
      }

      [(PKPaymentAuthorizationStateMachine *)self _startAssessmentIfNecessary];
    }

    [(PKODIAssessment *)self->_odiTransactionAssessment updateAssessmentWithModel:self->_model];
  }
}

- (void)_updatePassRewardsInfo
{
  if (PKIsPhone())
  {
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([paymentRequest requestType] || -[PKPaymentAuthorizationDataModel mode](self->_model, "mode") != 1 || !self->_accountService)
    {
      goto LABEL_21;
    }

    appleCardPass = [(PKPaymentAuthorizationDataModel *)self->_model appleCardPass];
    associatedAccountServiceAccountIdentifier = [appleCardPass associatedAccountServiceAccountIdentifier];
    if (![associatedAccountServiceAccountIdentifier length])
    {
LABEL_20:

LABEL_21:
      return;
    }

    hashedMerchantIdentifier = [paymentRequest hashedMerchantIdentifier];
    if (!hashedMerchantIdentifier)
    {
LABEL_19:

      goto LABEL_20;
    }

    objc_initWeak(location, self);
    if (!self->_enhancedMerchantsFetcher)
    {
      v7 = [[PKAccountEnhancedMerchantsFetcher alloc] initWithAccountIdentifier:associatedAccountServiceAccountIdentifier accountService:self->_accountService];
      enhancedMerchantsFetcher = self->_enhancedMerchantsFetcher;
      self->_enhancedMerchantsFetcher = v7;

      v9 = self->_enhancedMerchantsFetcher;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke;
      v23[3] = &unk_1E79C9D80;
      objc_copyWeak(&v24, location);
      v10 = [(PKAccountEnhancedMerchantsFetcher *)v9 addUpdateHandler:v23];
      enhancedMerchantsFetcherUpdateToken = self->_enhancedMerchantsFetcherUpdateToken;
      self->_enhancedMerchantsFetcherUpdateToken = v10;

      objc_destroyWeak(&v24);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke_2;
    aBlock[3] = &unk_1E79C9528;
    objc_copyWeak(&v22, location);
    aBlock[4] = self;
    v21 = hashedMerchantIdentifier;
    v12 = _Block_copy(aBlock);
    accountIdentifier = [(PKAccount *)self->_appleCardAccount accountIdentifier];
    v14 = associatedAccountServiceAccountIdentifier;
    v15 = v14;
    if (accountIdentifier == v14)
    {
    }

    else
    {
      if (!v14 || !accountIdentifier)
      {

LABEL_17:
        accountService = self->_accountService;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke_3;
        v18[3] = &unk_1E79C4928;
        v18[4] = self;
        v19 = v12;
        [(PKAccountService *)accountService accountWithIdentifier:v15 completion:v18];

        goto LABEL_18;
      }

      v16 = [accountIdentifier isEqualToString:v14];

      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v12[2](v12);
LABEL_18:

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
    goto LABEL_19;
  }
}

void __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePassRewardsInfo];
}

void __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(*(a1 + 32) + 232) showPaymentSheetRewards])
  {
    [WeakRetained _performPassRewardsUpdateForCooldownLevel:3 ignoreErrorBackoff:0 merchantIdentifier:*(a1 + 40)];
  }
}

void __60__PKPaymentAuthorizationStateMachine__updatePassRewardsInfo__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    v7 = v6;
    objc_storeStrong((*(a1 + 32) + 232), a2);
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

- (void)_performPassRewardsUpdateForCooldownLevel:(unint64_t)level ignoreErrorBackoff:(BOOL)backoff merchantIdentifier:(id)identifier
{
  backoffCopy = backoff;
  identifierCopy = identifier;
  appleCardPass = [(PKPaymentAuthorizationDataModel *)self->_model appleCardPass];
  objc_initWeak(&location, self);
  enhancedMerchantsFetcher = self->_enhancedMerchantsFetcher;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentAuthorizationStateMachine__performPassRewardsUpdateForCooldownLevel_ignoreErrorBackoff_merchantIdentifier___block_invoke;
  v13[3] = &unk_1E79CE1C0;
  objc_copyWeak(v16, &location);
  v11 = appleCardPass;
  v14 = v11;
  v16[1] = level;
  v12 = identifierCopy;
  v15 = v12;
  [(PKAccountEnhancedMerchantsFetcher *)enhancedMerchantsFetcher updateDataWithCooldownLevel:level ignoreErrorBackoff:backoffCopy completion:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __118__PKPaymentAuthorizationStateMachine__performPassRewardsUpdateForCooldownLevel_ignoreErrorBackoff_merchantIdentifier___block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
LABEL_8:
      [v5[7] setEnhancedMerchantInfo:0 forPass:*(a1 + 32)];
      goto LABEL_13;
    }

    v6 = *(a1 + 56);
    v7 = [WeakRetained[27] dataIsWithinThresholdForCooldownLevel:1];
    v8 = v7;
    if (v6 == 1 && (v7 & 1) == 0)
    {
      v9 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v12 = 134217984;
        v13 = v10;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unexpected error: current account merchant data does not meet requested level of %ld", &v12, 0xCu);
      }

      goto LABEL_8;
    }

    v11 = [v5[27] enhancedMerchantMatchingPaymentIdentifier:*(a1 + 40)];
    if ((v11 == 0) | v8 & 1)
    {
      [v5[7] setEnhancedMerchantInfo:v11 forPass:*(a1 + 32)];
    }

    else
    {
      [v5 _performPassRewardsUpdateForCooldownLevel:1 ignoreErrorBackoff:1 merchantIdentifier:*(a1 + 40)];
    }
  }

LABEL_13:
}

- (void)_dispatchNextCallbackParam
{
  v11 = *MEMORY[0x1E69E9840];
  _dequeuePendingCallbackParam = [(PKPaymentAuthorizationStateMachine *)self _dequeuePendingCallbackParam];
  v4 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    kind = [(PKPaymentAuthorizationClientCallbackStateParam *)_dequeuePendingCallbackParam kind];
    if (kind > 0xA)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_1E79CE8A8[kind];
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "State machine dispatching callback kind: %@", &v9, 0xCu);
  }

  self->_awaitingClientCallbackReply = 1;
  mostRecentClientCallback = self->_mostRecentClientCallback;
  self->_mostRecentClientCallback = _dequeuePendingCallbackParam;
  v8 = _dequeuePendingCallbackParam;

  [(PKPaymentAuthorizationStateMachine *)self _startClientCallbackTimer];
  [(PKPaymentAuthorizationStateMachine *)self _setState:7 param:v8];
}

- (void)_enqueueCallbackOfKind:(int64_t)kind withObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (kind > 0xA)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1E79CE8A8[kind];
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = objectCopy;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "State machine enqueueing callback kind: %@ object: %@", &v13, 0x16u);
  }

  callbackQueue = self->_callbackQueue;
  if (!callbackQueue)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = self->_callbackQueue;
    self->_callbackQueue = array;

    callbackQueue = self->_callbackQueue;
  }

  v12 = [PKPaymentAuthorizationClientCallbackStateParam paramWithCallbackKind:kind object:objectCopy];
  [(NSMutableArray *)callbackQueue addObject:v12];

  if (!self->_awaitingClientCallbackReply)
  {
    [(PKPaymentAuthorizationStateMachine *)self _dispatchNextCallbackParam];
  }
}

- (id)_dequeuePendingCallbackParam
{
  firstObject = [(NSMutableArray *)self->_callbackQueue firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_callbackQueue removeObjectAtIndex:0];
  }

  return firstObject;
}

- (void)_startClientCallbackTimer
{
  v17 = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  [paymentRequest clientCallbackTimeout];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v7 = 30000000000;
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Payment request specifies a custom client callback timeout of %f seconds.", buf, 0xCu);
    }

    v7 = (v5 * 1000000000.0);
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  clientCallbackTimer = self->_clientCallbackTimer;
  self->_clientCallbackTimer = v8;

  v10 = self->_clientCallbackTimer;
  v11 = dispatch_time(0, v7);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  v12 = self->_clientCallbackTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63__PKPaymentAuthorizationStateMachine__startClientCallbackTimer__block_invoke;
  handler[3] = &unk_1E79C9D80;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_clientCallbackTimer);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __63__PKPaymentAuthorizationStateMachine__startClientCallbackTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clientCallbackTimedOut];
}

- (void)_cancelClientCallbackTimer
{
  clientCallbackTimer = self->_clientCallbackTimer;
  if (clientCallbackTimer)
  {
    dispatch_source_cancel(clientCallbackTimer);
    v4 = self->_clientCallbackTimer;
    self->_clientCallbackTimer = 0;
  }
}

- (void)_clientCallbackTimedOut
{
  v14 = *MEMORY[0x1E69E9840];
  clientCallbackTimer = self->_clientCallbackTimer;
  self->_clientCallbackTimer = 0;

  if ([(PKPaymentAuthorizationStateMachine *)self hasPendingCallbacks])
  {
    state = self->_state;
    v5 = state >= 0x10;
    v7 = state == 16;
    v6 = (1 << state) & 0x1A000;
    v7 = !v7 && v5 || v6 == 0;
    if (v7)
    {
      v8 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        mostRecentClientCallback = self->_mostRecentClientCallback;
        v12 = 138412290;
        v13 = mostRecentClientCallback;
        _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Timed out waiting for client callback: %@", &v12, 0xCu);
      }

      AnalyticsSendEvent();
      [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:@"com.apple.passbook.payment.in-app.client-callback-timeout" value:1];
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v10];
    }
  }
}

- (void)_enqueueDidSelectShippingContact:(id)contact
{
  v23[1] = *MEMORY[0x1E69E9840];
  sanitizedContact = [contact sanitizedContact];
  postalAddresses = [sanitizedContact postalAddresses];
  firstObject = [postalAddresses firstObject];

  value = [firstObject value];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requiresAddressPrecision = [paymentRequest requiresAddressPrecision];
  if (requiresAddressPrecision)
  {
    hostApplicationIdentifier = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    if ([hostApplicationIdentifier isEqualToString:@"W74U47NE8E.com.apple.store.Jolly"])
    {
LABEL_5:

      goto LABEL_10;
    }

    hostApplicationIdentifier2 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    if ([hostApplicationIdentifier2 isEqualToString:@"MT9US5E2G8.com.apple.store.Jolly.MessagesExtension"])
    {

      goto LABEL_5;
    }

    v20 = hostApplicationIdentifier2;
  }

  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  originatingURL = [paymentRequest2 originatingURL];
  isAppleURL = [originatingURL isAppleURL];

  if (requiresAddressPrecision)
  {
  }

  if ((isAppleURL & 1) == 0)
  {
    redactedPostalAddress = [value redactedPostalAddress];
    goto LABEL_12;
  }

LABEL_10:
  redactedPostalAddress = [value redactedStreetAddress];
LABEL_12:
  v16 = redactedPostalAddress;

  v22 = *MEMORY[0x1E695C360];
  v17 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"Shipping" value:v16];
  v23[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v19 = [MEMORY[0x1E695CD58] pkContactWithNameComponents:0 labeledValues:v18];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:1 withObject:v19];
}

- (void)_enqueueDidSelectPaymentMethodWithBindToken:(id)token
{
  tokenCopy = token;
  v5 = [[PKPaymentMethod alloc] initWithBindToken:tokenCopy];

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectPaymentMethodWithQuote:(id)quote
{
  quoteCopy = quote;
  v5 = [[PKPaymentMethod alloc] initWithPeerPaymentQuote:quoteCopy];

  if ([(PKPaymentAuthorizationDataModel *)self->_model supportsPreservePeerPaymentBalance])
  {
    [(PKPaymentMethod *)v5 setUsePeerPaymentBalance:[(PKPaymentAuthorizationDataModel *)self->_model usePeerPaymentBalance]];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model setPaymentErrors:0];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectBankAccount:(id)account
{
  accountCopy = account;
  v5 = [[PKPaymentMethod alloc] initWithBankAccount:accountCopy];

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectPaymentPass:(id)pass paymentApplication:(id)application subCredential:(id)credential
{
  v27 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  applicationCopy = application;
  credentialCopy = credential;
  if (!(passCopy | credentialCopy))
  {
    [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:0];
    goto LABEL_16;
  }

  v11 = [[PKPaymentMethod alloc] initWithPaymentPass:passCopy paymentApplication:applicationCopy subCredential:credentialCopy obfuscateNetworks:1];
  if (credentialCopy)
  {
    v12 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [credentialCopy identifier];
      *buf = 138412290;
      v26 = identifier;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Enqueuing subcredential %@ with PKPaymentmethod", buf, 0xCu);
    }
  }

  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  associatedApplicationIdentifiers = [passCopy associatedApplicationIdentifiers];
  hostApplicationIdentifier = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
  if ([associatedApplicationIdentifiers containsObject:hostApplicationIdentifier])
  {
    goto LABEL_9;
  }

  v24 = applicationCopy;
  associatedWebDomains = [passCopy associatedWebDomains];
  merchantSession = [paymentRequest merchantSession];
  domain = [merchantSession domain];
  if ([associatedWebDomains containsObject:domain])
  {

    applicationCopy = v24;
LABEL_9:

LABEL_10:
    v20 = [passCopy copy];
    [v20 sanitizePaymentApplications];
    [(PKPaymentMethod *)v11 setPaymentPass:v20];

    goto LABEL_11;
  }

  [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v21 = v23 = paymentRequest;
  isPeerPaymentRequest = [v21 isPeerPaymentRequest];

  paymentRequest = v23;
  applicationCopy = v24;
  if (isPeerPaymentRequest)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(PKPaymentAuthorizationStateMachine *)self _updatePaymentRequestBillingAddressWithPaymentMethod:v11];
  if ([paymentRequest isPeerPaymentRequest] && -[PKPaymentAuthorizationDataModel supportsPreservePeerPaymentBalance](self->_model, "supportsPreservePeerPaymentBalance"))
  {
    [(PKPaymentMethod *)v11 setUsePeerPaymentBalance:[(PKPaymentAuthorizationDataModel *)self->_model usePeerPaymentBalance]];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v11];

LABEL_16:
}

- (void)_enqueueDidSelectRemotePaymentInstrument:(id)instrument
{
  instrumentCopy = instrument;
  primaryPaymentApplication = [instrumentCopy primaryPaymentApplication];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:instrumentCopy paymentApplication:primaryPaymentApplication];
}

- (void)_enqueueDidSelectRemotePaymentInstrument:(id)instrument paymentApplication:(id)application
{
  instrumentCopy = instrument;
  applicationCopy = application;
  v7 = [[PKPaymentMethod alloc] initWithRemotePaymentInstrument:instrumentCopy paymentApplication:applicationCopy];

  associatedWebDomains = [instrumentCopy associatedWebDomains];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  merchantSession = [paymentRequest merchantSession];
  domain = [merchantSession domain];
  v12 = [associatedWebDomains containsObject:domain];

  if (v12)
  {
    [(PKPaymentMethod *)v7 setRemoteInstrument:instrumentCopy];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v7];
}

- (void)_enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:(id)token rewrapResponse:(id)response
{
  responseCopy = response;
  tokenCopy = token;
  v8 = objc_alloc_init(PKPayment);
  [(PKPayment *)v8 setInstallmentAuthorizationToken:tokenCopy];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v8 rewrapResponse:responseCopy];
}

- (void)_enqueueDidAuthorizePaymentWithToken:(id)token rewrapResponse:(id)response
{
  responseCopy = response;
  tokenCopy = token;
  v8 = [[PKPayment alloc] initWithToken:tokenCopy];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v8 rewrapResponse:responseCopy];
}

- (void)_enqueueDidAuthorizePaymentWithByPassPayment:(id)payment rewrapResponse:(id)response
{
  responseCopy = response;
  paymentCopy = payment;
  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:paymentCopy rewrapResponse:responseCopy];
}

- (void)_enqueueDidAuthorizePaymentWithRemotePayment:(id)payment rewrapResponse:(id)response
{
  responseCopy = response;
  paymentCopy = payment;
  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:paymentCopy rewrapResponse:responseCopy];
}

- (void)_enqueueDidAuthorizePaymentWithPayment:(id)payment rewrapResponse:(id)response
{
  v29[1] = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  responseCopy = response;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 3 && [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 4)
  {
    token = [paymentCopy token];
    v9 = [(PKPaymentAuthorizationStateMachine *)self _transactionWithPaymentToken:token];

    pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v12 = paymentApplication;
    if (v9 && pass && paymentApplication)
    {
      v13 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v9 pass:pass paymentApplication:paymentApplication];
      model = self->_model;
      v29[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v15];

      [(PKPaymentAuthorizationStateMachine *)self _enrichPaymentRewardsRedemptionWithPaymentTransaction:v9 usingPass:pass];
      issuerInstallmentManagementURL = [responseCopy issuerInstallmentManagementURL];
      [v9 setIssuerInstallmentManagementURL:issuerInstallmentManagementURL];
    }

    v28 = v12;
    v17 = +[PKPaymentOptionsDefaults defaults];
    if (pass)
    {
      billingAddress = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
      if (billingAddress)
      {
        v19 = billingAddress;
        v20 = +[PKPaymentOptionsDefaults defaults];
        v21 = [v20 defaultBillingAddressForPaymentPass:pass];

        if (!v21)
        {
          billingAddress2 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
          [v17 setDefaultBillingAddress:billingAddress2 forPaymentPass:pass];
        }
      }
    }

    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    requiredShippingContactFields = [paymentRequest requiredShippingContactFields];

    shippingName = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];
    if ((([requiredShippingContactFields containsObject:@"name"] & 1) != 0 || objc_msgSend(requiredShippingContactFields, "containsObject:", @"phoneticName")) && (objc_msgSend(requiredShippingContactFields, "containsObject:", @"post") & 1) == 0)
    {
      if (shippingName)
      {
        defaultContactName = [v17 defaultContactName];
        v27 = [shippingName isEqualIgnoringIdentifiers:defaultContactName];

        if ((v27 & 1) == 0)
        {
          [v17 setDefaultContactName:shippingName];
        }
      }
    }
  }

  [(PKPaymentAuthorizationDataModel *)self->_model setPayment:paymentCopy];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:5 withObject:paymentCopy];
}

- (void)_enqeueDidAuthorizePurchaseWithParam:(id)param
{
  v14[1] = *MEMORY[0x1E69E9840];
  paramCopy = param;
  purchase = [paramCopy purchase];
  purchaseTransactionIdentifier = [paramCopy purchaseTransactionIdentifier];

  v7 = [(PKPaymentAuthorizationStateMachine *)self _transactionWithPurchase:purchase paymentHash:purchaseTransactionIdentifier];

  pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v10 = paymentApplication;
  if (v7 && pass && paymentApplication)
  {
    v11 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v7 pass:pass paymentApplication:paymentApplication];
    model = self->_model;
    v14[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v13];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:6 withObject:purchase];
}

- (void)_enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:(id)quote
{
  quoteCopy = quote;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  peerPaymentQuote = [quoteCopy peerPaymentQuote];
  isRecurringPayment = [peerPaymentQuote isRecurringPayment];

  if ((isRecurringPayment & 1) == 0)
  {
    v7 = [(PKPaymentAuthorizationStateMachine *)self _pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:quoteCopy];
    [v4 safelyAddObject:v7];
    v8 = [(PKPaymentAuthorizationStateMachine *)self _pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:quoteCopy];
    [v4 safelyAddObject:v8];
  }

  model = self->_model;
  v10 = [v4 copy];
  [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v10];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToAuthorizedQuote:quoteCopy];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:7 withObject:quoteCopy];
}

- (void)_updatePaymentRequestBillingAddressWithPaymentMethod:(id)method
{
  v19[1] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requiredBillingContactFields = [paymentRequest requiredBillingContactFields];
  if ([requiredBillingContactFields count])
  {
    requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
    v8 = [requiredShippingContactFields containsObject:@"post"];

    if ((v8 & 1) == 0)
    {
      billingAddress = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
      sanitizedContact = [billingAddress sanitizedContact];

      postalAddresses = [sanitizedContact postalAddresses];
      firstObject = [postalAddresses firstObject];

      value = [firstObject value];
      redactedPostalAddress = [value redactedPostalAddress];

      if (redactedPostalAddress)
      {
        v18 = *MEMORY[0x1E695C360];
        v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"Billing" value:redactedPostalAddress];
        v19[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

        v17 = [MEMORY[0x1E695CD58] pkContactWithNameComponents:0 labeledValues:v16];
        [methodCopy setBillingAddress:v17];
      }
    }
  }

  else
  {
  }
}

- (id)_pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:2];
  pass = [v5 pass];

  if (!pass)
  {
    v7 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Peer payment pass is not included in the data model. Fetching the pass from the pass library.", buf, 2u);
    }

    v8 = +[PKPassLibrary sharedInstance];
    peerPaymentPassUniqueID = [v8 peerPaymentPassUniqueID];
    v10 = [v8 passWithUniqueID:peerPaymentPassUniqueID];
    pass = [v10 paymentPass];
  }

  devicePrimaryInAppPaymentApplication = [pass devicePrimaryInAppPaymentApplication];
  v12 = devicePrimaryInAppPaymentApplication;
  if (pass)
  {
    v13 = devicePrimaryInAppPaymentApplication == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    peerPaymentQuote = [quoteCopy peerPaymentQuote];
    v54 = [peerPaymentQuote firstQuoteItemOfType:2];
    v16 = [peerPaymentQuote firstQuoteItemOfType:1];
    v17 = [peerPaymentQuote firstQuoteItemOfType:3];
    v53 = [peerPaymentQuote firstQuoteItemOfType:4];
    recipient = [peerPaymentQuote recipient];
    v19 = objc_alloc_init(PKPaymentTransaction);
    [(PKPaymentTransaction *)v19 setOriginatedByDevice:1];
    date = [MEMORY[0x1E695DF00] date];
    [(PKPaymentTransaction *)v19 setTransactionDate:date];

    [(PKPaymentTransaction *)v19 addUpdateReasons:2];
    [(PKPaymentTransaction *)v19 setTransactionSource:2];
    [(PKPaymentTransaction *)v19 setTechnologyType:2];
    if (recipient)
    {
      [(PKPaymentTransaction *)v19 setTransactionType:3];
      [(PKPaymentTransaction *)v19 setPeerPaymentType:1];
      conversationAddress = [recipient conversationAddress];
      [(PKPaymentTransaction *)v19 setPeerPaymentCounterpartHandle:conversationAddress];
LABEL_15:

      goto LABEL_36;
    }

    if (v16 && !v54)
    {
      [(PKPaymentTransaction *)v19 setTransactionType:6];
      goto LABEL_36;
    }

    if (v17)
    {
      v45 = v16;
      [(PKPaymentTransaction *)v19 setTransactionType:5];
      [(PKPaymentTransaction *)v19 setSecondaryFundingSourceType:1];
      bankName = [peerPaymentQuote bankName];
      accountNumber = [peerPaymentQuote accountNumber];
      v48 = accountNumber;
      v50 = v17;
      if ([accountNumber length] < 4)
      {
        v27 = 0;
      }

      else
      {
        [accountNumber substringFromIndex:{objc_msgSend(accountNumber, "length") - 4}];
        v25 = v24 = bankName;
        v26 = PKMaskedPaymentPAN(v25);

        bankName = v24;
        v27 = v26;
      }

      v52 = bankName;
      v32 = [bankName length];
      v33 = [v27 length];
      v16 = v45;
      v44 = v27;
      if (v32 && v33)
      {
        v42 = v27;
        v34 = v52;
        v35 = PKLocalizedPeerPaymentString(&cfstr_TransactionSec.isa, &stru_1F22903C8.isa, v52, v42);
      }

      else
      {
        if (!v32)
        {
          if (v33)
          {
            v36 = PKLocalizedPeerPaymentString(&cfstr_TransactionSec_0.isa, &stru_1F2281668.isa, v27);
          }

          else
          {
            v36 = 0;
          }

          v34 = v52;
          goto LABEL_35;
        }

        v34 = v52;
        v35 = v52;
      }

      v36 = v35;
LABEL_35:
      [(PKPaymentTransaction *)v19 setSecondaryFundingSourceDescription:v36];

      v17 = v50;
LABEL_36:
      pass2 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      v38 = pass2;
      if (pass2)
      {
        localizedDescription = [pass2 localizedDescription];
        [(PKPaymentTransaction *)v19 setSecondaryFundingSourceDescription:localizedDescription];

        primaryAccountIdentifier = [v38 primaryAccountIdentifier];
        [(PKPaymentTransaction *)v19 setSecondaryFundingSourceFPANIdentifier:primaryAccountIdentifier];
      }

      else
      {
        if (!(v16 | v17))
        {
          goto LABEL_39;
        }

        primaryAccountIdentifier = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(primaryAccountIdentifier, OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 0;
          _os_log_impl(&dword_1AD337000, primaryAccountIdentifier, OS_LOG_TYPE_DEFAULT, "Could not find secondary funding source pass, pending transaction will not contain pass description.", v55, 2u);
        }
      }

LABEL_39:
      v14 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v19 pass:pass paymentApplication:v12];
LABEL_40:

      goto LABEL_41;
    }

    if (!v53)
    {
      v38 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
        _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Could not find quote item to use for pending transaction. Not creating pending transaction on peer payment pass", v56, 2u);
      }

      v14 = 0;
      goto LABEL_40;
    }

    [(PKPaymentTransaction *)v19 setTransactionType:5];
    [(PKPaymentTransaction *)v19 setSecondaryFundingSourceType:2];
    pass3 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    v51 = pass3;
    if (!pass3)
    {
      conversationAddress = 0;
LABEL_57:
      [(PKPaymentTransaction *)v19 setSecondaryFundingSourceDescription:conversationAddress];

      goto LABEL_15;
    }

    v29 = pass3;
    devicePrimaryPaymentApplication = [pass3 devicePrimaryPaymentApplication];
    v49 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([devicePrimaryPaymentApplication paymentNetworkIdentifier]);

    primaryAccountNumberSuffix = [v29 primaryAccountNumberSuffix];
    v30 = PKMaskedPaymentPAN(primaryAccountNumberSuffix);
    v43 = v30;
    if (v49 && v30)
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionSec_1.isa, &stru_1F22903C8.isa, v49, v30);
    }

    else
    {
      if (v49)
      {
        v31 = v49;
        goto LABEL_55;
      }

      if (!v30)
      {
        conversationAddress = 0;
        goto LABEL_56;
      }

      PKLocalizedPeerPaymentString(&cfstr_TransactionSec_2.isa, &stru_1F2281668.isa, v30);
    }
    v31 = ;
LABEL_55:
    conversationAddress = v31;
    v30 = v43;
LABEL_56:

    goto LABEL_57;
  }

  peerPaymentQuote = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(peerPaymentQuote, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 0;
    _os_log_impl(&dword_1AD337000, peerPaymentQuote, OS_LOG_TYPE_DEFAULT, "Could not find peer payment pass. Not creating pending transaction.", v57, 2u);
  }

  v14 = 0;
LABEL_41:

  return v14;
}

- (id)_pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:(id)quote
{
  v34 = *MEMORY[0x1E69E9840];
  quoteCopy = quote;
  pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v7 = paymentApplication;
  if (pass)
  {
    v8 = paymentApplication == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    dpanIdentifier = [paymentApplication dpanIdentifier];
    peerPaymentQuote = [quoteCopy peerPaymentQuote];
    items = [peerPaymentQuote items];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [items countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = v13;
    v26 = peerPaymentQuote;
    v27 = quoteCopy;
    v15 = 0;
    v16 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(items);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        dpanIdentifier2 = [v18 dpanIdentifier];
        if ([dpanIdentifier2 isEqualToString:dpanIdentifier])
        {
          v20 = v18;

          v15 = v20;
        }
      }

      v14 = [items countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
    peerPaymentQuote = v26;
    quoteCopy = v27;
    if (v15)
    {
      v21 = objc_alloc_init(PKPaymentTransaction);
      [(PKPaymentTransaction *)v21 setOriginatedByDevice:1];
      [(PKPaymentTransaction *)v21 addUpdateReasons:2];
      date = [MEMORY[0x1E695DF00] date];
      [(PKPaymentTransaction *)v21 setTransactionDate:date];

      [(PKPaymentTransaction *)v21 setTransactionType:0];
      [(PKPaymentTransaction *)v21 setTransactionSource:2];
      [(PKPaymentTransaction *)v21 setTechnologyType:2];
      totalAmount = [v15 totalAmount];
      [(PKPaymentTransaction *)v21 setAmount:totalAmount];

      totalAmountCurrency = [v15 totalAmountCurrency];
      [(PKPaymentTransaction *)v21 setCurrencyCode:totalAmountCurrency];

      [(PKPaymentTransaction *)v21 setAssociatedFeatureIdentifier:1];
      v9 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v21 pass:pass paymentApplication:v7];
    }

    else
    {
LABEL_18:
      v15 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Could not find quote item matching dpan ID of pass in payment authorization data model", buf, 2u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (void)_performNonceRequestWithParam:(id)param
{
  paramCopy = param;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  [(PKPaymentAuthorizationStateMachine *)self _computeAssessmentIfNecessary];
  objc_initWeak(&location, self);
  merchantSession = [paymentRequest merchantSession];
  if (!PKHandsOnDemoModeEnabled() && !PKUIOnlyDemoModeEnabled())
  {
    if ([paymentRequest requestType] == 2 || objc_msgSend(paymentRequest, "requestType") == 4 || objc_msgSend(paymentRequest, "requestType") == 5)
    {
      goto LABEL_7;
    }

    if (merchantSession)
    {
      self->_awaitingWebServiceResponse = 1;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_2;
      v27[3] = &unk_1E79CE210;
      objc_copyWeak(&v30, &location);
      v28 = merchantSession;
      v29 = paramCopy;
      [(PKPaymentAuthorizationStateMachine *)self _augmentSessionResponseWithCompletion:v27];

      v23 = &v30;
    }

    else
    {
      if ([paymentRequest isPeerPaymentRequest])
      {
LABEL_7:
        credential = [paramCopy credential];
        v22 = [PKPaymentAuthorizationAuthorizeStateParam paramWithCredential:credential];

        [(PKPaymentAuthorizationStateMachine *)self _setState:10 param:v22];
        goto LABEL_8;
      }

      self->_awaitingWebServiceResponse = 1;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_4;
      v24[3] = &unk_1E79CE238;
      objc_copyWeak(&v26, &location);
      v25 = paramCopy;
      [(PKPaymentAuthorizationStateMachine *)self _nonceResponseWithCompletion:v24];

      v23 = &v26;
    }

    objc_destroyWeak(v23);
    goto LABEL_8;
  }

  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  paymentNetworkIdentifier = [paymentApplication paymentNetworkIdentifier];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentToken_%d", paymentNetworkIdentifier];
  v10 = MEMORY[0x1E695DEF0];
  v11 = PKPassKitCoreBundle();
  v12 = [v11 pathForResource:v9 ofType:@"archive"];
  v13 = [v10 dataWithContentsOfFile:v12];

  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:0];
  v34 = arc4random();
  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:4];
  sHA256Hash = [v15 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];

  [v14 setTransactionIdentifier:hexEncoding];
  v18 = arc4random_uniform(0xAu);
  v19 = dispatch_time(0, ((1.0 / (v18 + 1) + 1.0) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke;
  block[3] = &unk_1E79C54B8;
  objc_copyWeak(&v33, &location);
  v32 = v14;
  v20 = v14;
  dispatch_after(v19, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v33);
LABEL_8:

  objc_destroyWeak(&location);
}

void __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPaymentToken:*(a1 + 32) rewrapResponse:0];
    [v4 _setState:12 param:v3];

    WeakRetained = v4;
  }
}

void __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_3;
  block[3] = &unk_1E79CE1E8;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_3(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v3[11] = 0;
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E696AA08];
        v21[0] = v6;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v9 = [v7 errorWithDomain:@"PKPassKitErrorDomain" code:-2004 userInfo:v8];

        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
        [v3 _setState:14 param:v10];
      }

      else
      {
        v11 = [*(a1 + 40) retryNonce];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [*(a1 + 40) nonce];
        }

        v14 = v13;

        v15 = *(a1 + 48);
        v16 = [v14 pk_decodeHexadecimal];
        v17 = [*(a1 + 56) cryptogramType];
        v18 = [*(a1 + 56) networkMerchantIdentifier];
        v19 = [PKPaymentAuthorizationAuthorizeStateParam paramWithNonceParam:v15 nonce:v16 cryptogramType:v17 networkMerchantIdentifier:v18];

        [v3 _setState:10 param:v19];
      }
    }
  }
}

void __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_5;
  v9[3] = &unk_1E79CC3B0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) nonceData];
  v4 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Nonce for pass: %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained state];
    if (v5 > 0x10 || ((1 << v5) & 0x1A000) == 0)
    {
      WeakRetained[11] = 0;
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696AA08];
        v15 = v6;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v9 = [v7 errorWithDomain:@"PKPassKitErrorDomain" code:-2004 userInfo:v8];

        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
        [WeakRetained _setState:14 param:v10];
      }

      else
      {
        v11 = *(a1 + 48);
        v12 = [*(a1 + 32) cryptogramType];
        v13 = [*(a1 + 32) networkMerchantIdentifier];
        v9 = [PKPaymentAuthorizationAuthorizeStateParam paramWithNonceParam:v11 nonce:v3 cryptogramType:v12 networkMerchantIdentifier:v13];

        [WeakRetained _setState:10 param:v9];
      }
    }
  }
}

- (void)_computeAssessmentIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  _activeODIAssessment = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  if (_activeODIAssessment)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = _activeODIAssessment;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Computing CoreODI assessment %@", &v5, 0xCu);
    }

    self->_odiAssessmentInFlight = 1;
    [_activeODIAssessment computeAssessment];
  }
}

- (void)_augmentSessionResponseWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__PKPaymentAuthorizationStateMachine__augmentSessionResponseWithCompletion___block_invoke;
    v5[3] = &unk_1E79CE288;
    objc_copyWeak(&v7, &location);
    v6 = completionCopy;
    [(PKPaymentAuthorizationStateMachine *)self _augmentBaseRequestWithCompletion:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __76__PKPaymentAuthorizationStateMachine__augmentSessionResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPaymentAuthorizationStateMachine__augmentSessionResponseWithCompletion___block_invoke_2;
  block[3] = &unk_1E79CE260;
  objc_copyWeak(&v19, (a1 + 40));
  v15 = v9;
  v10 = *(a1 + 32);
  v17 = v8;
  v18 = v10;
  v16 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __76__PKPaymentAuthorizationStateMachine__augmentSessionResponseWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if (*(a1 + 32))
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v3 = [WeakRetained[7] paymentRequest];
      v4 = [PKPaymentAugmentSessionRequest augmentSessionRequestWithBaseRequest:*(a1 + 40)];
      v5 = [v3 merchantSession];
      [v4 setMerchantSession:v5];

      v6 = [v3 isServiceProviderPaymentRequest];
      v7 = v10[4];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      if (v6)
      {
        [v7 serviceProviderAugmentSessionWithRequest:v4 serviceURL:v8 completion:v9];
      }

      else
      {
        [v7 augmentSessionWithRequest:v4 serviceURL:v8 completion:v9];
      }
    }

    WeakRetained = v10;
  }
}

- (void)_nonceResponseWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PKPaymentAuthorizationStateMachine__nonceResponseWithCompletion___block_invoke;
    v5[3] = &unk_1E79CE288;
    objc_copyWeak(&v7, &location);
    v6 = completionCopy;
    [(PKPaymentAuthorizationStateMachine *)self _augmentBaseRequestWithCompletion:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __67__PKPaymentAuthorizationStateMachine__nonceResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPaymentAuthorizationStateMachine__nonceResponseWithCompletion___block_invoke_2;
  block[3] = &unk_1E79CE260;
  objc_copyWeak(&v19, (a1 + 40));
  v15 = v9;
  v10 = *(a1 + 32);
  v17 = v8;
  v18 = v10;
  v16 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __67__PKPaymentAuthorizationStateMachine__nonceResponseWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if (*(a1 + 32))
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v3 = [WeakRetained[7] paymentRequest];
      v4 = [PKPaymentNonceRequest nonceRequestWithBaseRequest:*(a1 + 40)];
      v5 = [v3 merchantIdentifier];
      [v4 setMerchantIdentifier:v5];

      v6 = [v3 isServiceProviderPaymentRequest];
      v7 = v10[4];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      if (v6)
      {
        [v7 serviceProviderNonceWithRequest:v4 serviceURL:v8 completion:v9];
      }

      else
      {
        [v7 inAppPaymentNonceWithRequest:v4 serviceURL:v8 completion:v9];
      }
    }

    WeakRetained = v10;
  }
}

- (void)_augmentBaseRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  currencyCode = [paymentRequest currencyCode];
  countryCode = [paymentRequest countryCode];
  boundInterfaceIdentifier = [paymentRequest boundInterfaceIdentifier];
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v10 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  pass = [v10 pass];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79CE2B0;
  v34 = 0;
  v27 = pass;
  v12 = paymentApplication;
  v28 = v12;
  v29 = countryCode;
  v30 = currencyCode;
  v31 = boundInterfaceIdentifier;
  v32 = 0;
  v33 = completionCopy;
  v22 = completionCopy;
  v21 = boundInterfaceIdentifier;
  v13 = currencyCode;
  v14 = countryCode;
  v15 = pass;
  v16 = _Block_copy(aBlock);
  secureElement = self->_secureElement;
  applicationIdentifier = [v12 applicationIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke_2;
  v23[3] = &unk_1E79CE2D8;
  v24 = v12;
  v25 = v16;
  v19 = v16;
  v20 = v12;
  [(PKSecureElement *)secureElement appletWithIdentifier:applicationIdentifier completion:v23];
}

void __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(PKPaymentAugmentBaseRequest);
  [(PKPaymentAugmentBaseRequest *)v7 setType:a1[11]];
  [(PKPaymentAugmentBaseRequest *)v7 setPass:a1[4]];
  [(PKPaymentAugmentBaseRequest *)v7 setPaymentApplication:a1[5]];
  [(PKPaymentAugmentBaseRequest *)v7 setApplet:v6];

  [(PKPaymentAugmentBaseRequest *)v7 setMerchantCountryCode:a1[6]];
  [(PKPaymentAugmentBaseRequest *)v7 setCurrencyCode:a1[7]];
  [(PKWebServiceRequest *)v7 setBoundInterfaceIdentifier:a1[8]];
  (*(a1[10] + 16))();
}

void __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [*(a1 + 32) applicationIdentifier];
    v7 = [v5 initWithFormat:@"Failed to get applet with identifier: %@ from SE", v6];

    v8 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:-2004 userInfo:v9];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_performPrepareTransactionDetailsRequestWithParam:(id)param
{
  paramCopy = param;
  objc_initWeak(&location, self);
  if (PKHandsOnDemoModeEnabled() || PKUIOnlyDemoModeEnabled())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke;
    v17[3] = &unk_1E79CE300;
    v5 = &v18;
    objc_copyWeak(&v18, &location);
    PKSharedCacheCreateFileURLReadOnly(&unk_1F23B3CF8, @"Instructions.plist", v17);
  }

  else
  {
    v6 = (self->_prepareTransactionDetailsCounter + 1);
    self->_prepareTransactionDetailsCounter = v6;
    self->_awaitingWebServiceResponse = 1;
    paymentWebService = self->_paymentWebService;
    paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    merchantSession = [paymentRequest merchantSession];
    paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    secureElementIdentifier = [paymentApplication secureElementIdentifier];
    primarySecureElementIdentifier = secureElementIdentifier;
    if (!secureElementIdentifier)
    {
      primarySecureElementIdentifier = [(PKSecureElement *)self->_secureElement primarySecureElementIdentifier];
    }

    transactionAmount = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    currencyCode = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_2_285;
    v15[3] = &unk_1E79CE350;
    v5 = v16;
    objc_copyWeak(v16, &location);
    v16[1] = v6;
    [(PKPaymentWebService *)paymentWebService prepareTransactionDetailsForMerchantSession:merchantSession secureElementIdentifier:primarySecureElementIdentifier amount:transactionAmount currencyCode:currencyCode completion:v15];

    if (!secureElementIdentifier)
    {
    }
  }

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:&v15];
  v5 = v15;
  if (v4 && (v6 = [[PKPaymentInstructions alloc] initWithDictionary:v4]) != 0)
  {
    v7 = v6;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_2;
    block[3] = &unk_1E79C54B8;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Demo mode requires valid Instructions.plist at:%@, error:%@", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_283;
    v10[3] = &unk_1E79C9D80;
    objc_copyWeak(&v11, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], v10);
    objc_destroyWeak(&v11);
  }
}

void __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Demo mode advancing to prepare transactions details state..", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained model];
  [v4 setInstructions:*(a1 + 32)];

  [WeakRetained _advanceToNextState];
}

void __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_283(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2014 userInfo:0];
  v2 = [PKPaymentAuthorizationErrorStateParam paramWithError:v1];
  [WeakRetained _setState:15 param:v2];
}

void __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_2_285(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_3;
  v9[3] = &unk_1E79CE328;
  objc_copyWeak(v12, (a1 + 32));
  v12[1] = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(v12);
}

void __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    v5 = v4 > 0x10 || ((1 << v4) & 0x1A000) == 0;
    if (v5 && *(a1 + 56) == *(v3 + 22))
    {
      *(v3 + 11) = 0;
      v6 = *(a1 + 32);
      if (v6)
      {
        v10 = *MEMORY[0x1E696AA08];
        v11[0] = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      }

      else
      {
        if (*(a1 + 40))
        {
          [*(v3 + 7) setInstructions:?];
          [v3 _advanceToNextState];
          goto LABEL_6;
        }

        v7 = 0;
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2014 userInfo:v7];
      v9 = [PKPaymentAuthorizationErrorStateParam paramWithError:v8];
      [v3 _setState:15 param:v9];
    }
  }

LABEL_6:
}

- (void)_performRewrapRequestWithParam:(id)param
{
  paramCopy = param;
  _activeODIAssessment = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  v6 = [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 1 || _activeODIAssessment == 0;
  if (v6 || ([_activeODIAssessment currentAssessment], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(PKPaymentAuthorizationStateMachine *)self _performRewrapRequestImplWithParam:paramCopy];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKPaymentAuthorizationStateMachine__performRewrapRequestWithParam___block_invoke;
    v8[3] = &unk_1E79CE378;
    v8[4] = self;
    v9 = paramCopy;
    [_activeODIAssessment waitForAssessmentWithContinueBlock:v8];
  }
}

void __69__PKPaymentAuthorizationStateMachine__performRewrapRequestWithParam___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PKPaymentAuthorizationStateMachine__performRewrapRequestWithParam___block_invoke_2;
  v2[3] = &unk_1E79C4DD8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)_performRewrapRequestImplWithParam:(id)param
{
  v74 = *MEMORY[0x1E69E9840];
  paramCopy = param;
  credential = [paramCopy credential];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke;
  aBlock[3] = &unk_1E79CE3A0;
  objc_copyWeak(&v71, &location);
  aBlock[4] = self;
  v6 = credential;
  v70 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  pass = [v8 pass];
  paymentPass = [pass paymentPass];

  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  merchantSession = [paymentRequest merchantSession];

  if (!merchantSession)
  {
    paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    serviceProviderPaymentRequest = [paymentRequest2 serviceProviderPaymentRequest];

    if (!serviceProviderPaymentRequest)
    {
      self->_awaitingWebServiceResponse = 1;
      *buf = 0;
      v40 = objc_alloc_init(PKPaymentRewrapRequest);
      [(PKPaymentAuthorizationStateMachine *)self _updateRewrapRequest:v40 param:paramCopy serviceURL:buf];
      paymentWebService = self->_paymentWebService;
      v42 = *buf;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_2_299;
      v61[3] = &unk_1E79CE418;
      v62 = v7;
      [(PKPaymentWebService *)paymentWebService rewrapInAppPaymentWithRequest:v40 serviceURL:v42 completion:v61];

      goto LABEL_35;
    }

    paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    serviceProviderPaymentRequest2 = [paymentRequest3 serviceProviderPaymentRequest];
    serviceProviderOrder = [serviceProviderPaymentRequest2 serviceProviderOrder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serviceProviderData = [serviceProviderOrder serviceProviderData];
      v20 = [serviceProviderData mutableCopy];

      primaryAccountIdentifier = [paymentPass primaryAccountIdentifier];
      [v20 safelySetObject:primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];

      dpanIdentifier = [paymentApplication dpanIdentifier];
      [v20 safelySetObject:dpanIdentifier forKey:@"selectedDpanId"];

      v23 = [v20 objectForKey:@"requestMPAN"];
      bOOLValue = [v23 BOOLValue];

      if (bOOLValue)
      {
        devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
        dpanIdentifier2 = [devicePrimaryPaymentApplication dpanIdentifier];
        [v20 safelySetObject:dpanIdentifier2 forKey:@"devicePrimaryAccountIdentifier"];

        issuerCountryCode = [paymentPass issuerCountryCode];
        [v20 safelySetObject:issuerCountryCode forKey:@"issuerCountryCode"];
      }

      v28 = [v20 copy];
      [serviceProviderOrder setServiceProviderData:v28];
    }

    [serviceProviderOrder setPaymentInstrumentType:1];
    wrappedPayment = [paramCopy wrappedPayment];
    transactionData = [wrappedPayment transactionData];
    [serviceProviderOrder setAppletValue:transactionData];

    if ([paymentApplication supportsBarcodePayment] && (objc_msgSend(paymentApplication, "supportsContactlessPayment") & 1) == 0)
    {
      wrappedPayment2 = [paramCopy wrappedPayment];
      transactionIdentifier = [wrappedPayment2 transactionIdentifier];
      [serviceProviderOrder setTransactionIdentifier:transactionIdentifier];
    }

    v33 = objc_alloc_init(PKPaymentServiceProviderPerformPaymentRequest);
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setPass:paymentPass];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setServiceProviderOrder:serviceProviderOrder];
    nonceData = [paramCopy nonceData];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setNonce:nonceData];

    paymentRequest4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    serviceProviderPaymentRequest3 = [paymentRequest4 serviceProviderPaymentRequest];
    targetDeviceSerialNumber = [serviceProviderPaymentRequest3 targetDeviceSerialNumber];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setTargetDeviceSerialNumber:targetDeviceSerialNumber];

    -[PKPaymentServiceProviderPerformPaymentRequest setCryptogramType:](v33, "setCryptogramType:", [paramCopy cryptogramType]);
    if (!_os_feature_enabled_impl())
    {
      v43 = PKLogFacilityTypeGetObject(7uLL);
      _activeODIAssessment = v43;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Device assessments not enabled for service provider payment requests", buf, 2u);
      }

      goto LABEL_34;
    }

    _activeODIAssessment = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
    if (_activeODIAssessment)
    {
      if (![paymentPass supportsDeviceAssessmentAccordingToService:self->_paymentWebService])
      {
        v44 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Not attaching device assessment to service provider payment request, as pass does not support assessments (assessment was probably generated for a supported pass, but payment is being made with an unsupported pass)", buf, 2u);
        }

        [_activeODIAssessment provideSessionFeedback:1];
        goto LABEL_26;
      }

      currentAssessment = [_activeODIAssessment currentAssessment];
      v39 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = _activeODIAssessment;
        _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "Attaching device assessment to service provider payment request %@", buf, 0xCu);
      }

      [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setDeviceAssessments:currentAssessment];
      [_activeODIAssessment provideSessionFeedback:0];
    }

    else
    {
      currentAssessment = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(currentAssessment, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, currentAssessment, OS_LOG_TYPE_DEFAULT, "No device assessment generated for service provider payment request", buf, 2u);
      }
    }

LABEL_26:
    shippingAddress = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    if (!shippingAddress || ([paymentPass shippingAddressSeed], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46 == 0, v46, shippingAddress, v47))
    {
      value = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(value, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, value, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has no seed, skipping", buf, 2u);
      }
    }

    else
    {
      v48 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v48, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has seed, hashing", buf, 2u);
      }

      shippingAddress2 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
      postalAddresses = [shippingAddress2 postalAddresses];
      firstObject = [postalAddresses firstObject];
      value = [firstObject value];

      shippingAddressSeed = [paymentPass shippingAddressSeed];
      v54 = PKPostalAddressHash(value, shippingAddressSeed);

      v55 = [v54 base64EncodedStringWithOptions:0];
      [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setShippingAddressHash:v55];
    }

LABEL_34:
    self->_awaitingWebServiceResponse = 1;
    v56 = self->_paymentWebService;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_296;
    v63[3] = &unk_1E79CE3F0;
    v65 = v7;
    v64 = paramCopy;
    [(PKPaymentWebService *)v56 performServiceProviderPayment:v33 completion:v63];

    goto LABEL_35;
  }

  self->_awaitingWebServiceResponse = 1;
  *buf = 0;
  v12 = [(PKPaymentAuthorizationStateMachine *)self _rewrapCompleteSessionRequestWithParam:paramCopy serviceURL:buf];
  v13 = self->_paymentWebService;
  v14 = *buf;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_292;
  v66[3] = &unk_1E79CE3C8;
  v67 = merchantSession;
  v68 = v7;
  [(PKPaymentWebService *)v13 completeSessionWithRequest:v12 serviceURL:v14 completion:v66];

LABEL_35:
  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

void __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_2;
  block[3] = &unk_1E79CE1E8;
  objc_copyWeak(&v14, (a1 + 48));
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_2(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  v4 = [WeakRetained state];
  if (v4 <= 0x10 && ((1 << v4) & 0x1A000) != 0)
  {
    goto LABEL_6;
  }

  if (v3[13] == 1)
  {
    v3[13] = 0;
    v6 = [*(a1 + 32) _activeODIAssessment];
    if ([v6 currentAssessmentDidTimeout])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [v6 provideSessionFeedback:v7];
  }

  v3[11] = 0;
  v8 = *(a1 + 48);
  if (*(a1 + 40) && !v8)
  {
    [v3 _setState:17 param:?];
    goto LABEL_6;
  }

  v9 = [v8 domain];
  if (![v9 isEqualToString:@"PKPaymentWebServiceErrorDomain"])
  {
    goto LABEL_22;
  }

  v10 = [*(*(a1 + 32) + 56) paymentRequest];
  if ([v10 requestType] != 1)
  {

LABEL_22:
LABEL_23:
    v14 = *(a1 + 48);
    if (v14)
    {
      v45 = *MEMORY[0x1E696AA08];
      v46[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v16 = [*(a1 + 48) domain];
      v17 = [v16 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

      if (v17)
      {
        v18 = [*(*(a1 + 32) + 56) paymentRequest];
        v19 = [v18 merchantSession];

        if (v19)
        {
          v20 = [v19 retryNonce];

          if (!v20)
          {
            v28 = PKLogFacilityTypeGetObject(8uLL);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v38 = 0;
              _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Web service error without a retry nonce. Failing payment", v38, 2u);
            }

            v29 = [PKPaymentAuthorizationErrorStateParam paramWithError:*(a1 + 48)];
            [v3 _setState:15 param:v29];

            goto LABEL_46;
          }
        }

        v21 = [*(a1 + 48) code];
        switch(v21)
        {
          case 60011:
            v39 = *MEMORY[0x1E696A588];
            v33 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
            v40 = v33;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

            v34 = [*(a1 + 32) model];
            v35 = [v34 mode];

            v26 = -3001;
            if (v35 == 1)
            {
              v27 = 4;
              goto LABEL_41;
            }

            break;
          case 60010:
            v41 = *MEMORY[0x1E696A588];
            v30 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_10.isa, 0);
            v42 = v30;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

            v31 = [*(a1 + 32) model];
            v32 = [v31 mode];

            v26 = -3011;
            if (v32 == 1)
            {
              v27 = 2;
              goto LABEL_41;
            }

            break;
          case 40307:
            v43 = *MEMORY[0x1E696A588];
            v22 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_11.isa, 0);
            v44 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

            v24 = [*(a1 + 32) model];
            v25 = [v24 mode];

            v26 = -3009;
            if (v25 == 1)
            {
              v27 = 5;
LABEL_41:
              [*(*(a1 + 32) + 56) setStatus:v27 forItemWithType:3];
            }

            break;
          default:
            v26 = -2007;
            goto LABEL_44;
        }

        v15 = v23;
LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      v15 = 0;
    }

    v26 = -2007;
LABEL_45:
    v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:v26 userInfo:v15];
    v37 = [PKPaymentAuthorizationErrorStateParam paramWithError:v36];
    [v3 _setState:14 param:v37];

LABEL_46:
    goto LABEL_6;
  }

  v11 = [*(*(a1 + 32) + 56) mode];

  if (v11 != 1)
  {
    goto LABEL_23;
  }

  v12 = [v3 model];
  [v12 fallbackToBypassMode];

  v13 = objc_alloc_init(PKPayment);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPayment *)v13 setCredential:*(a1 + 56)];
  }

  [v3 _enqueueDidAuthorizePaymentWithPayment:v13 rewrapResponse:0];

LABEL_6:
}

void __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_292(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = a4;
  [v11 setRetryNonce:v12];
  [v9 setRetryNonce:v12];

  v13 = *(a1 + 40);
  if (v9)
  {
    v14 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPaymentToken:v9 rewrapResponse:v10];
    (*(v13 + 16))(v13, v14, v15);
  }

  else
  {
    (*(v13 + 16))(*(a1 + 40), 0, v15);
  }
}

void __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v13 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = [v7 wrappedPayment];
    v10 = [v9 transactionIdentifier];
    v11 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPurchase:v13 purchaseTransactionIdentifier:v10];
    (*(v6 + 16))(v6, v11, v8);
  }

  else
  {
    v12 = *(v6 + 16);
    v9 = a3;
    v12(v6, 0, v9);
  }
}

void __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_2_299(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v7 = a2;
    v9 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPaymentToken:a3 rewrapResponse:a4];
    (*(v4 + 16))(v4);
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = a2;
    v8(v4, 0);
  }
}

- (void)_updateRewrapRequest:(id)request param:(id)param serviceURL:(id *)l
{
  model = self->_model;
  paramCopy = param;
  requestCopy = request;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v11 = [(PKPaymentAuthorizationStateMachine *)self _updateRewrapBaseRequest:requestCopy param:paramCopy];

  merchantIdentifier = [paymentRequest merchantIdentifier];
  [requestCopy setMerchantIdentifier:merchantIdentifier];

  hostApplicationIdentifier = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
  [requestCopy setHostApplicationIdentifier:hostApplicationIdentifier];

  merchantName = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [requestCopy setMerchantDisplayName:merchantName];

  if (l)
  {
    objc_storeStrong(l, v11);
  }
}

- (id)_rewrapCompleteSessionRequestWithParam:(id)param serviceURL:(id *)l
{
  model = self->_model;
  paramCopy = param;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  merchantSession = [paymentRequest merchantSession];
  v10 = objc_alloc_init(PKPaymentCompleteSessionRequest);
  v11 = [(PKPaymentAuthorizationStateMachine *)self _updateRewrapBaseRequest:v10 param:paramCopy];

  [(PKPaymentCompleteSessionRequest *)v10 setMerchantSession:merchantSession];
  if (l)
  {
    objc_storeStrong(l, v11);
  }

  return v10;
}

- (id)_updateRewrapBaseRequest:(id)request param:(id)param
{
  v104 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  model = self->_model;
  paramCopy = param;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  currencyCode = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  boundInterfaceIdentifier = [paymentRequest boundInterfaceIdentifier];
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v88 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  pass = [v88 pass];
  applicationData = [paymentRequest applicationData];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    remoteDevice = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    v89 = remoteDevice != 0;
  }

  else
  {
    v89 = 0;
  }

  v94 = v11;
  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  isVirtualCardEnrollmentRequest = [paymentRequest2 isVirtualCardEnrollmentRequest];

  if (isVirtualCardEnrollmentRequest)
  {
    v15 = 1;
  }

  else
  {
    paymentRequest3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    isVirtualCardRefreshRequest = [paymentRequest3 isVirtualCardRefreshRequest];

    if (isVirtualCardRefreshRequest)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
  paymentOffersController = [(PKPaymentAuthorizationDataModel *)self->_model paymentOffersController];
  uniqueID = [pass uniqueID];
  v21 = [paymentOffersController paymentOfferCriteriaForPassUniqueID:uniqueID];
  v95 = [v21 pk_firstObjectPassingTest:&__block_literal_global_304];

  v22 = selectedPaymentOffer;
  paymentOffersController = self->_paymentOffersController;
  passUniqueID = [selectedPaymentOffer passUniqueID];
  v101 = pass;
  v93 = selectedPaymentOffer;
  if (passUniqueID)
  {
    v25 = [(PKPaymentOffersController *)paymentOffersController merchandisingOfferForPassUniqueID:passUniqueID];
  }

  else
  {
    uniqueID2 = [pass uniqueID];
    v25 = [(PKPaymentOffersController *)paymentOffersController merchandisingOfferForPassUniqueID:uniqueID2];

    v22 = v93;
  }

  allIdentifiers = [v25 allIdentifiers];
  allObjects = [allIdentifiers allObjects];

  v96 = applicationData;
  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v22)
  {
    type = [v22 type];
    v29 = v94;
    if (type == 2)
    {
      rewardsRedemptionIntent = [v22 rewardsRedemptionIntent];
      dictionaryRepresentation = [rewardsRedemptionIntent dictionaryRepresentation];
      [v94 safelySetObject:dictionaryRepresentation forKey:@"rewardsRedemptionIntent"];

      v15 = 4;
    }

    else
    {
      if (type != 1)
      {
LABEL_22:
        serviceProviderData = [v22 serviceProviderData];
        [v94 addEntriesFromDictionary:serviceProviderData];

        sessionIdentifier = [v22 sessionIdentifier];
        [v94 safelySetObject:sessionIdentifier forKey:@"sessionIdentifier"];

        selectedOfferIdentifier = [v22 selectedOfferIdentifier];
        [v94 safelySetObject:selectedOfferIdentifier forKey:@"selectedOfferIdentifier"];

        criteriaIdentifier = [v22 criteriaIdentifier];
        goto LABEL_23;
      }

      installmentAssessment = [v22 installmentAssessment];
      offers = [installmentAssessment offers];
      rewardsRedemptionIntent = [offers pk_createArrayBySafelyApplyingBlock:&__block_literal_global_307];

      [v94 safelySetObject:rewardsRedemptionIntent forKey:@"allOfferIdentifiers"];
      v15 = 3;
    }

    goto LABEL_22;
  }

  v29 = v94;
  if (!v95)
  {
    v34 = pass;
    goto LABEL_24;
  }

  criteriaIdentifier = [v95 identifier];
LABEL_23:
  v39 = criteriaIdentifier;
  v34 = pass;
  [v29 safelySetObject:criteriaIdentifier forKey:@"criteriaIdentifier"];

LABEL_24:
  if ([allObjects count])
  {
    [v29 safelySetObject:allObjects forKey:@"merchandisingOfferIdentifiers"];
  }

  v87 = v25;
  [requestCopy setType:v15];
  wrappedPayment = [paramCopy wrappedPayment];
  [requestCopy setWrappedPayment:wrappedPayment];

  [requestCopy setPass:v34];
  [requestCopy setPaymentApplication:paymentApplication];
  [requestCopy setApplicationData:v96];
  [requestCopy setBoundInterfaceIdentifier:boundInterfaceIdentifier];
  cryptogramType = [paramCopy cryptogramType];

  [requestCopy setCryptogramType:cryptogramType];
  [requestCopy setCurrencyCode:currencyCode];
  if ([v29 count])
  {
    v42 = [v29 copy];
    [requestCopy setServiceProviderData:v42];
  }

  else
  {
    [requestCopy setServiceProviderData:0];
  }

  if (v89)
  {
    remoteDevice2 = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    modelIdentifier = [remoteDevice2 modelIdentifier];

    if ([modelIdentifier length])
    {
      [requestCopy setRemoteDeviceModel:modelIdentifier];
    }
  }

  remoteNetworkRequestPaymentTopicID = [paymentRequest remoteNetworkRequestPaymentTopicID];
  v46 = [remoteNetworkRequestPaymentTopicID length];

  if (v46)
  {
    remoteNetworkRequestPaymentTopicID2 = [paymentRequest remoteNetworkRequestPaymentTopicID];
    [requestCopy setRemoteNetworkRequestPaymentTopicID:remoteNetworkRequestPaymentTopicID2];

    userAgent = [paymentRequest userAgent];
    [requestCopy setRemoteNetworkRequestInitiatingUserAgent:userAgent];
  }

  else
  {
    userAgent = [paymentRequest userAgent];
    [requestCopy setUserAgent:userAgent];
  }

  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v50 = [targetDevice paymentWebService:self->_paymentWebService supportedRegionFeatureOfType:4];

  if ([paymentRequest isMultiTokenRequest] && v50)
  {
    [requestCopy setInitiative:@"multi_token"];
    multiTokenContexts = [paymentRequest multiTokenContexts];
    [requestCopy setMultiTokenContexts:multiTokenContexts];
  }

  recurringPaymentRequest = [paymentRequest recurringPaymentRequest];
  automaticReloadPaymentRequest = [paymentRequest automaticReloadPaymentRequest];
  deferredPaymentRequest = [paymentRequest deferredPaymentRequest];
  targetDevice2 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v55 = [targetDevice2 paymentWebService:self->_paymentWebService supportedRegionFeatureOfType:3];

  v90 = v55;
  if (recurringPaymentRequest && v55)
  {
    [requestCopy setInitiative:@"merchant_token"];
    tokenNotificationURL = [recurringPaymentRequest tokenNotificationURL];
    absoluteString = [tokenNotificationURL absoluteString];
    [requestCopy setInitiativeContext:absoluteString];

    managementURL = [recurringPaymentRequest managementURL];
    absoluteString2 = [managementURL absoluteString];
    [requestCopy setMerchantTokenManagementURL:absoluteString2];

    v60 = PKMerchantTokenRequestUseCaseRecurring;
LABEL_45:
    [requestCopy setMerchantTokenUseCase:*v60];
    goto LABEL_46;
  }

  if (automaticReloadPaymentRequest && v55)
  {
    [requestCopy setInitiative:@"merchant_token"];
    tokenNotificationURL2 = [automaticReloadPaymentRequest tokenNotificationURL];
    absoluteString3 = [tokenNotificationURL2 absoluteString];
    [requestCopy setInitiativeContext:absoluteString3];

    managementURL2 = [automaticReloadPaymentRequest managementURL];
    absoluteString4 = [managementURL2 absoluteString];
    [requestCopy setMerchantTokenManagementURL:absoluteString4];

    v60 = PKMerchantTokenRequestUseCaseAutomaticReload;
    goto LABEL_45;
  }

  if (deferredPaymentRequest && v55)
  {
    [requestCopy setInitiative:@"merchant_token"];
    tokenNotificationURL3 = [deferredPaymentRequest tokenNotificationURL];
    absoluteString5 = [tokenNotificationURL3 absoluteString];
    [requestCopy setInitiativeContext:absoluteString5];

    managementURL3 = [deferredPaymentRequest managementURL];
    absoluteString6 = [managementURL3 absoluteString];
    [requestCopy setMerchantTokenManagementURL:absoluteString6];

    [requestCopy setMerchantTokenUseCase:@"merchant_token_deferred"];
    [requestCopy setIsDeferredPayment:1];
  }

LABEL_46:
  if ([paymentRequest requestType] == 10)
  {
    [requestCopy setInitiative:@"transfer_funds"];
  }

  shippingAddress = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
  if (shippingAddress && (v66 = shippingAddress, [pass shippingAddressSeed], v67 = objc_claimAutoreleasedReturnValue(), v67, v66, v67))
  {
    v68 = v50;
    v69 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v69, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has seed, hashing", buf, 2u);
    }

    shippingAddress2 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    postalAddresses = [shippingAddress2 postalAddresses];
    firstObject = [postalAddresses firstObject];
    value = [firstObject value];

    shippingAddressSeed = [v101 shippingAddressSeed];
    v75 = PKPostalAddressHash(value, shippingAddressSeed);

    v76 = [v75 base64EncodedStringWithOptions:0];
    [requestCopy setShippingAddressHash:v76];

    v77 = v101;
    v29 = v94;
  }

  else
  {
    v68 = v50;
    value = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(value, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, value, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has no seed, skipping", buf, 2u);
    }

    v77 = pass;
  }

  _activeODIAssessment = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  if (_activeODIAssessment)
  {
    if ([v77 supportsDeviceAssessmentAccordingToService:self->_paymentWebService])
    {
      currentAssessment = [_activeODIAssessment currentAssessment];
      v80 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v103 = _activeODIAssessment;
        _os_log_impl(&dword_1AD337000, v80, OS_LOG_TYPE_DEFAULT, "Setting device assessment %@", buf, 0xCu);
      }

      [requestCopy setDeviceAssessments:currentAssessment];
      v77 = v101;
    }

    else
    {
      currentAssessment = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(currentAssessment, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, currentAssessment, OS_LOG_TYPE_DEFAULT, "Not attaching device assessment to rewrap request, as pass does not support assessments (assessment was probably generated for a supported pass, but payment is being made with an unsupported pass)", buf, 2u);
      }
    }
  }

  return 0;
}

- (void)_performDataProcessingWithParam:(id)param
{
  paramCopy = param;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __70__PKPaymentAuthorizationStateMachine__performDataProcessingWithParam___block_invoke;
  v14 = &unk_1E79C4DD8;
  selfCopy = self;
  v5 = paramCopy;
  v16 = v5;
  v6 = _Block_copy(&v11);
  rewrapResponse = [v5 rewrapResponse];
  v8 = rewrapResponse;
  if (rewrapResponse)
  {
    redemption = [rewrapResponse redemption];

    if (redemption)
    {
      redemption2 = [v8 redemption];
      [(PKPaymentAuthorizationStateMachine *)self _processPaymentRewardsRedemption:redemption2];
    }
  }

  v6[2](v6);
}

- (void)_processPaymentRewardsRedemption:(id)redemption
{
  v19 = *MEMORY[0x1E69E9840];
  redemptionCopy = redemption;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = redemptionCopy;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Got payment rewards redemption details %@", &v17, 0xCu);
  }

  pass = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  uniqueID = [pass uniqueID];

  if (uniqueID)
  {
    selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
    if ([selectedPaymentOffer type] == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        rewardsRedemptionIntent = [selectedPaymentOffer rewardsRedemptionIntent];
        v10 = rewardsRedemptionIntent;
        if (rewardsRedemptionIntent && ([rewardsRedemptionIntent isEmptyValued] & 1) == 0)
        {
          v11 = [PKPaymentRewardsRedemptionUnit alloc];
          rewardsType = [v10 rewardsType];
          monetaryValue = [v10 monetaryValue];
          value = [v10 value];
          v15 = [(PKPaymentRewardsRedemptionUnit *)v11 initWithType:rewardsType monetaryValue:monetaryValue value:value];

          v16 = [[PKPaymentRewardsRedemptionDetails alloc] initWithIntended:v15 redeemed:0 originalTransactionDetails:0];
          [redemptionCopy setDetails:v16];
        }
      }
    }

    [(PKPaymentService *)self->_paymentService insertOrUpdatePaymentRewardsRedemption:redemptionCopy withPassUniqueIdentifier:uniqueID];
    PKSharedCacheSetBoolForKey(1, @"PKSharedCacheHasEverMadeIssuerInstallmentTransaction");
  }
}

- (void)_enrichPaymentRewardsRedemptionWithPaymentTransaction:(id)transaction usingPass:(id)pass
{
  transactionCopy = transaction;
  passCopy = pass;
  if (!PKHideCardBenefitRewards())
  {
    paymentService = self->_paymentService;
    paymentHash = [transactionCopy paymentHash];
    v9 = [(PKPaymentService *)paymentService paymentRewardsRedemptionForPaymentHash:paymentHash];

    if (v9)
    {
      merchant = [transactionCopy merchant];
      v11 = objc_alloc_init(PKPaymentRewardsRedemptionTransactionDetails);
      identifier = [transactionCopy identifier];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setIdentifier:identifier];

      merchantProvidedDescription = [transactionCopy merchantProvidedDescription];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setDescriptionText:merchantProvidedDescription];

      name = [merchant name];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMerchantRawName:name];

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(merchant, "category")}];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMerchantCategoryCode:v15];

      transactionDate = [transactionCopy transactionDate];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setTimestamp:transactionDate];

      currencyAmount = [transactionCopy currencyAmount];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMonetaryValue:currencyAmount];

      details = [v9 details];
      if (!details)
      {
        details = objc_alloc_init(PKPaymentRewardsRedemptionDetails);
      }

      [(PKPaymentRewardsRedemptionDetails *)details setOriginalTransaction:v11];
      [v9 setDetails:details];
      v19 = self->_paymentService;
      uniqueID = [passCopy uniqueID];
      [(PKPaymentService *)v19 insertOrUpdatePaymentRewardsRedemption:v9 withPassUniqueIdentifier:uniqueID];
    }
  }
}

- (void)_performDidAuthorizeCallbackWithParam:(id)param
{
  paramCopy = param;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requestType = [paymentRequest requestType];
  if ([paymentRequest isServiceProviderPaymentRequest])
  {
    [(PKPaymentAuthorizationStateMachine *)self _enqeueDidAuthorizePurchaseWithParam:paramCopy];
    goto LABEL_14;
  }

  if ([paymentRequest isPeerPaymentRequest])
  {
    authorizedPeerPaymentQuote = [paramCopy authorizedPeerPaymentQuote];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:authorizedPeerPaymentQuote];
LABEL_13:

    goto LABEL_14;
  }

  switch(requestType)
  {
    case 2uLL:
LABEL_8:
      authorizedPeerPaymentQuote = [paramCopy applePayTrustSignature];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizeAccountServicePaymentRequestWithApplePayTrustSignature:authorizedPeerPaymentQuote];
      goto LABEL_13;
    case 5uLL:
      authorizedPeerPaymentQuote = [paramCopy installmentAuthorizationToken];
      rewrapResponse = [paramCopy rewrapResponse];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:authorizedPeerPaymentQuote rewrapResponse:rewrapResponse];
LABEL_12:

      goto LABEL_13;
    case 4uLL:
      goto LABEL_8;
  }

  if ([(PKPaymentAuthorizationStateMachine *)self useSecureElement])
  {
    authorizedPeerPaymentQuote = [paramCopy paymentToken];
    rewrapResponse = [paramCopy rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithToken:authorizedPeerPaymentQuote rewrapResponse:rewrapResponse];
    goto LABEL_12;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 3 && [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 4)
  {
    authorizedPeerPaymentQuote = [paramCopy payment];
    rewrapResponse = [paramCopy rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithRemotePayment:authorizedPeerPaymentQuote rewrapResponse:rewrapResponse];
    goto LABEL_12;
  }

  if (requestType > 0xD || ((1 << requestType) & 0x20C0) == 0)
  {
    authorizedPeerPaymentQuote = [paramCopy payment];
    rewrapResponse = [paramCopy rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithByPassPayment:authorizedPeerPaymentQuote rewrapResponse:rewrapResponse];
    goto LABEL_12;
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizeContext];
LABEL_14:
}

- (void)_insertPendingPaymentTransactionsWithParam:(id)param
{
  v39 = *MEMORY[0x1E69E9840];
  paramCopy = param;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model pendingTransactions];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v4 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v29;
      *&v5 = 138412802;
      v25 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          paymentApplication = [v9 paymentApplication];
          dpanIdentifier = [paymentApplication dpanIdentifier];

          peerPaymentTransactionMetadata = [paramCopy peerPaymentTransactionMetadata];
          v13 = peerPaymentTransactionMetadata;
          if (peerPaymentTransactionMetadata)
          {
            dpanIdentifier2 = [peerPaymentTransactionMetadata dpanIdentifier];
            v15 = [dpanIdentifier2 isEqual:dpanIdentifier];

            if (v15)
            {
              transaction = [v9 transaction];
              serviceIdentifier = [v13 serviceIdentifier];
              [transaction setServiceIdentifier:serviceIdentifier];

              requestDeviceScoreIdentifier = [v13 requestDeviceScoreIdentifier];
              [transaction setRequestDeviceScoreIdentifier:requestDeviceScoreIdentifier];

              sendDeviceScoreIdentifier = [v13 sendDeviceScoreIdentifier];
              [transaction setSendDeviceScoreIdentifier:sendDeviceScoreIdentifier];
            }
          }

          transaction2 = [v9 transaction];
          paymentApplication2 = [v9 paymentApplication];
          pass = [v9 pass];
          uniqueID = [pass uniqueID];

          v24 = PKLogFacilityTypeGetObject(0x18uLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v33 = transaction2;
            v34 = 2112;
            v35 = uniqueID;
            v36 = 2112;
            v37 = paymentApplication2;
            _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Inserting transaction: %@ for pass: %@ paymentApplication: %@", buf, 0x20u);
          }

          [(PKPaymentService *)self->_paymentService insertOrUpdatePaymentTransaction:transaction2 forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication2 completion:&__block_literal_global_332];
        }

        v6 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v6);
    }
  }
}

void __81__PKPaymentAuthorizationStateMachine__insertPendingPaymentTransactionsWithParam___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject(0x18uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "Inserted transaction from PKPaymentAuthorizationStateMachine", v1, 2u);
  }
}

- (void)_insertPendingTransactionRegistration
{
  v21 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (PKDocumentDeliveryEnabled())
    {
      paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      requestType = [paymentRequest requestType];

      if ((requestType - 1) >= 0xA && (requestType - 12) >= 4 && [(PKPaymentAuthorizationDataModel *)self->_model mode]== 1 && [PKWebServiceDocumentDeliveryFeature isEnabledWithWebService:self->_paymentWebService])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        pendingTransactions = [(PKPaymentAuthorizationDataModel *)self->_model pendingTransactions];
        v6 = [pendingTransactions countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            v9 = 0;
            do
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(pendingTransactions);
              }

              v10 = *(*(&v16 + 1) + 8 * v9);
              v11 = objc_alloc_init(MEMORY[0x1E6967E50]);
              v12 = PKLogFacilityTypeGetObject(8uLL);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v15 = 0;
                _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Inserting pending transaction registration", v15, 2u);
              }

              transaction = [v10 transaction];
              fkPaymentTransaction = [transaction fkPaymentTransaction];
              [v11 registerPaymentTransaction:fkPaymentTransaction];

              ++v9;
            }

            while (v7 != v9);
            v7 = [pendingTransactions countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (void)_insertPendingOrderDetails:(BOOL *)details
{
  v22 = *MEMORY[0x1E69E9840];
  payment = [(PKPaymentAuthorizationDataModel *)self->_model payment];
  pendingOrderDetails = [(PKPaymentAuthorizationDataModel *)self->_model pendingOrderDetails];
  v7 = pendingOrderDetails;
  if (payment)
  {
    v8 = pendingOrderDetails == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_9:
    *details = 0;
    goto LABEL_13;
  }

  if (PKOrderManagementDisabled())
  {
    v9 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Payment had order details, but user has disabled order management. Skipping.", &v20, 2u);
    }

    goto LABEL_9;
  }

  token = [payment token];
  transactionIdentifier = [token transactionIdentifier];

  v12 = objc_alloc(MEMORY[0x1E6967E40]);
  orderTypeIdentifier = [v7 orderTypeIdentifier];
  orderIdentifier = [v7 orderIdentifier];
  webServiceURL = [v7 webServiceURL];
  authenticationToken = [v7 authenticationToken];
  v17 = [v12 initWithTransactionIdentifier:transactionIdentifier orderTypeIdentifier:orderTypeIdentifier orderIdentifier:orderIdentifier webServiceBaseURL:webServiceURL authenticationToken:authenticationToken];

  v18 = objc_alloc_init(MEMORY[0x1E6967E48]);
  v19 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Inserting pending Apple Pay order with details: %@", &v20, 0xCu);
  }

  [v18 insertOrUpdatePendingApplePayOrder:v17];
  *details = 1;

LABEL_13:
}

- (void)_updateModelCanAddPasses
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  _isAMPPayment = [paymentRequest _isAMPPayment];

  if (_isAMPPayment)
  {
    if ([(PKPaymentAuthorizationDataModel *)self->_model canAddPasses])
    {
      [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
      [(PKPaymentAuthorizationDataModel *)self->_model setCanAddPasses:0];
      model = self->_model;

      [(PKPaymentAuthorizationDataModel *)model endUpdates];
    }
  }

  else
  {
    paymentWebService = self->_paymentWebService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__PKPaymentAuthorizationStateMachine__updateModelCanAddPasses__block_invoke;
    v7[3] = &unk_1E79C9D30;
    v7[4] = self;
    [PKPaymentRegistrationUtilities _shouldShowAddCardFlowForWebService:paymentWebService completion:v7];
  }
}

uint64_t __62__PKPaymentAuthorizationStateMachine__updateModelCanAddPasses__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 56) beginUpdates];
  [*(*(a1 + 32) + 56) setCanAddPasses:a2];
  v4 = *(*(a1 + 32) + 56);

  return [v4 endUpdates];
}

- (void)_updateModelBillingAddressIfNeededForPass:(id)pass
{
  passCopy = pass;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requiredBillingContactFields = [paymentRequest requiredBillingContactFields];
  if ([requiredBillingContactFields containsObject:@"post"])
  {
    billingAddress = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];

    if (billingAddress)
    {
      goto LABEL_7;
    }

    v7 = +[PKPaymentOptionsDefaults defaults];
    paymentRequest = [v7 defaultBillingAddressForPaymentPass:passCopy];

    if (paymentRequest)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setBillingAddress:paymentRequest];
    }
  }

  else
  {
  }

LABEL_7:
}

- (void)_retrieveVPANPaymentSession
{
  self->_awaitingWebServiceResponse = 1;
  paymentWebService = self->_paymentWebService;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PKPaymentAuthorizationStateMachine__retrieveVPANPaymentSession__block_invoke;
  v3[3] = &unk_1E79CE4A0;
  v3[4] = self;
  [(PKPaymentWebService *)paymentWebService virtualCardPaymentSessionWithCompletion:v3];
}

void __65__PKPaymentAuthorizationStateMachine__retrieveVPANPaymentSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPaymentAuthorizationStateMachine__retrieveVPANPaymentSession__block_invoke_2;
  block[3] = &unk_1E79C4E00;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PKPaymentAuthorizationStateMachine__retrieveVPANPaymentSession__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 11) = 0;
  if (*(a1 + 40))
  {
    v3 = [[PKPaymentRequestMerchantSessionUpdate alloc] initWithStatus:0 merchantSession:*(a1 + 40)];
    [*(a1 + 32) didReceiveMerchantSessionCompleteWithUpdate:?];
    [*(a1 + 32) _advanceToNextState];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = [PKPaymentAuthorizationErrorStateParam paramWithError:*(a1 + 48)];
    [v2 _setState:15 param:?];
  }
}

- (void)_registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleStateMachineWillStartNotification_ name:@"PKPaymentAuthorizationStateMachineWillStartNotification" object:0 suspensionBehavior:4];
}

- (void)_unregisterForNotifications
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_postStateMachineWillStartNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"PKPaymentAuthorizationStateMachineWillStartNotification" object:self->_instanceIdentifier userInfo:0 options:1];
}

- (void)_handleStateMachineWillStartNotification:(id)notification
{
  notificationCopy = notification;
  if ((PKSupportsNestedInAppPaymentSheet() & 1) == 0)
  {
    state = self->_state;
    v5 = state > 0x10;
    v6 = (1 << state) & 0x1A000;
    if (v5 || v6 == 0)
    {
      object = [notificationCopy object];
      v9 = [object isEqual:self->_instanceIdentifier];

      if ((v9 & 1) == 0)
      {
        [(PKPaymentAuthorizationStateMachine *)self didCancel];
      }
    }
  }
}

- (void)_performAuthorizationWithParam:(id)param
{
  paramCopy = param;
  objc_initWeak(location, self);
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  requestType = [paymentRequest requestType];

  credential = [paramCopy credential];
  nonceData = [paramCopy nonceData];
  cryptogramType = [paramCopy cryptogramType];
  networkMerchantIdentifier = [paramCopy networkMerchantIdentifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke;
  aBlock[3] = &unk_1E79CE518;
  objc_copyWeak(v64, location);
  v11 = nonceData;
  v61 = v11;
  v12 = credential;
  v64[1] = cryptogramType;
  v64[2] = requestType;
  v62 = v12;
  selfCopy = self;
  v13 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_345;
  v52[3] = &unk_1E79CE540;
  v35 = v11;
  v53 = v35;
  v14 = v12;
  v54 = v14;
  v59[1] = cryptogramType;
  v33 = networkMerchantIdentifier;
  v55 = v33;
  selfCopy2 = self;
  v34 = paramCopy;
  v57 = v34;
  v15 = v13;
  v58 = v15;
  objc_copyWeak(v59, location);
  v59[2] = requestType;
  v36 = _Block_copy(v52);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_356;
  v50[3] = &unk_1E79CE568;
  objc_copyWeak(&v51, location);
  v16 = _Block_copy(v50);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_359;
  v47[3] = &unk_1E79CDC38;
  v47[4] = self;
  objc_copyWeak(&v49, location);
  v17 = v14;
  v48 = v17;
  v37 = _Block_copy(v47);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_371;
  v43[3] = &unk_1E79CE630;
  v43[4] = self;
  v18 = v17;
  v44 = v18;
  v19 = v16;
  v45 = v19;
  objc_copyWeak(&v46, location);
  v20 = _Block_copy(v43);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_375;
  v40[3] = &unk_1E79C9528;
  objc_copyWeak(&v42, location);
  v40[4] = self;
  v21 = v18;
  v41 = v21;
  v22 = _Block_copy(v40);
  paymentRequest2 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([paymentRequest2 isPeerPaymentRequest])
  {
    peerPaymentSession = self->_peerPaymentSession;
    v25 = v20;
    if (peerPaymentSession)
    {
      goto LABEL_3;
    }

    v30 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_379;
    v39[3] = &unk_1E79CE680;
    v39[4] = v20;
    v31 = [PKPaymentSession startPeerPaymentSessionWithCompletion:v39];
LABEL_9:

    goto LABEL_10;
  }

  requestType2 = [paymentRequest2 requestType];
  v27 = v22;
  if (requestType2 == 2 || (v28 = [paymentRequest2 requestType], v27 = v22, v28 == 4) || (v29 = objc_msgSend(paymentRequest2, "requestType"), v27 = v37, v29 == 5))
  {
    v27[2]();
    goto LABEL_10;
  }

  peerPaymentSession = self->_inAppPaymentSession;
  v25 = v36;
  if (!peerPaymentSession)
  {
    v30 = v38;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_381;
    v38[3] = &unk_1E79CE6A8;
    v38[4] = v36;
    v32 = [PKPaymentSession startInAppSessionWithCompletion:v38];
    goto LABEL_9;
  }

LABEL_3:
  v25[2](v25, peerPaymentSession, 0);
LABEL_10:

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v46);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&v51);

  objc_destroyWeak(v59);
  objc_destroyWeak(v64);

  objc_destroyWeak(location);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2;
  block[3] = &unk_1E79CE4F0;
  objc_copyWeak(&v12, (a1 + 56));
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3;
      block[3] = &unk_1E79CE4C8;
      v3 = v16;
      objc_copyWeak(v16, (a1 + 64));
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v4 = *(a1 + 48);
      v5 = *(a1 + 72);
      v15 = v4;
      v16[1] = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v6 = v13;
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4;
      v9[3] = &unk_1E79CE328;
      v3 = v11;
      objc_copyWeak(v11, (a1 + 64));
      v11[1] = *(a1 + 80);
      v8 = *(a1 + 48);
      v7 = v8.i64[0];
      v10 = vextq_s8(v8, v8, 8uLL);
      dispatch_async(MEMORY[0x1E69E96A0], v9);
      v6 = v10.i64[1];
    }

    objc_destroyWeak(v3);
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained state];
    v4 = v3 > 0x10;
    v5 = 1 << v3;
    WeakRetained = v9;
    v6 = v5 & 0x1A000;
    if (v4 || v6 == 0)
    {
      v8 = [PKPaymentAuthorizationRewrapStateParam paramWithWrappedPayment:*(a1 + 32) nonce:*(a1 + 40) credential:*(a1 + 48) cryptogramType:*(a1 + 64)];
      [v9 _setState:11 param:v8];

      WeakRetained = v9;
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 1 && [*(*(a1 + 32) + 56) mode] == 1)
  {
    v3 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Dual enrollment rewrap failed, performing regular buy", v9, 2u);
    }

    v4 = [WeakRetained model];
    [v4 fallbackToBypassMode];

    v5 = objc_alloc_init(PKPayment);
    [(PKPayment *)v5 setCredential:*(a1 + 40)];
    [WeakRetained _enqueueDidAuthorizePaymentWithPayment:v5 rewrapResponse:0];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
    if (WeakRetained)
    {
      v7 = [WeakRetained state];
      if (v7 > 0x10 || ((1 << v7) & 0x1A000) == 0)
      {
        v8 = [PKPaymentAuthorizationErrorStateParam paramWithError:v6];
        [WeakRetained _setState:14 param:v8];
      }
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_345(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v25 = 0;
    v6 = [[PKInAppPaymentSessionAuthorizeParamaters alloc] initWithNonce:*(a1 + 32) authenticationCredential:*(a1 + 40) networkMerchantIdentifier:*(a1 + 48) cryptogramType:*(a1 + 88)];
    [(PKInAppPaymentSessionAuthorizeParamaters *)v6 setIsFeatureNotSupportedError:&v25];
    v7 = [*(a1 + 56) _inAppSessionAuthorizationRequest];
    v8 = [v5 authorizeWithRequest:v7 authorizationParameters:v6];
    v9 = [*(a1 + 64) evaluationResponse];
    v10 = [v9 kextBlacklistVersion];
    [v8 setKextBlacklistVersion:v10];

    if (a3)
    {
      [v5 invalidateSession];
    }

    v11 = [*(*(a1 + 56) + 56) itemForType:3];
    v12 = v11;
    if (v25 == 1 && ([v11 pass], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasAssociatedPeerPaymentAccount"), v13, v14))
    {
      v15 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "SE Error: Handling NFCD isFeatureNotSupported error. Re-registering for peer payment, then retrying quote authorization request again.", buf, 2u);
      }

      v16 = [*(*(a1 + 56) + 56) peerPaymentService];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_347;
      v21[3] = &unk_1E79C4A68;
      v23 = *(a1 + 72);
      v22 = v8;
      [v16 registerDeviceWithForceReregister:1 completion:v21];
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_354;
    v18[3] = &unk_1E79CE328;
    objc_copyWeak(v20, (a1 + 80));
    v17 = *(a1 + 56);
    v20[1] = *(a1 + 96);
    v18[4] = v17;
    v19 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v18);

    objc_destroyWeak(v20);
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_347(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Completed peer payment re-register with success: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 1 && [*(*(a1 + 32) + 56) mode] == 1)
  {
    v3 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Dual enrollment session not available, performing regular buy", v9, 2u);
    }

    v4 = [WeakRetained model];
    [v4 fallbackToBypassMode];

    v5 = objc_alloc_init(PKPayment);
    [(PKPayment *)v5 setCredential:*(a1 + 40)];
    [WeakRetained _enqueueDidAuthorizePaymentWithPayment:v5 rewrapResponse:0];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2005 userInfo:0];
  if (WeakRetained)
  {
    v7 = [WeakRetained state];
    if (v7 > 0x10 || ((1 << v7) & 0x1A000) == 0)
    {
      v8 = [PKPaymentAuthorizationErrorStateParam paramWithError:v6];
      [WeakRetained _setState:14 param:v8];
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_356(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_357;
  v5[3] = &unk_1E79C54B8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_357(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (*(a1 + 32))
    {
      v3 = [WeakRetained state];
      v4 = v3 > 0x10;
      v5 = 1 << v3;
      WeakRetained = v11;
      v6 = v5 & 0x1A000;
      if (!v4 && v6 != 0)
      {
        goto LABEL_13;
      }

      v8 = [PKPaymentAuthorizationAuthorizedStateParam paramWithAuthorizedPeerPaymentQuote:*(a1 + 32)];
      [v11 _setState:12 param:v8];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
      v9 = [v11 state];
      if (v9 > 0x10 || ((1 << v9) & 0x1A000) == 0)
      {
        v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v8];
        [v11 _setState:14 param:v10];
      }
    }

    WeakRetained = v11;
  }

LABEL_13:
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_359(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) paymentRequest];
  v3 = [v2 installmentConfiguration];
  v4 = [v3 feature];
  if (v4 == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2 * (v4 == 1);
  }

  v6 = +[PKAccountService sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_360;
  v7[3] = &unk_1E79CE608;
  v7[4] = *(a1 + 32);
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  [v6 defaultAccountForFeature:v5 completion:v7];

  objc_destroyWeak(&v9);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_360(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(PKAccountWebServiceInstallmentAuthorizationRequest);
    v8 = [v5 accountIdentifier];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setAccountIdentifier:v8];

    v9 = [v5 accountBaseURL];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setBaseURL:v9];

    v10 = [*(*(a1 + 32) + 56) installmentBindToken];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setBindToken:v10];

    v11 = [*(*(a1 + 32) + 56) installmentAuthorizationAmount];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setAuthorizationAmount:v11];
    v12 = [*(*(a1 + 32) + 56) installmentGroupIdentifier];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setInstallmentGroupIdentifier:v12];

    v13 = [*(*(a1 + 32) + 56) shippingAddress];

    if (v13)
    {
      v14 = [*(*(a1 + 32) + 56) shippingAddress];
      v15 = [v14 postalAddresses];
      v16 = [v15 firstObject];
      v17 = [v16 value];

      [(PKAccountWebServiceInstallmentAuthorizationRequest *)v7 setShippingAddress:v17];
    }

    v18 = *(*(a1 + 32) + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_5;
    v25[3] = &unk_1E79CE5E0;
    objc_copyWeak(&v30, (a1 + 48));
    v19 = v7;
    v26 = v19;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v27 = v20;
    v28 = v21;
    v29 = v5;
    [v18 performInstallmentAuthorizationWithRequest:v19 completion:v25];

    objc_destroyWeak(&v30);
  }

  else
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
    v23 = *(a1 + 32);
    v24 = [PKPaymentAuthorizationErrorStateParam paramWithError:v22];
    [v23 _setState:14 param:v24];
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_6;
  v12[3] = &unk_1E79CE5B8;
  objc_copyWeak(&v18, (a1 + 64));
  v13 = *(a1 + 32);
  v7 = v5;
  v14 = v7;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = [PKPaymentSession startApplePayTrustSessionWithCompletion:v12];

  objc_destroyWeak(&v18);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) referenceIdentifier];
    v6 = [v4 manifestHashWithReferenceIdentifier:v5];

    v7 = [PKApplePayTrustSignatureRequest alloc];
    v8 = [*(a1 + 40) nonce];
    v9 = [(PKApplePayTrustSignatureRequest *)v7 initWithKeyIdentifier:@"com.apple.wallet.applepaytrust" manifestHash:v6 nonce:v8];

    v10 = [v3 signatureForRequest:v9 withAuthorization:*(a1 + 48)];
    [v3 invalidateSession];
    if (v10)
    {
      v11 = [[PKAccountWebServiceApplePayTrustRequest alloc] initWithApplePayTrustProtocol:*(a1 + 32)];
      [(PKAccountWebServiceApplePayTrustRequest *)v11 setSignature:v10];
      v12 = *(a1 + 64);
      v13 = *(*(a1 + 56) + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_365;
      v16[3] = &unk_1E79CE590;
      objc_copyWeak(&v17, (a1 + 72));
      [v13 applePayTrustSignatureRequestWithRequest:v11 account:v12 completion:v16];
      objc_destroyWeak(&v17);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_368;
      v14[3] = &unk_1E79C9D80;
      objc_copyWeak(&v15, (a1 + 72));
      dispatch_async(MEMORY[0x1E69E96A0], v14);
      objc_destroyWeak(&v15);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_7;
    block[3] = &unk_1E79C9D80;
    objc_copyWeak(&v19, (a1 + 72));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v19);
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained state];
    if (v3 > 0x10 || ((1 << v3) & 0x1A000) == 0)
    {
      v5 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "[PKPaymentAuthorizationStateMachine _performAuthorizationWithParam:]_block_invoke_7";
        _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Failed to get Apple Pay Trust session for method: %s", &v8, 0xCu);
      }

      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
      v7 = [PKPaymentAuthorizationErrorStateParam paramWithError:v6];
      [v2 _setState:14 param:v7];
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_365(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationToken];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_366;
  v5[3] = &unk_1E79C54B8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_366(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a1 + 32))
    {
      v3 = [PKPaymentAuthorizationAuthorizedStateParam paramWithInstallmentAuthorizationToken:?];
      [v5 _setState:12 param:v3];
    }

    else
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
      v4 = [PKPaymentAuthorizationErrorStateParam paramWithError:v3];
      [v5 _setState:14 param:v4];
    }

    WeakRetained = v5;
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = [WeakRetained state];
    v3 = v2 > 0x10;
    v4 = 1 << v2;
    WeakRetained = v9;
    v5 = v4 & 0x1A000;
    if (v3 || v5 == 0)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
      v8 = [PKPaymentAuthorizationErrorStateParam paramWithError:v7];
      [v9 _setState:14 param:v8];

      WeakRetained = v9;
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_371(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 56) itemForType:3];
    v7 = [v6 paymentApplication];
    v18 = 0;
    v8 = [*(*(a1 + 32) + 56) peerPaymentQuote];
    v9 = [v5 authorizePeerPaymentQuote:v8 forPaymentApplication:v7 withAuthenticationCredential:*(a1 + 40) shouldReregister:&v18];

    if (a3)
    {
      [v5 invalidateSession];
    }

    if (v18 == 1)
    {
      v10 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "SE Error: Handling NFCD shouldReregister error. Re-registering for peer payment, then retrying quote authorization request again.", buf, 2u);
      }

      v11 = [*(*(a1 + 32) + 56) peerPaymentService];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_372;
      v14[3] = &unk_1E79C4A68;
      v16 = *(a1 + 48);
      v15 = v9;
      [v11 registerDeviceWithForceReregister:1 completion:v14];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_373;
    block[3] = &unk_1E79C9D80;
    objc_copyWeak(&v13, (a1 + 56));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v13);
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_372(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Completed peer payment re-register with success: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_373(uint64_t a1)
{
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2005 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v6 = [PKPaymentAuthorizationErrorStateParam paramWithError:v7];
      [v3 _setState:14 param:v6];
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_2_375(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_376;
  v4[3] = &unk_1E79CE658;
  objc_copyWeak(&v6, (a1 + 48));
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = [PKPaymentSession startApplePayTrustSessionWithCompletion:v4];

  objc_destroyWeak(&v6);
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_3_376(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 56) paymentRequest];
    v5 = [v4 applePayTrustSignatureRequest];
    v6 = [v3 signatureForRequest:v5 withAuthorization:*(a1 + 40)];
    [v3 invalidateSession];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_378;
    v8[3] = &unk_1E79C54B8;
    objc_copyWeak(&v10, (a1 + 48));
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_377;
    block[3] = &unk_1E79C54B8;
    objc_copyWeak(&v13, (a1 + 48));
    v12 = 0;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v13);
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_4_377(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    if (v4 > 0x10 || ((1 << v4) & 0x1A000) == 0)
    {
      v6 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "[PKPaymentAuthorizationStateMachine _performAuthorizationWithParam:]_block_invoke_4";
        _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Failed to get Apple Pay Trust session for method: %s", &v8, 0xCu);
      }

      v7 = [PKPaymentAuthorizationAuthorizedStateParam paramWithApplePayTrustSignature:*(a1 + 32)];
      [v3 _setState:12 param:v7];
    }
  }
}

void __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained state];
    v4 = v3 > 0x10;
    v5 = 1 << v3;
    WeakRetained = v10;
    v6 = v5 & 0x1A000;
    if (v4 || v6 == 0)
    {
      if (*(a1 + 32))
      {
        v8 = [PKPaymentAuthorizationAuthorizedStateParam paramWithApplePayTrustSignature:?];
        [v10 _setState:12 param:v8];
      }

      else
      {
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2006 userInfo:0];
        v9 = [PKPaymentAuthorizationErrorStateParam paramWithError:v8];
        [v10 _setState:14 param:v9];
      }

      WeakRetained = v10;
    }
  }
}

- (id)_inAppSessionAuthorizationRequest
{
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  paymentApplication = [v4 paymentApplication];

  currencyCode = [paymentRequest currencyCode];
  countryCode = [paymentRequest countryCode];
  _transactionAmount = [paymentRequest _transactionAmount];
  merchantCapabilities = [paymentRequest merchantCapabilities];
  supportedNetworks = [paymentRequest supportedNetworks];
  v11 = objc_alloc_init(PKInAppPaymentSessionAuthorizationRequest);
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setPaymentApplication:paymentApplication];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCurrencyCode:currencyCode];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCountryCode:countryCode];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setTransactionAmount:_transactionAmount];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantCapabilities:merchantCapabilities];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setSupportedNetworks:supportedNetworks];
  merchantIdentifier = [paymentRequest merchantIdentifier];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantIdentifier:merchantIdentifier];

  applicationData = [paymentRequest applicationData];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setApplicationData:applicationData];

  merchantSession = [paymentRequest merchantSession];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantSession:merchantSession];

  return v11;
}

- (void)_applyShippingInformationToPayment:(id)payment
{
  v42[1] = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([paymentRequest requestType] != 10)
  {
    requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
    v7 = [requiredShippingContactFields count];

    if (v7)
    {
      requiredShippingContactFields2 = [paymentRequest requiredShippingContactFields];
      v9 = [requiredShippingContactFields2 containsObject:@"email"];

      if (v9)
      {
        shippingEmail = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];
        emailAddresses = [shippingEmail emailAddresses];
        firstObject = [emailAddresses firstObject];

        v13 = MEMORY[0x1E695CEE0];
        value = [firstObject value];
        v15 = [v13 labeledValueWithLabel:@"Shipping" value:value];
        v42[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
      }

      else
      {
        v16 = 0;
      }

      requiredShippingContactFields3 = [paymentRequest requiredShippingContactFields];
      v18 = [requiredShippingContactFields3 containsObject:@"phone"];

      if (v18)
      {
        shippingPhone = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];
        phoneNumbers = [shippingPhone phoneNumbers];
        firstObject2 = [phoneNumbers firstObject];

        v22 = MEMORY[0x1E695CEE0];
        value2 = [firstObject2 value];
        v24 = [v22 labeledValueWithLabel:@"Shipping" value:value2];
        v41 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      }

      else
      {
        v25 = 0;
      }

      isShippingEditable = [paymentRequest isShippingEditable];
      requiredShippingContactFields4 = [paymentRequest requiredShippingContactFields];
      v28 = [requiredShippingContactFields4 containsObject:@"post"];

      requiredShippingContactFields5 = [paymentRequest requiredShippingContactFields];
      v30 = [requiredShippingContactFields5 containsObject:@"name"];

      v31 = v28 & isShippingEditable;
      if (v28)
      {
        shippingAddress = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
        shippingAddress2 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
      }

      else
      {
        shippingAddress = 0;
        shippingAddress2 = 0;
      }

      if (!(v31 & 1 | ((v30 & 1) == 0)))
      {
        shippingName = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];

        shippingAddress2 = shippingName;
      }

      v35 = MEMORY[0x1E695CD58];
      nameComponents = [shippingAddress2 nameComponents];
      postalAddresses = [shippingAddress postalAddresses];
      v38 = [v35 pkContactWithNameComponents:nameComponents postalAddresses:postalAddresses emailAddresses:v16 phoneNumbers:v25];
      sanitizedContact = [v38 sanitizedContact];

      v40 = [[PKContact alloc] initWithCNContact:sanitizedContact];
      [paymentCopy setShippingContact:v40];
    }
  }
}

- (void)_applyFulfillmentMethodToPayment:(id)payment
{
  paymentCopy = payment;
  shippingMethod = [(PKPaymentAuthorizationDataModel *)self->_model shippingMethod];

  if (shippingMethod)
  {
    shippingMethod2 = [(PKPaymentAuthorizationDataModel *)self->_model shippingMethod];
    [paymentCopy setShippingMethod:shippingMethod2];
  }
}

- (void)_applyBillingInformationToPayment:(id)payment
{
  model = self->_model;
  paymentCopy = payment;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v6 = [(PKPaymentAuthorizationStateMachine *)self _billingInformationFromPaymentRequest:paymentRequest];
  [paymentCopy setBillingContact:v6];
}

- (void)_applyBillingInformationToAuthorizedQuote:(id)quote
{
  model = self->_model;
  quoteCopy = quote;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v6 = [(PKPaymentAuthorizationStateMachine *)self _billingInformationFromPaymentRequest:paymentRequest];
  [quoteCopy setContact:v6];
}

- (id)_billingInformationFromPaymentRequest:(id)request
{
  requestCopy = request;
  requiredBillingContactFields = [requestCopy requiredBillingContactFields];
  v6 = [requiredBillingContactFields count];

  if ([requestCopy requestType] != 10)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    requiredBillingContactFields2 = [requestCopy requiredBillingContactFields];
    v11 = [requiredBillingContactFields2 containsObject:@"post"];

    if (v11)
    {
      billingAddress = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
    }

    else
    {
      billingAddress = 0;
    }

    if ([requestCopy requestType] == 10)
    {
      nameComponents = [billingAddress nameComponents];
      v14 = nameComponents;
      if (nameComponents)
      {
        nameComponents2 = nameComponents;
      }

      else
      {
        shippingName = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];
        nameComponents2 = [shippingName nameComponents];
      }

      requiredShippingContactFields = [requestCopy requiredShippingContactFields];
      v22 = [requiredShippingContactFields containsObject:@"email"];

      if (v22)
      {
        shippingEmail = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];
        emailAddresses = [shippingEmail emailAddresses];
      }

      else
      {
        emailAddresses = 0;
      }

      requiredShippingContactFields2 = [requestCopy requiredShippingContactFields];
      v25 = [requiredShippingContactFields2 containsObject:@"phone"];

      if (v25)
      {
        shippingPhone = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];
        phoneNumbers = [shippingPhone phoneNumbers];
      }

      else
      {
        phoneNumbers = 0;
      }

      v27 = MEMORY[0x1E695CD58];
      postalAddresses = [billingAddress postalAddresses];
      v29 = [v27 pkContactWithNameComponents:nameComponents2 postalAddresses:postalAddresses emailAddresses:emailAddresses phoneNumbers:phoneNumbers];
      sanitizedContact = [v29 sanitizedContact];
    }

    else
    {
      v16 = MEMORY[0x1E695CD58];
      nameComponents2 = [billingAddress nameComponents];
      emailAddresses = [billingAddress postalAddresses];
      phoneNumbers = [v16 pkContactWithNameComponents:nameComponents2 postalAddresses:emailAddresses emailAddresses:0 phoneNumbers:0];
      sanitizedContact = [phoneNumbers sanitizedContact];
    }

    v9 = [[PKContact alloc] initWithCNContact:sanitizedContact];
    goto LABEL_21;
  }

  requiredShippingContactFields3 = [requestCopy requiredShippingContactFields];
  v8 = [requiredShippingContactFields3 count] | v6;

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 0;
LABEL_21:

  return v9;
}

- (id)_transactionWithPaymentToken:(id)token
{
  tokenCopy = token;
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  aPIType = [paymentRequest APIType];
  v7 = aPIType;
  v8 = aPIType - 1;
  if ((aPIType - 1) >= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (!aPIType)
  {
    merchantSession = [paymentRequest merchantSession];

    if (merchantSession)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  v11 = [PKPaymentTransaction paymentTransactionWithSource:v9];
  [v11 setOriginatedByDevice:1];
  transactionIdentifier = [tokenCopy transactionIdentifier];
  [v11 setPaymentHash:transactionIdentifier];

  date = [MEMORY[0x1E695DF00] date];
  [v11 setTransactionDate:date];

  [v11 setTechnologyType:2];
  transactionAmount = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [v11 setAmount:transactionAmount];

  currencyCode = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  [v11 setCurrencyCode:currencyCode];

  [v11 addUpdateReasons:2];
  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2)
  {
    selectedPaymentOffer = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
    [v11 setIsIssuerInstallmentTransaction:{objc_msgSend(selectedPaymentOffer, "type") == 1}];
  }

  else
  {
    [v11 setIsIssuerInstallmentTransaction:0];
  }

  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  dpanIdentifier = [paymentApplication dpanIdentifier];
  [v11 setDPANIdentifier:dpanIdentifier];

  [v11 setPaymentNetworkIdentifier:{objc_msgSend(paymentApplication, "paymentNetworkIdentifier")}];
  v19 = objc_alloc_init(PKMerchant);
  merchantName = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [(PKMerchant *)v19 setName:merchantName];

  if (v8 >= 2)
  {
    if (!v7)
    {
      _adamIdentifier = [(PKPaymentAuthorizationStateMachine *)self _adamIdentifier];
      if (_adamIdentifier)
      {
        [(PKMerchant *)v19 setAdamIdentifier:_adamIdentifier];
      }
    }
  }

  else
  {
    merchantSession2 = [paymentRequest merchantSession];
    merchantIdentifier = [merchantSession2 merchantIdentifier];
    [(PKMerchant *)v19 setWebMerchantIdentifier:merchantIdentifier];

    displayName = [merchantSession2 displayName];
    [(PKMerchant *)v19 setWebMerchantName:displayName];

    v24 = MEMORY[0x1E695DFF8];
    domain = [merchantSession2 domain];
    v26 = [v24 URLWithString:domain];
    [(PKMerchant *)v19 setOriginURL:v26];
  }

  [v11 setMerchant:v19];

  return v11;
}

- (unint64_t)_adamIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  paymentRequest = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if (![paymentRequest APIType])
  {
    hostApplicationIdentifier = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    v6 = [hostApplicationIdentifier rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = hostApplicationIdentifier;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "No bundle ID in app identifier %@", &v13, 0xCu);
      }
    }

    else
    {
      v8 = [hostApplicationIdentifier substringFromIndex:v6 + v7];
      v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
      iTunesMetadata = [v9 iTunesMetadata];
      storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

      if (storeItemIdentifier)
      {

LABEL_12:
        goto LABEL_13;
      }

      v11 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "No item ID for %@", &v13, 0xCu);
      }
    }

    storeItemIdentifier = 0;
    goto LABEL_12;
  }

  storeItemIdentifier = 0;
LABEL_13:

  return storeItemIdentifier;
}

- (id)_transactionWithPurchase:(id)purchase paymentHash:(id)hash
{
  hashCopy = hash;
  v6 = [PKPaymentTransaction paymentTransactionWithSource:2];
  [v6 setOriginatedByDevice:1];
  [v6 setPaymentHash:hashCopy];

  date = [MEMORY[0x1E695DF00] date];
  [v6 setTransactionDate:date];

  [v6 setTechnologyType:2];
  transactionAmount = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [v6 setAmount:transactionAmount];

  currencyCode = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  [v6 setCurrencyCode:currencyCode];

  [v6 addUpdateReasons:2];
  v10 = objc_alloc_init(PKMerchant);
  merchantName = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [(PKMerchant *)v10 setName:merchantName];

  [v6 setMerchant:v10];

  return v6;
}

- (void)_promptTapToRadar
{
  if (os_variant_has_internal_ui() && self->_paymentService && self->_failureStatusCount == 2)
  {
    v9 = objc_alloc_init(PKTapToRadarRequest);
    v3 = MEMORY[0x1E696AEC0];
    merchantName = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
    v5 = [v3 stringWithFormat:@"Apple Pay failed in %@", merchantName];
    [(PKTapToRadarRequest *)v9 setReason:v5];

    v6 = MEMORY[0x1E696AEC0];
    merchantName2 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
    v8 = [v6 stringWithFormat:@"Apple Pay failure detected in %@", merchantName2];
    [(PKTapToRadarRequest *)v9 setAlertHeader:v8];

    [(PKTapToRadarRequest *)v9 setAlertMessage:@"Help improve Apple Pay by reporting this problem."];
    [(PKPaymentService *)self->_paymentService displayTapToRadarAlertForRequest:v9 completion:0];
  }
}

- (void)_reportToAutoBugCapture:(id)capture
{
  captureCopy = capture;
  if (os_variant_has_internal_ui() && self->_failureStatusCount == 1)
  {
    v4 = objc_alloc_init(PKAutoBugCaptureReporter);
    [(PKAutoBugCaptureReporter *)v4 reportIssueWithDomain:@"Wallet" type:@"PKPaymentAuthorization" subtype:@"StatusFailure" subtypeContext:captureCopy payload:0];
  }
}

- (void)_simulatePayment
{
  paymentApplication = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v4 = PKPaymentNetworkNameForPaymentCredentialType([paymentApplication paymentNetworkIdentifier]);

  v5 = [PKPaymentToken simulatedTokenForNetwork:v4];
  objc_initWeak(&location, self);
  v6 = arc4random_uniform(0xAu);
  v7 = dispatch_time(0, ((1.0 / (v6 + 1) + 1.0) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentAuthorizationStateMachine__simulatePayment__block_invoke;
  block[3] = &unk_1E79C54B8;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  v8 = v5;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__PKPaymentAuthorizationStateMachine__simulatePayment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPaymentToken:*(a1 + 32) rewrapResponse:0];
  [WeakRetained _setState:12 param:v2];
}

- (void)_reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:(id)dictionary eventType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  typeCopy = type;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 addObject:@"inApp"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 addEntriesFromDictionary:dictionaryCopy];
  _additionalRelevantAnalyticsDictionary = [(PKPaymentAuthorizationStateMachine *)self _additionalRelevantAnalyticsDictionary];
  [v9 addEntriesFromDictionary:_additionalRelevantAnalyticsDictionary];

  [v9 setObject:typeCopy forKey:@"eventType"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [PKAnalyticsReporter subject:*(*(&v16 + 1) + 8 * v15++) sendEvent:v9, v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_trackCouponCodeOutcomeWithError:(id)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    couponCode = [(PKPaymentAuthorizationDataModel *)self->_model couponCode];
    v10 = [couponCode length];

    if (v10)
    {
      v24 = @"eventType";
      v25[0] = @"couponCodeValid";
      v11 = MEMORY[0x1E695DF20];
      v12 = v25;
      v13 = &v24;
    }

    else
    {
      v22 = @"eventType";
      v23 = @"couponCodeCannotBeApplied";
      v11 = MEMORY[0x1E695DF20];
      v12 = &v23;
      v13 = &v22;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    [PKAnalyticsReporter subject:@"inApp" sendEvent:v15];
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"PKPaymentErrorDomain"];

  if (v7)
  {
    if ([v5 code] == 5)
    {
      v8 = PKAnalyticsReportEventTypeCouponCodeOutcomeExpired;
    }

    else
    {
      if ([v5 code] != 4)
      {
        goto LABEL_14;
      }

      v8 = PKAnalyticsReportEventTypeCouponCodeOutcomeInvalid;
    }

    v14 = *v8;
    if (v14)
    {
      v15 = v14;
      userInfo = [v5 userInfo];
      v17 = [userInfo PKStringForKey:*MEMORY[0x1E696A578]];

      v21[0] = v15;
      v20[0] = @"eventType";
      v20[1] = @"couponCodeErrorMerchantProvided";
      v18 = PKAnalyticsReportSwitchToggleResultValue([v17 length] != 0);
      v21[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v19];

LABEL_13:
    }
  }

LABEL_14:
}

- (PKPaymentAuthorizationStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end