@interface PKPaymentAuthorizationAuthorizedStateParam
+ (id)paramWithApplePayTrustSignature:(id)signature;
+ (id)paramWithAuthorizedPeerPaymentQuote:(id)quote;
+ (id)paramWithInstallmentAuthorizationToken:(id)token;
+ (id)paramWithPayment:(id)payment;
+ (id)paramWithPaymentToken:(id)token rewrapResponse:(id)response;
+ (id)paramWithPurchase:(id)purchase purchaseTransactionIdentifier:(id)identifier;
- (id)description;
@end

@implementation PKPaymentAuthorizationAuthorizedStateParam

+ (id)paramWithPaymentToken:(id)token rewrapResponse:(id)response
{
  responseCopy = response;
  tokenCopy = token;
  param = [self param];
  [param setPaymentToken:tokenCopy];

  [param setRewrapResponse:responseCopy];

  return param;
}

+ (id)paramWithPayment:(id)payment
{
  paymentCopy = payment;
  param = [self param];
  [param setPayment:paymentCopy];

  return param;
}

+ (id)paramWithPurchase:(id)purchase purchaseTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  purchaseCopy = purchase;
  param = [self param];
  [param setPurchase:purchaseCopy];

  [param setPurchaseTransactionIdentifier:identifierCopy];

  return param;
}

+ (id)paramWithAuthorizedPeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  param = [self param];
  v6 = param[6];
  param[6] = quoteCopy;

  return param;
}

+ (id)paramWithApplePayTrustSignature:(id)signature
{
  signatureCopy = signature;
  param = [self param];
  v6 = param[7];
  param[7] = signatureCopy;

  return param;
}

+ (id)paramWithInstallmentAuthorizationToken:(id)token
{
  tokenCopy = token;
  param = [self param];
  v6 = param[8];
  param[8] = tokenCopy;

  return param;
}

- (id)description
{
  if (self->_payment)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; payment: %@>", objc_opt_class(), self, self->_payment];
  }

  else
  {
    purchase = self->_purchase;
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    if (purchase)
    {
      [v4 stringWithFormat:@"<%@: %p; purchase: %@>", v5, self, self->_purchase];
    }

    else
    {
      [v4 stringWithFormat:@"<%@: %p; paymentToken: %@>", v5, self, self->_paymentToken];
    }
  }
  v6 = ;

  return v6;
}

@end