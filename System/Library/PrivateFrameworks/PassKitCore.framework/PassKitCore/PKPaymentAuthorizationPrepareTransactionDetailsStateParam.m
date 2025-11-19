@interface PKPaymentAuthorizationPrepareTransactionDetailsStateParam
+ (id)paramWithMerchantSession:(id)a3 secureElementIdentifier:(id)a4 transactionAmount:(id)a5 currencyCode:(id)a6;
- (id)description;
@end

@implementation PKPaymentAuthorizationPrepareTransactionDetailsStateParam

+ (id)paramWithMerchantSession:(id)a3 secureElementIdentifier:(id)a4 transactionAmount:(id)a5 currencyCode:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 param];
  [v14 setMerchantSession:v13];

  [v14 setSecureElementIdentifier:v12];
  [v14 setTransactionAmount:v11];

  [v14 setCurrencyCode:v10];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p merchantSession: %@; secureElementIdentifier: %@; transactionAmount: %@, currencyCode: %@;>", v5, self, self->_merchantSession, self->_secureElementIdentifier, @"<redacted>", self->_currencyCode];;

  return v6;
}

@end