@interface KnowledgeConstructionXPC.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation KnowledgeConstructionXPC.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1C4470724(selfCopy, connectionCopy);

  return v9 & 1;
}

@end