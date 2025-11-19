@interface PKPaymentAuthorizationRewrapStateParam
+ (id)paramWithWrappedPayment:(id)a3 nonce:(id)a4 credential:(id)a5 cryptogramType:(int64_t)a6;
- (id)description;
@end

@implementation PKPaymentAuthorizationRewrapStateParam

+ (id)paramWithWrappedPayment:(id)a3 nonce:(id)a4 credential:(id)a5 cryptogramType:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 param];
  [v13 setWrappedPayment:v12];

  [v13 setNonceData:v11];
  [v13 setCredential:v10];

  [v13 setCryptogramType:a6];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  wrappedPayment = self->_wrappedPayment;
  v6 = [(NSData *)self->_nonceData hexEncoding];
  v7 = [v3 stringWithFormat:@"<%@: %p wrappedPayment: %@; nonceData: %@>", v4, self, wrappedPayment, v6];;

  return v7;
}

@end