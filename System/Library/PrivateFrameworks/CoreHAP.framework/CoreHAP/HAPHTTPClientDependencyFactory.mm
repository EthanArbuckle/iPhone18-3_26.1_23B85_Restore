@interface HAPHTTPClientDependencyFactory
- (id)createHTTPClientWithQueue:(id)queue;
@end

@implementation HAPHTTPClientDependencyFactory

- (id)createHTTPClientWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[HAPCoreUtilsHTTPClient alloc] initWithQueue:queueCopy];

  return v4;
}

@end