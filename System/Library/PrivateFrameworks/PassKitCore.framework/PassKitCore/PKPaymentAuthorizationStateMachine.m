@interface PKPaymentAuthorizationStateMachine
- (BOOL)_canUpdateWithAutomaticReloadPaymentRequest:(id)a3 error:(id *)a4;
- (BOOL)_canUpdateWithBillingAgreement:(id)a3 oldAgreement:(id)a4 error:(id *)a5;
- (BOOL)_canUpdateWithDeferredPaymentRequest:(id)a3 error:(id *)a4;
- (BOOL)_canUpdateWithMultiTokenContexts:(id)a3 error:(id *)a4;
- (BOOL)_canUpdateWithRecurringPaymentRequest:(id)a3 error:(id *)a4;
- (BOOL)_isDeviceTransactionAssessmentEnabled;
- (BOOL)_isMerchantTokensSupported;
- (BOOL)_isMultiTokenContextsSupported;
- (BOOL)_isRequestUsedForTransactionAssessment;
- (BOOL)_purchaseSupportsPaymentOffers;
- (BOOL)canSelectPaymentOptions;
- (BOOL)isErrorAboutPostalAddressField:(id)a3;
- (NSString)description;
- (PKBluetoothMonitorer)bluetoothMonitor;
- (PKPaymentAuthorizationStateMachine)init;
- (PKPaymentAuthorizationStateMachineDelegate)delegate;
- (PKPaymentSheetExperiment)paymentSheetExperiment;
- (id)_billingInformationFromPaymentRequest:(id)a3;
- (id)_createNewRemotePaymentRequest;
- (id)_dequeuePendingCallbackParam;
- (id)_inAppSessionAuthorizationRequest;
- (id)_pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:(id)a3;
- (id)_pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:(id)a3;
- (id)_rewrapCompleteSessionRequestWithParam:(id)a3 serviceURL:(id *)a4;
- (id)_transactionWithPaymentToken:(id)a3;
- (id)_transactionWithPurchase:(id)a3 paymentHash:(id)a4;
- (id)_updateRewrapBaseRequest:(id)a3 param:(id)a4;
- (id)acceptedPassForProvisionedPass:(id)a3;
- (int64_t)statusFromPaymentError:(id)a3;
- (unint64_t)_adamIdentifier;
- (void)__setState:(unint64_t)a3 param:(id)a4;
- (void)_advanceToNextStateFromResolveError:(BOOL)a3;
- (void)_applyBillingInformationToAuthorizedQuote:(id)a3;
- (void)_applyBillingInformationToPayment:(id)a3;
- (void)_applyFulfillmentMethodToPayment:(id)a3;
- (void)_applyShippingInformationToPayment:(id)a3;
- (void)_applyWebServiceConfigurationIfNeeded;
- (void)_augmentBaseRequestWithCompletion:(id)a3;
- (void)_augmentSessionResponseWithCompletion:(id)a3;
- (void)_cancelClientCallbackTimer;
- (void)_clientCallbackTimedOut;
- (void)_computeAssessmentIfNecessary;
- (void)_configurePaymentOffersIfNeeded;
- (void)_deviceUpdateDidFailWithNoEiligbleRemoteDevices:(id)a3;
- (void)_dispatchNextCallbackParam;
- (void)_emitSignpostEvent:(unint64_t)a3;
- (void)_enqeueDidAuthorizePurchaseWithParam:(id)a3;
- (void)_enqueueCallbackOfKind:(int64_t)a3 withObject:(id)a4;
- (void)_enqueueDidAuthorizePaymentWithByPassPayment:(id)a3 rewrapResponse:(id)a4;
- (void)_enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:(id)a3 rewrapResponse:(id)a4;
- (void)_enqueueDidAuthorizePaymentWithPayment:(id)a3 rewrapResponse:(id)a4;
- (void)_enqueueDidAuthorizePaymentWithRemotePayment:(id)a3 rewrapResponse:(id)a4;
- (void)_enqueueDidAuthorizePaymentWithToken:(id)a3 rewrapResponse:(id)a4;
- (void)_enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:(id)a3;
- (void)_enqueueDidSelectBankAccount:(id)a3;
- (void)_enqueueDidSelectPaymentMethodWithBindToken:(id)a3;
- (void)_enqueueDidSelectPaymentMethodWithQuote:(id)a3;
- (void)_enqueueDidSelectPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5;
- (void)_enqueueDidSelectRemotePaymentInstrument:(id)a3;
- (void)_enqueueDidSelectRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4;
- (void)_enqueueDidSelectShippingContact:(id)a3;
- (void)_enqueueInitialCallbacks;
- (void)_enrichPaymentRewardsRedemptionWithPaymentTransaction:(id)a3 usingPass:(id)a4;
- (void)_fetchPaymentOffersIfNeeded;
- (void)_handleStateMachineWillStartNotification:(id)a3;
- (void)_insertPendingOrderDetails:(BOOL *)a3;
- (void)_insertPendingPaymentTransactionsWithParam:(id)a3;
- (void)_insertPendingTransactionRegistration;
- (void)_nonceResponseWithCompletion:(id)a3;
- (void)_performAuthorizationWithParam:(id)a3;
- (void)_performDataProcessingWithParam:(id)a3;
- (void)_performDidAuthorizeCallbackWithParam:(id)a3;
- (void)_performInstallmentBind;
- (void)_performNonceRequestWithParam:(id)a3;
- (void)_performPassRewardsUpdateForCooldownLevel:(unint64_t)a3 ignoreErrorBackoff:(BOOL)a4 merchantIdentifier:(id)a5;
- (void)_performPrepareTransactionDetailsRequestWithParam:(id)a3;
- (void)_performRewrapRequestImplWithParam:(id)a3;
- (void)_performRewrapRequestWithParam:(id)a3;
- (void)_performSendClientUpdateWithShippingMethods:(id)a3 paymentSummaryItems:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 paymentApplication:(id)a9 status:(int64_t)a10;
- (void)_performSendPaymentResult:(id)a3;
- (void)_performSendRemotePaymentRequest;
- (void)_performUpdatePaymentDevices;
- (void)_postStateMachineWillStartNotification;
- (void)_processBluetoothState:(int64_t)a3;
- (void)_processErrorsForDataType:(int64_t)a3;
- (void)_processPaymentRewardsRedemption:(id)a3;
- (void)_promptTapToRadar;
- (void)_purchaseMerchantIdentifier:(id *)a3 originURL:(id *)a4 webMerchantIdentifier:(id *)a5 webMerchantName:(id *)a6 adamIdentifier:(id *)a7 isMerchantTokenRequest:(BOOL *)a8 isMultiTokenRequest:(BOOL *)a9;
- (void)_registerForNotifications;
- (void)_removeWebServiceConfigurationIfNeeded;
- (void)_reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:(id)a3 eventType:(id)a4;
- (void)_reportToAutoBugCapture:(id)a3;
- (void)_retrieveVPANPaymentSession;
- (void)_sendDidTransitionFromState:(unint64_t)a3 toState:(unint64_t)a4 withParam:(id)a5;
- (void)_setState:(unint64_t)a3 param:(id)a4;
- (void)_simulatePayment;
- (void)_start;
- (void)_startAssessmentIfNecessary;
- (void)_startClientCallbackTimer;
- (void)_startHandoff;
- (void)_startPayment;
- (void)_startRemoteDeviceUpdate;
- (void)_trackCouponCodeOutcomeWithError:(id)a3;
- (void)_unregisterForNotifications;
- (void)_updateAssessmentAttributes;
- (void)_updateModelBillingAddressIfNeededForPass:(id)a3;
- (void)_updateModelCanAddPasses;
- (void)_updateModelWithPaymentSummaryItems:(id)a3;
- (void)_updateModelWithRemoteDevices:(id)a3;
- (void)_updateModelWithShippingMethods:(id)a3 paymentSummaryItems:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 contentItems:(id)a9;
- (void)_updatePassRewardsInfo;
- (void)_updatePaymentRequestBillingAddressWithPaymentMethod:(id)a3;
- (void)_updateRewrapRequest:(id)a3 param:(id)a4 serviceURL:(id *)a5;
- (void)continuityPaymentCoordinator:(id)a3 didReceivePayment:(id)a4;
- (void)continuityPaymentCoordinator:(id)a3 didReceiveUpdatedPaymentDevices:(id)a4;
- (void)continuityPaymentCoordinator:(id)a3 didTimeoutTotalWithPaymentDevices:(id)a4;
- (void)continuityPaymentCoordinatorDidReceiveCancellation:(id)a3;
- (void)continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices:(id)a3;
- (void)dealloc;
- (void)delayAuthorizedStateByDuration:(double)a3;
- (void)didAuthenticateWithAuthenticatorEvaluationResponse:(id)a3;
- (void)didAuthenticateWithCredential:(id)a3;
- (void)didBecomeActive:(BOOL)a3;
- (void)didBecomeArmable:(BOOL)a3;
- (void)didBecomeOccluded:(BOOL)a3;
- (void)didCancel;
- (void)didChangeCouponCode:(id)a3;
- (void)didChangeFundingMode:(int64_t)a3;
- (void)didChangePeerPaymentUsage:(BOOL)a3;
- (void)didEncounterError:(id)a3;
- (void)didEncounterFatalError:(id)a3;
- (void)didEncounterShippingEmailError:(id)a3;
- (void)didReceiveCouponCodeCompleteWithUpdate:(id)a3;
- (void)didReceiveMerchantSessionCompleteWithSession:(id)a3 error:(id)a4;
- (void)didReceiveMerchantSessionCompleteWithUpdate:(id)a3;
- (void)didReceivePaymentAuthorizationResult:(id)a3;
- (void)didReceivePaymentAuthorizationStatus:(int64_t)a3;
- (void)didReceivePaymentMethodCompleteWithSummaryItems:(id)a3;
- (void)didReceivePaymentMethodCompleteWithUpdate:(id)a3;
- (void)didReceiveShippingContactCompleteWithStatus:(int64_t)a3 shippingMethods:(id)a4 paymentSummaryItems:(id)a5;
- (void)didReceiveShippingContactCompleteWithUpdate:(id)a3;
- (void)didReceiveShippingMethodCompleteWithStatus:(int64_t)a3 paymentSummaryItems:(id)a4;
- (void)didReceiveShippingMethodCompleteWithUpdate:(id)a3;
- (void)didReceiveUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)a3 signatureRequest:(id)a4;
- (void)didRequestRefreshPaymentMethods;
- (void)didResignActive:(BOOL)a3;
- (void)didResolveError;
- (void)didResolveLoadingState;
- (void)didSelectBankAccount:(id)a3;
- (void)didSelectBillingAddress:(id)a3;
- (void)didSelectPaymentOffer:(id)a3 updateReason:(unint64_t)a4;
- (void)didSelectPaymentPass:(id)a3 paymentApplication:(id)a4;
- (void)didSelectPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5;
- (void)didSelectRemotePaymentInstrument:(id)a3;
- (void)didSelectRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4;
- (void)didSelectShippingContact:(id)a3;
- (void)didSelectShippingEmail:(id)a3;
- (void)didSelectShippingName:(id)a3;
- (void)didSelectShippingPhoneNumber:(id)a3;
- (void)invalidate;
- (void)paymentOfferActionsChanged:(id)a3;
- (void)paymentOfferCatalogChanged:(id)a3;
- (void)paymentOfferDynamicContentChanged:(id)a3;
- (void)paymentOfferMerchandisingChanged:(id)a3;
- (void)paymentOffersChanged:(id)a3 forPassUniqueIdentifier:(id)a4;
- (void)selectedPaymentOfferChanged:(id)a3 forPassUniqueIdentifier:(id)a4;
- (void)setAccountService:(id)a3;
- (void)setBluetoothMonitor:(id)a3;
- (void)setCancelReason:(int64_t)a3;
- (void)setModel:(id)a3;
- (void)setPaymentService:(id)a3;
- (void)setPaymentWebService:(id)a3;
- (void)setPeerPaymentService:(id)a3;
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
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    instanceIdentifier = v3->_instanceIdentifier;
    v3->_instanceIdentifier = v5;

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

- (void)_setState:(unint64_t)a3 param:(id)a4
{
  v6 = a4;
  if (a3 == 12)
  {
    objc_initWeak(&location, self);
    delayAuthorizedStateGroup = self->_delayAuthorizedStateGroup;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PKPaymentAuthorizationStateMachine__setState_param___block_invoke;
    v8[3] = &unk_1E79CE020;
    objc_copyWeak(v10, &location);
    v10[1] = 12;
    v9 = v6;
    dispatch_group_notify(delayAuthorizedStateGroup, MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKPaymentAuthorizationStateMachine *)self __setState:a3 param:v6];
  }
}

void __54__PKPaymentAuthorizationStateMachine__setState_param___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained __setState:*(a1 + 48) param:*(a1 + 32)];
}

- (void)__setState:(unint64_t)a3 param:(id)a4
{
  v76[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  state = self->_state;
  self->_state = a3;
  [(PKPaymentAuthorizationStateMachine *)self _sendDidTransitionFromState:state toState:a3 withParam:v6];
  v8 = 0;
  if (a3 > 11)
  {
    if (a3 > 15)
    {
      switch(a3)
      {
        case 0x10uLL:
          [(PKPaymentAuthorizationStateMachine *)self _removeWebServiceConfigurationIfNeeded];
          [(PKPaymentAuthorizationStateMachine *)self _insertPendingPaymentTransactionsWithParam:v6];
          v69 = 0;
          [(PKPaymentAuthorizationStateMachine *)self _insertPendingOrderDetails:&v69];
          if ((v69 & 1) == 0)
          {
            [(PKPaymentAuthorizationStateMachine *)self _insertPendingTransactionRegistration];
          }

          break;
        case 0x11uLL:
          [(PKPaymentAuthorizationStateMachine *)self _performDataProcessingWithParam:v6];
          break;
        case 0x12uLL:
          goto LABEL_26;
      }
    }

    else
    {
      if (a3 - 14 < 2)
      {
        v8 = [v6 error];
        goto LABEL_26;
      }

      if (a3 == 12)
      {
        [(PKPaymentAuthorizationStateMachine *)self _performDidAuthorizeCallbackWithParam:v6];
      }
    }
  }

  else if (a3 > 8)
  {
    if (a3 == 9)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performNonceRequestWithParam:v6];
    }

    else if (a3 == 10)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performAuthorizationWithParam:v6];
    }

    else
    {
      [(PKPaymentAuthorizationStateMachine *)self _performRewrapRequestWithParam:v6];
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v8 = [v6 error];
        -[PKPaymentAuthorizationDataModel setStatus:forItemWithType:](self->_model, "setStatus:forItemWithType:", [v6 status], objc_msgSend(v6, "dataType"));
        goto LABEL_26;
      case 5uLL:
        goto LABEL_26;
      case 8uLL:
        [(PKPaymentAuthorizationStateMachine *)self _performPrepareTransactionDetailsRequestWithParam:v6];
        break;
    }
  }

  v8 = 0;
LABEL_26:
  v9 = [v8 domain];
  v10 = [v9 isEqualToString:@"PKPassKitErrorDomain"];

  if (v10)
  {
    v59 = v6;
    v60 = [v8 domain];
    v11 = [v8 code];
    v12 = [v8 userInfo];
    v13 = [v12 PKBoolForKey:@"PKPaymentErrorIsFieldEmpty"];

    v14 = [v8 localizedFailureReason];
    if (!v14)
    {
      v14 = [v8 localizedDescription];
    }

    v15 = [v8 userInfo];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v17 = [v16 domain];
    v18 = [v17 isEqualToString:@"PKPassKitErrorDomain"];

    v57 = v8;
    v58 = v16;
    if (v18)
    {
      v19 = [v16 domain];

      v20 = [v16 code];
      v21 = [v8 userInfo];
      v22 = [v21 PKBoolForKey:@"PKPaymentErrorIsFieldEmpty"];

      v23 = [v16 localizedFailureReason];

      if (v23)
      {
        v14 = v23;
      }

      else
      {
        v14 = [v16 localizedDescription];
      }

      v60 = v19;
    }

    else
    {
      v22 = v13;
      v20 = v11;
    }

    v6 = v59;
    v64 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:v14]];
    has_internal_ui = os_variant_has_internal_ui();
    if (has_internal_ui)
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    v75[0] = @"authorizationError";
    if (v20 > -2017)
    {
      switch(v20)
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
          if (v20 == -1001)
          {
            v25 = @"extensionNotFound";
          }

          else
          {
            if (v20 != -1002)
            {
              goto LABEL_127;
            }

            v25 = @"errorInstantiatingExtension";
          }

          break;
      }
    }

    else if (v20 > -3018)
    {
      switch(v20)
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

    else if (v20 <= -5001)
    {
      switch(v20)
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
      switch(v20)
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
          if (v20 != -5000)
          {
            goto LABEL_127;
          }

          v25 = @"cloudStoreNotInitalizedError";
          break;
      }
    }

    v26 = v60;
    if (!v60)
    {
      v26 = &stru_1F227FD28;
    }

    v76[0] = v25;
    v76[1] = v26;
    v75[1] = @"errorDomain";
    v75[2] = @"errorCode";
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v20];
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
      if ((v20 + 3007) > 5)
      {
        v33 = @"unknown";
      }

      else
      {
        v33 = off_1E79CE6C8[v20 + 3007];
      }

      v74[1] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      [PKAnalyticsReporter subject:@"inApp" sendEvent:v34];
    }

    if (a3 == 3)
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
            v40 = [v39 domain];
            v41 = [v40 isEqualToString:@"PKPaymentErrorDomain"];

            if (v41)
            {
              v42 = [v39 code];
              v43 = [v39 localizedFailureReason];

              v44 = v43;
              if (!v43)
              {
                v44 = [v39 localizedDescription];
              }

              v45 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:v44]];

              v46 = v44;
              if (has_internal_ui)
              {
                v47 = v44;
              }

              else
              {
                v47 = 0;
              }

              v71[0] = @"transactionAuthorizationClientError";
              v70[0] = @"eventType";
              v70[1] = @"authorizationError";
              v48 = @"unknown";
              if ((v42 - 1) <= 2)
              {
                v48 = off_1E79CE6F8[v42 - 1];
              }

              v71[1] = v48;
              v70[2] = @"errorDomain";
              v49 = [v39 domain];
              v50 = v49;
              if (v49)
              {
                v51 = v49;
              }

              else
              {
                v51 = &stru_1F227FD28;
              }

              v71[2] = v51;
              v70[3] = @"errorCode";
              v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v42];
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
              v14 = v46;
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
      v6 = v59;
    }

    v8 = v57;
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

- (void)setBluetoothMonitor:(id)a3
{
  v4 = a3;
  [(PKBluetoothMonitorer *)self->_bluetoothMonitor setDelegate:0];
  [(PKBluetoothMonitorer *)v4 setDelegate:self];
  bluetoothMonitor = self->_bluetoothMonitor;
  self->_bluetoothMonitor = v4;
}

- (void)setPaymentService:(id)a3
{
  objc_storeStrong(&self->_paymentService, a3);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setPaymentWebService:(id)a3
{
  objc_storeStrong(&self->_paymentWebService, a3);
  [(PKPaymentAuthorizationStateMachine *)self _applyWebServiceConfigurationIfNeeded];

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setAccountService:(id)a3
{
  objc_storeStrong(&self->_accountService, a3);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setPeerPaymentService:(id)a3
{
  objc_storeStrong(&self->_peerPaymentService, a3);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)setModel:(id)a3
{
  objc_storeStrong(&self->_model, a3);

  [(PKPaymentAuthorizationStateMachine *)self _configureAdditionalPaymentMethodsIfNeeeded];
}

- (void)_applyWebServiceConfigurationIfNeeded
{
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  paymentWebService = self->_paymentWebService;
  if (paymentWebService)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [(PKWebService *)paymentWebService sessionConfiguration];
    v7 = [v3 sourceApplicationBundleIdentifier];

    v8 = v7 != 0;
    if (v7)
    {
      v9 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request has source application bundle, applying network configuration", buf, 2u);
      }

      v10 = [v3 sourceApplicationBundleIdentifier];
      [v6 set_sourceApplicationBundleIdentifier:v10];
    }

    v11 = [v3 sourceApplicationSecondaryIdentifier];

    if (v11)
    {
      v12 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request has secondary application identifier, applying network configuration", v16, 2u);
      }

      v13 = [v3 sourceApplicationSecondaryIdentifier];
      [v6 set_sourceApplicationSecondaryIdentifier:v13];

      v8 = 1;
    }

    v14 = [v3 CTDataConnectionServiceType];

    if (v14)
    {
      v15 = [v3 CTDataConnectionServiceType];
      [v6 set_CTDataConnectionServiceType:v15];
    }

    else if (!v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    [(PKWebService *)self->_paymentWebService refreshSessionWithConfiguration:v6];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_purchaseMerchantIdentifier:(id *)a3 originURL:(id *)a4 webMerchantIdentifier:(id *)a5 webMerchantName:(id *)a6 adamIdentifier:(id *)a7 isMerchantTokenRequest:(BOOL *)a8 isMultiTokenRequest:(BOOL *)a9
{
  v37 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v13 = [v37 merchantSession];
  v14 = [v37 originatingURL];
  v15 = [v14 host];

  v16 = [v37 merchantIdentifier];
  if ([(PKPaymentAuthorizationStateMachine *)self _adamIdentifier])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PKPaymentAuthorizationStateMachine _adamIdentifier](self, "_adamIdentifier")}];
  }

  else
  {
    v32 = 0;
  }

  v34 = a6;
  v35 = a8;
  if (v15)
  {
    v17 = [v13 merchantIdentifier];

    v18 = [v13 domain];
    v15 = [v13 merchantIdentifier];
    v19 = [v13 displayName];
    v16 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = [v37 recurringPaymentRequest];
  v21 = [v37 automaticReloadPaymentRequest];
  if (v20 | v21)
  {
    v30 = [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported];
  }

  else
  {
    v30 = 0;
  }

  if ([v37 isMultiTokenRequest])
  {
    v22 = [(PKPaymentAuthorizationStateMachine *)self _isMultiTokenContextsSupported];
  }

  else
  {
    v22 = 0;
  }

  v23 = a4;
  if (a3)
  {
    v24 = v16;
    v23 = a4;
    *a3 = v16;
  }

  if (v23)
  {
    v25 = v23;
    v26 = v18;
    *v25 = v18;
  }

  if (a5)
  {
    v27 = v15;
    *a5 = v15;
  }

  if (v34)
  {
    v28 = v19;
    *v34 = v19;
  }

  if (a7)
  {
    v29 = v32;
    *a7 = v32;
  }

  if (v35)
  {
    *v35 = v30;
  }

  if (a9)
  {
    *a9 = v22;
  }
}

- (void)_removeWebServiceConfigurationIfNeeded
{
  v5 = [(PKWebService *)self->_paymentWebService sessionConfiguration];
  v3 = [v5 _sourceApplicationBundleIdentifier];
  if (v3 || ([v5 _sourceApplicationSecondaryIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [v5 set_sourceApplicationBundleIdentifier:0];
    [v5 set_sourceApplicationSecondaryIdentifier:0];
    [v5 set_CTDataConnectionServiceType:0];
    [(PKWebService *)self->_paymentWebService refreshSessionWithConfiguration:v5];
    goto LABEL_5;
  }

  v4 = [v5 _CTDataConnectionServiceType];

  if (v4)
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
    v13 = self;
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
    v28 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v3 = [(PKPaymentAuthorizationDataModel *)self->_model totalSummaryItem];
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
    v7 = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    if (v7)
    {
      v8 = v7;
      [(PKPaymentOffersSessionDetails *)v7 updateMerchantIdentifier:v4 originURL:v29 webMerchantIdentifier:v5 webMerchantName:v6];
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
      v23 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
      v22 = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
      v12 = [v28 countryCode];
      v20 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
      [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v21 = v26 = v3;
      v19 = [v21 shouldUseMerchantSession];
      v13 = [v28 merchantCategoryCode];
      v14 = [v28 supportedNetworks];
      WORD1(v18) = v13;
      v4 = v25;
      LOBYTE(v18) = v19;
      v15 = v12;
      v8 = -[PKPaymentOffersSessionDetails initWithTransactionAmount:currencyCode:merchantCountryCode:merchantIdentifier:originURL:webMerchantIdentifier:webMerchantName:merchantName:adamIdentifier:shouldUseMerchantSession:merchantCategoryCode:supportedNetworks:merchantCapabilities:payLaterSuppressionMode:options:](v24, "initWithTransactionAmount:currencyCode:merchantCountryCode:merchantIdentifier:originURL:webMerchantIdentifier:webMerchantName:merchantName:adamIdentifier:shouldUseMerchantSession:merchantCategoryCode:supportedNetworks:merchantCapabilities:payLaterSuppressionMode:options:", v23, v22, v12, v25, v29, v5, v6, v20, v27, v18, v14, [v28 merchantCapabilities], objc_msgSend(v28, "applePayLaterAvailability"), v11);

      v3 = v26;
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
    v3 = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    v4 = [v3 transactionAmount];

    v5 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [v4 isEqual:v5];
    }

    else
    {
      v7 = v4 == v5;
    }

    v8 = [(PKPaymentOffersController *)self->_paymentOffersController configuration];
    [v8 updateTransactionAmount:v6];

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
        v10 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
        v11 = [v10 uniqueID];

        [(PKPaymentOffersController *)self->_paymentOffersController setSelectedPassUniqueID:v11];
        [(PKPaymentOffersController *)self->_paymentOffersController updatePaymentOfferCatalogWithReason:4 completion:0];
      }

      if ((v7 & 1) == 0 && [(PKPaymentOffersController *)self->_paymentOffersController hasFetchedCatalogFromServer])
      {
        v12 = [(PKPaymentOffersController *)self->_paymentOffersController fetchedAndInflightMerchandisingIdentifiers];
        [(PKPaymentOffersController *)self->_paymentOffersController updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers:v12];
      }

      v13 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
      v14 = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];
      if (v14 == 2)
      {
        if (!((v13 == 0) | v7 & 1))
        {
          if ([v13 type] == 1)
          {
            v15 = PKLogFacilityTypeGetObject(8uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v24 = v4;
              v25 = 2112;
              v26 = v6;
              _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Payment sheet total amount has changed from %@ to %@. Updating payment offers now.", buf, 0x16u);
            }

            [(PKPaymentAuthorizationStateMachine *)self _setState:18 param:0];
            paymentOffersController = self->_paymentOffersController;
            v17 = [v13 criteriaIdentifier];
            v18 = [v13 passDetails];
            [(PKPaymentOffersController *)paymentOffersController updatePaymentOffersForCriteriaIdentifier:v17 selectedPassDetails:v18 reason:5 completion:0];
          }

          if ([v13 type] == 2)
          {
            v19 = [v13 rewardsRedemptionIntent];
            v20 = [v19 monetaryValue];
            v21 = [v20 amount];

            if (v19 && [v6 compare:v21] == -1)
            {
              [(PKPaymentOffersController *)self->_paymentOffersController clearCurrentSelectedPaymentOfferDetails];
              [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
            }
          }
        }
      }

      else if (!v14 && (v7 & 1) == 0)
      {
        [(PKPaymentOffersController *)self->_paymentOffersController removeCachedPaymentOffers];
        [(PKPaymentOffersController *)self->_paymentOffersController updatePreconfiguredOfferStateForAllPasses];
      }
    }
  }
}

- (BOOL)_purchaseSupportsPaymentOffers
{
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = v3;
  if (self->_paymentWebService && self->_model && self->_paymentService && ![v3 requestType] && (objc_msgSend(v4, "_isAMPPayment") & 1) == 0 && -[PKPaymentAuthorizationDataModel mode](self->_model, "mode") == 1)
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)paymentOfferCatalogChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentAuthorizationStateMachine_paymentOfferCatalogChanged___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)paymentOffersChanged:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPaymentAuthorizationStateMachine_paymentOffersChanged_forPassUniqueIdentifier___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)paymentOfferActionsChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPaymentAuthorizationStateMachine_paymentOfferActionsChanged___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)selectedPaymentOfferChanged:(id)a3 forPassUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentAuthorizationStateMachine_selectedPaymentOfferChanged_forPassUniqueIdentifier___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)paymentOfferDynamicContentChanged:(id)a3
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

- (void)paymentOfferMerchandisingChanged:(id)a3
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

  v12 = [(PKPaymentAuthorizationDataModel *)self->_model mode];
  if ((v12 - 3) >= 2 && v12 != 1)
  {
    if (v12 == 2)
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

  v15 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v16 = [PKPaymentRequestValidator validatorWithObject:v15];
  v40 = 0;
  v17 = [v16 isValidWithError:&v40];
  v18 = v40;

  if (v17)
  {
    if ([v15 _isAMPPayment])
    {
      v19 = PKAggDKeyPaymentiTunesPurchasePresented;
    }

    else
    {
      if ([v15 requestType])
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
  v23 = [v15 multiTokenContexts];
  if ([v23 count] && !-[PKPaymentAuthorizationStateMachine _isMultiTokenContextsSupported](self, "_isMultiTokenContextsSupported"))
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setMultiTokenContexts:MEMORY[0x1E695E0F0]];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  }

  v24 = [v15 recurringPaymentRequest];
  v25 = [v15 automaticReloadPaymentRequest];
  v26 = [v15 deferredPaymentRequest];

  if ((v24 || v25 || v26) && ![(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setRecurringPaymentRequest:0];
    [(PKPaymentAuthorizationDataModel *)self->_model setAutomaticReloadPaymentRequest:0];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  }

  v27 = [v15 thumbnailURLs];
  v28 = [v27 count];

  if (v28)
  {
    AnalyticsSendEvent();
    [(PKAggregateDictionaryProtocol *)self->_aggregateDictionary addValueForScalarKey:@"com.apple.passbook.payment.in-app.thumbnail" value:1];
  }

  if (![v15 requestType])
  {
    v29 = [v15 merchantSession];
    if (v29)
    {

      v30 = PKAggDKeyPaymentInAppUsesMerchantSession;
    }

    else
    {
      v31 = [v15 shouldUseMerchantSession];
      v30 = PKAggDKeyPaymentInAppUsesMerchantIdentifier;
      if (v31)
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
  v35 = PKAggDKeyForPaymentRequestAPIType([v15 APIType]);
  v36 = [v34 stringWithFormat:@"%@.%@", @"com.apple.passbook.payment.api", v35];
  [(PKAggregateDictionaryProtocol *)aggregateDictionary addValueForScalarKey:v36 value:1];

  v45 = @"api";
  v37 = PKAggDKeyForPaymentRequestAPIType([v15 APIType]);
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
      v10 = [(PKPaymentAuthorizationDataModel *)self->_model bundleIdentifier];
      [(PKODIAssessment *)v9 startAssessmentWithHostBundleIdentifier:v10];
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

- (void)didResignActive:(BOOL)a3
{
  v3 = 1;
  if (!a3)
  {
    v3 = 2;
  }

  self->_hostApplicationState |= v3;
  if (self->_state == 5)
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (void)didBecomeActive:(BOOL)a3
{
  v3 = -4;
  if (!a3)
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

- (void)didBecomeOccluded:(BOOL)a3
{
  hostApplicationState = self->_hostApplicationState;
  if (a3)
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

- (void)didBecomeArmable:(BOOL)a3
{
  hostApplicationState = self->_hostApplicationState;
  if (a3)
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

- (void)setCancelReason:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKPaymentAuthorizationStateMachineCancelReasonToString(a3);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Setting state machine cancel reason to %@", &v7, 0xCu);
  }

  self->_cancelReason = a3;
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
    v8 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v10 = [v9 _isAMPPayment];

    if (v10)
    {
      v11 = PKAggDKeyPaymentiTunesPurchaseCancel;
    }

    else
    {
      if ([v8 requestType])
      {
LABEL_13:
        v13 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

        if (v13)
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

- (void)didEncounterError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Received error from client: %@", &v11, 0xCu);
  }

  state = self->_state;
  v7 = state > 0x10;
  v8 = (1 << state) & 0x1A000;
  if (v7 || v8 == 0)
  {
    v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v4];
    [(PKPaymentAuthorizationStateMachine *)self _setState:14 param:v10];
  }
}

- (void)didEncounterFatalError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Received fatal error from client: %@", &v11, 0xCu);
  }

  state = self->_state;
  v7 = state > 0x10;
  v8 = (1 << state) & 0x1A000;
  if (v7 || v8 == 0)
  {
    v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v4];
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

- (void)didReceiveMerchantSessionCompleteWithSession:(id)a3 error:(id)a4
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  v7 = a3;
  v8 = [[PKPaymentRequestMerchantSessionUpdate alloc] initWithStatus:v6 merchantSession:v7];

  [(PKPaymentAuthorizationStateMachine *)self didReceiveMerchantSessionCompleteWithUpdate:v8];
}

- (void)didReceiveMerchantSessionCompleteWithUpdate:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  v6 = [v4 status];
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!v6)
    {
      v7 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      v7 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v7 = @"unknown";
    goto LABEL_22;
  }

  if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v7 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (v6 == 6)
  {
    v7 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (v6 == 7)
  {
    v7 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (v6 != 1000)
  {
    goto LABEL_21;
  }

  v7 = @"PKPaymentAuthorizationStatusTryAgain";
LABEL_22:
  v8 = [v4 session];
  *buf = 138412546;
  v42 = v7;
  v43 = 2112;
  v44 = v8;
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
    if ([v4 status] || (objc_msgSend(v4, "session"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
    {
      v13[2](v13);
    }

    else
    {
      v15 = [v4 session];
      if (PKBypassCertValidation())
      {
        v16 = 0;
      }

      else
      {
        v17 = PKValidatePaymentMerchantSession(v15);
        v16 = v17 != 0;
      }

      v18 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v19 = [v18 APIType];

      if ((v19 - 1) > 1)
      {
        v22 = 0;
      }

      else
      {
        v20 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        v21 = [v20 originatingURL];

        LODWORD(v20) = [v15 supportsURL:v21];
        v22 = v20 ^ 1;
      }

      if ((v16 | v22))
      {
        v13[2](v13);
      }

      else
      {
        [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
        v23 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        [v23 setMerchantSession:v15];

        [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
        v24 = [v15 merchantIdentifier];
        v25 = v24;
        if (v24)
        {
          v39[0] = @"eventType";
          v39[1] = @"merchantIdentifier";
          v40[0] = @"stateChange";
          v40[1] = v24;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v27 = v26 = v25;
          [PKAnalyticsReporter subject:@"inApp" sendEvent:v27];

          v25 = v26;
        }

        v28 = [v15 operationalAnalyticsIdentifier];
        if (v28)
        {
          v36 = v25;
          v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v29 setObject:@"stateChange" forKeyedSubscript:@"eventType"];
          [v29 setObject:v28 forKeyedSubscript:@"analyticsIdentifier"];
          v30 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          v31 = [v30 originatingURL];

          if (v31)
          {
            v32 = [v31 host];
            [v29 setObject:v32 forKeyedSubscript:@"merchantDomain"];
          }

          v33 = [v29 copy];
          [PKAnalyticsReporter subject:@"inApp" sendEvent:v33];

          v25 = v37;
        }

        v34 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        v35 = [v34 requestType];

        if (v35 == 5)
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

- (void)didChangeCouponCode:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model couponCode];
  v8 = v4;
  v6 = v5;
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

- (void)didReceiveCouponCodeCompleteWithUpdate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (v6 <= 3)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!v6)
      {
        v10 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (v6 == 1)
      {
        v10 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (v6 <= 5)
      {
        if (v6 == 4)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(v6)
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
  v11 = [v5 errors];
  [(PKPaymentAuthorizationDataModel *)self->_model setCouponCodeErrors:v11];
  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  if (![(PKPaymentAuthorizationDataModel *)self->_model numberOfOutstandingCouponCodeUpdates])
  {
    v12 = [v11 firstObject];
    [(PKPaymentAuthorizationStateMachine *)self _trackCouponCodeOutcomeWithError:v12];
  }

  state = self->_state;
  if (state > 0x10 || ((1 << state) & 0x1A000) == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Application failed to process coupon code change. This means that the coupon code and summary items are out of sync. We can't proceed to authorize the transaction.", buf, 2u);
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      v15 = [PKPaymentAuthorizationErrorStateParam paramWithError:v14];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v15];
    }

    else
    {
      v14 = [v5 availableShippingMethods];
      v15 = [v5 paymentSummaryItems];
      v16 = [v5 multiTokenContexts];
      v17 = [v5 recurringPaymentRequest];
      v18 = [v5 automaticReloadPaymentRequest];
      v19 = [v5 deferredPaymentRequest];
      v20 = [v5 contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:v14 paymentSummaryItems:v15 multiTokenContexts:v16 recurringPaymentRequest:v17 automaticReloadPaymentRequest:v18 deferredPaymentRequest:v19 contentItems:v20];
    }
  }
}

- (void)didEncounterShippingEmailError:(id)a3
{
  [(PKPaymentAuthorizationDataModel *)self->_model setShippingEmailError:a3];

  [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
}

- (void)didSelectShippingEmail:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];

  v5 = v6;
  if (v4 != v6)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingEmail:v6];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = v6;
  }
}

- (void)didSelectShippingPhoneNumber:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];

  v5 = v6;
  if (v4 != v6)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingPhone:v6];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = v6;
  }
}

- (void)didSelectShippingName:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];

  v5 = v6;
  if (v4 != v6)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setShippingName:v6];
    [(PKPaymentAuthorizationStateMachine *)self _processErrorsForDataType:7];
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = v6;
  }
}

- (void)didSelectBillingAddress:(id)a3
{
  v14 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];

  v5 = v14;
  if (v4 != v14)
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
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v8 = [v7 requiredShippingContactFields];
    v9 = [v8 containsObject:@"post"];

    if ((v9 & 1) != 0 || ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]| 2) != 2)
    {
      goto LABEL_14;
    }

    if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 2 && ([(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:v11];
    }

    else
    {
      if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 1)
      {
        goto LABEL_14;
      }

      v12 = [(PKPaymentAuthorizationDataModel *)self->_model pass];

      if (!v12)
      {
        goto LABEL_14;
      }

      v11 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      v13 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:v11 paymentApplication:v13];
    }

LABEL_14:
    [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
    v5 = v14;
  }
}

- (void)didSelectPaymentOffer:(id)a3 updateReason:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
  v8 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
  v9 = v8;
  if (v6 && v8)
  {
    if ([v8 isEqual:v6])
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v8 != v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [v7 requiresUserAction];

  if ((v10 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_8:
  v11 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "didSelectPaymentOffer called with offer %@", &v19, 0xCu);
  }

  v12 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  v13 = [v12 uniqueID];

  if (v6)
  {
    v14 = [v6 passUniqueID];
    v15 = v13;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      if (!v15 || !v14)
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

      v17 = [v14 isEqualToString:v15];

      if ((v17 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  if (a4 != 2)
  {
    [(PKPaymentOffersController *)self->_paymentOffersController updateCurrentSelectedPaymentOffer:v6 updateReason:a4];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  [(PKPaymentAuthorizationDataModel *)self->_model setSelectedPaymentOffer:v6];
  if (_os_feature_enabled_impl())
  {
    if (a4 == 1)
    {
      [(PKPaymentOffersController *)self->_paymentOffersController clearCurrentSelectedPaymentOfferDetails];
    }

    if (([v7 requiresUserAction] & 1) == 0)
    {
      if (v6)
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

- (void)_processErrorsForDataType:(int64_t)a3
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
        v8 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v20 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:a3 status:1 error:v7 clientErrors:v8];

        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v7, "code")];
        v10 = [v7 localizedFailureReason];
        if (!v10)
        {
          v10 = [v7 localizedDescription];
        }

        v11 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:v10]];
        if (os_variant_has_internal_ui())
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v23[0] = @"preferenceError";
        v22[0] = @"eventType";
        v22[1] = @"preferenceType";
        if (a3 > 0x10)
        {
          v13 = @"unknown";
        }

        else
        {
          v13 = off_1E79CE738[a3];
        }

        v23[1] = v13;
        v22[2] = @"errorDomain";
        v14 = [v7 domain];
        v15 = v14;
        v16 = &stru_1F227FD28;
        if (v14)
        {
          v17 = v14;
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

- (void)didSelectShippingContact:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  model = self->_model;
  if (v4)
  {
    [(PKPaymentAuthorizationDataModel *)model setShippingAddress:v4];
    v6 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isValidWithError:0])
    {
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectShippingContact:v4];
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
      v10 = [(PKPaymentAuthorizationStateMachine *)self model];
      v11 = [v10 shippingType];
      v12 = [v9 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", v11];
      v13 = PKLocalizedPaymentString(v12, 0);
      v20[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v14];

      v16 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
      v17 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:5 status:1 error:v15 clientErrors:v16];

      [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v17];
    }
  }

  else
  {
    [(PKPaymentAuthorizationDataModel *)model setShippingAddress:0];
  }
}

- (void)didChangePeerPaymentUsage:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v6 = [v5 requestType];

  if (v6 == 2)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    model = self->_model;
    if (v3)
    {
      v9 = [(PKPaymentAuthorizationDataModel *)model peerPaymentAccount];
      v28 = [v9 currentBalance];

      [(PKPaymentAuthorizationDataModel *)self->_model setPeerPaymentBalanceForAccountPayment:v28];
      v10 = self->_model;
      v11 = [(PKPaymentAuthorizationDataModel *)v10 itemForType:2];
      [(PKPaymentAuthorizationDataModel *)v10 setUsePeerPaymentBalance:v11 != 0];
    }

    else
    {
      [(PKPaymentAuthorizationDataModel *)model setPeerPaymentBalanceForAccountPayment:0];
      [(PKPaymentAuthorizationDataModel *)self->_model setUsePeerPaymentBalance:0];
      v28 = 0;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isValidWithError:0])
    {
      v13 = [v7 pass];
      [v13 setPeerPaymentBalance:v28];

      if (v3)
      {
        v14 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
        v15 = [v14 accountServiceTransferRequest];
        v16 = [v15 supportsSplitPayment];

        if (v16)
        {
          v17 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          v18 = [v17 paymentSummaryItems];
          v19 = [v18 lastObject];
          v20 = [v19 amount];

          v21 = [v28 amount];
          v22 = [v20 compare:v21];

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
      v25 = [(PKPaymentAuthorizationDataModel *)self->_model bankAccount];
      v26 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v27 = -[PKAccountServicePaymentMethod initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:](v24, "initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:", v25, v28, [v26 deviceSupportsPeerPaymentAccountPayment], v23);

      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidUpdateAccountServicePaymentMethod:v27];
    }

    goto LABEL_21;
  }

  if (v6 == 9)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
    [(PKPaymentAuthorizationDataModel *)self->_model setUsePeerPaymentBalance:v3];
    [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
    v28 = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentPass];
    PKUpdatePeerPaymentBalanceUsagePreference(v28, v3);
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:v7];
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

- (void)didSelectBankAccount:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentAuthorizationStateMachine *)self model];
  [v5 setBankAccount:v4];
  v6 = [v4 identifier];
  PKSharedCacheSetObjectForKey(v6, @"LastBankAccountIdentifier");

  v7 = [v5 itemForType:9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isValidWithError:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 paymentRequest];
  v10 = [v9 accountServiceTransferRequest];

  v11 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v12 = [v11 accountServiceTransferRequest];
  v13 = [v12 supportsSplitPayment];

  if (v10)
  {
    v14 = [v10 account];
    v15 = [v14 accountIdentifier];
    v16 = [v4 identifier];
    PKSetLastBankAccountIdentifierForAccountTransfer(v15, v16);
  }

  v17 = [v5 itemForType:2];
  v18 = v17;
  if (v8)
  {
    v19 = 3;
    if (!v13)
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

  v21 = [v5 peerPaymentBalanceForAccountPayment];
  v22 = [v21 amount];

  if (v18 && v22)
  {
    if (!((v10 == 0) | v13 & 1))
    {

LABEL_22:
      v20 = 2;
LABEL_23:
      v36 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      if ([v36 deviceSupportsPeerPaymentAccountPayment] && objc_msgSend(v36, "accountPaymentUsePeerPaymentBalance"))
      {
        v38 = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentBalanceForAccountPayment];
      }

      else
      {
        v38 = 0;
      }

      if (v10)
      {
        v39 = v18 == 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = v39;
      if ((v40 | v13))
      {
        v41 = v7;
        v42 = -[PKAccountServicePaymentMethod initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:]([PKAccountServicePaymentMethod alloc], "initWithBankAccountInformation:peerPaymentBalance:deviceSupportsPeerPaymentAccountPayment:selectedMethods:", v4, v38, [v36 deviceSupportsPeerPaymentAccountPayment], v20);
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

    v44 = [v5 paymentRequest];
    v23 = [v44 paymentSummaryItems];
    [v23 lastObject];
    v24 = v45 = v7;
    v25 = [v24 amount];

    v26 = [v25 compare:v22];
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
  v34 = PKLocalizedFeatureString(@"IN_APP_PAYMENT_BANK_ACCOUNT_INCOMPLETE_REASON", 2, 0, v29, v30, v31, v32, v33, v44);
  v49[0] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v36 = [v28 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v35];

  v37 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
  v38 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:9 status:1 error:v36 clientErrors:v37];

  [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v38];
  v7 = v46;
LABEL_38:
}

- (void)didReceiveShippingContactCompleteWithUpdate:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    if (v6 <= 3)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!v6)
      {
        v10 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (v6 == 1)
      {
        v10 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (v6 <= 5)
      {
        if (v6 == 4)
        {
          v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v10 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(v6)
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

  v11 = [v5 errors];
  v12 = [(PKPaymentAuthorizationStateMachine *)self sanitizeClientErrors:v11];

  if (![v12 count] && v6 == 3)
  {
    v13 = [(PKPaymentAuthorizationStateMachine *)self model];
    v14 = [v13 paymentErrorsFromLegacyStatus:3];

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
    if (v6)
    {
      if (v6 == 3)
      {
LABEL_37:
        v20 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A588];
        v21 = MEMORY[0x1E696AEC0];
        v22 = [(PKPaymentAuthorizationStateMachine *)self model];
        v23 = [v22 shippingType];
        v24 = [v21 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", v23];
        v25 = PKLocalizedPaymentString(v24, 0);
        v36 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v27 = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v26];

        v28 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v29 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:5 status:1 error:v27 clientErrors:v28];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v29];
        [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (![v18 count])
    {
      v27 = [v5 availableShippingMethods];
      v29 = [v5 paymentSummaryItems];
      v30 = [v5 multiTokenContexts];
      v31 = [v5 recurringPaymentRequest];
      v32 = [v5 automaticReloadPaymentRequest];
      v33 = [v5 deferredPaymentRequest];
      v34 = [v5 contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:v27 paymentSummaryItems:v29 multiTokenContexts:v30 recurringPaymentRequest:v31 automaticReloadPaymentRequest:v32 deferredPaymentRequest:v33 contentItems:v34];

      goto LABEL_42;
    }

    if (![v18 count])
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Application failed to process shipping address change. This means that the user's shipping address selection and summary items are out of sync, or inappropriate errors have been provided. We can't proceed to authorize the transaction.", buf, 2u);
      }

      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      v29 = [PKPaymentAuthorizationErrorStateParam paramWithError:v27];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v29];
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_43:
}

- (void)didReceiveShippingContactCompleteWithStatus:(int64_t)a3 shippingMethods:(id)a4 paymentSummaryItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PKPaymentAuthorizationStateMachine *)self model];
  v12 = [v10 paymentErrorsFromLegacyStatus:a3];

  v11 = [[PKPaymentRequestShippingContactUpdate alloc] initWithErrors:v12 paymentSummaryItems:v8 shippingMethods:v9];
  [(PKPaymentRequestUpdate *)v11 setStatus:a3];
  [(PKPaymentAuthorizationStateMachine *)self didReceiveShippingContactCompleteWithUpdate:v11];
}

- (void)didReceiveShippingMethodCompleteWithUpdate:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 status];
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  v8 = NSStringFromSelector(a2);
  v9 = v8;
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v10 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!v6)
    {
      v10 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      v10 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v10 = @"unknown";
    goto LABEL_22;
  }

  if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v10 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v10 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (v6 == 6)
  {
    v10 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (v6 == 7)
  {
    v10 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (v6 != 1000)
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
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Application failed to process shipping method change. This means that the user's shipping method selection and summary items are out of sync. We can't proceed to authorize the transaction.", buf, 2u);
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:0];
      v16 = [PKPaymentAuthorizationErrorStateParam paramWithError:v15];
      [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v16];
    }

    else
    {
      v15 = [v5 availableShippingMethods];
      v16 = [v5 paymentSummaryItems];
      v17 = [v5 multiTokenContexts];
      v18 = [v5 recurringPaymentRequest];
      v19 = [v5 automaticReloadPaymentRequest];
      v20 = [v5 deferredPaymentRequest];
      v21 = [v5 contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:v15 paymentSummaryItems:v16 multiTokenContexts:v17 recurringPaymentRequest:v18 automaticReloadPaymentRequest:v19 deferredPaymentRequest:v20 contentItems:v21];
    }
  }
}

- (void)didReceiveUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)a3 signatureRequest:(id)a4
{
  v8 = a4;
  v6 = [a3 paymentSummaryItems];
  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  [(PKPaymentAuthorizationStateMachine *)self _updateModelWithPaymentSummaryItems:v6];
  if (v8)
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [v7 setApplePayTrustSignatureRequest:v8];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  self->_awaitingClientCallbackReply = 0;
  [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
  [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
}

- (void)didReceiveShippingMethodCompleteWithStatus:(int64_t)a3 paymentSummaryItems:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(PKPaymentRequestShippingMethodUpdate);
  [(PKPaymentRequestUpdate *)v7 setStatus:a3];
  [(PKPaymentRequestUpdate *)v7 setPaymentSummaryItems:v6];

  [(PKPaymentAuthorizationStateMachine *)self didReceiveShippingMethodCompleteWithUpdate:v7];
}

- (void)didSelectPaymentPass:(id)a3 paymentApplication:(id)a4
{
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:a3 paymentApplication:a4];
  if (a3 && _os_feature_enabled_impl())
  {

    [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
  }
}

- (void)didSelectPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5
{
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:a3 paymentApplication:a4 subCredential:a5];
  if (a3)
  {

    [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];
  }
}

- (void)didSelectRemotePaymentInstrument:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryPaymentApplication];
  [(PKPaymentAuthorizationStateMachine *)self didSelectRemotePaymentInstrument:v4 paymentApplication:v5];
}

- (void)didSelectRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v31 = v10;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "State machine %@: %@", buf, 0x16u);
  }

  if (self->_hasReceivedRemoteDeviceUpdate)
  {
    v11 = [(PKPaymentAuthorizationStateMachine *)self continuityPaymentCoordinator];
    v12 = [v11 currentRemotePaymentRequest];

    v13 = [v12 device];
    v14 = [(PKPaymentAuthorizationStateMachine *)self model];
    v15 = [v14 remoteDevice];
    v16 = [v13 isEqual:v15];

    if (v16)
    {
      v29 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v26 = [v29 availableShippingMethods];
      v17 = [(PKPaymentAuthorizationDataModel *)self->_model paymentSummaryItems];
      v28 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v18 = [v28 multiTokenContexts];
      v27 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v19 = [v27 recurringPaymentRequest];
      v20 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v21 = [v20 automaticReloadPaymentRequest];
      [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v22 = v25 = v12;
      v23 = [v22 deferredPaymentRequest];
      [(PKPaymentAuthorizationStateMachine *)self _performSendClientUpdateWithShippingMethods:v26 paymentSummaryItems:v17 multiTokenContexts:v18 recurringPaymentRequest:v19 automaticReloadPaymentRequest:v21 deferredPaymentRequest:v23 paymentApplication:v8 status:0];

      v12 = v25;
    }

    else
    {
      v24 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

      if (v24)
      {
        [(PKPaymentAuthorizationStateMachine *)self _performCancelRemotePaymentRequest];
      }

      [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    }

    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:v7 paymentApplication:v8];
  }
}

- (void)didReceivePaymentMethodCompleteWithUpdate:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 status];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
      }

      else
      {
        v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
      }

      goto LABEL_22;
    }

    if (!v5)
    {
      v7 = @"PKPaymentAuthorizationStatusSuccess";
      goto LABEL_22;
    }

    if (v5 == 1)
    {
      v7 = @"PKPaymentAuthorizationStatusFailure";
      goto LABEL_22;
    }

LABEL_21:
    v7 = @"unknown";
    goto LABEL_22;
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
    }

    else
    {
      v7 = @"PKPaymentAuthorizationStatusPINRequired";
    }

    goto LABEL_22;
  }

  if (v5 == 6)
  {
    v7 = @"PKPaymentAuthorizationStatusPINIncorrect";
    goto LABEL_22;
  }

  if (v5 == 7)
  {
    v7 = @"PKPaymentAuthorizationStatusPINLockout";
    goto LABEL_22;
  }

  if (v5 != 1000)
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
    if (v5 || ([v4 errors], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
    {
      v14 = [v4 errors];
      v15 = [v14 count];

      v16 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          v17 = [v4 errors];
          *buf = 138543362;
          v45 = v17;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Application failed to process billing address with errors: %{public}@", buf, 0xCu);
        }

        v18 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A588];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON"];
        v20 = PKLocalizedPaymentString(v19, 0);
        v43 = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v22 = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v21];

        v23 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v24 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:1 error:v22 clientErrors:v23];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v24];
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
        v22 = [v25 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v27];

        v24 = [PKPaymentAuthorizationErrorStateParam paramWithError:v22];
        [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v24];
      }

      goto LABEL_45;
    }

    v28 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([v28 isPeerPaymentRequest])
    {
      v29 = [v4 peerPaymentQuote];

      if (v29)
      {
        model = self->_model;
        v31 = [v4 peerPaymentQuote];
        [(PKPaymentAuthorizationDataModel *)model setPeerPaymentQuote:v31];
        goto LABEL_43;
      }
    }

    else
    {
    }

    v32 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v33 = [v32 requestType];

    if (v33 != 5)
    {
LABEL_44:
      v22 = [v4 availableShippingMethods];
      v24 = [v4 paymentSummaryItems];
      v35 = [v4 multiTokenContexts];
      v36 = [v4 recurringPaymentRequest];
      v37 = [v4 automaticReloadPaymentRequest];
      v38 = [v4 deferredPaymentRequest];
      v39 = [v4 contentItems];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelWithShippingMethods:v22 paymentSummaryItems:v24 multiTokenContexts:v35 recurringPaymentRequest:v36 automaticReloadPaymentRequest:v37 deferredPaymentRequest:v38 contentItems:v39];

LABEL_45:
      goto LABEL_46;
    }

    v34 = self->_model;
    v31 = [v4 installmentGroupIdentifier];
    [(PKPaymentAuthorizationDataModel *)v34 setInstallmentGroupIdentifier:v31];
LABEL_43:

    goto LABEL_44;
  }

LABEL_46:
}

- (void)didReceivePaymentMethodCompleteWithSummaryItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  [(PKPaymentRequestUpdate *)v5 setPaymentSummaryItems:v4];

  [(PKPaymentAuthorizationStateMachine *)self didReceivePaymentMethodCompleteWithUpdate:v5];
}

- (void)didRequestRefreshPaymentMethods
{
  v10[4] = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationDataModel *)self->_model refreshPaymentMethods];
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model pass];

  if (!v3)
  {
    v4 = [(PKPaymentAuthorizationDataModel *)self->_model acceptedPasses];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [(PKPaymentAuthorizationDataModel *)self->_model defaultSelectedPaymentApplicationForPass:v5];
      [(PKPaymentAuthorizationDataModel *)self->_model setPass:v5];
      [(PKPaymentAuthorizationDataModel *)self->_model setPaymentApplication:v6];
      [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentPass:v5 paymentApplication:v6];
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

      [(PKPaymentAuthorizationStateMachine *)self _updateModelBillingAddressIfNeededForPass:v5];
      [(PKPaymentAuthorizationStateMachine *)self _updateModelCanAddPasses];
    }

    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }
}

- (id)acceptedPassForProvisionedPass:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKPaymentAuthorizationDataModel *)self->_model resetPaymentMethods];
  v5 = [v4 uniqueID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PKPaymentAuthorizationDataModel *)self->_model acceptedPasses];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)didAuthenticateWithCredential:(id)a3
{
  v9 = a3;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 3 || [(PKPaymentAuthorizationDataModel *)self->_model mode]== 4)
  {
    v4 = objc_alloc_init(PKPayment);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v6 = [v5 requestType];

      if (v6 == 15)
      {
        v7 = [MEMORY[0x1E695DEF0] data];
        [(PKPayment *)v4 setCredential:v7];
      }

      else
      {
        [(PKPayment *)v4 setCredential:v9];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKPayment *)v4 setAuthKitAuthenticationResults:v9];
      }
    }

    v8 = [PKPaymentAuthorizationAuthorizedStateParam paramWithPayment:v4];
    [(PKPaymentAuthorizationStateMachine *)self _setState:12 param:v8];
  }

  else
  {
    v4 = [PKPaymentAuthorizationNonceStateParam paramWithCredential:v9];
    [(PKPaymentAuthorizationStateMachine *)self _setState:9 param:v4];
    if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setStatus:0 forItemWithType:3];
    }
  }
}

- (void)didAuthenticateWithAuthenticatorEvaluationResponse:(id)a3
{
  v4 = [PKPaymentAuthorizationNonceStateParam paramWithAuthenticatorEvaluationResponse:a3];
  [(PKPaymentAuthorizationStateMachine *)self _setState:9 param:v4];
}

- (void)didReceivePaymentAuthorizationResult:(id)a3
{
  v169 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 status];
  v6 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5 <= 3)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_22;
      }

      if (!v5)
      {
        v7 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_22;
      }

      if (v5 == 1)
      {
        v7 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 <= 5)
      {
        if (v5 == 4)
        {
          v7 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v7 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_22;
      }

      switch(v5)
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
    v8 = [v4 errors];
    *buf = 138412290;
    v168 = v8;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Client errors: %@", buf, 0xCu);
  }

  state = self->_state;
  if (state > 0x10 || ((1 << state) & 0x1A000) == 0)
  {
    self->_awaitingClientCallbackReply = 0;
    [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
    model = self->_model;
    v17 = [v4 orderDetails];
    [(PKPaymentAuthorizationDataModel *)model setPendingOrderDetails:v17];

    v18 = [v4 errors];
    v19 = [(PKPaymentAuthorizationStateMachine *)self sanitizeClientErrors:v18];

    if (![v19 count])
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Checking for errors based on legacy status", buf, 2u);
      }

      v20 = [(PKPaymentAuthorizationStateMachine *)self model];
      v35 = [v20 paymentErrorsFromLegacyStatus:v5];
      v24 = 0;
      v36 = v19;
      v19 = v35;
      goto LABEL_79;
    }

    v20 = [v19 firstObject];
    v21 = [v20 domain];
    v22 = [v21 isEqualToString:@"PKPaymentErrorDomain"];

    v23 = [v20 domain];
    v24 = [v23 isEqualToString:@"PKDisbursementErrorDomain"];

    if ((v22 & 1) == 0 && !v24)
    {
LABEL_80:

      [(PKPaymentAuthorizationDataModel *)self->_model setPaymentErrors:v19];
      v37 = [v19 firstObject];
      v137 = v37;
      if (v37)
      {
        v38 = v37;
        v134 = v24;
        v39 = [v37 localizedFailureReason];
        if (!v39)
        {
          v39 = [v38 localizedDescription];
        }

        v135 = v19;
        v133 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:v39]];
        if (os_variant_has_internal_ui())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v42 = self;
        v165[0] = @"authorizationStatus";
        v43 = v4;
        if (v5 > 7)
        {
          v44 = @"unknown";
        }

        else
        {
          v44 = off_1E79CE7C0[v5];
        }

        v166[0] = v44;
        v165[1] = @"errorDomain";
        v45 = [v38 domain];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
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
        [(PKPaymentAuthorizationStateMachine *)v42 _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v52 eventType:@"transactionAuthorizationStatusUpdated"];

        v19 = v135;
        v4 = v43;
        v24 = v134;
      }

      else
      {
        v163 = @"authorizationStatus";
        if (v5 > 7)
        {
          v41 = @"unknown";
        }

        else
        {
          v41 = off_1E79CE7C0[v5];
        }

        v164 = v41;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v42 = self;
        [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v39 eventType:@"transactionAuthorizationStatusUpdated"];
      }

      if (v5 > 4)
      {
        v53 = v42;
        if (v5 <= 6)
        {
          if (v5 == 5)
          {
            v105 = [(PKPaymentAuthorizationStateMachine *)v42 model];
            [v105 setStatus:3 forItemWithType:3];

            v106 = MEMORY[0x1E696ABC0];
            v151 = *MEMORY[0x1E696A588];
            v80 = [v4 localizedErrorMessageOverride];
            v81 = v80;
            if (!v80)
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
            v78 = [(PKPaymentAuthorizationStateMachine *)v42 model];
            [v78 setStatus:2 forItemWithType:3];

            v79 = MEMORY[0x1E696ABC0];
            v149 = *MEMORY[0x1E696A588];
            v80 = [v4 localizedErrorMessageOverride];
            v81 = v80;
            if (!v80)
            {
              v81 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_10.isa, 0);
            }

            v150 = v81;
            v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
            v83 = v79;
            v84 = -3011;
          }

          v11 = [v83 errorWithDomain:@"PKPassKitErrorDomain" code:v84 userInfo:v82];

          if (!v80)
          {
          }

          v54 = [PKPaymentAuthorizationErrorStateParam paramWithError:v11];
          v103 = v42;
          v104 = 14;
        }

        else
        {
          if (v5 != 7)
          {
            if (v5 == 1000)
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
              v54 = ;
              v112 = MEMORY[0x1E696ABC0];
              v161 = *MEMORY[0x1E696A588];
              v113 = [v4 localizedErrorMessageOverride];
              v114 = v113;
              if (v113)
              {
                v115 = v113;
              }

              else
              {
                v115 = v54;
              }

              v162 = v115;
              v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              v11 = [v112 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v116];

              v117 = [PKPaymentAuthorizationErrorStateParam paramWithError:v11 clientFailure:v107];
              [(PKPaymentAuthorizationStateMachine *)v53 _setState:14 param:v117];

              goto LABEL_194;
            }

            if (v5 == 1001)
            {
              v54 = [(PKPaymentAuthorizationDataModel *)v42->_model paymentRequest];
              v55 = [v4 localizedErrorMessageOverride];
              v56 = v55;
              if (v55)
              {
                v57 = v55;
              }

              else
              {
                v118 = [v54 localizedErrorMessage];
                v119 = v118;
                if (v118)
                {
                  v120 = v118;
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
              v11 = [v126 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v127];

              v128 = [PKPaymentAuthorizationErrorStateParam paramWithError:v11 clientFailure:1];
              v129 = v42;
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
            v54 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentRequest];
            v108 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentRequest];

            if (v108)
            {
              v109 = PKAggDKeyPaymentiTunesPurchaseAuthorizationFail;
            }

            else
            {
              if ([v54 requestType])
              {
                goto LABEL_182;
              }

              AnalyticsSendEvent();
              v109 = PKAggDKeyPaymentInAppPaymentAuthorizationFail;
            }

            [(PKAggregateDictionaryProtocol *)v53->_aggregateDictionary addValueForScalarKey:*v109 value:1];
LABEL_182:
            v121 = [v4 localizedErrorMessageOverride];
            v122 = v121;
            if (v121)
            {
              v57 = v121;
            }

            else
            {
              v123 = [v54 localizedErrorMessage];
              v124 = v123;
              if (v123)
              {
                v125 = v123;
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
            v11 = [v131 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v132];

            [(PKPaymentAuthorizationStateMachine *)v53 _reportToAutoBugCapture:v57];
            v128 = [PKPaymentAuthorizationErrorStateParam paramWithError:v11];
            v129 = v53;
            v130 = 15;
            goto LABEL_193;
          }

          v98 = MEMORY[0x1E696ABC0];
          v147 = *MEMORY[0x1E696A588];
          v99 = [v4 localizedErrorMessageOverride];
          v100 = v99;
          if (!v99)
          {
            v100 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
          }

          v148 = v100;
          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v11 = [v98 errorWithDomain:@"PKPassKitErrorDomain" code:-3001 userInfo:v101];

          if (!v99)
          {
          }

          v102 = [(PKPaymentAuthorizationDataModel *)v42->_model paymentErrors];
          v54 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:4 error:v11 clientErrors:v102];

          v103 = v42;
          v104 = 3;
        }

        [(PKPaymentAuthorizationStateMachine *)v103 _setState:v104 param:v54];
LABEL_194:
        v12 = 0;
        goto LABEL_195;
      }

      v53 = v42;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v88 = [(PKPaymentAuthorizationDataModel *)v42->_model itemForType:5];
          v139 = 0;
          v89 = [v88 isValidWithError:&v139];
          v12 = v139;

          if ((v89 & 1) != 0 || ([v12 localizedFailureReason], (v70 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v90 = MEMORY[0x1E696AEC0];
            v91 = [(PKPaymentAuthorizationDataModel *)v42->_model shippingType];
            v92 = [v90 stringWithFormat:@"IN_APP_PAYMENT_%@_ADDRESS_INCOMPLETE_REASON", v91];
            v70 = PKLocalizedPaymentString(v92, 0);
          }

          if (!v12)
          {
            v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:0];
          }

          v93 = MEMORY[0x1E696ABC0];
          v155[0] = *MEMORY[0x1E696A588];
          v94 = [v4 localizedErrorMessageOverride];
          v95 = v94;
          if (v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = v70;
          }

          v155[1] = *MEMORY[0x1E696AA08];
          v156[0] = v96;
          v156[1] = v12;
          v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:2];
          v11 = [v93 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v97];

          v76 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          v77 = 5;
        }

        else
        {
          v68 = [(PKPaymentAuthorizationDataModel *)v42->_model itemForType:7];
          v138 = 0;
          v69 = [v68 isValidWithError:&v138];
          v12 = v138;

          if ((v69 & 1) != 0 || ([v12 localizedFailureReason], (v70 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v70 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
          }

          if (!v12)
          {
            v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3010 userInfo:0];
          }

          v71 = MEMORY[0x1E696ABC0];
          v153[0] = *MEMORY[0x1E696A588];
          v72 = [v4 localizedErrorMessageOverride];
          v73 = v72;
          if (v72)
          {
            v74 = v72;
          }

          else
          {
            v74 = v70;
          }

          v153[1] = *MEMORY[0x1E696AA08];
          v154[0] = v74;
          v154[1] = v12;
          v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:2];
          v11 = [v71 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v75];

          v76 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          v77 = 7;
        }

        v54 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:v77 status:1 error:v11 clientErrors:v76];

        [(PKPaymentAuthorizationStateMachine *)v53 _setState:3 param:v54];
        goto LABEL_195;
      }

      if (v5)
      {
        if (v5 == 2)
        {
          if ([(PKPaymentAuthorizationDataModel *)v42->_model mode]== 2)
          {
            v58 = 4;
          }

          else
          {
            v58 = 3;
          }

          v59 = [(PKPaymentAuthorizationDataModel *)v42->_model itemForType:v58];
          v140 = 0;
          v60 = [v59 isValidWithError:&v140];
          v12 = v140;

          if ((v60 & 1) != 0 || ([v12 localizedFailureReason], (v61 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v61 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
          }

          v136 = v19;
          if (!v12)
          {
            v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-3002 userInfo:0];
          }

          v62 = MEMORY[0x1E696ABC0];
          v157[0] = *MEMORY[0x1E696A588];
          v63 = [v4 localizedErrorMessageOverride];
          v64 = v63;
          if (v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = v61;
          }

          v157[1] = *MEMORY[0x1E696AA08];
          v158[0] = v65;
          v158[1] = v12;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:2];
          v11 = [v62 errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v66];

          v67 = [(PKPaymentAuthorizationDataModel *)v53->_model paymentErrors];
          v54 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:v58 status:1 error:v11 clientErrors:v67];

          [(PKPaymentAuthorizationStateMachine *)v53 _setState:3 param:v54];
          v19 = v136;
          goto LABEL_195;
        }

        goto LABEL_165;
      }

      v54 = [(PKPaymentAuthorizationDataModel *)v42->_model paymentRequest];
      v85 = [(PKPaymentAuthorizationDataModel *)v42->_model paymentRequest];
      v86 = [v85 _isAMPPayment];

      if (v86)
      {
        v87 = PKAggDKeyPaymentiTunesPurchaseAuthorizationSuccess;
      }

      else
      {
        if ([v54 requestType])
        {
LABEL_173:
          v110 = [v4 peerPaymentTransactionMetadata];
          v111 = [PKPaymentAuthorizationSuccessStateParam paramWithPeerPaymentTransactionMetadata:v110];
          [(PKPaymentAuthorizationStateMachine *)v42 _setState:16 param:v111];

          v12 = 0;
          v11 = 0;
LABEL_195:

          [(PKPaymentAuthorizationDataModel *)v53->_model setPendingTransactions:0];
          [(PKPaymentAuthorizationDataModel *)v53->_model setPendingOrderDetails:0];

          goto LABEL_196;
        }

        AnalyticsSendEvent();
        v87 = PKAggDKeyPaymentInAppPaymentAuthorizationSuccess;
      }

      [(PKAggregateDictionaryProtocol *)v42->_aggregateDictionary addValueForScalarKey:*v87 value:1];
      goto LABEL_173;
    }

    v5 = [(PKPaymentAuthorizationStateMachine *)self statusFromPaymentError:v20];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_78:
      v36 = v6;
LABEL_79:

      goto LABEL_80;
    }

    if (v5 <= 3)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidBillingPostalAddress";
        }

        else
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidShippingPostalAddress";
        }

        goto LABEL_77;
      }

      if (!v5)
      {
        v25 = @"PKPaymentAuthorizationStatusSuccess";
        goto LABEL_77;
      }

      if (v5 == 1)
      {
        v25 = @"PKPaymentAuthorizationStatusFailure";
        goto LABEL_77;
      }
    }

    else
    {
      if (v5 <= 5)
      {
        if (v5 == 4)
        {
          v25 = @"PKPaymentAuthorizationStatusInvalidShippingContact";
        }

        else
        {
          v25 = @"PKPaymentAuthorizationStatusPINRequired";
        }

        goto LABEL_77;
      }

      switch(v5)
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

  v10 = [v4 errors];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 localizedFailureReason];
    if (!v12)
    {
      v12 = [v11 localizedDescription];
    }

    v13 = [PKAnalyticsErrorTextClassifier analyticsValueForResult:[PKAnalyticsErrorTextClassifier classifyErrorText:v12]];
    if (os_variant_has_internal_ui())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v143[0] = @"authorizationStatus";
    if (v5 > 7)
    {
      v26 = @"unknown";
    }

    else
    {
      v26 = off_1E79CE7C0[v5];
    }

    v144[0] = v26;
    v143[1] = @"errorDomain";
    v27 = [v11 domain];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1F227FD28;
    }

    v144[1] = v29;
    v143[2] = @"errorCode";
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v11, "code")];
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
    if (v5 > 7)
    {
      v15 = @"unknown";
    }

    else
    {
      v15 = off_1E79CE7C0[v5];
    }

    v142 = v15;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    [(PKPaymentAuthorizationStateMachine *)self _reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:v12 eventType:@"transactionAuthorizationStatusUpdated"];
    v11 = 0;
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

- (int64_t)statusFromPaymentError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"PKPaymentErrorDomain"];

  if (v6)
  {
    v7 = [v4 code];
    v8 = v7;
    if ((v7 - 2) < 2)
    {
      goto LABEL_18;
    }

    if (v7 == 1)
    {
      v11 = ![(PKPaymentAuthorizationStateMachine *)self isErrorAboutPostalAddressField:v4];
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

    if (v7 == -1)
    {
      v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v10 = [v9 requestType];

      v11 = v10 == 0;
      v12 = 1000;
      goto LABEL_15;
    }

LABEL_13:
    v8 = 1;
    goto LABEL_18;
  }

  v13 = [v4 domain];
  v14 = [v13 isEqualToString:@"PKDisbursementErrorDomain"];

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = [v4 code];
  v8 = 1000;
  if (v15 != -1 && v15 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_13;
    }

    if ([(PKPaymentAuthorizationStateMachine *)self isErrorAboutPostalAddressField:v4])
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

- (BOOL)isErrorAboutPostalAddressField:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"PKDisbursementErrorDomain"];

  v7 = &PKDisbursementErrorContactFieldUserInfoKey;
  if (!v6)
  {
    v7 = &PKPaymentErrorContactFieldUserInfoKey;
  }

  v8 = *v7;
  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:v8];

  v11 = [v10 isEqualToString:@"post"];
  if ([v10 isEqualToString:@"name"])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v10 isEqualToString:@"phoneticName"];
  }

  v13 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v14 = [v13 requiredShippingContactFields];
  v15 = [v14 containsObject:@"post"];

  v16 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v17 = [v16 isShippingEditable];

  if (v11)
  {
    v18 = 1;
  }

  else
  {
    v18 = v12 & v17 & v15;
  }

  return v18;
}

- (void)didReceivePaymentAuthorizationStatus:(int64_t)a3
{
  v5 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v5 setStatus:a3];
  [(PKPaymentAuthorizationStateMachine *)self didReceivePaymentAuthorizationResult:v5];
}

- (void)delayAuthorizedStateByDuration:(double)a3
{
  dispatch_group_enter(self->_delayAuthorizedStateGroup);
  objc_initWeak(&location, self->_delayAuthorizedStateGroup);
  v5 = dispatch_time(0, (a3 * 1000000000.0));
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

- (void)didChangeFundingMode:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  state = self->_state;
  v6 = state > 0x10;
  v7 = (1 << state) & 0x1A000;
  if (v6 || v7 == 0)
  {
    v14 = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];
    [(PKPaymentAuthorizationDataModel *)self->_model setFundingMode:a3];
    if (_os_feature_enabled_impl())
    {
      if (a3 == 2)
      {
        v17 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
        v18 = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
        -[PKPaymentAuthorizationStateMachine didSelectPaymentOffer:updateReason:](self, "didSelectPaymentOffer:updateReason:", v17, [v18 updateReason]);
      }

      else if (!a3 && v14)
      {
        [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentOffer:0 updateReason:1];
        v15 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
        v16 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
        [(PKPaymentAuthorizationStateMachine *)self didSelectPaymentPass:v15 paymentApplication:v16];

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
      v10 = PKPaymentAuthorizationFundingModeToString(a3);
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

- (void)continuityPaymentCoordinatorDidTimeoutUpdatePaymentDevices:(id)a3
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

- (void)continuityPaymentCoordinator:(id)a3 didTimeoutTotalWithPaymentDevices:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didTimeoutTotalWithPaymentDevices___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)continuityPaymentCoordinator:(id)a3 didReceiveUpdatedPaymentDevices:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceiveUpdatedPaymentDevices___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)continuityPaymentCoordinator:(id)a3 didReceivePayment:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPaymentAuthorizationStateMachine_continuityPaymentCoordinator_didReceivePayment___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)continuityPaymentCoordinatorDidReceiveCancellation:(id)a3
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

- (void)_processBluetoothState:(int64_t)a3
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
    v14[1] = a3;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Processing bluetooth state: %d", v14, 8u);
  }

  if ((a3 - 2) < 2)
  {
    goto LABEL_14;
  }

  if (a3 == 4)
  {
    if (!self->_detectedBluetoothOn)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2015 userInfo:0];
      v11 = [PKPaymentAuthorizationErrorStateParam paramWithError:v10];
      v12 = self;
      v13 = 14;
      goto LABEL_15;
    }

LABEL_14:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2015 userInfo:0];
    v11 = [PKPaymentAuthorizationErrorStateParam paramWithError:v10];
    v12 = self;
    v13 = 15;
LABEL_15:
    [(PKPaymentAuthorizationStateMachine *)v12 _setState:v13 param:v11];

    return;
  }

  if (a3 == 5 && !self->_detectedBluetoothOn)
  {
    self->_detectedBluetoothOn = 1;
    [(PKPaymentAuthorizationStateMachine *)self _startRemoteDeviceUpdate];
  }
}

- (void)_updateModelWithRemoteDevices:(id)a3
{
  v5 = a3;
  v4 = [v5 pk_containsObjectPassingTest:&__block_literal_global_186];
  if ([v5 count] && (v4 & 1) != 0)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model updateRemoteDevices:v5 ignoreProximity:0];

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
    [(PKPaymentAuthorizationStateMachine *)self _deviceUpdateDidFailWithNoEiligbleRemoteDevices:v5];
  }
}

- (void)_deviceUpdateDidFailWithNoEiligbleRemoteDevices:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  model = self->_model;
  v5 = a3;
  v6 = [(PKPaymentAuthorizationDataModel *)model remoteDevice];
  v7 = [v6 deviceName];

  if (v7)
  {
    v11 = @"PKContinuityDeviceNameKey";
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2008 userInfo:v8];
  v10 = [PKPaymentAuthorizationErrorStateParam paramWithError:v9];
  [(PKPaymentAuthorizationStateMachine *)self _setState:14 param:v10];

  [(PKPaymentAuthorizationDataModel *)self->_model updateRemoteDevices:v5 ignoreProximity:0];
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
  v3 = [(PKPaymentAuthorizationStateMachine *)self _createNewRemotePaymentRequest];
  v4 = [PKPaymentAuthorizationContinuitySendParam paramWithRemotePaymentRequest:v3];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v4];

  objc_initWeak(&location, self);
  v5 = [v3 device];
  v6 = [v5 deviceName];

  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPaymentAuthorizationStateMachine__performSendRemotePaymentRequest__block_invoke;
  v9[3] = &unk_1E79CE0D8;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [(PKContinuityPaymentCoordinator *)continuityPaymentCoordinator sendRemotePaymentRequest:v3 completion:v9];

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

- (void)_performSendClientUpdateWithShippingMethods:(id)a3 paymentSummaryItems:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 paymentApplication:(id)a9 status:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = [PKPaymentClientUpdate alloc];
  v24 = [v22 applicationIdentifier];
  v25 = [v22 paymentType];
  v35 = v17;
  v36 = v16;
  v26 = v17;
  v27 = v18;
  v28 = [(PKPaymentClientUpdate *)v23 initWithPaymentSummaryItems:v26 shippingMethods:v16 multiTokenContexts:v18 recurringPaymentRequest:v19 automaticReloadPaymentRequest:v20 deferredPaymentRequest:v21 status:a10 selectedAID:v24 selectedPaymentMethodType:v25];

  v29 = +[(PKPaymentAuthorizationStateParam *)PKPaymentAuthorizationContinuitySendParam];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v29];

  objc_initWeak(&location, self);
  v30 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];
  v31 = [v30 device];
  v32 = [v31 deviceName];

  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __224__PKPaymentAuthorizationStateMachine__performSendClientUpdateWithShippingMethods_paymentSummaryItems_multiTokenContexts_recurringPaymentRequest_automaticReloadPaymentRequest_deferredPaymentRequest_paymentApplication_status___block_invoke;
  v37[3] = &unk_1E79CE0D8;
  objc_copyWeak(&v39, &location);
  v34 = v32;
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

- (void)_performSendPaymentResult:(id)a3
{
  v4 = a3;
  v5 = +[(PKPaymentAuthorizationStateParam *)PKPaymentAuthorizationContinuitySendParam];
  [(PKPaymentAuthorizationStateMachine *)self _setState:4 param:v5];

  objc_initWeak(&location, self);
  v6 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];
  v7 = [v6 device];

  v8 = [v7 deviceName];
  continuityPaymentCoordinator = self->_continuityPaymentCoordinator;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentAuthorizationStateMachine__performSendPaymentResult___block_invoke;
  v12[3] = &unk_1E79CE128;
  objc_copyWeak(&v16, &location);
  v10 = v8;
  v13 = v10;
  v14 = self;
  v11 = v4;
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
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:4];
  v5 = [v4 paymentApplication];
  v6 = [v4 remoteDevice];
  v7 = [v6 type];
  v8 = [v6 majorOperatingSystemVersion];
  v9 = v8;
  v10 = v7 == 1 && v8 < 16;
  if (v10 || (!v7 ? (v11 = v8 <= 8) : (v11 = 0), v11))
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Bancomat", @"Bancontact", 0}];
    v13 = [v3 supportedNetworks];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PKPaymentAuthorizationStateMachine__createNewRemotePaymentRequest__block_invoke;
    v22[3] = &unk_1E79C4340;
    v23 = v12;
    v14 = v12;
    v15 = [v13 pk_objectsPassingTest:v22];

    [v3 setSupportedNetworks:v15];
  }

  v16 = v7 == 1 && v9 < 17;
  if (v16 || !v7 && v9 <= 9)
  {
    v17 = [v3 supportedNetworks];
    v18 = [v17 pk_objectsPassingTest:&__block_literal_global_193_0];

    [v3 setSupportedNetworks:v18];
  }

  v19 = [[PKRemotePaymentRequest alloc] initWithDevice:v6];
  [(PKRemotePaymentRequest *)v19 setPaymentRequest:v3];
  v20 = [v5 applicationIdentifier];
  [(PKRemotePaymentRequest *)v19 setSelectedApplicationIdentifier:v20];

  -[PKRemotePaymentRequest setSelectedPaymentMethodType:](v19, "setSelectedPaymentMethodType:", [v5 paymentType]);

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
  v3 = [(PKPaymentAuthorizationStateMachine *)self bluetoothMonitor];
  -[PKPaymentAuthorizationStateMachine _processBluetoothState:](self, "_processBluetoothState:", [v3 state]);
}

- (void)_startRemoteDeviceUpdate
{
  [(PKPaymentAuthorizationStateMachine *)self _performUpdatePaymentDevices];

  [(PKPaymentAuthorizationStateMachine *)self _setState:1 param:0];
}

- (void)_startPayment
{
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v3 = [v4 merchantSession];
  if (v3)
  {

    goto LABEL_6;
  }

  if (![v4 shouldUseMerchantSession])
  {
LABEL_6:
    if ([v4 requestType] == 5)
    {
      [(PKPaymentAuthorizationStateMachine *)self _performInstallmentBind];
    }

    else if ([v4 requestType] == 4)
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

  if ([v4 isVirtualCardRequest])
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
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [v3 installmentConfiguration];
  v5 = [v4 feature];
  if (v5 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2 * (v5 == 1);
  }

  v7 = +[PKAccountService sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PKPaymentAuthorizationStateMachine__performInstallmentBind__block_invoke;
  v9[3] = &unk_1E79CE198;
  v10 = v3;
  v11 = self;
  v8 = v3;
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
  v34 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([v34 shippingAddress])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v34 shippingContact];
    v5 = [v4 postalAddress];
    v3 = v5 != 0;
  }

  v6 = [v34 requiredShippingContactFields];
  if ([v6 containsObject:@"post"] && !v3)
  {
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:5];
    v8 = [v7 isValidWithError:0];

    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectShippingContact:v6];
  }

LABEL_9:
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model mode];
  if (v9 != 2)
  {
    if (v9 != 1)
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

    v11 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v12 = [v11 requestType];
    v13 = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentQuote];
    v14 = v13;
    if (v10)
    {
      if (v13)
      {
        v15 = [v13 firstQuoteItemOfType:1];
        v16 = v15 != 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v12 != 1 && v12 != 4 && v16;
      if (v12 == 2)
      {
LABEL_28:
        v19 = [v11 deviceSupportsPeerPaymentAccountPayment];
        if (v19 && [v11 accountPaymentUsePeerPaymentBalance])
        {
          v20 = [(PKPaymentAuthorizationDataModel *)self->_model peerPaymentBalanceForAccountPayment];
        }

        else
        {
          v20 = 0;
        }

        if ([v11 isAccountServiceTransferRequest])
        {
          v23 = [v11 accountServiceTransferRequest];
          v24 = [v23 supportsSplitPayment];

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

          if ((v27 & v24) != 0)
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
        v31 = [(PKPaymentAuthorizationDataModel *)self->_model bankAccount];
        v32 = [(PKAccountServicePaymentMethod *)v30 initWithBankAccountInformation:v31 peerPaymentBalance:v20 deviceSupportsPeerPaymentAccountPayment:v19 selectedMethods:v29];

        [(PKPaymentAuthorizationStateMachine *)self _enqueueDidUpdateAccountServicePaymentMethod:v32];
        goto LABEL_51;
      }
    }

    else
    {
      if (v12 == 2)
      {
        goto LABEL_28;
      }

      v17 = 0;
    }

    v21 = v12 == 5;
    v22 = v12 != 5 && v17;
    if (!v21)
    {
      goto LABEL_52;
    }

    v20 = [(PKPaymentAuthorizationDataModel *)self->_model installmentBindToken];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentMethodWithBindToken:v20];
LABEL_51:

    v22 = 0;
LABEL_52:
    if (!v22 && v14)
    {
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentMethodWithQuote:v14];
    }

    if (v22)
    {
      v33 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectPaymentPass:v33];
    }

    goto LABEL_58;
  }

  v11 = [(PKPaymentAuthorizationDataModel *)self->_model remotePaymentInstrument];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:v11];
LABEL_58:

LABEL_59:
}

- (void)_sendDidTransitionFromState:(unint64_t)a3 toState:(unint64_t)a4 withParam:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 0x14)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1E79CE800[a3];
    }

    if (a4 > 0x14)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E79CE800[a4];
    }

    v12 = @"<none>";
    v14 = 138412802;
    if (v8)
    {
      v12 = v8;
    }

    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "State machine change state from %@ to %@ with param: %@", &v14, 0x20u);
  }

  [(PKPaymentAuthorizationStateMachine *)self _emitSignpostEvent:a4];
  v13 = [(PKPaymentAuthorizationStateMachine *)self delegate];
  [v13 paymentAuthorizationStateMachine:self didTransitionFromState:a3 toState:a4 withParam:v8];
}

- (void)_emitSignpostEvent:(unint64_t)a3
{
  switch(a3)
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

- (void)_advanceToNextStateFromResolveError:(BOOL)a3
{
  v4 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v6 = 1;
  v46 = 0;
  v47 = 1;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model isValidWithError:&v46 errorStatus:&v47];
  v8 = v46;
  paymentOffersController = self->_paymentOffersController;
  if (paymentOffersController)
  {
    v3 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    v10 = [v3 uniqueID];
    v6 = [(PKPaymentOffersController *)paymentOffersController preconfiguredInstallmentOfferStateForPassUniqueID:v10]- 5 < 0xFFFFFFFFFFFFFFFELL;
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
      v17 = self;
      v18 = 6;
LABEL_62:
      [(PKPaymentAuthorizationStateMachine *)v17 _setState:v18 param:0];
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
    v17 = self;
    v18 = 18;
    goto LABEL_62;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v47 == 11 && !v7)
  {
    if (v4)
    {
      v19 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
      v20 = [v19 criteriaIdentifier];
      v21 = [v19 passUniqueID];
      [(PKPaymentOffersController *)self->_paymentOffersController resetLoadingDetailsForPaymentOffersForCriteriaIdentifier:v20 passUniqueID:v21];
      [(PKPaymentAuthorizationStateMachine *)self didChangeFundingMode:0];

LABEL_47:
      goto LABEL_63;
    }

    v19 = [PKPaymentAuthorizationErrorStateParam paramWithError:v8 paymentOffersError:1];
    v23 = self;
    v24 = 14;
LABEL_46:
    [(PKPaymentAuthorizationStateMachine *)v23 _setState:v24 param:v19];
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

    v19 = [PKPaymentAuthorizationErrorStateParam paramWithError:v8 paymentOffersError:1];
    v23 = self;
    v24 = 19;
    goto LABEL_46;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 0 && !v6)
  {
    v17 = self;
    v18 = 20;
    goto LABEL_62;
  }

  v15 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v16 = [v15 isVirtualCardRequest];
  if (v16)
  {
    if (!self->_state)
    {
      goto LABEL_53;
    }

LABEL_42:

    goto LABEL_43;
  }

  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([v3 requestType] != 1 || self->_state)
  {

    goto LABEL_42;
  }

LABEL_53:
  v28 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v29 = [v28 merchantSession];
  if (v29 && [(PKPaymentAuthorizationDataModel *)self->_model wantsInstructions])
  {
    v30 = [(PKPaymentAuthorizationDataModel *)self->_model instructions];
    v31 = v30 == 0;
  }

  else
  {
    v31 = 0;
  }

  if (v16)
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
      v17 = self;
      v18 = 8;
      goto LABEL_62;
    }
  }

LABEL_43:
  if (v7)
  {
    v17 = self;
    v18 = 5;
    goto LABEL_62;
  }

  if (self->_state != 3 && ![(PKPaymentAuthorizationDataModel *)self->_model isHideMyEmailLoading])
  {
    v25 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    if (!v25)
    {
      v32 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v33 = [v32 originatingURL];
      v34 = PKPaymentSheetShowExpressProvisioning(v33);

      if (!v34)
      {
        goto LABEL_52;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = [(PKPaymentAuthorizationDataModel *)self->_model unavailablePasses];
      v35 = [v25 countByEnumeratingWithState:&v41 objects:v48 count:16];
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
              objc_enumerationMutation(v25);
            }

            v39 = [*(*(&v41 + 1) + 8 * i) secureElementPass];
            v40 = [v39 passActivationState];

            if (v40 == 1)
            {
              v47 = 8;
              goto LABEL_51;
            }
          }

          v36 = [v25 countByEnumeratingWithState:&v41 objects:v48 count:16];
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
    v27 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
    v19 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:0 status:v26 error:v8 clientErrors:v27];

    v23 = self;
    v24 = 3;
    goto LABEL_46;
  }

LABEL_63:
}

- (void)_updateModelWithPaymentSummaryItems:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  model = self->_model;
  v5 = a3;
  v6 = [(PKPaymentAuthorizationDataModel *)model transactionAmount];
  [(PKPaymentAuthorizationDataModel *)self->_model setPaymentSummaryItems:v5];

  v7 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  v8 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v9 = [PKPaymentRequestValidator validatorWithObject:v8];
  v14 = 0;
  v10 = [v9 isValidWithError:&v14];
  v11 = v14;

  if (v10)
  {
    if (v6 && v7)
    {
      if ([v6 isEqual:v7])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v6 != v7)
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
  v2 = self;
  v3 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v4 = [v3 paymentWebService:v2->_paymentWebService supportedRegionFeatureOfType:4];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)_canUpdateWithMultiTokenContexts:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v8 = [v7 multiTokenContexts];

  if ([v8 count])
  {
    v26 = v8;
    v27 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = a4;
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

          v16 = [PKPaymentTokenContextValidator validatorWithObject:*(*(&v29 + 1) + 8 * v14), v25];
          v17 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          v18 = [v17 currencyCode];
          [v16 setCurrencyCode:v18];

          v19 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
          v20 = [v19 APIType];
          v28 = v15;
          v21 = [v16 isValidWithAPIType:v20 withError:&v28];
          v12 = v28;

          if (!v21)
          {
            v8 = v26;
            v6 = v27;
            a4 = v25;
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
    v8 = v26;
    v6 = v27;
  }

  else
  {
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"The original payment request didn't have multi token contexts";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
LABEL_13:

    if (a4)
    {
      v22 = v12;
      v23 = 0;
      *a4 = v12;
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
    v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 supportsDeviceAssessmentAccordingToService:self->_paymentWebService];
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
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [v3 isPeerPaymentRequest];

  if (v4)
  {
    return 0;
  }

  v6 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v7 = [v6 isAccountServiceTransferRequest];

  return v7 ^ 1;
}

- (BOOL)_isMerchantTokensSupported
{
  v2 = self;
  v3 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v4 = [v3 paymentWebService:v2->_paymentWebService supportedRegionFeatureOfType:3];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)_canUpdateWithRecurringPaymentRequest:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v8 = [v7 recurringPaymentRequest];

  if (v8)
  {
    [v6 sanitize];
    v9 = [v6 billingAgreement];
    v10 = [v8 billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:v9 oldAgreement:v10 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have a recurring payment request";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
    v11 = 0;
  }

  if (a4 && !v11)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

- (BOOL)_canUpdateWithAutomaticReloadPaymentRequest:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v8 = [v7 automaticReloadPaymentRequest];

  if (v8)
  {
    [v6 sanitize];
    v9 = [v6 billingAgreement];
    v10 = [v8 billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:v9 oldAgreement:v10 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have an automatic reload payment request";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
    v11 = 0;
  }

  if (a4 && !v11)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

- (BOOL)_canUpdateWithBillingAgreement:(id)a3 oldAgreement:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (!v9 || !v8)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

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

  if (a5)
  {
    v15 = v12;
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (BOOL)_canUpdateWithDeferredPaymentRequest:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v8 = [v7 deferredPaymentRequest];

  if (v8)
  {
    [v6 sanitize];
    v9 = [v6 billingAgreement];
    v10 = [v8 billingAgreement];
    v15 = 0;
    v11 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithBillingAgreement:v9 oldAgreement:v10 error:&v15];
    v12 = v15;
  }

  else
  {
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"The original payment request didn't have a deferred payment request";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
    v11 = 0;
  }

  if (a4 && !v11)
  {
    v13 = v12;
    *a4 = v12;
  }

  return v11;
}

- (void)_updateModelWithShippingMethods:(id)a3 paymentSummaryItems:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 contentItems:(id)a9
{
  v113[1] = *MEMORY[0x1E69E9840];
  v107 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v106 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [(PKPaymentAuthorizationDataModel *)self->_model beginUpdates];
  v105 = v20;
  if ([v16 count] && -[PKPaymentAuthorizationStateMachine _isMultiTokenContextsSupported](self, "_isMultiTokenContextsSupported"))
  {
    v111 = 0;
    v21 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithMultiTokenContexts:v16 error:&v111];
    v22 = v111;
    if (!v21)
    {
      v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v53 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v53];
      v55 = v54 = v19;
      v56 = [PKPaymentAuthorizationErrorStateParam paramWithError:v55];
      goto LABEL_35;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model setMultiTokenContexts:v16];
  }

  if (v17 && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v110 = 0;
    v23 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithRecurringPaymentRequest:v17 error:&v110];
    v24 = v110;
    if (!v23)
    {
      goto LABEL_33;
    }

    [(PKPaymentAuthorizationDataModel *)self->_model setRecurringPaymentRequest:v17];
  }

  if (v18 && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v109 = 0;
    v25 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithAutomaticReloadPaymentRequest:v18 error:&v109];
    v24 = v109;
    if (v25)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setAutomaticReloadPaymentRequest:v18];

      goto LABEL_13;
    }

LABEL_33:
    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v53 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2001 userInfo:v53];
    v55 = v54 = v19;
    v56 = [PKPaymentAuthorizationErrorStateParam paramWithError:v55];
    v22 = v24;
LABEL_35:
    v57 = v56;
    [(PKPaymentAuthorizationStateMachine *)self _setState:15 param:v56];

    v58 = v22;
    v59 = v54;

LABEL_59:
    v85 = v106;
    goto LABEL_60;
  }

LABEL_13:
  if (v19 && [(PKPaymentAuthorizationStateMachine *)self _isMerchantTokensSupported])
  {
    v108 = 0;
    v26 = [(PKPaymentAuthorizationStateMachine *)self _canUpdateWithDeferredPaymentRequest:v19 error:&v108];
    v24 = v108;
    if (v26)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setDeferredPaymentRequest:v19];

      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_17:
  v103 = v19;
  v27 = [v107 methods];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [v29 setAvailableShippingMethods:v107];

    model = self->_model;
    v31 = [v107 defaultMethod];
    [(PKPaymentAuthorizationDataModel *)model setShippingMethod:v31];
  }

  v32 = [v15 count];
  if (v32)
  {
    v33 = v32;
    v34 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v35 = [v34 requestType];

    v36 = v33 - 1;
    if (v36 && v35 == 5)
    {
      v37 = [v15 lastObject];
      v38 = [v37 amount];

      v39 = [v15 subarrayWithRange:{0, v36}];

      [(PKPaymentAuthorizationDataModel *)self->_model setInstallmentAuthorizationAmount:v38];
      v15 = v39;
    }

    [(PKPaymentAuthorizationStateMachine *)self _updateModelWithPaymentSummaryItems:v15];
  }

  if ([v20 count])
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setPaymentContentItems:v20];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model endUpdates];
  [(PKPaymentAuthorizationStateMachine *)self _updateAssessmentAttributes];
  v40 = [(PKPaymentAuthorizationDataModel *)self->_model paymentSummaryItems];
  v104 = [v40 lastObject];

  v102 = v18;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    v41 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    if (![v41 hasAssociatedPeerPaymentAccount])
    {
LABEL_30:

      goto LABEL_31;
    }

    v42 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([v42 requestType] == 10)
    {

      goto LABEL_30;
    }

    v60 = [(PKPaymentAuthorizationDataModel *)self->_model fundingMode];

    if (!v60)
    {
      v100 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
      if ([v100 status] == 5)
      {
        [(PKPaymentAuthorizationDataModel *)self->_model setStatus:0 forItemWithType:3];
      }

      v61 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      v62 = [v61 peerPaymentBalance];

      v63 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v64 = [v62 currency];
      v65 = v63;
      v66 = [v63 currencyCode];
      v67 = [v64 caseInsensitiveCompare:v66];

      if (v67)
      {
        v68 = v62;
        v69 = 1;
      }

      else
      {
        v70 = [v62 amount];
        v71 = [v104 amount];
        v68 = v62;
        v69 = [v70 compare:v71] != -1;
      }

      v98 = v68;
      v72 = [v68 amount];
      v73 = [MEMORY[0x1E696AB90] zero];
      v74 = [v72 compare:v73];

      v75 = [v65 requestType];
      v76 = [v65 requestType];
      if (!v69 || !v74 && v75 != 3 && v76 != 12)
      {
        v77 = v17;
        v78 = MEMORY[0x1E696ABC0];
        v112 = *MEMORY[0x1E696A588];
        v79 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
        v113[0] = v79;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:&v112 count:1];
        v81 = [v78 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v80];

        v82 = [(PKPaymentAuthorizationDataModel *)self->_model paymentErrors];
        v83 = [PKPaymentAuthorizationInvalidDataStateParam paramWithDataType:3 status:5 error:v81 clientErrors:v82];

        [(PKPaymentAuthorizationStateMachine *)self _setState:3 param:v83];
        if ([(PKPaymentAuthorizationStateMachine *)self hasPendingCallbacks])
        {
          [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
        }

        v17 = v77;
        goto LABEL_58;
      }

      goto LABEL_50;
    }
  }

LABEL_31:
  v43 = [(PKContinuityPaymentCoordinator *)self->_continuityPaymentCoordinator currentRemotePaymentRequest];

  if (v43)
  {
    v99 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v96 = [v99 multiTokenContexts];
    v97 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v44 = [v97 recurringPaymentRequest];
    v45 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v46 = [v45 automaticReloadPaymentRequest];
    v47 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    [v47 deferredPaymentRequest];
    v48 = v17;
    v50 = v49 = v15;
    [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v52 = v51 = v16;
    [(PKPaymentAuthorizationStateMachine *)self _performSendClientUpdateWithShippingMethods:v107 paymentSummaryItems:v49 multiTokenContexts:v96 recurringPaymentRequest:v44 automaticReloadPaymentRequest:v46 deferredPaymentRequest:v50 paymentApplication:v52 status:0];

    v16 = v51;
    v15 = v49;
    v17 = v48;

LABEL_57:
    v18 = v102;
LABEL_58:
    v59 = v103;
    v58 = v104;
    goto LABEL_59;
  }

LABEL_50:
  if (![(PKPaymentAuthorizationDataModel *)self->_model wantsInstructions])
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
    goto LABEL_57;
  }

  v84 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  v85 = v106;
  v86 = [v84 isEqualToValue:v106];

  v59 = v103;
  v58 = v104;
  if ((v86 & 1) == 0)
  {
    [(PKPaymentAuthorizationDataModel *)self->_model setInstructions:0];
  }

  v18 = v102;
  if ([(PKPaymentAuthorizationStateMachine *)self hasPendingCallbacks]|| ([(PKPaymentAuthorizationDataModel *)self->_model instructions], v87 = objc_claimAutoreleasedReturnValue(), v87, v87))
  {
    [(PKPaymentAuthorizationStateMachine *)self _advanceToNextState];
  }

  else
  {
    v88 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v89 = [v88 merchantSession];
    [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v90 = v101 = v15;
    v91 = [v90 secureElementIdentifier];
    v92 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
    v94 = v93 = v17;
    v95 = [PKPaymentAuthorizationPrepareTransactionDetailsStateParam paramWithMerchantSession:v89 secureElementIdentifier:v91 transactionAmount:v92 currencyCode:v94];

    v17 = v93;
    v59 = v103;

    v58 = v104;
    v85 = v106;

    v15 = v101;
    v18 = v102;

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
    v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    if ([v3 requestType] || -[PKPaymentAuthorizationDataModel mode](self->_model, "mode") != 1 || !self->_accountService)
    {
      goto LABEL_21;
    }

    v4 = [(PKPaymentAuthorizationDataModel *)self->_model appleCardPass];
    v5 = [v4 associatedAccountServiceAccountIdentifier];
    if (![v5 length])
    {
LABEL_20:

LABEL_21:
      return;
    }

    v6 = [v3 hashedMerchantIdentifier];
    if (!v6)
    {
LABEL_19:

      goto LABEL_20;
    }

    objc_initWeak(location, self);
    if (!self->_enhancedMerchantsFetcher)
    {
      v7 = [[PKAccountEnhancedMerchantsFetcher alloc] initWithAccountIdentifier:v5 accountService:self->_accountService];
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
    v21 = v6;
    v12 = _Block_copy(aBlock);
    v13 = [(PKAccount *)self->_appleCardAccount accountIdentifier];
    v14 = v5;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if (!v14 || !v13)
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

      v16 = [v13 isEqualToString:v14];

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

- (void)_performPassRewardsUpdateForCooldownLevel:(unint64_t)a3 ignoreErrorBackoff:(BOOL)a4 merchantIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model appleCardPass];
  objc_initWeak(&location, self);
  enhancedMerchantsFetcher = self->_enhancedMerchantsFetcher;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__PKPaymentAuthorizationStateMachine__performPassRewardsUpdateForCooldownLevel_ignoreErrorBackoff_merchantIdentifier___block_invoke;
  v13[3] = &unk_1E79CE1C0;
  objc_copyWeak(v16, &location);
  v11 = v9;
  v14 = v11;
  v16[1] = a3;
  v12 = v8;
  v15 = v12;
  [(PKAccountEnhancedMerchantsFetcher *)enhancedMerchantsFetcher updateDataWithCooldownLevel:a3 ignoreErrorBackoff:v5 completion:v13];

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
  v3 = [(PKPaymentAuthorizationStateMachine *)self _dequeuePendingCallbackParam];
  v4 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PKPaymentAuthorizationClientCallbackStateParam *)v3 kind];
    if (v5 > 0xA)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_1E79CE8A8[v5];
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "State machine dispatching callback kind: %@", &v9, 0xCu);
  }

  self->_awaitingClientCallbackReply = 1;
  mostRecentClientCallback = self->_mostRecentClientCallback;
  self->_mostRecentClientCallback = v3;
  v8 = v3;

  [(PKPaymentAuthorizationStateMachine *)self _startClientCallbackTimer];
  [(PKPaymentAuthorizationStateMachine *)self _setState:7 param:v8];
}

- (void)_enqueueCallbackOfKind:(int64_t)a3 withObject:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 0xA)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1E79CE8A8[a3];
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "State machine enqueueing callback kind: %@ object: %@", &v13, 0x16u);
  }

  callbackQueue = self->_callbackQueue;
  if (!callbackQueue)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = self->_callbackQueue;
    self->_callbackQueue = v10;

    callbackQueue = self->_callbackQueue;
  }

  v12 = [PKPaymentAuthorizationClientCallbackStateParam paramWithCallbackKind:a3 object:v6];
  [(NSMutableArray *)callbackQueue addObject:v12];

  if (!self->_awaitingClientCallbackReply)
  {
    [(PKPaymentAuthorizationStateMachine *)self _dispatchNextCallbackParam];
  }
}

- (id)_dequeuePendingCallbackParam
{
  v3 = [(NSMutableArray *)self->_callbackQueue firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_callbackQueue removeObjectAtIndex:0];
  }

  return v3;
}

- (void)_startClientCallbackTimer
{
  v17 = *MEMORY[0x1E69E9840];
  [(PKPaymentAuthorizationStateMachine *)self _cancelClientCallbackTimer];
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  [v3 clientCallbackTimeout];
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

- (void)_enqueueDidSelectShippingContact:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 sanitizedContact];
  v6 = [v5 postalAddresses];
  v7 = [v6 firstObject];

  v8 = [v7 value];
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v10 = [v9 requiresAddressPrecision];
  if (v10)
  {
    v3 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    if ([v3 isEqualToString:@"W74U47NE8E.com.apple.store.Jolly"])
    {
LABEL_5:

      goto LABEL_10;
    }

    v11 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    if ([v11 isEqualToString:@"MT9US5E2G8.com.apple.store.Jolly.MessagesExtension"])
    {

      goto LABEL_5;
    }

    v20 = v11;
  }

  v12 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v13 = [v12 originatingURL];
  v14 = [v13 isAppleURL];

  if (v10)
  {
  }

  if ((v14 & 1) == 0)
  {
    v15 = [v8 redactedPostalAddress];
    goto LABEL_12;
  }

LABEL_10:
  v15 = [v8 redactedStreetAddress];
LABEL_12:
  v16 = v15;

  v22 = *MEMORY[0x1E695C360];
  v17 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"Shipping" value:v16];
  v23[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v19 = [MEMORY[0x1E695CD58] pkContactWithNameComponents:0 labeledValues:v18];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:1 withObject:v19];
}

- (void)_enqueueDidSelectPaymentMethodWithBindToken:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentMethod alloc] initWithBindToken:v4];

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectPaymentMethodWithQuote:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentMethod alloc] initWithPeerPaymentQuote:v4];

  if ([(PKPaymentAuthorizationDataModel *)self->_model supportsPreservePeerPaymentBalance])
  {
    [(PKPaymentMethod *)v5 setUsePeerPaymentBalance:[(PKPaymentAuthorizationDataModel *)self->_model usePeerPaymentBalance]];
  }

  [(PKPaymentAuthorizationDataModel *)self->_model setPaymentErrors:0];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectBankAccount:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentMethod alloc] initWithBankAccount:v4];

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v5];
}

- (void)_enqueueDidSelectPaymentPass:(id)a3 paymentApplication:(id)a4 subCredential:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v8 | v10))
  {
    [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:0];
    goto LABEL_16;
  }

  v11 = [[PKPaymentMethod alloc] initWithPaymentPass:v8 paymentApplication:v9 subCredential:v10 obfuscateNetworks:1];
  if (v10)
  {
    v12 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 identifier];
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Enqueuing subcredential %@ with PKPaymentmethod", buf, 0xCu);
    }
  }

  v14 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v15 = [v8 associatedApplicationIdentifiers];
  v16 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
  if ([v15 containsObject:v16])
  {
    goto LABEL_9;
  }

  v24 = v9;
  v17 = [v8 associatedWebDomains];
  v18 = [v14 merchantSession];
  v19 = [v18 domain];
  if ([v17 containsObject:v19])
  {

    v9 = v24;
LABEL_9:

LABEL_10:
    v20 = [v8 copy];
    [v20 sanitizePaymentApplications];
    [(PKPaymentMethod *)v11 setPaymentPass:v20];

    goto LABEL_11;
  }

  [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v21 = v23 = v14;
  v22 = [v21 isPeerPaymentRequest];

  v14 = v23;
  v9 = v24;
  if (v22)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(PKPaymentAuthorizationStateMachine *)self _updatePaymentRequestBillingAddressWithPaymentMethod:v11];
  if ([v14 isPeerPaymentRequest] && -[PKPaymentAuthorizationDataModel supportsPreservePeerPaymentBalance](self->_model, "supportsPreservePeerPaymentBalance"))
  {
    [(PKPaymentMethod *)v11 setUsePeerPaymentBalance:[(PKPaymentAuthorizationDataModel *)self->_model usePeerPaymentBalance]];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v11];

LABEL_16:
}

- (void)_enqueueDidSelectRemotePaymentInstrument:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryPaymentApplication];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidSelectRemotePaymentInstrument:v4 paymentApplication:v5];
}

- (void)_enqueueDidSelectRemotePaymentInstrument:(id)a3 paymentApplication:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [[PKPaymentMethod alloc] initWithRemotePaymentInstrument:v13 paymentApplication:v6];

  v8 = [v13 associatedWebDomains];
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v10 = [v9 merchantSession];
  v11 = [v10 domain];
  v12 = [v8 containsObject:v11];

  if (v12)
  {
    [(PKPaymentMethod *)v7 setRemoteInstrument:v13];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:3 withObject:v7];
}

- (void)_enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:(id)a3 rewrapResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PKPayment);
  [(PKPayment *)v8 setInstallmentAuthorizationToken:v7];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v8 rewrapResponse:v6];
}

- (void)_enqueueDidAuthorizePaymentWithToken:(id)a3 rewrapResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKPayment alloc] initWithToken:v7];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v8];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v8 rewrapResponse:v6];
}

- (void)_enqueueDidAuthorizePaymentWithByPassPayment:(id)a3 rewrapResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v7 rewrapResponse:v6];
}

- (void)_enqueueDidAuthorizePaymentWithRemotePayment:(id)a3 rewrapResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _applyFulfillmentMethodToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _applyShippingInformationToPayment:v7];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithPayment:v7 rewrapResponse:v6];
}

- (void)_enqueueDidAuthorizePaymentWithPayment:(id)a3 rewrapResponse:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 3 && [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 4)
  {
    v8 = [v6 token];
    v9 = [(PKPaymentAuthorizationStateMachine *)self _transactionWithPaymentToken:v8];

    v10 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    v11 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v12 = v11;
    if (v9 && v10 && v11)
    {
      v13 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v9 pass:v10 paymentApplication:v11];
      model = self->_model;
      v29[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v15];

      [(PKPaymentAuthorizationStateMachine *)self _enrichPaymentRewardsRedemptionWithPaymentTransaction:v9 usingPass:v10];
      v16 = [v7 issuerInstallmentManagementURL];
      [v9 setIssuerInstallmentManagementURL:v16];
    }

    v28 = v12;
    v17 = +[PKPaymentOptionsDefaults defaults];
    if (v10)
    {
      v18 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
      if (v18)
      {
        v19 = v18;
        v20 = +[PKPaymentOptionsDefaults defaults];
        v21 = [v20 defaultBillingAddressForPaymentPass:v10];

        if (!v21)
        {
          v22 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
          [v17 setDefaultBillingAddress:v22 forPaymentPass:v10];
        }
      }
    }

    v23 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v24 = [v23 requiredShippingContactFields];

    v25 = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];
    if ((([v24 containsObject:@"name"] & 1) != 0 || objc_msgSend(v24, "containsObject:", @"phoneticName")) && (objc_msgSend(v24, "containsObject:", @"post") & 1) == 0)
    {
      if (v25)
      {
        v26 = [v17 defaultContactName];
        v27 = [v25 isEqualIgnoringIdentifiers:v26];

        if ((v27 & 1) == 0)
        {
          [v17 setDefaultContactName:v25];
        }
      }
    }
  }

  [(PKPaymentAuthorizationDataModel *)self->_model setPayment:v6];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:5 withObject:v6];
}

- (void)_enqeueDidAuthorizePurchaseWithParam:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 purchase];
  v6 = [v4 purchaseTransactionIdentifier];

  v7 = [(PKPaymentAuthorizationStateMachine *)self _transactionWithPurchase:v5 paymentHash:v6];

  v8 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v7 pass:v8 paymentApplication:v9];
    model = self->_model;
    v14[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v13];
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:6 withObject:v5];
}

- (void)_enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v11 peerPaymentQuote];
  v6 = [v5 isRecurringPayment];

  if ((v6 & 1) == 0)
  {
    v7 = [(PKPaymentAuthorizationStateMachine *)self _pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:v11];
    [v4 safelyAddObject:v7];
    v8 = [(PKPaymentAuthorizationStateMachine *)self _pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:v11];
    [v4 safelyAddObject:v8];
  }

  model = self->_model;
  v10 = [v4 copy];
  [(PKPaymentAuthorizationDataModel *)model setPendingTransactions:v10];

  [(PKPaymentAuthorizationStateMachine *)self _applyBillingInformationToAuthorizedQuote:v11];
  [(PKPaymentAuthorizationStateMachine *)self _enqueueCallbackOfKind:7 withObject:v11];
}

- (void)_updatePaymentRequestBillingAddressWithPaymentMethod:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v6 = [v5 requiredBillingContactFields];
  if ([v6 count])
  {
    v7 = [v5 requiredShippingContactFields];
    v8 = [v7 containsObject:@"post"];

    if ((v8 & 1) == 0)
    {
      v9 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
      v10 = [v9 sanitizedContact];

      v11 = [v10 postalAddresses];
      v12 = [v11 firstObject];

      v13 = [v12 value];
      v14 = [v13 redactedPostalAddress];

      if (v14)
      {
        v18 = *MEMORY[0x1E695C360];
        v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"Billing" value:v14];
        v19[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

        v17 = [MEMORY[0x1E695CD58] pkContactWithNameComponents:0 labeledValues:v16];
        [v4 setBillingAddress:v17];
      }
    }
  }

  else
  {
  }
}

- (id)_pendingTransactionOnPeerPaymentPassForAuthorizedPeerPaymentQuote:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:2];
  v6 = [v5 pass];

  if (!v6)
  {
    v7 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Peer payment pass is not included in the data model. Fetching the pass from the pass library.", buf, 2u);
    }

    v8 = +[PKPassLibrary sharedInstance];
    v9 = [v8 peerPaymentPassUniqueID];
    v10 = [v8 passWithUniqueID:v9];
    v6 = [v10 paymentPass];
  }

  v11 = [v6 devicePrimaryInAppPaymentApplication];
  v12 = v11;
  if (v6)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v15 = [v4 peerPaymentQuote];
    v54 = [v15 firstQuoteItemOfType:2];
    v16 = [v15 firstQuoteItemOfType:1];
    v17 = [v15 firstQuoteItemOfType:3];
    v53 = [v15 firstQuoteItemOfType:4];
    v18 = [v15 recipient];
    v19 = objc_alloc_init(PKPaymentTransaction);
    [(PKPaymentTransaction *)v19 setOriginatedByDevice:1];
    v20 = [MEMORY[0x1E695DF00] date];
    [(PKPaymentTransaction *)v19 setTransactionDate:v20];

    [(PKPaymentTransaction *)v19 addUpdateReasons:2];
    [(PKPaymentTransaction *)v19 setTransactionSource:2];
    [(PKPaymentTransaction *)v19 setTechnologyType:2];
    if (v18)
    {
      [(PKPaymentTransaction *)v19 setTransactionType:3];
      [(PKPaymentTransaction *)v19 setPeerPaymentType:1];
      v21 = [v18 conversationAddress];
      [(PKPaymentTransaction *)v19 setPeerPaymentCounterpartHandle:v21];
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
      v22 = [v15 bankName];
      v23 = [v15 accountNumber];
      v48 = v23;
      v50 = v17;
      if ([v23 length] < 4)
      {
        v27 = 0;
      }

      else
      {
        [v23 substringFromIndex:{objc_msgSend(v23, "length") - 4}];
        v25 = v24 = v22;
        v26 = PKMaskedPaymentPAN(v25);

        v22 = v24;
        v27 = v26;
      }

      v52 = v22;
      v32 = [v22 length];
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
      v37 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
      v38 = v37;
      if (v37)
      {
        v39 = [v37 localizedDescription];
        [(PKPaymentTransaction *)v19 setSecondaryFundingSourceDescription:v39];

        v40 = [v38 primaryAccountIdentifier];
        [(PKPaymentTransaction *)v19 setSecondaryFundingSourceFPANIdentifier:v40];
      }

      else
      {
        if (!(v16 | v17))
        {
          goto LABEL_39;
        }

        v40 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 0;
          _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Could not find secondary funding source pass, pending transaction will not contain pass description.", v55, 2u);
        }
      }

LABEL_39:
      v14 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v19 pass:v6 paymentApplication:v12];
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
    v28 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
    v51 = v28;
    if (!v28)
    {
      v21 = 0;
LABEL_57:
      [(PKPaymentTransaction *)v19 setSecondaryFundingSourceDescription:v21];

      goto LABEL_15;
    }

    v29 = v28;
    v46 = [v28 devicePrimaryPaymentApplication];
    v49 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([v46 paymentNetworkIdentifier]);

    v47 = [v29 primaryAccountNumberSuffix];
    v30 = PKMaskedPaymentPAN(v47);
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
        v21 = 0;
        goto LABEL_56;
      }

      PKLocalizedPeerPaymentString(&cfstr_TransactionSec_2.isa, &stru_1F2281668.isa, v30);
    }
    v31 = ;
LABEL_55:
    v21 = v31;
    v30 = v43;
LABEL_56:

    goto LABEL_57;
  }

  v15 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 0;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Could not find peer payment pass. Not creating pending transaction.", v57, 2u);
  }

  v14 = 0;
LABEL_41:

  return v14;
}

- (id)_pendingTransactionOnAlternateFundingSourceForAutorizedPeerPaymentQuote:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  v6 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
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
    v10 = [v6 dpanIdentifier];
    v11 = [v4 peerPaymentQuote];
    v12 = [v11 items];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = v13;
    v26 = v11;
    v27 = v4;
    v15 = 0;
    v16 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 dpanIdentifier];
        if ([v19 isEqualToString:v10])
        {
          v20 = v18;

          v15 = v20;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
    v11 = v26;
    v4 = v27;
    if (v15)
    {
      v21 = objc_alloc_init(PKPaymentTransaction);
      [(PKPaymentTransaction *)v21 setOriginatedByDevice:1];
      [(PKPaymentTransaction *)v21 addUpdateReasons:2];
      v22 = [MEMORY[0x1E695DF00] date];
      [(PKPaymentTransaction *)v21 setTransactionDate:v22];

      [(PKPaymentTransaction *)v21 setTransactionType:0];
      [(PKPaymentTransaction *)v21 setTransactionSource:2];
      [(PKPaymentTransaction *)v21 setTechnologyType:2];
      v23 = [v15 totalAmount];
      [(PKPaymentTransaction *)v21 setAmount:v23];

      v24 = [v15 totalAmountCurrency];
      [(PKPaymentTransaction *)v21 setCurrencyCode:v24];

      [(PKPaymentTransaction *)v21 setAssociatedFeatureIdentifier:1];
      v9 = [[PKPendingPaymentTransaction alloc] initWithTransaction:v21 pass:v5 paymentApplication:v7];
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

- (void)_performNonceRequestWithParam:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  [(PKPaymentAuthorizationStateMachine *)self _computeAssessmentIfNecessary];
  objc_initWeak(&location, self);
  v6 = [v5 merchantSession];
  if (!PKHandsOnDemoModeEnabled() && !PKUIOnlyDemoModeEnabled())
  {
    if ([v5 requestType] == 2 || objc_msgSend(v5, "requestType") == 4 || objc_msgSend(v5, "requestType") == 5)
    {
      goto LABEL_7;
    }

    if (v6)
    {
      self->_awaitingWebServiceResponse = 1;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_2;
      v27[3] = &unk_1E79CE210;
      objc_copyWeak(&v30, &location);
      v28 = v6;
      v29 = v4;
      [(PKPaymentAuthorizationStateMachine *)self _augmentSessionResponseWithCompletion:v27];

      v23 = &v30;
    }

    else
    {
      if ([v5 isPeerPaymentRequest])
      {
LABEL_7:
        v21 = [v4 credential];
        v22 = [PKPaymentAuthorizationAuthorizeStateParam paramWithCredential:v21];

        [(PKPaymentAuthorizationStateMachine *)self _setState:10 param:v22];
        goto LABEL_8;
      }

      self->_awaitingWebServiceResponse = 1;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__PKPaymentAuthorizationStateMachine__performNonceRequestWithParam___block_invoke_4;
      v24[3] = &unk_1E79CE238;
      objc_copyWeak(&v26, &location);
      v25 = v4;
      [(PKPaymentAuthorizationStateMachine *)self _nonceResponseWithCompletion:v24];

      v23 = &v26;
    }

    objc_destroyWeak(v23);
    goto LABEL_8;
  }

  v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v8 = [v7 paymentNetworkIdentifier];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentToken_%d", v8];
  v10 = MEMORY[0x1E695DEF0];
  v11 = PKPassKitCoreBundle();
  v12 = [v11 pathForResource:v9 ofType:@"archive"];
  v13 = [v10 dataWithContentsOfFile:v12];

  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:0];
  v34 = arc4random();
  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:4];
  v16 = [v15 SHA256Hash];
  v17 = [v16 hexEncoding];

  [v14 setTransactionIdentifier:v17];
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
  v3 = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Computing CoreODI assessment %@", &v5, 0xCu);
    }

    self->_odiAssessmentInFlight = 1;
    [v3 computeAssessment];
  }
}

- (void)_augmentSessionResponseWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__PKPaymentAuthorizationStateMachine__augmentSessionResponseWithCompletion___block_invoke;
    v5[3] = &unk_1E79CE288;
    objc_copyWeak(&v7, &location);
    v6 = v4;
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

- (void)_nonceResponseWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PKPaymentAuthorizationStateMachine__nonceResponseWithCompletion___block_invoke;
    v5[3] = &unk_1E79CE288;
    objc_copyWeak(&v7, &location);
    v6 = v4;
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

- (void)_augmentBaseRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v6 = [v5 currencyCode];
  v7 = [v5 countryCode];
  v8 = [v5 boundInterfaceIdentifier];
  v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v10 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  v11 = [v10 pass];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79CE2B0;
  v34 = 0;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  v29 = v7;
  v30 = v6;
  v31 = v8;
  v32 = 0;
  v33 = v4;
  v22 = v4;
  v21 = v8;
  v13 = v6;
  v14 = v7;
  v15 = v11;
  v16 = _Block_copy(aBlock);
  secureElement = self->_secureElement;
  v18 = [v12 applicationIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKPaymentAuthorizationStateMachine__augmentBaseRequestWithCompletion___block_invoke_2;
  v23[3] = &unk_1E79CE2D8;
  v24 = v12;
  v25 = v16;
  v19 = v16;
  v20 = v12;
  [(PKSecureElement *)secureElement appletWithIdentifier:v18 completion:v23];
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

- (void)_performPrepareTransactionDetailsRequestWithParam:(id)a3
{
  v4 = a3;
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
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v8 = [v7 merchantSession];
    v9 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
    v10 = [v9 secureElementIdentifier];
    v11 = v10;
    if (!v10)
    {
      v11 = [(PKSecureElement *)self->_secureElement primarySecureElementIdentifier];
    }

    v12 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
    v13 = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__PKPaymentAuthorizationStateMachine__performPrepareTransactionDetailsRequestWithParam___block_invoke_2_285;
    v15[3] = &unk_1E79CE350;
    v5 = v16;
    objc_copyWeak(v16, &location);
    v16[1] = v6;
    [(PKPaymentWebService *)paymentWebService prepareTransactionDetailsForMerchantSession:v8 secureElementIdentifier:v11 amount:v12 currencyCode:v13 completion:v15];

    if (!v10)
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

- (void)_performRewrapRequestWithParam:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  v6 = [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 1 || v5 == 0;
  if (v6 || ([v5 currentAssessment], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(PKPaymentAuthorizationStateMachine *)self _performRewrapRequestImplWithParam:v4];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKPaymentAuthorizationStateMachine__performRewrapRequestWithParam___block_invoke;
    v8[3] = &unk_1E79CE378;
    v8[4] = self;
    v9 = v4;
    [v5 waitForAssessmentWithContinueBlock:v8];
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

- (void)_performRewrapRequestImplWithParam:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 credential];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke;
  aBlock[3] = &unk_1E79CE3A0;
  objc_copyWeak(&v71, &location);
  aBlock[4] = self;
  v6 = v5;
  v70 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  v9 = [v8 pass];
  v60 = [v9 paymentPass];

  v59 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v10 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v11 = [v10 merchantSession];

  if (!v11)
  {
    v15 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v16 = [v15 serviceProviderPaymentRequest];

    if (!v16)
    {
      self->_awaitingWebServiceResponse = 1;
      *buf = 0;
      v40 = objc_alloc_init(PKPaymentRewrapRequest);
      [(PKPaymentAuthorizationStateMachine *)self _updateRewrapRequest:v40 param:v4 serviceURL:buf];
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

    v17 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v18 = [v17 serviceProviderPaymentRequest];
    v58 = [v18 serviceProviderOrder];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v58 serviceProviderData];
      v20 = [v19 mutableCopy];

      v21 = [v60 primaryAccountIdentifier];
      [v20 safelySetObject:v21 forKey:@"primaryAccountIdentifier"];

      v22 = [v59 dpanIdentifier];
      [v20 safelySetObject:v22 forKey:@"selectedDpanId"];

      v23 = [v20 objectForKey:@"requestMPAN"];
      v24 = [v23 BOOLValue];

      if (v24)
      {
        v25 = [v60 devicePrimaryPaymentApplication];
        v26 = [v25 dpanIdentifier];
        [v20 safelySetObject:v26 forKey:@"devicePrimaryAccountIdentifier"];

        v27 = [v60 issuerCountryCode];
        [v20 safelySetObject:v27 forKey:@"issuerCountryCode"];
      }

      v28 = [v20 copy];
      [v58 setServiceProviderData:v28];
    }

    [v58 setPaymentInstrumentType:1];
    v29 = [v4 wrappedPayment];
    v30 = [v29 transactionData];
    [v58 setAppletValue:v30];

    if ([v59 supportsBarcodePayment] && (objc_msgSend(v59, "supportsContactlessPayment") & 1) == 0)
    {
      v31 = [v4 wrappedPayment];
      v32 = [v31 transactionIdentifier];
      [v58 setTransactionIdentifier:v32];
    }

    v33 = objc_alloc_init(PKPaymentServiceProviderPerformPaymentRequest);
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setPass:v60];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setServiceProviderOrder:v58];
    v34 = [v4 nonceData];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setNonce:v34];

    v35 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v36 = [v35 serviceProviderPaymentRequest];
    v37 = [v36 targetDeviceSerialNumber];
    [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setTargetDeviceSerialNumber:v37];

    -[PKPaymentServiceProviderPerformPaymentRequest setCryptogramType:](v33, "setCryptogramType:", [v4 cryptogramType]);
    if (!_os_feature_enabled_impl())
    {
      v43 = PKLogFacilityTypeGetObject(7uLL);
      v57 = v43;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Device assessments not enabled for service provider payment requests", buf, 2u);
      }

      goto LABEL_34;
    }

    v57 = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
    if (v57)
    {
      if (![v60 supportsDeviceAssessmentAccordingToService:self->_paymentWebService])
      {
        v44 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Not attaching device assessment to service provider payment request, as pass does not support assessments (assessment was probably generated for a supported pass, but payment is being made with an unsupported pass)", buf, 2u);
        }

        [v57 provideSessionFeedback:1];
        goto LABEL_26;
      }

      v38 = [v57 currentAssessment];
      v39 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v57;
        _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "Attaching device assessment to service provider payment request %@", buf, 0xCu);
      }

      [(PKPaymentServiceProviderPerformPaymentRequest *)v33 setDeviceAssessments:v38];
      [v57 provideSessionFeedback:0];
    }

    else
    {
      v38 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "No device assessment generated for service provider payment request", buf, 2u);
      }
    }

LABEL_26:
    v45 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    if (!v45 || ([v60 shippingAddressSeed], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46 == 0, v46, v45, v47))
    {
      v52 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v52, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has no seed, skipping", buf, 2u);
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

      v49 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
      v50 = [v49 postalAddresses];
      v51 = [v50 firstObject];
      v52 = [v51 value];

      v53 = [v60 shippingAddressSeed];
      v54 = PKPostalAddressHash(v52, v53);

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
    v64 = v4;
    [(PKPaymentWebService *)v56 performServiceProviderPayment:v33 completion:v63];

    goto LABEL_35;
  }

  self->_awaitingWebServiceResponse = 1;
  *buf = 0;
  v12 = [(PKPaymentAuthorizationStateMachine *)self _rewrapCompleteSessionRequestWithParam:v4 serviceURL:buf];
  v13 = self->_paymentWebService;
  v14 = *buf;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __73__PKPaymentAuthorizationStateMachine__performRewrapRequestImplWithParam___block_invoke_292;
  v66[3] = &unk_1E79CE3C8;
  v67 = v11;
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

- (void)_updateRewrapRequest:(id)a3 param:(id)a4 serviceURL:(id *)a5
{
  model = self->_model;
  v9 = a4;
  v10 = a3;
  v15 = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v11 = [(PKPaymentAuthorizationStateMachine *)self _updateRewrapBaseRequest:v10 param:v9];

  v12 = [v15 merchantIdentifier];
  [v10 setMerchantIdentifier:v12];

  v13 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
  [v10 setHostApplicationIdentifier:v13];

  v14 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [v10 setMerchantDisplayName:v14];

  if (a5)
  {
    objc_storeStrong(a5, v11);
  }
}

- (id)_rewrapCompleteSessionRequestWithParam:(id)a3 serviceURL:(id *)a4
{
  model = self->_model;
  v7 = a3;
  v8 = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v9 = [v8 merchantSession];
  v10 = objc_alloc_init(PKPaymentCompleteSessionRequest);
  v11 = [(PKPaymentAuthorizationStateMachine *)self _updateRewrapBaseRequest:v10 param:v7];

  [(PKPaymentCompleteSessionRequest *)v10 setMerchantSession:v9];
  if (a4)
  {
    objc_storeStrong(a4, v11);
  }

  return v10;
}

- (id)_updateRewrapBaseRequest:(id)a3 param:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = a3;
  model = self->_model;
  v91 = a4;
  v8 = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v100 = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  v99 = [v8 boundInterfaceIdentifier];
  v98 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v88 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  v9 = [v88 pass];
  v10 = [v8 applicationData];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]== 1)
  {
    v12 = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    v89 = v12 != 0;
  }

  else
  {
    v89 = 0;
  }

  v94 = v11;
  v13 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v14 = [v13 isVirtualCardEnrollmentRequest];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
    v17 = [v16 isVirtualCardRefreshRequest];

    if (v17)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
  v19 = [(PKPaymentAuthorizationDataModel *)self->_model paymentOffersController];
  v20 = [v9 uniqueID];
  v21 = [v19 paymentOfferCriteriaForPassUniqueID:v20];
  v95 = [v21 pk_firstObjectPassingTest:&__block_literal_global_304];

  v22 = v18;
  paymentOffersController = self->_paymentOffersController;
  v24 = [v18 passUniqueID];
  v101 = v9;
  v93 = v18;
  if (v24)
  {
    v25 = [(PKPaymentOffersController *)paymentOffersController merchandisingOfferForPassUniqueID:v24];
  }

  else
  {
    v26 = [v9 uniqueID];
    v25 = [(PKPaymentOffersController *)paymentOffersController merchandisingOfferForPassUniqueID:v26];

    v22 = v93;
  }

  v27 = [v25 allIdentifiers];
  v97 = [v27 allObjects];

  v96 = v10;
  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2 && v22)
  {
    v28 = [v22 type];
    v29 = v94;
    if (v28 == 2)
    {
      v32 = [v22 rewardsRedemptionIntent];
      v35 = [v32 dictionaryRepresentation];
      [v94 safelySetObject:v35 forKey:@"rewardsRedemptionIntent"];

      v15 = 4;
    }

    else
    {
      if (v28 != 1)
      {
LABEL_22:
        v36 = [v22 serviceProviderData];
        [v94 addEntriesFromDictionary:v36];

        v37 = [v22 sessionIdentifier];
        [v94 safelySetObject:v37 forKey:@"sessionIdentifier"];

        v38 = [v22 selectedOfferIdentifier];
        [v94 safelySetObject:v38 forKey:@"selectedOfferIdentifier"];

        v33 = [v22 criteriaIdentifier];
        goto LABEL_23;
      }

      v30 = [v22 installmentAssessment];
      v31 = [v30 offers];
      v32 = [v31 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_307];

      [v94 safelySetObject:v32 forKey:@"allOfferIdentifiers"];
      v15 = 3;
    }

    goto LABEL_22;
  }

  v29 = v94;
  if (!v95)
  {
    v34 = v9;
    goto LABEL_24;
  }

  v33 = [v95 identifier];
LABEL_23:
  v39 = v33;
  v34 = v9;
  [v29 safelySetObject:v33 forKey:@"criteriaIdentifier"];

LABEL_24:
  if ([v97 count])
  {
    [v29 safelySetObject:v97 forKey:@"merchandisingOfferIdentifiers"];
  }

  v87 = v25;
  [v6 setType:v15];
  v40 = [v91 wrappedPayment];
  [v6 setWrappedPayment:v40];

  [v6 setPass:v34];
  [v6 setPaymentApplication:v98];
  [v6 setApplicationData:v96];
  [v6 setBoundInterfaceIdentifier:v99];
  v41 = [v91 cryptogramType];

  [v6 setCryptogramType:v41];
  [v6 setCurrencyCode:v100];
  if ([v29 count])
  {
    v42 = [v29 copy];
    [v6 setServiceProviderData:v42];
  }

  else
  {
    [v6 setServiceProviderData:0];
  }

  if (v89)
  {
    v43 = [(PKPaymentAuthorizationDataModel *)self->_model remoteDevice];
    v44 = [v43 modelIdentifier];

    if ([v44 length])
    {
      [v6 setRemoteDeviceModel:v44];
    }
  }

  v45 = [v8 remoteNetworkRequestPaymentTopicID];
  v46 = [v45 length];

  if (v46)
  {
    v47 = [v8 remoteNetworkRequestPaymentTopicID];
    [v6 setRemoteNetworkRequestPaymentTopicID:v47];

    v48 = [v8 userAgent];
    [v6 setRemoteNetworkRequestInitiatingUserAgent:v48];
  }

  else
  {
    v48 = [v8 userAgent];
    [v6 setUserAgent:v48];
  }

  v49 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v50 = [v49 paymentWebService:self->_paymentWebService supportedRegionFeatureOfType:4];

  if ([v8 isMultiTokenRequest] && v50)
  {
    [v6 setInitiative:@"multi_token"];
    v51 = [v8 multiTokenContexts];
    [v6 setMultiTokenContexts:v51];
  }

  v52 = [v8 recurringPaymentRequest];
  v53 = [v8 automaticReloadPaymentRequest];
  v92 = [v8 deferredPaymentRequest];
  v54 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  v55 = [v54 paymentWebService:self->_paymentWebService supportedRegionFeatureOfType:3];

  v90 = v55;
  if (v52 && v55)
  {
    [v6 setInitiative:@"merchant_token"];
    v56 = [v52 tokenNotificationURL];
    v57 = [v56 absoluteString];
    [v6 setInitiativeContext:v57];

    v58 = [v52 managementURL];
    v59 = [v58 absoluteString];
    [v6 setMerchantTokenManagementURL:v59];

    v60 = PKMerchantTokenRequestUseCaseRecurring;
LABEL_45:
    [v6 setMerchantTokenUseCase:*v60];
    goto LABEL_46;
  }

  if (v53 && v55)
  {
    [v6 setInitiative:@"merchant_token"];
    v61 = [v53 tokenNotificationURL];
    v62 = [v61 absoluteString];
    [v6 setInitiativeContext:v62];

    v63 = [v53 managementURL];
    v64 = [v63 absoluteString];
    [v6 setMerchantTokenManagementURL:v64];

    v60 = PKMerchantTokenRequestUseCaseAutomaticReload;
    goto LABEL_45;
  }

  if (v92 && v55)
  {
    [v6 setInitiative:@"merchant_token"];
    v82 = [v92 tokenNotificationURL];
    v83 = [v82 absoluteString];
    [v6 setInitiativeContext:v83];

    v84 = [v92 managementURL];
    v85 = [v84 absoluteString];
    [v6 setMerchantTokenManagementURL:v85];

    [v6 setMerchantTokenUseCase:@"merchant_token_deferred"];
    [v6 setIsDeferredPayment:1];
  }

LABEL_46:
  if ([v8 requestType] == 10)
  {
    [v6 setInitiative:@"transfer_funds"];
  }

  v65 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
  if (v65 && (v66 = v65, [v9 shippingAddressSeed], v67 = objc_claimAutoreleasedReturnValue(), v67, v66, v67))
  {
    v68 = v50;
    v69 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v69, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has seed, hashing", buf, 2u);
    }

    v70 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
    v71 = [v70 postalAddresses];
    v72 = [v71 firstObject];
    v73 = [v72 value];

    v74 = [v101 shippingAddressSeed];
    v75 = PKPostalAddressHash(v73, v74);

    v76 = [v75 base64EncodedStringWithOptions:0];
    [v6 setShippingAddressHash:v76];

    v77 = v101;
    v29 = v94;
  }

  else
  {
    v68 = v50;
    v73 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v73, OS_LOG_TYPE_DEFAULT, "Address seed: Pass has no seed, skipping", buf, 2u);
    }

    v77 = v9;
  }

  v78 = [(PKPaymentAuthorizationStateMachine *)self _activeODIAssessment];
  if (v78)
  {
    if ([v77 supportsDeviceAssessmentAccordingToService:self->_paymentWebService])
    {
      v79 = [v78 currentAssessment];
      v80 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v103 = v78;
        _os_log_impl(&dword_1AD337000, v80, OS_LOG_TYPE_DEFAULT, "Setting device assessment %@", buf, 0xCu);
      }

      [v6 setDeviceAssessments:v79];
      v77 = v101;
    }

    else
    {
      v79 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v79, OS_LOG_TYPE_DEFAULT, "Not attaching device assessment to rewrap request, as pass does not support assessments (assessment was probably generated for a supported pass, but payment is being made with an unsupported pass)", buf, 2u);
      }
    }
  }

  return 0;
}

- (void)_performDataProcessingWithParam:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __70__PKPaymentAuthorizationStateMachine__performDataProcessingWithParam___block_invoke;
  v14 = &unk_1E79C4DD8;
  v15 = self;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(&v11);
  v7 = [v5 rewrapResponse];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 redemption];

    if (v9)
    {
      v10 = [v8 redemption];
      [(PKPaymentAuthorizationStateMachine *)self _processPaymentRewardsRedemption:v10];
    }
  }

  v6[2](v6);
}

- (void)_processPaymentRewardsRedemption:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Got payment rewards redemption details %@", &v17, 0xCu);
  }

  v6 = [(PKPaymentAuthorizationDataModel *)self->_model pass];
  v7 = [v6 uniqueID];

  if (v7)
  {
    v8 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
    if ([v8 type] == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 rewardsRedemptionIntent];
        v10 = v9;
        if (v9 && ([v9 isEmptyValued] & 1) == 0)
        {
          v11 = [PKPaymentRewardsRedemptionUnit alloc];
          v12 = [v10 rewardsType];
          v13 = [v10 monetaryValue];
          v14 = [v10 value];
          v15 = [(PKPaymentRewardsRedemptionUnit *)v11 initWithType:v12 monetaryValue:v13 value:v14];

          v16 = [[PKPaymentRewardsRedemptionDetails alloc] initWithIntended:v15 redeemed:0 originalTransactionDetails:0];
          [v4 setDetails:v16];
        }
      }
    }

    [(PKPaymentService *)self->_paymentService insertOrUpdatePaymentRewardsRedemption:v4 withPassUniqueIdentifier:v7];
    PKSharedCacheSetBoolForKey(1, @"PKSharedCacheHasEverMadeIssuerInstallmentTransaction");
  }
}

- (void)_enrichPaymentRewardsRedemptionWithPaymentTransaction:(id)a3 usingPass:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (!PKHideCardBenefitRewards())
  {
    paymentService = self->_paymentService;
    v8 = [v21 paymentHash];
    v9 = [(PKPaymentService *)paymentService paymentRewardsRedemptionForPaymentHash:v8];

    if (v9)
    {
      v10 = [v21 merchant];
      v11 = objc_alloc_init(PKPaymentRewardsRedemptionTransactionDetails);
      v12 = [v21 identifier];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setIdentifier:v12];

      v13 = [v21 merchantProvidedDescription];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setDescriptionText:v13];

      v14 = [v10 name];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMerchantRawName:v14];

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "category")}];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMerchantCategoryCode:v15];

      v16 = [v21 transactionDate];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setTimestamp:v16];

      v17 = [v21 currencyAmount];
      [(PKPaymentRewardsRedemptionTransactionDetails *)v11 setMonetaryValue:v17];

      v18 = [v9 details];
      if (!v18)
      {
        v18 = objc_alloc_init(PKPaymentRewardsRedemptionDetails);
      }

      [(PKPaymentRewardsRedemptionDetails *)v18 setOriginalTransaction:v11];
      [v9 setDetails:v18];
      v19 = self->_paymentService;
      v20 = [v6 uniqueID];
      [(PKPaymentService *)v19 insertOrUpdatePaymentRewardsRedemption:v9 withPassUniqueIdentifier:v20];
    }
  }
}

- (void)_performDidAuthorizeCallbackWithParam:(id)a3
{
  v8 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v5 = [v4 requestType];
  if ([v4 isServiceProviderPaymentRequest])
  {
    [(PKPaymentAuthorizationStateMachine *)self _enqeueDidAuthorizePurchaseWithParam:v8];
    goto LABEL_14;
  }

  if ([v4 isPeerPaymentRequest])
  {
    v6 = [v8 authorizedPeerPaymentQuote];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePeerPaymentQuoteWithAuthorizedQuote:v6];
LABEL_13:

    goto LABEL_14;
  }

  switch(v5)
  {
    case 2uLL:
LABEL_8:
      v6 = [v8 applePayTrustSignature];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizeAccountServicePaymentRequestWithApplePayTrustSignature:v6];
      goto LABEL_13;
    case 5uLL:
      v6 = [v8 installmentAuthorizationToken];
      v7 = [v8 rewrapResponse];
      [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithInstallmentAuthorizationToken:v6 rewrapResponse:v7];
LABEL_12:

      goto LABEL_13;
    case 4uLL:
      goto LABEL_8;
  }

  if ([(PKPaymentAuthorizationStateMachine *)self useSecureElement])
  {
    v6 = [v8 paymentToken];
    v7 = [v8 rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithToken:v6 rewrapResponse:v7];
    goto LABEL_12;
  }

  if ([(PKPaymentAuthorizationDataModel *)self->_model mode]!= 3 && [(PKPaymentAuthorizationDataModel *)self->_model mode]!= 4)
  {
    v6 = [v8 payment];
    v7 = [v8 rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithRemotePayment:v6 rewrapResponse:v7];
    goto LABEL_12;
  }

  if (v5 > 0xD || ((1 << v5) & 0x20C0) == 0)
  {
    v6 = [v8 payment];
    v7 = [v8 rewrapResponse];
    [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizePaymentWithByPassPayment:v6 rewrapResponse:v7];
    goto LABEL_12;
  }

  [(PKPaymentAuthorizationStateMachine *)self _enqueueDidAuthorizeContext];
LABEL_14:
}

- (void)_insertPendingPaymentTransactionsWithParam:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
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
          v10 = [v9 paymentApplication];
          v11 = [v10 dpanIdentifier];

          v12 = [v27 peerPaymentTransactionMetadata];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 dpanIdentifier];
            v15 = [v14 isEqual:v11];

            if (v15)
            {
              v16 = [v9 transaction];
              v17 = [v13 serviceIdentifier];
              [v16 setServiceIdentifier:v17];

              v18 = [v13 requestDeviceScoreIdentifier];
              [v16 setRequestDeviceScoreIdentifier:v18];

              v19 = [v13 sendDeviceScoreIdentifier];
              [v16 setSendDeviceScoreIdentifier:v19];
            }
          }

          v20 = [v9 transaction];
          v21 = [v9 paymentApplication];
          v22 = [v9 pass];
          v23 = [v22 uniqueID];

          v24 = PKLogFacilityTypeGetObject(0x18uLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v33 = v20;
            v34 = 2112;
            v35 = v23;
            v36 = 2112;
            v37 = v21;
            _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Inserting transaction: %@ for pass: %@ paymentApplication: %@", buf, 0x20u);
          }

          [(PKPaymentService *)self->_paymentService insertOrUpdatePaymentTransaction:v20 forPassUniqueIdentifier:v23 paymentApplication:v21 completion:&__block_literal_global_332];
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
      v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
      v4 = [v3 requestType];

      if ((v4 - 1) >= 0xA && (v4 - 12) >= 4 && [(PKPaymentAuthorizationDataModel *)self->_model mode]== 1 && [PKWebServiceDocumentDeliveryFeature isEnabledWithWebService:self->_paymentWebService])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v5 = [(PKPaymentAuthorizationDataModel *)self->_model pendingTransactions];
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * v9);
              v11 = objc_alloc_init(MEMORY[0x1E6967E50]);
              v12 = PKLogFacilityTypeGetObject(8uLL);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v15 = 0;
                _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Inserting pending transaction registration", v15, 2u);
              }

              v13 = [v10 transaction];
              v14 = [v13 fkPaymentTransaction];
              [v11 registerPaymentTransaction:v14];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (void)_insertPendingOrderDetails:(BOOL *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model payment];
  v6 = [(PKPaymentAuthorizationDataModel *)self->_model pendingOrderDetails];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_9:
    *a3 = 0;
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

  v10 = [v5 token];
  v11 = [v10 transactionIdentifier];

  v12 = objc_alloc(MEMORY[0x1E6967E40]);
  v13 = [v7 orderTypeIdentifier];
  v14 = [v7 orderIdentifier];
  v15 = [v7 webServiceURL];
  v16 = [v7 authenticationToken];
  v17 = [v12 initWithTransactionIdentifier:v11 orderTypeIdentifier:v13 orderIdentifier:v14 webServiceBaseURL:v15 authenticationToken:v16];

  v18 = objc_alloc_init(MEMORY[0x1E6967E48]);
  v19 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Inserting pending Apple Pay order with details: %@", &v20, 0xCu);
  }

  [v18 insertOrUpdatePendingApplePayOrder:v17];
  *a3 = 1;

LABEL_13:
}

- (void)_updateModelCanAddPasses
{
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [v3 _isAMPPayment];

  if (v4)
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

- (void)_updateModelBillingAddressIfNeededForPass:(id)a3
{
  v8 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v5 = [v4 requiredBillingContactFields];
  if ([v5 containsObject:@"post"])
  {
    v6 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = +[PKPaymentOptionsDefaults defaults];
    v4 = [v7 defaultBillingAddressForPaymentPass:v8];

    if (v4)
    {
      [(PKPaymentAuthorizationDataModel *)self->_model setBillingAddress:v4];
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
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 addObserver:self selector:sel__handleStateMachineWillStartNotification_ name:@"PKPaymentAuthorizationStateMachineWillStartNotification" object:0 suspensionBehavior:4];
}

- (void)_unregisterForNotifications
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_postStateMachineWillStartNotification
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 postNotificationName:@"PKPaymentAuthorizationStateMachineWillStartNotification" object:self->_instanceIdentifier userInfo:0 options:1];
}

- (void)_handleStateMachineWillStartNotification:(id)a3
{
  v10 = a3;
  if ((PKSupportsNestedInAppPaymentSheet() & 1) == 0)
  {
    state = self->_state;
    v5 = state > 0x10;
    v6 = (1 << state) & 0x1A000;
    if (v5 || v6 == 0)
    {
      v8 = [v10 object];
      v9 = [v8 isEqual:self->_instanceIdentifier];

      if ((v9 & 1) == 0)
      {
        [(PKPaymentAuthorizationStateMachine *)self didCancel];
      }
    }
  }
}

- (void)_performAuthorizationWithParam:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v6 = [v5 requestType];

  v7 = [v4 credential];
  v8 = [v4 nonceData];
  v9 = [v4 cryptogramType];
  v10 = [v4 networkMerchantIdentifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke;
  aBlock[3] = &unk_1E79CE518;
  objc_copyWeak(v64, location);
  v11 = v8;
  v61 = v11;
  v12 = v7;
  v64[1] = v9;
  v64[2] = v6;
  v62 = v12;
  v63 = self;
  v13 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __69__PKPaymentAuthorizationStateMachine__performAuthorizationWithParam___block_invoke_345;
  v52[3] = &unk_1E79CE540;
  v35 = v11;
  v53 = v35;
  v14 = v12;
  v54 = v14;
  v59[1] = v9;
  v33 = v10;
  v55 = v33;
  v56 = self;
  v34 = v4;
  v57 = v34;
  v15 = v13;
  v58 = v15;
  objc_copyWeak(v59, location);
  v59[2] = v6;
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
  v23 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([v23 isPeerPaymentRequest])
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

  v26 = [v23 requestType];
  v27 = v22;
  if (v26 == 2 || (v28 = [v23 requestType], v27 = v22, v28 == 4) || (v29 = objc_msgSend(v23, "requestType"), v27 = v37, v29 == 5))
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
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model itemForType:3];
  v5 = [v4 paymentApplication];

  v6 = [v3 currencyCode];
  v7 = [v3 countryCode];
  v8 = [v3 _transactionAmount];
  v9 = [v3 merchantCapabilities];
  v10 = [v3 supportedNetworks];
  v11 = objc_alloc_init(PKInAppPaymentSessionAuthorizationRequest);
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setPaymentApplication:v5];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCurrencyCode:v6];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCountryCode:v7];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setTransactionAmount:v8];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantCapabilities:v9];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setSupportedNetworks:v10];
  v12 = [v3 merchantIdentifier];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantIdentifier:v12];

  v13 = [v3 applicationData];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setApplicationData:v13];

  v14 = [v3 merchantSession];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantSession:v14];

  return v11;
}

- (void)_applyShippingInformationToPayment:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if ([v5 requestType] != 10)
  {
    v6 = [v5 requiredShippingContactFields];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 requiredShippingContactFields];
      v9 = [v8 containsObject:@"email"];

      if (v9)
      {
        v10 = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];
        v11 = [v10 emailAddresses];
        v12 = [v11 firstObject];

        v13 = MEMORY[0x1E695CEE0];
        v14 = [v12 value];
        v15 = [v13 labeledValueWithLabel:@"Shipping" value:v14];
        v42[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
      }

      else
      {
        v16 = 0;
      }

      v17 = [v5 requiredShippingContactFields];
      v18 = [v17 containsObject:@"phone"];

      if (v18)
      {
        v19 = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];
        v20 = [v19 phoneNumbers];
        v21 = [v20 firstObject];

        v22 = MEMORY[0x1E695CEE0];
        v23 = [v21 value];
        v24 = [v22 labeledValueWithLabel:@"Shipping" value:v23];
        v41 = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      }

      else
      {
        v25 = 0;
      }

      v26 = [v5 isShippingEditable];
      v27 = [v5 requiredShippingContactFields];
      v28 = [v27 containsObject:@"post"];

      v29 = [v5 requiredShippingContactFields];
      v30 = [v29 containsObject:@"name"];

      v31 = v28 & v26;
      if (v28)
      {
        v32 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
        v33 = [(PKPaymentAuthorizationDataModel *)self->_model shippingAddress];
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      if (!(v31 & 1 | ((v30 & 1) == 0)))
      {
        v34 = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];

        v33 = v34;
      }

      v35 = MEMORY[0x1E695CD58];
      v36 = [v33 nameComponents];
      v37 = [v32 postalAddresses];
      v38 = [v35 pkContactWithNameComponents:v36 postalAddresses:v37 emailAddresses:v16 phoneNumbers:v25];
      v39 = [v38 sanitizedContact];

      v40 = [[PKContact alloc] initWithCNContact:v39];
      [v4 setShippingContact:v40];
    }
  }
}

- (void)_applyFulfillmentMethodToPayment:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentAuthorizationDataModel *)self->_model shippingMethod];

  if (v4)
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self->_model shippingMethod];
    [v6 setShippingMethod:v5];
  }
}

- (void)_applyBillingInformationToPayment:(id)a3
{
  model = self->_model;
  v5 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v6 = [(PKPaymentAuthorizationStateMachine *)self _billingInformationFromPaymentRequest:v7];
  [v5 setBillingContact:v6];
}

- (void)_applyBillingInformationToAuthorizedQuote:(id)a3
{
  model = self->_model;
  v5 = a3;
  v7 = [(PKPaymentAuthorizationDataModel *)model paymentRequest];
  v6 = [(PKPaymentAuthorizationStateMachine *)self _billingInformationFromPaymentRequest:v7];
  [v5 setContact:v6];
}

- (id)_billingInformationFromPaymentRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requiredBillingContactFields];
  v6 = [v5 count];

  if ([v4 requestType] != 10)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [v4 requiredBillingContactFields];
    v11 = [v10 containsObject:@"post"];

    if (v11)
    {
      v12 = [(PKPaymentAuthorizationDataModel *)self->_model billingAddress];
    }

    else
    {
      v12 = 0;
    }

    if ([v4 requestType] == 10)
    {
      v13 = [v12 nameComponents];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v20 = [(PKPaymentAuthorizationDataModel *)self->_model shippingName];
        v15 = [v20 nameComponents];
      }

      v21 = [v4 requiredShippingContactFields];
      v22 = [v21 containsObject:@"email"];

      if (v22)
      {
        v23 = [(PKPaymentAuthorizationDataModel *)self->_model shippingEmail];
        v17 = [v23 emailAddresses];
      }

      else
      {
        v17 = 0;
      }

      v24 = [v4 requiredShippingContactFields];
      v25 = [v24 containsObject:@"phone"];

      if (v25)
      {
        v26 = [(PKPaymentAuthorizationDataModel *)self->_model shippingPhone];
        v18 = [v26 phoneNumbers];
      }

      else
      {
        v18 = 0;
      }

      v27 = MEMORY[0x1E695CD58];
      v28 = [v12 postalAddresses];
      v29 = [v27 pkContactWithNameComponents:v15 postalAddresses:v28 emailAddresses:v17 phoneNumbers:v18];
      v19 = [v29 sanitizedContact];
    }

    else
    {
      v16 = MEMORY[0x1E695CD58];
      v15 = [v12 nameComponents];
      v17 = [v12 postalAddresses];
      v18 = [v16 pkContactWithNameComponents:v15 postalAddresses:v17 emailAddresses:0 phoneNumbers:0];
      v19 = [v18 sanitizedContact];
    }

    v9 = [[PKContact alloc] initWithCNContact:v19];
    goto LABEL_21;
  }

  v7 = [v4 requiredShippingContactFields];
  v8 = [v7 count] | v6;

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 0;
LABEL_21:

  return v9;
}

- (id)_transactionWithPaymentToken:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  v6 = [v5 APIType];
  v7 = v6;
  v8 = v6 - 1;
  if ((v6 - 1) >= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (!v6)
  {
    v10 = [v5 merchantSession];

    if (v10)
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
  v12 = [v4 transactionIdentifier];
  [v11 setPaymentHash:v12];

  v13 = [MEMORY[0x1E695DF00] date];
  [v11 setTransactionDate:v13];

  [v11 setTechnologyType:2];
  v14 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [v11 setAmount:v14];

  v15 = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  [v11 setCurrencyCode:v15];

  [v11 addUpdateReasons:2];
  if ([(PKPaymentAuthorizationDataModel *)self->_model fundingMode]== 2)
  {
    v16 = [(PKPaymentAuthorizationDataModel *)self->_model selectedPaymentOffer];
    [v11 setIsIssuerInstallmentTransaction:{objc_msgSend(v16, "type") == 1}];
  }

  else
  {
    [v11 setIsIssuerInstallmentTransaction:0];
  }

  v17 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v18 = [v17 dpanIdentifier];
  [v11 setDPANIdentifier:v18];

  [v11 setPaymentNetworkIdentifier:{objc_msgSend(v17, "paymentNetworkIdentifier")}];
  v19 = objc_alloc_init(PKMerchant);
  v20 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [(PKMerchant *)v19 setName:v20];

  if (v8 >= 2)
  {
    if (!v7)
    {
      v27 = [(PKPaymentAuthorizationStateMachine *)self _adamIdentifier];
      if (v27)
      {
        [(PKMerchant *)v19 setAdamIdentifier:v27];
      }
    }
  }

  else
  {
    v21 = [v5 merchantSession];
    v22 = [v21 merchantIdentifier];
    [(PKMerchant *)v19 setWebMerchantIdentifier:v22];

    v23 = [v21 displayName];
    [(PKMerchant *)v19 setWebMerchantName:v23];

    v24 = MEMORY[0x1E695DFF8];
    v25 = [v21 domain];
    v26 = [v24 URLWithString:v25];
    [(PKMerchant *)v19 setOriginURL:v26];
  }

  [v11 setMerchant:v19];

  return v11;
}

- (unint64_t)_adamIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentRequest];
  if (![v3 APIType])
  {
    v5 = [(PKPaymentAuthorizationDataModel *)self->_model hostApplicationIdentifier];
    v6 = [v5 rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "No bundle ID in app identifier %@", &v13, 0xCu);
      }
    }

    else
    {
      v8 = [v5 substringFromIndex:v6 + v7];
      v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
      v10 = [v9 iTunesMetadata];
      v4 = [v10 storeItemIdentifier];

      if (v4)
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

    v4 = 0;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_13:

  return v4;
}

- (id)_transactionWithPurchase:(id)a3 paymentHash:(id)a4
{
  v5 = a4;
  v6 = [PKPaymentTransaction paymentTransactionWithSource:2];
  [v6 setOriginatedByDevice:1];
  [v6 setPaymentHash:v5];

  v7 = [MEMORY[0x1E695DF00] date];
  [v6 setTransactionDate:v7];

  [v6 setTechnologyType:2];
  v8 = [(PKPaymentAuthorizationDataModel *)self->_model transactionAmount];
  [v6 setAmount:v8];

  v9 = [(PKPaymentAuthorizationDataModel *)self->_model currencyCode];
  [v6 setCurrencyCode:v9];

  [v6 addUpdateReasons:2];
  v10 = objc_alloc_init(PKMerchant);
  v11 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
  [(PKMerchant *)v10 setName:v11];

  [v6 setMerchant:v10];

  return v6;
}

- (void)_promptTapToRadar
{
  if (os_variant_has_internal_ui() && self->_paymentService && self->_failureStatusCount == 2)
  {
    v9 = objc_alloc_init(PKTapToRadarRequest);
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
    v5 = [v3 stringWithFormat:@"Apple Pay failed in %@", v4];
    [(PKTapToRadarRequest *)v9 setReason:v5];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(PKPaymentAuthorizationDataModel *)self->_model merchantName];
    v8 = [v6 stringWithFormat:@"Apple Pay failure detected in %@", v7];
    [(PKTapToRadarRequest *)v9 setAlertHeader:v8];

    [(PKTapToRadarRequest *)v9 setAlertMessage:@"Help improve Apple Pay by reporting this problem."];
    [(PKPaymentService *)self->_paymentService displayTapToRadarAlertForRequest:v9 completion:0];
  }
}

- (void)_reportToAutoBugCapture:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_ui() && self->_failureStatusCount == 1)
  {
    v4 = objc_alloc_init(PKAutoBugCaptureReporter);
    [(PKAutoBugCaptureReporter *)v4 reportIssueWithDomain:@"Wallet" type:@"PKPaymentAuthorization" subtype:@"StatusFailure" subtypeContext:v5 payload:0];
  }
}

- (void)_simulatePayment
{
  v3 = [(PKPaymentAuthorizationDataModel *)self->_model paymentApplication];
  v4 = PKPaymentNetworkNameForPaymentCredentialType([v3 paymentNetworkIdentifier]);

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

- (void)_reportAnalyticsTransactionAuthorizationWithAdditionalDictionary:(id)a3 eventType:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 addObject:@"inApp"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 addEntriesFromDictionary:v6];
  v10 = [(PKPaymentAuthorizationStateMachine *)self _additionalRelevantAnalyticsDictionary];
  [v9 addEntriesFromDictionary:v10];

  [v9 setObject:v7 forKey:@"eventType"];
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

- (void)_trackCouponCodeOutcomeWithError:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = [(PKPaymentAuthorizationDataModel *)self->_model couponCode];
    v10 = [v9 length];

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

  v6 = [v4 domain];
  v7 = [v6 isEqualToString:@"PKPaymentErrorDomain"];

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
      v16 = [v5 userInfo];
      v17 = [v16 PKStringForKey:*MEMORY[0x1E696A578]];

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