@interface FCPurchaseLookupResult
- (void)setIntroOffer:(uint64_t)offer;
@end

@implementation FCPurchaseLookupResult

- (void)setIntroOffer:(uint64_t)offer
{
  if (offer)
  {
    objc_storeStrong((offer + 56), a2);
  }
}

@end