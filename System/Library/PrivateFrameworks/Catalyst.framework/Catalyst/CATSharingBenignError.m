@interface CATSharingBenignError
- (CATSharingBenignError)initWithUnderlyingError:(id)a3;
@end

@implementation CATSharingBenignError

- (CATSharingBenignError)initWithUnderlyingError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATSharingBenignError;
  v6 = [(CATSharingBenignError *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingError, a3);
  }

  return v7;
}

@end