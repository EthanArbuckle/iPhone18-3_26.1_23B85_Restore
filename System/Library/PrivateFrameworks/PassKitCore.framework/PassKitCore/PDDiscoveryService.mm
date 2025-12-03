@interface PDDiscoveryService
- (id)remoteObjectProxy;
- (void)sendDiscoveryEngagementMessagesUpdated;
@end

@implementation PDDiscoveryService

- (void)sendDiscoveryEngagementMessagesUpdated
{
  if (self->_entitledForDiscoveryUse)
  {
    remoteObjectProxy = [(PDDiscoveryService *)self remoteObjectProxy];
    [remoteObjectProxy discoveryEngagementMessagesUpdated];
  }
}

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = PDDiscoveryService;
  remoteObjectProxy = [(PDDiscoveryService *)&v4 remoteObjectProxy];

  return remoteObjectProxy;
}

@end