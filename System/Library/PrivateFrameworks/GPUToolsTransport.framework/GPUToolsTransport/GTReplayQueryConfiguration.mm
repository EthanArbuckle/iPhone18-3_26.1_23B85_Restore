@interface GTReplayQueryConfiguration
- (GTReplayQueryConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayQueryConfiguration

- (GTReplayQueryConfiguration)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = GTReplayQueryConfiguration;
  return [(GTReplayRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GTReplayQueryConfiguration;
  [(GTReplayRequest *)&v3 encodeWithCoder:coder];
}

@end