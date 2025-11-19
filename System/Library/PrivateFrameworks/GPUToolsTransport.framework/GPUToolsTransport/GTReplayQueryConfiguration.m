@interface GTReplayQueryConfiguration
- (GTReplayQueryConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayQueryConfiguration

- (GTReplayQueryConfiguration)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = GTReplayQueryConfiguration;
  return [(GTReplayRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = GTReplayQueryConfiguration;
  [(GTReplayRequest *)&v3 encodeWithCoder:a3];
}

@end