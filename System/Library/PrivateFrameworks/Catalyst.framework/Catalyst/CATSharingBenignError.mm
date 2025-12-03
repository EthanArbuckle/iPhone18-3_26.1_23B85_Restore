@interface CATSharingBenignError
- (CATSharingBenignError)initWithUnderlyingError:(id)error;
@end

@implementation CATSharingBenignError

- (CATSharingBenignError)initWithUnderlyingError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CATSharingBenignError;
  v6 = [(CATSharingBenignError *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingError, error);
  }

  return v7;
}

@end