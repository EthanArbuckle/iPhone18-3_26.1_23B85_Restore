@interface PKPeerPaymentController
+ (id)_displayNameForRecipientAddress:(id)a3 contactResolver:(id)a4 foundInContacts:(BOOL *)a5;
+ (id)_displayableErrorOverrideForUnderlyingError:(id)a3;
+ (id)_paymentNotCompletedErrorWithError:(id)a3;
+ (id)_peerPaymentPassURL;
+ (id)displayNameForAddress:(id)a3 contactResolver:(id)a4;
+ (id)displayableErrorForError:(id)a3;
+ (unint64_t)proposedResolutionForError:(id)a3;
+ (void)_sendAuthorizedQuoteAnalyticsWithSuccess:(BOOL)a3 mode:(unint64_t)a4 authorizedQuote:(id)a5 status:(int64_t)a6;
+ (void)performNearbyAuthorizedQuote:(id)a3 completion:(id)a4;
- (BOOL)_contactInfoIsValidForAuthorizedQuote:(id)a3 errors:(id *)a4;
- (BOOL)_determineCurrentGroupMessageSupport;
- (BOOL)_ensureState:(unint64_t)a3;
- (BOOL)_isValidResponse:(id)a3;
- (BOOL)allowsPaymentRequests;
- (BOOL)restoreStateWithExternalizedControllerState:(id)a3;
- (PKPeerPaymentController)initWithPeerPaymentWebService:(id)a3 queue:(id)a4;
- (PKPeerPaymentControllerDelegate)delegate;
- (id)_contactResolver;
- (id)_defaultAlternateFundingSourceForMode:(unint64_t)a3;
- (id)_featureDescriptorForMode:(unint64_t)a3;
- (id)analyticsSessionSubjectForPaymentAuthorizationCoordinator:(id)a3;
- (id)analyticsSessionTokenForPaymentAuthorizationCoordinator:(id)a3;
- (id)contactForHandle:(id)a3;
- (id)displayNameForRecipientAddress:(id)a3 foundInContacts:(BOOL *)a4;
- (id)displayableErrorForError:(id)a3;
- (id)externalizedControllerState;
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (id)summaryItemsForQuote:(id)a3;
- (unint64_t)_peerPaymentRequestTypeFromControllerMode:(unint64_t)a3;
- (void)_handleAccountChanged:(id)a3;
- (void)_performAuthorizedQuote:(id)a3 completion:(id)a4;
- (void)_prepareRecipientForCache:(id)a3 conversationAddress:(id)a4;
- (void)_refreshRecipientWithCompletion:(id)a3;
- (void)_requestQuoteWithRequest:(id)a3 withCompletion:(id)a4;
- (void)_resetToState:(unint64_t)a3;
- (void)_sendAnalyticsForQuote:(id)a3 withRequest:(id)a4;
- (void)_setState:(unint64_t)a3 notify:(BOOL)a4;
- (void)_updateLastUsedAlternateFundingSource;
- (void)_updateSupportsGroupMessageIfNeeded;
- (void)authorizeQuote:(id)a3 performOnAuthorization:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)formalRequestTokenForAmount:(id)a3 source:(unint64_t)a4 completion:(id)a5;
- (void)handleIdentityVerificationWithError:(id)a3 completion:(id)a4;
- (void)handleTermsAcceptanceRequiredWithError:(id)a3 completion:(id)a4;
- (void)identifyRecipientDebitCardWithCompletion:(id)a3;
- (void)identifyRecipientSelf;
- (void)identifyRecipientWithConversationAddress:(id)a3 senderAddress:(id)a4 completion:(id)a5;
- (void)identifyRecipientWithRoutingNumber:(id)a3 accountNumber:(id)a4 accountName:(id)a5 completion:(id)a6;
- (void)identifyRecipientsWithConversationAddresses:(id)a3 senderAddress:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)performAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5;
- (void)performPendingRequestAction:(id)a3 withRequestToken:(id)a4 completion:(id)a5;
- (void)performQuote:(id)a3 completion:(id)a4;
- (void)quoteWithAmount:(id)a3 source:(unint64_t)a4 requestToken:(id)a5 alternateFundingSource:(id)a6 preserveCurrentBalance:(unint64_t)a7 recurringPaymentIdentifier:(id)a8 frequency:(unint64_t)a9 startDate:(id)a10 threshold:(id)a11 completion:(id)a12;
- (void)requestTokenForAmount:(id)a3 completion:(id)a4;
- (void)reset;
- (void)resetQuote;
- (void)selectIdentifiedRecipient:(id)a3;
- (void)selectMode:(unint64_t)a3;
- (void)setMessagesContext:(unint64_t)a3;
- (void)statusForPaymentIdentifier:(id)a3 withCompletion:(id)a4;
@end

@implementation PKPeerPaymentController

- (PKPeerPaymentController)initWithPeerPaymentWebService:(id)a3 queue:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (PKUseMockSURFServer() && (v9 = objc_opt_class(), v9 == objc_opt_class()))
  {
    v27 = [[PKMockPeerPaymentController alloc] initWithPeerPaymentWebService:v7];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PKPeerPaymentController;
    v10 = [(PKPeerPaymentController *)&v30 init];
    if (v10)
    {
      v11 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v32 = v10;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: %p initWithPeerPaymentWebService: %@", buf, 0x16u);
      }

      if (v8)
      {
        v12 = v8;
        queue = v10->_queue;
        v10->_queue = v12;
      }

      else
      {
        v14 = MEMORY[0x1E69E96A0];
        v15 = MEMORY[0x1E69E96A0];
        queue = v10->_queue;
        v10->_queue = v14;
      }

      v16 = objc_alloc_init(PKPeerPaymentControllerInternalState);
      is = v10->_is;
      v10->_is = v16;

      objc_storeStrong(&v10->_webService, a3);
      v10->_is->state = 1;
      v10->_is->mode = 0;
      v10->_is->peerPaymentType = 0;
      v18 = [(PKPeerPaymentWebService *)v10->_webService peerPaymentService];
      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 addObserver:v10 selector:sel__handleAccountChanged_ name:@"PKPeerPaymentServiceAccountChangedNotification" object:v18];

      v20 = [v18 account];
      account = v10->_account;
      v10->_account = v20;

      v22 = +[PKPassLibrary sharedInstance];
      v23 = [(PKPeerPaymentAccount *)v10->_account associatedPassUniqueID];
      v24 = [v22 passWithUniqueID:v23];
      v25 = [v24 paymentPass];
      peerPaymentPass = v10->_peerPaymentPass;
      v10->_peerPaymentPass = v25;

      v10->_is->supportsGroupMessage = [(PKPeerPaymentController *)v10 _determineCurrentGroupMessageSupport];
      v10->_is->supportsPreserveCurrentBalance = [(PKPeerPaymentAccount *)v10->_account supportsPreserveCurrentBalance];
    }

    v27 = v10;
    self = &v27->super;
  }

  p_super = &v27->super;

  return p_super;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentController;
  [(PKPeerPaymentController *)&v4 dealloc];
}

- (void)_setState:(unint64_t)a3 notify:(BOOL)a4
{
  v22 = *MEMORY[0x1E69E9840];
  state = self->_is->state;
  if (state != a3)
  {
    v5 = a4;
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PKPeerPaymentControllerStateToString(state);
      v10 = PKPeerPaymentControllerStateToString(a3);
      v11 = v10;
      v12 = @"NO";
      v14 = 134218754;
      v15 = self;
      if (v5)
      {
        v12 = @"YES";
      }

      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Changed state. From %{public}@ -> %{public}@. (shouldNotify: %{public}@)", &v14, 0x2Au);
    }

    self->_is->state = a3;
    if (v5)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 postNotificationName:PKPeerPaymentControllerStateDidChangeNotification object:self];
    }
  }
}

- (BOOL)_ensureState:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  state = self->_is->state;
  if (state != a3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = PKPeerPaymentControllerStateToString(a3);
    v8 = PKPeerPaymentControllerStateToString(self->_is->state);
    v9 = [v6 stringWithFormat:@"PKPeerPaymentController: Error: Invalid state detected. (Expected: %@, Actual: %@)", v7, v8];

    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v9}];
  }

  return state == a3;
}

- (void)reset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Reset called.", &v5, 0xCu);
  }

  if ([(PKPeerPaymentController *)self supportsGroupMessage])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(PKPeerPaymentController *)self _resetToState:v4];
}

- (void)resetQuote
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Reset quote called.", &v5, 0xCu);
  }

  if ([(PKPeerPaymentController *)self _ensureState:5])
  {
    if ([(PKPeerPaymentController *)self supportsGroupMessage])
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    [(PKPeerPaymentController *)self _resetToState:v4];
  }
}

- (void)_resetToState:(unint64_t)a3
{
  is = self->_is;
  if (is->state == a3)
  {
    return;
  }

  if (a3 <= 3)
  {
    if (a3 - 1 >= 2)
    {
      if (a3)
      {
        if (a3 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      is->messagesContext = 0;
      v7 = self->_is;
      recipientAddresses = v7->recipientAddresses;
      v7->recipientAddresses = 0;

      is = self->_is;
    }

    is->mode = 0;
    self->_is->peerPaymentType = 0;
    is = self->_is;
LABEL_15:
    recipient = is->recipient;
    is->recipient = 0;

    v10 = self->_is;
    accountNumber = v10->accountNumber;
    v10->accountNumber = 0;

    v12 = self->_is;
    routingNumber = v12->routingNumber;
    v12->routingNumber = 0;

    v14 = self->_is;
    accountName = v14->accountName;
    v14->accountName = 0;

    v16 = self->_is;
    quoteCertificatesResponse = v16->quoteCertificatesResponse;
    v16->quoteCertificatesResponse = 0;

    is = self->_is;
LABEL_16:
    requestToken = is->requestToken;
    is->requestToken = 0;

    is = self->_is;
LABEL_17:
    quote = is->quote;
    is->quote = 0;

    v20 = self->_is;
    quoteRequest = v20->quoteRequest;
    v20->quoteRequest = 0;

    v22 = self->_is;
    recurringPaymentIdentifier = v22->recurringPaymentIdentifier;
    v22->recurringPaymentIdentifier = 0;

    v24 = self->_is;
    startDate = v24->startDate;
    v24->startDate = 0;

    self->_is->frequency = 0;
    v26 = self->_is;
    threshold = v26->threshold;
    v26->threshold = 0;

LABEL_18:
    self->_quoteAuthorizationSuccess = 0;
    quoteAuthorizationError = self->_quoteAuthorizationError;
    self->_quoteAuthorizationError = 0;

    [(PKPaymentAuthorizationCoordinator *)self->_quoteAuthorizationCoordinator dismissWithCompletion:0];
    quoteAuthorizationCoordinator = self->_quoteAuthorizationCoordinator;
    self->_quoteAuthorizationCoordinator = 0;

    self->_performOnAuthorization = 0;
    is = self->_is;
    goto LABEL_19;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a3 != 6)
  {
    if (a3 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_19:
  performQuoteResponse = is->performQuoteResponse;
  is->performQuoteResponse = 0;

  self->_performQuoteSuccess = 0;
  performQuoteError = self->_performQuoteError;
  self->_performQuoteError = 0;

LABEL_20:

  [(PKPeerPaymentController *)self _setState:a3 notify:1];
}

- (id)externalizedControllerState
{
  v16 = *MEMORY[0x1E69E9840];
  is = self->_is;
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:is requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_is;
      *buf = 134218498;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Failed to archive controller state: %@, error: %@", buf, 0x20u);
    }
  }

  return v4;
}

- (BOOL)restoreStateWithExternalizedControllerState:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_13;
  }

  v19 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v16 = objc_opt_class();
      v17 = *MEMORY[0x1E696A508];
      v18 = 0;
      v8 = [v5 decodeTopLevelObjectOfClass:v16 forKey:v17 error:&v18];
      v7 = v18;
      [v5 finishDecoding];
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    [v5 finishDecoding];
  }

  v8 = 0;
LABEL_6:
  v9 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v21 = self;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Failed to init unarchiver with peer payment controller state data: %@ %@.", buf, 0x20u);
  }

LABEL_9:
  if (!v8)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  [(PKPeerPaymentController *)self reset];
  is = self->_is;
  self->_is = v8;
  v11 = v8;

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:PKPeerPaymentControllerStateDidChangeNotification object:self];

  v13 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = self;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Successfully restored controller state.", buf, 0xCu);
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (void)identifyRecipientWithConversationAddress:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v19 = self;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: identifyRecipientWithConversationAddress: %@ senderAddress: %@ called.", buf, 0x20u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:1])
  {
    if (v8)
    {
      v12 = dispatch_get_global_queue(2, 0);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __93__PKPeerPaymentController_identifyRecipientWithConversationAddress_senderAddress_completion___block_invoke;
      v13[3] = &unk_1E79C4EF0;
      v14 = v8;
      v15 = self;
      v16 = v9;
      v17 = v10;
      dispatch_async(v12, v13);
    }

    else
    {
      (*(v10 + 2))(v10, 2, 0, 0);
    }
  }
}

void __93__PKPeerPaymentController_identifyRecipientWithConversationAddress_senderAddress_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[PKPeerPaymentRecipientCache sharedCache];
  v3 = [v2 recipientForRecipientAddress:*(a1 + 32)];

  if (v3)
  {
    [*(a1 + 40) _prepareRecipientForCache:v3 conversationAddress:*(a1 + 32)];
    v4 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 134218498;
      v26 = v19;
      v27 = 2112;
      v28 = v3;
      v29 = 2112;
      v30 = v20;
      _os_log_debug_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEBUG, "PKPeerPaymentController %p: Found a cached recipient: %@ for conversation address: %@.", buf, 0x20u);
    }

    v5 = [*(a1 + 48) copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
    v8 = *(a1 + 40);
    if (*(v8[1] + 8) == 1)
    {
      [v8 _setState:2 notify:1];
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, [v3 status], v3, 0);
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 134218242;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_INFO, "PKPeerPaymentController %p: No cached recipient for conversation address: %@. Attempting remote lookup request.", buf, 0x16u);
    }

    v13 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __93__PKPeerPaymentController_identifyRecipientWithConversationAddress_senderAddress_completion___block_invoke_65;
    v22[3] = &unk_1E79D39A0;
    v21 = *(a1 + 32);
    v14 = *(v21.i64[1] + 128);
    v15 = v21.i64[0];
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v23 = vextq_s8(v21, v21, 8uLL);
    v24 = v18;
    [v14 peerPaymentRecipientForRecipientAddress:v15 senderAddress:v13 source:1 completion:v22];
  }
}

void __93__PKPeerPaymentController_identifyRecipientWithConversationAddress_senderAddress_completion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 recipient];
  v7 = v6;
  if (v5 || !v6)
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v22 = 134218498;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v5;
      _os_log_error_impl(&dword_1AD337000, v15, OS_LOG_TYPE_ERROR, "PKPeerPaymentController %p: Remote recipient lookup failed for conversation address: %@ with error: %@.", &v22, 0x20u);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [*(a1 + 32) displayableErrorForError:v5];
      (*(v16 + 16))(v16, 0, 0, v17);
    }
  }

  else
  {
    [*(a1 + 32) _prepareRecipientForCache:v6 conversationAddress:*(a1 + 40)];
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = 134218498;
      v23 = v20;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v21;
      _os_log_debug_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEBUG, "PKPeerPaymentController %p: Remote recipient lookup succeeded with recipient: %@ for conversation address: %@.", &v22, 0x20u);
    }

    v9 = [*(a1 + 48) copy];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
    v12 = +[PKPeerPaymentRecipientCache sharedCache];
    [v12 cacheRecipient:v7];

    v13 = *(a1 + 32);
    if (*(v13[1] + 8) == 1)
    {
      [v13 _setState:2 notify:1];
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, [v7 status], v7, 0);
    }
  }
}

- (void)_refreshRecipientWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPeerPaymentRecipient *)self->_is->recipient idsQualifiedNormalizedAddress];
  v6 = PKLogFacilityTypeGetObject(0xCuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Refreshing recipient %@.", buf, 0x16u);
    }

    v8 = +[PKPeerPaymentRecipientCache sharedCache];
    [v8 purgeRecipientWithRecipientAddress:v5];

    webService = self->_webService;
    senderAddress = self->_is->senderAddress;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PKPeerPaymentController__refreshRecipientWithCompletion___block_invoke;
    v12[3] = &unk_1E79D39C8;
    v12[4] = self;
    v13 = v5;
    v14 = v4;
    [(PKPeerPaymentWebService *)webService peerPaymentRecipientForRecipientAddress:v13 senderAddress:senderAddress source:1 completion:v12];
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      v16 = self;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Asked to refresh a nil recipientPhoneOrEmail. Refusing.", buf, 0xCu);
    }

    if (v4)
    {
      v11 = [(PKPeerPaymentController *)self displayableErrorForError:0];
      (*(v4 + 2))(v4, 0, v11);
    }
  }
}

void __59__PKPeerPaymentController__refreshRecipientWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 recipient];
  v7 = v6;
  if (v5 || !v6)
  {
    v16 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 134218498;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Remote recipient lookup failed for address: %@ with error: %@. Recipient is no longer valid. Notifying and returning shouldContinue NO.", buf, 0x20u);
    }

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:PKPeerPaymentControllerRecipientDidBecomeInvalidNotification object:*(a1 + 32)];

    [*(a1 + 32) _resetToState:1];
    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = [*(a1 + 32) displayableErrorForError:v5];
      (*(v20 + 16))(v20, 0, v21);
    }
  }

  else
  {
    [*(a1 + 32) _prepareRecipientForCache:v6 conversationAddress:*(a1 + 40)];
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 134218498;
      v30 = v9;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Recipient refresh succeeded with recipient: %@ for address: %@.", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
    v11 = +[PKPeerPaymentRecipientCache sharedCache];
    [v11 cacheRecipient:v7];

    v12 = [*(*(*(a1 + 32) + 8) + 40) status];
    v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v13)
      {
        v14 = *(a1 + 32);
        *buf = 134217984;
        v30 = v14;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Recipient is still valid. Returning shouldContinue YES.", buf, 0xCu);
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        (*(v15 + 16))(v15, 1, 0);
      }
    }

    else
    {
      if (v13)
      {
        v22 = *(a1 + 32);
        *buf = 134217984;
        v30 = v22;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Recipient is no longer valid. Notifying and returning shouldContinue NO.", buf, 0xCu);
      }

      v23 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_7.isa, 0);
      v24 = [*(*(*(a1 + 32) + 8) + 40) displayName];
      v25 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_8.isa, &stru_1F2281668.isa, v24);
      v26 = PKDisplayableErrorCustomWithType(-1, v23, v25, 0, 0);

      v27 = [MEMORY[0x1E696AD88] defaultCenter];
      [v27 postNotificationName:PKPeerPaymentControllerRecipientDidBecomeInvalidNotification object:*(a1 + 32)];

      [*(a1 + 32) _resetToState:1];
      v28 = *(a1 + 48);
      if (v28)
      {
        (*(v28 + 16))(v28, 0, v26);
      }
    }
  }
}

- (void)_prepareRecipientForCache:(id)a3 conversationAddress:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = PKIDSNormalizedAddress(v6);
  v8 = PKIDSSanitizedAddress(v7);
  [v13 setConversationAddress:v6];

  [v13 setNormalizedAddress:v8];
  [v13 setIDSQualifiedNormalizedAddress:v7];
  v9 = [v13 conversationAddress];
  v10 = [v13 displayName];

  if (!v10 && v9)
  {
    v11 = [(PKPeerPaymentController *)self displayNameForRecipientAddress:v9];
    v12 = [v11 copy];

    [v13 setDisplayName:v12];
  }
}

- (void)identifyRecipientWithRoutingNumber:(id)a3 accountNumber:(id)a4 accountName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: identifyRecipientWithRoutingNumber:accountNumber:accountName:completion: called.", buf, 2u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:1])
  {
    webService = self->_webService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PKPeerPaymentController_identifyRecipientWithRoutingNumber_accountNumber_accountName_completion___block_invoke;
    v16[3] = &unk_1E79D39F0;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    v19 = v12;
    v20 = v13;
    [(PKPeerPaymentWebService *)webService peerPaymentQuoteCertificatesForDestination:2 completion:v16];
  }
}

void __99__PKPeerPaymentController_identifyRecipientWithRoutingNumber_accountNumber_accountName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v7)
  {
    if (v9)
    {
      v22 = *(a1 + 32);
      v25 = 134218242;
      v26 = v22;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: Get quote certificates failed with error: %@.", &v25, 0x16u);
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      v24 = [*(a1 + 32) displayableErrorForError:v7];
      (*(v23 + 16))(v23, 0, v24);
    }
  }

  else
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v25 = 134218242;
      v26 = v10;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Get quote certificates succeeded with certificates response: %@.", &v25, 0x16u);
    }

    v11 = [*(a1 + 40) copy];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 104);
    *(v12 + 104) = v11;

    v14 = [*(a1 + 48) copy];
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 112);
    *(v15 + 112) = v14;

    v17 = [*(a1 + 56) copy];
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 96);
    *(v18 + 96) = v17;

    objc_storeStrong((*(*(a1 + 32) + 8) + 88), a2);
    v20 = *(a1 + 32);
    if (*(v20[1] + 8) == 1)
    {
      [v20 _setState:2 notify:1];
    }

    v21 = *(a1 + 64);
    if (v21)
    {
      (*(v21 + 16))(v21, 1, 0);
    }
  }
}

- (void)identifyRecipientDebitCardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: identifyRecipientDebitCardWithCompletion: called.", buf, 2u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:1])
  {
    webService = self->_webService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PKPeerPaymentController_identifyRecipientDebitCardWithCompletion___block_invoke;
    v7[3] = &unk_1E79D3A18;
    v7[4] = self;
    v8 = v4;
    [(PKPeerPaymentWebService *)webService peerPaymentQuoteCertificatesForDestination:4 completion:v7];
  }
}

void __68__PKPeerPaymentController_identifyRecipientDebitCardWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v7)
  {
    if (v9)
    {
      v13 = *(a1 + 32);
      v16 = 134218242;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: Get quote certificates failed with error: %@.", &v16, 0x16u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = [*(a1 + 32) displayableErrorForError:v7];
      (*(v14 + 16))(v14, 0, v15);
    }
  }

  else
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v16 = 134218242;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Get quote certificates succeeded with certificates response: %@.", &v16, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 88), a2);
    v11 = *(a1 + 32);
    if (*(v11[1] + 8) == 1)
    {
      [v11 _setState:2 notify:1];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 1, 0);
    }
  }
}

- (void)identifyRecipientSelf
{
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: identifyRecipientSelf:accountNumber: called.", v4, 2u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:1])
  {
    if (self->_is->state == 1)
    {
      [(PKPeerPaymentController *)self _setState:2 notify:1];
    }
  }
}

- (void)identifyRecipientsWithConversationAddresses:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v34 = v9;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: identifyRecipientsWithConversationAddresses: %@ senderAddress: %@ called.", buf, 0x20u);
  }

  if (![(PKPeerPaymentController *)self _ensureState:1])
  {
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_8;
  }

  if (![v8 count])
  {
    goto LABEL_7;
  }

  v12 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__30;
  v35 = __Block_byref_object_dispose__30;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__30;
  v31[4] = __Block_byref_object_dispose__30;
  v32 = 0;
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke;
  v24[3] = &unk_1E79CF568;
  objc_copyWeak(&v29, &location);
  v13 = v8;
  v25 = v13;
  v27 = buf;
  v14 = v9;
  v26 = v14;
  v28 = v31;
  [(PKAsyncUnaryOperationComposer *)v12 addOperation:v24];
  v15 = [MEMORY[0x1E695DFB0] null];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke_82;
  v17[3] = &unk_1E79D3A68;
  objc_copyWeak(&v23, &location);
  v20 = v10;
  v21 = v31;
  v18 = v14;
  v19 = v13;
  v22 = buf;
  v16 = [(PKAsyncUnaryOperationComposer *)v12 evaluateWithInput:v15 completion:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(buf, 8);
LABEL_8:
}

void __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:*(a1 + 32)];
  if (WeakRetained)
  {
    v24 = WeakRetained;
    v23 = v7;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          v16 = +[PKPeerPaymentRecipientCache sharedCache];
          v17 = [v16 recipientForRecipientAddress:v15];

          if (v17)
          {
            v18 = PKLogFacilityTypeGetObject(0xCuLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              v38 = v24;
              v39 = 2112;
              v40 = v17;
              v41 = 2112;
              v42 = v15;
              _os_log_debug_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEBUG, "PKPeerPaymentController %p: Found a cached recipient: %@ for address: %@.", buf, 0x20u);
            }

            [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
            [v9 removeObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      WeakRetained = v24;
      v19 = v24[16];
      v20 = *(a1 + 40);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke_77;
      v25[3] = &unk_1E79D3A40;
      v26 = v9;
      v27 = v24;
      v31 = *(a1 + 48);
      v21 = *(a1 + 32);
      v22 = *(a1 + 56);
      v28 = v21;
      v32 = v22;
      v7 = v23;
      v30 = v23;
      v29 = v6;
      [v19 peerPaymentRecipientsForRecipientAddresses:v26 senderAddress:v20 source:1 completion:v25];
    }

    else
    {
      v7 = v23;
      (v23)[2](v23, v6, 0);
      WeakRetained = v24;
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 recipients];
  v7 = [v6 count];
  if (v5 || !v7)
  {
    v26 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      *buf = 134218498;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      v43 = 2112;
      v44 = v5;
      _os_log_error_impl(&dword_1AD337000, v26, OS_LOG_TYPE_ERROR, "PKPeerPaymentController %p: Remote recipients lookup failed for conversation addresses: %@ with error: %@.", buf, 0x20u);
    }

    v27 = *(*(a1 + 80) + 8);
    v28 = v5;
    v8 = *(v27 + 40);
    *(v27 + 40) = v28;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v14 idsQualifiedNormalizedAddress];

          if (v15)
          {
            v16 = [v14 idsQualifiedNormalizedAddress];
            [v8 setObject:v14 forKeyedSubscript:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v11);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = *(a1 + 32);
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = PKIDSNormalizedAddress(v22);
          v24 = [v8 objectForKeyedSubscript:v23];

          if (v24)
          {
            [*(a1 + 40) _prepareRecipientForCache:v24 conversationAddress:v22];
            [*(*(*(a1 + 72) + 8) + 40) addObject:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v19);
    }

    v25 = +[PKPeerPaymentRecipientCache sharedCache];
    [v25 cacheRecipients:*(*(*(a1 + 72) + 8) + 40)];

    v5 = 0;
  }

  (*(*(a1 + 64) + 16))();
}

void __96__PKPeerPaymentController_identifyRecipientsWithConversationAddresses_senderAddress_completion___block_invoke_82(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (([v11 isCanceled] & 1) == 0 && !*(*(*(a1 + 56) + 8) + 40))
    {
      [WeakRetained _setState:2 notify:1];
      v6 = [*(a1 + 32) copy];
      v7 = WeakRetained[1];
      v8 = *(v7 + 32);
      *(v7 + 32) = v6;

      objc_storeStrong((WeakRetained[1] + 176), *(a1 + 40));
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = [*(*(*(a1 + 64) + 8) + 40) copy];
      (*(v9 + 16))(v9, v10, *(*(*(a1 + 56) + 8) + 40));
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)selectIdentifiedRecipient:(id)a3
{
  v10 = a3;
  v5 = [(PKPeerPaymentController *)self _ensureState:3];
  if (v10 && v5)
  {
    v6 = [v10 conversationAddress];
    v7 = [v10 displayName];

    if (!v7 && v6)
    {
      v8 = [(PKPeerPaymentController *)self displayNameForRecipientAddress:v6];
      v9 = [v8 copy];

      [v10 setDisplayName:v9];
    }

    objc_storeStrong(&self->_is->recipient, a3);
    [(PKPeerPaymentController *)self _setState:4 notify:1];
  }
}

- (void)selectMode:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKPeerPaymentControllerModeToString(a3);
    v7 = PKPeerPaymentControllerModeToString(self->_is->mode);
    v14 = 134218498;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: selectMode: called. New mode: %{public}@ (previous mode: %{public}@)", &v14, 0x20u);
  }

  is = self->_is;
  if (is->state >= 3)
  {
    [(PKPeerPaymentController *)self _resetToState:2];
    is = self->_is;
  }

  if (a3 && is->mode != a3)
  {
    is->mode = a3;
    self->_is->peerPaymentType = [(PKPeerPaymentController *)self _peerPaymentRequestTypeFromControllerMode:self->_is->mode];
    state = self->_is->state;
    if (a3 == 1 && state == 2)
    {
      if ([(PKPeerPaymentController *)self supportsGroupMessage]&& !self->_is->recipient)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      goto LABEL_27;
    }

    v13 = (a3 == 5 || (a3 & 0xFFFFFFFFFFFFFFFDLL) == 4) && state == 2;
    v10 = 4;
    if (a3 == 2 || v13)
    {
      goto LABEL_27;
    }

    if (a3 == 3 && state == 2)
    {
      v10 = 7;
LABEL_27:
      [(PKPeerPaymentController *)self _setState:v10 notify:1];
    }
  }
}

- (id)_featureDescriptorForMode:(unint64_t)a3
{
  v5 = [(PKPeerPaymentController *)self account];
  v6 = v5;
  v7 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      is = self->_is;
      if (is->recurringPaymentIdentifier || is->startDate || is->frequency)
      {
        v8 = [v5 recurringPaymentsFeatureDescriptor];
      }

      else
      {
        v8 = [v5 sendToUserFeatureDescriptor];
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v8 = [v5 deviceTapFeatureDescriptor];
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v8 = [v5 requestFromUserFeatureDescriptor];
        break;
      case 5uLL:
        v8 = [v5 loadFromCardFeatureDescriptor];
        break;
      case 6uLL:
        v8 = [v5 instantWithdrawalPromotionFeatureDescriptor];
        break;
      default:
        goto LABEL_16;
    }
  }

  v7 = v8;
LABEL_16:

  return v7;
}

- (unint64_t)_peerPaymentRequestTypeFromControllerMode:(unint64_t)a3
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4uLL:
        return 5;
      case 5uLL:
        return 4;
      case 6uLL:
        return 5;
    }

    return 0;
  }

  else if (a3 == 1)
  {
    is = self->_is;
    if (*&is->recurringPaymentIdentifier == 0)
    {
      if (is->frequency)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return a3 == 3;
  }
}

- (BOOL)_determineCurrentGroupMessageSupport
{
  if (self->_is->messagesContext != 2)
  {
    return 0;
  }

  v2 = [(PKPeerPaymentController *)self account];
  v3 = [v2 supportsGroupMessage];

  return v3;
}

- (void)_updateSupportsGroupMessageIfNeeded
{
  v3 = [(PKPeerPaymentController *)self _determineCurrentGroupMessageSupport];
  is = self->_is;
  if (is->supportsGroupMessage != v3)
  {
    is->supportsGroupMessage = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 updateSupportsGroupMessage];
    }
  }
}

- (void)setMessagesContext:(unint64_t)a3
{
  is = self->_is;
  if (is->messagesContext != a3)
  {
    is->messagesContext = a3;
    [(PKPeerPaymentController *)self _updateSupportsGroupMessageIfNeeded];
  }
}

- (void)quoteWithAmount:(id)a3 source:(unint64_t)a4 requestToken:(id)a5 alternateFundingSource:(id)a6 preserveCurrentBalance:(unint64_t)a7 recurringPaymentIdentifier:(id)a8 frequency:(unint64_t)a9 startDate:(id)a10 threshold:(id)a11 completion:(id)a12
{
  v73 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  v62 = a6;
  v59 = a8;
  v61 = a10;
  v60 = a11;
  v20 = a12;
  v21 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v66 = self;
    v67 = 2112;
    v68 = v18;
    v69 = 2112;
    v70 = v19;
    v71 = 2112;
    v72 = v62;
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: quoteWithAmount: %@ requestToken: %@ alternateFundingSource: %@ completion: called.", buf, 0x2Au);
  }

  if ([(PKPeerPaymentController *)self _ensureState:4])
  {
    obj = a8;
    objc_opt_class();
    v57 = v20;
    v22 = a7;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PKPeerPaymentRequestToken alloc] initWithRequestToken:v19 deviceScoreIdentifier:0 expiryDate:0];

      v19 = v23;
    }

    v24 = objc_alloc_init(PKPeerPaymentQuoteRequest);
    v25 = [v18 amount];
    [(PKPeerPaymentQuoteRequest *)v24 setAmount:v25];

    v26 = [v18 currency];
    [(PKPeerPaymentQuoteRequest *)v24 setCurrency:v26];

    [(PKPeerPaymentQuoteRequest *)v24 setRequestToken:v19];
    [(PKPeerPaymentQuoteRequest *)v24 setSenderAddress:self->_is->senderAddress];
    v27 = [(PKPeerPaymentRecipient *)self->_is->recipient conversationAddress];
    [(PKPeerPaymentQuoteRequest *)v24 setRecipientAddress:v27];

    v58 = v24;
    [(PKPeerPaymentQuoteRequest *)v24 setSource:a4];
    if ([(PKPeerPaymentController *)self _modeSupportsExternalFundingSource:self->_is->mode])
    {
      v28 = v62;
      v29 = v22;
      if (v62 || ([(PKPeerPaymentController *)self _defaultAlternateFundingSourceForMode:self->_is->mode], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v58;
        v62 = v28;
        [(PKPeerPaymentQuoteRequest *)v58 updateWithPaymentPass:v28 externalFundingSource:self->_is->mode != 6];
      }

      else
      {
        mode = self->_is->mode;
        v50 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        v30 = v58;
        if (mode == 5)
        {
          if (v50)
          {
            *buf = 134217984;
            v66 = self;
            _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Failed to request top up quote as no suitable payment cards were found.", buf, 0xCu);
          }

          v51 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC.isa, 0);
          v52 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC_0.isa, 0);
          v53 = PKDisplayableErrorCustomWithType(-1, v51, v52, 0, 0);

          v20 = v57;
          (v57)[2](v57, 0, 0, v53);

          v62 = 0;
          goto LABEL_34;
        }

        if (v50)
        {
          *buf = 134217984;
          v66 = self;
          _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: No acceptable alternate funding source available. Proceeding with transfer quote request with caution.", buf, 0xCu);
        }

        v62 = 0;
      }
    }

    else
    {
      v30 = v24;
      v29 = v22;
    }

    if (![(PKPeerPaymentController *)self _modeIsSendType:self->_is->mode])
    {
      LOBYTE(v31) = 0;
      goto LABEL_20;
    }

    if ([(PKPeerPaymentQuoteRequest *)v30 externalFundingSource]!= 1 || !self->_is->supportsPreserveCurrentBalance)
    {
      goto LABEL_18;
    }

    if (v29 == 1)
    {
      v31 = 1;
      goto LABEL_19;
    }

    if (!v29)
    {
      v31 = ([(PKObject *)self->_peerPaymentPass settings]>> 11) & 1;
    }

    else
    {
LABEL_18:
      v31 = 0;
    }

LABEL_19:
    [(PKPeerPaymentQuoteRequest *)v30 setPreserveCurrentBalance:v31];
LABEL_20:
    v32 = self->_is->mode;
    if (v32 > 4)
    {
      if (v32 == 5)
      {
        [(PKPeerPaymentQuoteRequest *)v30 setDestination:3];
        objc_storeStrong(&self->_is->threshold, a11);
        objc_storeStrong(&self->_is->recurringPaymentIdentifier, obj);
        [(PKPeerPaymentQuoteRequest *)v30 setThreshold:self->_is->threshold];
        [(PKPeerPaymentQuoteRequest *)v30 setRecurringPaymentIdentifier:self->_is->recurringPaymentIdentifier];
        goto LABEL_31;
      }

      if (v32 == 6)
      {
        [(PKPeerPaymentQuoteRequest *)v30 setDestination:4];
        goto LABEL_31;
      }
    }

    else
    {
      if (v32 == 2)
      {
        [(PKPeerPaymentQuoteRequest *)v30 setDestination:5];
        [(PKPeerPaymentQuoteRequest *)v30 setDeviceTapFlow:2];
        [(PKPeerPaymentQuoteRequest *)v30 setPaymentMode:2];
        goto LABEL_31;
      }

      if (v32 == 4)
      {
        [(PKPeerPaymentQuoteRequest *)v30 setDestination:2];
        [(PKPeerPaymentQuoteRequest *)v30 setBankName:self->_is->accountName];
        [(PKPeerPaymentQuoteRequest *)v30 setAccountNumber:self->_is->accountNumber];
        [(PKPeerPaymentQuoteRequest *)v30 setRoutingNumber:self->_is->routingNumber];
        [(PKPeerPaymentQuoteRequest *)v30 setQuoteCertificatesResponse:self->_is->quoteCertificatesResponse];
LABEL_31:
        is = self->_is;
        if ((is->peerPaymentType | 2) == 3)
        {
          obja = [(PKPeerPaymentController *)self account];
          v36 = [obja currentBalance];
          v37 = [MEMORY[0x1E696AB90] zero];
          [(PKPeerPaymentController *)self account];
          v38 = v54 = v31;
          v39 = [v38 currentBalance];
          v40 = [v39 currency];
          PKCurrencyAmountCreate(v37, v40, 0);
          v42 = v41 = v18;
          v43 = v19;
          v44 = [v36 currencyAmountGreaterThanCurrencyAmount:v42];

          v18 = v41;
          v30 = v58;

          v45 = v54 | ~v44;
          v19 = v43;
          [(PKPeerPaymentQuoteRequest *)v58 setPreserveCurrentBalance:v45 & 1];
          is = self->_is;
        }

        objc_storeStrong(&is->quoteRequest, v30);
        v46 = [(PKPeerPaymentRequestToken *)v19 copy];
        v47 = self->_is;
        requestToken = v47->requestToken;
        v47->requestToken = v46;

        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __177__PKPeerPaymentController_quoteWithAmount_source_requestToken_alternateFundingSource_preserveCurrentBalance_recurringPaymentIdentifier_frequency_startDate_threshold_completion___block_invoke;
        v63[3] = &unk_1E79CD9D8;
        v63[4] = self;
        v20 = v57;
        v64 = v57;
        [(PKPeerPaymentController *)self _requestQuoteWithRequest:v30 withCompletion:v63];

LABEL_34:
        goto LABEL_35;
      }
    }

    [(PKPeerPaymentQuoteRequest *)v30 setDestination:1];
    v33 = [(PKPeerPaymentRecipient *)self->_is->recipient identifier];
    [(PKPeerPaymentQuoteRequest *)v30 setRecipientIdentifier:v33];

    objc_storeStrong(&self->_is->recurringPaymentIdentifier, obj);
    self->_is->frequency = a9;
    objc_storeStrong(&self->_is->startDate, a10);
    [(PKPeerPaymentQuoteRequest *)v30 setRecurringPaymentIdentifier:self->_is->recurringPaymentIdentifier];
    [(PKPeerPaymentQuoteRequest *)v30 setFrequency:self->_is->frequency];
    [(PKPeerPaymentQuoteRequest *)v30 setStartDate:self->_is->startDate];
    v34 = [MEMORY[0x1E695DEE8] currentCalendar];
    -[PKPeerPaymentQuoteRequest setSendImmediately:](v30, "setSendImmediately:", [v34 isDateInToday:self->_is->startDate]);

    self->_is->peerPaymentType = [(PKPeerPaymentController *)self _peerPaymentRequestTypeFromControllerMode:self->_is->mode];
    if (self->_is->messagesContext == 2)
    {
      [(PKPeerPaymentQuoteRequest *)v30 setPaymentMode:3];
      [(PKPeerPaymentQuoteRequest *)v30 setMessagesContext:self->_is->messagesContext];
    }

    goto LABEL_31;
  }

LABEL_35:
}

void __177__PKPeerPaymentController_quoteWithAmount_source_requestToken_alternateFundingSource_preserveCurrentBalance_recurringPaymentIdentifier_frequency_startDate_threshold_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (*(v8[1] + 8) == 4)
    {
      [v8 _setState:5 notify:1];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v10, v7);
  }
}

- (void)_requestQuoteWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
  [(PKPeerPaymentDeviceScoreAttributes *)v8 setEndpoint:3];
  v9 = [v6 recipientAddress];
  [(PKPeerPaymentDeviceScoreAttributes *)v8 setRecipientAddress:v9];

  -[PKPeerPaymentDeviceScoreAttributes setQuoteRequestDestination:](v8, "setQuoteRequestDestination:", [v6 destination]);
  -[PKPeerPaymentDeviceScoreAttributes setMessagesContext:](v8, "setMessagesContext:", [v6 messagesContext]);
  [(PKPeerPaymentWebService *)self->_webService prewarmDeviceScoreForAttributes:v8];
  webService = self->_webService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPeerPaymentController__requestQuoteWithRequest_withCompletion___block_invoke;
  v13[3] = &unk_1E79D3A90;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(PKPeerPaymentWebService *)webService peerPaymentQuoteWithRequest:v12 completion:v13];
}

void __67__PKPeerPaymentController__requestQuoteWithRequest_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 quote];
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 134218242;
      v28 = v9;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: fetch quote succeeded with quote: %@.", buf, 0x16u);
    }

    objc_storeStrong((*(a1[4] + 1) + 56), v7);
    [v7 setRecipient:*(*(a1[4] + 1) + 40)];
    [v7 setBankName:*(*(a1[4] + 1) + 96)];
    [v7 setAccountNumber:*(*(a1[4] + 1) + 104)];
    [v7 setRoutingNumber:*(*(a1[4] + 1) + 112)];
    [v7 setStartDate:*(*(a1[4] + 1) + 136)];
    [v7 setFrequency:*(*(a1[4] + 1) + 144)];
    [v7 setThreshold:*(*(a1[4] + 1) + 152)];
    v10 = [a1[5] recurringPaymentIdentifier];
    [v7 setIsNewRecurringPayment:v10 == 0];

    [v7 setDestinationType:{objc_msgSend(a1[5], "destination")}];
    v11 = a1[6];
    if (v11)
    {
      v11[2](v11, 1, v7, 0);
    }

    [a1[4] _sendAnalyticsForQuote:v7 withRequest:a1[5]];
    goto LABEL_18;
  }

  v12 = [v5 domain];
  if ([v12 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
  {
    v13 = [v5 code];

    if (v13 == 40001)
    {
      v14 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[4];
        *buf = 134217984;
        v28 = v15;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: fetch quote failed with stale recipient. Refreshing and then re-attempting fetch quote.", buf, 0xCu);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __67__PKPeerPaymentController__requestQuoteWithRequest_withCompletion___block_invoke_98;
      v23[3] = &unk_1E79D1F40;
      v16 = a1[4];
      v17 = a1[5];
      v18 = a1[4];
      v24 = v17;
      v25 = v18;
      v26 = a1[6];
      [v16 _refreshRecipientWithCompletion:v23];

      goto LABEL_18;
    }
  }

  else
  {
  }

  v19 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[4];
    *buf = 134218242;
    v28 = v20;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: Get quote failed with error: %@.", buf, 0x16u);
  }

  v21 = a1[6];
  if (v21)
  {
    v22 = [a1[4] displayableErrorForError:v5];
    (*(v21 + 2))(v21, 0, 0, v22);
  }

LABEL_18:
}

void __67__PKPeerPaymentController__requestQuoteWithRequest_withCompletion___block_invoke_98(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) destination] == 1)
    {
      v3 = *(a1 + 32);
      v4 = [*(*(*(a1 + 40) + 8) + 40) identifier];
      [v3 setRecipientIdentifier:v4];
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);

    [v5 _requestQuoteWithRequest:v6 withCompletion:v7];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) displayableErrorForError:?];
    (*(v8 + 16))(v8, 0, 0, v9);
  }
}

- (void)_sendAnalyticsForQuote:(id)a3 withRequest:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 destination] == 1)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [v6 amount];
    v9 = PKAnalyticsAmountCategoryForAmount(v8);
    [v7 setObject:v9 forKey:@"p2pAmountCategory"];

    v10 = [v6 currency];
    [v7 setObject:v10 forKey:@"p2pCurrency"];

    v11 = MEMORY[0x1E696AD98];
    v12 = [v6 requestToken];
    v13 = [v11 numberWithBool:v12 != 0];
    [v7 setObject:v13 forKey:@"p2pHasRequestToken"];

    v14 = PKPeerPaymentQuoteRequestSourceTypeToString([v6 source]);
    if ([v6 source] && objc_msgSend(v6, "hasUpdatedPaymentMethod"))
    {
      v15 = [v14 stringByAppendingString:@"-update"];

      v14 = v15;
    }

    [v7 setObject:v14 forKey:@"p2pSource"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v5 items];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = [*(*(&v26 + 1) + 8 * i) type];
          if (v23 == 1)
          {
            v20 = 1;
          }

          else if (v23 == 2)
          {
            v19 = 1;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);

      if (((v19 | v20) & 1) == 0)
      {
        goto LABEL_24;
      }

      v24 = PKAnalyticsPayloadValueP2PQuoteItemTypeTopUpAndTransfer;
      if ((v19 & 1 & v20) == 0)
      {
        v24 = PKAnalyticsPayloadValueP2PQuoteItemTypeTransfer;
      }

      if ((v19 & 1) == 0)
      {
        v24 = PKAnalyticsPayloadValueP2PQuoteItemTypeTopUp;
      }

      v25 = *v24;
      if (!v25)
      {
        goto LABEL_24;
      }

      v16 = v25;
      [v7 setObject:v25 forKey:@"p2pQuoteItemTypes"];
    }

LABEL_24:
    PKAnalyticsSendEventWithDailyLimit(@"com.apple.wallet.peer.payment.quote", v7, 2);
  }
}

- (id)_defaultAlternateFundingSourceForMode:(unint64_t)a3
{
  v5 = [(PKPeerPaymentController *)self account];
  v6 = v5;
  v7 = 0;
  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v9 = [v5 loadFromCardFeatureDescriptor];
    }

    else
    {
      v8 = 0;
      if (a3 != 6)
      {
        goto LABEL_22;
      }

      v9 = [v5 instantWithdrawalPromotionFeatureDescriptor];
    }
  }

  else
  {
    if (a3 == 1)
    {
      v7 = [v5 sendToUserFeatureDescriptor];
      is = self->_is;
      if (is->recurringPaymentIdentifier || is->startDate || is->frequency)
      {
        v11 = [v6 recurringPaymentsFeatureDescriptor];

        v7 = v11;
      }

      if (!v7)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v8 = 0;
    if (a3 != 2)
    {
      goto LABEL_22;
    }

    v9 = [v5 deviceTapFeatureDescriptor];
  }

  v7 = v9;
  if (!v9)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_22;
  }

LABEL_13:
  v12 = [v7 supportedFundingSourceCountryCodes];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = [v6 countryCode];
    v14 = [v15 setWithObject:v16];
  }

  v17 = objc_alloc_init(PKPeerPaymentRequest);
  v18 = [v7 merchantIdentifier];
  [(PKPaymentRequest *)v17 setMerchantIdentifier:v18];

  v19 = [v7 supportedNetworks];
  [(PKPaymentRequest *)v17 setSupportedNetworks:v19];

  -[PKPaymentRequest setMerchantCapabilities:](v17, "setMerchantCapabilities:", [v7 merchantCapabilities]);
  [(PKPaymentRequest *)v17 setSupportedCountries:v14];
  [(PKPeerPaymentRequest *)v17 setPeerPaymentType:self->_is->peerPaymentType];
  if (a3 == 6)
  {
    [(PKPaymentRequest *)v17 setSupportsInstantFundsIn:1];
  }

  v20 = +[PKPassLibrary sharedInstance];
  v8 = [v20 _defaultPaymentPassForPaymentRequest:v17];

LABEL_22:

  return v8;
}

- (void)authorizeQuote:(id)a3 performOnAuthorization:(BOOL)a4 completion:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v73 = self;
    v74 = 2112;
    v75 = v8;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: authorizeQuote: %@ completion: called.", buf, 0x16u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:5])
  {
    self->_performOnAuthorization = a4;
    quoteAuthorizationGroup = self->_quoteAuthorizationGroup;
    if (!quoteAuthorizationGroup)
    {
      v12 = dispatch_group_create();
      v13 = self->_quoteAuthorizationGroup;
      self->_quoteAuthorizationGroup = v12;

      v14 = dispatch_queue_create("com.apple.passkitcore.peerpayment.quoteauthorizationqueue", 0);
      quoteAuthorizationCallbackQueue = self->_quoteAuthorizationCallbackQueue;
      self->_quoteAuthorizationCallbackQueue = v14;

      dispatch_group_enter(self->_quoteAuthorizationGroup);
      v16 = self->_quoteAuthorizationGroup;
      v17 = self->_quoteAuthorizationCallbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke;
      block[3] = &unk_1E79C4E28;
      block[4] = self;
      dispatch_group_notify(v16, v17, block);
      quoteAuthorizationGroup = self->_quoteAuthorizationGroup;
    }

    v18 = self->_quoteAuthorizationCallbackQueue;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke_105;
    v69[3] = &unk_1E79C4A40;
    v69[4] = self;
    v70 = v9;
    dispatch_group_notify(quoteAuthorizationGroup, v18, v69);
    if (self->_quoteAuthorizationCoordinator)
    {
      goto LABEL_43;
    }

    v19 = self->_is->mode - 2;
    if (v19 > 4)
    {
      v20 = 1;
    }

    else
    {
      v20 = qword_1ADB9A730[v19];
    }

    v21 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v21 setEndpoint:4];
    v22 = [v8 recipient];
    v23 = [v22 address];
    [(PKPeerPaymentDeviceScoreAttributes *)v21 setRecipientAddress:v23];

    [(PKPeerPaymentDeviceScoreAttributes *)v21 setQuoteRequestDestination:v20];
    [(PKPeerPaymentDeviceScoreAttributes *)v21 setMessagesContext:self->_is->messagesContext];
    [(PKPeerPaymentWebService *)self->_webService prewarmDeviceScoreForAttributes:v21];
    v24 = [[PKPeerPaymentRequest alloc] initWithPeerPaymentQuote:v8 peerPaymentType:[(PKPeerPaymentController *)self _peerPaymentRequestTypeFromControllerMode:self->_is->mode]];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v23) = objc_opt_respondsToSelector();

    if (v23)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      v27 = [v26 analyticsMessagesContext];
      v28 = [v27 copy];

      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v66 = v29;
    [(PKPeerPaymentRequest *)v24 setAnalyticsMessagesContext:?];
    v30 = [v8 firstQuoteItemOfType:1];
    v31 = [v30 dpanIdentifier];

    if (v31)
    {
      v32 = +[PKPassLibrary sharedInstance];
      v33 = [v32 passWithDPANIdentifier:v31];

      v34 = [v33 serialNumber];
      [(PKPaymentRequest *)v24 setPassSerialNumber:v34];

      v35 = [v33 passTypeIdentifier];
      [(PKPaymentRequest *)v24 setPassTypeIdentifier:v35];
    }

    is = self->_is;
    mode = is->mode;
    if (mode - 4 <= 2)
    {
      [(PKPaymentRequest *)v24 setUseLocationBasedAuthorization:1];
      is = self->_is;
      mode = is->mode;
    }

    v65 = v31;
    if (mode != 2)
    {
      if (mode != 1)
      {
        goto LABEL_29;
      }

      v38 = [v8 recipient];
      if (v38)
      {

        is = self->_is;
      }

      else
      {
        is = self->_is;
        if (is->mode != 2)
        {
          goto LABEL_29;
        }
      }
    }

    if (is->supportsPreserveCurrentBalance)
    {
      v39 = [(PKPeerPaymentController *)self _featureDescriptorForMode:is->mode];
      if ([v8 isRecurringPayment])
      {
        v40 = [(PKPeerPaymentAccount *)self->_account recurringPaymentsFeatureDescriptor];

        v39 = v40;
      }

      v41 = [v39 supportedFundingSourceCountryCodes];
      v42 = v41;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v44 = MEMORY[0x1E695DFD8];
        v45 = [(PKPeerPaymentAccount *)self->_account countryCode];
        v43 = [v44 setWithObject:v45];
      }

      v46 = [v39 merchantIdentifier];
      [(PKPaymentRequest *)v24 setMerchantIdentifier:v46];

      v47 = [v39 supportedNetworks];
      [(PKPaymentRequest *)v24 setSupportedNetworks:v47];

      -[PKPaymentRequest setMerchantCapabilities:](v24, "setMerchantCapabilities:", [v39 merchantCapabilities]);
      [(PKPaymentRequest *)v24 setSupportedCountries:v43];

      is = self->_is;
    }

LABEL_29:
    if (is->mode == 2)
    {
      [(PKPaymentRequest *)v24 setConfirmationStyle:1];
    }

    v48 = [(PKPeerPaymentController *)self summaryItemsForQuote:v8];
    [(PKPaymentRequest *)v24 setPaymentSummaryItems:v48];

    v49 = [PKPaymentRequestValidator validatorWithObject:v24];
    v68 = 0;
    v50 = [v49 isValidWithError:&v68];
    v51 = v68;

    if (v50)
    {
      v52 = self->_is;
      if (v52->mode != 1 || ([(PKPeerPaymentQuote *)v52->quote firstQuoteItemOfType:1], (v53 = objc_claimAutoreleasedReturnValue()) == 0) || (v54 = v53, [(PKPeerPaymentController *)self _defaultAlternateFundingSourceForMode:1], v55 = objc_claimAutoreleasedReturnValue(), v55, v54, v55))
      {
        v56 = [[PKPaymentAuthorizationCoordinator alloc] initWithPaymentRequest:v24];
        quoteAuthorizationCoordinator = self->_quoteAuthorizationCoordinator;
        self->_quoteAuthorizationCoordinator = v56;

        [(PKPaymentAuthorizationCoordinator *)self->_quoteAuthorizationCoordinator setDelegate:self];
        [(PKPaymentAuthorizationCoordinator *)self->_quoteAuthorizationCoordinator _setPrivateDelegate:self];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v73 = self;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Presenting PKPaymentAuthorizationCoordinator...", buf, 0xCu);
        }

        v58 = self->_quoteAuthorizationCoordinator;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke_116;
        v67[3] = &unk_1E79C9D30;
        v67[4] = self;
        [(PKPaymentAuthorizationCoordinator *)v58 presentWithCompletion:v67];
        goto LABEL_42;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v73 = self;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Generated PKPeerPaymentRequest is invalid because it is configured to use DPAN and there are no usable DPANs", buf, 0xCu);
      }

      self->_quoteAuthorizationSuccess = 0;
      v61 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon.isa, 0);
      v62 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_0.isa, 0);
      v63 = PKDisplayableErrorCustomWithType(-1, v61, v62, 0, 0);
      quoteAuthorizationError = self->_quoteAuthorizationError;
      self->_quoteAuthorizationError = v63;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v73 = self;
        v74 = 2112;
        v75 = v51;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Generated PKPeerPaymentRequest is invalid with error: %@", buf, 0x16u);
      }

      self->_quoteAuthorizationSuccess = 0;
      v59 = [(PKPeerPaymentController *)self displayableErrorForError:v51];
      v60 = self->_quoteAuthorizationError;
      self->_quoteAuthorizationError = v59;
    }

    dispatch_group_leave(self->_quoteAuthorizationGroup);
LABEL_42:

LABEL_43:
  }
}

void __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  v6 = *(a1 + 32);
  if (*(v6 + 72) == 1)
  {
    v7 = *(v6 + 80);
    *(v6 + 80) = 0;

    [*(a1 + 32) _setState:6 notify:1];
  }

  else
  {
    v8 = *(v6 + 8);
    v9 = *(v8 + 64);
    *(v8 + 64) = 0;
  }

  v10 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    if (*(v11 + 72))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = *(v11 + 80);
    v14 = 134218498;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Completed authorizeQuote: with success: %{public}@ error: %@", &v14, 0x20u);
  }
}

void __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke_105(uint64_t a1)
{
  if (*(*(a1 + 32) + 80))
  {
    v2 = [objc_opt_class() _paymentNotCompletedErrorWithError:*(*(a1 + 32) + 80)];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))(v3, *(*(*(a1 + 32) + 8) + 64));
    v2 = v4;
  }
}

void __76__PKPeerPaymentController_authorizeQuote_performOnAuthorization_completion___block_invoke_116(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xCuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Succeeded presenting PKPaymentAuthorizationCoordinator.", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Failed to present PKPaymentAuthorizationCoordinator.", &v8, 0xCu);
    }

    *(*(a1 + 32) + 72) = 0;
    dispatch_group_leave(*(*(a1 + 32) + 56));
  }
}

- (id)analyticsSessionSubjectForPaymentAuthorizationCoordinator:(id)a3
{
  if (self->_is->mode - 1 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"p2p";
  }

  return v4;
}

- (id)analyticsSessionTokenForPaymentAuthorizationCoordinator:(id)a3
{
  if (self->_is->mode - 1 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [PKAnalyticsReporter archivedSessionTokenForSubject:@"p2p", v3];
  }

  return v5;
}

- (void)performQuote:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: performQuote: %@ completion: called.", buf, 0x16u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:5])
  {
    performQuoteGroup = self->_performQuoteGroup;
    if (!performQuoteGroup)
    {
      v10 = dispatch_group_create();
      v11 = self->_performQuoteGroup;
      self->_performQuoteGroup = v10;

      v12 = dispatch_queue_create("com.apple.passkitcore.peerpayment.performquotequeue", 0);
      performQuoteCallbackQueue = self->_performQuoteCallbackQueue;
      self->_performQuoteCallbackQueue = v12;

      dispatch_group_enter(self->_performQuoteGroup);
      v14 = self->_performQuoteGroup;
      v15 = self->_performQuoteCallbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PKPeerPaymentController_performQuote_completion___block_invoke;
      block[3] = &unk_1E79C4E28;
      block[4] = self;
      dispatch_group_notify(v14, v15, block);
      performQuoteGroup = self->_performQuoteGroup;
    }

    v16 = self->_performQuoteCallbackQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__PKPeerPaymentController_performQuote_completion___block_invoke_120;
    v17[3] = &unk_1E79C4A40;
    v17[4] = self;
    v18 = v7;
    dispatch_group_notify(performQuoteGroup, v16, v17);
    [(PKPeerPaymentController *)self authorizeQuote:v6 performOnAuthorization:1 completion:0];
  }
}

void __51__PKPeerPaymentController_performQuote_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  *(v4 + 104) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  v8 = *(a1 + 32);
  if (*(v8 + 112) == 1)
  {
    v9 = *(v8 + 120);
    *(v8 + 120) = 0;

    [*(a1 + 32) _setState:8 notify:1];
    [*(a1 + 32) _updateLastUsedAlternateFundingSource];
  }

  else
  {
    v10 = *(v8 + 8);
    v11 = *(v10 + 72);
    *(v10 + 72) = 0;
  }

  v12 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = @"NO";
    if (*(v13 + 112))
    {
      v14 = @"YES";
    }

    v15 = *(*(v13 + 8) + 72);
    v16 = *(v13 + 120);
    v17 = 134218754;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Completed performQuote: with success: %{public}@ response: %@ error: %@", &v17, 0x2Au);
  }
}

uint64_t __51__PKPeerPaymentController_performQuote_completion___block_invoke_120(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v3 = 80;
LABEL_5:
    [objc_opt_class() _paymentNotCompletedErrorWithError:*(*(a1 + 32) + v3)];
    objc_claimAutoreleasedReturnValue();
    goto LABEL_6;
  }

  if (*(v2 + 120))
  {
    v3 = 120;
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(a1 + 32) + 112), *(*(*(a1 + 32) + 8) + 72));
  }

  return MEMORY[0x1EEE66C30]();
}

+ (void)performNearbyAuthorizedQuote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[PKMockPeerPaymentController useMock])
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: performAuthorizedQuote:completion: called.", buf, 2u);
    }

    v9 = [PKPeerPaymentPerformRequest requestWithAuthorizedPeerPaymentQuote:v6];
    v10 = v9;
    if (v9)
    {
      [v9 setDestination:5];
      [v10 setSenderAddressType:{objc_msgSend(v6, "senderAddressType")}];
      v11 = [v6 senderAddress];
      [v10 setSenderAddress:v11];

      v12 = [v6 encryptedRecipientData];
      [v10 setEncryptedRecipientData:v12];

      [v10 setEncryptionScheme:{objc_msgSend(v6, "encryptionScheme")}];
      v13 = [v6 publicKeyHash];
      [v10 setPublicKeyHash:v13];

      v14 = [v6 ephemeralPublicKey];
      [v10 setEphemeralPublicKey:v14];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__PKPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke;
      aBlock[3] = &unk_1E79D3AB8;
      v27 = a1;
      v25 = v6;
      v26 = v7;
      v15 = _Block_copy(aBlock);
      v16 = +[PKPeerPaymentWebService sharedService];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __67__PKPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke_138;
      v21[3] = &unk_1E79D3B08;
      v22 = v10;
      v23 = v15;
      v17 = v15;
      [v16 peerPaymentPerformQuoteWithRequest:v22 completion:v21];

      v18 = v25;
    }

    else
    {
      if (!v7)
      {
LABEL_10:

        goto LABEL_11;
      }

      v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon.isa, 0);
      v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_0.isa, 0);
      v18 = PKDisplayableErrorCustomWithType(-1, v19, v20, 0, 0);

      (*(v7 + 2))(v7, 0, v18);
    }

    goto LABEL_10;
  }

  [PKMockPeerPaymentController performNearbyAuthorizedQuote:v6 completion:v7];
LABEL_11:
}

void __67__PKPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = v6;
    v11 = [v10 domain];
    v12 = [v11 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"];

    v9 = v10;
    if (v12)
    {
      v9 = v10;
      if ([v10 code] == 40311)
      {
        v13 = [*(a1 + 32) peerPaymentQuote];
        v14 = [v13 firstQuoteItemOfType:1];
        v15 = [v14 dpanIdentifier];

        v16 = +[PKPassLibrary sharedInstance];
        v17 = [v16 passWithDPANIdentifier:v15];

        v18 = [v17 organizationName];
        v9 = v10;
        if (v18)
        {
          v28 = v15;
          if (PKIsPhone())
          {
            v19 = [v17 passURL];
            v20 = [v19 URLByAppendingPathComponent:@"details"];

            v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec_1.isa, &stru_1F2281668.isa, v18);
            if (v20)
            {
              v22 = *MEMORY[0x1E696A590];
              v31 = v21;
              v32[0] = v22;
              v27 = v21;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
              v32[1] = @"PKErrorRecoveryURL";
              v33[0] = v23;
              v33[1] = v20;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

              v21 = v27;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec.isa, 0);
          v26 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec_2.isa, &stru_1F22903C8.isa, v18, v18);
          v9 = PKDisplayableErrorCustomWithType(-1, v25, v26, 0, v24);

          v15 = v28;
        }
      }
    }

    [*(a1 + 48) _sendAuthorizedQuoteAnalyticsWithSuccess:0 mode:2 authorizedQuote:*(a1 + 32) status:{objc_msgSend(v5, "status")}];
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: Error: Perform nearby authorized quote failed with error: %@", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 48) _sendAuthorizedQuoteAnalyticsWithSuccess:1 mode:2 authorizedQuote:*(a1 + 32) status:{objc_msgSend(v5, "status")}];
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: Perform nearby authorized quote succeeded.", buf, 2u);
    }

    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __67__PKPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke_138(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if (![v7 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
  {

    goto LABEL_7;
  }

  v8 = [v6 code];

  if (v8 != 40397)
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  v9 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController: Perform nearby authorized quote received a timeout response, attempting to perform again", buf, 2u);
  }

  v10 = +[PKPeerPaymentWebService sharedService];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke_139;
  v12[3] = &unk_1E79D3AE0;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v10 peerPaymentPerformQuoteWithRequest:v11 completion:v12];

LABEL_8:
}

- (void)_performAuthorizedQuote:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v34 = self;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: _performAuthorizedQuote: %@ completion: called.", buf, 0x16u);
  }

  v9 = [PKPeerPaymentPerformRequest requestWithAuthorizedPeerPaymentQuote:v6];
  if (v9)
  {
    v10 = [(PKPeerPaymentRecipient *)self->_is->recipient conversationAddress];
    [v9 setRecipientPhoneOrEmail:v10];

    [v9 setAccountNumber:self->_is->accountNumber];
    [v9 setRoutingNumber:self->_is->routingNumber];
    v11 = self->_is->mode - 2;
    if (v11 > 4)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_1ADB9A730[v11];
    }

    [v9 setDestination:v12];
    [v9 setMessagesContext:self->_is->messagesContext];
    if (self->_is->mode == 2)
    {
      [v9 setSenderAddressType:{objc_msgSend(v6, "senderAddressType")}];
      v16 = [v6 senderAddress];
      [v9 setSenderAddress:v16];

      v17 = [v6 encryptedRecipientData];
      [v9 setEncryptedRecipientData:v17];

      [v9 setEncryptionScheme:{objc_msgSend(v6, "encryptionScheme")}];
      v18 = [v6 publicKeyHash];
      [v9 setPublicKeyHash:v18];

      v19 = [v6 ephemeralPublicKey];
      [v9 setEphemeralPublicKey:v19];
    }

    v20 = [v6 peerPaymentQuote];
    v21 = [v20 firstQuoteItemOfType:1];
    v22 = [v21 dpanIdentifier];

    if ([(PKPeerPaymentQuote *)self->_is->quote isRecurringPayment])
    {
      v23 = PKPaymentCryptogramTypeToString(0);
      [v9 setCryptogramType:v23];

      if (v22)
      {
        v24 = +[PKPassLibrary sharedInstance];
        v25 = [v24 passWithDPANIdentifier:v22];

        v26 = [v25 serialNumber];
        [v9 setPassSerialNumber:v26];

        v27 = [v25 passTypeIdentifier];
        [v9 setPassTypeIdentifier:v27];
      }
    }

    webService = self->_webService;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__PKPeerPaymentController__performAuthorizedQuote_completion___block_invoke;
    v29[3] = &unk_1E79D3B30;
    v29[4] = self;
    v30 = v6;
    v31 = v22;
    v32 = v7;
    v15 = v22;
    [(PKPeerPaymentWebService *)webService peerPaymentPerformQuoteWithRequest:v9 completion:v29];

    goto LABEL_15;
  }

  if (v7)
  {
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon.isa, 0);
    v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_0.isa, 0);
    v15 = PKDisplayableErrorCustomWithType(-1, v13, v14, 0, 0);

    (*(v7 + 2))(v7, 0, v15);
LABEL_15:
  }
}

void __62__PKPeerPaymentController__performAuthorizedQuote_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = *(a1[4] + 8);
  if (!v6 || v7)
  {
    v17 = *(v9 + 72);
    *(v9 + 72) = 0;

    objc_storeStrong((a1[4] + 120), a3);
    v18 = [v8 domain];
    v19 = [v18 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"];

    if (v19 && [v8 code] == 40311)
    {
      v20 = +[PKPassLibrary sharedInstance];
      v21 = [v20 passWithDPANIdentifier:a1[6]];

      v22 = [v21 organizationName];
      if (v22)
      {
        if (PKIsPhone())
        {
          v23 = [v21 passURL];
          v24 = [v23 URLByAppendingPathComponent:@"details"];

          v25 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec_1.isa, &stru_1F2281668.isa, v22);
          v26 = v25;
          if (v24)
          {
            v27 = *MEMORY[0x1E696A590];
            v40 = v25;
            v41[0] = v27;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
            v41[1] = @"PKErrorRecoveryURL";
            v42[0] = v28;
            v42[1] = v24;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec.isa, 0);
        v31 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec_2.isa, &stru_1F22903C8.isa, v22, v22);
        v32 = PKDisplayableErrorCustomWithType(-1, v30, v31, 0, v29);
        v33 = a1[4];
        v34 = *(v33 + 120);
        *(v33 + 120) = v32;
      }
    }

    [objc_opt_class() _sendAuthorizedQuoteAnalyticsWithSuccess:0 mode:*(*(a1[4] + 8) + 16) authorizedQuote:a1[5] status:{objc_msgSend(v6, "status")}];
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v35 = a1[4];
      *buf = 134218242;
      v37 = v35;
      v38 = 2112;
      v39 = v8;
      v14 = "PKPeerPaymentController %p: Error: Perform authorized quote failed with error: %@";
      v15 = v12;
      v16 = 22;
      goto LABEL_18;
    }
  }

  else
  {
    objc_storeStrong((v9 + 72), a2);
    v10 = a1[4];
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;

    [objc_opt_class() _sendAuthorizedQuoteAnalyticsWithSuccess:1 mode:*(*(a1[4] + 8) + 16) authorizedQuote:a1[5] status:{objc_msgSend(v6, "status")}];
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      *buf = 134217984;
      v37 = v13;
      v14 = "PKPeerPaymentController %p: Perform authorized quote succeeded.";
      v15 = v12;
      v16 = 12;
LABEL_18:
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  (*(a1[7] + 16))();
}

- (void)_updateLastUsedAlternateFundingSource
{
  v2 = self->_is->quoteRequest;
  v3 = v2;
  if (v2 && [(PKPeerPaymentQuoteRequest *)v2 externalFundingSource]== 1)
  {
    v4 = [(PKPeerPaymentQuoteRequest *)v3 dpanIdentifier];
    if ([v4 length])
    {
      v5 = +[PKPassLibrary sharedInstance];
      v6 = [v5 passWithDPANIdentifier:v4];

      if (v6)
      {
        v7 = [v6 uniqueID];
        v8 = +[PKPeerPaymentService sharedInstance];
        [v8 setLastUsedAlternateFundingSourcePassUniqueIdentifier:v7];
      }

      else
      {
        v7 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Could not find alternate funding source pass by DPAN identifier in pass library.", v9, 2u);
        }
      }
    }
  }
}

- (BOOL)allowsPaymentRequests
{
  if ([(PKPeerPaymentController *)self supportsGroupMessage])
  {
    return 1;
  }

  v4 = [(PKPeerPaymentController *)self recipient];
  v5 = [v4 allowsFormalPaymentRequests];

  return v5;
}

- (void)formalRequestTokenForAmount:(id)a3 source:(unint64_t)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = self;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: formalRequestTokenForAmount: %@ completion: called.", buf, 0x16u);
  }

  if ([(PKPeerPaymentController *)self _ensureState:7])
  {
    v11 = objc_alloc_init(PKPeerPaymentRequestTokenRequest);
    v12 = [v8 amount];
    [(PKPeerPaymentRequestTokenRequest *)v11 setAmount:v12];

    v13 = [v8 currency];
    [(PKPeerPaymentRequestTokenRequest *)v11 setCurrency:v13];

    [(PKPeerPaymentRequestTokenRequest *)v11 setSenderAddress:self->_is->senderAddress];
    v14 = [(PKPeerPaymentRecipient *)self->_is->recipient conversationAddress];
    [(PKPeerPaymentRequestTokenRequest *)v11 setRecipientPhoneOrEmail:v14];

    [(PKPeerPaymentRequestTokenRequest *)v11 setSource:a4];
    [(PKPeerPaymentRequestTokenRequest *)v11 setMessagesContext:self->_is->messagesContext];
    [(PKPeerPaymentRequestTokenRequest *)v11 setRecipientAddresses:self->_is->recipientAddresses];
    is = self->_is;
    if (is->messagesContext == 2)
    {
      [(PKPeerPaymentRequestTokenRequest *)v11 setBehavior:2];
    }

    else
    {
      v16 = [(PKPeerPaymentRecipient *)is->recipient identifier];
      [(PKPeerPaymentRequestTokenRequest *)v11 setRecipientIdentifier:v16];
    }

    v17 = objc_alloc_init(PKPeerPaymentDeviceScoreAttributes);
    [(PKPeerPaymentDeviceScoreAttributes *)v17 setEndpoint:5];
    v18 = [(PKPeerPaymentRequestTokenRequest *)v11 recipientAddresses];
    [(PKPeerPaymentDeviceScoreAttributes *)v17 setRecipientAddresses:v18];

    [(PKPeerPaymentDeviceScoreAttributes *)v17 setQuoteRequestDestination:1];
    [(PKPeerPaymentDeviceScoreAttributes *)v17 setMessagesContext:self->_is->messagesContext];
    [(PKPeerPaymentWebService *)self->_webService prewarmDeviceScoreForAttributes:v17];
    webService = self->_webService;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PKPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke;
    v20[3] = &unk_1E79D3B80;
    v20[4] = self;
    v22 = v9;
    v21 = v8;
    v23 = a4;
    [(PKPeerPaymentWebService *)webService peerPaymentRequestTokenWithRequest:v11 completion:v20];
  }
}

void __73__PKPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 success])
  {
    v7 = [v5 requestToken];

    if (!v6)
    {
      if (v7)
      {
        v8 = [v5 requestToken];
        v9 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          *buf = 134218242;
          v34 = v10;
          v35 = 2112;
          v36 = v8;
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Get request token succeeded with requestToken: %@.", buf, 0x16u);
        }

        objc_storeStrong((*(*(a1 + 32) + 8) + 48), v8);
        v11 = *(a1 + 32);
        if (*(v11[1] + 8) == 7)
        {
          [v11 _setState:8 notify:1];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          (*(v12 + 16))(v12, 1, v8, 0);
        }

        v6 = 0;
        goto LABEL_27;
      }
    }
  }

  v13 = [v6 domain];
  if ([v13 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
  {
    v14 = [v6 code];

    if (v14 == 40001)
    {
      v15 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 134217984;
        v34 = v16;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: Get request token failed with stale recipient. Refreshing and then re-attempting request token.", buf, 0xCu);
      }

      v17 = *(a1 + 32);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__PKPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke_142;
      v29[3] = &unk_1E79D3B58;
      v29[4] = v17;
      v18 = *(a1 + 40);
      v20 = *(a1 + 48);
      v19 = *(a1 + 56);
      v30 = v18;
      v32 = v19;
      v31 = v20;
      [v17 _refreshRecipientWithCompletion:v29];

      goto LABEL_27;
    }
  }

  else
  {
  }

  if (!v6)
  {
    if ([v5 success])
    {
      v6 = 0;
    }

    else
    {
      v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentRef.isa, 0);
      v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentRef_0.isa, 0);
      v6 = PKDisplayableErrorCustomWithType(-1, v21, v22, 0, 0);
    }
  }

  v23 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = [v5 success];
    v26 = @"NO";
    *buf = 134218498;
    v34 = v24;
    if (v25)
    {
      v26 = @"YES";
    }

    v35 = 2114;
    v36 = v26;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Error: Get request token failed with success: %{public}@ error: %@.", buf, 0x20u);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = [*(a1 + 32) displayableErrorForError:v6];
    (*(v27 + 16))(v27, 0, 0, v28);
  }

LABEL_27:
}

void __73__PKPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke_142(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);

    [v6 formalRequestTokenForAmount:v3 source:v4 completion:v5];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) displayableErrorForError:?];
    (*(v7 + 16))(v7, 0, 0, v8);
  }
}

- (void)performAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  webService = self->_webService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKPeerPaymentController_performAction_withPaymentIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79D3BA8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(PKPeerPaymentWebService *)webService peerPaymentPerformAction:a3 withPaymentIdentifier:a4 completion:v11];
}

void __74__PKPeerPaymentController_performAction_withPaymentIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v10 success];
  }

  if (v10)
  {
    v7 = [v10 status];
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (v6)
    {
      (*(v8 + 16))(*(a1 + 40), 1, v7, 0);
    }

    else
    {
      v9 = [*(a1 + 32) displayableErrorForError:v5];
      (*(v8 + 16))(v8, 0, v7, v9);
    }
  }
}

- (void)performPendingRequestAction:(id)a3 withRequestToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  webService = self->_webService;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PKPeerPaymentController_performPendingRequestAction_withRequestToken_completion___block_invoke;
  v15[3] = &unk_1E79D3BD0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(PKPeerPaymentWebService *)webService peerPaymentPendingRequestPerformAction:v14 withRequestToken:v13 completion:v15];
}

void __83__PKPeerPaymentController_performPendingRequestAction_withRequestToken_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 success])
  {
    v10 = 0;
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = v7;
  if (v7 == @"reject")
  {
    goto LABEL_24;
  }

  if (v7 && @"reject")
  {
    v9 = [(__CFString *)v7 isEqualToString:@"reject"];

    if (v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v15 = *(a1 + 32);
  v8 = v15;
  if (v15 == @"cancel")
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v15 && @"cancel")
  {
    v16 = [(__CFString *)v15 isEqualToString:@"cancel"];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    v17 = [*(*(a1 + 40) + 128) peerPaymentService];
    v19[0] = *(a1 + 48);
    v10 = 1;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v17 deletePeerPaymentPendingRequestsForRequestTokens:v18];

    goto LABEL_9;
  }

LABEL_27:
  v10 = 1;
LABEL_9:
  if (*(a1 + 56))
  {
    if (v5)
    {
      v11 = [v5 status];
    }

    else
    {
      v11 = @"unknown";
    }

    v12 = v11;
    v13 = *(a1 + 56);
    if (v10)
    {
      (*(v13 + 16))(*(a1 + 56), 1, v11, 0);
    }

    else
    {
      v14 = [*(a1 + 40) displayableErrorForError:v6];
      (*(v13 + 16))(v13, 0, v12, v14);
    }
  }
}

- (void)statusForPaymentIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    webService = self->_webService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKPeerPaymentController_statusForPaymentIdentifier_withCompletion___block_invoke;
    v11[3] = &unk_1E79D3BF8;
    v11[4] = self;
    v12 = v7;
    [(PKPeerPaymentWebService *)webService peerPaymentStatusWithPaymentIdentifier:v6 completion:v11];
  }

  else if (v7)
  {
    v10 = [(PKPeerPaymentController *)self displayableErrorForError:0];
    (v8)[2](v8, 0, v10);
  }
}

void __69__PKPeerPaymentController_statusForPaymentIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (v8)
    {
      (*(v6 + 16))(*(a1 + 40), v8, 0);
    }

    else
    {
      v7 = [*(a1 + 32) displayableErrorForError:v5];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (void)handleIdentityVerificationWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() errorIsIdentityVerificationRequiredError:v6])
  {
    v8 = [v6 domain];
    v9 = [v8 isEqualToString:@"PKDisplayableError"];

    if (v9)
    {
      v10 = [v6 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v6 = v11;
    }

    v12 = [v6 userInfo];
    v13 = [v12 objectForKey:@"PKIdentityVerificationResponse"];

    if (v13)
    {
      v14 = [(PKPeerPaymentWebService *)self->_webService peerPaymentService];
      [v14 presentIdentityVerificationFlowWithResponse:v13 orientation:0 completion:v7];
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Cannot present identity verification flow because the response data is nil", v16, 2u);
      }

      if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)handleTermsAcceptanceRequiredWithError:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() errorIsTermsAcceptanceRequiredError:v7];

  if (v8)
  {
    v9 = [(PKPeerPaymentWebService *)self->_webService peerPaymentService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PKPeerPaymentController_handleTermsAcceptanceRequiredWithError_completion___block_invoke;
    v10[3] = &unk_1E79D3C20;
    v10[4] = self;
    v11 = v6;
    [v9 updateAccountWithCompletion:v10];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __77__PKPeerPaymentController_handleTermsAcceptanceRequiredWithError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 128) peerPaymentService];
    [v4 presentPeerPaymentTermsAndConditionsWithAccount:v3 orientation:0 completion:*(a1 + 40)];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Cannot present terms acceptance flow because the account is nil", v7, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

- (void)_handleAccountChanged:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKPeerPaymentController__handleAccountChanged___block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__PKPeerPaymentController__handleAccountChanged___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(*(a1 + 32) + 128) peerPaymentService];
  v4 = [v3 account];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  v7 = +[PKPassLibrary sharedInstance];
  v8 = [*(*(a1 + 32) + 16) associatedPassUniqueID];
  v9 = [v7 passWithUniqueID:v8];
  v10 = [v9 paymentPass];
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  [*(a1 + 32) _updateSupportsGroupMessageIfNeeded];
  [*(*(a1 + 32) + 128) updateDeviceScorersWithEncryptedPayloadVersion:{objc_msgSend(*(*(a1 + 32) + 16), "deviceScoreEncryptedPayloadVersion")}];
  if ([*(*(a1 + 32) + 16) role] == 1)
  {
    v13 = [v2 sendRestrictionType];
    if (v13 != [*(*(a1 + 32) + 16) sendRestrictionType])
    {
      v14 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Resetting peer payment controller since the sendRestrictionType has changed", v16, 2u);
      }

      [*(a1 + 32) reset];
    }
  }

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 postNotificationName:PKPeerPaymentControllerAccountDidChangeNotification object:*(a1 + 32)];
}

+ (id)displayableErrorForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"PKDisplayableError"];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [a1 _displayableErrorOverrideForUnderlyingError:v4];
    if (!v7)
    {
      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa, 0);
      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa, 0);
      v7 = PKDisplayableErrorCustomWithType(-1, v8, v9, v4, 0);
    }
  }

  return v7;
}

- (id)displayableErrorForError:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() displayableErrorForError:v3];

  return v4;
}

+ (id)_displayableErrorOverrideForUnderlyingError:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PKPeerPaymentService sharedInstance];
  v5 = [v4 account];

  v6 = [v3 domain];
  v7 = [v6 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"];

  if (!v7)
  {
    v19 = [v3 domain];
    v20 = [v19 isEqualToString:*MEMORY[0x1E696A978]];

    if (v20)
    {
      if ([v3 code] == -1009)
      {
        v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentOff.isa, 0);
        v21 = @"PEER_PAYMENT_OFFLINE_ERROR_MESSAGE";
LABEL_22:
        v28 = PKLocalizedPeerPaymentString(&v21->isa, 0);
        goto LABEL_23;
      }

LABEL_21:
      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNet.isa, 0);
      v21 = @"PEER_PAYMENT_NETWORK_ERROR_MESSAGE";
      goto LABEL_22;
    }

    v22 = [v3 domain];
    v23 = [v22 isEqualToString:@"PKWebServiceErrorDomain"];

    if (v23)
    {
      v24 = [v3 code];
      if ((v24 - 2) < 4 || !v24)
      {
        v8 = [v3 localizedFailureReason];

        if (!v8)
        {
          v11 = 0;
          v9 = 0;
          goto LABEL_37;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v25 = [v3 domain];
      v26 = [v25 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

      if (v26)
      {
        v27 = [v3 localizedFailureReason];

        if (!v27)
        {
          goto LABEL_21;
        }

LABEL_20:
        v8 = [v3 localizedFailureReason];
        v28 = [v3 localizedRecoverySuggestion];
LABEL_23:
        v9 = v28;
        goto LABEL_24;
      }
    }

    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_37;
  }

  v8 = [v3 localizedFailureReason];
  v9 = [v3 localizedRecoverySuggestion];
  v10 = [v3 code];
  v11 = 0;
  if (v10 <= 40311)
  {
    if (v10 != 40301)
    {
      if (v10 != 40310)
      {
        goto LABEL_37;
      }

      v43[0] = *MEMORY[0x1E696A590];
      v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentHsa_1.isa, 0);
      v42 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v44[0] = v13;
      v43[1] = @"PKErrorRecoveryURL";
      v14 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PASSWORD_AND_SECURITY"];
      v44[1] = v14;
      v15 = MEMORY[0x1E695DF20];
      v16 = v44;
      v17 = v43;
      v18 = 2;
      goto LABEL_31;
    }

    if (![v5 role])
    {
      if (+[PKWalletVisibility isWalletVisible])
      {
        v29 = @"shoebox://";
      }

      else
      {
        v29 = @"prefs:root=PASSBOOK&path=";
      }

      v12 = [(__CFString *)v29 stringByAppendingString:@"payment_setup"];
      v46[0] = *MEMORY[0x1E696A590];
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIns_2.isa, 0);
      v45 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v47[0] = v14;
      v46[1] = @"PKErrorRecoveryURL";
      v30 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      v47[1] = v30;
      v31 = MEMORY[0x1E695DF20];
      v32 = v47;
      v33 = v46;
LABEL_35:
      v11 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:2];

      goto LABEL_36;
    }

LABEL_24:
    v11 = 0;
    goto LABEL_37;
  }

  if (v10 != 40312)
  {
    if (v10 != 40316)
    {
      goto LABEL_37;
    }

    if (+[PKWalletVisibility isWalletVisible])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shoebox://%@", @"peerPaymentTopUp"];
    }

    else
    {
      v12 = @"prefs:root=PASSBOOK&path=";
    }

    v40[0] = *MEMORY[0x1E696A590];
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNeg_2.isa, 0);
    v39 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v41[0] = v14;
    v40[1] = @"PKErrorRecoveryURL";
    v30 = [MEMORY[0x1E695DFF8] URLWithString:v12];
    v41[1] = v30;
    v31 = MEMORY[0x1E695DF20];
    v32 = v41;
    v33 = v40;
    goto LABEL_35;
  }

  v37[0] = *MEMORY[0x1E696A590];
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAmb_1.isa, 0);
  v36 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v38[0] = v13;
  v38[1] = MEMORY[0x1E695E118];
  v37[1] = @"PKDisplayableErrorIsPreferredActionKey";
  v37[2] = @"PKErrorRecoveryURL";
  v14 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=MESSAGES&path=MADRID_ACCOUNTS_BUTTON"];
  v38[2] = v14;
  v15 = MEMORY[0x1E695DF20];
  v16 = v38;
  v17 = v37;
  v18 = 3;
LABEL_31:
  v11 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
LABEL_36:

LABEL_37:
  if (v8 | v9)
  {
    v34 = PKDisplayableErrorCustomWithType(-1, v8, v9, v3, v11);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (unint64_t)proposedResolutionForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"PKDisplayableError"];

  v7 = v4;
  if (v6)
  {
    v8 = [v4 userInfo];
    v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if ([a1 errorIsTermsAcceptanceRequiredError:v7])
  {
    v9 = 2;
  }

  else if ([a1 errorIsIdentityVerificationRequiredError:v7])
  {
    v9 = 3;
  }

  else
  {
    v10 = [v7 domain];
    if ([v10 isEqualToString:@"PKWebServiceErrorDomain"])
    {
      v9 = [v7 code] != 1;
    }

    else
    {

      v9 = 1;
    }
  }

  return v9;
}

+ (id)_paymentNotCompletedErrorWithError:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() displayableErrorForError:v3];

  v5 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_12.isa, 0);
  v6 = [v4 localizedRecoverySuggestion];
  v7 = [v4 userInfo];
  v8 = PKDisplayableErrorCustomWithType(-1, v5, v6, 0, v7);

  return v8;
}

+ (id)_peerPaymentPassURL
{
  if (+[PKWalletVisibility isWalletVisible])
  {
    v2 = +[PKPeerPaymentService sharedInstance];
    v3 = [v2 account];
    v4 = [v3 associatedPassUniqueID];

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shoebox://cards/%@", v4];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK&path="];
  }

  return v6;
}

+ (id)displayNameForAddress:(id)a3 contactResolver:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _displayNameForRecipientAddress:v6 contactResolver:v5 foundInContacts:0];

  return v7;
}

- (id)displayNameForRecipientAddress:(id)a3 foundInContacts:(BOOL *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(PKPeerPaymentController *)self _contactResolver];
  v9 = [v7 _displayNameForRecipientAddress:v6 contactResolver:v8 foundInContacts:a4];

  return v9;
}

+ (id)_displayNameForRecipientAddress:(id)a3 contactResolver:(id)a4 foundInContacts:(BOOL *)a5
{
  v7 = a4;
  v8 = PKIDSSanitizedAddress(a3);
  v9 = [v7 contactForHandle:v8];

  if (a5)
  {
    *a5 = v9 != 0;
  }

  v10 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:v8 contact:v9];

  return v10;
}

- (id)contactForHandle:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentController *)self _contactResolver];
  v6 = [v5 contactForHandle:v4];

  return v6;
}

- (id)_contactResolver
{
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = +[PKPeerPaymentCounterpartHandleFormatter requiredContactKeys];
    v6 = [[PKContactResolver alloc] initWithContactStore:v4 keysToFetch:v5];
    v7 = self->_contactResolver;
    self->_contactResolver = v6;

    contactResolver = self->_contactResolver;
  }

  return contactResolver;
}

- (id)summaryItemsForQuote:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v77 = [MEMORY[0x1E695DF70] array];
  v4 = [v3 items];
  v5 = [v3 totalFees];
  v6 = 0x1E696A000uLL;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AB90] zero];
    v8 = [v5 isEqualToNumber:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  is = self->_is;
  recipient = is->recipient;
  if (recipient || is->mode == 2)
  {
    if (v8)
    {
      v11 = [(PKPeerPaymentRecipient *)recipient displayName];
      v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra.isa, &stru_1F2281668.isa, v11);

      v13 = [v3 totalReceiveAmount];
      v14 = [PKPaymentSummaryItem summaryItemWithLabel:v12 amount:v13 type:1];

      [v77 addObject:v14];
    }

    else
    {
      v56 = [v3 items];
      v57 = [v56 count];

      if (v57 == 1 || ([v3 isRecurringPayment] & 1) != 0)
      {
        v58 = 0;
        goto LABEL_69;
      }
    }
  }

  v72 = v8;
  v73 = v5;
  v74 = v4;
  v75 = v3;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v4;
  v81 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  if (!v81)
  {
    v76 = 0;
    goto LABEL_68;
  }

  v76 = 0;
  v80 = *v84;
  v15 = self;
  do
  {
    for (i = 0; i != v81; ++i)
    {
      if (*v84 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v83 + 1) + 8 * i);
      v18 = [v17 fees];
      v19 = [v17 totalAmount];
      v20 = [v17 type];
      v21 = 0;
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCas.isa, 0);
          v35 = MEMORY[0x1E696AEC0];
          v36 = v15->_is->accountName;
          v37 = PKPANMask();
          if (v15->_is->accountNumber)
          {
            accountNumber = v15->_is->accountNumber;
          }

          else
          {
            accountNumber = &stru_1F227FD28;
          }

          v39 = PKFPANSuffixFromFPAN(accountNumber);
          v40 = [v35 stringWithFormat:@"(%@%@)", v37, v39];
          v23 = PKLTRString(v40);

          v15 = self;
          v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCas_0.isa, &stru_1F22903C8.isa, v36, v23);

          v24 = 1;
        }

        else
        {
          if (v20 != 4)
          {
            v22 = 0;
            v6 = 0x1E696A000;
            goto LABEL_61;
          }

          v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIns_3.isa, 0);
          v25 = [v17 receiveAmount];

          v23 = [v17 dpanIdentifier];
          v26 = +[PKPassLibrary sharedInstance];
          v27 = [v26 passWithDPANIdentifier:v23];

          if (v27)
          {
            v28 = [v27 localizedDescription];
            if ([v28 length])
            {
              v29 = v28;
            }

            else
            {
              v43 = PKLogFacilityTypeGetObject(0xCuLL);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Could not get description for alternate funding source pass. Displaying unknown card line item.", buf, 2u);
              }

              v29 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIns_4.isa, 0);
            }

            v21 = v29;
          }

          else
          {
            v42 = PKLogFacilityTypeGetObject(0xCuLL);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v42, OS_LOG_TYPE_DEFAULT, "Could not find alternate funding source by DPAN identifier. Displaying unknown card line item.", buf, 2u);
            }

            v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIns_4.isa, 0);
          }

          v44 = [v21 copy];

          v24 = 1;
          v19 = v25;
          v76 = v44;
          v15 = self;
        }

        v6 = 0x1E696A000;
      }

      else if (v20 == 1)
      {
        v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTop.isa, 0);
        v23 = [v17 dpanIdentifier];
        v30 = +[PKPassLibrary sharedInstance];
        v31 = [v30 passWithDPANIdentifier:v23];

        if (v15->_is->recipient | v31)
        {
          v32 = [v31 localizedDescription];
          if ([v32 length])
          {
            if (v18 && ([MEMORY[0x1E696AB90] zero], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v18, "isEqualToNumber:", v33), v33, (v34 & 1) == 0))
            {
              v46 = [PKCurrencyAmount alloc];
              v47 = [v17 feesCurrency];
              v48 = [(PKCurrencyAmount *)v46 initWithAmount:v18 currency:v47 exponent:0];

              v49 = [(PKCurrencyAmount *)v48 formattedStringValue];
              v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_0.isa, &stru_1F22903C8.isa, v32, v49);

              v24 = 0;
            }

            else
            {
              v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_1.isa, &stru_1F2281668.isa, v32);
              v24 = 1;
            }

            v15 = self;
          }

          else
          {
            v45 = PKLogFacilityTypeGetObject(0xCuLL);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Could not get description for alternate funding source pass. Displaying unknown card line item.", buf, 2u);
            }

            v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_2.isa, 0);
            v24 = 1;
          }

          v6 = 0x1E696A000uLL;
        }

        else
        {
          v41 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Could not find alternate funding source by DPAN identifier. Displaying unknown card line item.", buf, 2u);
          }

          v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_2.isa, 0);
          v24 = 1;
        }
      }

      else
      {
        if (v20 != 2)
        {
          v22 = 0;
          goto LABEL_61;
        }

        v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_3.isa, 0);
        v23 = [(PKPass *)v15->_peerPaymentPass localizedDescription];
        v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_1.isa, &stru_1F2281668.isa, v23);
        v24 = 1;
      }

      if (v24)
      {
        if (v22)
        {
          if (v18)
          {
            v50 = [*(v6 + 2960) zero];
            v51 = [v18 isEqualToNumber:v50];

            if ((v51 & 1) == 0)
            {
              v52 = [PKPaymentSummaryItem summaryItemWithLabel:v22 amount:v18];
              [v77 addObject:v52];
            }
          }
        }
      }

      if (v21)
      {
        if (v19)
        {
          v53 = [*(v6 + 2960) zero];
          v54 = [v19 isEqualToNumber:v53];

          if ((v54 & 1) == 0)
          {
            v55 = [PKPaymentSummaryItem summaryItemWithLabel:v21 amount:v19];
            [v77 addObject:v55];
          }
        }
      }

LABEL_61:
    }

    v81 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  }

  while (v81);
LABEL_68:

  v4 = v74;
  v3 = v75;
  v5 = v73;
  v58 = v76;
  v8 = v72;
LABEL_69:
  v59 = [v3 calculatedTotalAmount];
  v60 = self->_is;
  v61 = v60->recipient;
  if (!v61)
  {
    if (v60->mode == 2)
    {
      v62 = @"TRANSFER_AMOUNT_TO_UNDETERMINED_RECIPIENT";
    }

    else
    {
      v70 = [v3 firstQuoteItemOfType:1];

      if (!v70)
      {
        if (!v58)
        {
          v58 = self->_is->accountName;
        }

        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCas_1.isa, &stru_1F2281668.isa, v58);
        goto LABEL_75;
      }

      if (self->_is->threshold)
      {
        v63 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentSheetRe.isa, 0);
        goto LABEL_76;
      }

      v62 = @"PEER_PAYMENT_TOP_UP_TOTAL";
    }

LABEL_74:
    PKLocalizedPeerPaymentString(&v62->isa, 0, v71);
    v63 = LABEL_75:;
LABEL_76:
    v64 = v63;
    goto LABEL_78;
  }

  if (v8)
  {
    v62 = @"PEER_PAYMENT_TRANSFER_WITH_FEES_TOTAL_DESCRIPTION";
    goto LABEL_74;
  }

  v65 = [(PKPeerPaymentRecipient *)v61 displayName];
  v64 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_5.isa, &stru_1F2281668.isa, v65);

LABEL_78:
  v66 = [v59 amount];
  v67 = [PKPaymentSummaryItem summaryItemWithLabel:v64 amount:v66];
  [v77 addObject:v67];

  v68 = [v77 copy];

  return v68;
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_quoteAuthorizationCoordinator == v4)
  {
    v5 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = self;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0xCu);
    }

    quoteAuthorizationCoordinator = self->_quoteAuthorizationCoordinator;
    self->_quoteAuthorizationCoordinator = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PKPeerPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v7[3] = &unk_1E79C4E28;
    v7[4] = self;
    [(PKPaymentAuthorizationCoordinator *)v4 dismissWithCompletion:v7];
  }
}

void __68__PKPeerPaymentController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 56;
  if (*(v1 + 88))
  {
    v2 = 96;
  }

  dispatch_group_leave(*(v1 + v2));
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_quoteAuthorizationCoordinator != v8)
  {
    goto LABEL_41;
  }

  v11 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *v35 = self;
    *&v35[8] = 2112;
    v36 = v9;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: paymentAuthorizationCoordinator:didSelectPaymentMethod: %@ callback called.", buf, 0x16u);
  }

  v12 = [v9 paymentPass];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 devicePrimaryInAppPaymentApplication];
    v15 = [v14 dpanIdentifier];

    if (v15)
    {
      v16 = [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest dpanIdentifier];
      v17 = [v16 isEqualToString:v15] ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
  }

  is = self->_is;
  if (!is->supportsPreserveCurrentBalance || ![(PKPeerPaymentController *)self _modeIsSendType:is->mode])
  {
    v24 = 0;
    goto LABEL_28;
  }

  v19 = [(PKPeerPaymentController *)self _defaultAlternateFundingSourceForMode:self->_is->mode];
  v20 = v19;
  if (v19)
  {
    v31 = v19;
    v21 = [v9 usePeerPaymentBalance];
    LODWORD(v30) = v21 ^ 1;
    v22 = [(PKPeerPaymentQuote *)self->_is->quote firstQuoteItemOfType:2];

    if (v21 == [(PKPeerPaymentQuote *)self->_is->quote preservesCurrentBalance])
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Toggled use peer payment balance. Getting a new quote.", buf, 2u);
      }

      [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest setPreserveCurrentBalance:v30];
    }

    else
    {
      v23 = v22 != 0;
      if (v21 == v23)
      {
        v24 = 0;
        if (v21)
        {
LABEL_26:
          v20 = v31;
          goto LABEL_27;
        }

LABEL_25:
        v25 = [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest dpanIdentifier];
        v30 = [v25 length];

        if (!v30)
        {
          v20 = v31;
          [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest updateWithPaymentPass:v31 externalFundingSource:1];
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v35 = v23;
        *&v35[4] = 1024;
        *&v35[6] = v21 ^ 1;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Current quote (currentQuoteHasTransferItem: %d) does not match preference for preserveCurrentBalance: %d. Getting a new quote.", buf, 0xEu);
      }
    }

    v24 = 1;
    if (v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest setPreserveCurrentBalance:0];
  v24 = 0;
LABEL_27:

LABEL_28:
  if (((v17 | v24) & 1) != 0 || [(PKPeerPaymentQuote *)self->_is->quote hasExpired])
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest preserveCurrentBalance];
      v27 = @"disabled";
      *buf = 134218498;
      *v35 = self;
      *&v35[8] = 2112;
      if (v26)
      {
        v27 = @"enabled";
      }

      v36 = v15;
      v37 = 2112;
      v38 = v27;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: Requesting updated quote for dpan %@ with 'preserveCurrentBalance' = %@.", buf, 0x20u);
    }

    if (v13)
    {
      [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest updateWithPaymentPass:v13];
    }

    [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest setHasUpdatedPaymentMethod:1, v30];
    quoteRequest = self->_is->quoteRequest;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __90__PKPeerPaymentController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke;
    v32[3] = &unk_1E79CD9D8;
    v32[4] = self;
    v33 = v10;
    [(PKPeerPaymentController *)self _requestQuoteWithRequest:quoteRequest withCompletion:v32];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v35 = self;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: New quote request is not required. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.", buf, 0xCu);
    }

    [(PKPeerPaymentQuoteRequest *)self->_is->quoteRequest setHasUpdatedPaymentMethod:0];
    v29 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
    [(PKPaymentRequestUpdate *)v29 setStatus:0];
    (*(v10 + 2))(v10, v29);
  }

LABEL_41:
}

void __90__PKPeerPaymentController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  v9 = v8;
  if (!v6 || v7)
  {
    objc_storeStrong((*(a1 + 32) + 80), a4);
    *(*(a1 + 32) + 72) = 0;
    [(PKPaymentRequestUpdate *)v9 setStatus:1];
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v19 = 134218242;
      v20 = v16;
      v21 = 2112;
      v22 = v7;
      v13 = "PKPeerPaymentController %p: Error: Get updated quote failed with error: %@ Returning: PKPaymentAuthorizationStatusFailure to the authorization controller.";
      v14 = v11;
      v15 = 22;
      goto LABEL_7;
    }
  }

  else
  {
    [(PKPaymentRequestPaymentMethodUpdate *)v8 setPeerPaymentQuote:v6];
    v10 = [*(a1 + 32) summaryItemsForQuote:v6];
    [(PKPaymentRequestUpdate *)v9 setPaymentSummaryItems:v10];

    [(PKPaymentRequestUpdate *)v9 setStatus:0];
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v19 = 134217984;
      v20 = v12;
      v13 = "PKPeerPaymentController %p: Get updated quote succeeded. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.";
      v14 = v11;
      v15 = 12;
LABEL_7:
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v17, v18);
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneIdentifierForPeerPaymentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneBundleIdentifierForPeerPaymentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_contactInfoIsValidForAuthorizedQuote:(id)a3 errors:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_is->mode - 5 <= 1)
  {
    v8 = [v6 contact];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 name];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 givenName];
        if (![v12 length])
        {
          v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_3.isa, 0);
          v14 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"name" localizedDescription:v13];
          [v7 addObject:v14];
        }

        v15 = [v11 familyName];
        if (![v15 length])
        {
          v16 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_4.isa, 0);
          v17 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"name" localizedDescription:v16];
          [v7 addObject:v17];
        }
      }

      else
      {
        v12 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo.isa, 0);
        v15 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"name" localizedDescription:v12];
        [v7 addObject:v15];
      }

      v19 = [v9 postalAddress];
      v18 = v19;
      if (v19)
      {
        v20 = [v19 street];
        v21 = [v20 length];

        if (!v21)
        {
          v22 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_5.isa, 0);
          v23 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v22];
          [v7 addObject:v23];
        }

        v24 = [v18 city];
        v25 = [v24 length];

        if (!v25)
        {
          v26 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_6.isa, 0);
          v27 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v26];
          [v7 addObject:v27];
        }

        v28 = [v18 state];
        v29 = [v28 length];

        if (!v29)
        {
          v30 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_7.isa, 0);
          v31 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v30];
          [v7 addObject:v31];
        }

        v32 = [v18 postalCode];
        v33 = [v32 length];

        if (!v33)
        {
          v34 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_8.isa, 0);
          v35 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v34];
          [v7 addObject:v35];
        }

        v36 = [v18 country];
        v37 = [v36 length];

        if (v37)
        {
          goto LABEL_23;
        }

        v38 = @"IN_APP_PAYMENT_CONTACT_INVALID_COUNTRY";
      }

      else
      {
        v38 = @"IN_APP_PAYMENT_CONTACT_INVALID_BILLING_ADDRESS";
      }

      v39 = PKLocalizedPaymentString(&v38->isa, 0);
      v40 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v39];
      [v7 addObject:v40];
    }

    else
    {
      v11 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_10.isa, 0);
      v18 = [PKPaymentRequest paymentBillingAddressInvalidErrorWithKey:@"post" localizedDescription:v11];
      [v7 addObject:v18];
    }

LABEL_23:
  }

  if (a4)
  {
    *a4 = [v7 copy];
  }

  v41 = [v7 count] == 0;

  return v41;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_quoteAuthorizationCoordinator == v8)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v25 = self;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: paymentAuthorizationCoordinator:didAuthorizePeerPaymentQuote: %@ callback called.", buf, 0x16u);
    }

    if (v9)
    {
      v23 = 0;
      v12 = [(PKPeerPaymentController *)self _contactInfoIsValidForAuthorizedQuote:v9 errors:&v23];
      v13 = v23;
      if (v12)
      {
        is = self->_is;
        self->_quoteAuthorizationSuccess = 1;
        [(PKPaymentAuthorizationResult *)v9 setPaymentMethodType:[(PKPeerPaymentQuoteRequest *)is->quoteRequest paymentMethodType]];
        objc_storeStrong(&self->_is->authorizedQuote, a4);
        quoteAuthorizationError = self->_quoteAuthorizationError;
        self->_quoteAuthorizationError = 0;

        if (self->_performOnAuthorization)
        {
          dispatch_group_leave(self->_quoteAuthorizationGroup);
          performQuoteGroup = self->_performQuoteGroup;
          if (performQuoteGroup)
          {
            dispatch_group_enter(performQuoteGroup);
          }

          objc_initWeak(buf, self);
          authorizedQuote = self->_is->authorizedQuote;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __96__PKPeerPaymentController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke;
          v20[3] = &unk_1E79D3C48;
          objc_copyWeak(&v22, buf);
          v20[4] = self;
          v21 = v10;
          [(PKPeerPaymentController *)self _performAuthorizedQuote:authorizedQuote completion:v20];

          objc_destroyWeak(&v22);
          objc_destroyWeak(buf);
        }

        else
        {
          v19 = objc_alloc_init(PKPaymentAuthorizationResult);
          [(PKPaymentAuthorizationResult *)v19 setStatus:!self->_quoteAuthorizationSuccess];
          (*(v10 + 2))(v10, v19);
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v25 = self;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: contact information was invalid with errors %@. returning PKPaymentAuthorizationStatusFailure.", buf, 0x16u);
        }

        v18 = [[PKPaymentAuthorizationResult alloc] initWithStatus:1 errors:v13];
        (*(v10 + 2))(v10, v18);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v25 = self;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: authorizedPeerPaymentQuote was nil. returning PKPaymentAuthorizationStatusFailure.", buf, 0xCu);
      }

      v13 = [[PKPaymentAuthorizationResult alloc] initWithStatus:1 errors:0];
      (*(v10 + 2))(v10, v13);
    }
  }
}

void __96__PKPeerPaymentController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  v8 = v6;
  v9 = objc_alloc_init(PKPaymentAuthorizationResult);
  v10 = [*(a1 + 32) _isValidResponse:v5];
  if (!v8 && v10)
  {
    [(PKPaymentAuthorizationResult *)v9 setStatus:0];
    v11 = [*(*(a1 + 32) + 24) devicePrimaryInAppPaymentApplication];
    v8 = [v11 dpanIdentifier];

    v12 = [v5 transactionIdentifier];
    v13 = v12;
    if (v8 && v12)
    {
      v14 = objc_alloc_init(PKPeerPaymentTransactionMetadata);
      [(PKPeerPaymentTransactionMetadata *)v14 setDPANIdentifier:v8];
      [(PKPeerPaymentTransactionMetadata *)v14 setServiceIdentifier:v13];
      v15 = [*(*(*(a1 + 32) + 8) + 48) deviceScoreIdentifier];
      [(PKPeerPaymentTransactionMetadata *)v14 setRequestDeviceScoreIdentifier:v15];

      v16 = [v5 deviceScoreIdentifier];
      [(PKPeerPaymentTransactionMetadata *)v14 setSendDeviceScoreIdentifier:v16];

      [(PKPaymentAuthorizationResult *)v9 setPeerPaymentTransactionMetadata:v14];
    }

    WeakRetained[112] = 1;

    v17 = 0;
    goto LABEL_17;
  }

  [(PKPaymentAuthorizationResult *)v9 setStatus:1];
  v18 = [v8 domain];
  if (![v18 isEqualToString:@"PKPeerPaymentWebServiceErrorDomain"])
  {
    goto LABEL_12;
  }

  v19 = [v8 code];

  if (v19 == 40397)
  {
    v20 = [v8 userInfo];
    v18 = [v20 objectForKey:*MEMORY[0x1E696A588]];

    if ([v18 length])
    {
      [(PKPaymentAuthorizationResult *)v9 setLocalizedErrorMessageOverride:v18];
      v21 = *(a1 + 32);
      v22 = *(v21 + 120);
      *(v21 + 120) = 0;

      v8 = 0;
    }

LABEL_12:
  }

  if (*(*(*(a1 + 32) + 8) + 16) == 2)
  {
    [WeakRetained _resetToState:5];
  }

  WeakRetained[112] = 0;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v17 = [objc_opt_class() _paymentNotCompletedErrorWithError:v8];
LABEL_17:

LABEL_18:
  v23 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"YES";
    v25 = *(a1 + 32);
    v27 = 134218754;
    if (!v5)
    {
      v24 = @"NO";
    }

    v28 = v25;
    v29 = 2112;
    v30 = v24;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentController %p: perform quote finished with success: %@, returning error: %@, returning: %@ to the authorization controller.", &v27, 0x2Au);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v26 = *(*(a1 + 32) + 96);
  if (v26)
  {
    dispatch_group_leave(v26);
  }

LABEL_25:
}

- (BOOL)_isValidResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "PKPeerPaymentController: no perform response returned to validate with.", buf, 2u);
    }

    goto LABEL_8;
  }

  v6 = ([v4 status] + 1) < 3;
  v7 = [(PKPeerPaymentQuote *)self->_is->quote calculatedTotalAmount];
  v8 = [v7 amount];

  v9 = [(PKPeerPaymentQuote *)self->_is->quote totalReceiveAmountCurrency];
  LOBYTE(v7) = [v5 amountHashIsValidForAmount:v8 andCurrency:v9];

  if ((v7 & 1) == 0)
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "PKPeerPaymentController: amount hash is mismatched between quote and perform.", v12, 2u);
    }

LABEL_8:
    v6 = 0;
  }

  return v6;
}

+ (void)_sendAuthorizedQuoteAnalyticsWithSuccess:(BOOL)a3 mode:(unint64_t)a4 authorizedQuote:(id)a5 status:(int64_t)a6
{
  v8 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "NearbyPeerPayment: sending analytics for authorized quote: %@", buf, 0xCu);
  }

  v11 = [v9 peerPaymentQuote];
  v12 = [v11 totalReceiveAmount];
  v13 = v12;
  if (a4 == 5)
  {
    if (v8)
    {
      v27 = @"success";
      v28 = @"amount";
      v29 = MEMORY[0x1E695E118];
      v30 = v12;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v29;
      v16 = &v27;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (a4 == 4)
  {
    if (v8)
    {
      v31 = @"success";
      v32 = @"amount";
      v33 = MEMORY[0x1E695E118];
      v34 = v12;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v33;
      v16 = &v31;
LABEL_9:
      v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{2, v27, v28, v29, v30, v31, v32, v33, v34}];
      AnalyticsSendEvent();
LABEL_21:

      goto LABEL_22;
    }

LABEL_15:
    AnalyticsSendEvent();
    goto LABEL_22;
  }

  if (a4 - 1 <= 1)
  {
    if (v8)
    {
      v18 = [v11 items];
      v19 = [v18 count];

      v20 = [v11 items];
      v21 = v20;
      if (v19 == 1)
      {
        v22 = [v20 firstObject];

        if ([v22 type] == 1)
        {
          [v9 paymentMethodType];
        }

        AnalyticsSendEvent();

        goto LABEL_20;
      }

      v23 = [v20 count];

      if (v23 != 2)
      {
LABEL_20:
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v24 = PKAnalyticsAmountCategoryForAmount(v13);
        [v17 setObject:v24 forKey:@"p2pAmountCategory"];

        v25 = [v11 totalReceiveAmountCurrency];
        [v17 setObject:v25 forKey:@"p2pCurrency"];

        v26 = PKPaymentTransactionStatusToString(a6);
        [v17 setObject:v26 forKey:@"p2pPerformStatus"];

        PKAnalyticsSendEventWithDailyLimit(@"com.apple.wallet.peer.payment.perform", v17, 2);
        goto LABEL_21;
      }

      [v9 paymentMethodType];
    }

    AnalyticsSendEvent();
    goto LABEL_20;
  }

LABEL_22:
}

- (PKPeerPaymentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestTokenForAmount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKPeerPaymentController_PKDeprecated__requestTokenForAmount_completion___block_invoke;
  v8[3] = &unk_1E79D3C70;
  v9 = v6;
  v7 = v6;
  [(PKPeerPaymentController *)self formalRequestTokenForAmount:a3 source:0 completion:v8];
}

void __74__PKPeerPaymentController_PKDeprecated__requestTokenForAmount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v7 = a4;
    v8 = [a3 requestToken];
    (*(v4 + 16))(v4, a2, v8, v7);
  }
}

@end