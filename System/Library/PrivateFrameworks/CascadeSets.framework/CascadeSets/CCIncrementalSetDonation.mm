@interface CCIncrementalSetDonation
- (BOOL)isAwaitingFullSet;
@end

@implementation CCIncrementalSetDonation

- (BOOL)isAwaitingFullSet
{
  priors = [(CCSetDonation *)self priors];
  isAwaitingFullSet = [priors isAwaitingFullSet];

  return isAwaitingFullSet;
}

@end