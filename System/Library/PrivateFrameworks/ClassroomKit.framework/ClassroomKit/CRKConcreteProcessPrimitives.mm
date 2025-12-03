@interface CRKConcreteProcessPrimitives
- (id)subscribeToExitForProcessWithIdentifier:(int)identifier exitHandler:(id)handler;
@end

@implementation CRKConcreteProcessPrimitives

- (id)subscribeToExitForProcessWithIdentifier:(int)identifier exitHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v6 = dispatch_source_create(MEMORY[0x277D85D20], identifierCopy, 0x80000000uLL, MEMORY[0x277D85CD0]);
  v7 = [CRKDispatchSourceSubscription subscriptionWithSource:v6 handler:handlerCopy];

  return v7;
}

@end