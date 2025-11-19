@interface PKPaymentAuthorizationErrorStateParam
+ (id)paramWithError:(id)a3 clientFailure:(BOOL)a4;
+ (id)paramWithError:(id)a3 paymentOffersError:(BOOL)a4;
- (id)description;
@end

@implementation PKPaymentAuthorizationErrorStateParam

+ (id)paramWithError:(id)a3 clientFailure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 param];
  [v7 setError:v6];

  [v7 setClientFailure:v4];

  return v7;
}

+ (id)paramWithError:(id)a3 paymentOffersError:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 param];
  [v7 setError:v6];

  [v7 setPaymentOffersError:v4];

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_clientFailure)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"clientFailure: '%@'; ", v4];
  if (self->_paymentOffersError)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"paymentOffersError: '%@'; ", v5];
  [v3 appendFormat:@">"];

  return v3;
}

@end