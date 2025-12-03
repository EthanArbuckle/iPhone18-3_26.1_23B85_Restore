@interface PKPaymentAuthorizationRewrapStateParam
+ (id)paramWithWrappedPayment:(id)payment nonce:(id)nonce credential:(id)credential cryptogramType:(int64_t)type;
- (id)description;
@end

@implementation PKPaymentAuthorizationRewrapStateParam

+ (id)paramWithWrappedPayment:(id)payment nonce:(id)nonce credential:(id)credential cryptogramType:(int64_t)type
{
  credentialCopy = credential;
  nonceCopy = nonce;
  paymentCopy = payment;
  param = [self param];
  [param setWrappedPayment:paymentCopy];

  [param setNonceData:nonceCopy];
  [param setCredential:credentialCopy];

  [param setCryptogramType:type];

  return param;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  wrappedPayment = self->_wrappedPayment;
  hexEncoding = [(NSData *)self->_nonceData hexEncoding];
  v7 = [v3 stringWithFormat:@"<%@: %p wrappedPayment: %@; nonceData: %@>", v4, self, wrappedPayment, hexEncoding];;

  return v7;
}

@end