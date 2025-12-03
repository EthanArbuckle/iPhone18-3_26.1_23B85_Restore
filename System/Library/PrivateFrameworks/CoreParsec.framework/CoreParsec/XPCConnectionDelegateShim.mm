@interface XPCConnectionDelegateShim
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation XPCConnectionDelegateShim

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [(XPCConnectionDelegateShim *)self handleInvocation];
  [invocationCopy invoke];
}

@end