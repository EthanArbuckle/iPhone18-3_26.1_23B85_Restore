@interface GTReplayQueryDerivedCounters
- (GTReplayQueryDerivedCounters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayQueryDerivedCounters

- (GTReplayQueryDerivedCounters)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = GTReplayQueryDerivedCounters;
  return [(GTReplayRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GTReplayQueryDerivedCounters;
  [(GTReplayRequest *)&v3 encodeWithCoder:coder];
}

@end