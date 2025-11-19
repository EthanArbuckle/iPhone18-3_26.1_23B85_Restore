@interface PDDiscoveryService
- (id)remoteObjectProxy;
- (void)sendDiscoveryEngagementMessagesUpdated;
@end

@implementation PDDiscoveryService

- (void)sendDiscoveryEngagementMessagesUpdated
{
  if (self->_entitledForDiscoveryUse)
  {
    v3 = [(PDDiscoveryService *)self remoteObjectProxy];
    [v3 discoveryEngagementMessagesUpdated];
  }
}

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = PDDiscoveryService;
  v2 = [(PDDiscoveryService *)&v4 remoteObjectProxy];

  return v2;
}

@end