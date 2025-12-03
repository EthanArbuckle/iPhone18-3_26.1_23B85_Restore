@interface PKPaymentAuthorizationErrorStateParam
+ (id)paramWithError:(id)error clientFailure:(BOOL)failure;
+ (id)paramWithError:(id)error paymentOffersError:(BOOL)offersError;
- (id)description;
@end

@implementation PKPaymentAuthorizationErrorStateParam

+ (id)paramWithError:(id)error clientFailure:(BOOL)failure
{
  failureCopy = failure;
  errorCopy = error;
  param = [self param];
  [param setError:errorCopy];

  [param setClientFailure:failureCopy];

  return param;
}

+ (id)paramWithError:(id)error paymentOffersError:(BOOL)offersError
{
  offersErrorCopy = offersError;
  errorCopy = error;
  param = [self param];
  [param setError:errorCopy];

  [param setPaymentOffersError:offersErrorCopy];

  return param;
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