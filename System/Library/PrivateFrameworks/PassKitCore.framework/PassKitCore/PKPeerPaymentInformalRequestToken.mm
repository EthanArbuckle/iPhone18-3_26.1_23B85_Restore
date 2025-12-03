@interface PKPeerPaymentInformalRequestToken
+ (id)token;
- (id)description;
@end

@implementation PKPeerPaymentInformalRequestToken

+ (id)token
{
  v2 = [(PKPeerPaymentRequestToken *)[PKPeerPaymentInformalRequestToken alloc] initWithRequestToken:@"PKPeerPaymentInformalRequestToken"];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  requestToken = [(PKPeerPaymentRequestToken *)self requestToken];
  [v6 appendFormat:@"requestToken: '%@'; ", requestToken];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

@end