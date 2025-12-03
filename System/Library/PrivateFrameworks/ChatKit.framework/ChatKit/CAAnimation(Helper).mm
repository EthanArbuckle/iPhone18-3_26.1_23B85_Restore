@interface CAAnimation(Helper)
- (uint64_t)ck_requestHighFrameRate;
@end

@implementation CAAnimation(Helper)

- (uint64_t)ck_requestHighFrameRate
{
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [self setPreferredFrameRateRange:{*&v4.minimum, *&v4.maximum, *&v4.preferred}];

  return [self setHighFrameRateReason:1310722];
}

@end