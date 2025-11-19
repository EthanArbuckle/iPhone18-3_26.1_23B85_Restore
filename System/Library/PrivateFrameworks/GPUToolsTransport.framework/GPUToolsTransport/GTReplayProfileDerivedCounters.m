@interface GTReplayProfileDerivedCounters
- (GTReplayProfileDerivedCounters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayProfileDerivedCounters

- (GTReplayProfileDerivedCounters)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GTReplayProfileDerivedCounters;
  v3 = [(GTReplayProfileRequest *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = GTReplayProfileDerivedCounters;
  [(GTReplayProfileRequest *)&v3 encodeWithCoder:a3];
}

@end