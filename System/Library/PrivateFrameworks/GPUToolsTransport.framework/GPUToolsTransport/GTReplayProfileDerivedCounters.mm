@interface GTReplayProfileDerivedCounters
- (GTReplayProfileDerivedCounters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayProfileDerivedCounters

- (GTReplayProfileDerivedCounters)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GTReplayProfileDerivedCounters;
  v3 = [(GTReplayProfileRequest *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GTReplayProfileDerivedCounters;
  [(GTReplayProfileRequest *)&v3 encodeWithCoder:coder];
}

@end