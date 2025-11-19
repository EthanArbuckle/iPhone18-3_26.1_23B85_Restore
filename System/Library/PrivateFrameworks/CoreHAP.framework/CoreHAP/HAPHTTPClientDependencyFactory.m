@interface HAPHTTPClientDependencyFactory
- (id)createHTTPClientWithQueue:(id)a3;
@end

@implementation HAPHTTPClientDependencyFactory

- (id)createHTTPClientWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[HAPCoreUtilsHTTPClient alloc] initWithQueue:v3];

  return v4;
}

@end