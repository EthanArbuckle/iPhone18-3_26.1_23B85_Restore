@interface PKExtensionHostContext
- (PKExtensionHostContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (PKPaymentAuthorizationHostProtocol)delegate;
- (void)authorizationDidAuthorizePayment:(id)a3;
- (void)authorizationDidAuthorizePeerPaymentQuote:(id)a3;
- (void)authorizationDidAuthorizePurchase:(id)a3;
- (void)authorizationDidChangeCouponCode:(id)a3;
- (void)authorizationDidFinishWithError:(id)a3;
- (void)authorizationDidPresent;
- (void)authorizationDidRequestMerchantSession;
- (void)authorizationDidSelectPaymentMethod:(id)a3;
- (void)authorizationDidSelectShippingAddress:(id)a3;
- (void)authorizationDidSelectShippingMethod:(id)a3;
- (void)authorizationWillStart;
- (void)didEncounterAuthorizationEvent:(unint64_t)a3;
@end

@implementation PKExtensionHostContext

- (PKExtensionHostContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v9.receiver = self;
  v9.super_class = PKExtensionHostContext;
  v5 = [(PKExtensionHostContext *)&v9 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  if (v5)
  {
    v6 = dispatch_group_create();
    delayCallbacksGroup = v5->_delayCallbacksGroup;
    v5->_delayCallbacksGroup = v6;
  }

  return v5;
}

- (void)authorizationWillStart
{
  delayCallbacksGroup = self->_delayCallbacksGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PKExtensionHostContext_authorizationWillStart__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], block);
}

void __48__PKExtensionHostContext_authorizationWillStart__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 authorizationWillStart];
}

- (void)authorizationDidFinishWithError:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKExtensionHostContext_authorizationDidFinishWithError___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __58__PKExtensionHostContext_authorizationDidFinishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidFinishWithError:*(a1 + 40)];
}

- (void)authorizationDidRequestMerchantSession
{
  delayCallbacksGroup = self->_delayCallbacksGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKExtensionHostContext_authorizationDidRequestMerchantSession__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], block);
}

void __64__PKExtensionHostContext_authorizationDidRequestMerchantSession__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 authorizationDidRequestMerchantSession];
}

- (void)authorizationDidAuthorizePayment:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKExtensionHostContext_authorizationDidAuthorizePayment___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __59__PKExtensionHostContext_authorizationDidAuthorizePayment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidAuthorizePayment:*(a1 + 40)];
}

- (void)authorizationDidAuthorizePurchase:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKExtensionHostContext_authorizationDidAuthorizePurchase___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __60__PKExtensionHostContext_authorizationDidAuthorizePurchase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidAuthorizePurchase:*(a1 + 40)];
}

- (void)authorizationDidAuthorizePeerPaymentQuote:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKExtensionHostContext_authorizationDidAuthorizePeerPaymentQuote___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __68__PKExtensionHostContext_authorizationDidAuthorizePeerPaymentQuote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidAuthorizePeerPaymentQuote:*(a1 + 40)];
}

- (void)authorizationDidSelectShippingMethod:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKExtensionHostContext_authorizationDidSelectShippingMethod___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __63__PKExtensionHostContext_authorizationDidSelectShippingMethod___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidSelectShippingMethod:*(a1 + 40)];
}

- (void)authorizationDidSelectShippingAddress:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKExtensionHostContext_authorizationDidSelectShippingAddress___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __64__PKExtensionHostContext_authorizationDidSelectShippingAddress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidSelectShippingAddress:*(a1 + 40)];
}

- (void)authorizationDidSelectPaymentMethod:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKExtensionHostContext_authorizationDidSelectPaymentMethod___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __62__PKExtensionHostContext_authorizationDidSelectPaymentMethod___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidSelectPaymentMethod:*(a1 + 40)];
}

- (void)authorizationDidChangeCouponCode:(id)a3
{
  v4 = a3;
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKExtensionHostContext_authorizationDidChangeCouponCode___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v7);
}

void __59__PKExtensionHostContext_authorizationDidChangeCouponCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 authorizationDidChangeCouponCode:*(a1 + 40)];
}

- (void)authorizationDidPresent
{
  delayCallbacksGroup = self->_delayCallbacksGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKExtensionHostContext_authorizationDidPresent__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], block);
}

void __49__PKExtensionHostContext_authorizationDidPresent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 authorizationDidPresent];
  }
}

- (void)didEncounterAuthorizationEvent:(unint64_t)a3
{
  delayCallbacksGroup = self->_delayCallbacksGroup;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKExtensionHostContext_didEncounterAuthorizationEvent___block_invoke;
  v4[3] = &unk_1E79CAED8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_group_notify(delayCallbacksGroup, MEMORY[0x1E69E96A0], v4);
}

void __57__PKExtensionHostContext_didEncounterAuthorizationEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 didEncounterAuthorizationEvent:*(a1 + 40)];
  }
}

- (PKPaymentAuthorizationHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end