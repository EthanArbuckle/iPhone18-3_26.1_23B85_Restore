@interface PKPaymentAuthorizationCoordinatorExportedObject
- (PKPaymentAuthorizationCoordinator)controller;
- (PKPaymentAuthorizationCoordinatorDelegate)delegate;
- (PKPaymentAuthorizationCoordinatorExportedObject)initWithController:(id)controller;
- (PKPaymentAuthorizationCoordinatorPrivateDelegate)privateDelegate;
- (void)authorizationDidAuthorizeApplePayTrustSignature:(id)signature;
- (void)authorizationDidAuthorizeContext;
- (void)authorizationDidAuthorizePayment:(id)payment;
- (void)authorizationDidAuthorizePeerPaymentQuote:(id)quote;
- (void)authorizationDidAuthorizePurchase:(id)purchase;
- (void)authorizationDidChangeCouponCode:(id)code;
- (void)authorizationDidFinishWithError:(id)error;
- (void)authorizationDidRequestMerchantSession;
- (void)authorizationDidSelectPaymentMethod:(id)method;
- (void)authorizationDidSelectShippingAddress:(id)address;
- (void)authorizationDidSelectShippingMethod:(id)method;
- (void)authorizationDidUpdateAccountServicePaymentMethod:(id)method;
- (void)authorizationWillStart;
- (void)dealloc;
- (void)didEncounterAuthorizationEvent:(unint64_t)event;
- (void)handleConnectionDidOpenWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setPrivateDelegate:(id)delegate;
@end

@implementation PKPaymentAuthorizationCoordinatorExportedObject

- (PKPaymentAuthorizationCoordinatorExportedObject)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PKPaymentAuthorizationCoordinatorExportedObject;
  v5 = [(PKPaymentAuthorizationCoordinatorExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    v6->_delegateLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentAuthorizationCoordinatorExportedObject;
  [(PKPaymentAuthorizationCoordinatorExportedObject *)&v2 dealloc];
}

- (void)handleConnectionDidOpenWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)didEncounterAuthorizationEvent:(unint64_t)event
{
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didEncounterAuthorizationEvent:event];
  }
}

- (void)authorizationWillStart
{
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [delegate paymentAuthorizationCoordinatorWillAuthorizePayment:WeakRetained];
  }
}

- (void)authorizationDidRequestMerchantSession
{
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __89__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidRequestMerchantSession__block_invoke;
    v5[3] = &unk_1E79CEAC8;
    v5[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didRequestMerchantSessionUpdate:v5];
  }

  else
  {
    WeakRetained = [[PKPaymentRequestMerchantSessionUpdate alloc] initWithStatus:1 merchantSession:0];
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidRequestMerchantSessionCompleteWithUpdate:WeakRetained];
  }
}

- (void)authorizationDidFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained willFinishWithError:errorCopy];
  }

  v7 = objc_loadWeakRetained(&self->_controller);
  [delegate paymentAuthorizationCoordinatorDidFinish:v7];
}

- (void)authorizationDidAuthorizeContext
{
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizeContext__block_invoke;
    v5[3] = &unk_1E79CEAF0;
    v5[4] = self;
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didAuthorizeContextWithHandler:v5];
  }

  else
  {
    WeakRetained = [[PKPaymentAuthorizationResult alloc] initWithStatus:0 errors:0];
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidAuthorizeContextCompleteWithResult:WeakRetained];
  }
}

- (void)authorizationDidAuthorizePayment:(id)payment
{
  paymentCopy = payment;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  v6 = objc_opt_respondsToSelector();
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizePayment___block_invoke;
    v9[3] = &unk_1E79CEAF0;
    v9[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didAuthorizePayment:paymentCopy handler:v9];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizePayment___block_invoke_2;
    v8[3] = &unk_1E79CEB18;
    v8[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didAuthorizePayment:paymentCopy completion:v8];
  }
}

void __84__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizePayment___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v4 setStatus:a2];
  [*(*(a1 + 32) + 40) authorizationDidAuthorizePaymentCompleteWithResult:v4];
}

- (void)authorizationDidAuthorizePurchase:(id)purchase
{
  purchaseCopy = purchase;
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __85__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizePurchase___block_invoke;
    v7[3] = &unk_1E79CEB18;
    v7[4] = self;
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didAuthorizePurchase:purchaseCopy completion:v7];
  }

  else
  {
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidAuthorizePurchaseCompleteWithStatus:0];
  }
}

- (void)authorizationDidAuthorizePeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizePeerPaymentQuote___block_invoke;
    v7[3] = &unk_1E79CEAF0;
    v7[4] = self;
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didAuthorizePeerPaymentQuote:quoteCopy handler:v7];
  }

  else
  {
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidAuthorizePurchaseCompleteWithStatus:0];
  }
}

- (void)authorizationDidAuthorizeApplePayTrustSignature:(id)signature
{
  signatureCopy = signature;
  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __99__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidAuthorizeApplePayTrustSignature___block_invoke;
    v7[3] = &unk_1E79CEAF0;
    v7[4] = self;
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didAuthorizeApplePayTrustSignature:signatureCopy handler:v7];
  }

  else
  {
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidAuthorizePurchaseCompleteWithStatus:0];
  }
}

- (void)authorizationDidUpdateAccountServicePaymentMethod:(id)method
{
  v11 = *MEMORY[0x1E69E9840];
  methodCopy = method;
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PKPaymentAuthorizationCoordinatorExportedObject authorizationDidUpdateAccountServicePaymentMethod:]";
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  privateDelegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidUpdateAccountServicePaymentMethod___block_invoke;
    v8[3] = &unk_1E79CEB40;
    v8[4] = self;
    [privateDelegate paymentAuthorizationCoordinator:WeakRetained didUpdateAccountServicePaymentMethod:methodCopy handler:v8];
  }

  else
  {
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidUpdateAccountServicePaymentMethodCompleteWithUpdate:0 signatureRequest:0];
  }
}

- (void)authorizationDidSelectShippingMethod:(id)method
{
  methodCopy = method;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingMethod___block_invoke;
    v8[3] = &unk_1E79CEB68;
    v8[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectShippingMethod:methodCopy handler:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingMethod___block_invoke_2;
    v7[3] = &unk_1E79CEB90;
    v7[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectShippingMethod:methodCopy completion:v7];
  }

  else
  {
    WeakRetained = objc_alloc_init(PKPaymentRequestShippingMethodUpdate);
    [(PKPaymentRequestUpdate *)WeakRetained setStatus:0];
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidSelectShippingMethodCompleteWithUpdate:WeakRetained];
  }
}

void __88__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingMethod___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(PKPaymentRequestShippingMethodUpdate);
  [(PKPaymentRequestUpdate *)v6 setStatus:a2];
  [(PKPaymentRequestUpdate *)v6 setPaymentSummaryItems:v5];

  [*(*(a1 + 32) + 40) authorizationDidSelectShippingMethodCompleteWithUpdate:v6];
}

- (void)authorizationDidSelectShippingAddress:(id)address
{
  addressCopy = address;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingAddress___block_invoke;
    v8[3] = &unk_1E79CEBB8;
    v8[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectShippingAddress:addressCopy handler:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingAddress___block_invoke_2;
    v7[3] = &unk_1E79CEBE0;
    v7[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectShippingAddress:addressCopy completion:v7];
  }

  else
  {
    WeakRetained = objc_alloc_init(PKPaymentRequestShippingContactUpdate);
    [(PKPaymentRequestUpdate *)WeakRetained setStatus:0];
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidSelectShippingAddressCompleteWithUpdate:WeakRetained];
  }
}

void __89__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectShippingAddress___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [PKPaymentRequestShippingContactUpdate alloc];
  v10 = [(PKPaymentRequestShippingContactUpdate *)v9 initWithErrors:MEMORY[0x1E695E0F0] paymentSummaryItems:v7 shippingMethods:v8];

  [(PKPaymentRequestUpdate *)v10 setStatus:a2];
  [*(*(a1 + 32) + 40) authorizationDidSelectShippingAddressCompleteWithUpdate:v10];
}

- (void)authorizationDidSelectPaymentMethod:(id)method
{
  methodCopy = method;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectPaymentMethod___block_invoke;
    v8[3] = &unk_1E79CEC08;
    v8[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectPaymentMethod:methodCopy handler:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectPaymentMethod___block_invoke_2;
    v7[3] = &unk_1E79CEC30;
    v7[4] = self;
    [delegate paymentAuthorizationCoordinator:WeakRetained didSelectPaymentMethod:methodCopy completion:v7];
  }

  else
  {
    WeakRetained = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidSelectPaymentMethodCompleteWithUpdate:WeakRetained];
  }
}

void __87__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidSelectPaymentMethod___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  [(PKPaymentRequestUpdate *)v4 setPaymentSummaryItems:v3];

  [*(*(a1 + 32) + 40) authorizationDidSelectPaymentMethodCompleteWithUpdate:v4];
}

- (void)authorizationDidChangeCouponCode:(id)code
{
  codeCopy = code;
  delegate = [(PKPaymentAuthorizationCoordinatorExportedObject *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PKPaymentAuthorizationCoordinatorExportedObject_authorizationDidChangeCouponCode___block_invoke;
    aBlock[3] = &unk_1E79CEC58;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [delegate paymentAuthorizationCoordinator:WeakRetained didChangeCouponCode:codeCopy handler:v6];
  }

  else
  {
    v6 = objc_alloc_init(PKPaymentRequestCouponCodeUpdate);
    [(PKPaymentAuthorizationServiceProtocol *)self->_serviceProxy authorizationDidChangeCouponCodeCompleteWithUpdate:v6];
  }
}

- (PKPaymentAuthorizationCoordinatorDelegate)delegate
{
  os_unfair_lock_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (PKPaymentAuthorizationCoordinatorPrivateDelegate)privateDelegate
{
  os_unfair_lock_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);
  os_unfair_lock_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)setPrivateDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  objc_storeWeak(&self->_privateDelegate, delegateCopy);

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (PKPaymentAuthorizationCoordinator)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end