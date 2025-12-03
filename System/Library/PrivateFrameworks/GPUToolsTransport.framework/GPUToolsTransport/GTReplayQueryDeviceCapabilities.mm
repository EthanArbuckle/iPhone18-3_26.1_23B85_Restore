@interface GTReplayQueryDeviceCapabilities
- (GTReplayQueryDeviceCapabilities)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayQueryDeviceCapabilities

- (GTReplayQueryDeviceCapabilities)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = GTReplayQueryDeviceCapabilities;
  return [(GTReplayRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GTReplayQueryDeviceCapabilities;
  [(GTReplayRequest *)&v3 encodeWithCoder:coder];
}

@end