@interface PKExtensionVendorContext
- (id)entitlementWhitelist;
- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizePaymentCompleteWithStatus:(int64_t)status;
- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status;
- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)update;
- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectPaymentMethodCompleteWithPaymentSummaryItems:(id)items;
- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectShippingAddressCompleteWithStatus:(int64_t)status shippingMethods:(id)methods paymentSummaryItems:(id)items;
- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectShippingMethodCompleteWithStatus:(int64_t)status paymentSummaryItems:(id)items;
- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)update;
- (void)handleDismissWithCompletion:(id)completion;
- (void)handleHostApplicationDidBecomeActive;
- (void)handleHostApplicationDidCancel;
- (void)handleHostApplicationWillResignActive:(BOOL)active;
- (void)prepareWithPaymentRequest:(id)request completion:(id)completion;
@end

@implementation PKExtensionVendorContext

- (void)handleHostApplicationWillResignActive:(BOOL)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PKExtensionVendorContext_handleHostApplicationWillResignActive___block_invoke;
  v3[3] = &unk_1E79C4EC8;
  v3[4] = self;
  activeCopy = active;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __66__PKExtensionVendorContext_handleHostApplicationWillResignActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 handleHostApplicationWillResignActive:*(a1 + 40)];
}

- (void)handleHostApplicationDidBecomeActive
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKExtensionVendorContext_handleHostApplicationDidBecomeActive__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__PKExtensionVendorContext_handleHostApplicationDidBecomeActive__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _principalObject];
  [v1 handleHostApplicationDidBecomeActive];
}

- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PKExtensionVendorContext_authorizationDidRequestMerchantSessionCompleteWithUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = updateCopy;
  selfCopy = self;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __85__PKExtensionVendorContext_authorizationDidRequestMerchantSessionCompleteWithUpdate___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) status] || (objc_msgSend(*(a1 + 40), "entitlementWhitelist"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "session"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "isEntitledForMerchantSession:", v3), v3, v2, !v4))
  {
    v5 = [[PKPaymentRequestMerchantSessionUpdate alloc] initWithStatus:1 merchantSession:0];
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v7 = v5;
  v6 = [*(a1 + 40) _principalObject];
  [v6 authorizationDidRequestMerchantSessionCompleteWithUpdate:v7];
}

- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKExtensionVendorContext_authorizationDidAuthorizePaymentCompleteWithResult___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __79__PKExtensionVendorContext_authorizationDidAuthorizePaymentCompleteWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidAuthorizePaymentCompleteWithResult:*(a1 + 40)];
}

- (void)authorizationDidAuthorizePaymentCompleteWithStatus:(int64_t)status
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PKExtensionVendorContext_authorizationDidAuthorizePaymentCompleteWithStatus___block_invoke;
  v3[3] = &unk_1E79CAED8;
  v3[4] = self;
  v3[5] = status;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __79__PKExtensionVendorContext_authorizationDidAuthorizePaymentCompleteWithStatus___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v3 setStatus:*(a1 + 40)];
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidAuthorizePaymentCompleteWithResult:v3];
}

- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PKExtensionVendorContext_authorizationDidAuthorizePurchaseCompleteWithStatus___block_invoke;
  v3[3] = &unk_1E79CAED8;
  v3[4] = self;
  v3[5] = status;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __80__PKExtensionVendorContext_authorizationDidAuthorizePurchaseCompleteWithStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidAuthorizePurchaseCompleteWithStatus:*(a1 + 40)];
}

- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__PKExtensionVendorContext_authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __88__PKExtensionVendorContext_authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:*(a1 + 40)];
}

- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKExtensionVendorContext_authorizationDidSelectShippingMethodCompleteWithUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __83__PKExtensionVendorContext_authorizationDidSelectShippingMethodCompleteWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidSelectShippingMethodCompleteWithUpdate:*(a1 + 40)];
}

- (void)authorizationDidSelectShippingMethodCompleteWithStatus:(int64_t)status paymentSummaryItems:(id)items
{
  itemsCopy = items;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__PKExtensionVendorContext_authorizationDidSelectShippingMethodCompleteWithStatus_paymentSummaryItems___block_invoke;
  block[3] = &unk_1E79CBF50;
  selfCopy = self;
  statusCopy = status;
  v9 = itemsCopy;
  v7 = itemsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __103__PKExtensionVendorContext_authorizationDidSelectShippingMethodCompleteWithStatus_paymentSummaryItems___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(PKPaymentRequestShippingMethodUpdate);
  [(PKPaymentRequestUpdate *)v3 setStatus:*(a1 + 48)];
  [(PKPaymentRequestUpdate *)v3 setPaymentSummaryItems:*(a1 + 32)];
  v2 = [*(a1 + 40) _principalObject];
  [v2 authorizationDidSelectShippingMethodCompleteWithUpdate:v3];
}

- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__PKExtensionVendorContext_authorizationDidSelectShippingAddressCompleteWithUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __84__PKExtensionVendorContext_authorizationDidSelectShippingAddressCompleteWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidSelectShippingAddressCompleteWithUpdate:*(a1 + 40)];
}

- (void)authorizationDidSelectShippingAddressCompleteWithStatus:(int64_t)status shippingMethods:(id)methods paymentSummaryItems:(id)items
{
  methodsCopy = methods;
  itemsCopy = items;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__PKExtensionVendorContext_authorizationDidSelectShippingAddressCompleteWithStatus_shippingMethods_paymentSummaryItems___block_invoke;
  v12[3] = &unk_1E79D6948;
  v13 = itemsCopy;
  v14 = methodsCopy;
  selfCopy = self;
  statusCopy = status;
  v10 = methodsCopy;
  v11 = itemsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __120__PKExtensionVendorContext_authorizationDidSelectShippingAddressCompleteWithStatus_shippingMethods_paymentSummaryItems___block_invoke(uint64_t a1)
{
  v2 = [PKPaymentRequestShippingContactUpdate alloc];
  v4 = [(PKPaymentRequestShippingContactUpdate *)v2 initWithErrors:MEMORY[0x1E695E0F0] paymentSummaryItems:*(a1 + 32) shippingMethods:*(a1 + 40)];
  [(PKPaymentRequestUpdate *)v4 setStatus:*(a1 + 56)];
  v3 = [*(a1 + 48) _principalObject];
  [v3 authorizationDidSelectShippingAddressCompleteWithUpdate:v4];
}

- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__PKExtensionVendorContext_authorizationDidSelectPaymentMethodCompleteWithUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __82__PKExtensionVendorContext_authorizationDidSelectPaymentMethodCompleteWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidSelectPaymentMethodCompleteWithUpdate:*(a1 + 40)];
}

- (void)authorizationDidSelectPaymentMethodCompleteWithPaymentSummaryItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__PKExtensionVendorContext_authorizationDidSelectPaymentMethodCompleteWithPaymentSummaryItems___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = itemsCopy;
  selfCopy = self;
  v5 = itemsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __95__PKExtensionVendorContext_authorizationDidSelectPaymentMethodCompleteWithPaymentSummaryItems___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  [(PKPaymentRequestUpdate *)v3 setPaymentSummaryItems:*(a1 + 32)];
  v2 = [*(a1 + 40) _principalObject];
  [v2 authorizationDidSelectPaymentMethodCompleteWithUpdate:v3];
}

- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKExtensionVendorContext_authorizationDidChangeCouponCodeCompleteWithUpdate___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __79__PKExtensionVendorContext_authorizationDidChangeCouponCodeCompleteWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 authorizationDidChangeCouponCodeCompleteWithUpdate:*(a1 + 40)];
}

- (void)handleHostApplicationDidCancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKExtensionVendorContext_handleHostApplicationDidCancel__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__PKExtensionVendorContext_handleHostApplicationDidCancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _principalObject];
  if (objc_opt_respondsToSelector())
  {
    [v1 handleHostApplicationDidCancel];
  }
}

- (void)handleDismissWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKExtensionVendorContext_handleDismissWithCompletion___block_invoke;
  v6[3] = &unk_1E79C4A40;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__PKExtensionVendorContext_handleDismissWithCompletion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _principalObject];
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 40);
  if (v2)
  {
    [v4 handleDismissWithCompletion:v3];
  }

  else if (v3)
  {
    (*(v3 + 16))(*(a1 + 40));
  }
}

- (void)prepareWithPaymentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKExtensionVendorContext_prepareWithPaymentRequest_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PKExtensionVendorContext_prepareWithPaymentRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementWhitelist];
  v3 = [v2 isEntitledForPaymentRequest:*(a1 + 40)];

  if (v3)
  {
    v5 = [*(a1 + 32) _principalObject];
    if (objc_opt_respondsToSelector())
    {
      [v5 prepareWithPaymentRequest:*(a1 + 40) completion:*(a1 + 48)];
    }
  }

  else
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:4 userInfo:0];
    (*(v4 + 16))(v4);
  }
}

- (id)entitlementWhitelist
{
  whitelist = self->_whitelist;
  if (!whitelist)
  {
    v4 = [PKEntitlementWhitelist alloc];
    _auxiliaryConnection = [(PKExtensionVendorContext *)self _auxiliaryConnection];
    v6 = [(PKEntitlementWhitelist *)v4 initWithConnection:_auxiliaryConnection];
    v7 = self->_whitelist;
    self->_whitelist = v6;

    whitelist = self->_whitelist;
  }

  return whitelist;
}

@end