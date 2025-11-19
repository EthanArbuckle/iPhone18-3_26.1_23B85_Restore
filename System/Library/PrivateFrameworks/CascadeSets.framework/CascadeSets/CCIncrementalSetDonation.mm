@interface CCIncrementalSetDonation
- (BOOL)isAwaitingFullSet;
@end

@implementation CCIncrementalSetDonation

- (BOOL)isAwaitingFullSet
{
  v2 = [(CCSetDonation *)self priors];
  v3 = [v2 isAwaitingFullSet];

  return v3;
}

@end