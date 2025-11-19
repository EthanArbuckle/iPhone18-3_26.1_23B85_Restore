@interface EDEnqueuedDonation
- (EDEnqueuedDonation)init;
@end

@implementation EDEnqueuedDonation

- (EDEnqueuedDonation)init
{
  v2 = self + OBJC_IVAR___EDEnqueuedDonation_underlying;
  *v2 = 0;
  v2[8] = 3;
  v4.receiver = self;
  v4.super_class = EDEnqueuedDonation;
  return [(EDEnqueuedDonation *)&v4 init];
}

@end