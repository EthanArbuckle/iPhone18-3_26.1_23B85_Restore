@interface PKPaymentAuthorizationPrepareTransactionDetailsStateParam
+ (id)paramWithMerchantSession:(id)session secureElementIdentifier:(id)identifier transactionAmount:(id)amount currencyCode:(id)code;
- (id)description;
@end

@implementation PKPaymentAuthorizationPrepareTransactionDetailsStateParam

+ (id)paramWithMerchantSession:(id)session secureElementIdentifier:(id)identifier transactionAmount:(id)amount currencyCode:(id)code
{
  codeCopy = code;
  amountCopy = amount;
  identifierCopy = identifier;
  sessionCopy = session;
  param = [self param];
  [param setMerchantSession:sessionCopy];

  [param setSecureElementIdentifier:identifierCopy];
  [param setTransactionAmount:amountCopy];

  [param setCurrencyCode:codeCopy];

  return param;
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