@interface XPCConnectionDelegateShim
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
@end

@implementation XPCConnectionDelegateShim

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v6 = a4;
  [(XPCConnectionDelegateShim *)self handleInvocation];
  [v6 invoke];
}

@end