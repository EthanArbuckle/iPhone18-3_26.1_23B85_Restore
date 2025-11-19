@interface CCDonateXPCClientFactory
- (id)makeConnection:(id)a3;
- (void)terminateConnection:(id)a3;
@end

@implementation CCDonateXPCClientFactory

- (id)makeConnection:(id)a3
{
  v3 = a3;
  v4 = [[CCDonateXPCClient alloc] initWithClientId:v3];

  return v4;
}

- (void)terminateConnection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 invalidate];
  }
}

@end