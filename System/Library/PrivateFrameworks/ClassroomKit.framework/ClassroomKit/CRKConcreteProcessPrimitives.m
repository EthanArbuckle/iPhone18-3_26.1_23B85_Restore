@interface CRKConcreteProcessPrimitives
- (id)subscribeToExitForProcessWithIdentifier:(int)a3 exitHandler:(id)a4;
@end

@implementation CRKConcreteProcessPrimitives

- (id)subscribeToExitForProcessWithIdentifier:(int)a3 exitHandler:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = dispatch_source_create(MEMORY[0x277D85D20], v4, 0x80000000uLL, MEMORY[0x277D85CD0]);
  v7 = [CRKDispatchSourceSubscription subscriptionWithSource:v6 handler:v5];

  return v7;
}

@end