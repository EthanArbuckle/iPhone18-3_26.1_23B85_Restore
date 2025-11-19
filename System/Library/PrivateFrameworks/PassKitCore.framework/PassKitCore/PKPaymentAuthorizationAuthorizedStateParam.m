@interface PKPaymentAuthorizationAuthorizedStateParam
+ (id)paramWithApplePayTrustSignature:(id)a3;
+ (id)paramWithAuthorizedPeerPaymentQuote:(id)a3;
+ (id)paramWithInstallmentAuthorizationToken:(id)a3;
+ (id)paramWithPayment:(id)a3;
+ (id)paramWithPaymentToken:(id)a3 rewrapResponse:(id)a4;
+ (id)paramWithPurchase:(id)a3 purchaseTransactionIdentifier:(id)a4;
- (id)description;
@end

@implementation PKPaymentAuthorizationAuthorizedStateParam

+ (id)paramWithPaymentToken:(id)a3 rewrapResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 param];
  [v8 setPaymentToken:v7];

  [v8 setRewrapResponse:v6];

  return v8;
}

+ (id)paramWithPayment:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  [v5 setPayment:v4];

  return v5;
}

+ (id)paramWithPurchase:(id)a3 purchaseTransactionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 param];
  [v8 setPurchase:v7];

  [v8 setPurchaseTransactionIdentifier:v6];

  return v8;
}

+ (id)paramWithAuthorizedPeerPaymentQuote:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  v6 = v5[6];
  v5[6] = v4;

  return v5;
}

+ (id)paramWithApplePayTrustSignature:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  v6 = v5[7];
  v5[7] = v4;

  return v5;
}

+ (id)paramWithInstallmentAuthorizationToken:(id)a3
{
  v4 = a3;
  v5 = [a1 param];
  v6 = v5[8];
  v5[8] = v4;

  return v5;
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