@interface FCPurchaseLookupResult
- (void)setIntroOffer:(uint64_t)a1;
@end

@implementation FCPurchaseLookupResult

- (void)setIntroOffer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

@end