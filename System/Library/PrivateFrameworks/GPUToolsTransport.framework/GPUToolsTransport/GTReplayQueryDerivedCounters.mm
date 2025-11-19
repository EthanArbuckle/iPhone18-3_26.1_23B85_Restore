@interface GTReplayQueryDerivedCounters
- (GTReplayQueryDerivedCounters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayQueryDerivedCounters

- (GTReplayQueryDerivedCounters)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = GTReplayQueryDerivedCounters;
  return [(GTReplayRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = GTReplayQueryDerivedCounters;
  [(GTReplayRequest *)&v3 encodeWithCoder:a3];
}

@end